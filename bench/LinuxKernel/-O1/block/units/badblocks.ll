; ModuleID = 'block/badblocks.c'
source_filename = "block/badblocks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_badblocks_check: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad badblocks_check ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_badblocks_set: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad badblocks_set ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_badblocks_clear: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad badblocks_clear ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_ack_all_badblocks: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad ack_all_badblocks ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_badblocks_show: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad badblocks_show ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_badblocks_store: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad badblocks_store ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_badblocks_init: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad badblocks_init ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_devm_init_badblocks: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad devm_init_badblocks ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_badblocks_exit: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad badblocks_exit ; .previous"

%struct.badblocks = type { ptr, i32, i32, i32, ptr, i32, %struct.seqlock_t, i64, i64 }
%struct.seqlock_t = type { %struct.seqcount_spinlock, %struct.spinlock }
%struct.seqcount_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }

@__UNIQUE_ID___addressable_badblocks_check205 = internal global ptr @badblocks_check, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_badblocks_set206 = internal global ptr @badblocks_set, section ".discard.addressable", align 8, !dbg !107
@__UNIQUE_ID___addressable_badblocks_clear207 = internal global ptr @badblocks_clear, section ".discard.addressable", align 8, !dbg !109
@__UNIQUE_ID___addressable_ack_all_badblocks208 = internal global ptr @ack_all_badblocks, section ".discard.addressable", align 8, !dbg !111
@.str = private unnamed_addr constant [9 x i8] c"%llu %u\0A\00", align 1, !dbg !113
@__UNIQUE_ID___addressable_badblocks_show209 = internal global ptr @badblocks_show, section ".discard.addressable", align 8, !dbg !119
@.str.1 = private unnamed_addr constant [10 x i8] c"%llu %d%c\00", align 1, !dbg !121
@__UNIQUE_ID___addressable_badblocks_store210 = internal global ptr @badblocks_store, section ".discard.addressable", align 8, !dbg !126
@__UNIQUE_ID___addressable_badblocks_init211 = internal global ptr @badblocks_init, section ".discard.addressable", align 8, !dbg !128
@__UNIQUE_ID___addressable_devm_init_badblocks212 = internal global ptr @devm_init_badblocks, section ".discard.addressable", align 8, !dbg !130
@__UNIQUE_ID___addressable_badblocks_exit213 = internal global ptr @badblocks_exit, section ".discard.addressable", align 8, !dbg !132
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !134
@llvm.compiler.used = appending global [9 x ptr] [ptr @__UNIQUE_ID___addressable_badblocks_check205, ptr @__UNIQUE_ID___addressable_badblocks_set206, ptr @__UNIQUE_ID___addressable_badblocks_clear207, ptr @__UNIQUE_ID___addressable_ack_all_badblocks208, ptr @__UNIQUE_ID___addressable_badblocks_show209, ptr @__UNIQUE_ID___addressable_badblocks_store210, ptr @__UNIQUE_ID___addressable_badblocks_init211, ptr @__UNIQUE_ID___addressable_devm_init_badblocks212, ptr @__UNIQUE_ID___addressable_badblocks_exit213], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @badblocks_check(ptr noundef %bb, i64 noundef %s, i32 noundef %sectors, ptr noundef %first_bad, ptr noundef %bad_sectors) #0 align 16 !dbg !148 {
entry:
  %bb.addr = alloca ptr, align 8
  %s.addr = alloca i64, align 8
  %sectors.addr = alloca i32, align 4
  %first_bad.addr = alloca ptr, align 8
  %bad_sectors.addr = alloca ptr, align 8
  %hi = alloca i32, align 4
  %lo = alloca i32, align 4
  %p = alloca ptr, align 8
  %rv = alloca i32, align 4
  %target = alloca i64, align 8
  %seq = alloca i32, align 4
  %mid = alloca i32, align 4
  %a = alloca i64, align 8
  store ptr %bb, ptr %bb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bb.addr, metadata !1641, metadata !DIExpression()), !dbg !1656
  store i64 %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1642, metadata !DIExpression()), !dbg !1657
  store i32 %sectors, ptr %sectors.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sectors.addr, metadata !1643, metadata !DIExpression()), !dbg !1658
  store ptr %first_bad, ptr %first_bad.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %first_bad.addr, metadata !1644, metadata !DIExpression()), !dbg !1659
  store ptr %bad_sectors, ptr %bad_sectors.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bad_sectors.addr, metadata !1645, metadata !DIExpression()), !dbg !1660
  call void @llvm.lifetime.start.p0(i64 4, ptr %hi) #15, !dbg !1661
  call void @llvm.dbg.declare(metadata ptr %hi, metadata !1646, metadata !DIExpression()), !dbg !1662
  call void @llvm.lifetime.start.p0(i64 4, ptr %lo) #15, !dbg !1663
  call void @llvm.dbg.declare(metadata ptr %lo, metadata !1647, metadata !DIExpression()), !dbg !1664
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !1665
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1648, metadata !DIExpression()), !dbg !1666
  %0 = load ptr, ptr %bb.addr, align 8, !dbg !1667
  %page = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 4, !dbg !1668
  %1 = load ptr, ptr %page, align 8, !dbg !1668
  store ptr %1, ptr %p, align 8, !dbg !1666
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #15, !dbg !1669
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !1649, metadata !DIExpression()), !dbg !1670
  call void @llvm.lifetime.start.p0(i64 8, ptr %target) #15, !dbg !1671
  call void @llvm.dbg.declare(metadata ptr %target, metadata !1650, metadata !DIExpression()), !dbg !1672
  %2 = load i64, ptr %s.addr, align 8, !dbg !1673
  %3 = load i32, ptr %sectors.addr, align 4, !dbg !1674
  %conv = sext i32 %3 to i64, !dbg !1674
  %add = add i64 %2, %conv, !dbg !1675
  store i64 %add, ptr %target, align 8, !dbg !1672
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq) #15, !dbg !1676
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !1651, metadata !DIExpression()), !dbg !1677
  %4 = load ptr, ptr %bb.addr, align 8, !dbg !1678
  %shift = getelementptr inbounds %struct.badblocks, ptr %4, i32 0, i32 3, !dbg !1680
  %5 = load i32, ptr %shift, align 8, !dbg !1680
  %cmp = icmp sgt i32 %5, 0, !dbg !1681
  br i1 %cmp, label %if.then, label %if.end, !dbg !1682

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %bb.addr, align 8, !dbg !1683
  %shift2 = getelementptr inbounds %struct.badblocks, ptr %6, i32 0, i32 3, !dbg !1685
  %7 = load i32, ptr %shift2, align 8, !dbg !1685
  %8 = load i64, ptr %s.addr, align 8, !dbg !1686
  %sh_prom = zext i32 %7 to i64, !dbg !1686
  %shr = lshr i64 %8, %sh_prom, !dbg !1686
  store i64 %shr, ptr %s.addr, align 8, !dbg !1686
  %9 = load ptr, ptr %bb.addr, align 8, !dbg !1687
  %shift3 = getelementptr inbounds %struct.badblocks, ptr %9, i32 0, i32 3, !dbg !1688
  %10 = load i32, ptr %shift3, align 8, !dbg !1688
  %shl = shl i32 1, %10, !dbg !1689
  %sub = sub i32 %shl, 1, !dbg !1690
  %conv4 = sext i32 %sub to i64, !dbg !1691
  %11 = load i64, ptr %target, align 8, !dbg !1692
  %add5 = add i64 %11, %conv4, !dbg !1692
  store i64 %add5, ptr %target, align 8, !dbg !1692
  %12 = load ptr, ptr %bb.addr, align 8, !dbg !1693
  %shift6 = getelementptr inbounds %struct.badblocks, ptr %12, i32 0, i32 3, !dbg !1694
  %13 = load i32, ptr %shift6, align 8, !dbg !1694
  %14 = load i64, ptr %target, align 8, !dbg !1695
  %sh_prom7 = zext i32 %13 to i64, !dbg !1695
  %shr8 = lshr i64 %14, %sh_prom7, !dbg !1695
  store i64 %shr8, ptr %target, align 8, !dbg !1695
  br label %if.end, !dbg !1696

if.end:                                           ; preds = %if.then, %entry
  br label %retry, !dbg !1697

retry:                                            ; preds = %if.then66, %if.end
  call void @llvm.dbg.label(metadata !1652), !dbg !1698
  %15 = load ptr, ptr %bb.addr, align 8, !dbg !1699
  %lock = getelementptr inbounds %struct.badblocks, ptr %15, i32 0, i32 6, !dbg !1700
  %call = call i32 @read_seqbegin(ptr noundef %lock) #16, !dbg !1701
  store i32 %call, ptr %seq, align 4, !dbg !1702
  store i32 0, ptr %lo, align 4, !dbg !1703
  store i32 0, ptr %rv, align 4, !dbg !1704
  %16 = load ptr, ptr %bb.addr, align 8, !dbg !1705
  %count = getelementptr inbounds %struct.badblocks, ptr %16, i32 0, i32 1, !dbg !1706
  %17 = load i32, ptr %count, align 8, !dbg !1706
  store i32 %17, ptr %hi, align 4, !dbg !1707
  br label %while.cond, !dbg !1708

while.cond:                                       ; preds = %if.end17, %retry
  %18 = load i32, ptr %hi, align 4, !dbg !1709
  %19 = load i32, ptr %lo, align 4, !dbg !1710
  %sub9 = sub i32 %18, %19, !dbg !1711
  %cmp10 = icmp sgt i32 %sub9, 1, !dbg !1712
  br i1 %cmp10, label %while.body, label %while.end, !dbg !1708

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %mid) #15, !dbg !1713
  call void @llvm.dbg.declare(metadata ptr %mid, metadata !1653, metadata !DIExpression()), !dbg !1714
  %20 = load i32, ptr %lo, align 4, !dbg !1715
  %21 = load i32, ptr %hi, align 4, !dbg !1716
  %add12 = add i32 %20, %21, !dbg !1717
  %div = sdiv i32 %add12, 2, !dbg !1718
  store i32 %div, ptr %mid, align 4, !dbg !1714
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #15, !dbg !1719
  call void @llvm.dbg.declare(metadata ptr %a, metadata !1655, metadata !DIExpression()), !dbg !1720
  %22 = load ptr, ptr %p, align 8, !dbg !1721
  %23 = load i32, ptr %mid, align 4, !dbg !1721
  %idxprom = sext i32 %23 to i64, !dbg !1721
  %arrayidx = getelementptr i64, ptr %22, i64 %idxprom, !dbg !1721
  %24 = load i64, ptr %arrayidx, align 8, !dbg !1721
  %and = and i64 %24, 9223372036854775296, !dbg !1721
  %shr13 = lshr i64 %and, 9, !dbg !1721
  store i64 %shr13, ptr %a, align 8, !dbg !1720
  %25 = load i64, ptr %a, align 8, !dbg !1722
  %26 = load i64, ptr %target, align 8, !dbg !1724
  %cmp14 = icmp ult i64 %25, %26, !dbg !1725
  br i1 %cmp14, label %if.then16, label %if.else, !dbg !1726

if.then16:                                        ; preds = %while.body
  %27 = load i32, ptr %mid, align 4, !dbg !1727
  store i32 %27, ptr %lo, align 4, !dbg !1728
  br label %if.end17, !dbg !1729

if.else:                                          ; preds = %while.body
  %28 = load i32, ptr %mid, align 4, !dbg !1730
  store i32 %28, ptr %hi, align 4, !dbg !1731
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then16
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #15, !dbg !1732
  call void @llvm.lifetime.end.p0(i64 4, ptr %mid) #15, !dbg !1732
  br label %while.cond, !dbg !1708, !llvm.loop !1733

while.end:                                        ; preds = %while.cond
  %29 = load i32, ptr %hi, align 4, !dbg !1736
  %30 = load i32, ptr %lo, align 4, !dbg !1738
  %cmp18 = icmp sgt i32 %29, %30, !dbg !1739
  br i1 %cmp18, label %if.then20, label %if.end62, !dbg !1740

if.then20:                                        ; preds = %while.end
  br label %while.cond21, !dbg !1741

while.cond21:                                     ; preds = %if.end60, %if.then20
  %31 = load i32, ptr %lo, align 4, !dbg !1743
  %cmp22 = icmp sge i32 %31, 0, !dbg !1744
  br i1 %cmp22, label %land.rhs, label %land.end, !dbg !1745

land.rhs:                                         ; preds = %while.cond21
  %32 = load ptr, ptr %p, align 8, !dbg !1746
  %33 = load i32, ptr %lo, align 4, !dbg !1746
  %idxprom24 = sext i32 %33 to i64, !dbg !1746
  %arrayidx25 = getelementptr i64, ptr %32, i64 %idxprom24, !dbg !1746
  %34 = load i64, ptr %arrayidx25, align 8, !dbg !1746
  %and26 = and i64 %34, 9223372036854775296, !dbg !1746
  %shr27 = lshr i64 %and26, 9, !dbg !1746
  %35 = load ptr, ptr %p, align 8, !dbg !1747
  %36 = load i32, ptr %lo, align 4, !dbg !1747
  %idxprom28 = sext i32 %36 to i64, !dbg !1747
  %arrayidx29 = getelementptr i64, ptr %35, i64 %idxprom28, !dbg !1747
  %37 = load i64, ptr %arrayidx29, align 8, !dbg !1747
  %and30 = and i64 %37, 511, !dbg !1747
  %add31 = add i64 %and30, 1, !dbg !1747
  %add32 = add i64 %shr27, %add31, !dbg !1748
  %38 = load i64, ptr %s.addr, align 8, !dbg !1749
  %cmp33 = icmp ugt i64 %add32, %38, !dbg !1750
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond21
  %39 = phi i1 [ false, %while.cond21 ], [ %cmp33, %land.rhs ], !dbg !1751
  br i1 %39, label %while.body35, label %while.end61, !dbg !1741

while.body35:                                     ; preds = %land.end
  %40 = load ptr, ptr %p, align 8, !dbg !1752
  %41 = load i32, ptr %lo, align 4, !dbg !1752
  %idxprom36 = sext i32 %41 to i64, !dbg !1752
  %arrayidx37 = getelementptr i64, ptr %40, i64 %idxprom36, !dbg !1752
  %42 = load i64, ptr %arrayidx37, align 8, !dbg !1752
  %and38 = and i64 %42, 9223372036854775296, !dbg !1752
  %shr39 = lshr i64 %and38, 9, !dbg !1752
  %43 = load i64, ptr %target, align 8, !dbg !1755
  %cmp40 = icmp ult i64 %shr39, %43, !dbg !1756
  br i1 %cmp40, label %if.then42, label %if.end60, !dbg !1757

if.then42:                                        ; preds = %while.body35
  %44 = load i32, ptr %rv, align 4, !dbg !1758
  %cmp43 = icmp ne i32 %44, -1, !dbg !1761
  br i1 %cmp43, label %land.lhs.true, label %if.else49, !dbg !1762

land.lhs.true:                                    ; preds = %if.then42
  %45 = load ptr, ptr %p, align 8, !dbg !1763
  %46 = load i32, ptr %lo, align 4, !dbg !1763
  %idxprom45 = sext i32 %46 to i64, !dbg !1763
  %arrayidx46 = getelementptr i64, ptr %45, i64 %idxprom45, !dbg !1763
  %47 = load i64, ptr %arrayidx46, align 8, !dbg !1763
  %and47 = and i64 %47, -9223372036854775808, !dbg !1763
  %tobool = icmp ne i64 %and47, 0, !dbg !1763
  br i1 %tobool, label %if.then48, label %if.else49, !dbg !1764

if.then48:                                        ; preds = %land.lhs.true
  store i32 1, ptr %rv, align 4, !dbg !1765
  br label %if.end50, !dbg !1766

if.else49:                                        ; preds = %land.lhs.true, %if.then42
  store i32 -1, ptr %rv, align 4, !dbg !1767
  br label %if.end50

if.end50:                                         ; preds = %if.else49, %if.then48
  %48 = load ptr, ptr %p, align 8, !dbg !1768
  %49 = load i32, ptr %lo, align 4, !dbg !1768
  %idxprom51 = sext i32 %49 to i64, !dbg !1768
  %arrayidx52 = getelementptr i64, ptr %48, i64 %idxprom51, !dbg !1768
  %50 = load i64, ptr %arrayidx52, align 8, !dbg !1768
  %and53 = and i64 %50, 9223372036854775296, !dbg !1768
  %shr54 = lshr i64 %and53, 9, !dbg !1768
  %51 = load ptr, ptr %first_bad.addr, align 8, !dbg !1769
  store i64 %shr54, ptr %51, align 8, !dbg !1770
  %52 = load ptr, ptr %p, align 8, !dbg !1771
  %53 = load i32, ptr %lo, align 4, !dbg !1771
  %idxprom55 = sext i32 %53 to i64, !dbg !1771
  %arrayidx56 = getelementptr i64, ptr %52, i64 %idxprom55, !dbg !1771
  %54 = load i64, ptr %arrayidx56, align 8, !dbg !1771
  %and57 = and i64 %54, 511, !dbg !1771
  %add58 = add i64 %and57, 1, !dbg !1771
  %conv59 = trunc i64 %add58 to i32, !dbg !1771
  %55 = load ptr, ptr %bad_sectors.addr, align 8, !dbg !1772
  store i32 %conv59, ptr %55, align 4, !dbg !1773
  br label %if.end60, !dbg !1774

if.end60:                                         ; preds = %if.end50, %while.body35
  %56 = load i32, ptr %lo, align 4, !dbg !1775
  %dec = add i32 %56, -1, !dbg !1775
  store i32 %dec, ptr %lo, align 4, !dbg !1775
  br label %while.cond21, !dbg !1741, !llvm.loop !1776

while.end61:                                      ; preds = %land.end
  br label %if.end62, !dbg !1778

if.end62:                                         ; preds = %while.end61, %while.end
  %57 = load ptr, ptr %bb.addr, align 8, !dbg !1779
  %lock63 = getelementptr inbounds %struct.badblocks, ptr %57, i32 0, i32 6, !dbg !1781
  %58 = load i32, ptr %seq, align 4, !dbg !1782
  %call64 = call i32 @read_seqretry(ptr noundef %lock63, i32 noundef %58) #16, !dbg !1783
  %tobool65 = icmp ne i32 %call64, 0, !dbg !1783
  br i1 %tobool65, label %if.then66, label %if.end67, !dbg !1784

if.then66:                                        ; preds = %if.end62
  br label %retry, !dbg !1785

if.end67:                                         ; preds = %if.end62
  %59 = load i32, ptr %rv, align 4, !dbg !1786
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq) #15, !dbg !1787
  call void @llvm.lifetime.end.p0(i64 8, ptr %target) #15, !dbg !1787
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #15, !dbg !1787
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !1787
  call void @llvm.lifetime.end.p0(i64 4, ptr %lo) #15, !dbg !1787
  call void @llvm.lifetime.end.p0(i64 4, ptr %hi) #15, !dbg !1787
  ret i32 %59, !dbg !1788
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @read_seqbegin(ptr noundef %sl) #3 align 16 !dbg !1789 {
entry:
  %sl.addr = alloca ptr, align 8
  %tmp = alloca i32, align 4
  %_seq = alloca i32, align 4
  %__seq = alloca i32, align 4
  %tmp1 = alloca i32, align 4
  %tmp11 = alloca i32, align 4
  store ptr %sl, ptr %sl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sl.addr, metadata !1795, metadata !DIExpression()), !dbg !1801
  call void @llvm.lifetime.start.p0(i64 4, ptr %_seq) #15, !dbg !1802
  call void @llvm.dbg.declare(metadata ptr %_seq, metadata !1796, metadata !DIExpression()), !dbg !1802
  call void @llvm.lifetime.start.p0(i64 4, ptr %__seq) #15, !dbg !1803
  call void @llvm.dbg.declare(metadata ptr %__seq, metadata !1799, metadata !DIExpression()), !dbg !1803
  br label %while.cond, !dbg !1803

while.cond:                                       ; preds = %while.body, %entry
  %0 = load ptr, ptr %sl.addr, align 8, !dbg !1803
  %seqcount = getelementptr inbounds %struct.seqlock_t, ptr %0, i32 0, i32 0, !dbg !1803
  %call = call i32 @__seqprop_spinlock_sequence(ptr noundef %seqcount) #16, !dbg !1803
  store i32 %call, ptr %__seq, align 4, !dbg !1803
  %and = and i32 %call, 1, !dbg !1803
  %tobool = icmp ne i32 %and, 0, !dbg !1803
  br i1 %tobool, label %while.body, label %while.end, !dbg !1803

while.body:                                       ; preds = %while.cond
  call void @cpu_relax() #16, !dbg !1803
  br label %while.cond, !dbg !1803, !llvm.loop !1804

while.end:                                        ; preds = %while.cond
  call void @kcsan_atomic_next(i32 noundef 1000) #16, !dbg !1803
  %1 = load i32, ptr %__seq, align 4, !dbg !1803
  store i32 %1, ptr %tmp1, align 4, !dbg !1803
  call void @llvm.lifetime.end.p0(i64 4, ptr %__seq) #15, !dbg !1802
  %2 = load i32, ptr %tmp1, align 4, !dbg !1803
  store i32 %2, ptr %_seq, align 4, !dbg !1802
  br label %do.body, !dbg !1802

do.body:                                          ; preds = %while.end
  br label %do.body2, !dbg !1805

do.body2:                                         ; preds = %do.body
  br label %do.cond, !dbg !1807

do.cond:                                          ; preds = %do.body2
  br label %do.end, !dbg !1807

do.end:                                           ; preds = %do.cond
  br label %do.body3, !dbg !1805

do.body3:                                         ; preds = %do.end
  br label %do.body4, !dbg !1809

do.body4:                                         ; preds = %do.body3
  br label %do.cond5, !dbg !1811

do.cond5:                                         ; preds = %do.body4
  br label %do.end6, !dbg !1811

do.end6:                                          ; preds = %do.cond5
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !1809, !srcloc !1813
  br label %do.cond7, !dbg !1809

do.cond7:                                         ; preds = %do.end6
  br label %do.end8, !dbg !1809

do.end8:                                          ; preds = %do.cond7
  br label %do.cond9, !dbg !1805

do.cond9:                                         ; preds = %do.end8
  br label %do.end10, !dbg !1805

do.end10:                                         ; preds = %do.cond9
  %3 = load i32, ptr %_seq, align 4, !dbg !1802
  store i32 %3, ptr %tmp11, align 4, !dbg !1805
  call void @llvm.lifetime.end.p0(i64 4, ptr %_seq) #15, !dbg !1814
  %4 = load i32, ptr %tmp11, align 4, !dbg !1802
  store i32 %4, ptr %tmp, align 4, !dbg !1815
  %5 = load i32, ptr %tmp, align 4, !dbg !1814
  ret i32 %5, !dbg !1816
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @read_seqretry(ptr noundef %sl, i32 noundef %start) #3 align 16 !dbg !1817 {
entry:
  %sl.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  store ptr %sl, ptr %sl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sl.addr, metadata !1821, metadata !DIExpression()), !dbg !1823
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !1822, metadata !DIExpression()), !dbg !1824
  %0 = load ptr, ptr %sl.addr, align 8, !dbg !1825
  %seqcount = getelementptr inbounds %struct.seqlock_t, ptr %0, i32 0, i32 0, !dbg !1825
  %call = call ptr @__seqprop_spinlock_ptr(ptr noundef %seqcount) #16, !dbg !1825
  %1 = load i32, ptr %start.addr, align 4, !dbg !1825
  %call1 = call i32 @do_read_seqcount_retry(ptr noundef %call, i32 noundef %1) #16, !dbg !1825
  ret i32 %call1, !dbg !1826
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @badblocks_set(ptr noundef %bb, i64 noundef %s, i32 noundef %sectors, i32 noundef %acknowledged) #0 align 16 !dbg !1827 {
entry:
  %retval = alloca i32, align 4
  %bb.addr = alloca ptr, align 8
  %s.addr = alloca i64, align 8
  %sectors.addr = alloca i32, align 4
  %acknowledged.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  %rv = alloca i32, align 4
  %flags = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %next = alloca i64, align 8
  %mid = alloca i32, align 4
  %a = alloca i64, align 8
  %a35 = alloca i64, align 8
  %e = alloca i64, align 8
  %ack = alloca i32, align 4
  %a123 = alloca i64, align 8
  %e128 = alloca i64, align 8
  %ack134 = alloca i32, align 4
  %a206 = alloca i64, align 8
  %lolen = alloca i32, align 4
  %hilen = alloca i32, align 4
  %newlen = alloca i32, align 4
  %ack232 = alloca i32, align 4
  %this_sectors = alloca i32, align 4
  store ptr %bb, ptr %bb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bb.addr, metadata !1831, metadata !DIExpression()), !dbg !1869
  store i64 %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !1832, metadata !DIExpression()), !dbg !1870
  store i32 %sectors, ptr %sectors.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sectors.addr, metadata !1833, metadata !DIExpression()), !dbg !1871
  store i32 %acknowledged, ptr %acknowledged.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %acknowledged.addr, metadata !1834, metadata !DIExpression()), !dbg !1872
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !1873
  call void @llvm.dbg.declare(metadata ptr %p, metadata !1835, metadata !DIExpression()), !dbg !1874
  call void @llvm.lifetime.start.p0(i64 4, ptr %lo) #15, !dbg !1875
  call void @llvm.dbg.declare(metadata ptr %lo, metadata !1836, metadata !DIExpression()), !dbg !1876
  call void @llvm.lifetime.start.p0(i64 4, ptr %hi) #15, !dbg !1875
  call void @llvm.dbg.declare(metadata ptr %hi, metadata !1837, metadata !DIExpression()), !dbg !1877
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #15, !dbg !1878
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !1838, metadata !DIExpression()), !dbg !1879
  store i32 0, ptr %rv, align 4, !dbg !1879
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !1880
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !1839, metadata !DIExpression()), !dbg !1881
  %0 = load ptr, ptr %bb.addr, align 8, !dbg !1882
  %shift = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 3, !dbg !1884
  %1 = load i32, ptr %shift, align 8, !dbg !1884
  %cmp = icmp slt i32 %1, 0, !dbg !1885
  br i1 %cmp, label %if.then, label %if.end, !dbg !1886

if.then:                                          ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !1887
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1887

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %bb.addr, align 8, !dbg !1888
  %shift1 = getelementptr inbounds %struct.badblocks, ptr %2, i32 0, i32 3, !dbg !1889
  %3 = load i32, ptr %shift1, align 8, !dbg !1889
  %tobool = icmp ne i32 %3, 0, !dbg !1888
  br i1 %tobool, label %if.then2, label %if.end12, !dbg !1890

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #15, !dbg !1891
  call void @llvm.dbg.declare(metadata ptr %next, metadata !1840, metadata !DIExpression()), !dbg !1892
  %4 = load i64, ptr %s.addr, align 8, !dbg !1893
  %5 = load i32, ptr %sectors.addr, align 4, !dbg !1894
  %conv = sext i32 %5 to i64, !dbg !1894
  %add = add i64 %4, %conv, !dbg !1895
  store i64 %add, ptr %next, align 8, !dbg !1892
  %6 = load ptr, ptr %bb.addr, align 8, !dbg !1896
  %shift3 = getelementptr inbounds %struct.badblocks, ptr %6, i32 0, i32 3, !dbg !1897
  %7 = load i32, ptr %shift3, align 8, !dbg !1897
  %8 = load i64, ptr %s.addr, align 8, !dbg !1898
  %sh_prom = zext i32 %7 to i64, !dbg !1898
  %shr = lshr i64 %8, %sh_prom, !dbg !1898
  store i64 %shr, ptr %s.addr, align 8, !dbg !1898
  %9 = load ptr, ptr %bb.addr, align 8, !dbg !1899
  %shift4 = getelementptr inbounds %struct.badblocks, ptr %9, i32 0, i32 3, !dbg !1900
  %10 = load i32, ptr %shift4, align 8, !dbg !1900
  %shl = shl i32 1, %10, !dbg !1901
  %sub = sub i32 %shl, 1, !dbg !1902
  %conv5 = sext i32 %sub to i64, !dbg !1903
  %11 = load i64, ptr %next, align 8, !dbg !1904
  %add6 = add i64 %11, %conv5, !dbg !1904
  store i64 %add6, ptr %next, align 8, !dbg !1904
  %12 = load ptr, ptr %bb.addr, align 8, !dbg !1905
  %shift7 = getelementptr inbounds %struct.badblocks, ptr %12, i32 0, i32 3, !dbg !1906
  %13 = load i32, ptr %shift7, align 8, !dbg !1906
  %14 = load i64, ptr %next, align 8, !dbg !1907
  %sh_prom8 = zext i32 %13 to i64, !dbg !1907
  %shr9 = lshr i64 %14, %sh_prom8, !dbg !1907
  store i64 %shr9, ptr %next, align 8, !dbg !1907
  %15 = load i64, ptr %next, align 8, !dbg !1908
  %16 = load i64, ptr %s.addr, align 8, !dbg !1909
  %sub10 = sub i64 %15, %16, !dbg !1910
  %conv11 = trunc i64 %sub10 to i32, !dbg !1908
  store i32 %conv11, ptr %sectors.addr, align 4, !dbg !1911
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #15, !dbg !1912
  br label %if.end12, !dbg !1913

if.end12:                                         ; preds = %if.then2, %if.end
  br label %do.body, !dbg !1914

do.body:                                          ; preds = %if.end12
  %17 = load ptr, ptr %bb.addr, align 8, !dbg !1915
  %lock = getelementptr inbounds %struct.badblocks, ptr %17, i32 0, i32 6, !dbg !1915
  %call = call i64 @__write_seqlock_irqsave(ptr noundef %lock) #16, !dbg !1915
  store i64 %call, ptr %flags, align 8, !dbg !1915
  br label %do.cond, !dbg !1915

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1915

do.end:                                           ; preds = %do.cond
  %18 = load ptr, ptr %bb.addr, align 8, !dbg !1917
  %page = getelementptr inbounds %struct.badblocks, ptr %18, i32 0, i32 4, !dbg !1918
  %19 = load ptr, ptr %page, align 8, !dbg !1918
  store ptr %19, ptr %p, align 8, !dbg !1919
  store i32 0, ptr %lo, align 4, !dbg !1920
  %20 = load ptr, ptr %bb.addr, align 8, !dbg !1921
  %count = getelementptr inbounds %struct.badblocks, ptr %20, i32 0, i32 1, !dbg !1922
  %21 = load i32, ptr %count, align 8, !dbg !1922
  store i32 %21, ptr %hi, align 4, !dbg !1923
  br label %while.cond, !dbg !1924

while.cond:                                       ; preds = %if.end21, %do.end
  %22 = load i32, ptr %hi, align 4, !dbg !1925
  %23 = load i32, ptr %lo, align 4, !dbg !1926
  %sub13 = sub i32 %22, %23, !dbg !1927
  %cmp14 = icmp sgt i32 %sub13, 1, !dbg !1928
  br i1 %cmp14, label %while.body, label %while.end, !dbg !1924

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %mid) #15, !dbg !1929
  call void @llvm.dbg.declare(metadata ptr %mid, metadata !1843, metadata !DIExpression()), !dbg !1930
  %24 = load i32, ptr %lo, align 4, !dbg !1931
  %25 = load i32, ptr %hi, align 4, !dbg !1932
  %add16 = add i32 %24, %25, !dbg !1933
  %div = sdiv i32 %add16, 2, !dbg !1934
  store i32 %div, ptr %mid, align 4, !dbg !1930
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #15, !dbg !1935
  call void @llvm.dbg.declare(metadata ptr %a, metadata !1845, metadata !DIExpression()), !dbg !1936
  %26 = load ptr, ptr %p, align 8, !dbg !1937
  %27 = load i32, ptr %mid, align 4, !dbg !1937
  %idxprom = sext i32 %27 to i64, !dbg !1937
  %arrayidx = getelementptr i64, ptr %26, i64 %idxprom, !dbg !1937
  %28 = load i64, ptr %arrayidx, align 8, !dbg !1937
  %and = and i64 %28, 9223372036854775296, !dbg !1937
  %shr17 = lshr i64 %and, 9, !dbg !1937
  store i64 %shr17, ptr %a, align 8, !dbg !1936
  %29 = load i64, ptr %a, align 8, !dbg !1938
  %30 = load i64, ptr %s.addr, align 8, !dbg !1940
  %cmp18 = icmp ule i64 %29, %30, !dbg !1941
  br i1 %cmp18, label %if.then20, label %if.else, !dbg !1942

if.then20:                                        ; preds = %while.body
  %31 = load i32, ptr %mid, align 4, !dbg !1943
  store i32 %31, ptr %lo, align 4, !dbg !1944
  br label %if.end21, !dbg !1945

if.else:                                          ; preds = %while.body
  %32 = load i32, ptr %mid, align 4, !dbg !1946
  store i32 %32, ptr %hi, align 4, !dbg !1947
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then20
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #15, !dbg !1948
  call void @llvm.lifetime.end.p0(i64 4, ptr %mid) #15, !dbg !1948
  br label %while.cond, !dbg !1924, !llvm.loop !1949

while.end:                                        ; preds = %while.cond
  %33 = load i32, ptr %hi, align 4, !dbg !1950
  %34 = load i32, ptr %lo, align 4, !dbg !1952
  %cmp22 = icmp sgt i32 %33, %34, !dbg !1953
  br i1 %cmp22, label %land.lhs.true, label %if.end31, !dbg !1954

land.lhs.true:                                    ; preds = %while.end
  %35 = load ptr, ptr %p, align 8, !dbg !1955
  %36 = load i32, ptr %lo, align 4, !dbg !1955
  %idxprom24 = sext i32 %36 to i64, !dbg !1955
  %arrayidx25 = getelementptr i64, ptr %35, i64 %idxprom24, !dbg !1955
  %37 = load i64, ptr %arrayidx25, align 8, !dbg !1955
  %and26 = and i64 %37, 9223372036854775296, !dbg !1955
  %shr27 = lshr i64 %and26, 9, !dbg !1955
  %38 = load i64, ptr %s.addr, align 8, !dbg !1956
  %cmp28 = icmp ugt i64 %shr27, %38, !dbg !1957
  br i1 %cmp28, label %if.then30, label %if.end31, !dbg !1958

if.then30:                                        ; preds = %land.lhs.true
  %39 = load i32, ptr %lo, align 4, !dbg !1959
  store i32 %39, ptr %hi, align 4, !dbg !1960
  br label %if.end31, !dbg !1961

if.end31:                                         ; preds = %if.then30, %land.lhs.true, %while.end
  %40 = load i32, ptr %hi, align 4, !dbg !1962
  %41 = load i32, ptr %lo, align 4, !dbg !1963
  %cmp32 = icmp sgt i32 %40, %41, !dbg !1964
  br i1 %cmp32, label %if.then34, label %if.end116, !dbg !1965

if.then34:                                        ; preds = %if.end31
  call void @llvm.lifetime.start.p0(i64 8, ptr %a35) #15, !dbg !1966
  call void @llvm.dbg.declare(metadata ptr %a35, metadata !1846, metadata !DIExpression()), !dbg !1967
  %42 = load ptr, ptr %p, align 8, !dbg !1968
  %43 = load i32, ptr %lo, align 4, !dbg !1968
  %idxprom36 = sext i32 %43 to i64, !dbg !1968
  %arrayidx37 = getelementptr i64, ptr %42, i64 %idxprom36, !dbg !1968
  %44 = load i64, ptr %arrayidx37, align 8, !dbg !1968
  %and38 = and i64 %44, 9223372036854775296, !dbg !1968
  %shr39 = lshr i64 %and38, 9, !dbg !1968
  store i64 %shr39, ptr %a35, align 8, !dbg !1967
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #15, !dbg !1969
  call void @llvm.dbg.declare(metadata ptr %e, metadata !1849, metadata !DIExpression()), !dbg !1970
  %45 = load i64, ptr %a35, align 8, !dbg !1971
  %46 = load ptr, ptr %p, align 8, !dbg !1972
  %47 = load i32, ptr %lo, align 4, !dbg !1972
  %idxprom40 = sext i32 %47 to i64, !dbg !1972
  %arrayidx41 = getelementptr i64, ptr %46, i64 %idxprom40, !dbg !1972
  %48 = load i64, ptr %arrayidx41, align 8, !dbg !1972
  %and42 = and i64 %48, 511, !dbg !1972
  %add43 = add i64 %and42, 1, !dbg !1972
  %add44 = add i64 %45, %add43, !dbg !1973
  store i64 %add44, ptr %e, align 8, !dbg !1970
  call void @llvm.lifetime.start.p0(i64 4, ptr %ack) #15, !dbg !1974
  call void @llvm.dbg.declare(metadata ptr %ack, metadata !1850, metadata !DIExpression()), !dbg !1975
  %49 = load ptr, ptr %p, align 8, !dbg !1976
  %50 = load i32, ptr %lo, align 4, !dbg !1976
  %idxprom45 = sext i32 %50 to i64, !dbg !1976
  %arrayidx46 = getelementptr i64, ptr %49, i64 %idxprom45, !dbg !1976
  %51 = load i64, ptr %arrayidx46, align 8, !dbg !1976
  %and47 = and i64 %51, -9223372036854775808, !dbg !1976
  %tobool48 = icmp ne i64 %and47, 0, !dbg !1976
  %lnot = xor i1 %tobool48, true, !dbg !1976
  %lnot49 = xor i1 %lnot, true, !dbg !1976
  %lnot.ext = zext i1 %lnot49 to i32, !dbg !1976
  store i32 %lnot.ext, ptr %ack, align 4, !dbg !1975
  %52 = load i64, ptr %e, align 8, !dbg !1977
  %53 = load i64, ptr %s.addr, align 8, !dbg !1979
  %cmp50 = icmp uge i64 %52, %53, !dbg !1980
  br i1 %cmp50, label %if.then52, label %if.end115, !dbg !1981

if.then52:                                        ; preds = %if.then34
  %54 = load i64, ptr %s.addr, align 8, !dbg !1982
  %55 = load i64, ptr %a35, align 8, !dbg !1985
  %cmp53 = icmp eq i64 %54, %55, !dbg !1986
  br i1 %cmp53, label %land.lhs.true55, label %if.else61, !dbg !1987

land.lhs.true55:                                  ; preds = %if.then52
  %56 = load i64, ptr %s.addr, align 8, !dbg !1988
  %57 = load i32, ptr %sectors.addr, align 4, !dbg !1989
  %conv56 = sext i32 %57 to i64, !dbg !1989
  %add57 = add i64 %56, %conv56, !dbg !1990
  %58 = load i64, ptr %e, align 8, !dbg !1991
  %cmp58 = icmp uge i64 %add57, %58, !dbg !1992
  br i1 %cmp58, label %if.then60, label %if.else61, !dbg !1993

if.then60:                                        ; preds = %land.lhs.true55
  %59 = load i32, ptr %acknowledged.addr, align 4, !dbg !1994
  store i32 %59, ptr %ack, align 4, !dbg !1995
  br label %if.end64, !dbg !1996

if.else61:                                        ; preds = %land.lhs.true55, %if.then52
  %60 = load i32, ptr %ack, align 4, !dbg !1997
  %tobool62 = icmp ne i32 %60, 0, !dbg !1997
  br i1 %tobool62, label %land.rhs, label %land.end, !dbg !1998

land.rhs:                                         ; preds = %if.else61
  %61 = load i32, ptr %acknowledged.addr, align 4, !dbg !1999
  %tobool63 = icmp ne i32 %61, 0, !dbg !1998
  br label %land.end

land.end:                                         ; preds = %land.rhs, %if.else61
  %62 = phi i1 [ false, %if.else61 ], [ %tobool63, %land.rhs ], !dbg !2000
  %land.ext = zext i1 %62 to i32, !dbg !1998
  store i32 %land.ext, ptr %ack, align 4, !dbg !2001
  br label %if.end64

if.end64:                                         ; preds = %land.end, %if.then60
  %63 = load i64, ptr %e, align 8, !dbg !2002
  %64 = load i64, ptr %s.addr, align 8, !dbg !2004
  %65 = load i32, ptr %sectors.addr, align 4, !dbg !2005
  %conv65 = sext i32 %65 to i64, !dbg !2005
  %add66 = add i64 %64, %conv65, !dbg !2006
  %cmp67 = icmp ult i64 %63, %add66, !dbg !2007
  br i1 %cmp67, label %if.then69, label %if.end72, !dbg !2008

if.then69:                                        ; preds = %if.end64
  %66 = load i64, ptr %s.addr, align 8, !dbg !2009
  %67 = load i32, ptr %sectors.addr, align 4, !dbg !2010
  %conv70 = sext i32 %67 to i64, !dbg !2010
  %add71 = add i64 %66, %conv70, !dbg !2011
  store i64 %add71, ptr %e, align 8, !dbg !2012
  br label %if.end72, !dbg !2013

if.end72:                                         ; preds = %if.then69, %if.end64
  %68 = load i64, ptr %e, align 8, !dbg !2014
  %69 = load i64, ptr %a35, align 8, !dbg !2016
  %sub73 = sub i64 %68, %69, !dbg !2017
  %cmp74 = icmp ule i64 %sub73, 512, !dbg !2018
  br i1 %cmp74, label %if.then76, label %if.else90, !dbg !2019

if.then76:                                        ; preds = %if.end72
  %70 = load i64, ptr %a35, align 8, !dbg !2020
  %shl77 = shl i64 %70, 9, !dbg !2020
  %71 = load i64, ptr %e, align 8, !dbg !2020
  %72 = load i64, ptr %a35, align 8, !dbg !2020
  %sub78 = sub i64 %71, %72, !dbg !2020
  %sub79 = sub i64 %sub78, 1, !dbg !2020
  %or = or i64 %shl77, %sub79, !dbg !2020
  %73 = load i32, ptr %ack, align 4, !dbg !2020
  %tobool80 = icmp ne i32 %73, 0, !dbg !2020
  %lnot81 = xor i1 %tobool80, true, !dbg !2020
  %lnot83 = xor i1 %lnot81, true, !dbg !2020
  %lnot.ext84 = zext i1 %lnot83 to i32, !dbg !2020
  %conv85 = sext i32 %lnot.ext84 to i64, !dbg !2020
  %shl86 = shl i64 %conv85, 63, !dbg !2020
  %or87 = or i64 %or, %shl86, !dbg !2020
  %74 = load ptr, ptr %p, align 8, !dbg !2022
  %75 = load i32, ptr %lo, align 4, !dbg !2023
  %idxprom88 = sext i32 %75 to i64, !dbg !2022
  %arrayidx89 = getelementptr i64, ptr %74, i64 %idxprom88, !dbg !2022
  store i64 %or87, ptr %arrayidx89, align 8, !dbg !2024
  %76 = load i64, ptr %e, align 8, !dbg !2025
  store i64 %76, ptr %s.addr, align 8, !dbg !2026
  br label %if.end112, !dbg !2027

if.else90:                                        ; preds = %if.end72
  %77 = load ptr, ptr %p, align 8, !dbg !2028
  %78 = load i32, ptr %lo, align 4, !dbg !2028
  %idxprom91 = sext i32 %78 to i64, !dbg !2028
  %arrayidx92 = getelementptr i64, ptr %77, i64 %idxprom91, !dbg !2028
  %79 = load i64, ptr %arrayidx92, align 8, !dbg !2028
  %and93 = and i64 %79, 511, !dbg !2028
  %add94 = add i64 %and93, 1, !dbg !2028
  %cmp95 = icmp ne i64 %add94, 512, !dbg !2031
  br i1 %cmp95, label %if.then97, label %if.end110, !dbg !2032

if.then97:                                        ; preds = %if.else90
  %80 = load i64, ptr %a35, align 8, !dbg !2033
  %shl98 = shl i64 %80, 9, !dbg !2033
  %or99 = or i64 %shl98, 511, !dbg !2033
  %81 = load i32, ptr %ack, align 4, !dbg !2033
  %tobool100 = icmp ne i32 %81, 0, !dbg !2033
  %lnot101 = xor i1 %tobool100, true, !dbg !2033
  %lnot103 = xor i1 %lnot101, true, !dbg !2033
  %lnot.ext104 = zext i1 %lnot103 to i32, !dbg !2033
  %conv105 = sext i32 %lnot.ext104 to i64, !dbg !2033
  %shl106 = shl i64 %conv105, 63, !dbg !2033
  %or107 = or i64 %or99, %shl106, !dbg !2033
  %82 = load ptr, ptr %p, align 8, !dbg !2034
  %83 = load i32, ptr %lo, align 4, !dbg !2035
  %idxprom108 = sext i32 %83 to i64, !dbg !2034
  %arrayidx109 = getelementptr i64, ptr %82, i64 %idxprom108, !dbg !2034
  store i64 %or107, ptr %arrayidx109, align 8, !dbg !2036
  br label %if.end110, !dbg !2034

if.end110:                                        ; preds = %if.then97, %if.else90
  %84 = load i64, ptr %a35, align 8, !dbg !2037
  %add111 = add i64 %84, 512, !dbg !2038
  store i64 %add111, ptr %s.addr, align 8, !dbg !2039
  br label %if.end112

if.end112:                                        ; preds = %if.end110, %if.then76
  %85 = load i64, ptr %e, align 8, !dbg !2040
  %86 = load i64, ptr %s.addr, align 8, !dbg !2041
  %sub113 = sub i64 %85, %86, !dbg !2042
  %conv114 = trunc i64 %sub113 to i32, !dbg !2040
  store i32 %conv114, ptr %sectors.addr, align 4, !dbg !2043
  br label %if.end115, !dbg !2044

if.end115:                                        ; preds = %if.end112, %if.then34
  call void @llvm.lifetime.end.p0(i64 4, ptr %ack) #15, !dbg !2045
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #15, !dbg !2045
  call void @llvm.lifetime.end.p0(i64 8, ptr %a35) #15, !dbg !2045
  br label %if.end116, !dbg !2046

if.end116:                                        ; preds = %if.end115, %if.end31
  %87 = load i32, ptr %sectors.addr, align 4, !dbg !2047
  %tobool117 = icmp ne i32 %87, 0, !dbg !2047
  br i1 %tobool117, label %land.lhs.true118, label %if.end198, !dbg !2048

land.lhs.true118:                                 ; preds = %if.end116
  %88 = load i32, ptr %hi, align 4, !dbg !2049
  %89 = load ptr, ptr %bb.addr, align 8, !dbg !2050
  %count119 = getelementptr inbounds %struct.badblocks, ptr %89, i32 0, i32 1, !dbg !2051
  %90 = load i32, ptr %count119, align 8, !dbg !2051
  %cmp120 = icmp slt i32 %88, %90, !dbg !2052
  br i1 %cmp120, label %if.then122, label %if.end198, !dbg !2053

if.then122:                                       ; preds = %land.lhs.true118
  call void @llvm.lifetime.start.p0(i64 8, ptr %a123) #15, !dbg !2054
  call void @llvm.dbg.declare(metadata ptr %a123, metadata !1851, metadata !DIExpression()), !dbg !2055
  %91 = load ptr, ptr %p, align 8, !dbg !2056
  %92 = load i32, ptr %hi, align 4, !dbg !2056
  %idxprom124 = sext i32 %92 to i64, !dbg !2056
  %arrayidx125 = getelementptr i64, ptr %91, i64 %idxprom124, !dbg !2056
  %93 = load i64, ptr %arrayidx125, align 8, !dbg !2056
  %and126 = and i64 %93, 9223372036854775296, !dbg !2056
  %shr127 = lshr i64 %and126, 9, !dbg !2056
  store i64 %shr127, ptr %a123, align 8, !dbg !2055
  call void @llvm.lifetime.start.p0(i64 8, ptr %e128) #15, !dbg !2057
  call void @llvm.dbg.declare(metadata ptr %e128, metadata !1854, metadata !DIExpression()), !dbg !2058
  %94 = load i64, ptr %a123, align 8, !dbg !2059
  %95 = load ptr, ptr %p, align 8, !dbg !2060
  %96 = load i32, ptr %hi, align 4, !dbg !2060
  %idxprom129 = sext i32 %96 to i64, !dbg !2060
  %arrayidx130 = getelementptr i64, ptr %95, i64 %idxprom129, !dbg !2060
  %97 = load i64, ptr %arrayidx130, align 8, !dbg !2060
  %and131 = and i64 %97, 511, !dbg !2060
  %add132 = add i64 %and131, 1, !dbg !2060
  %add133 = add i64 %94, %add132, !dbg !2061
  store i64 %add133, ptr %e128, align 8, !dbg !2058
  call void @llvm.lifetime.start.p0(i64 4, ptr %ack134) #15, !dbg !2062
  call void @llvm.dbg.declare(metadata ptr %ack134, metadata !1855, metadata !DIExpression()), !dbg !2063
  %98 = load ptr, ptr %p, align 8, !dbg !2064
  %99 = load i32, ptr %hi, align 4, !dbg !2064
  %idxprom135 = sext i32 %99 to i64, !dbg !2064
  %arrayidx136 = getelementptr i64, ptr %98, i64 %idxprom135, !dbg !2064
  %100 = load i64, ptr %arrayidx136, align 8, !dbg !2064
  %and137 = and i64 %100, -9223372036854775808, !dbg !2064
  %tobool138 = icmp ne i64 %and137, 0, !dbg !2064
  %lnot139 = xor i1 %tobool138, true, !dbg !2064
  %lnot141 = xor i1 %lnot139, true, !dbg !2064
  %lnot.ext142 = zext i1 %lnot141 to i32, !dbg !2064
  store i32 %lnot.ext142, ptr %ack134, align 4, !dbg !2063
  %101 = load i64, ptr %a123, align 8, !dbg !2065
  %102 = load i64, ptr %s.addr, align 8, !dbg !2067
  %103 = load i32, ptr %sectors.addr, align 4, !dbg !2068
  %conv143 = sext i32 %103 to i64, !dbg !2068
  %add144 = add i64 %102, %conv143, !dbg !2069
  %cmp145 = icmp ule i64 %101, %add144, !dbg !2070
  br i1 %cmp145, label %if.then147, label %if.end197, !dbg !2071

if.then147:                                       ; preds = %if.then122
  %104 = load i64, ptr %e128, align 8, !dbg !2072
  %105 = load i64, ptr %s.addr, align 8, !dbg !2075
  %106 = load i32, ptr %sectors.addr, align 4, !dbg !2076
  %conv148 = sext i32 %106 to i64, !dbg !2076
  %add149 = add i64 %105, %conv148, !dbg !2077
  %cmp150 = icmp ule i64 %104, %add149, !dbg !2078
  br i1 %cmp150, label %if.then152, label %if.else155, !dbg !2079

if.then152:                                       ; preds = %if.then147
  %107 = load i64, ptr %s.addr, align 8, !dbg !2080
  %108 = load i32, ptr %sectors.addr, align 4, !dbg !2082
  %conv153 = sext i32 %108 to i64, !dbg !2082
  %add154 = add i64 %107, %conv153, !dbg !2083
  store i64 %add154, ptr %e128, align 8, !dbg !2084
  %109 = load i32, ptr %acknowledged.addr, align 4, !dbg !2085
  store i32 %109, ptr %ack134, align 4, !dbg !2086
  br label %if.end161, !dbg !2087

if.else155:                                       ; preds = %if.then147
  %110 = load i32, ptr %ack134, align 4, !dbg !2088
  %tobool156 = icmp ne i32 %110, 0, !dbg !2088
  br i1 %tobool156, label %land.rhs157, label %land.end159, !dbg !2089

land.rhs157:                                      ; preds = %if.else155
  %111 = load i32, ptr %acknowledged.addr, align 4, !dbg !2090
  %tobool158 = icmp ne i32 %111, 0, !dbg !2089
  br label %land.end159

land.end159:                                      ; preds = %land.rhs157, %if.else155
  %112 = phi i1 [ false, %if.else155 ], [ %tobool158, %land.rhs157 ], !dbg !2091
  %land.ext160 = zext i1 %112 to i32, !dbg !2089
  store i32 %land.ext160, ptr %ack134, align 4, !dbg !2092
  br label %if.end161

if.end161:                                        ; preds = %land.end159, %if.then152
  %113 = load i64, ptr %s.addr, align 8, !dbg !2093
  store i64 %113, ptr %a123, align 8, !dbg !2094
  %114 = load i64, ptr %e128, align 8, !dbg !2095
  %115 = load i64, ptr %a123, align 8, !dbg !2097
  %sub162 = sub i64 %114, %115, !dbg !2098
  %cmp163 = icmp ule i64 %sub162, 512, !dbg !2099
  br i1 %cmp163, label %if.then165, label %if.else180, !dbg !2100

if.then165:                                       ; preds = %if.end161
  %116 = load i64, ptr %a123, align 8, !dbg !2101
  %shl166 = shl i64 %116, 9, !dbg !2101
  %117 = load i64, ptr %e128, align 8, !dbg !2101
  %118 = load i64, ptr %a123, align 8, !dbg !2101
  %sub167 = sub i64 %117, %118, !dbg !2101
  %sub168 = sub i64 %sub167, 1, !dbg !2101
  %or169 = or i64 %shl166, %sub168, !dbg !2101
  %119 = load i32, ptr %ack134, align 4, !dbg !2101
  %tobool170 = icmp ne i32 %119, 0, !dbg !2101
  %lnot171 = xor i1 %tobool170, true, !dbg !2101
  %lnot173 = xor i1 %lnot171, true, !dbg !2101
  %lnot.ext174 = zext i1 %lnot173 to i32, !dbg !2101
  %conv175 = sext i32 %lnot.ext174 to i64, !dbg !2101
  %shl176 = shl i64 %conv175, 63, !dbg !2101
  %or177 = or i64 %or169, %shl176, !dbg !2101
  %120 = load ptr, ptr %p, align 8, !dbg !2103
  %121 = load i32, ptr %hi, align 4, !dbg !2104
  %idxprom178 = sext i32 %121 to i64, !dbg !2103
  %arrayidx179 = getelementptr i64, ptr %120, i64 %idxprom178, !dbg !2103
  store i64 %or177, ptr %arrayidx179, align 8, !dbg !2105
  %122 = load i64, ptr %e128, align 8, !dbg !2106
  store i64 %122, ptr %s.addr, align 8, !dbg !2107
  br label %if.end194, !dbg !2108

if.else180:                                       ; preds = %if.end161
  %123 = load i64, ptr %a123, align 8, !dbg !2109
  %shl181 = shl i64 %123, 9, !dbg !2109
  %or182 = or i64 %shl181, 511, !dbg !2109
  %124 = load i32, ptr %ack134, align 4, !dbg !2109
  %tobool183 = icmp ne i32 %124, 0, !dbg !2109
  %lnot184 = xor i1 %tobool183, true, !dbg !2109
  %lnot186 = xor i1 %lnot184, true, !dbg !2109
  %lnot.ext187 = zext i1 %lnot186 to i32, !dbg !2109
  %conv188 = sext i32 %lnot.ext187 to i64, !dbg !2109
  %shl189 = shl i64 %conv188, 63, !dbg !2109
  %or190 = or i64 %or182, %shl189, !dbg !2109
  %125 = load ptr, ptr %p, align 8, !dbg !2111
  %126 = load i32, ptr %hi, align 4, !dbg !2112
  %idxprom191 = sext i32 %126 to i64, !dbg !2111
  %arrayidx192 = getelementptr i64, ptr %125, i64 %idxprom191, !dbg !2111
  store i64 %or190, ptr %arrayidx192, align 8, !dbg !2113
  %127 = load i64, ptr %a123, align 8, !dbg !2114
  %add193 = add i64 %127, 512, !dbg !2115
  store i64 %add193, ptr %s.addr, align 8, !dbg !2116
  br label %if.end194

if.end194:                                        ; preds = %if.else180, %if.then165
  %128 = load i64, ptr %e128, align 8, !dbg !2117
  %129 = load i64, ptr %s.addr, align 8, !dbg !2118
  %sub195 = sub i64 %128, %129, !dbg !2119
  %conv196 = trunc i64 %sub195 to i32, !dbg !2117
  store i32 %conv196, ptr %sectors.addr, align 4, !dbg !2120
  %130 = load i32, ptr %hi, align 4, !dbg !2121
  store i32 %130, ptr %lo, align 4, !dbg !2122
  %131 = load i32, ptr %hi, align 4, !dbg !2123
  %inc = add i32 %131, 1, !dbg !2123
  store i32 %inc, ptr %hi, align 4, !dbg !2123
  br label %if.end197, !dbg !2124

if.end197:                                        ; preds = %if.end194, %if.then122
  call void @llvm.lifetime.end.p0(i64 4, ptr %ack134) #15, !dbg !2125
  call void @llvm.lifetime.end.p0(i64 8, ptr %e128) #15, !dbg !2125
  call void @llvm.lifetime.end.p0(i64 8, ptr %a123) #15, !dbg !2125
  br label %if.end198, !dbg !2126

if.end198:                                        ; preds = %if.end197, %land.lhs.true118, %if.end116
  %132 = load i32, ptr %sectors.addr, align 4, !dbg !2127
  %cmp199 = icmp eq i32 %132, 0, !dbg !2128
  br i1 %cmp199, label %land.lhs.true201, label %if.end275, !dbg !2129

land.lhs.true201:                                 ; preds = %if.end198
  %133 = load i32, ptr %hi, align 4, !dbg !2130
  %134 = load ptr, ptr %bb.addr, align 8, !dbg !2131
  %count202 = getelementptr inbounds %struct.badblocks, ptr %134, i32 0, i32 1, !dbg !2132
  %135 = load i32, ptr %count202, align 8, !dbg !2132
  %cmp203 = icmp slt i32 %133, %135, !dbg !2133
  br i1 %cmp203, label %if.then205, label %if.end275, !dbg !2134

if.then205:                                       ; preds = %land.lhs.true201
  call void @llvm.lifetime.start.p0(i64 8, ptr %a206) #15, !dbg !2135
  call void @llvm.dbg.declare(metadata ptr %a206, metadata !1856, metadata !DIExpression()), !dbg !2136
  %136 = load ptr, ptr %p, align 8, !dbg !2137
  %137 = load i32, ptr %hi, align 4, !dbg !2137
  %idxprom207 = sext i32 %137 to i64, !dbg !2137
  %arrayidx208 = getelementptr i64, ptr %136, i64 %idxprom207, !dbg !2137
  %138 = load i64, ptr %arrayidx208, align 8, !dbg !2137
  %and209 = and i64 %138, 9223372036854775296, !dbg !2137
  %shr210 = lshr i64 %and209, 9, !dbg !2137
  store i64 %shr210, ptr %a206, align 8, !dbg !2136
  call void @llvm.lifetime.start.p0(i64 4, ptr %lolen) #15, !dbg !2138
  call void @llvm.dbg.declare(metadata ptr %lolen, metadata !1859, metadata !DIExpression()), !dbg !2139
  %139 = load ptr, ptr %p, align 8, !dbg !2140
  %140 = load i32, ptr %lo, align 4, !dbg !2140
  %idxprom211 = sext i32 %140 to i64, !dbg !2140
  %arrayidx212 = getelementptr i64, ptr %139, i64 %idxprom211, !dbg !2140
  %141 = load i64, ptr %arrayidx212, align 8, !dbg !2140
  %and213 = and i64 %141, 511, !dbg !2140
  %add214 = add i64 %and213, 1, !dbg !2140
  %conv215 = trunc i64 %add214 to i32, !dbg !2140
  store i32 %conv215, ptr %lolen, align 4, !dbg !2139
  call void @llvm.lifetime.start.p0(i64 4, ptr %hilen) #15, !dbg !2141
  call void @llvm.dbg.declare(metadata ptr %hilen, metadata !1860, metadata !DIExpression()), !dbg !2142
  %142 = load ptr, ptr %p, align 8, !dbg !2143
  %143 = load i32, ptr %hi, align 4, !dbg !2143
  %idxprom216 = sext i32 %143 to i64, !dbg !2143
  %arrayidx217 = getelementptr i64, ptr %142, i64 %idxprom216, !dbg !2143
  %144 = load i64, ptr %arrayidx217, align 8, !dbg !2143
  %and218 = and i64 %144, 511, !dbg !2143
  %add219 = add i64 %and218, 1, !dbg !2143
  %conv220 = trunc i64 %add219 to i32, !dbg !2143
  store i32 %conv220, ptr %hilen, align 4, !dbg !2142
  call void @llvm.lifetime.start.p0(i64 4, ptr %newlen) #15, !dbg !2144
  call void @llvm.dbg.declare(metadata ptr %newlen, metadata !1861, metadata !DIExpression()), !dbg !2145
  %145 = load i32, ptr %lolen, align 4, !dbg !2146
  %146 = load i32, ptr %hilen, align 4, !dbg !2147
  %add221 = add i32 %145, %146, !dbg !2148
  %conv222 = sext i32 %add221 to i64, !dbg !2146
  %147 = load i64, ptr %s.addr, align 8, !dbg !2149
  %148 = load i64, ptr %a206, align 8, !dbg !2150
  %sub223 = sub i64 %147, %148, !dbg !2151
  %sub224 = sub i64 %conv222, %sub223, !dbg !2152
  %conv225 = trunc i64 %sub224 to i32, !dbg !2146
  store i32 %conv225, ptr %newlen, align 4, !dbg !2145
  %149 = load i64, ptr %s.addr, align 8, !dbg !2153
  %150 = load i64, ptr %a206, align 8, !dbg !2154
  %cmp226 = icmp uge i64 %149, %150, !dbg !2155
  br i1 %cmp226, label %land.lhs.true228, label %if.end274, !dbg !2156

land.lhs.true228:                                 ; preds = %if.then205
  %151 = load i32, ptr %newlen, align 4, !dbg !2157
  %cmp229 = icmp slt i32 %151, 512, !dbg !2158
  br i1 %cmp229, label %if.then231, label %if.end274, !dbg !2159

if.then231:                                       ; preds = %land.lhs.true228
  call void @llvm.lifetime.start.p0(i64 4, ptr %ack232) #15, !dbg !2160
  call void @llvm.dbg.declare(metadata ptr %ack232, metadata !1862, metadata !DIExpression()), !dbg !2161
  %152 = load ptr, ptr %p, align 8, !dbg !2162
  %153 = load i32, ptr %lo, align 4, !dbg !2162
  %idxprom233 = sext i32 %153 to i64, !dbg !2162
  %arrayidx234 = getelementptr i64, ptr %152, i64 %idxprom233, !dbg !2162
  %154 = load i64, ptr %arrayidx234, align 8, !dbg !2162
  %and235 = and i64 %154, -9223372036854775808, !dbg !2162
  %tobool236 = icmp ne i64 %and235, 0, !dbg !2162
  br i1 %tobool236, label %land.rhs237, label %land.end246, !dbg !2163

land.rhs237:                                      ; preds = %if.then231
  %155 = load ptr, ptr %p, align 8, !dbg !2164
  %156 = load i32, ptr %hi, align 4, !dbg !2164
  %idxprom238 = sext i32 %156 to i64, !dbg !2164
  %arrayidx239 = getelementptr i64, ptr %155, i64 %idxprom238, !dbg !2164
  %157 = load i64, ptr %arrayidx239, align 8, !dbg !2164
  %and240 = and i64 %157, -9223372036854775808, !dbg !2164
  %tobool241 = icmp ne i64 %and240, 0, !dbg !2164
  %lnot242 = xor i1 %tobool241, true, !dbg !2164
  %lnot244 = xor i1 %lnot242, true, !dbg !2164
  br label %land.end246

land.end246:                                      ; preds = %land.rhs237, %if.then231
  %158 = phi i1 [ false, %if.then231 ], [ %lnot244, %land.rhs237 ], !dbg !2165
  %land.ext247 = zext i1 %158 to i32, !dbg !2163
  store i32 %land.ext247, ptr %ack232, align 4, !dbg !2161
  %159 = load ptr, ptr %p, align 8, !dbg !2166
  %160 = load i32, ptr %lo, align 4, !dbg !2166
  %idxprom248 = sext i32 %160 to i64, !dbg !2166
  %arrayidx249 = getelementptr i64, ptr %159, i64 %idxprom248, !dbg !2166
  %161 = load i64, ptr %arrayidx249, align 8, !dbg !2166
  %and250 = and i64 %161, 9223372036854775296, !dbg !2166
  %shr251 = lshr i64 %and250, 9, !dbg !2166
  %shl252 = shl i64 %shr251, 9, !dbg !2166
  %162 = load i32, ptr %newlen, align 4, !dbg !2166
  %sub253 = sub i32 %162, 1, !dbg !2166
  %conv254 = sext i32 %sub253 to i64, !dbg !2166
  %or255 = or i64 %shl252, %conv254, !dbg !2166
  %163 = load i32, ptr %ack232, align 4, !dbg !2166
  %tobool256 = icmp ne i32 %163, 0, !dbg !2166
  %lnot257 = xor i1 %tobool256, true, !dbg !2166
  %lnot259 = xor i1 %lnot257, true, !dbg !2166
  %lnot.ext260 = zext i1 %lnot259 to i32, !dbg !2166
  %conv261 = sext i32 %lnot.ext260 to i64, !dbg !2166
  %shl262 = shl i64 %conv261, 63, !dbg !2166
  %or263 = or i64 %or255, %shl262, !dbg !2166
  %164 = load ptr, ptr %p, align 8, !dbg !2167
  %165 = load i32, ptr %lo, align 4, !dbg !2168
  %idxprom264 = sext i32 %165 to i64, !dbg !2167
  %arrayidx265 = getelementptr i64, ptr %164, i64 %idxprom264, !dbg !2167
  store i64 %or263, ptr %arrayidx265, align 8, !dbg !2169
  %166 = load ptr, ptr %p, align 8, !dbg !2170
  %167 = load i32, ptr %hi, align 4, !dbg !2171
  %idx.ext = sext i32 %167 to i64, !dbg !2172
  %add.ptr = getelementptr i64, ptr %166, i64 %idx.ext, !dbg !2172
  %168 = load ptr, ptr %p, align 8, !dbg !2173
  %169 = load i32, ptr %hi, align 4, !dbg !2174
  %idx.ext266 = sext i32 %169 to i64, !dbg !2175
  %add.ptr267 = getelementptr i64, ptr %168, i64 %idx.ext266, !dbg !2175
  %add.ptr268 = getelementptr i64, ptr %add.ptr267, i64 1, !dbg !2176
  %170 = load ptr, ptr %bb.addr, align 8, !dbg !2177
  %count269 = getelementptr inbounds %struct.badblocks, ptr %170, i32 0, i32 1, !dbg !2178
  %171 = load i32, ptr %count269, align 8, !dbg !2178
  %172 = load i32, ptr %hi, align 4, !dbg !2179
  %sub270 = sub i32 %171, %172, !dbg !2180
  %sub271 = sub i32 %sub270, 1, !dbg !2181
  %mul = mul i32 %sub271, 8, !dbg !2182
  %conv272 = sext i32 %mul to i64, !dbg !2183
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %add.ptr, ptr align 8 %add.ptr268, i64 %conv272, i1 false), !dbg !2184
  %173 = load ptr, ptr %bb.addr, align 8, !dbg !2185
  %count273 = getelementptr inbounds %struct.badblocks, ptr %173, i32 0, i32 1, !dbg !2186
  %174 = load i32, ptr %count273, align 8, !dbg !2187
  %dec = add i32 %174, -1, !dbg !2187
  store i32 %dec, ptr %count273, align 8, !dbg !2187
  call void @llvm.lifetime.end.p0(i64 4, ptr %ack232) #15, !dbg !2188
  br label %if.end274, !dbg !2189

if.end274:                                        ; preds = %land.end246, %land.lhs.true228, %if.then205
  call void @llvm.lifetime.end.p0(i64 4, ptr %newlen) #15, !dbg !2190
  call void @llvm.lifetime.end.p0(i64 4, ptr %hilen) #15, !dbg !2190
  call void @llvm.lifetime.end.p0(i64 4, ptr %lolen) #15, !dbg !2190
  call void @llvm.lifetime.end.p0(i64 8, ptr %a206) #15, !dbg !2190
  br label %if.end275, !dbg !2191

if.end275:                                        ; preds = %if.end274, %land.lhs.true201, %if.end198
  br label %while.cond276, !dbg !2192

while.cond276:                                    ; preds = %if.end317, %if.end275
  %175 = load i32, ptr %sectors.addr, align 4, !dbg !2193
  %tobool277 = icmp ne i32 %175, 0, !dbg !2192
  br i1 %tobool277, label %while.body278, label %while.end318, !dbg !2192

while.body278:                                    ; preds = %while.cond276
  %176 = load ptr, ptr %bb.addr, align 8, !dbg !2194
  %count279 = getelementptr inbounds %struct.badblocks, ptr %176, i32 0, i32 1, !dbg !2195
  %177 = load i32, ptr %count279, align 8, !dbg !2195
  %conv280 = sext i32 %177 to i64, !dbg !2194
  %cmp281 = icmp uge i64 %conv280, 512, !dbg !2196
  br i1 %cmp281, label %if.then283, label %if.else284, !dbg !2197

if.then283:                                       ; preds = %while.body278
  store i32 1, ptr %rv, align 4, !dbg !2198
  br label %while.end318, !dbg !2200

if.else284:                                       ; preds = %while.body278
  call void @llvm.lifetime.start.p0(i64 4, ptr %this_sectors) #15, !dbg !2201
  call void @llvm.dbg.declare(metadata ptr %this_sectors, metadata !1865, metadata !DIExpression()), !dbg !2202
  %178 = load i32, ptr %sectors.addr, align 4, !dbg !2203
  store i32 %178, ptr %this_sectors, align 4, !dbg !2202
  %179 = load ptr, ptr %p, align 8, !dbg !2204
  %180 = load i32, ptr %hi, align 4, !dbg !2205
  %idx.ext285 = sext i32 %180 to i64, !dbg !2206
  %add.ptr286 = getelementptr i64, ptr %179, i64 %idx.ext285, !dbg !2206
  %add.ptr287 = getelementptr i64, ptr %add.ptr286, i64 1, !dbg !2207
  %181 = load ptr, ptr %p, align 8, !dbg !2208
  %182 = load i32, ptr %hi, align 4, !dbg !2209
  %idx.ext288 = sext i32 %182 to i64, !dbg !2210
  %add.ptr289 = getelementptr i64, ptr %181, i64 %idx.ext288, !dbg !2210
  %183 = load ptr, ptr %bb.addr, align 8, !dbg !2211
  %count290 = getelementptr inbounds %struct.badblocks, ptr %183, i32 0, i32 1, !dbg !2212
  %184 = load i32, ptr %count290, align 8, !dbg !2212
  %185 = load i32, ptr %hi, align 4, !dbg !2213
  %sub291 = sub i32 %184, %185, !dbg !2214
  %mul292 = mul i32 %sub291, 8, !dbg !2215
  %conv293 = sext i32 %mul292 to i64, !dbg !2216
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %add.ptr287, ptr align 8 %add.ptr289, i64 %conv293, i1 false), !dbg !2217
  %186 = load ptr, ptr %bb.addr, align 8, !dbg !2218
  %count294 = getelementptr inbounds %struct.badblocks, ptr %186, i32 0, i32 1, !dbg !2219
  %187 = load i32, ptr %count294, align 8, !dbg !2220
  %inc295 = add i32 %187, 1, !dbg !2220
  store i32 %inc295, ptr %count294, align 8, !dbg !2220
  %188 = load i32, ptr %this_sectors, align 4, !dbg !2221
  %cmp296 = icmp sgt i32 %188, 512, !dbg !2223
  br i1 %cmp296, label %if.then298, label %if.end299, !dbg !2224

if.then298:                                       ; preds = %if.else284
  store i32 512, ptr %this_sectors, align 4, !dbg !2225
  br label %if.end299, !dbg !2226

if.end299:                                        ; preds = %if.then298, %if.else284
  %189 = load i64, ptr %s.addr, align 8, !dbg !2227
  %shl300 = shl i64 %189, 9, !dbg !2227
  %190 = load i32, ptr %this_sectors, align 4, !dbg !2227
  %sub301 = sub i32 %190, 1, !dbg !2227
  %conv302 = sext i32 %sub301 to i64, !dbg !2227
  %or303 = or i64 %shl300, %conv302, !dbg !2227
  %191 = load i32, ptr %acknowledged.addr, align 4, !dbg !2227
  %tobool304 = icmp ne i32 %191, 0, !dbg !2227
  %lnot305 = xor i1 %tobool304, true, !dbg !2227
  %lnot307 = xor i1 %lnot305, true, !dbg !2227
  %lnot.ext308 = zext i1 %lnot307 to i32, !dbg !2227
  %conv309 = sext i32 %lnot.ext308 to i64, !dbg !2227
  %shl310 = shl i64 %conv309, 63, !dbg !2227
  %or311 = or i64 %or303, %shl310, !dbg !2227
  %192 = load ptr, ptr %p, align 8, !dbg !2228
  %193 = load i32, ptr %hi, align 4, !dbg !2229
  %idxprom312 = sext i32 %193 to i64, !dbg !2228
  %arrayidx313 = getelementptr i64, ptr %192, i64 %idxprom312, !dbg !2228
  store i64 %or311, ptr %arrayidx313, align 8, !dbg !2230
  %194 = load i32, ptr %this_sectors, align 4, !dbg !2231
  %195 = load i32, ptr %sectors.addr, align 4, !dbg !2232
  %sub314 = sub i32 %195, %194, !dbg !2232
  store i32 %sub314, ptr %sectors.addr, align 4, !dbg !2232
  %196 = load i32, ptr %this_sectors, align 4, !dbg !2233
  %conv315 = sext i32 %196 to i64, !dbg !2233
  %197 = load i64, ptr %s.addr, align 8, !dbg !2234
  %add316 = add i64 %197, %conv315, !dbg !2234
  store i64 %add316, ptr %s.addr, align 8, !dbg !2234
  call void @llvm.lifetime.end.p0(i64 4, ptr %this_sectors) #15, !dbg !2235
  br label %if.end317

if.end317:                                        ; preds = %if.end299
  br label %while.cond276, !dbg !2192, !llvm.loop !2236

while.end318:                                     ; preds = %if.then283, %while.cond276
  %198 = load ptr, ptr %bb.addr, align 8, !dbg !2238
  %changed = getelementptr inbounds %struct.badblocks, ptr %198, i32 0, i32 5, !dbg !2239
  store i32 1, ptr %changed, align 8, !dbg !2240
  %199 = load i32, ptr %acknowledged.addr, align 4, !dbg !2241
  %tobool319 = icmp ne i32 %199, 0, !dbg !2241
  br i1 %tobool319, label %if.else321, label %if.then320, !dbg !2243

if.then320:                                       ; preds = %while.end318
  %200 = load ptr, ptr %bb.addr, align 8, !dbg !2244
  %unacked_exist = getelementptr inbounds %struct.badblocks, ptr %200, i32 0, i32 2, !dbg !2245
  store i32 1, ptr %unacked_exist, align 4, !dbg !2246
  br label %if.end322, !dbg !2244

if.else321:                                       ; preds = %while.end318
  %201 = load ptr, ptr %bb.addr, align 8, !dbg !2247
  call void @badblocks_update_acked(ptr noundef %201) #16, !dbg !2248
  br label %if.end322

if.end322:                                        ; preds = %if.else321, %if.then320
  %202 = load ptr, ptr %bb.addr, align 8, !dbg !2249
  %lock323 = getelementptr inbounds %struct.badblocks, ptr %202, i32 0, i32 6, !dbg !2250
  %203 = load i64, ptr %flags, align 8, !dbg !2251
  call void @write_sequnlock_irqrestore(ptr noundef %lock323, i64 noundef %203) #16, !dbg !2252
  %204 = load i32, ptr %rv, align 4, !dbg !2253
  store i32 %204, ptr %retval, align 4, !dbg !2254
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2254

cleanup:                                          ; preds = %if.end322, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !2255
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #15, !dbg !2255
  call void @llvm.lifetime.end.p0(i64 4, ptr %hi) #15, !dbg !2255
  call void @llvm.lifetime.end.p0(i64 4, ptr %lo) #15, !dbg !2255
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !2255
  %205 = load i32, ptr %retval, align 4, !dbg !2255
  ret i32 %205, !dbg !2255
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @__write_seqlock_irqsave(ptr noundef %sl) #3 align 16 !dbg !2256 {
entry:
  %sl.addr = alloca ptr, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %sl, ptr %sl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sl.addr, metadata !2261, metadata !DIExpression()), !dbg !2268
  call void @llvm.lifetime.start.p0(i64 8, ptr %flags) #15, !dbg !2269
  call void @llvm.dbg.declare(metadata ptr %flags, metadata !2262, metadata !DIExpression()), !dbg !2270
  br label %do.body, !dbg !2271

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2272

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !2273
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !2263, metadata !DIExpression()), !dbg !2273
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !2273
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !2267, metadata !DIExpression()), !dbg !2273
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !2273
  %conv = zext i1 %cmp to i32, !dbg !2273
  store i32 1, ptr %tmp, align 4, !dbg !2273
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !2274
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !2274
  %0 = load i32, ptr %tmp, align 4, !dbg !2273
  %1 = load ptr, ptr %sl.addr, align 8, !dbg !2274
  %lock = getelementptr inbounds %struct.seqlock_t, ptr %1, i32 0, i32 1, !dbg !2274
  %call = call ptr @spinlock_check(ptr noundef %lock) #16, !dbg !2274
  %call2 = call i64 @_raw_spin_lock_irqsave(ptr noundef %call) #16, !dbg !2274
  store i64 %call2, ptr %flags, align 8, !dbg !2274
  br label %do.cond, !dbg !2274

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !2274

do.end:                                           ; preds = %do.cond
  br label %do.cond3, !dbg !2272

do.cond3:                                         ; preds = %do.end
  br label %do.end4, !dbg !2272

do.end4:                                          ; preds = %do.cond3
  %2 = load ptr, ptr %sl.addr, align 8, !dbg !2275
  %seqcount = getelementptr inbounds %struct.seqlock_t, ptr %2, i32 0, i32 0, !dbg !2276
  %seqcount5 = getelementptr inbounds %struct.seqcount_spinlock, ptr %seqcount, i32 0, i32 0, !dbg !2277
  call void @do_write_seqcount_begin(ptr noundef %seqcount5) #16, !dbg !2278
  %3 = load i64, ptr %flags, align 8, !dbg !2279
  call void @llvm.lifetime.end.p0(i64 8, ptr %flags) #15, !dbg !2280
  ret i64 %3, !dbg !2281
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr nocapture writeonly, ptr nocapture readonly, i64, i1 immarg) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @badblocks_update_acked(ptr noundef %bb) #0 align 16 !dbg !2282 {
entry:
  %bb.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %i = alloca i32, align 4
  %unacked = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bb, ptr %bb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bb.addr, metadata !2286, metadata !DIExpression()), !dbg !2290
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !2291
  call void @llvm.dbg.declare(metadata ptr %p, metadata !2287, metadata !DIExpression()), !dbg !2292
  %0 = load ptr, ptr %bb.addr, align 8, !dbg !2293
  %page = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 4, !dbg !2294
  %1 = load ptr, ptr %page, align 8, !dbg !2294
  store ptr %1, ptr %p, align 8, !dbg !2292
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !2295
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2288, metadata !DIExpression()), !dbg !2296
  call void @llvm.lifetime.start.p0(i64 1, ptr %unacked) #15, !dbg !2297
  call void @llvm.dbg.declare(metadata ptr %unacked, metadata !2289, metadata !DIExpression()), !dbg !2298
  store i8 0, ptr %unacked, align 1, !dbg !2298
  %2 = load ptr, ptr %bb.addr, align 8, !dbg !2299
  %unacked_exist = getelementptr inbounds %struct.badblocks, ptr %2, i32 0, i32 2, !dbg !2301
  %3 = load i32, ptr %unacked_exist, align 4, !dbg !2301
  %tobool = icmp ne i32 %3, 0, !dbg !2299
  br i1 %tobool, label %if.end, label %if.then, !dbg !2302

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2303

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !2304
  br label %for.cond, !dbg !2306

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i32, ptr %i, align 4, !dbg !2307
  %5 = load ptr, ptr %bb.addr, align 8, !dbg !2309
  %count = getelementptr inbounds %struct.badblocks, ptr %5, i32 0, i32 1, !dbg !2310
  %6 = load i32, ptr %count, align 8, !dbg !2310
  %cmp = icmp slt i32 %4, %6, !dbg !2311
  br i1 %cmp, label %for.body, label %for.end, !dbg !2312

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %p, align 8, !dbg !2313
  %8 = load i32, ptr %i, align 4, !dbg !2313
  %idxprom = sext i32 %8 to i64, !dbg !2313
  %arrayidx = getelementptr i64, ptr %7, i64 %idxprom, !dbg !2313
  %9 = load i64, ptr %arrayidx, align 8, !dbg !2313
  %and = and i64 %9, -9223372036854775808, !dbg !2313
  %tobool1 = icmp ne i64 %and, 0, !dbg !2313
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2316

if.then2:                                         ; preds = %for.body
  store i8 1, ptr %unacked, align 1, !dbg !2317
  br label %for.end, !dbg !2319

if.end3:                                          ; preds = %for.body
  br label %for.inc, !dbg !2320

for.inc:                                          ; preds = %if.end3
  %10 = load i32, ptr %i, align 4, !dbg !2321
  %inc = add i32 %10, 1, !dbg !2321
  store i32 %inc, ptr %i, align 4, !dbg !2321
  br label %for.cond, !dbg !2322, !llvm.loop !2323

for.end:                                          ; preds = %if.then2, %for.cond
  %11 = load i8, ptr %unacked, align 1, !dbg !2325, !range !2327, !noundef !383
  %tobool4 = trunc i8 %11 to i1, !dbg !2325
  br i1 %tobool4, label %if.end7, label %if.then5, !dbg !2328

if.then5:                                         ; preds = %for.end
  %12 = load ptr, ptr %bb.addr, align 8, !dbg !2329
  %unacked_exist6 = getelementptr inbounds %struct.badblocks, ptr %12, i32 0, i32 2, !dbg !2330
  store i32 0, ptr %unacked_exist6, align 4, !dbg !2331
  br label %if.end7, !dbg !2329

if.end7:                                          ; preds = %if.then5, %for.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2332
  br label %cleanup, !dbg !2332

cleanup:                                          ; preds = %if.end7, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %unacked) #15, !dbg !2332
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !2332
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !2332
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2332

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @write_sequnlock_irqrestore(ptr noundef %sl, i64 noundef %flags) #3 align 16 !dbg !2333 {
entry:
  %sl.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  store ptr %sl, ptr %sl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sl.addr, metadata !2337, metadata !DIExpression()), !dbg !2339
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2338, metadata !DIExpression()), !dbg !2340
  %0 = load ptr, ptr %sl.addr, align 8, !dbg !2341
  %seqcount = getelementptr inbounds %struct.seqlock_t, ptr %0, i32 0, i32 0, !dbg !2342
  %seqcount1 = getelementptr inbounds %struct.seqcount_spinlock, ptr %seqcount, i32 0, i32 0, !dbg !2343
  call void @do_write_seqcount_end(ptr noundef %seqcount1) #16, !dbg !2344
  %1 = load ptr, ptr %sl.addr, align 8, !dbg !2345
  %lock = getelementptr inbounds %struct.seqlock_t, ptr %1, i32 0, i32 1, !dbg !2346
  %2 = load i64, ptr %flags.addr, align 8, !dbg !2347
  call void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %2) #16, !dbg !2348
  ret void, !dbg !2349
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @badblocks_clear(ptr noundef %bb, i64 noundef %s, i32 noundef %sectors) #0 align 16 !dbg !2350 {
entry:
  %retval = alloca i32, align 4
  %bb.addr = alloca ptr, align 8
  %s.addr = alloca i64, align 8
  %sectors.addr = alloca i32, align 4
  %p = alloca ptr, align 8
  %lo = alloca i32, align 4
  %hi = alloca i32, align 4
  %target = alloca i64, align 8
  %rv = alloca i32, align 4
  %mid = alloca i32, align 4
  %a = alloca i64, align 8
  %ack = alloca i32, align 4
  %a43 = alloca i64, align 8
  %end = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %ack130 = alloca i32, align 4
  %start = alloca i64, align 8
  store ptr %bb, ptr %bb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bb.addr, metadata !2354, metadata !DIExpression()), !dbg !2378
  store i64 %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !2355, metadata !DIExpression()), !dbg !2379
  store i32 %sectors, ptr %sectors.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sectors.addr, metadata !2356, metadata !DIExpression()), !dbg !2380
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !2381
  call void @llvm.dbg.declare(metadata ptr %p, metadata !2357, metadata !DIExpression()), !dbg !2382
  call void @llvm.lifetime.start.p0(i64 4, ptr %lo) #15, !dbg !2383
  call void @llvm.dbg.declare(metadata ptr %lo, metadata !2358, metadata !DIExpression()), !dbg !2384
  call void @llvm.lifetime.start.p0(i64 4, ptr %hi) #15, !dbg !2383
  call void @llvm.dbg.declare(metadata ptr %hi, metadata !2359, metadata !DIExpression()), !dbg !2385
  call void @llvm.lifetime.start.p0(i64 8, ptr %target) #15, !dbg !2386
  call void @llvm.dbg.declare(metadata ptr %target, metadata !2360, metadata !DIExpression()), !dbg !2387
  %0 = load i64, ptr %s.addr, align 8, !dbg !2388
  %1 = load i32, ptr %sectors.addr, align 4, !dbg !2389
  %conv = sext i32 %1 to i64, !dbg !2389
  %add = add i64 %0, %conv, !dbg !2390
  store i64 %add, ptr %target, align 8, !dbg !2387
  call void @llvm.lifetime.start.p0(i64 4, ptr %rv) #15, !dbg !2391
  call void @llvm.dbg.declare(metadata ptr %rv, metadata !2361, metadata !DIExpression()), !dbg !2392
  store i32 0, ptr %rv, align 4, !dbg !2392
  %2 = load ptr, ptr %bb.addr, align 8, !dbg !2393
  %shift = getelementptr inbounds %struct.badblocks, ptr %2, i32 0, i32 3, !dbg !2395
  %3 = load i32, ptr %shift, align 8, !dbg !2395
  %cmp = icmp sgt i32 %3, 0, !dbg !2396
  br i1 %cmp, label %if.then, label %if.end, !dbg !2397

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %bb.addr, align 8, !dbg !2398
  %shift2 = getelementptr inbounds %struct.badblocks, ptr %4, i32 0, i32 3, !dbg !2400
  %5 = load i32, ptr %shift2, align 8, !dbg !2400
  %shl = shl i32 1, %5, !dbg !2401
  %sub = sub i32 %shl, 1, !dbg !2402
  %conv3 = sext i32 %sub to i64, !dbg !2403
  %6 = load i64, ptr %s.addr, align 8, !dbg !2404
  %add4 = add i64 %6, %conv3, !dbg !2404
  store i64 %add4, ptr %s.addr, align 8, !dbg !2404
  %7 = load ptr, ptr %bb.addr, align 8, !dbg !2405
  %shift5 = getelementptr inbounds %struct.badblocks, ptr %7, i32 0, i32 3, !dbg !2406
  %8 = load i32, ptr %shift5, align 8, !dbg !2406
  %9 = load i64, ptr %s.addr, align 8, !dbg !2407
  %sh_prom = zext i32 %8 to i64, !dbg !2407
  %shr = lshr i64 %9, %sh_prom, !dbg !2407
  store i64 %shr, ptr %s.addr, align 8, !dbg !2407
  %10 = load ptr, ptr %bb.addr, align 8, !dbg !2408
  %shift6 = getelementptr inbounds %struct.badblocks, ptr %10, i32 0, i32 3, !dbg !2409
  %11 = load i32, ptr %shift6, align 8, !dbg !2409
  %12 = load i64, ptr %target, align 8, !dbg !2410
  %sh_prom7 = zext i32 %11 to i64, !dbg !2410
  %shr8 = lshr i64 %12, %sh_prom7, !dbg !2410
  store i64 %shr8, ptr %target, align 8, !dbg !2410
  br label %if.end, !dbg !2411

if.end:                                           ; preds = %if.then, %entry
  %13 = load ptr, ptr %bb.addr, align 8, !dbg !2412
  %lock = getelementptr inbounds %struct.badblocks, ptr %13, i32 0, i32 6, !dbg !2413
  call void @write_seqlock_irq(ptr noundef %lock) #16, !dbg !2414
  %14 = load ptr, ptr %bb.addr, align 8, !dbg !2415
  %page = getelementptr inbounds %struct.badblocks, ptr %14, i32 0, i32 4, !dbg !2416
  %15 = load ptr, ptr %page, align 8, !dbg !2416
  store ptr %15, ptr %p, align 8, !dbg !2417
  store i32 0, ptr %lo, align 4, !dbg !2418
  %16 = load ptr, ptr %bb.addr, align 8, !dbg !2419
  %count = getelementptr inbounds %struct.badblocks, ptr %16, i32 0, i32 1, !dbg !2420
  %17 = load i32, ptr %count, align 8, !dbg !2420
  store i32 %17, ptr %hi, align 4, !dbg !2421
  br label %while.cond, !dbg !2422

while.cond:                                       ; preds = %if.end17, %if.end
  %18 = load i32, ptr %hi, align 4, !dbg !2423
  %19 = load i32, ptr %lo, align 4, !dbg !2424
  %sub9 = sub i32 %18, %19, !dbg !2425
  %cmp10 = icmp sgt i32 %sub9, 1, !dbg !2426
  br i1 %cmp10, label %while.body, label %while.end, !dbg !2422

while.body:                                       ; preds = %while.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %mid) #15, !dbg !2427
  call void @llvm.dbg.declare(metadata ptr %mid, metadata !2362, metadata !DIExpression()), !dbg !2428
  %20 = load i32, ptr %lo, align 4, !dbg !2429
  %21 = load i32, ptr %hi, align 4, !dbg !2430
  %add12 = add i32 %20, %21, !dbg !2431
  %div = sdiv i32 %add12, 2, !dbg !2432
  store i32 %div, ptr %mid, align 4, !dbg !2428
  call void @llvm.lifetime.start.p0(i64 8, ptr %a) #15, !dbg !2433
  call void @llvm.dbg.declare(metadata ptr %a, metadata !2364, metadata !DIExpression()), !dbg !2434
  %22 = load ptr, ptr %p, align 8, !dbg !2435
  %23 = load i32, ptr %mid, align 4, !dbg !2435
  %idxprom = sext i32 %23 to i64, !dbg !2435
  %arrayidx = getelementptr i64, ptr %22, i64 %idxprom, !dbg !2435
  %24 = load i64, ptr %arrayidx, align 8, !dbg !2435
  %and = and i64 %24, 9223372036854775296, !dbg !2435
  %shr13 = lshr i64 %and, 9, !dbg !2435
  store i64 %shr13, ptr %a, align 8, !dbg !2434
  %25 = load i64, ptr %a, align 8, !dbg !2436
  %26 = load i64, ptr %target, align 8, !dbg !2438
  %cmp14 = icmp ult i64 %25, %26, !dbg !2439
  br i1 %cmp14, label %if.then16, label %if.else, !dbg !2440

if.then16:                                        ; preds = %while.body
  %27 = load i32, ptr %mid, align 4, !dbg !2441
  store i32 %27, ptr %lo, align 4, !dbg !2442
  br label %if.end17, !dbg !2443

if.else:                                          ; preds = %while.body
  %28 = load i32, ptr %mid, align 4, !dbg !2444
  store i32 %28, ptr %hi, align 4, !dbg !2445
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then16
  call void @llvm.lifetime.end.p0(i64 8, ptr %a) #15, !dbg !2446
  call void @llvm.lifetime.end.p0(i64 4, ptr %mid) #15, !dbg !2446
  br label %while.cond, !dbg !2422, !llvm.loop !2447

while.end:                                        ; preds = %while.cond
  %29 = load i32, ptr %hi, align 4, !dbg !2448
  %30 = load i32, ptr %lo, align 4, !dbg !2449
  %cmp18 = icmp sgt i32 %29, %30, !dbg !2450
  br i1 %cmp18, label %if.then20, label %if.end180, !dbg !2451

if.then20:                                        ; preds = %while.end
  %31 = load ptr, ptr %p, align 8, !dbg !2452
  %32 = load i32, ptr %lo, align 4, !dbg !2452
  %idxprom21 = sext i32 %32 to i64, !dbg !2452
  %arrayidx22 = getelementptr i64, ptr %31, i64 %idxprom21, !dbg !2452
  %33 = load i64, ptr %arrayidx22, align 8, !dbg !2452
  %and23 = and i64 %33, 9223372036854775296, !dbg !2452
  %shr24 = lshr i64 %and23, 9, !dbg !2452
  %34 = load ptr, ptr %p, align 8, !dbg !2453
  %35 = load i32, ptr %lo, align 4, !dbg !2453
  %idxprom25 = sext i32 %35 to i64, !dbg !2453
  %arrayidx26 = getelementptr i64, ptr %34, i64 %idxprom25, !dbg !2453
  %36 = load i64, ptr %arrayidx26, align 8, !dbg !2453
  %and27 = and i64 %36, 511, !dbg !2453
  %add28 = add i64 %and27, 1, !dbg !2453
  %add29 = add i64 %shr24, %add28, !dbg !2454
  %37 = load i64, ptr %target, align 8, !dbg !2455
  %cmp30 = icmp ugt i64 %add29, %37, !dbg !2456
  br i1 %cmp30, label %land.lhs.true, label %if.end100, !dbg !2457

land.lhs.true:                                    ; preds = %if.then20
  %38 = load ptr, ptr %p, align 8, !dbg !2458
  %39 = load i32, ptr %lo, align 4, !dbg !2458
  %idxprom32 = sext i32 %39 to i64, !dbg !2458
  %arrayidx33 = getelementptr i64, ptr %38, i64 %idxprom32, !dbg !2458
  %40 = load i64, ptr %arrayidx33, align 8, !dbg !2458
  %and34 = and i64 %40, 9223372036854775296, !dbg !2458
  %shr35 = lshr i64 %and34, 9, !dbg !2458
  %41 = load i64, ptr %target, align 8, !dbg !2459
  %cmp36 = icmp ult i64 %shr35, %41, !dbg !2460
  br i1 %cmp36, label %if.then38, label %if.end100, !dbg !2461

if.then38:                                        ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %ack) #15, !dbg !2462
  call void @llvm.dbg.declare(metadata ptr %ack, metadata !2365, metadata !DIExpression()), !dbg !2463
  %42 = load ptr, ptr %p, align 8, !dbg !2464
  %43 = load i32, ptr %lo, align 4, !dbg !2464
  %idxprom39 = sext i32 %43 to i64, !dbg !2464
  %arrayidx40 = getelementptr i64, ptr %42, i64 %idxprom39, !dbg !2464
  %44 = load i64, ptr %arrayidx40, align 8, !dbg !2464
  %and41 = and i64 %44, -9223372036854775808, !dbg !2464
  %tobool = icmp ne i64 %and41, 0, !dbg !2464
  %lnot = xor i1 %tobool, true, !dbg !2464
  %lnot42 = xor i1 %lnot, true, !dbg !2464
  %lnot.ext = zext i1 %lnot42 to i32, !dbg !2464
  store i32 %lnot.ext, ptr %ack, align 4, !dbg !2463
  call void @llvm.lifetime.start.p0(i64 8, ptr %a43) #15, !dbg !2465
  call void @llvm.dbg.declare(metadata ptr %a43, metadata !2370, metadata !DIExpression()), !dbg !2466
  %45 = load ptr, ptr %p, align 8, !dbg !2467
  %46 = load i32, ptr %lo, align 4, !dbg !2467
  %idxprom44 = sext i32 %46 to i64, !dbg !2467
  %arrayidx45 = getelementptr i64, ptr %45, i64 %idxprom44, !dbg !2467
  %47 = load i64, ptr %arrayidx45, align 8, !dbg !2467
  %and46 = and i64 %47, 9223372036854775296, !dbg !2467
  %shr47 = lshr i64 %and46, 9, !dbg !2467
  store i64 %shr47, ptr %a43, align 8, !dbg !2466
  call void @llvm.lifetime.start.p0(i64 8, ptr %end) #15, !dbg !2468
  call void @llvm.dbg.declare(metadata ptr %end, metadata !2371, metadata !DIExpression()), !dbg !2469
  %48 = load i64, ptr %a43, align 8, !dbg !2470
  %49 = load ptr, ptr %p, align 8, !dbg !2471
  %50 = load i32, ptr %lo, align 4, !dbg !2471
  %idxprom48 = sext i32 %50 to i64, !dbg !2471
  %arrayidx49 = getelementptr i64, ptr %49, i64 %idxprom48, !dbg !2471
  %51 = load i64, ptr %arrayidx49, align 8, !dbg !2471
  %and50 = and i64 %51, 511, !dbg !2471
  %add51 = add i64 %and50, 1, !dbg !2471
  %add52 = add i64 %48, %add51, !dbg !2472
  store i64 %add52, ptr %end, align 8, !dbg !2469
  %52 = load i64, ptr %a43, align 8, !dbg !2473
  %53 = load i64, ptr %s.addr, align 8, !dbg !2475
  %cmp53 = icmp ult i64 %52, %53, !dbg !2476
  br i1 %cmp53, label %if.then55, label %if.end83, !dbg !2477

if.then55:                                        ; preds = %if.then38
  %54 = load ptr, ptr %bb.addr, align 8, !dbg !2478
  %count56 = getelementptr inbounds %struct.badblocks, ptr %54, i32 0, i32 1, !dbg !2481
  %55 = load i32, ptr %count56, align 8, !dbg !2481
  %conv57 = sext i32 %55 to i64, !dbg !2478
  %cmp58 = icmp uge i64 %conv57, 512, !dbg !2482
  br i1 %cmp58, label %if.then60, label %if.end61, !dbg !2483

if.then60:                                        ; preds = %if.then55
  store i32 -28, ptr %rv, align 4, !dbg !2484
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2486

if.end61:                                         ; preds = %if.then55
  %56 = load ptr, ptr %p, align 8, !dbg !2487
  %57 = load i32, ptr %lo, align 4, !dbg !2488
  %idx.ext = sext i32 %57 to i64, !dbg !2489
  %add.ptr = getelementptr i64, ptr %56, i64 %idx.ext, !dbg !2489
  %add.ptr62 = getelementptr i64, ptr %add.ptr, i64 1, !dbg !2490
  %58 = load ptr, ptr %p, align 8, !dbg !2491
  %59 = load i32, ptr %lo, align 4, !dbg !2492
  %idx.ext63 = sext i32 %59 to i64, !dbg !2493
  %add.ptr64 = getelementptr i64, ptr %58, i64 %idx.ext63, !dbg !2493
  %60 = load ptr, ptr %bb.addr, align 8, !dbg !2494
  %count65 = getelementptr inbounds %struct.badblocks, ptr %60, i32 0, i32 1, !dbg !2495
  %61 = load i32, ptr %count65, align 8, !dbg !2495
  %62 = load i32, ptr %lo, align 4, !dbg !2496
  %sub66 = sub i32 %61, %62, !dbg !2497
  %mul = mul i32 %sub66, 8, !dbg !2498
  %conv67 = sext i32 %mul to i64, !dbg !2499
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %add.ptr62, ptr align 8 %add.ptr64, i64 %conv67, i1 false), !dbg !2500
  %63 = load ptr, ptr %bb.addr, align 8, !dbg !2501
  %count68 = getelementptr inbounds %struct.badblocks, ptr %63, i32 0, i32 1, !dbg !2502
  %64 = load i32, ptr %count68, align 8, !dbg !2503
  %inc = add i32 %64, 1, !dbg !2503
  store i32 %inc, ptr %count68, align 8, !dbg !2503
  %65 = load i64, ptr %a43, align 8, !dbg !2504
  %shl69 = shl i64 %65, 9, !dbg !2504
  %66 = load i64, ptr %s.addr, align 8, !dbg !2504
  %67 = load i64, ptr %a43, align 8, !dbg !2504
  %sub70 = sub i64 %66, %67, !dbg !2504
  %sub71 = sub i64 %sub70, 1, !dbg !2504
  %or = or i64 %shl69, %sub71, !dbg !2504
  %68 = load i32, ptr %ack, align 4, !dbg !2504
  %tobool72 = icmp ne i32 %68, 0, !dbg !2504
  %lnot73 = xor i1 %tobool72, true, !dbg !2504
  %lnot75 = xor i1 %lnot73, true, !dbg !2504
  %lnot.ext76 = zext i1 %lnot75 to i32, !dbg !2504
  %conv77 = sext i32 %lnot.ext76 to i64, !dbg !2504
  %shl78 = shl i64 %conv77, 63, !dbg !2504
  %or79 = or i64 %or, %shl78, !dbg !2504
  %69 = load ptr, ptr %p, align 8, !dbg !2505
  %70 = load i32, ptr %lo, align 4, !dbg !2506
  %idxprom80 = sext i32 %70 to i64, !dbg !2505
  %arrayidx81 = getelementptr i64, ptr %69, i64 %idxprom80, !dbg !2505
  store i64 %or79, ptr %arrayidx81, align 8, !dbg !2507
  %71 = load i32, ptr %lo, align 4, !dbg !2508
  %inc82 = add i32 %71, 1, !dbg !2508
  store i32 %inc82, ptr %lo, align 4, !dbg !2508
  br label %if.end83, !dbg !2509

if.end83:                                         ; preds = %if.end61, %if.then38
  %72 = load i64, ptr %target, align 8, !dbg !2510
  %shl84 = shl i64 %72, 9, !dbg !2510
  %73 = load i64, ptr %end, align 8, !dbg !2510
  %74 = load i64, ptr %target, align 8, !dbg !2510
  %sub85 = sub i64 %73, %74, !dbg !2510
  %sub86 = sub i64 %sub85, 1, !dbg !2510
  %or87 = or i64 %shl84, %sub86, !dbg !2510
  %75 = load i32, ptr %ack, align 4, !dbg !2510
  %tobool88 = icmp ne i32 %75, 0, !dbg !2510
  %lnot89 = xor i1 %tobool88, true, !dbg !2510
  %lnot91 = xor i1 %lnot89, true, !dbg !2510
  %lnot.ext92 = zext i1 %lnot91 to i32, !dbg !2510
  %conv93 = sext i32 %lnot.ext92 to i64, !dbg !2510
  %shl94 = shl i64 %conv93, 63, !dbg !2510
  %or95 = or i64 %or87, %shl94, !dbg !2510
  %76 = load ptr, ptr %p, align 8, !dbg !2511
  %77 = load i32, ptr %lo, align 4, !dbg !2512
  %idxprom96 = sext i32 %77 to i64, !dbg !2511
  %arrayidx97 = getelementptr i64, ptr %76, i64 %idxprom96, !dbg !2511
  store i64 %or95, ptr %arrayidx97, align 8, !dbg !2513
  %78 = load i32, ptr %lo, align 4, !dbg !2514
  store i32 %78, ptr %hi, align 4, !dbg !2515
  %79 = load i32, ptr %lo, align 4, !dbg !2516
  %dec = add i32 %79, -1, !dbg !2516
  store i32 %dec, ptr %lo, align 4, !dbg !2516
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2517
  br label %cleanup, !dbg !2517

cleanup:                                          ; preds = %if.then60, %if.end83
  call void @llvm.lifetime.end.p0(i64 8, ptr %end) #15, !dbg !2517
  call void @llvm.lifetime.end.p0(i64 8, ptr %a43) #15, !dbg !2517
  call void @llvm.lifetime.end.p0(i64 4, ptr %ack) #15, !dbg !2517
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup182 [
    i32 0, label %cleanup.cont
    i32 4, label %out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end100, !dbg !2518

if.end100:                                        ; preds = %cleanup.cont, %land.lhs.true, %if.then20
  br label %while.cond101, !dbg !2519

while.cond101:                                    ; preds = %if.end159, %if.end100
  %80 = load i32, ptr %lo, align 4, !dbg !2520
  %cmp102 = icmp sge i32 %80, 0, !dbg !2521
  br i1 %cmp102, label %land.lhs.true104, label %land.end, !dbg !2522

land.lhs.true104:                                 ; preds = %while.cond101
  %81 = load ptr, ptr %p, align 8, !dbg !2523
  %82 = load i32, ptr %lo, align 4, !dbg !2523
  %idxprom105 = sext i32 %82 to i64, !dbg !2523
  %arrayidx106 = getelementptr i64, ptr %81, i64 %idxprom105, !dbg !2523
  %83 = load i64, ptr %arrayidx106, align 8, !dbg !2523
  %and107 = and i64 %83, 9223372036854775296, !dbg !2523
  %shr108 = lshr i64 %and107, 9, !dbg !2523
  %84 = load ptr, ptr %p, align 8, !dbg !2524
  %85 = load i32, ptr %lo, align 4, !dbg !2524
  %idxprom109 = sext i32 %85 to i64, !dbg !2524
  %arrayidx110 = getelementptr i64, ptr %84, i64 %idxprom109, !dbg !2524
  %86 = load i64, ptr %arrayidx110, align 8, !dbg !2524
  %and111 = and i64 %86, 511, !dbg !2524
  %add112 = add i64 %and111, 1, !dbg !2524
  %add113 = add i64 %shr108, %add112, !dbg !2525
  %87 = load i64, ptr %s.addr, align 8, !dbg !2526
  %cmp114 = icmp ugt i64 %add113, %87, !dbg !2527
  br i1 %cmp114, label %land.rhs, label %land.end, !dbg !2528

land.rhs:                                         ; preds = %land.lhs.true104
  %88 = load ptr, ptr %p, align 8, !dbg !2529
  %89 = load i32, ptr %lo, align 4, !dbg !2529
  %idxprom116 = sext i32 %89 to i64, !dbg !2529
  %arrayidx117 = getelementptr i64, ptr %88, i64 %idxprom116, !dbg !2529
  %90 = load i64, ptr %arrayidx117, align 8, !dbg !2529
  %and118 = and i64 %90, 9223372036854775296, !dbg !2529
  %shr119 = lshr i64 %and118, 9, !dbg !2529
  %91 = load i64, ptr %target, align 8, !dbg !2530
  %cmp120 = icmp ult i64 %shr119, %91, !dbg !2531
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true104, %while.cond101
  %92 = phi i1 [ false, %land.lhs.true104 ], [ false, %while.cond101 ], [ %cmp120, %land.rhs ], !dbg !2532
  br i1 %92, label %while.body122, label %while.end161, !dbg !2519

while.body122:                                    ; preds = %land.end
  %93 = load ptr, ptr %p, align 8, !dbg !2533
  %94 = load i32, ptr %lo, align 4, !dbg !2533
  %idxprom123 = sext i32 %94 to i64, !dbg !2533
  %arrayidx124 = getelementptr i64, ptr %93, i64 %idxprom123, !dbg !2533
  %95 = load i64, ptr %arrayidx124, align 8, !dbg !2533
  %and125 = and i64 %95, 9223372036854775296, !dbg !2533
  %shr126 = lshr i64 %and125, 9, !dbg !2533
  %96 = load i64, ptr %s.addr, align 8, !dbg !2534
  %cmp127 = icmp ult i64 %shr126, %96, !dbg !2535
  br i1 %cmp127, label %if.then129, label %if.end159, !dbg !2536

if.then129:                                       ; preds = %while.body122
  call void @llvm.lifetime.start.p0(i64 4, ptr %ack130) #15, !dbg !2537
  call void @llvm.dbg.declare(metadata ptr %ack130, metadata !2372, metadata !DIExpression()), !dbg !2538
  %97 = load ptr, ptr %p, align 8, !dbg !2539
  %98 = load i32, ptr %lo, align 4, !dbg !2539
  %idxprom131 = sext i32 %98 to i64, !dbg !2539
  %arrayidx132 = getelementptr i64, ptr %97, i64 %idxprom131, !dbg !2539
  %99 = load i64, ptr %arrayidx132, align 8, !dbg !2539
  %and133 = and i64 %99, -9223372036854775808, !dbg !2539
  %tobool134 = icmp ne i64 %and133, 0, !dbg !2539
  %lnot135 = xor i1 %tobool134, true, !dbg !2539
  %lnot137 = xor i1 %lnot135, true, !dbg !2539
  %lnot.ext138 = zext i1 %lnot137 to i32, !dbg !2539
  store i32 %lnot.ext138, ptr %ack130, align 4, !dbg !2538
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #15, !dbg !2540
  call void @llvm.dbg.declare(metadata ptr %start, metadata !2376, metadata !DIExpression()), !dbg !2541
  %100 = load ptr, ptr %p, align 8, !dbg !2542
  %101 = load i32, ptr %lo, align 4, !dbg !2542
  %idxprom139 = sext i32 %101 to i64, !dbg !2542
  %arrayidx140 = getelementptr i64, ptr %100, i64 %idxprom139, !dbg !2542
  %102 = load i64, ptr %arrayidx140, align 8, !dbg !2542
  %and141 = and i64 %102, 9223372036854775296, !dbg !2542
  %shr142 = lshr i64 %and141, 9, !dbg !2542
  store i64 %shr142, ptr %start, align 8, !dbg !2541
  %103 = load i64, ptr %start, align 8, !dbg !2543
  %shl143 = shl i64 %103, 9, !dbg !2543
  %104 = load i64, ptr %s.addr, align 8, !dbg !2543
  %105 = load i64, ptr %start, align 8, !dbg !2543
  %sub144 = sub i64 %104, %105, !dbg !2543
  %sub145 = sub i64 %sub144, 1, !dbg !2543
  %or146 = or i64 %shl143, %sub145, !dbg !2543
  %106 = load i32, ptr %ack130, align 4, !dbg !2543
  %tobool147 = icmp ne i32 %106, 0, !dbg !2543
  %lnot148 = xor i1 %tobool147, true, !dbg !2543
  %lnot150 = xor i1 %lnot148, true, !dbg !2543
  %lnot.ext151 = zext i1 %lnot150 to i32, !dbg !2543
  %conv152 = sext i32 %lnot.ext151 to i64, !dbg !2543
  %shl153 = shl i64 %conv152, 63, !dbg !2543
  %or154 = or i64 %or146, %shl153, !dbg !2543
  %107 = load ptr, ptr %p, align 8, !dbg !2544
  %108 = load i32, ptr %lo, align 4, !dbg !2545
  %idxprom155 = sext i32 %108 to i64, !dbg !2544
  %arrayidx156 = getelementptr i64, ptr %107, i64 %idxprom155, !dbg !2544
  store i64 %or154, ptr %arrayidx156, align 8, !dbg !2546
  store i32 6, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #15, !dbg !2547
  call void @llvm.lifetime.end.p0(i64 4, ptr %ack130) #15, !dbg !2547
  br label %while.end161

if.end159:                                        ; preds = %while.body122
  %109 = load i32, ptr %lo, align 4, !dbg !2548
  %dec160 = add i32 %109, -1, !dbg !2548
  store i32 %dec160, ptr %lo, align 4, !dbg !2548
  br label %while.cond101, !dbg !2519, !llvm.loop !2549

while.end161:                                     ; preds = %if.then129, %land.end
  %110 = load i32, ptr %hi, align 4, !dbg !2551
  %111 = load i32, ptr %lo, align 4, !dbg !2553
  %sub162 = sub i32 %110, %111, !dbg !2554
  %cmp163 = icmp sgt i32 %sub162, 1, !dbg !2555
  br i1 %cmp163, label %if.then165, label %if.end179, !dbg !2556

if.then165:                                       ; preds = %while.end161
  %112 = load ptr, ptr %p, align 8, !dbg !2557
  %113 = load i32, ptr %lo, align 4, !dbg !2559
  %idx.ext166 = sext i32 %113 to i64, !dbg !2560
  %add.ptr167 = getelementptr i64, ptr %112, i64 %idx.ext166, !dbg !2560
  %add.ptr168 = getelementptr i64, ptr %add.ptr167, i64 1, !dbg !2561
  %114 = load ptr, ptr %p, align 8, !dbg !2562
  %115 = load i32, ptr %hi, align 4, !dbg !2563
  %idx.ext169 = sext i32 %115 to i64, !dbg !2564
  %add.ptr170 = getelementptr i64, ptr %114, i64 %idx.ext169, !dbg !2564
  %116 = load ptr, ptr %bb.addr, align 8, !dbg !2565
  %count171 = getelementptr inbounds %struct.badblocks, ptr %116, i32 0, i32 1, !dbg !2566
  %117 = load i32, ptr %count171, align 8, !dbg !2566
  %118 = load i32, ptr %hi, align 4, !dbg !2567
  %sub172 = sub i32 %117, %118, !dbg !2568
  %mul173 = mul i32 %sub172, 8, !dbg !2569
  %conv174 = sext i32 %mul173 to i64, !dbg !2570
  call void @llvm.memmove.p0.p0.i64(ptr align 8 %add.ptr168, ptr align 8 %add.ptr170, i64 %conv174, i1 false), !dbg !2571
  %119 = load i32, ptr %hi, align 4, !dbg !2572
  %120 = load i32, ptr %lo, align 4, !dbg !2573
  %sub175 = sub i32 %119, %120, !dbg !2574
  %sub176 = sub i32 %sub175, 1, !dbg !2575
  %121 = load ptr, ptr %bb.addr, align 8, !dbg !2576
  %count177 = getelementptr inbounds %struct.badblocks, ptr %121, i32 0, i32 1, !dbg !2577
  %122 = load i32, ptr %count177, align 8, !dbg !2578
  %sub178 = sub i32 %122, %sub176, !dbg !2578
  store i32 %sub178, ptr %count177, align 8, !dbg !2578
  br label %if.end179, !dbg !2579

if.end179:                                        ; preds = %if.then165, %while.end161
  br label %if.end180, !dbg !2580

if.end180:                                        ; preds = %if.end179, %while.end
  %123 = load ptr, ptr %bb.addr, align 8, !dbg !2581
  call void @badblocks_update_acked(ptr noundef %123) #16, !dbg !2582
  %124 = load ptr, ptr %bb.addr, align 8, !dbg !2583
  %changed = getelementptr inbounds %struct.badblocks, ptr %124, i32 0, i32 5, !dbg !2584
  store i32 1, ptr %changed, align 8, !dbg !2585
  br label %out, !dbg !2583

out:                                              ; preds = %if.end180, %cleanup
  call void @llvm.dbg.label(metadata !2377), !dbg !2586
  %125 = load ptr, ptr %bb.addr, align 8, !dbg !2587
  %lock181 = getelementptr inbounds %struct.badblocks, ptr %125, i32 0, i32 6, !dbg !2588
  call void @write_sequnlock_irq(ptr noundef %lock181) #16, !dbg !2589
  %126 = load i32, ptr %rv, align 4, !dbg !2590
  store i32 %126, ptr %retval, align 4, !dbg !2591
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup182, !dbg !2591

cleanup182:                                       ; preds = %out, %cleanup
  call void @llvm.lifetime.end.p0(i64 4, ptr %rv) #15, !dbg !2592
  call void @llvm.lifetime.end.p0(i64 8, ptr %target) #15, !dbg !2592
  call void @llvm.lifetime.end.p0(i64 4, ptr %hi) #15, !dbg !2592
  call void @llvm.lifetime.end.p0(i64 4, ptr %lo) #15, !dbg !2592
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !2592
  %127 = load i32, ptr %retval, align 4, !dbg !2592
  ret i32 %127, !dbg !2592
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @write_seqlock_irq(ptr noundef %sl) #3 align 16 !dbg !2593 {
entry:
  %sl.addr = alloca ptr, align 8
  store ptr %sl, ptr %sl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sl.addr, metadata !2597, metadata !DIExpression()), !dbg !2598
  %0 = load ptr, ptr %sl.addr, align 8, !dbg !2599
  %lock = getelementptr inbounds %struct.seqlock_t, ptr %0, i32 0, i32 1, !dbg !2600
  call void @spin_lock_irq(ptr noundef %lock) #16, !dbg !2601
  %1 = load ptr, ptr %sl.addr, align 8, !dbg !2602
  %seqcount = getelementptr inbounds %struct.seqlock_t, ptr %1, i32 0, i32 0, !dbg !2603
  %seqcount1 = getelementptr inbounds %struct.seqcount_spinlock, ptr %seqcount, i32 0, i32 0, !dbg !2604
  call void @do_write_seqcount_begin(ptr noundef %seqcount1) #16, !dbg !2605
  ret void, !dbg !2606
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @write_sequnlock_irq(ptr noundef %sl) #3 align 16 !dbg !2607 {
entry:
  %sl.addr = alloca ptr, align 8
  store ptr %sl, ptr %sl.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %sl.addr, metadata !2609, metadata !DIExpression()), !dbg !2610
  %0 = load ptr, ptr %sl.addr, align 8, !dbg !2611
  %seqcount = getelementptr inbounds %struct.seqlock_t, ptr %0, i32 0, i32 0, !dbg !2612
  %seqcount1 = getelementptr inbounds %struct.seqcount_spinlock, ptr %seqcount, i32 0, i32 0, !dbg !2613
  call void @do_write_seqcount_end(ptr noundef %seqcount1) #16, !dbg !2614
  %1 = load ptr, ptr %sl.addr, align 8, !dbg !2615
  %lock = getelementptr inbounds %struct.seqlock_t, ptr %1, i32 0, i32 1, !dbg !2616
  call void @spin_unlock_irq(ptr noundef %lock) #16, !dbg !2617
  ret void, !dbg !2618
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @ack_all_badblocks(ptr noundef %bb) #0 align 16 !dbg !2619 {
entry:
  %bb.addr = alloca ptr, align 8
  %p = alloca ptr, align 8
  %i = alloca i32, align 4
  %start = alloca i64, align 8
  %len = alloca i32, align 4
  store ptr %bb, ptr %bb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bb.addr, metadata !2621, metadata !DIExpression()), !dbg !2633
  %0 = load ptr, ptr %bb.addr, align 8, !dbg !2634
  %page = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 4, !dbg !2636
  %1 = load ptr, ptr %page, align 8, !dbg !2636
  %cmp = icmp eq ptr %1, null, !dbg !2637
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2638

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %bb.addr, align 8, !dbg !2639
  %changed = getelementptr inbounds %struct.badblocks, ptr %2, i32 0, i32 5, !dbg !2640
  %3 = load i32, ptr %changed, align 8, !dbg !2640
  %tobool = icmp ne i32 %3, 0, !dbg !2639
  br i1 %tobool, label %if.then, label %if.end, !dbg !2641

if.then:                                          ; preds = %lor.lhs.false, %entry
  br label %return, !dbg !2642

if.end:                                           ; preds = %lor.lhs.false
  %4 = load ptr, ptr %bb.addr, align 8, !dbg !2643
  %lock = getelementptr inbounds %struct.badblocks, ptr %4, i32 0, i32 6, !dbg !2644
  call void @write_seqlock_irq(ptr noundef %lock) #16, !dbg !2645
  %5 = load ptr, ptr %bb.addr, align 8, !dbg !2646
  %changed1 = getelementptr inbounds %struct.badblocks, ptr %5, i32 0, i32 5, !dbg !2647
  %6 = load i32, ptr %changed1, align 8, !dbg !2647
  %cmp2 = icmp eq i32 %6, 0, !dbg !2648
  br i1 %cmp2, label %land.lhs.true, label %if.end21, !dbg !2649

land.lhs.true:                                    ; preds = %if.end
  %7 = load ptr, ptr %bb.addr, align 8, !dbg !2650
  %unacked_exist = getelementptr inbounds %struct.badblocks, ptr %7, i32 0, i32 2, !dbg !2651
  %8 = load i32, ptr %unacked_exist, align 4, !dbg !2651
  %tobool3 = icmp ne i32 %8, 0, !dbg !2650
  br i1 %tobool3, label %if.then4, label %if.end21, !dbg !2652

if.then4:                                         ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !2653
  call void @llvm.dbg.declare(metadata ptr %p, metadata !2622, metadata !DIExpression()), !dbg !2654
  %9 = load ptr, ptr %bb.addr, align 8, !dbg !2655
  %page5 = getelementptr inbounds %struct.badblocks, ptr %9, i32 0, i32 4, !dbg !2656
  %10 = load ptr, ptr %page5, align 8, !dbg !2656
  store ptr %10, ptr %p, align 8, !dbg !2654
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !2657
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2625, metadata !DIExpression()), !dbg !2658
  store i32 0, ptr %i, align 4, !dbg !2659
  br label %for.cond, !dbg !2660

for.cond:                                         ; preds = %for.inc, %if.then4
  %11 = load i32, ptr %i, align 4, !dbg !2661
  %12 = load ptr, ptr %bb.addr, align 8, !dbg !2662
  %count = getelementptr inbounds %struct.badblocks, ptr %12, i32 0, i32 1, !dbg !2663
  %13 = load i32, ptr %count, align 8, !dbg !2663
  %cmp6 = icmp slt i32 %11, %13, !dbg !2664
  br i1 %cmp6, label %for.body, label %for.end, !dbg !2665

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %p, align 8, !dbg !2666
  %15 = load i32, ptr %i, align 4, !dbg !2666
  %idxprom = sext i32 %15 to i64, !dbg !2666
  %arrayidx = getelementptr i64, ptr %14, i64 %idxprom, !dbg !2666
  %16 = load i64, ptr %arrayidx, align 8, !dbg !2666
  %and = and i64 %16, -9223372036854775808, !dbg !2666
  %tobool7 = icmp ne i64 %and, 0, !dbg !2666
  br i1 %tobool7, label %if.end19, label %if.then8, !dbg !2667

if.then8:                                         ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #15, !dbg !2668
  call void @llvm.dbg.declare(metadata ptr %start, metadata !2626, metadata !DIExpression()), !dbg !2669
  %17 = load ptr, ptr %p, align 8, !dbg !2670
  %18 = load i32, ptr %i, align 4, !dbg !2670
  %idxprom9 = sext i32 %18 to i64, !dbg !2670
  %arrayidx10 = getelementptr i64, ptr %17, i64 %idxprom9, !dbg !2670
  %19 = load i64, ptr %arrayidx10, align 8, !dbg !2670
  %and11 = and i64 %19, 9223372036854775296, !dbg !2670
  %shr = lshr i64 %and11, 9, !dbg !2670
  store i64 %shr, ptr %start, align 8, !dbg !2669
  call void @llvm.lifetime.start.p0(i64 4, ptr %len) #15, !dbg !2671
  call void @llvm.dbg.declare(metadata ptr %len, metadata !2632, metadata !DIExpression()), !dbg !2672
  %20 = load ptr, ptr %p, align 8, !dbg !2673
  %21 = load i32, ptr %i, align 4, !dbg !2673
  %idxprom12 = sext i32 %21 to i64, !dbg !2673
  %arrayidx13 = getelementptr i64, ptr %20, i64 %idxprom12, !dbg !2673
  %22 = load i64, ptr %arrayidx13, align 8, !dbg !2673
  %and14 = and i64 %22, 511, !dbg !2673
  %add = add i64 %and14, 1, !dbg !2673
  %conv = trunc i64 %add to i32, !dbg !2673
  store i32 %conv, ptr %len, align 4, !dbg !2672
  %23 = load i64, ptr %start, align 8, !dbg !2674
  %shl = shl i64 %23, 9, !dbg !2674
  %24 = load i32, ptr %len, align 4, !dbg !2674
  %sub = sub i32 %24, 1, !dbg !2674
  %conv15 = sext i32 %sub to i64, !dbg !2674
  %or = or i64 %shl, %conv15, !dbg !2674
  %or16 = or i64 %or, -9223372036854775808, !dbg !2674
  %25 = load ptr, ptr %p, align 8, !dbg !2675
  %26 = load i32, ptr %i, align 4, !dbg !2676
  %idxprom17 = sext i32 %26 to i64, !dbg !2675
  %arrayidx18 = getelementptr i64, ptr %25, i64 %idxprom17, !dbg !2675
  store i64 %or16, ptr %arrayidx18, align 8, !dbg !2677
  call void @llvm.lifetime.end.p0(i64 4, ptr %len) #15, !dbg !2678
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #15, !dbg !2678
  br label %if.end19, !dbg !2679

if.end19:                                         ; preds = %if.then8, %for.body
  br label %for.inc, !dbg !2680

for.inc:                                          ; preds = %if.end19
  %27 = load i32, ptr %i, align 4, !dbg !2681
  %inc = add i32 %27, 1, !dbg !2681
  store i32 %inc, ptr %i, align 4, !dbg !2681
  br label %for.cond, !dbg !2682, !llvm.loop !2683

for.end:                                          ; preds = %for.cond
  %28 = load ptr, ptr %bb.addr, align 8, !dbg !2685
  %unacked_exist20 = getelementptr inbounds %struct.badblocks, ptr %28, i32 0, i32 2, !dbg !2686
  store i32 0, ptr %unacked_exist20, align 4, !dbg !2687
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !2688
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !2688
  br label %if.end21, !dbg !2689

if.end21:                                         ; preds = %for.end, %land.lhs.true, %if.end
  %29 = load ptr, ptr %bb.addr, align 8, !dbg !2690
  %lock22 = getelementptr inbounds %struct.badblocks, ptr %29, i32 0, i32 6, !dbg !2691
  call void @write_sequnlock_irq(ptr noundef %lock22) #16, !dbg !2692
  br label %return, !dbg !2693

return:                                           ; preds = %if.end21, %if.then
  ret void, !dbg !2693
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @badblocks_show(ptr noundef %bb, ptr noundef %page, i32 noundef %unack) #0 align 16 !dbg !2694 {
entry:
  %retval = alloca i64, align 8
  %bb.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %unack.addr = alloca i32, align 4
  %len = alloca i64, align 8
  %i = alloca i32, align 4
  %p = alloca ptr, align 8
  %seq = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %s = alloca i64, align 8
  %length = alloca i32, align 4
  %ack = alloca i32, align 4
  store ptr %bb, ptr %bb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bb.addr, metadata !2698, metadata !DIExpression()), !dbg !2710
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !2699, metadata !DIExpression()), !dbg !2711
  store i32 %unack, ptr %unack.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %unack.addr, metadata !2700, metadata !DIExpression()), !dbg !2712
  call void @llvm.lifetime.start.p0(i64 8, ptr %len) #15, !dbg !2713
  call void @llvm.dbg.declare(metadata ptr %len, metadata !2701, metadata !DIExpression()), !dbg !2714
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #15, !dbg !2715
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2702, metadata !DIExpression()), !dbg !2716
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #15, !dbg !2717
  call void @llvm.dbg.declare(metadata ptr %p, metadata !2703, metadata !DIExpression()), !dbg !2718
  %0 = load ptr, ptr %bb.addr, align 8, !dbg !2719
  %page1 = getelementptr inbounds %struct.badblocks, ptr %0, i32 0, i32 4, !dbg !2720
  %1 = load ptr, ptr %page1, align 8, !dbg !2720
  store ptr %1, ptr %p, align 8, !dbg !2718
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq) #15, !dbg !2721
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !2704, metadata !DIExpression()), !dbg !2722
  %2 = load ptr, ptr %bb.addr, align 8, !dbg !2723
  %shift = getelementptr inbounds %struct.badblocks, ptr %2, i32 0, i32 3, !dbg !2725
  %3 = load i32, ptr %shift, align 8, !dbg !2725
  %cmp = icmp slt i32 %3, 0, !dbg !2726
  br i1 %cmp, label %if.then, label %if.end, !dbg !2727

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !2728
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup34, !dbg !2728

if.end:                                           ; preds = %entry
  br label %retry, !dbg !2729

retry:                                            ; preds = %if.then32, %if.end
  call void @llvm.dbg.label(metadata !2705), !dbg !2730
  %4 = load ptr, ptr %bb.addr, align 8, !dbg !2731
  %lock = getelementptr inbounds %struct.badblocks, ptr %4, i32 0, i32 6, !dbg !2732
  %call = call i32 @read_seqbegin(ptr noundef %lock) #16, !dbg !2733
  store i32 %call, ptr %seq, align 4, !dbg !2734
  store i64 0, ptr %len, align 8, !dbg !2735
  store i32 0, ptr %i, align 4, !dbg !2736
  br label %while.cond, !dbg !2737

while.cond:                                       ; preds = %cleanup.cont, %cleanup, %retry
  %5 = load i64, ptr %len, align 8, !dbg !2738
  %cmp2 = icmp ult i64 %5, 4096, !dbg !2739
  br i1 %cmp2, label %land.rhs, label %land.end, !dbg !2740

land.rhs:                                         ; preds = %while.cond
  %6 = load i32, ptr %i, align 4, !dbg !2741
  %7 = load ptr, ptr %bb.addr, align 8, !dbg !2742
  %count = getelementptr inbounds %struct.badblocks, ptr %7, i32 0, i32 1, !dbg !2743
  %8 = load i32, ptr %count, align 8, !dbg !2743
  %cmp3 = icmp slt i32 %6, %8, !dbg !2744
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %9 = phi i1 [ false, %while.cond ], [ %cmp3, %land.rhs ], !dbg !2745
  br i1 %9, label %while.body, label %while.end, !dbg !2737

while.body:                                       ; preds = %land.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %s) #15, !dbg !2746
  call void @llvm.dbg.declare(metadata ptr %s, metadata !2706, metadata !DIExpression()), !dbg !2747
  %10 = load ptr, ptr %p, align 8, !dbg !2748
  %11 = load i32, ptr %i, align 4, !dbg !2748
  %idxprom = sext i32 %11 to i64, !dbg !2748
  %arrayidx = getelementptr i64, ptr %10, i64 %idxprom, !dbg !2748
  %12 = load i64, ptr %arrayidx, align 8, !dbg !2748
  %and = and i64 %12, 9223372036854775296, !dbg !2748
  %shr = lshr i64 %and, 9, !dbg !2748
  store i64 %shr, ptr %s, align 8, !dbg !2747
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #15, !dbg !2749
  call void @llvm.dbg.declare(metadata ptr %length, metadata !2708, metadata !DIExpression()), !dbg !2750
  %13 = load ptr, ptr %p, align 8, !dbg !2751
  %14 = load i32, ptr %i, align 4, !dbg !2751
  %idxprom4 = sext i32 %14 to i64, !dbg !2751
  %arrayidx5 = getelementptr i64, ptr %13, i64 %idxprom4, !dbg !2751
  %15 = load i64, ptr %arrayidx5, align 8, !dbg !2751
  %and6 = and i64 %15, 511, !dbg !2751
  %add = add i64 %and6, 1, !dbg !2751
  %conv = trunc i64 %add to i32, !dbg !2751
  store i32 %conv, ptr %length, align 4, !dbg !2750
  call void @llvm.lifetime.start.p0(i64 4, ptr %ack) #15, !dbg !2752
  call void @llvm.dbg.declare(metadata ptr %ack, metadata !2709, metadata !DIExpression()), !dbg !2753
  %16 = load ptr, ptr %p, align 8, !dbg !2754
  %17 = load i32, ptr %i, align 4, !dbg !2754
  %idxprom7 = sext i32 %17 to i64, !dbg !2754
  %arrayidx8 = getelementptr i64, ptr %16, i64 %idxprom7, !dbg !2754
  %18 = load i64, ptr %arrayidx8, align 8, !dbg !2754
  %and9 = and i64 %18, -9223372036854775808, !dbg !2754
  %tobool = icmp ne i64 %and9, 0, !dbg !2754
  %lnot = xor i1 %tobool, true, !dbg !2754
  %lnot10 = xor i1 %lnot, true, !dbg !2754
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !2754
  store i32 %lnot.ext, ptr %ack, align 4, !dbg !2753
  %19 = load i32, ptr %i, align 4, !dbg !2755
  %inc = add i32 %19, 1, !dbg !2755
  store i32 %inc, ptr %i, align 4, !dbg !2755
  %20 = load i32, ptr %unack.addr, align 4, !dbg !2756
  %tobool11 = icmp ne i32 %20, 0, !dbg !2756
  br i1 %tobool11, label %land.lhs.true, label %if.end14, !dbg !2758

land.lhs.true:                                    ; preds = %while.body
  %21 = load i32, ptr %ack, align 4, !dbg !2759
  %tobool12 = icmp ne i32 %21, 0, !dbg !2759
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !2760

if.then13:                                        ; preds = %land.lhs.true
  store i32 3, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2761, !llvm.loop !2762

if.end14:                                         ; preds = %land.lhs.true, %while.body
  %22 = load ptr, ptr %page.addr, align 8, !dbg !2764
  %23 = load i64, ptr %len, align 8, !dbg !2765
  %add.ptr = getelementptr i8, ptr %22, i64 %23, !dbg !2766
  %24 = load i64, ptr %len, align 8, !dbg !2767
  %sub = sub i64 4096, %24, !dbg !2768
  %25 = load i64, ptr %s, align 8, !dbg !2769
  %26 = load ptr, ptr %bb.addr, align 8, !dbg !2770
  %shift15 = getelementptr inbounds %struct.badblocks, ptr %26, i32 0, i32 3, !dbg !2771
  %27 = load i32, ptr %shift15, align 8, !dbg !2771
  %sh_prom = zext i32 %27 to i64, !dbg !2772
  %shl = shl i64 %25, %sh_prom, !dbg !2772
  %28 = load i32, ptr %length, align 4, !dbg !2773
  %29 = load ptr, ptr %bb.addr, align 8, !dbg !2774
  %shift16 = getelementptr inbounds %struct.badblocks, ptr %29, i32 0, i32 3, !dbg !2775
  %30 = load i32, ptr %shift16, align 8, !dbg !2775
  %shl17 = shl i32 %28, %30, !dbg !2776
  %call18 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %add.ptr, i64 noundef %sub, ptr noundef @.str, i64 noundef %shl, i32 noundef %shl17) #16, !dbg !2777
  %conv19 = sext i32 %call18 to i64, !dbg !2777
  %31 = load i64, ptr %len, align 8, !dbg !2778
  %add20 = add i64 %31, %conv19, !dbg !2778
  store i64 %add20, ptr %len, align 8, !dbg !2778
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2763
  br label %cleanup, !dbg !2763

cleanup:                                          ; preds = %if.end14, %if.then13
  call void @llvm.lifetime.end.p0(i64 4, ptr %ack) #15, !dbg !2763
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #15, !dbg !2763
  call void @llvm.lifetime.end.p0(i64 8, ptr %s) #15, !dbg !2763
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 3, label %while.cond
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %while.cond, !dbg !2737, !llvm.loop !2762

while.end:                                        ; preds = %land.end
  %32 = load i32, ptr %unack.addr, align 4, !dbg !2779
  %tobool23 = icmp ne i32 %32, 0, !dbg !2779
  br i1 %tobool23, label %land.lhs.true24, label %if.end28, !dbg !2781

land.lhs.true24:                                  ; preds = %while.end
  %33 = load i64, ptr %len, align 8, !dbg !2782
  %cmp25 = icmp eq i64 %33, 0, !dbg !2783
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !2784

if.then27:                                        ; preds = %land.lhs.true24
  %34 = load ptr, ptr %bb.addr, align 8, !dbg !2785
  %unacked_exist = getelementptr inbounds %struct.badblocks, ptr %34, i32 0, i32 2, !dbg !2786
  store i32 0, ptr %unacked_exist, align 4, !dbg !2787
  br label %if.end28, !dbg !2785

if.end28:                                         ; preds = %if.then27, %land.lhs.true24, %while.end
  %35 = load ptr, ptr %bb.addr, align 8, !dbg !2788
  %lock29 = getelementptr inbounds %struct.badblocks, ptr %35, i32 0, i32 6, !dbg !2790
  %36 = load i32, ptr %seq, align 4, !dbg !2791
  %call30 = call i32 @read_seqretry(ptr noundef %lock29, i32 noundef %36) #16, !dbg !2792
  %tobool31 = icmp ne i32 %call30, 0, !dbg !2792
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !2793

if.then32:                                        ; preds = %if.end28
  br label %retry, !dbg !2794

if.end33:                                         ; preds = %if.end28
  %37 = load i64, ptr %len, align 8, !dbg !2795
  store i64 %37, ptr %retval, align 8, !dbg !2796
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup34, !dbg !2796

cleanup34:                                        ; preds = %if.end33, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq) #15, !dbg !2797
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #15, !dbg !2797
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #15, !dbg !2797
  call void @llvm.lifetime.end.p0(i64 8, ptr %len) #15, !dbg !2797
  %38 = load i64, ptr %retval, align 8, !dbg !2797
  ret i64 %38, !dbg !2797

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2798 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @badblocks_store(ptr noundef %bb, ptr noundef %page, i64 noundef %len, i32 noundef %unack) #0 align 16 !dbg !2802 {
entry:
  %retval = alloca i64, align 8
  %bb.addr = alloca ptr, align 8
  %page.addr = alloca ptr, align 8
  %len.addr = alloca i64, align 8
  %unack.addr = alloca i32, align 4
  %sector = alloca i64, align 8
  %length = alloca i32, align 4
  %newline = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %bb, ptr %bb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bb.addr, metadata !2806, metadata !DIExpression()), !dbg !2813
  store ptr %page, ptr %page.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %page.addr, metadata !2807, metadata !DIExpression()), !dbg !2814
  store i64 %len, ptr %len.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %len.addr, metadata !2808, metadata !DIExpression()), !dbg !2815
  store i32 %unack, ptr %unack.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %unack.addr, metadata !2809, metadata !DIExpression()), !dbg !2816
  call void @llvm.lifetime.start.p0(i64 8, ptr %sector) #15, !dbg !2817
  call void @llvm.dbg.declare(metadata ptr %sector, metadata !2810, metadata !DIExpression()), !dbg !2818
  call void @llvm.lifetime.start.p0(i64 4, ptr %length) #15, !dbg !2819
  call void @llvm.dbg.declare(metadata ptr %length, metadata !2811, metadata !DIExpression()), !dbg !2820
  call void @llvm.lifetime.start.p0(i64 1, ptr %newline) #15, !dbg !2821
  call void @llvm.dbg.declare(metadata ptr %newline, metadata !2812, metadata !DIExpression()), !dbg !2822
  %0 = load ptr, ptr %page.addr, align 8, !dbg !2823
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %0, ptr noundef @.str.1, ptr noundef %sector, ptr noundef %length, ptr noundef %newline) #16, !dbg !2824
  switch i32 %call, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb2
  ], !dbg !2825

sw.bb:                                            ; preds = %entry
  %1 = load i8, ptr %newline, align 1, !dbg !2826
  %conv = zext i8 %1 to i32, !dbg !2826
  %cmp = icmp ne i32 %conv, 10, !dbg !2829
  br i1 %cmp, label %if.then, label %if.end, !dbg !2830

if.then:                                          ; preds = %sw.bb
  store i64 -22, ptr %retval, align 8, !dbg !2831
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2831

if.end:                                           ; preds = %sw.bb
  br label %sw.bb2, !dbg !2832

sw.bb2:                                           ; preds = %entry, %if.end
  %2 = load i32, ptr %length, align 4, !dbg !2833
  %cmp3 = icmp sle i32 %2, 0, !dbg !2835
  br i1 %cmp3, label %if.then5, label %if.end6, !dbg !2836

if.then5:                                         ; preds = %sw.bb2
  store i64 -22, ptr %retval, align 8, !dbg !2837
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2837

if.end6:                                          ; preds = %sw.bb2
  br label %sw.epilog, !dbg !2838

sw.default:                                       ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !2839
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2839

sw.epilog:                                        ; preds = %if.end6
  %3 = load ptr, ptr %bb.addr, align 8, !dbg !2840
  %4 = load i64, ptr %sector, align 8, !dbg !2842
  %5 = load i32, ptr %length, align 4, !dbg !2843
  %6 = load i32, ptr %unack.addr, align 4, !dbg !2844
  %tobool = icmp ne i32 %6, 0, !dbg !2845
  %lnot = xor i1 %tobool, true, !dbg !2845
  %lnot.ext = zext i1 %lnot to i32, !dbg !2845
  %call7 = call i32 @badblocks_set(ptr noundef %3, i64 noundef %4, i32 noundef %5, i32 noundef %lnot.ext) #16, !dbg !2846
  %tobool8 = icmp ne i32 %call7, 0, !dbg !2846
  br i1 %tobool8, label %if.then9, label %if.else, !dbg !2847

if.then9:                                         ; preds = %sw.epilog
  store i64 -28, ptr %retval, align 8, !dbg !2848
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2848

if.else:                                          ; preds = %sw.epilog
  %7 = load i64, ptr %len.addr, align 8, !dbg !2849
  store i64 %7, ptr %retval, align 8, !dbg !2850
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2850

cleanup:                                          ; preds = %if.else, %if.then9, %sw.default, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %newline) #15, !dbg !2851
  call void @llvm.lifetime.end.p0(i64 4, ptr %length) #15, !dbg !2851
  call void @llvm.lifetime.end.p0(i64 8, ptr %sector) #15, !dbg !2851
  %8 = load i64, ptr %retval, align 8, !dbg !2851
  ret i64 %8, !dbg !2851
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2852 dso_local i32 @sscanf(ptr noundef, ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @badblocks_init(ptr noundef %bb, i32 noundef %enable) #0 align 16 !dbg !2855 {
entry:
  %bb.addr = alloca ptr, align 8
  %enable.addr = alloca i32, align 4
  store ptr %bb, ptr %bb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bb.addr, metadata !2859, metadata !DIExpression()), !dbg !2861
  store i32 %enable, ptr %enable.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %enable.addr, metadata !2860, metadata !DIExpression()), !dbg !2862
  %0 = load ptr, ptr %bb.addr, align 8, !dbg !2863
  %1 = load i32, ptr %enable.addr, align 4, !dbg !2864
  %call = call i32 @__badblocks_init(ptr noundef null, ptr noundef %0, i32 noundef %1) #16, !dbg !2865
  ret i32 %call, !dbg !2866
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__badblocks_init(ptr noundef %dev, ptr noundef %bb, i32 noundef %enable) #0 align 16 !dbg !2867 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %bb.addr = alloca ptr, align 8
  %enable.addr = alloca i32, align 4
  %.compoundliteral = alloca %struct.spinlock, align 4
  %____s = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2871, metadata !DIExpression()), !dbg !2878
  store ptr %bb, ptr %bb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bb.addr, metadata !2872, metadata !DIExpression()), !dbg !2879
  store i32 %enable, ptr %enable.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %enable.addr, metadata !2873, metadata !DIExpression()), !dbg !2880
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2881
  %1 = load ptr, ptr %bb.addr, align 8, !dbg !2882
  %dev1 = getelementptr inbounds %struct.badblocks, ptr %1, i32 0, i32 0, !dbg !2883
  store ptr %0, ptr %dev1, align 8, !dbg !2884
  %2 = load ptr, ptr %bb.addr, align 8, !dbg !2885
  %count = getelementptr inbounds %struct.badblocks, ptr %2, i32 0, i32 1, !dbg !2886
  store i32 0, ptr %count, align 8, !dbg !2887
  %3 = load i32, ptr %enable.addr, align 4, !dbg !2888
  %tobool = icmp ne i32 %3, 0, !dbg !2888
  br i1 %tobool, label %if.then, label %if.else, !dbg !2890

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %bb.addr, align 8, !dbg !2891
  %shift = getelementptr inbounds %struct.badblocks, ptr %4, i32 0, i32 3, !dbg !2892
  store i32 0, ptr %shift, align 8, !dbg !2893
  br label %if.end, !dbg !2891

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %bb.addr, align 8, !dbg !2894
  %shift2 = getelementptr inbounds %struct.badblocks, ptr %5, i32 0, i32 3, !dbg !2895
  store i32 -1, ptr %shift2, align 8, !dbg !2896
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !2897
  %tobool3 = icmp ne ptr %6, null, !dbg !2897
  br i1 %tobool3, label %if.then4, label %if.else5, !dbg !2899

if.then4:                                         ; preds = %if.end
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !2900
  %call = call ptr @devm_kzalloc(ptr noundef %7, i64 noundef 4096, i32 noundef 3264) #16, !dbg !2901
  %8 = load ptr, ptr %bb.addr, align 8, !dbg !2902
  %page = getelementptr inbounds %struct.badblocks, ptr %8, i32 0, i32 4, !dbg !2903
  store ptr %call, ptr %page, align 8, !dbg !2904
  br label %if.end8, !dbg !2902

if.else5:                                         ; preds = %if.end
  %call6 = call noalias ptr @kzalloc(i64 noundef 4096, i32 noundef 3264) #17, !dbg !2905
  %9 = load ptr, ptr %bb.addr, align 8, !dbg !2906
  %page7 = getelementptr inbounds %struct.badblocks, ptr %9, i32 0, i32 4, !dbg !2907
  store ptr %call6, ptr %page7, align 8, !dbg !2908
  br label %if.end8

if.end8:                                          ; preds = %if.else5, %if.then4
  %10 = load ptr, ptr %bb.addr, align 8, !dbg !2909
  %page9 = getelementptr inbounds %struct.badblocks, ptr %10, i32 0, i32 4, !dbg !2911
  %11 = load ptr, ptr %page9, align 8, !dbg !2911
  %tobool10 = icmp ne ptr %11, null, !dbg !2909
  br i1 %tobool10, label %if.end13, label %if.then11, !dbg !2912

if.then11:                                        ; preds = %if.end8
  %12 = load ptr, ptr %bb.addr, align 8, !dbg !2913
  %shift12 = getelementptr inbounds %struct.badblocks, ptr %12, i32 0, i32 3, !dbg !2915
  store i32 -1, ptr %shift12, align 8, !dbg !2916
  store i32 -12, ptr %retval, align 4, !dbg !2917
  br label %return, !dbg !2917

if.end13:                                         ; preds = %if.end8
  br label %do.body, !dbg !2918

do.body:                                          ; preds = %if.end13
  br label %do.body14, !dbg !2919

do.body14:                                        ; preds = %do.body
  %13 = load ptr, ptr %bb.addr, align 8, !dbg !2920
  %lock = getelementptr inbounds %struct.badblocks, ptr %13, i32 0, i32 6, !dbg !2920
  %lock15 = getelementptr inbounds %struct.seqlock_t, ptr %lock, i32 0, i32 1, !dbg !2920
  %call16 = call ptr @spinlock_check(ptr noundef %lock15) #16, !dbg !2920
  %14 = load ptr, ptr %bb.addr, align 8, !dbg !2920
  %lock17 = getelementptr inbounds %struct.badblocks, ptr %14, i32 0, i32 6, !dbg !2920
  %lock18 = getelementptr inbounds %struct.seqlock_t, ptr %lock17, i32 0, i32 1, !dbg !2920
  %15 = getelementptr inbounds %struct.spinlock, ptr %.compoundliteral, i32 0, i32 0, !dbg !2920
  %raw_lock = getelementptr inbounds %struct.raw_spinlock, ptr %15, i32 0, i32 0, !dbg !2920
  %16 = getelementptr inbounds %struct.qspinlock, ptr %raw_lock, i32 0, i32 0, !dbg !2920
  %counter = getelementptr inbounds %struct.atomic_t, ptr %16, i32 0, i32 0, !dbg !2920
  store i32 0, ptr %counter, align 4, !dbg !2920
  call void @llvm.memcpy.p0.p0.i64(ptr align 4 %lock18, ptr align 4 %.compoundliteral, i64 4, i1 false), !dbg !2920
  br label %do.end, !dbg !2920

do.end:                                           ; preds = %do.body14
  br label %do.body19, !dbg !2919

do.body19:                                        ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %____s) #15, !dbg !2922
  call void @llvm.dbg.declare(metadata ptr %____s, metadata !2874, metadata !DIExpression()), !dbg !2922
  %17 = load ptr, ptr %bb.addr, align 8, !dbg !2922
  %lock20 = getelementptr inbounds %struct.badblocks, ptr %17, i32 0, i32 6, !dbg !2922
  %seqcount = getelementptr inbounds %struct.seqlock_t, ptr %lock20, i32 0, i32 0, !dbg !2922
  store ptr %seqcount, ptr %____s, align 8, !dbg !2922
  %18 = load ptr, ptr %____s, align 8, !dbg !2922
  %seqcount21 = getelementptr inbounds %struct.seqcount_spinlock, ptr %18, i32 0, i32 0, !dbg !2922
  call void @__seqcount_init(ptr noundef %seqcount21, ptr noundef null, ptr noundef null) #16, !dbg !2922
  call void @llvm.lifetime.end.p0(i64 8, ptr %____s) #15, !dbg !2919
  br label %do.end22, !dbg !2922

do.end22:                                         ; preds = %do.body19
  br label %do.end23, !dbg !2919

do.end23:                                         ; preds = %do.end22
  store i32 0, ptr %retval, align 4, !dbg !2923
  br label %return, !dbg !2923

return:                                           ; preds = %do.end23, %if.then11
  %19 = load i32, ptr %retval, align 4, !dbg !2924
  ret i32 %19, !dbg !2924
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @devm_init_badblocks(ptr noundef %dev, ptr noundef %bb) #0 align 16 !dbg !2925 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %bb.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2929, metadata !DIExpression()), !dbg !2931
  store ptr %bb, ptr %bb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bb.addr, metadata !2930, metadata !DIExpression()), !dbg !2932
  %0 = load ptr, ptr %bb.addr, align 8, !dbg !2933
  %tobool = icmp ne ptr %0, null, !dbg !2933
  br i1 %tobool, label %if.end, label %if.then, !dbg !2935

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !2936
  br label %return, !dbg !2936

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2937
  %2 = load ptr, ptr %bb.addr, align 8, !dbg !2938
  %call = call i32 @__badblocks_init(ptr noundef %1, ptr noundef %2, i32 noundef 1) #16, !dbg !2939
  store i32 %call, ptr %retval, align 4, !dbg !2940
  br label %return, !dbg !2940

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !2941
  ret i32 %3, !dbg !2941
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @badblocks_exit(ptr noundef %bb) #0 align 16 !dbg !2942 {
entry:
  %bb.addr = alloca ptr, align 8
  store ptr %bb, ptr %bb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %bb.addr, metadata !2944, metadata !DIExpression()), !dbg !2945
  %0 = load ptr, ptr %bb.addr, align 8, !dbg !2946
  %tobool = icmp ne ptr %0, null, !dbg !2946
  br i1 %tobool, label %if.end, label %if.then, !dbg !2948

if.then:                                          ; preds = %entry
  br label %return, !dbg !2949

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %bb.addr, align 8, !dbg !2950
  %dev = getelementptr inbounds %struct.badblocks, ptr %1, i32 0, i32 0, !dbg !2952
  %2 = load ptr, ptr %dev, align 8, !dbg !2952
  %tobool1 = icmp ne ptr %2, null, !dbg !2950
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !2953

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %bb.addr, align 8, !dbg !2954
  %dev3 = getelementptr inbounds %struct.badblocks, ptr %3, i32 0, i32 0, !dbg !2955
  %4 = load ptr, ptr %dev3, align 8, !dbg !2955
  %5 = load ptr, ptr %bb.addr, align 8, !dbg !2956
  %page = getelementptr inbounds %struct.badblocks, ptr %5, i32 0, i32 4, !dbg !2957
  %6 = load ptr, ptr %page, align 8, !dbg !2957
  call void @devm_kfree(ptr noundef %4, ptr noundef %6) #16, !dbg !2958
  br label %if.end5, !dbg !2958

if.else:                                          ; preds = %if.end
  %7 = load ptr, ptr %bb.addr, align 8, !dbg !2959
  %page4 = getelementptr inbounds %struct.badblocks, ptr %7, i32 0, i32 4, !dbg !2960
  %8 = load ptr, ptr %page4, align 8, !dbg !2960
  call void @kfree(ptr noundef %8) #16, !dbg !2961
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %9 = load ptr, ptr %bb.addr, align 8, !dbg !2962
  %page6 = getelementptr inbounds %struct.badblocks, ptr %9, i32 0, i32 4, !dbg !2963
  store ptr null, ptr %page6, align 8, !dbg !2964
  br label %return, !dbg !2965

return:                                           ; preds = %if.end5, %if.then
  ret void, !dbg !2965
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2966 dso_local void @devm_kfree(ptr noundef, ptr noundef) #5

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2969 dso_local void @kfree(ptr noundef) #5

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__seqprop_spinlock_sequence(ptr noundef %s) #6 align 16 !dbg !2972 {
entry:
  %s.addr = alloca ptr, align 8
  %seq = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !2978, metadata !DIExpression()), !dbg !2980
  call void @llvm.lifetime.start.p0(i64 4, ptr %seq) #15, !dbg !2980
  call void @llvm.dbg.declare(metadata ptr %seq, metadata !2979, metadata !DIExpression()), !dbg !2980
  br label %do.body, !dbg !2981

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !2983

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2983

do.end:                                           ; preds = %do.cond
  %0 = load ptr, ptr %s.addr, align 8, !dbg !2981
  %seqcount = getelementptr inbounds %struct.seqcount_spinlock, ptr %0, i32 0, i32 0, !dbg !2981
  %sequence = getelementptr inbounds %struct.seqcount, ptr %seqcount, i32 0, i32 0, !dbg !2981
  %1 = load volatile i32, ptr %sequence, align 4, !dbg !2981
  store i32 %1, ptr %tmp, align 4, !dbg !2983
  %2 = load i32, ptr %tmp, align 4, !dbg !2981
  store i32 %2, ptr %seq, align 4, !dbg !2980
  %3 = load i32, ptr %seq, align 4, !dbg !2985
  call void @llvm.lifetime.end.p0(i64 4, ptr %seq) #15, !dbg !2980
  ret i32 %3, !dbg !2985
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_relax() #6 align 16 !dbg !2987 {
entry:
  call void @rep_nop() #16, !dbg !2989
  ret void, !dbg !2990
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_atomic_next(i32 noundef %n) #3 align 16 !dbg !2991 {
entry:
  %n.addr = alloca i32, align 4
  store i32 %n, ptr %n.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2996, metadata !DIExpression()), !dbg !2997
  ret void, !dbg !2998
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @rep_nop() #6 align 16 !dbg !2999 {
entry:
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !3000, !srcloc !3001
  ret void, !dbg !3002
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @do_read_seqcount_retry(ptr noundef %s, i32 noundef %start) #3 align 16 !dbg !3003 {
entry:
  %s.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3009, metadata !DIExpression()), !dbg !3011
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !3010, metadata !DIExpression()), !dbg !3012
  br label %do.body, !dbg !3013

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3014

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !3016

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !3014

do.body2:                                         ; preds = %do.end
  br label %do.body3, !dbg !3018

do.body3:                                         ; preds = %do.body2
  br label %do.end4, !dbg !3020

do.end4:                                          ; preds = %do.body3
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !3018, !srcloc !3022
  br label %do.end5, !dbg !3018

do.end5:                                          ; preds = %do.end4
  br label %do.end6, !dbg !3014

do.end6:                                          ; preds = %do.end5
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3023
  %1 = load i32, ptr %start.addr, align 4, !dbg !3024
  %call = call i32 @do___read_seqcount_retry(ptr noundef %0, i32 noundef %1) #16, !dbg !3025
  ret i32 %call, !dbg !3026
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @__seqprop_spinlock_ptr(ptr noundef %s) #6 align 16 !dbg !3027 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3032, metadata !DIExpression()), !dbg !3033
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3033
  %seqcount = getelementptr inbounds %struct.seqcount_spinlock, ptr %0, i32 0, i32 0, !dbg !3033
  ret ptr %seqcount, !dbg !3033
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @do___read_seqcount_retry(ptr noundef %s, i32 noundef %start) #3 align 16 !dbg !3034 {
entry:
  %s.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3036, metadata !DIExpression()), !dbg !3038
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !3037, metadata !DIExpression()), !dbg !3039
  call void @kcsan_atomic_next(i32 noundef 0) #16, !dbg !3040
  br label %do.body, !dbg !3041

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3043

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3041
  %sequence = getelementptr inbounds %struct.seqcount, ptr %0, i32 0, i32 0, !dbg !3041
  %1 = load volatile i32, ptr %sequence, align 4, !dbg !3041
  store i32 %1, ptr %tmp, align 4, !dbg !3043
  %2 = load i32, ptr %tmp, align 4, !dbg !3041
  %3 = load i32, ptr %start.addr, align 4, !dbg !3045
  %cmp = icmp ne i32 %2, %3, !dbg !3045
  %lnot = xor i1 %cmp, true, !dbg !3045
  %lnot1 = xor i1 %lnot, true, !dbg !3045
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3045
  %conv = sext i32 %lnot.ext to i64, !dbg !3045
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3045
  %conv2 = trunc i64 %expval to i32, !dbg !3045
  ret i32 %conv2, !dbg !3046
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3047 dso_local i64 @_raw_spin_lock_irqsave(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @spinlock_check(ptr noundef %lock) #6 align 16 !dbg !3052 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !3058, metadata !DIExpression()), !dbg !3059
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !3060
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !3061
  ret ptr %1, !dbg !3062
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_write_seqcount_begin(ptr noundef %s) #3 align 16 !dbg !3063 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3067, metadata !DIExpression()), !dbg !3068
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3069
  call void @do_write_seqcount_begin_nested(ptr noundef %0, i32 noundef 0) #16, !dbg !3070
  ret void, !dbg !3071
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_write_seqcount_begin_nested(ptr noundef %s, i32 noundef %subclass) #3 align 16 !dbg !3072 {
entry:
  %s.addr = alloca ptr, align 8
  %subclass.addr = alloca i32, align 4
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3076, metadata !DIExpression()), !dbg !3078
  store i32 %subclass, ptr %subclass.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %subclass.addr, metadata !3077, metadata !DIExpression()), !dbg !3079
  br label %do.body, !dbg !3080

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3081

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3083
  call void @do_raw_write_seqcount_begin(ptr noundef %0) #16, !dbg !3084
  ret void, !dbg !3085
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_raw_write_seqcount_begin(ptr noundef %s) #3 align 16 !dbg !3086 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3088, metadata !DIExpression()), !dbg !3089
  call void @kcsan_nestable_atomic_begin() #16, !dbg !3090
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3091
  %sequence = getelementptr inbounds %struct.seqcount, ptr %0, i32 0, i32 0, !dbg !3092
  %1 = load i32, ptr %sequence, align 4, !dbg !3093
  %inc = add i32 %1, 1, !dbg !3093
  store i32 %inc, ptr %sequence, align 4, !dbg !3093
  br label %do.body, !dbg !3094

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3095

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !3097

do.end:                                           ; preds = %do.body1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !3095, !srcloc !3099
  br label %do.end2, !dbg !3095

do.end2:                                          ; preds = %do.end
  ret void, !dbg !3100
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_nestable_atomic_begin() #3 align 16 !dbg !3101 {
entry:
  ret void, !dbg !3102
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_write_seqcount_end(ptr noundef %s) #3 align 16 !dbg !3103 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3105, metadata !DIExpression()), !dbg !3106
  br label %do.body, !dbg !3107

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3108

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3110
  call void @do_raw_write_seqcount_end(ptr noundef %0) #16, !dbg !3111
  ret void, !dbg !3112
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irqrestore(ptr noundef %lock, i64 noundef %flags) #6 align 16 !dbg !3113 {
entry:
  %lock.addr = alloca ptr, align 8
  %flags.addr = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !3117, metadata !DIExpression()), !dbg !3123
  store i64 %flags, ptr %flags.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3118, metadata !DIExpression()), !dbg !3124
  br label %do.body, !dbg !3125

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy) #15, !dbg !3126
  call void @llvm.dbg.declare(metadata ptr %__dummy, metadata !3119, metadata !DIExpression()), !dbg !3126
  call void @llvm.lifetime.start.p0(i64 8, ptr %__dummy2) #15, !dbg !3126
  call void @llvm.dbg.declare(metadata ptr %__dummy2, metadata !3122, metadata !DIExpression()), !dbg !3126
  %cmp = icmp eq ptr %__dummy, %__dummy2, !dbg !3126
  %conv = zext i1 %cmp to i32, !dbg !3126
  store i32 1, ptr %tmp, align 4, !dbg !3126
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy2) #15, !dbg !3127
  call void @llvm.lifetime.end.p0(i64 8, ptr %__dummy) #15, !dbg !3127
  %0 = load i32, ptr %tmp, align 4, !dbg !3126
  %1 = load ptr, ptr %lock.addr, align 8, !dbg !3127
  %2 = getelementptr inbounds %struct.spinlock, ptr %1, i32 0, i32 0, !dbg !3127
  %3 = load i64, ptr %flags.addr, align 8, !dbg !3127
  call void @_raw_spin_unlock_irqrestore(ptr noundef %2, i64 noundef %3) #16, !dbg !3127
  br label %do.end, !dbg !3127

do.end:                                           ; preds = %do.body
  ret void, !dbg !3128
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @do_raw_write_seqcount_end(ptr noundef %s) #3 align 16 !dbg !3129 {
entry:
  %s.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3131, metadata !DIExpression()), !dbg !3132
  br label %do.body, !dbg !3133

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3134

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !3136

do.end:                                           ; preds = %do.body1
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #15, !dbg !3134, !srcloc !3138
  br label %do.end2, !dbg !3134

do.end2:                                          ; preds = %do.end
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3139
  %sequence = getelementptr inbounds %struct.seqcount, ptr %0, i32 0, i32 0, !dbg !3140
  %1 = load i32, ptr %sequence, align 4, !dbg !3141
  %inc = add i32 %1, 1, !dbg !3141
  store i32 %inc, ptr %sequence, align 4, !dbg !3141
  call void @kcsan_nestable_atomic_end() #16, !dbg !3142
  ret void, !dbg !3143
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_nestable_atomic_end() #3 align 16 !dbg !3144 {
entry:
  ret void, !dbg !3145
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3146 dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i64 noundef) #5 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #6 align 16 !dbg !3149 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !3153, metadata !DIExpression()), !dbg !3154
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !3155
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !3155
  call void @_raw_spin_lock_irq(ptr noundef %1) #16, !dbg !3155
  ret void, !dbg !3156
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3157 dso_local void @_raw_spin_lock_irq(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #6 align 16 !dbg !3160 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !3162, metadata !DIExpression()), !dbg !3163
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !3164
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !3164
  call void @_raw_spin_unlock_irq(ptr noundef %1) #16, !dbg !3164
  ret void, !dbg !3165
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3166 dso_local void @_raw_spin_unlock_irq(ptr noundef) #5 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @devm_kzalloc(ptr noundef %dev, i64 noundef %size, i32 noundef %gfp) #3 align 16 !dbg !3167 {
entry:
  %dev.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3171, metadata !DIExpression()), !dbg !3174
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3172, metadata !DIExpression()), !dbg !3175
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !3173, metadata !DIExpression()), !dbg !3176
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3177
  %1 = load i64, ptr %size.addr, align 8, !dbg !3178
  %2 = load i32, ptr %gfp.addr, align 4, !dbg !3179
  %or = or i32 %2, 256, !dbg !3180
  %call = call noalias ptr @devm_kmalloc(ptr noundef %0, i64 noundef %1, i32 noundef %or) #18, !dbg !3181
  ret ptr %call, !dbg !3182
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !3183 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3187, metadata !DIExpression()), !dbg !3189
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3188, metadata !DIExpression()), !dbg !3190
  %0 = load i64, ptr %size.addr, align 8, !dbg !3191
  %1 = load i32, ptr %flags.addr, align 4, !dbg !3192
  %or = or i32 %1, 256, !dbg !3193
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !3194
  ret ptr %call, !dbg !3195
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__seqcount_init(ptr noundef %s, ptr noundef %name, ptr noundef %key) #3 align 16 !dbg !3196 {
entry:
  %s.addr = alloca ptr, align 8
  %name.addr = alloca ptr, align 8
  %key.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3202, metadata !DIExpression()), !dbg !3205
  store ptr %name, ptr %name.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %name.addr, metadata !3203, metadata !DIExpression()), !dbg !3206
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !3204, metadata !DIExpression()), !dbg !3207
  br label %do.body, !dbg !3208

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %name.addr, align 8, !dbg !3209
  %1 = load ptr, ptr %key.addr, align 8, !dbg !3209
  br label %do.end, !dbg !3209

do.end:                                           ; preds = %do.body
  %2 = load ptr, ptr %s.addr, align 8, !dbg !3211
  %sequence = getelementptr inbounds %struct.seqcount, ptr %2, i32 0, i32 0, !dbg !3212
  store i32 0, ptr %sequence, align 4, !dbg !3213
  ret void, !dbg !3214
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare !dbg !3215 dso_local noalias ptr @devm_kmalloc(ptr noundef, i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #10 align 16 !dbg !3216 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3218, metadata !DIExpression()), !dbg !3223
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3219, metadata !DIExpression()), !dbg !3224
  %0 = load i64, ptr %size.addr, align 8, !dbg !3225
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3226
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !3227

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3228
  %tobool = icmp ne i64 %2, 0, !dbg !3228
  br i1 %tobool, label %if.then, label %if.end7, !dbg !3229

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !3230
  call void @llvm.dbg.declare(metadata ptr %index, metadata !3220, metadata !DIExpression()), !dbg !3231
  %3 = load i64, ptr %size.addr, align 8, !dbg !3232
  %cmp = icmp ugt i64 %3, 8192, !dbg !3234
  br i1 %cmp, label %if.then1, label %if.end, !dbg !3235

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !3236
  %5 = load i32, ptr %flags.addr, align 4, !dbg !3237
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !3238
  store ptr %call, ptr %retval, align 8, !dbg !3239
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3239

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !3240
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !3240
  store i32 %call2, ptr %index, align 4, !dbg !3241
  %7 = load i32, ptr %flags.addr, align 4, !dbg !3242
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !3243
  %9 = ptrtoint ptr %8 to i64, !dbg !3243
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !3244
  %idxprom = zext i32 %call3 to i64, !dbg !3245
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !3245
  %10 = load i32, ptr %index, align 4, !dbg !3246
  %idxprom4 = zext i32 %10 to i64, !dbg !3245
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !3245
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !3245
  %12 = load i32, ptr %flags.addr, align 4, !dbg !3247
  %13 = load i64, ptr %size.addr, align 8, !dbg !3248
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !3249
  store ptr %call6, ptr %retval, align 8, !dbg !3250
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3250

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !3251
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !3252
  %15 = load i32, ptr %flags.addr, align 4, !dbg !3253
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !3254
  store ptr %call8, ptr %retval, align 8, !dbg !3255
  br label %return, !dbg !3255

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !3256
  ret ptr %16, !dbg !3256
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3257 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !3258 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3262, metadata !DIExpression()), !dbg !3264
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !3263, metadata !DIExpression()), !dbg !3265
  %0 = load i64, ptr %size.addr, align 8, !dbg !3266
  %tobool = icmp ne i64 %0, 0, !dbg !3266
  br i1 %tobool, label %if.end, label %if.then, !dbg !3268

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3269
  br label %return, !dbg !3269

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !3270
  %cmp = icmp ule i64 %1, 8, !dbg !3272
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !3273

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !3274
  br label %return, !dbg !3274

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !3275
  %cmp3 = icmp ugt i64 %2, 64, !dbg !3277
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !3278

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !3279
  %cmp4 = icmp ule i64 %3, 96, !dbg !3280
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3281

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !3282
  br label %return, !dbg !3282

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !3283
  %cmp7 = icmp ugt i64 %4, 128, !dbg !3285
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !3286

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !3287
  %cmp9 = icmp ule i64 %5, 192, !dbg !3288
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3289

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !3290
  br label %return, !dbg !3290

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !3291
  %cmp12 = icmp ule i64 %6, 8, !dbg !3293
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !3294

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !3295
  br label %return, !dbg !3295

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !3296
  %cmp15 = icmp ule i64 %7, 16, !dbg !3298
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !3299

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !3300
  br label %return, !dbg !3300

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !3301
  %cmp18 = icmp ule i64 %8, 32, !dbg !3303
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !3304

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !3305
  br label %return, !dbg !3305

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !3306
  %cmp21 = icmp ule i64 %9, 64, !dbg !3308
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !3309

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !3310
  br label %return, !dbg !3310

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !3311
  %cmp24 = icmp ule i64 %10, 128, !dbg !3313
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !3314

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !3315
  br label %return, !dbg !3315

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !3316
  %cmp27 = icmp ule i64 %11, 256, !dbg !3318
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !3319

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !3320
  br label %return, !dbg !3320

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !3321
  %cmp30 = icmp ule i64 %12, 512, !dbg !3323
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !3324

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !3325
  br label %return, !dbg !3325

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !3326
  %cmp33 = icmp ule i64 %13, 1024, !dbg !3328
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !3329

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !3330
  br label %return, !dbg !3330

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !3331
  %cmp36 = icmp ule i64 %14, 2048, !dbg !3333
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !3334

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !3335
  br label %return, !dbg !3335

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !3336
  %cmp39 = icmp ule i64 %15, 4096, !dbg !3338
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !3339

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !3340
  br label %return, !dbg !3340

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !3341
  %cmp42 = icmp ule i64 %16, 8192, !dbg !3343
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !3344

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !3345
  br label %return, !dbg !3345

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !3346
  %cmp45 = icmp ule i64 %17, 16384, !dbg !3348
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !3349

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !3350
  br label %return, !dbg !3350

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !3351
  %cmp48 = icmp ule i64 %18, 32768, !dbg !3353
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !3354

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !3355
  br label %return, !dbg !3355

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !3356
  %cmp51 = icmp ule i64 %19, 65536, !dbg !3358
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !3359

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !3360
  br label %return, !dbg !3360

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !3361
  %cmp54 = icmp ule i64 %20, 131072, !dbg !3363
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !3364

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !3365
  br label %return, !dbg !3365

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !3366
  %cmp57 = icmp ule i64 %21, 262144, !dbg !3368
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !3369

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !3370
  br label %return, !dbg !3370

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !3371
  %cmp60 = icmp ule i64 %22, 524288, !dbg !3373
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !3374

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !3375
  br label %return, !dbg !3375

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !3376
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !3378
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !3379

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !3380
  br label %return, !dbg !3380

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !3381
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !3383
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !3384

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !3385
  br label %return, !dbg !3385

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !3386, !range !2327, !noundef !383
  %tobool69 = trunc i8 %25 to i1, !dbg !3386
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !3388

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !3389

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #20, !dbg !3390, !srcloc !3393
  unreachable, !dbg !3390

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !3394

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !3395

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !3396

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !3398

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !3396

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #15, !dbg !3400, !srcloc !3402
  br label %do.end75, !dbg !3400

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !3396

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !3403
  br label %return, !dbg !3403

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !3404
  ret i32 %26, !dbg !3404
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !3405 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #13

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !3411 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3415, metadata !DIExpression()), !dbg !3417
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !3416, metadata !DIExpression()), !dbg !3418
  %0 = load i32, ptr %flags.addr, align 4, !dbg !3419
  %and = and i32 %0, 17, !dbg !3419
  %cmp = icmp eq i32 %and, 0, !dbg !3419
  %lnot = xor i1 %cmp, true, !dbg !3419
  %lnot1 = xor i1 %lnot, true, !dbg !3419
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3419
  %conv = sext i32 %lnot.ext to i64, !dbg !3419
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3419
  %tobool = icmp ne i64 %expval, 0, !dbg !3419
  br i1 %tobool, label %if.then, label %if.end, !dbg !3421

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3422
  br label %return, !dbg !3422

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !3423
  %and2 = and i32 %1, 1, !dbg !3425
  %tobool3 = icmp ne i32 %and2, 0, !dbg !3425
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !3426

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !3427
  br label %return, !dbg !3427

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !3428
  br label %return, !dbg !3428

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !3430
  ret i32 %2, !dbg !3430
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3431 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #12

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !3432 dso_local void @__compiletime_assert_204() #14

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { noredzone allocsize(1) }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!139, !140, !141, !142, !143, !144, !145, !146}
!llvm.ident = !{!147}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_badblocks_check205", scope: !2, file: !3, line: 125, type: !94, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF block/.badblocks.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22block/badblocks\22 -D KBUILD_BASENAME=\22badblocks\22 -D KBUILD_MODNAME=\22badblocks\22 -D __KBUILD_MODNAME=kmod_badblocks -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o block/badblocks.ll block/badblocks.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !93, globals: !106, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "block/badblocks.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4eae5b62b08e7183b08f92b4518fe676")
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
!93 = !{!94, !95, !99, !100, !103, !105}
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !96, line: 23, baseType: !97)
!96 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !98, line: 31, baseType: !99)
!98 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!99 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!102 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !104, line: 154, baseType: !7)
!104 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!105 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!106 = !{!0, !107, !109, !111, !113, !119, !121, !126, !128, !130, !132, !134}
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_badblocks_set206", scope: !2, file: !3, line: 314, type: !94, isLocal: true, isDefinition: true)
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_badblocks_clear207", scope: !2, file: !3, line: 422, type: !94, isLocal: true, isDefinition: true)
!111 = !DIGlobalVariableExpression(var: !112, expr: !DIExpression())
!112 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ack_all_badblocks208", scope: !2, file: !3, line: 454, type: !94, isLocal: true, isDefinition: true)
!113 = !DIGlobalVariableExpression(var: !114, expr: !DIExpression())
!114 = distinct !DIGlobalVariable(scope: null, file: !3, line: 491, type: !115, isLocal: true, isDefinition: true)
!115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 72, elements: !117)
!116 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!117 = !{!118}
!118 = !DISubrange(count: 9)
!119 = !DIGlobalVariableExpression(var: !120, expr: !DIExpression())
!120 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_badblocks_show209", scope: !2, file: !3, line: 503, type: !94, isLocal: true, isDefinition: true)
!121 = !DIGlobalVariableExpression(var: !122, expr: !DIExpression())
!122 = distinct !DIGlobalVariable(scope: null, file: !3, line: 522, type: !123, isLocal: true, isDefinition: true)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 80, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 10)
!126 = !DIGlobalVariableExpression(var: !127, expr: !DIExpression())
!127 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_badblocks_store210", scope: !2, file: !3, line: 540, type: !94, isLocal: true, isDefinition: true)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_badblocks_init211", scope: !2, file: !3, line: 577, type: !94, isLocal: true, isDefinition: true)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_devm_init_badblocks212", scope: !2, file: !3, line: 585, type: !94, isLocal: true, isDefinition: true)
!132 = !DIGlobalVariableExpression(var: !133, expr: !DIExpression())
!133 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_badblocks_exit213", scope: !2, file: !3, line: 601, type: !94, isLocal: true, isDefinition: true)
!134 = !DIGlobalVariableExpression(var: !135, expr: !DIExpression())
!135 = distinct !DIGlobalVariable(scope: null, file: !84, line: 480, type: !136, isLocal: true, isDefinition: true)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 168, elements: !137)
!137 = !{!138}
!138 = !DISubrange(count: 21)
!139 = !{i32 7, !"Dwarf Version", i32 5}
!140 = !{i32 2, !"Debug Info Version", i32 3}
!141 = !{i32 1, !"wchar_size", i32 2}
!142 = !{i32 8, !"cf-protection-branch", i32 1}
!143 = !{i32 4, !"function_return_thunk_extern", i32 1}
!144 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!145 = !{i32 1, !"Code Model", i32 2}
!146 = !{i32 1, !"override-stack-alignment", i32 8}
!147 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!148 = distinct !DISubprogram(name: "badblocks_check", scope: !3, file: !3, line: 53, type: !149, scopeLine: 55, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1640)
!149 = !DISubroutineType(types: !150)
!150 = !{!46, !151, !1637, !46, !1639, !1059}
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "badblocks", file: !153, line: 27, size: 512, elements: !154)
!153 = !DIFile(filename: "./include/linux/badblocks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1b5aed49af8b69bdb2af813162596680")
!154 = !{!155, !1621, !1622, !1623, !1624, !1625, !1626, !1636, !1638}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !152, file: !153, line: 28, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !158)
!158 = !{!159, !819, !820, !823, !824, !877, !1324, !1325, !1326, !1327, !1328, !1335, !1505, !1518, !1528, !1532, !1534, !1535, !1536, !1540, !1547, !1548, !1551, !1554, !1558, !1561, !1562, !1565, !1566, !1567, !1568, !1598, !1599, !1600, !1603, !1606, !1615, !1616, !1617, !1618, !1619, !1620}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !157, file: !26, line: 706, baseType: !160, size: 512)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !161, line: 64, size: 512, elements: !162)
!161 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!162 = !{!163, !166, !172, !174, !261, !690, !804, !814, !815, !816, !817, !818}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !160, file: !161, line: 65, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !160, file: !161, line: 66, baseType: !167, size: 128, offset: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !104, line: 190, size: 128, elements: !168)
!168 = !{!169, !171}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !167, file: !104, line: 191, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !167, file: !104, line: 191, baseType: !170, size: 64, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !160, file: !161, line: 67, baseType: !173, size: 64, offset: 192)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !160, file: !161, line: 68, baseType: !175, size: 64, offset: 256)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !161, line: 168, size: 768, elements: !177)
!177 = !{!178, !179, !220, !221}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !176, file: !161, line: 169, baseType: !167, size: 128)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !176, file: !161, line: 170, baseType: !180, size: 32, offset: 128)
!180 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !181, line: 29, baseType: !182)
!181 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !181, line: 17, size: 32, elements: !183)
!183 = !{!184}
!184 = !DIDerivedType(tag: DW_TAG_member, scope: !182, file: !181, line: 18, baseType: !185, size: 32)
!185 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !182, file: !181, line: 18, size: 32, elements: !186)
!186 = !{!187}
!187 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !185, file: !181, line: 19, baseType: !188, size: 32)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !189, line: 14, size: 32, elements: !190)
!189 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!190 = !{!191}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !188, file: !189, line: 15, baseType: !192, size: 32)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !193, line: 44, baseType: !194)
!193 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !193, line: 14, size: 32, elements: !195)
!195 = !{!196}
!196 = !DIDerivedType(tag: DW_TAG_member, scope: !194, file: !193, line: 15, baseType: !197, size: 32)
!197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !194, file: !193, line: 15, size: 32, elements: !198)
!198 = !{!199, !204, !212}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !197, file: !193, line: 16, baseType: !200, size: 32)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !104, line: 174, baseType: !201)
!201 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !104, line: 172, size: 32, elements: !202)
!202 = !{!203}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !201, file: !104, line: 173, baseType: !46, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_member, scope: !197, file: !193, line: 24, baseType: !205, size: 16)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !197, file: !193, line: 24, size: 16, elements: !206)
!206 = !{!207, !211}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !205, file: !193, line: 25, baseType: !208, size: 8)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !96, line: 17, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !98, line: 21, baseType: !210)
!210 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !205, file: !193, line: 26, baseType: !208, size: 8, offset: 8)
!212 = !DIDerivedType(tag: DW_TAG_member, scope: !197, file: !193, line: 28, baseType: !213, size: 32)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !197, file: !193, line: 28, size: 32, elements: !214)
!214 = !{!215, !219}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !213, file: !193, line: 29, baseType: !216, size: 16)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !96, line: 19, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !98, line: 24, baseType: !218)
!218 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !213, file: !193, line: 30, baseType: !216, size: 16, offset: 16)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !176, file: !161, line: 171, baseType: !160, size: 512, offset: 192)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !176, file: !161, line: 172, baseType: !222, size: 64, offset: 704)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !224)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !161, line: 133, size: 192, elements: !225)
!225 = !{!226, !233, !238}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !224, file: !161, line: 134, baseType: !227, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!46, !231}
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !224, file: !161, line: 135, baseType: !234, size: 64, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{!164, !231}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !224, file: !161, line: 136, baseType: !239, size: 64, offset: 128)
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!46, !231, !243}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !161, line: 125, size: 20736, elements: !245)
!245 = !{!246, !251, !255, !256, !260}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !244, file: !161, line: 126, baseType: !247, size: 192)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 192, elements: !249)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!249 = !{!250}
!250 = !DISubrange(count: 3)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !244, file: !161, line: 127, baseType: !252, size: 4096, offset: 192)
!252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 4096, elements: !253)
!253 = !{!254}
!254 = !DISubrange(count: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !244, file: !161, line: 128, baseType: !46, size: 32, offset: 4288)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !244, file: !161, line: 129, baseType: !257, size: 16384, offset: 4320)
!257 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 16384, elements: !258)
!258 = !{!259}
!259 = !DISubrange(count: 2048)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !244, file: !161, line: 130, baseType: !46, size: 32, offset: 20704)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !160, file: !161, line: 69, baseType: !262, size: 64, offset: 320)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !264)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !161, line: 116, size: 384, elements: !265)
!265 = !{!266, !270, !298, !637, !668, !672}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !264, file: !161, line: 117, baseType: !267, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{null, !173}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !264, file: !161, line: 118, baseType: !271, size: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !273)
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !274, line: 254, size: 128, elements: !275)
!274 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!275 = !{!276, !291}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !273, file: !274, line: 255, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!280, !173, !285, !248}
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !104, line: 66, baseType: !281)
!281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !282, line: 73, baseType: !283)
!282 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !282, line: 15, baseType: !284)
!284 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !274, line: 30, size: 128, elements: !287)
!287 = !{!288, !289}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !286, file: !274, line: 31, baseType: !164, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !286, file: !274, line: 32, baseType: !290, size: 16, offset: 64)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !104, line: 24, baseType: !218)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !273, file: !274, line: 256, baseType: !292, size: 64, offset: 64)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!280, !173, !285, !164, !295}
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !104, line: 61, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !282, line: 72, baseType: !297)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !282, line: 16, baseType: !105)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !264, file: !161, line: 119, baseType: !299, size: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !274, line: 84, size: 320, elements: !303)
!303 = !{!304, !305, !309, !633, !635}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !302, file: !274, line: 85, baseType: !164, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !302, file: !274, line: 86, baseType: !306, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!290, !173, !285, !46}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !302, file: !274, line: 88, baseType: !310, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!290, !173, !313, !46}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !274, line: 175, size: 512, elements: !315)
!315 = !{!316, !317, !318, !319, !326, !336, !337}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !314, file: !274, line: 176, baseType: !286, size: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !314, file: !274, line: 177, baseType: !295, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !314, file: !274, line: 178, baseType: !94, size: 64, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !314, file: !274, line: 179, baseType: !320, size: 64, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!323}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !325, line: 32, flags: DIFlagFwdDecl)
!325 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!326 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !314, file: !274, line: 180, baseType: !327, size: 64, offset: 320)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!280, !330, !173, !313, !248, !333, !295}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !332, line: 537, flags: DIFlagFwdDecl)
!332 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !104, line: 52, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !282, line: 88, baseType: !335)
!335 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !314, file: !274, line: 182, baseType: !327, size: 64, offset: 384)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !314, file: !274, line: 184, baseType: !338, size: 64, offset: 448)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!46, !330, !173, !313, !341}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !325, line: 625, size: 1344, elements: !343)
!343 = !{!344, !361, !581, !587, !594, !595, !600, !603, !615, !616, !619, !623, !624, !625, !626, !627, !631}
!344 = !DIDerivedType(tag: DW_TAG_member, scope: !342, file: !325, line: 628, baseType: !345, size: 128)
!345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !342, file: !325, line: 628, size: 128, elements: !346)
!346 = !{!347, !352}
!347 = !DIDerivedType(tag: DW_TAG_member, scope: !345, file: !325, line: 629, baseType: !348, size: 128)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !345, file: !325, line: 629, size: 128, elements: !349)
!349 = !{!350, !351}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !348, file: !325, line: 631, baseType: !105, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !348, file: !325, line: 632, baseType: !105, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !345, file: !325, line: 635, baseType: !353, size: 128, align: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !104, line: 232, size: 128, align: 64, elements: !354)
!354 = !{!355, !357}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !353, file: !104, line: 233, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !353, file: !104, line: 234, baseType: !358, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !356}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !342, file: !325, line: 639, baseType: !362, size: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !325, line: 733, size: 10240, elements: !364)
!364 = !{!365, !577}
!365 = !DIDerivedType(tag: DW_TAG_member, scope: !363, file: !325, line: 734, baseType: !366, size: 10240)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !363, file: !325, line: 734, size: 10240, elements: !367)
!367 = !{!368, !372, !386, !390, !391, !392, !393, !394, !395, !403, !404, !405, !411, !412, !421, !422, !423, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !470, !484, !487, !542, !543, !544, !547, !551, !552, !555, !556, !557, !564, !565}
!368 = !DIDerivedType(tag: DW_TAG_member, scope: !366, file: !325, line: 739, baseType: !369, size: 512, align: 512)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !366, file: !325, line: 739, size: 512, align: 512, elements: !370)
!370 = !{!371}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !369, file: !325, line: 747, baseType: !200, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !366, file: !325, line: 750, baseType: !373, size: 128, offset: 512)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !374, line: 218, size: 128, elements: !375)
!374 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!375 = !{!376, !384, !385}
!376 = !DIDerivedType(tag: DW_TAG_member, scope: !373, file: !374, line: 219, baseType: !377, size: 32)
!377 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !373, file: !374, line: 219, size: 32, elements: !378)
!378 = !{!379, !380}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !377, file: !374, line: 220, baseType: !180, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !377, file: !374, line: 221, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !374, line: 197, baseType: !382)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !374, line: 197, elements: !383)
!383 = !{}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !373, file: !374, line: 223, baseType: !7, size: 32, offset: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !373, file: !374, line: 224, baseType: !94, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !366, file: !325, line: 752, baseType: !387, size: 64, offset: 640)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{!105, !330, !105, !105, !105, !105}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !366, file: !325, line: 756, baseType: !105, size: 64, offset: 704)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !366, file: !325, line: 757, baseType: !105, size: 64, offset: 768)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !366, file: !325, line: 760, baseType: !105, size: 64, offset: 832)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !366, file: !325, line: 761, baseType: !105, size: 64, offset: 896)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !366, file: !325, line: 763, baseType: !105, size: 64, offset: 960)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !366, file: !325, line: 764, baseType: !396, size: 64, offset: 1024)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !332, line: 299, baseType: !398)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !332, line: 299, size: 64, elements: !399)
!399 = !{!400}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !398, file: !332, line: 299, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !402, line: 18, baseType: !105)
!402 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!403 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !366, file: !325, line: 773, baseType: !200, size: 32, offset: 1088)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !366, file: !325, line: 785, baseType: !200, size: 32, offset: 1120)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !366, file: !325, line: 795, baseType: !406, size: 64, offset: 1152)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !325, line: 726, size: 128, elements: !408)
!408 = !{!409, !410}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !407, file: !325, line: 727, baseType: !95, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !407, file: !325, line: 728, baseType: !46, size: 32, offset: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !366, file: !325, line: 801, baseType: !105, size: 64, offset: 1216)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !366, file: !325, line: 804, baseType: !413, size: 64, offset: 1280)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !414, line: 13, baseType: !415)
!414 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !104, line: 181, baseType: !416)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !104, line: 179, size: 64, elements: !417)
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !416, file: !104, line: 180, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !96, line: 22, baseType: !420)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !98, line: 30, baseType: !335)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !366, file: !325, line: 806, baseType: !46, size: 32, offset: 1344)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !366, file: !325, line: 808, baseType: !180, size: 32, offset: 1376)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !366, file: !325, line: 823, baseType: !424, size: 320, offset: 1408)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !425, line: 48, size: 320, elements: !426)
!425 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!426 = !{!427, !428, !429, !434, !436}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !424, file: !425, line: 49, baseType: !413, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !424, file: !425, line: 55, baseType: !413, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !424, file: !425, line: 57, baseType: !430, size: 32, offset: 128)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !431, line: 15, size: 32, elements: !432)
!431 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!432 = !{!433}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !430, file: !431, line: 20, baseType: !200, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !424, file: !425, line: 59, baseType: !435, size: 32, offset: 160)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !189, line: 23, baseType: !188)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !424, file: !425, line: 60, baseType: !167, size: 128, offset: 192)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !366, file: !325, line: 825, baseType: !167, size: 128, offset: 1728)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !366, file: !325, line: 845, baseType: !46, size: 32, offset: 1856)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !366, file: !325, line: 849, baseType: !105, size: 64, offset: 1920)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !366, file: !325, line: 850, baseType: !105, size: 64, offset: 1984)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !366, file: !325, line: 852, baseType: !105, size: 64, offset: 2048)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !366, file: !325, line: 853, baseType: !105, size: 64, offset: 2112)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !366, file: !325, line: 854, baseType: !415, size: 64, offset: 2176)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !366, file: !325, line: 855, baseType: !105, size: 64, offset: 2240)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !366, file: !325, line: 856, baseType: !105, size: 64, offset: 2304)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !366, file: !325, line: 857, baseType: !105, size: 64, offset: 2368)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !366, file: !325, line: 858, baseType: !105, size: 64, offset: 2432)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !366, file: !325, line: 865, baseType: !449, size: 32, offset: 2496)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !450, line: 69, baseType: !451)
!450 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !450, line: 64, size: 32, elements: !452)
!452 = !{!453}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !451, file: !450, line: 65, baseType: !7, size: 32)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !366, file: !325, line: 867, baseType: !180, size: 32, offset: 2528)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !366, file: !325, line: 869, baseType: !105, size: 64, offset: 2560)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !366, file: !325, line: 869, baseType: !105, size: 64, offset: 2624)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !366, file: !325, line: 869, baseType: !105, size: 64, offset: 2688)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !366, file: !325, line: 869, baseType: !105, size: 64, offset: 2752)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !366, file: !325, line: 870, baseType: !105, size: 64, offset: 2816)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !366, file: !325, line: 870, baseType: !105, size: 64, offset: 2880)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !366, file: !325, line: 870, baseType: !105, size: 64, offset: 2944)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !366, file: !325, line: 871, baseType: !105, size: 64, offset: 3008)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !366, file: !325, line: 871, baseType: !105, size: 64, offset: 3072)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !366, file: !325, line: 871, baseType: !105, size: 64, offset: 3136)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !366, file: !325, line: 871, baseType: !105, size: 64, offset: 3200)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !366, file: !325, line: 873, baseType: !467, size: 3328, offset: 3264)
!467 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 3328, elements: !468)
!468 = !{!469}
!469 = !DISubrange(count: 52)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !366, file: !325, line: 875, baseType: !471, size: 1280, offset: 6592)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !472, size: 1280, elements: !482)
!472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !473, line: 22, size: 320, elements: !474)
!473 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!474 = !{!475, !476, !477, !478}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !472, file: !473, line: 23, baseType: !435, size: 32)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !472, file: !473, line: 24, baseType: !419, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !472, file: !473, line: 26, baseType: !167, size: 128, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !472, file: !473, line: 28, baseType: !479, size: 64, offset: 256)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !96, line: 20, baseType: !481)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !98, line: 26, baseType: !46)
!482 = !{!483}
!483 = !DISubrange(count: 4)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !366, file: !325, line: 877, baseType: !485, size: 64, offset: 7872)
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !325, line: 877, flags: DIFlagFwdDecl)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !366, file: !325, line: 880, baseType: !488, size: 1088, offset: 7936)
!488 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !489, line: 72, baseType: !490)
!489 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !489, line: 23, size: 1088, elements: !491)
!491 = !{!492, !493, !494, !495, !496, !499, !500, !508, !509, !536, !537, !538}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !490, file: !489, line: 28, baseType: !95, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !490, file: !489, line: 38, baseType: !415, size: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !490, file: !489, line: 40, baseType: !105, size: 64, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !490, file: !489, line: 43, baseType: !424, size: 320, offset: 192)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !490, file: !489, line: 44, baseType: !497, size: 64, offset: 512)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !489, line: 44, flags: DIFlagFwdDecl)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !490, file: !489, line: 48, baseType: !105, size: 64, offset: 576)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !490, file: !489, line: 59, baseType: !501, size: 256, offset: 640)
!501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !502, line: 66, size: 256, elements: !503)
!502 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!503 = !{!504, !505, !506, !507}
!504 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !501, file: !502, line: 67, baseType: !413, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !501, file: !502, line: 68, baseType: !435, size: 32, offset: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !501, file: !502, line: 70, baseType: !430, size: 32, offset: 96)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !501, file: !502, line: 72, baseType: !167, size: 128, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !490, file: !489, line: 60, baseType: !94, size: 64, offset: 896)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !490, file: !489, line: 61, baseType: !510, size: 64, offset: 960)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !512)
!512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !513, line: 13, size: 1216, elements: !514)
!513 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!514 = !{!515, !516, !517, !518, !519, !520, !521, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !512, file: !513, line: 14, baseType: !94, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !512, file: !513, line: 15, baseType: !105, size: 64, offset: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !512, file: !513, line: 17, baseType: !105, size: 64, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !512, file: !513, line: 17, baseType: !105, size: 64, offset: 192)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !512, file: !513, line: 18, baseType: !105, size: 64, offset: 256)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !512, file: !513, line: 18, baseType: !105, size: 64, offset: 320)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !512, file: !513, line: 19, baseType: !522, size: 64, offset: 384)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !512, file: !513, line: 21, baseType: !284, size: 64, offset: 448)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !512, file: !513, line: 23, baseType: !284, size: 64, offset: 512)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !512, file: !513, line: 24, baseType: !284, size: 64, offset: 576)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !512, file: !513, line: 25, baseType: !284, size: 64, offset: 640)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !512, file: !513, line: 26, baseType: !284, size: 64, offset: 704)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !512, file: !513, line: 27, baseType: !284, size: 64, offset: 768)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !512, file: !513, line: 28, baseType: !284, size: 64, offset: 832)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !512, file: !513, line: 29, baseType: !284, size: 64, offset: 896)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !512, file: !513, line: 30, baseType: !284, size: 64, offset: 960)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !512, file: !513, line: 31, baseType: !284, size: 64, offset: 1024)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !512, file: !513, line: 32, baseType: !284, size: 64, offset: 1088)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !512, file: !513, line: 33, baseType: !284, size: 64, offset: 1152)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !490, file: !489, line: 63, baseType: !200, size: 32, offset: 1024)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !490, file: !489, line: 69, baseType: !216, size: 16, offset: 1056)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !490, file: !489, line: 70, baseType: !539, size: 16, offset: 1072)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !96, line: 18, baseType: !540)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !98, line: 23, baseType: !541)
!541 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !366, file: !325, line: 882, baseType: !105, size: 64, offset: 9024)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !366, file: !325, line: 885, baseType: !180, size: 32, offset: 9088)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !366, file: !325, line: 886, baseType: !545, size: 64, offset: 9152)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !325, line: 732, flags: DIFlagFwdDecl)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !366, file: !325, line: 901, baseType: !548, size: 64, offset: 9216)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !550, line: 18, flags: DIFlagFwdDecl)
!550 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!551 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !366, file: !325, line: 904, baseType: !330, size: 64, offset: 9280)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !366, file: !325, line: 906, baseType: !553, size: 64, offset: 9344)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !325, line: 906, flags: DIFlagFwdDecl)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !366, file: !325, line: 930, baseType: !200, size: 32, offset: 9408)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !366, file: !325, line: 933, baseType: !200, size: 32, offset: 9440)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !366, file: !325, line: 935, baseType: !558, size: 64, offset: 9472)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !559, line: 103, size: 64, elements: !560)
!559 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!560 = !{!561}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !558, file: !559, line: 104, baseType: !562, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !559, line: 101, flags: DIFlagFwdDecl)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !366, file: !325, line: 940, baseType: !413, size: 64, offset: 9536)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !366, file: !325, line: 942, baseType: !566, size: 256, offset: 9600)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !567, line: 98, size: 256, elements: !568)
!567 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!568 = !{!569, !570, !571}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !566, file: !567, line: 99, baseType: !413, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !566, file: !567, line: 100, baseType: !167, size: 128, offset: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !566, file: !567, line: 101, baseType: !572, size: 64, offset: 192)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !567, line: 21, baseType: !573)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DISubroutineType(types: !575)
!575 = !{null, !576}
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !363, file: !325, line: 986, baseType: !578, offset: 10240)
!578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, elements: !579)
!579 = !{!580}
!580 = !DISubrange(count: -1)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !342, file: !325, line: 640, baseType: !582, size: 64, offset: 192)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !332, line: 297, baseType: !583)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !332, line: 297, size: 64, elements: !584)
!584 = !{!585}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !583, file: !332, line: 297, baseType: !586, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !402, line: 19, baseType: !105)
!587 = !DIDerivedType(tag: DW_TAG_member, scope: !342, file: !325, line: 646, baseType: !588, size: 64, offset: 256)
!588 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !342, file: !325, line: 646, size: 64, elements: !589)
!589 = !{!590, !593}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !588, file: !325, line: 647, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !592)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !325, line: 542, baseType: !105)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !588, file: !325, line: 648, baseType: !592, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !342, file: !325, line: 666, baseType: !46, size: 32, offset: 320)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !342, file: !325, line: 667, baseType: !596, size: 64, offset: 384)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !325, line: 579, size: 320, elements: !598)
!598 = !{!599}
!599 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !597, file: !325, line: 580, baseType: !424, size: 320)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !342, file: !325, line: 670, baseType: !601, size: 8, offset: 448)
!601 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !104, line: 35, baseType: !602)
!602 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !342, file: !325, line: 681, baseType: !604, size: 256, offset: 512)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !342, file: !325, line: 678, size: 256, elements: !605)
!605 = !{!606, !614}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !604, file: !325, line: 679, baseType: !607, size: 192, align: 64)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !608, line: 5, size: 192, align: 64, elements: !609)
!608 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!609 = !{!610, !611, !613}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !607, file: !608, line: 6, baseType: !105, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !607, file: !608, line: 7, baseType: !612, size: 64, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !607, file: !608, line: 8, baseType: !612, size: 64, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !604, file: !325, line: 680, baseType: !105, size: 64, offset: 192)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !342, file: !325, line: 689, baseType: !167, size: 128, offset: 768)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !342, file: !325, line: 691, baseType: !617, size: 64, offset: 896)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !325, line: 691, flags: DIFlagFwdDecl)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !342, file: !325, line: 694, baseType: !620, size: 64, offset: 960)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !622)
!622 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !325, line: 694, flags: DIFlagFwdDecl)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !342, file: !325, line: 697, baseType: !105, size: 64, offset: 1024)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !342, file: !325, line: 699, baseType: !330, size: 64, offset: 1088)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !342, file: !325, line: 700, baseType: !94, size: 64, offset: 1152)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !342, file: !325, line: 711, baseType: !413, size: 64, offset: 1216)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !342, file: !325, line: 717, baseType: !628, size: 64, offset: 1280)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !630, line: 54, flags: DIFlagFwdDecl)
!630 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!631 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !342, file: !325, line: 722, baseType: !632, offset: 1344)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !325, line: 570, elements: !383)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !302, file: !274, line: 90, baseType: !634, size: 64, offset: 192)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !302, file: !274, line: 91, baseType: !636, size: 64, offset: 256)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !264, file: !161, line: 120, baseType: !638, size: 64, offset: 192)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!641, !231}
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !643)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !644)
!644 = !{!645, !646, !650, !654, !660, !664}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !643, file: !6, line: 40, baseType: !5, size: 32)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !643, file: !6, line: 41, baseType: !647, size: 64, offset: 64)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!601}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !643, file: !6, line: 42, baseType: !651, size: 64, offset: 128)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!94}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !643, file: !6, line: 43, baseType: !655, size: 64, offset: 192)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!522, !658}
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !643, file: !6, line: 44, baseType: !661, size: 64, offset: 256)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!522}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !643, file: !6, line: 45, baseType: !665, size: 64, offset: 320)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{null, !94}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !264, file: !161, line: 121, baseType: !669, size: 64, offset: 256)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{!522, !231}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !264, file: !161, line: 122, baseType: !673, size: 64, offset: 320)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{null, !231, !676, !683}
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !550, line: 23, baseType: !678)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !550, line: 21, size: 32, elements: !679)
!679 = !{!680}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !678, file: !550, line: 22, baseType: !681, size: 32)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !104, line: 37, baseType: !682)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !282, line: 49, baseType: !7)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !550, line: 28, baseType: !685)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !550, line: 26, size: 32, elements: !686)
!686 = !{!687}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !685, file: !550, line: 27, baseType: !688, size: 32)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !104, line: 38, baseType: !689)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !282, line: 50, baseType: !7)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !160, file: !161, line: 70, baseType: !691, size: 64, offset: 384)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !693, line: 190, size: 1152, elements: !694)
!693 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!694 = !{!695, !696, !697, !698, !699, !700, !701, !702, !796, !797, !798, !799, !800, !803}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !692, file: !693, line: 191, baseType: !200, size: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !692, file: !693, line: 192, baseType: !200, size: 32, offset: 32)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !692, file: !693, line: 202, baseType: !691, size: 64, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !692, file: !693, line: 203, baseType: !164, size: 64, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !692, file: !693, line: 205, baseType: !607, size: 192, align: 64, offset: 192)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !692, file: !693, line: 207, baseType: !522, size: 64, offset: 384)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !692, file: !693, line: 208, baseType: !7, size: 32, offset: 448)
!702 = !DIDerivedType(tag: DW_TAG_member, scope: !692, file: !693, line: 209, baseType: !703, size: 256, offset: 512)
!703 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !692, file: !693, line: 209, size: 256, elements: !704)
!704 = !{!705, !717, !721}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !703, file: !693, line: 210, baseType: !706, size: 256)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !693, line: 153, size: 256, elements: !707)
!707 = !{!708, !709, !713, !716}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !706, file: !693, line: 154, baseType: !105, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !706, file: !693, line: 156, baseType: !710, size: 64, offset: 64)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !608, line: 12, size: 64, elements: !711)
!711 = !{!712}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !710, file: !608, line: 13, baseType: !612, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !706, file: !693, line: 162, baseType: !714, size: 64, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !693, line: 162, flags: DIFlagFwdDecl)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !706, file: !693, line: 167, baseType: !105, size: 64, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !703, file: !693, line: 211, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !693, line: 170, size: 64, elements: !719)
!719 = !{!720}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !718, file: !693, line: 171, baseType: !691, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !703, file: !693, line: 212, baseType: !722, size: 256)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !693, line: 174, size: 256, elements: !723)
!723 = !{!724, !791, !794, !795}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !722, file: !693, line: 175, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !727)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !693, line: 271, size: 768, elements: !728)
!728 = !{!729, !751, !755, !759, !764, !768, !772, !776, !777, !778, !779, !787}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !727, file: !693, line: 276, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!46, !733}
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !693, line: 251, size: 1216, elements: !735)
!735 = !{!736, !737, !738, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750}
!736 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !734, file: !693, line: 253, baseType: !691, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !734, file: !693, line: 254, baseType: !330, size: 64, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !734, file: !693, line: 255, baseType: !739, size: 64, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !630, line: 66, flags: DIFlagFwdDecl)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !734, file: !693, line: 256, baseType: !94, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !734, file: !693, line: 259, baseType: !501, size: 256, offset: 256)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !734, file: !693, line: 260, baseType: !501, size: 256, offset: 512)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !734, file: !693, line: 261, baseType: !46, size: 32, offset: 768)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !734, file: !693, line: 262, baseType: !167, size: 128, offset: 832)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !734, file: !693, line: 263, baseType: !248, size: 64, offset: 960)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !734, file: !693, line: 265, baseType: !295, size: 64, offset: 1024)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !734, file: !693, line: 266, baseType: !601, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !734, file: !693, line: 267, baseType: !601, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !734, file: !693, line: 268, baseType: !620, size: 64, offset: 1152)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !727, file: !693, line: 277, baseType: !752, size: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{null, !733}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !727, file: !693, line: 290, baseType: !756, size: 64, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!46, !739, !94}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !727, file: !693, line: 292, baseType: !760, size: 64, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!94, !739, !763}
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !727, file: !693, line: 293, baseType: !765, size: 64, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!94, !739, !94, !763}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !727, file: !693, line: 294, baseType: !769, size: 64, offset: 320)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{null, !739, !94}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !727, file: !693, line: 296, baseType: !773, size: 64, offset: 384)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!280, !733, !248, !295, !333}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !727, file: !693, line: 306, baseType: !295, size: 64, offset: 448)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !727, file: !693, line: 313, baseType: !601, size: 8, offset: 512)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !727, file: !693, line: 314, baseType: !773, size: 64, offset: 576)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !727, file: !693, line: 317, baseType: !780, size: 64, offset: 640)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{!783, !733, !785}
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !784, line: 59, baseType: !7)
!784 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !693, line: 31, flags: DIFlagFwdDecl)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !727, file: !693, line: 320, baseType: !788, size: 64, offset: 704)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{!46, !733, !341}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !722, file: !693, line: 176, baseType: !792, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !693, line: 35, flags: DIFlagFwdDecl)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !722, file: !693, line: 177, baseType: !333, size: 64, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !722, file: !693, line: 178, baseType: !691, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !692, file: !693, line: 215, baseType: !94, size: 64, offset: 768)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !692, file: !693, line: 221, baseType: !95, size: 64, offset: 832)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !692, file: !693, line: 223, baseType: !218, size: 16, offset: 896)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !692, file: !693, line: 224, baseType: !290, size: 16, offset: 912)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !692, file: !693, line: 225, baseType: !801, size: 64, offset: 960)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !693, line: 36, flags: DIFlagFwdDecl)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !692, file: !693, line: 227, baseType: !353, size: 128, align: 64, offset: 1024)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !160, file: !161, line: 71, baseType: !805, size: 32, offset: 448)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !806, line: 19, size: 32, elements: !807)
!806 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!807 = !{!808}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !805, file: !806, line: 20, baseType: !809, size: 32)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !810, line: 113, baseType: !811)
!810 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !810, line: 111, size: 32, elements: !812)
!812 = !{!813}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !811, file: !810, line: 112, baseType: !200, size: 32)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !160, file: !161, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !160, file: !161, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !160, file: !161, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !160, file: !161, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !160, file: !161, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !157, file: !26, line: 707, baseType: !156, size: 64, offset: 512)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !157, file: !26, line: 709, baseType: !821, size: 64, offset: 576)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !157, file: !26, line: 711, baseType: !164, size: 64, offset: 640)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !157, file: !26, line: 712, baseType: !825, size: 64, offset: 704)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !827)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !828)
!828 = !{!829, !830, !831, !837, !842, !846}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !827, file: !26, line: 90, baseType: !164, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !827, file: !26, line: 91, baseType: !299, size: 64, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !827, file: !26, line: 92, baseType: !832, size: 64, offset: 128)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{!46, !835, !243}
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !827, file: !26, line: 93, baseType: !838, size: 64, offset: 192)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{!248, !835, !841, !676, !683}
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !827, file: !26, line: 95, baseType: !843, size: 64, offset: 256)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{null, !156}
!846 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !827, file: !26, line: 97, baseType: !847, size: 64, offset: 320)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !849)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !850)
!850 = !{!851, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !849, file: !38, line: 287, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!46, !156}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !849, file: !38, line: 288, baseType: !843, size: 64, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !849, file: !38, line: 289, baseType: !852, size: 64, offset: 128)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !849, file: !38, line: 290, baseType: !852, size: 64, offset: 192)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !849, file: !38, line: 291, baseType: !852, size: 64, offset: 256)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !849, file: !38, line: 292, baseType: !852, size: 64, offset: 320)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !849, file: !38, line: 293, baseType: !852, size: 64, offset: 384)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !849, file: !38, line: 294, baseType: !852, size: 64, offset: 448)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !849, file: !38, line: 295, baseType: !852, size: 64, offset: 512)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !849, file: !38, line: 296, baseType: !852, size: 64, offset: 576)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !849, file: !38, line: 297, baseType: !852, size: 64, offset: 640)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !849, file: !38, line: 298, baseType: !852, size: 64, offset: 704)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !849, file: !38, line: 299, baseType: !852, size: 64, offset: 768)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !849, file: !38, line: 300, baseType: !852, size: 64, offset: 832)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !849, file: !38, line: 301, baseType: !852, size: 64, offset: 896)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !849, file: !38, line: 302, baseType: !852, size: 64, offset: 960)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !849, file: !38, line: 303, baseType: !852, size: 64, offset: 1024)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !849, file: !38, line: 304, baseType: !852, size: 64, offset: 1088)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !849, file: !38, line: 305, baseType: !852, size: 64, offset: 1152)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !849, file: !38, line: 306, baseType: !852, size: 64, offset: 1216)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !849, file: !38, line: 307, baseType: !852, size: 64, offset: 1280)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !849, file: !38, line: 308, baseType: !852, size: 64, offset: 1344)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !849, file: !38, line: 309, baseType: !852, size: 64, offset: 1408)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !157, file: !26, line: 714, baseType: !878, size: 64, offset: 768)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !880)
!880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !881, line: 80, size: 1344, elements: !882)
!881 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!882 = !{!883, !884, !885, !886, !887, !888, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1323}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !880, file: !881, line: 81, baseType: !164, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !880, file: !881, line: 82, baseType: !164, size: 64, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !880, file: !881, line: 83, baseType: !299, size: 64, offset: 128)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !880, file: !881, line: 84, baseType: !299, size: 64, offset: 192)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !880, file: !881, line: 85, baseType: !299, size: 64, offset: 256)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !880, file: !881, line: 87, baseType: !889, size: 64, offset: 320)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DISubroutineType(types: !891)
!891 = !{!46, !156, !892}
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !894)
!894 = !{!895, !896, !897, !1275, !1276, !1277, !1278, !1282, !1286, !1287, !1288, !1289, !1290, !1298, !1299, !1300, !1301, !1302, !1303}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !893, file: !20, line: 97, baseType: !164, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !893, file: !20, line: 98, baseType: !878, size: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !893, file: !20, line: 100, baseType: !898, size: 64, offset: 128)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !900)
!900 = !{!901, !902, !903, !907, !928, !954, !955, !956, !957, !961, !964, !965, !966, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1026, !1029, !1033, !1053, !1071, !1072, !1073, !1074, !1083, !1107, !1108, !1111, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1125, !1126, !1233, !1241, !1242, !1243, !1245, !1249, !1250, !1254, !1255, !1256, !1257, !1259, !1260, !1261, !1268, !1269, !1270, !1274}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !899, file: !13, line: 403, baseType: !12, size: 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !899, file: !13, line: 406, baseType: !167, size: 128, offset: 64)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !899, file: !13, line: 409, baseType: !904, size: 448, offset: 192)
!904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !116, size: 448, elements: !905)
!905 = !{!906}
!906 = !DISubrange(count: 56)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !899, file: !13, line: 417, baseType: !908, size: 768, offset: 640)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !909)
!909 = !{!910, !911, !912, !913, !916}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !908, file: !13, line: 46, baseType: !160, size: 512)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !908, file: !13, line: 47, baseType: !898, size: 64, offset: 512)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !908, file: !13, line: 48, baseType: !173, size: 64, offset: 576)
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
!926 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !923, file: !924, line: 44, baseType: !435, size: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !923, file: !924, line: 45, baseType: !167, size: 128, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !899, file: !13, line: 418, baseType: !929, size: 64, offset: 1408)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !931)
!931 = !{!932, !933, !938, !942, !946, !950}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !930, file: !13, line: 54, baseType: !286, size: 128)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !930, file: !13, line: 55, baseType: !934, size: 64, offset: 128)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DISubroutineType(types: !936)
!936 = !{!280, !929, !937, !248}
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !930, file: !13, line: 57, baseType: !939, size: 64, offset: 192)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DISubroutineType(types: !941)
!941 = !{!280, !929, !937, !164, !295}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !930, file: !13, line: 59, baseType: !943, size: 64, offset: 256)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DISubroutineType(types: !945)
!945 = !{null, !898, !164}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !930, file: !13, line: 60, baseType: !947, size: 64, offset: 320)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DISubroutineType(types: !949)
!949 = !{!46, !898}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !930, file: !13, line: 61, baseType: !951, size: 64, offset: 384)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{null, !898}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !899, file: !13, line: 419, baseType: !164, size: 64, offset: 1472)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !899, file: !13, line: 420, baseType: !164, size: 64, offset: 1536)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !899, file: !13, line: 421, baseType: !173, size: 64, offset: 1600)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !899, file: !13, line: 424, baseType: !958, size: 64, offset: 1664)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !960)
!960 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !899, file: !13, line: 425, baseType: !962, size: 64, offset: 1728)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !480)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !899, file: !13, line: 426, baseType: !7, size: 32, offset: 1792)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !899, file: !13, line: 435, baseType: !501, size: 256, offset: 1856)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !899, file: !13, line: 437, baseType: !967, size: 64, offset: 2112)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !969, line: 69, size: 320, elements: !970)
!969 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!970 = !{!971, !972, !973, !990, !992, !996, !997}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !968, file: !969, line: 70, baseType: !164, size: 64)
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
!982 = !{!46, !164, !983}
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !968)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !976, file: !969, line: 53, baseType: !986, size: 64, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DISubroutineType(types: !988)
!988 = !{!46, !248, !983}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !976, file: !969, line: 55, baseType: !665, size: 64, offset: 192)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !968, file: !969, line: 73, baseType: !991, size: 16, offset: 192)
!991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !968, file: !969, line: 74, baseType: !993, size: 8, offset: 208)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !96, line: 16, baseType: !994)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !98, line: 20, baseType: !995)
!995 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !968, file: !969, line: 75, baseType: !208, size: 8, offset: 216)
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
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1004, file: !969, line: 88, baseType: !248, size: 64, offset: 64)
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
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !899, file: !13, line: 444, baseType: !601, size: 8, offset: 2368)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !899, file: !13, line: 451, baseType: !601, size: 8, offset: 2376)
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
!1048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !607, size: 384, align: 64, elements: !1049)
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
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1062, file: !1063, line: 60, baseType: !539, size: 16)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1062, file: !1063, line: 61, baseType: !539, size: 16, offset: 16)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1062, file: !1063, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1062, file: !1063, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1062, file: !1063, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1062, file: !1063, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !899, file: !13, line: 465, baseType: !105, size: 64, offset: 6784)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !899, file: !13, line: 469, baseType: !7, size: 32, offset: 6848)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !899, file: !13, line: 470, baseType: !167, size: 128, offset: 6912)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !899, file: !13, line: 471, baseType: !1075, size: 64, offset: 7040)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1077, line: 33, size: 96, elements: !1078)
!1077 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1078 = !{!1079, !1080, !1081, !1082}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1076, file: !1077, line: 37, baseType: !46, size: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1076, file: !1077, line: 43, baseType: !46, size: 32, offset: 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1076, file: !1077, line: 45, baseType: !218, size: 16, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1076, file: !1077, line: 47, baseType: !218, size: 16, offset: 80)
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
!1095 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !98, line: 27, baseType: !7)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1091, file: !1090, line: 199, baseType: !210, size: 8, offset: 32)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1091, file: !1090, line: 200, baseType: !210, size: 8, offset: 40)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1091, file: !1090, line: 201, baseType: !1099, size: 16, offset: 48)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1090, line: 17, baseType: !217)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1091, file: !1090, line: 202, baseType: !1101, size: 64, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1090, line: 16, baseType: !97)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1091, file: !1090, line: 203, baseType: !1103, size: 64, offset: 128)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1090, line: 22, baseType: !97)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1085, file: !13, line: 380, baseType: !7, size: 32, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1085, file: !13, line: 381, baseType: !248, size: 64, offset: 128)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1085, file: !13, line: 382, baseType: !248, size: 64, offset: 192)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !899, file: !13, line: 477, baseType: !1085, size: 256, offset: 7168)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !899, file: !13, line: 480, baseType: !1109, size: 64, offset: 7424)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !899, file: !13, line: 483, baseType: !1112, size: 64, offset: 7488)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !899, file: !13, line: 488, baseType: !248, size: 64, offset: 7552)
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
!1138 = !DICompositeType(tag: DW_TAG_array_type, baseType: !413, size: 128, elements: !1049)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1135, file: !1130, line: 27, baseType: !1138, size: 128, offset: 128)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1135, file: !1130, line: 28, baseType: !46, size: 32, offset: 256)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1135, file: !1130, line: 31, baseType: !180, size: 32, align: 512, offset: 512)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1135, file: !1130, line: 32, baseType: !1143, size: 960, offset: 576)
!1143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1144, line: 206, size: 960, elements: !1145)
!1144 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1145 = !{!1146, !1147, !1150, !1152, !1153, !1155}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1143, file: !1144, line: 207, baseType: !356, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1143, file: !1144, line: 208, baseType: !1148, size: 256, offset: 64)
!1148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1149, size: 256, elements: !482)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1143, file: !1144, line: 209, baseType: !1151, size: 256, offset: 320)
!1151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 256, elements: !482)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1143, file: !1144, line: 213, baseType: !284, size: 64, offset: 576)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1143, file: !1144, line: 215, baseType: !1154, size: 256, offset: 640)
!1154 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 256, elements: !482)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1143, file: !1144, line: 216, baseType: !208, size: 8, offset: 896)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1135, file: !1130, line: 33, baseType: !105, size: 64, offset: 1536)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1135, file: !1130, line: 34, baseType: !105, size: 64, offset: 1600)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1135, file: !1130, line: 35, baseType: !601, size: 8, offset: 1664)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1135, file: !1130, line: 36, baseType: !1160, size: 320, offset: 1728)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1161, line: 11, size: 320, elements: !1162)
!1161 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1162 = !{!1163, !1170, !1171, !1176}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1160, file: !1161, line: 16, baseType: !1164, size: 128)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !104, line: 198, size: 128, elements: !1165)
!1165 = !{!1166, !1168}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1164, file: !104, line: 199, baseType: !1167, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1164, file: !104, line: 199, baseType: !1169, size: 64, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1160, file: !1161, line: 17, baseType: !105, size: 64, offset: 128)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1160, file: !1161, line: 18, baseType: !1172, size: 64, offset: 192)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{null, !1175}
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1160, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1160, file: !1161, line: 19, baseType: !1177, size: 32, offset: 256)
!1177 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !96, line: 21, baseType: !1095)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1135, file: !1130, line: 37, baseType: !566, size: 256, offset: 2048)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1135, file: !1130, line: 38, baseType: !353, size: 128, align: 64, offset: 2304)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1135, file: !1130, line: 39, baseType: !1181, size: 64, offset: 2432)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1130, line: 49, size: 768, elements: !1183)
!1183 = !{!1184, !1185, !1186, !1187, !1188, !1189, !1190}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1182, file: !1130, line: 50, baseType: !180, size: 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1182, file: !1130, line: 51, baseType: !1151, size: 256, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1182, file: !1130, line: 53, baseType: !1151, size: 256, offset: 320)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1182, file: !1130, line: 54, baseType: !105, size: 64, offset: 576)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1182, file: !1130, line: 55, baseType: !1181, size: 64, offset: 640)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1182, file: !1130, line: 56, baseType: !46, size: 32, offset: 704)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1182, file: !1130, line: 57, baseType: !46, size: 32, offset: 736)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1135, file: !1130, line: 40, baseType: !105, size: 64, offset: 2496)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1135, file: !1130, line: 42, baseType: !46, size: 32, offset: 2560)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1135, file: !1130, line: 43, baseType: !1128, size: 64, offset: 2624)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1129, file: !1130, line: 99, baseType: !1195, offset: 128)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1196, line: 211, elements: !383)
!1196 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1129, file: !1130, line: 100, baseType: !1198, size: 64, offset: 128)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1130, line: 63, size: 3008, elements: !1200)
!1200 = !{!1201, !1202, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1232}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1199, file: !1130, line: 64, baseType: !1181, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1199, file: !1130, line: 65, baseType: !1203, size: 192, offset: 64)
!1203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1181, size: 192, elements: !249)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1199, file: !1130, line: 67, baseType: !46, size: 32, offset: 256)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1199, file: !1130, line: 68, baseType: !501, size: 256, offset: 320)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1199, file: !1130, line: 69, baseType: !180, size: 32, offset: 576)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1199, file: !1130, line: 70, baseType: !501, size: 256, offset: 640)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1199, file: !1130, line: 71, baseType: !105, size: 64, offset: 896)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1199, file: !1130, line: 72, baseType: !105, size: 64, offset: 960)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1199, file: !1130, line: 73, baseType: !105, size: 64, offset: 1024)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1199, file: !1130, line: 74, baseType: !105, size: 64, offset: 1088)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1199, file: !1130, line: 75, baseType: !105, size: 64, offset: 1152)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1199, file: !1130, line: 76, baseType: !105, size: 64, offset: 1216)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1199, file: !1130, line: 77, baseType: !105, size: 64, offset: 1280)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1199, file: !1130, line: 78, baseType: !105, size: 64, offset: 1344)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1199, file: !1130, line: 79, baseType: !601, size: 8, offset: 1408)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1199, file: !1130, line: 80, baseType: !105, size: 64, offset: 1472)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1199, file: !1130, line: 81, baseType: !501, size: 256, offset: 1536)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1199, file: !1130, line: 82, baseType: !918, size: 256, offset: 1792)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1199, file: !1130, line: 84, baseType: !200, size: 32, offset: 2048)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1199, file: !1130, line: 87, baseType: !105, size: 64, offset: 2112)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1199, file: !1130, line: 88, baseType: !105, size: 64, offset: 2176)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1199, file: !1130, line: 89, baseType: !1224, size: 704, offset: 2240)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !567, line: 111, size: 704, elements: !1225)
!1225 = !{!1226, !1227, !1228, !1231}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1224, file: !567, line: 112, baseType: !566, size: 256)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1224, file: !567, line: 113, baseType: !1160, size: 320, offset: 256)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1224, file: !567, line: 116, baseType: !1229, size: 64, offset: 576)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !567, line: 18, flags: DIFlagFwdDecl)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1224, file: !567, line: 117, baseType: !46, size: 32, offset: 640)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1199, file: !1130, line: 90, baseType: !1128, size: 64, offset: 2944)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !899, file: !13, line: 515, baseType: !1234, size: 64, offset: 8064)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1235, size: 64)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1236, line: 117, size: 128, elements: !1237)
!1236 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1237 = !{!1238, !1239, !1240}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1235, file: !1236, line: 118, baseType: !480, size: 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1235, file: !1236, line: 119, baseType: !480, size: 32, offset: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1235, file: !1236, line: 120, baseType: !284, size: 64, offset: 64)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !899, file: !13, line: 516, baseType: !7, size: 32, offset: 8128)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !899, file: !13, line: 519, baseType: !7, size: 32, offset: 8160)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !899, file: !13, line: 520, baseType: !1244, size: 64, offset: 8192)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
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
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !899, file: !13, line: 536, baseType: !7, size: 32, offset: 8704)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !899, file: !13, line: 539, baseType: !46, size: 32, offset: 8736)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !899, file: !13, line: 540, baseType: !1262, size: 64, offset: 8768)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1264, line: 32, size: 64, elements: !1265)
!1264 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1265 = !{!1266, !1267}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1263, file: !1264, line: 33, baseType: !480, size: 32)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1263, file: !1264, line: 34, baseType: !480, size: 32, offset: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !899, file: !13, line: 563, baseType: !167, size: 128, offset: 8832)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !899, file: !13, line: 565, baseType: !167, size: 128, offset: 8960)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !899, file: !13, line: 568, baseType: !1271, size: 64, offset: 9088)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DISubroutineType(types: !1273)
!1273 = !{null}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !899, file: !13, line: 570, baseType: !200, size: 32, offset: 9152)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !893, file: !20, line: 101, baseType: !164, size: 64, offset: 192)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !893, file: !20, line: 103, baseType: !601, size: 8, offset: 256)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !893, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !893, file: !20, line: 106, baseType: !1279, size: 64, offset: 320)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1281)
!1281 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !20, line: 106, flags: DIFlagFwdDecl)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !893, file: !20, line: 107, baseType: !1283, size: 64, offset: 384)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1285)
!1285 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !20, line: 107, flags: DIFlagFwdDecl)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !893, file: !20, line: 109, baseType: !852, size: 64, offset: 448)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !893, file: !20, line: 110, baseType: !843, size: 64, offset: 512)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !893, file: !20, line: 111, baseType: !852, size: 64, offset: 576)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !893, file: !20, line: 112, baseType: !843, size: 64, offset: 640)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !893, file: !20, line: 113, baseType: !1291, size: 64, offset: 704)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!46, !156, !1294}
!1294 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1295)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1296)
!1296 = !{!1297}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1295, file: !38, line: 59, baseType: !46, size: 32)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !893, file: !20, line: 114, baseType: !852, size: 64, offset: 768)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !893, file: !20, line: 115, baseType: !299, size: 64, offset: 832)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !893, file: !20, line: 116, baseType: !299, size: 64, offset: 896)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !893, file: !20, line: 118, baseType: !847, size: 64, offset: 960)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !893, file: !20, line: 119, baseType: !843, size: 64, offset: 1024)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !893, file: !20, line: 121, baseType: !1304, size: 64, offset: 1088)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !880, file: !881, line: 88, baseType: !832, size: 64, offset: 384)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !880, file: !881, line: 89, baseType: !852, size: 64, offset: 448)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !880, file: !881, line: 90, baseType: !843, size: 64, offset: 512)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !880, file: !881, line: 91, baseType: !843, size: 64, offset: 576)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !880, file: !881, line: 92, baseType: !843, size: 64, offset: 640)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !880, file: !881, line: 94, baseType: !852, size: 64, offset: 704)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !880, file: !881, line: 95, baseType: !852, size: 64, offset: 768)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !880, file: !881, line: 97, baseType: !1291, size: 64, offset: 832)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !880, file: !881, line: 98, baseType: !852, size: 64, offset: 896)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !880, file: !881, line: 100, baseType: !852, size: 64, offset: 960)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !880, file: !881, line: 102, baseType: !852, size: 64, offset: 1024)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !880, file: !881, line: 103, baseType: !843, size: 64, offset: 1088)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !880, file: !881, line: 105, baseType: !847, size: 64, offset: 1152)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !880, file: !881, line: 107, baseType: !1320, size: 64, offset: 1216)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1322)
!1322 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !881, line: 107, flags: DIFlagFwdDecl)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !880, file: !881, line: 109, baseType: !601, size: 8, offset: 1280)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !157, file: !26, line: 715, baseType: !892, size: 64, offset: 832)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !157, file: !26, line: 717, baseType: !94, size: 64, offset: 896)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !157, file: !26, line: 719, baseType: !94, size: 64, offset: 960)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !157, file: !26, line: 721, baseType: !501, size: 256, offset: 1024)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !157, file: !26, line: 725, baseType: !1329, size: 448, offset: 1280)
!1329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1330)
!1330 = !{!1331, !1332, !1333, !1334}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1329, file: !26, line: 518, baseType: !167, size: 128)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1329, file: !26, line: 519, baseType: !167, size: 128, offset: 128)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1329, file: !26, line: 520, baseType: !167, size: 128, offset: 256)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1329, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !157, file: !26, line: 726, baseType: !1336, size: 2496, offset: 1728)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1337)
!1337 = !{!1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1382, !1383, !1384, !1385, !1386, !1387, !1458, !1459, !1460, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1498, !1502}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1336, file: !38, line: 664, baseType: !1294, size: 32)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1336, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1336, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1336, file: !38, line: 667, baseType: !601, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1336, file: !38, line: 668, baseType: !601, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1336, file: !38, line: 669, baseType: !601, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1336, file: !38, line: 670, baseType: !601, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1336, file: !38, line: 671, baseType: !601, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1336, file: !38, line: 672, baseType: !601, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1336, file: !38, line: 673, baseType: !601, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1336, file: !38, line: 674, baseType: !601, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1336, file: !38, line: 675, baseType: !1177, size: 32, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1336, file: !38, line: 676, baseType: !180, size: 32, offset: 96)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1336, file: !38, line: 678, baseType: !167, size: 128, offset: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1336, file: !38, line: 679, baseType: !918, size: 256, offset: 256)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1336, file: !38, line: 680, baseType: !1354, size: 64, offset: 512)
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1355, size: 64)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1356, line: 43, size: 1536, elements: !1357)
!1356 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1357 = !{!1358, !1359, !1360, !1361, !1362, !1365, !1366, !1367, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1355, file: !1356, line: 44, baseType: !164, size: 64)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1355, file: !1356, line: 45, baseType: !46, size: 32, offset: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1355, file: !1356, line: 46, baseType: !167, size: 128, offset: 128)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1355, file: !1356, line: 47, baseType: !180, size: 32, offset: 256)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1355, file: !1356, line: 48, baseType: !1363, size: 64, offset: 320)
!1363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1364, size: 64)
!1364 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1355, file: !1356, line: 49, baseType: !1160, size: 320, offset: 384)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1355, file: !1356, line: 50, baseType: !105, size: 64, offset: 704)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1355, file: !1356, line: 51, baseType: !1368, size: 64, offset: 768)
!1368 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1369, line: 29, baseType: !419)
!1369 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1355, file: !1356, line: 52, baseType: !1368, size: 64, offset: 832)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1355, file: !1356, line: 53, baseType: !1368, size: 64, offset: 896)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1355, file: !1356, line: 54, baseType: !1368, size: 64, offset: 960)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1355, file: !1356, line: 55, baseType: !1368, size: 64, offset: 1024)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1355, file: !1356, line: 56, baseType: !105, size: 64, offset: 1088)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1355, file: !1356, line: 57, baseType: !105, size: 64, offset: 1152)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1355, file: !1356, line: 58, baseType: !105, size: 64, offset: 1216)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1355, file: !1356, line: 59, baseType: !105, size: 64, offset: 1280)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1355, file: !1356, line: 60, baseType: !105, size: 64, offset: 1344)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1355, file: !1356, line: 61, baseType: !156, size: 64, offset: 1408)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1355, file: !1356, line: 62, baseType: !601, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1355, file: !1356, line: 63, baseType: !601, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1336, file: !38, line: 681, baseType: !601, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1336, file: !38, line: 682, baseType: !601, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1336, file: !38, line: 683, baseType: !601, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1336, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1336, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1336, file: !38, line: 690, baseType: !1388, size: 512, offset: 640)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1389)
!1389 = !{!1390, !1396, !1397, !1402, !1454, !1455, !1456, !1457}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1388, file: !33, line: 119, baseType: !1391, size: 256)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1392, line: 9, size: 256, elements: !1393)
!1392 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1393 = !{!1394, !1395}
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1391, file: !1392, line: 10, baseType: !607, size: 192, align: 64)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1391, file: !1392, line: 11, baseType: !1368, size: 64, offset: 192)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1388, file: !33, line: 120, baseType: !1368, size: 64, offset: 256)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1388, file: !33, line: 121, baseType: !1398, size: 64, offset: 320)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DISubroutineType(types: !1400)
!1400 = !{!32, !1401}
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1388, file: !33, line: 122, baseType: !1403, size: 64, offset: 384)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1405)
!1405 = !{!1406, !1431, !1432, !1435, !1440, !1441, !1449, !1453}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1404, file: !33, line: 160, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1409)
!1409 = !{!1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1408, file: !33, line: 216, baseType: !435, size: 32)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1408, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1408, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1408, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1408, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1408, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1408, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1408, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1408, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1408, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1408, file: !33, line: 227, baseType: !218, size: 16, offset: 192)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1408, file: !33, line: 228, baseType: !218, size: 16, offset: 208)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1408, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1408, file: !33, line: 235, baseType: !1368, size: 64, offset: 256)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1408, file: !33, line: 236, baseType: !1401, size: 64, offset: 320)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1408, file: !33, line: 237, baseType: !1368, size: 64, offset: 384)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1408, file: !33, line: 238, baseType: !1401, size: 64, offset: 448)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1408, file: !33, line: 239, baseType: !1428, size: 4096, align: 512, offset: 512)
!1428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1404, size: 4096, align: 512, elements: !1429)
!1429 = !{!1430}
!1430 = !DISubrange(count: 8)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1404, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1404, file: !33, line: 162, baseType: !1433, size: 32, offset: 96)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !104, line: 32, baseType: !1434)
!1434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !282, line: 96, baseType: !46)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1404, file: !33, line: 163, baseType: !1436, size: 32, offset: 128)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !450, line: 274, baseType: !1437)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !450, line: 274, size: 32, elements: !1438)
!1438 = !{!1439}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1437, file: !450, line: 274, baseType: !449, size: 32)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1404, file: !33, line: 164, baseType: !1401, size: 64, offset: 192)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1404, file: !33, line: 165, baseType: !1442, size: 128, offset: 256)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1392, line: 14, size: 128, elements: !1443)
!1443 = !{!1444}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1442, file: !1392, line: 15, baseType: !1445, size: 128)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !608, line: 26, size: 128, elements: !1446)
!1446 = !{!1447, !1448}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1445, file: !608, line: 27, baseType: !710, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1445, file: !608, line: 28, baseType: !612, size: 64, offset: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1404, file: !33, line: 166, baseType: !1450, size: 64, offset: 384)
!1450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1451, size: 64)
!1451 = !DISubroutineType(types: !1452)
!1452 = !{!1368}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1404, file: !33, line: 167, baseType: !1368, size: 64, offset: 448)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1388, file: !33, line: 123, baseType: !208, size: 8, offset: 448)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1388, file: !33, line: 124, baseType: !208, size: 8, offset: 456)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1388, file: !33, line: 125, baseType: !208, size: 8, offset: 464)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1388, file: !33, line: 126, baseType: !208, size: 8, offset: 472)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1336, file: !38, line: 691, baseType: !95, size: 64, offset: 1152)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1336, file: !38, line: 692, baseType: !566, size: 256, offset: 1216)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1336, file: !38, line: 693, baseType: !1461, size: 192, offset: 1472)
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1462, line: 41, baseType: !1463)
!1462 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1462, line: 37, size: 192, elements: !1464)
!1464 = !{!1465, !1466}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1463, file: !1462, line: 38, baseType: !180, size: 32)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1463, file: !1462, line: 39, baseType: !167, size: 128, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1336, file: !38, line: 694, baseType: !1363, size: 64, offset: 1664)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1336, file: !38, line: 695, baseType: !200, size: 32, offset: 1728)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1336, file: !38, line: 696, baseType: !200, size: 32, offset: 1760)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1336, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1336, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1336, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1336, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1336, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1336, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1336, file: !38, line: 703, baseType: !601, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1336, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1336, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1336, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1336, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1336, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1336, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1336, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1336, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1336, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1336, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1336, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1336, file: !38, line: 715, baseType: !95, size: 64, offset: 2048)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1336, file: !38, line: 716, baseType: !95, size: 64, offset: 2112)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1336, file: !38, line: 717, baseType: !95, size: 64, offset: 2176)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1336, file: !38, line: 718, baseType: !95, size: 64, offset: 2240)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1336, file: !38, line: 720, baseType: !1493, size: 64, offset: 2304)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1495)
!1495 = !{!1496, !1497}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1494, file: !38, line: 633, baseType: !180, size: 32)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1494, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1336, file: !38, line: 721, baseType: !1499, size: 64, offset: 2368)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DISubroutineType(types: !1501)
!1501 = !{null, !156, !480}
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1336, file: !38, line: 722, baseType: !1503, size: 64, offset: 2432)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !38, line: 722, flags: DIFlagFwdDecl)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !157, file: !26, line: 727, baseType: !1506, size: 64, offset: 4224)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1508)
!1508 = !{!1509, !1510, !1511, !1515, !1516, !1517}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1507, file: !38, line: 743, baseType: !849, size: 1472)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1507, file: !38, line: 744, baseType: !852, size: 64, offset: 1472)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1507, file: !38, line: 745, baseType: !1512, size: 64, offset: 1536)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DISubroutineType(types: !1514)
!1514 = !{null, !156, !601}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1507, file: !38, line: 746, baseType: !852, size: 64, offset: 1600)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1507, file: !38, line: 747, baseType: !843, size: 64, offset: 1664)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1507, file: !38, line: 748, baseType: !843, size: 64, offset: 1728)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !157, file: !26, line: 736, baseType: !1519, size: 128, offset: 4288)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1520)
!1520 = !{!1521, !1525}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1519, file: !26, line: 531, baseType: !1522, size: 64)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1524, line: 13, flags: DIFlagFwdDecl)
!1524 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1519, file: !26, line: 532, baseType: !1526, size: 64, offset: 64)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !157, file: !26, line: 738, baseType: !1529, size: 64, offset: 4416)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1531)
!1531 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !157, file: !26, line: 740, baseType: !1533, size: 64, offset: 4480)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !157, file: !26, line: 741, baseType: !95, size: 64, offset: 4544)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !157, file: !26, line: 746, baseType: !95, size: 64, offset: 4608)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !157, file: !26, line: 747, baseType: !1537, size: 64, offset: 4672)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1539)
!1539 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !157, file: !26, line: 749, baseType: !1541, size: 64, offset: 4736)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1543)
!1543 = !{!1544, !1545, !1546}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1542, file: !26, line: 433, baseType: !7, size: 32)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1542, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1542, file: !26, line: 435, baseType: !105, size: 64, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !157, file: !26, line: 751, baseType: !167, size: 128, offset: 4800)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !157, file: !26, line: 762, baseType: !1549, size: 64, offset: 4928)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !157, file: !26, line: 770, baseType: !1552, offset: 4992)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1553, line: 5, elements: !383)
!1553 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !157, file: !26, line: 772, baseType: !1555, size: 64, offset: 4992)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1557, line: 18, flags: DIFlagFwdDecl)
!1557 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !157, file: !26, line: 773, baseType: !1559, size: 64, offset: 5056)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !881, line: 22, flags: DIFlagFwdDecl)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !157, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !157, file: !26, line: 778, baseType: !1563, size: 32, offset: 5152)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !104, line: 21, baseType: !1564)
!1564 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !104, line: 18, baseType: !1177)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !157, file: !26, line: 779, baseType: !1177, size: 32, offset: 5184)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !157, file: !26, line: 781, baseType: !180, size: 32, offset: 5216)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !157, file: !26, line: 782, baseType: !167, size: 128, offset: 5248)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !157, file: !26, line: 784, baseType: !1569, size: 64, offset: 5376)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1571)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1572, line: 52, size: 768, elements: !1573)
!1572 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1573 = !{!1574, !1575, !1576, !1577, !1578, !1582, !1586, !1587, !1588, !1589, !1593, !1597}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1571, file: !1572, line: 53, baseType: !164, size: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1571, file: !1572, line: 55, baseType: !299, size: 64, offset: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1571, file: !1572, line: 56, baseType: !299, size: 64, offset: 128)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1571, file: !1572, line: 58, baseType: !832, size: 64, offset: 192)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1571, file: !1572, line: 59, baseType: !1579, size: 64, offset: 256)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!248, !835, !841}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1571, file: !1572, line: 61, baseType: !1583, size: 64, offset: 320)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{null, !1569}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1571, file: !1572, line: 62, baseType: !843, size: 64, offset: 384)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1571, file: !1572, line: 64, baseType: !852, size: 64, offset: 448)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1571, file: !1572, line: 66, baseType: !641, size: 64, offset: 512)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1571, file: !1572, line: 67, baseType: !1590, size: 64, offset: 576)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!522, !835}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1571, file: !1572, line: 69, baseType: !1594, size: 64, offset: 640)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{null, !835, !676, !683}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1571, file: !1572, line: 71, baseType: !847, size: 64, offset: 704)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !157, file: !26, line: 785, baseType: !299, size: 64, offset: 5440)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !157, file: !26, line: 787, baseType: !843, size: 64, offset: 5504)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !157, file: !26, line: 788, baseType: !1601, size: 64, offset: 5568)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !157, file: !26, line: 789, baseType: !1604, size: 64, offset: 5632)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !157, file: !26, line: 791, baseType: !1607, size: 64, offset: 5696)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1609)
!1609 = !{!1610, !1611, !1612, !1613, !1614}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1608, file: !26, line: 598, baseType: !53, size: 32)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1608, file: !26, line: 599, baseType: !62, size: 32, offset: 32)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1608, file: !26, line: 600, baseType: !67, size: 32, offset: 64)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1608, file: !26, line: 601, baseType: !601, size: 8, offset: 96)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1608, file: !26, line: 602, baseType: !601, size: 8, offset: 104)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !157, file: !26, line: 793, baseType: !72, size: 32, offset: 5760)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !157, file: !26, line: 795, baseType: !601, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !157, file: !26, line: 796, baseType: !601, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !157, file: !26, line: 797, baseType: !601, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !157, file: !26, line: 798, baseType: !601, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !157, file: !26, line: 799, baseType: !601, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !152, file: !153, line: 29, baseType: !46, size: 32, offset: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "unacked_exist", scope: !152, file: !153, line: 30, baseType: !46, size: 32, offset: 96)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "shift", scope: !152, file: !153, line: 34, baseType: !46, size: 32, offset: 128)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !152, file: !153, line: 37, baseType: !1533, size: 64, offset: 192)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !152, file: !153, line: 38, baseType: !46, size: 32, offset: 256)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !152, file: !153, line: 39, baseType: !1627, size: 64, offset: 288)
!1627 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqlock_t", file: !450, line: 860, baseType: !1628)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !450, line: 853, size: 64, elements: !1629)
!1629 = !{!1630, !1635}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1628, file: !450, line: 858, baseType: !1631, size: 32)
!1631 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_spinlock_t", file: !450, line: 275, baseType: !1632)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_spinlock", file: !450, line: 275, size: 32, elements: !1633)
!1633 = !{!1634}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1632, file: !450, line: 275, baseType: !449, size: 32)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1628, file: !450, line: 859, baseType: !180, size: 32, offset: 32)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "sector", scope: !152, file: !153, line: 40, baseType: !1637, size: 64, offset: 384)
!1637 = !DIDerivedType(tag: DW_TAG_typedef, name: "sector_t", file: !104, line: 131, baseType: !95)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !152, file: !153, line: 41, baseType: !1637, size: 64, offset: 448)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1640 = !{!1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1655}
!1641 = !DILocalVariable(name: "bb", arg: 1, scope: !148, file: !3, line: 53, type: !151)
!1642 = !DILocalVariable(name: "s", arg: 2, scope: !148, file: !3, line: 53, type: !1637)
!1643 = !DILocalVariable(name: "sectors", arg: 3, scope: !148, file: !3, line: 53, type: !46)
!1644 = !DILocalVariable(name: "first_bad", arg: 4, scope: !148, file: !3, line: 54, type: !1639)
!1645 = !DILocalVariable(name: "bad_sectors", arg: 5, scope: !148, file: !3, line: 54, type: !1059)
!1646 = !DILocalVariable(name: "hi", scope: !148, file: !3, line: 56, type: !46)
!1647 = !DILocalVariable(name: "lo", scope: !148, file: !3, line: 57, type: !46)
!1648 = !DILocalVariable(name: "p", scope: !148, file: !3, line: 58, type: !1533)
!1649 = !DILocalVariable(name: "rv", scope: !148, file: !3, line: 59, type: !46)
!1650 = !DILocalVariable(name: "target", scope: !148, file: !3, line: 60, type: !1637)
!1651 = !DILocalVariable(name: "seq", scope: !148, file: !3, line: 61, type: !7)
!1652 = !DILabel(scope: !148, name: "retry", file: !3, line: 71)
!1653 = !DILocalVariable(name: "mid", scope: !1654, file: !3, line: 86, type: !46)
!1654 = distinct !DILexicalBlock(scope: !148, file: !3, line: 85, column: 22)
!1655 = !DILocalVariable(name: "a", scope: !1654, file: !3, line: 87, type: !1637)
!1656 = !DILocation(line: 53, column: 39, scope: !148)
!1657 = !DILocation(line: 53, column: 52, scope: !148)
!1658 = !DILocation(line: 53, column: 59, scope: !148)
!1659 = !DILocation(line: 54, column: 14, scope: !148)
!1660 = !DILocation(line: 54, column: 30, scope: !148)
!1661 = !DILocation(line: 56, column: 2, scope: !148)
!1662 = !DILocation(line: 56, column: 6, scope: !148)
!1663 = !DILocation(line: 57, column: 2, scope: !148)
!1664 = !DILocation(line: 57, column: 6, scope: !148)
!1665 = !DILocation(line: 58, column: 2, scope: !148)
!1666 = !DILocation(line: 58, column: 7, scope: !148)
!1667 = !DILocation(line: 58, column: 11, scope: !148)
!1668 = !DILocation(line: 58, column: 15, scope: !148)
!1669 = !DILocation(line: 59, column: 2, scope: !148)
!1670 = !DILocation(line: 59, column: 6, scope: !148)
!1671 = !DILocation(line: 60, column: 2, scope: !148)
!1672 = !DILocation(line: 60, column: 11, scope: !148)
!1673 = !DILocation(line: 60, column: 20, scope: !148)
!1674 = !DILocation(line: 60, column: 24, scope: !148)
!1675 = !DILocation(line: 60, column: 22, scope: !148)
!1676 = !DILocation(line: 61, column: 2, scope: !148)
!1677 = !DILocation(line: 61, column: 11, scope: !148)
!1678 = !DILocation(line: 63, column: 6, scope: !1679)
!1679 = distinct !DILexicalBlock(scope: !148, file: !3, line: 63, column: 6)
!1680 = !DILocation(line: 63, column: 10, scope: !1679)
!1681 = !DILocation(line: 63, column: 16, scope: !1679)
!1682 = !DILocation(line: 63, column: 6, scope: !148)
!1683 = !DILocation(line: 65, column: 9, scope: !1684)
!1684 = distinct !DILexicalBlock(scope: !1679, file: !3, line: 63, column: 21)
!1685 = !DILocation(line: 65, column: 13, scope: !1684)
!1686 = !DILocation(line: 65, column: 5, scope: !1684)
!1687 = !DILocation(line: 66, column: 17, scope: !1684)
!1688 = !DILocation(line: 66, column: 21, scope: !1684)
!1689 = !DILocation(line: 66, column: 15, scope: !1684)
!1690 = !DILocation(line: 66, column: 28, scope: !1684)
!1691 = !DILocation(line: 66, column: 13, scope: !1684)
!1692 = !DILocation(line: 66, column: 10, scope: !1684)
!1693 = !DILocation(line: 67, column: 14, scope: !1684)
!1694 = !DILocation(line: 67, column: 18, scope: !1684)
!1695 = !DILocation(line: 67, column: 10, scope: !1684)
!1696 = !DILocation(line: 68, column: 2, scope: !1684)
!1697 = !DILocation(line: 63, column: 18, scope: !1679)
!1698 = !DILocation(line: 71, column: 1, scope: !148)
!1699 = !DILocation(line: 72, column: 23, scope: !148)
!1700 = !DILocation(line: 72, column: 27, scope: !148)
!1701 = !DILocation(line: 72, column: 8, scope: !148)
!1702 = !DILocation(line: 72, column: 6, scope: !148)
!1703 = !DILocation(line: 73, column: 5, scope: !148)
!1704 = !DILocation(line: 74, column: 5, scope: !148)
!1705 = !DILocation(line: 75, column: 7, scope: !148)
!1706 = !DILocation(line: 75, column: 11, scope: !148)
!1707 = !DILocation(line: 75, column: 5, scope: !148)
!1708 = !DILocation(line: 85, column: 2, scope: !148)
!1709 = !DILocation(line: 85, column: 9, scope: !148)
!1710 = !DILocation(line: 85, column: 14, scope: !148)
!1711 = !DILocation(line: 85, column: 12, scope: !148)
!1712 = !DILocation(line: 85, column: 17, scope: !148)
!1713 = !DILocation(line: 86, column: 3, scope: !1654)
!1714 = !DILocation(line: 86, column: 7, scope: !1654)
!1715 = !DILocation(line: 86, column: 14, scope: !1654)
!1716 = !DILocation(line: 86, column: 19, scope: !1654)
!1717 = !DILocation(line: 86, column: 17, scope: !1654)
!1718 = !DILocation(line: 86, column: 23, scope: !1654)
!1719 = !DILocation(line: 87, column: 3, scope: !1654)
!1720 = !DILocation(line: 87, column: 12, scope: !1654)
!1721 = !DILocation(line: 87, column: 16, scope: !1654)
!1722 = !DILocation(line: 89, column: 7, scope: !1723)
!1723 = distinct !DILexicalBlock(scope: !1654, file: !3, line: 89, column: 7)
!1724 = !DILocation(line: 89, column: 11, scope: !1723)
!1725 = !DILocation(line: 89, column: 9, scope: !1723)
!1726 = !DILocation(line: 89, column: 7, scope: !1654)
!1727 = !DILocation(line: 93, column: 9, scope: !1723)
!1728 = !DILocation(line: 93, column: 7, scope: !1723)
!1729 = !DILocation(line: 93, column: 4, scope: !1723)
!1730 = !DILocation(line: 96, column: 9, scope: !1723)
!1731 = !DILocation(line: 96, column: 7, scope: !1723)
!1732 = !DILocation(line: 97, column: 2, scope: !148)
!1733 = distinct !{!1733, !1708, !1732, !1734, !1735}
!1734 = !{!"llvm.loop.mustprogress"}
!1735 = !{!"llvm.loop.unroll.disable"}
!1736 = !DILocation(line: 99, column: 6, scope: !1737)
!1737 = distinct !DILexicalBlock(scope: !148, file: !3, line: 99, column: 6)
!1738 = !DILocation(line: 99, column: 11, scope: !1737)
!1739 = !DILocation(line: 99, column: 9, scope: !1737)
!1740 = !DILocation(line: 99, column: 6, scope: !148)
!1741 = !DILocation(line: 103, column: 3, scope: !1742)
!1742 = distinct !DILexicalBlock(scope: !1737, file: !3, line: 99, column: 15)
!1743 = !DILocation(line: 103, column: 10, scope: !1742)
!1744 = !DILocation(line: 103, column: 13, scope: !1742)
!1745 = !DILocation(line: 103, column: 18, scope: !1742)
!1746 = !DILocation(line: 104, column: 10, scope: !1742)
!1747 = !DILocation(line: 104, column: 29, scope: !1742)
!1748 = !DILocation(line: 104, column: 27, scope: !1742)
!1749 = !DILocation(line: 104, column: 45, scope: !1742)
!1750 = !DILocation(line: 104, column: 43, scope: !1742)
!1751 = !DILocation(line: 0, scope: !1742)
!1752 = !DILocation(line: 105, column: 8, scope: !1753)
!1753 = distinct !DILexicalBlock(scope: !1754, file: !3, line: 105, column: 8)
!1754 = distinct !DILexicalBlock(scope: !1742, file: !3, line: 104, column: 48)
!1755 = !DILocation(line: 105, column: 27, scope: !1753)
!1756 = !DILocation(line: 105, column: 25, scope: !1753)
!1757 = !DILocation(line: 105, column: 8, scope: !1754)
!1758 = !DILocation(line: 109, column: 9, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1760, file: !3, line: 109, column: 9)
!1760 = distinct !DILexicalBlock(scope: !1753, file: !3, line: 105, column: 35)
!1761 = !DILocation(line: 109, column: 12, scope: !1759)
!1762 = !DILocation(line: 109, column: 18, scope: !1759)
!1763 = !DILocation(line: 109, column: 21, scope: !1759)
!1764 = !DILocation(line: 109, column: 9, scope: !1760)
!1765 = !DILocation(line: 110, column: 9, scope: !1759)
!1766 = !DILocation(line: 110, column: 6, scope: !1759)
!1767 = !DILocation(line: 112, column: 9, scope: !1759)
!1768 = !DILocation(line: 113, column: 18, scope: !1760)
!1769 = !DILocation(line: 113, column: 6, scope: !1760)
!1770 = !DILocation(line: 113, column: 16, scope: !1760)
!1771 = !DILocation(line: 114, column: 20, scope: !1760)
!1772 = !DILocation(line: 114, column: 6, scope: !1760)
!1773 = !DILocation(line: 114, column: 18, scope: !1760)
!1774 = !DILocation(line: 115, column: 4, scope: !1760)
!1775 = !DILocation(line: 116, column: 6, scope: !1754)
!1776 = distinct !{!1776, !1741, !1777, !1734, !1735}
!1777 = !DILocation(line: 117, column: 3, scope: !1742)
!1778 = !DILocation(line: 118, column: 2, scope: !1742)
!1779 = !DILocation(line: 120, column: 21, scope: !1780)
!1780 = distinct !DILexicalBlock(scope: !148, file: !3, line: 120, column: 6)
!1781 = !DILocation(line: 120, column: 25, scope: !1780)
!1782 = !DILocation(line: 120, column: 31, scope: !1780)
!1783 = !DILocation(line: 120, column: 6, scope: !1780)
!1784 = !DILocation(line: 120, column: 6, scope: !148)
!1785 = !DILocation(line: 121, column: 3, scope: !1780)
!1786 = !DILocation(line: 123, column: 9, scope: !148)
!1787 = !DILocation(line: 124, column: 1, scope: !148)
!1788 = !DILocation(line: 123, column: 2, scope: !148)
!1789 = distinct !DISubprogram(name: "read_seqbegin", scope: !450, file: !450, line: 891, type: !1790, scopeLine: 892, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1794)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!7, !1792}
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1627)
!1794 = !{!1795, !1796, !1799}
!1795 = !DILocalVariable(name: "sl", arg: 1, scope: !1789, file: !450, line: 891, type: !1792)
!1796 = !DILocalVariable(name: "_seq", scope: !1797, file: !450, line: 893, type: !7)
!1797 = distinct !DILexicalBlock(scope: !1798, file: !450, line: 893, column: 9)
!1798 = distinct !DILexicalBlock(scope: !1789, file: !450, line: 893, column: 9)
!1799 = !DILocalVariable(name: "__seq", scope: !1800, file: !450, line: 893, type: !7)
!1800 = distinct !DILexicalBlock(scope: !1797, file: !450, line: 893, column: 9)
!1801 = !DILocation(line: 891, column: 55, scope: !1789)
!1802 = !DILocation(line: 893, column: 9, scope: !1797)
!1803 = !DILocation(line: 893, column: 9, scope: !1800)
!1804 = distinct !{!1804, !1803, !1803, !1734, !1735}
!1805 = !DILocation(line: 893, column: 9, scope: !1806)
!1806 = distinct !DILexicalBlock(scope: !1797, file: !450, line: 893, column: 9)
!1807 = !DILocation(line: 893, column: 9, scope: !1808)
!1808 = distinct !DILexicalBlock(scope: !1806, file: !450, line: 893, column: 9)
!1809 = !DILocation(line: 893, column: 9, scope: !1810)
!1810 = distinct !DILexicalBlock(scope: !1806, file: !450, line: 893, column: 9)
!1811 = !DILocation(line: 893, column: 9, scope: !1812)
!1812 = distinct !DILexicalBlock(scope: !1810, file: !450, line: 893, column: 9)
!1813 = !{i64 2149879638}
!1814 = !DILocation(line: 893, column: 9, scope: !1798)
!1815 = !DILocation(line: 893, column: 9, scope: !1789)
!1816 = !DILocation(line: 893, column: 2, scope: !1789)
!1817 = distinct !DISubprogram(name: "read_seqretry", scope: !450, file: !450, line: 907, type: !1818, scopeLine: 908, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1820)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!7, !1792, !7}
!1820 = !{!1821, !1822}
!1821 = !DILocalVariable(name: "sl", arg: 1, scope: !1817, file: !450, line: 907, type: !1792)
!1822 = !DILocalVariable(name: "start", arg: 2, scope: !1817, file: !450, line: 907, type: !7)
!1823 = !DILocation(line: 907, column: 55, scope: !1817)
!1824 = !DILocation(line: 907, column: 68, scope: !1817)
!1825 = !DILocation(line: 909, column: 9, scope: !1817)
!1826 = !DILocation(line: 909, column: 2, scope: !1817)
!1827 = distinct !DISubprogram(name: "badblocks_set", scope: !3, file: !3, line: 162, type: !1828, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1830)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!46, !151, !1637, !46, !46}
!1830 = !{!1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1843, !1845, !1846, !1849, !1850, !1851, !1854, !1855, !1856, !1859, !1860, !1861, !1862, !1865}
!1831 = !DILocalVariable(name: "bb", arg: 1, scope: !1827, file: !3, line: 162, type: !151)
!1832 = !DILocalVariable(name: "s", arg: 2, scope: !1827, file: !3, line: 162, type: !1637)
!1833 = !DILocalVariable(name: "sectors", arg: 3, scope: !1827, file: !3, line: 162, type: !46)
!1834 = !DILocalVariable(name: "acknowledged", arg: 4, scope: !1827, file: !3, line: 163, type: !46)
!1835 = !DILocalVariable(name: "p", scope: !1827, file: !3, line: 165, type: !1533)
!1836 = !DILocalVariable(name: "lo", scope: !1827, file: !3, line: 166, type: !46)
!1837 = !DILocalVariable(name: "hi", scope: !1827, file: !3, line: 166, type: !46)
!1838 = !DILocalVariable(name: "rv", scope: !1827, file: !3, line: 167, type: !46)
!1839 = !DILocalVariable(name: "flags", scope: !1827, file: !3, line: 168, type: !105)
!1840 = !DILocalVariable(name: "next", scope: !1841, file: !3, line: 176, type: !1637)
!1841 = distinct !DILexicalBlock(scope: !1842, file: !3, line: 174, column: 17)
!1842 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 174, column: 6)
!1843 = !DILocalVariable(name: "mid", scope: !1844, file: !3, line: 191, type: !46)
!1844 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 190, column: 22)
!1845 = !DILocalVariable(name: "a", scope: !1844, file: !3, line: 192, type: !1637)
!1846 = !DILocalVariable(name: "a", scope: !1847, file: !3, line: 206, type: !1637)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !3, line: 202, column: 15)
!1848 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 202, column: 6)
!1849 = !DILocalVariable(name: "e", scope: !1847, file: !3, line: 207, type: !1637)
!1850 = !DILocalVariable(name: "ack", scope: !1847, file: !3, line: 208, type: !46)
!1851 = !DILocalVariable(name: "a", scope: !1852, file: !3, line: 238, type: !1637)
!1852 = distinct !DILexicalBlock(scope: !1853, file: !3, line: 234, column: 33)
!1853 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 234, column: 6)
!1854 = !DILocalVariable(name: "e", scope: !1852, file: !3, line: 239, type: !1637)
!1855 = !DILocalVariable(name: "ack", scope: !1852, file: !3, line: 240, type: !46)
!1856 = !DILocalVariable(name: "a", scope: !1857, file: !3, line: 267, type: !1637)
!1857 = distinct !DILexicalBlock(scope: !1858, file: !3, line: 264, column: 38)
!1858 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 264, column: 6)
!1859 = !DILocalVariable(name: "lolen", scope: !1857, file: !3, line: 268, type: !46)
!1860 = !DILocalVariable(name: "hilen", scope: !1857, file: !3, line: 269, type: !46)
!1861 = !DILocalVariable(name: "newlen", scope: !1857, file: !3, line: 270, type: !46)
!1862 = !DILocalVariable(name: "ack", scope: !1863, file: !3, line: 274, type: !46)
!1863 = distinct !DILexicalBlock(scope: !1864, file: !3, line: 272, column: 38)
!1864 = distinct !DILexicalBlock(scope: !1857, file: !3, line: 272, column: 7)
!1865 = !DILocalVariable(name: "this_sectors", scope: !1866, file: !3, line: 291, type: !46)
!1866 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 290, column: 10)
!1867 = distinct !DILexicalBlock(scope: !1868, file: !3, line: 286, column: 7)
!1868 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 282, column: 18)
!1869 = !DILocation(line: 162, column: 37, scope: !1827)
!1870 = !DILocation(line: 162, column: 50, scope: !1827)
!1871 = !DILocation(line: 162, column: 57, scope: !1827)
!1872 = !DILocation(line: 163, column: 8, scope: !1827)
!1873 = !DILocation(line: 165, column: 2, scope: !1827)
!1874 = !DILocation(line: 165, column: 7, scope: !1827)
!1875 = !DILocation(line: 166, column: 2, scope: !1827)
!1876 = !DILocation(line: 166, column: 6, scope: !1827)
!1877 = !DILocation(line: 166, column: 10, scope: !1827)
!1878 = !DILocation(line: 167, column: 2, scope: !1827)
!1879 = !DILocation(line: 167, column: 6, scope: !1827)
!1880 = !DILocation(line: 168, column: 2, scope: !1827)
!1881 = !DILocation(line: 168, column: 16, scope: !1827)
!1882 = !DILocation(line: 170, column: 6, scope: !1883)
!1883 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 170, column: 6)
!1884 = !DILocation(line: 170, column: 10, scope: !1883)
!1885 = !DILocation(line: 170, column: 16, scope: !1883)
!1886 = !DILocation(line: 170, column: 6, scope: !1827)
!1887 = !DILocation(line: 172, column: 3, scope: !1883)
!1888 = !DILocation(line: 174, column: 6, scope: !1842)
!1889 = !DILocation(line: 174, column: 10, scope: !1842)
!1890 = !DILocation(line: 174, column: 6, scope: !1827)
!1891 = !DILocation(line: 176, column: 3, scope: !1841)
!1892 = !DILocation(line: 176, column: 12, scope: !1841)
!1893 = !DILocation(line: 176, column: 19, scope: !1841)
!1894 = !DILocation(line: 176, column: 23, scope: !1841)
!1895 = !DILocation(line: 176, column: 21, scope: !1841)
!1896 = !DILocation(line: 178, column: 9, scope: !1841)
!1897 = !DILocation(line: 178, column: 13, scope: !1841)
!1898 = !DILocation(line: 178, column: 5, scope: !1841)
!1899 = !DILocation(line: 179, column: 15, scope: !1841)
!1900 = !DILocation(line: 179, column: 19, scope: !1841)
!1901 = !DILocation(line: 179, column: 13, scope: !1841)
!1902 = !DILocation(line: 179, column: 26, scope: !1841)
!1903 = !DILocation(line: 179, column: 11, scope: !1841)
!1904 = !DILocation(line: 179, column: 8, scope: !1841)
!1905 = !DILocation(line: 180, column: 12, scope: !1841)
!1906 = !DILocation(line: 180, column: 16, scope: !1841)
!1907 = !DILocation(line: 180, column: 8, scope: !1841)
!1908 = !DILocation(line: 181, column: 13, scope: !1841)
!1909 = !DILocation(line: 181, column: 20, scope: !1841)
!1910 = !DILocation(line: 181, column: 18, scope: !1841)
!1911 = !DILocation(line: 181, column: 11, scope: !1841)
!1912 = !DILocation(line: 182, column: 2, scope: !1842)
!1913 = !DILocation(line: 182, column: 2, scope: !1841)
!1914 = !DILocation(line: 184, column: 2, scope: !1827)
!1915 = !DILocation(line: 184, column: 2, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 184, column: 2)
!1917 = !DILocation(line: 186, column: 6, scope: !1827)
!1918 = !DILocation(line: 186, column: 10, scope: !1827)
!1919 = !DILocation(line: 186, column: 4, scope: !1827)
!1920 = !DILocation(line: 187, column: 5, scope: !1827)
!1921 = !DILocation(line: 188, column: 7, scope: !1827)
!1922 = !DILocation(line: 188, column: 11, scope: !1827)
!1923 = !DILocation(line: 188, column: 5, scope: !1827)
!1924 = !DILocation(line: 190, column: 2, scope: !1827)
!1925 = !DILocation(line: 190, column: 9, scope: !1827)
!1926 = !DILocation(line: 190, column: 14, scope: !1827)
!1927 = !DILocation(line: 190, column: 12, scope: !1827)
!1928 = !DILocation(line: 190, column: 17, scope: !1827)
!1929 = !DILocation(line: 191, column: 3, scope: !1844)
!1930 = !DILocation(line: 191, column: 7, scope: !1844)
!1931 = !DILocation(line: 191, column: 14, scope: !1844)
!1932 = !DILocation(line: 191, column: 19, scope: !1844)
!1933 = !DILocation(line: 191, column: 17, scope: !1844)
!1934 = !DILocation(line: 191, column: 23, scope: !1844)
!1935 = !DILocation(line: 192, column: 3, scope: !1844)
!1936 = !DILocation(line: 192, column: 12, scope: !1844)
!1937 = !DILocation(line: 192, column: 16, scope: !1844)
!1938 = !DILocation(line: 194, column: 7, scope: !1939)
!1939 = distinct !DILexicalBlock(scope: !1844, file: !3, line: 194, column: 7)
!1940 = !DILocation(line: 194, column: 12, scope: !1939)
!1941 = !DILocation(line: 194, column: 9, scope: !1939)
!1942 = !DILocation(line: 194, column: 7, scope: !1844)
!1943 = !DILocation(line: 195, column: 9, scope: !1939)
!1944 = !DILocation(line: 195, column: 7, scope: !1939)
!1945 = !DILocation(line: 195, column: 4, scope: !1939)
!1946 = !DILocation(line: 197, column: 9, scope: !1939)
!1947 = !DILocation(line: 197, column: 7, scope: !1939)
!1948 = !DILocation(line: 198, column: 2, scope: !1827)
!1949 = distinct !{!1949, !1924, !1948, !1734, !1735}
!1950 = !DILocation(line: 199, column: 6, scope: !1951)
!1951 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 199, column: 6)
!1952 = !DILocation(line: 199, column: 11, scope: !1951)
!1953 = !DILocation(line: 199, column: 9, scope: !1951)
!1954 = !DILocation(line: 199, column: 14, scope: !1951)
!1955 = !DILocation(line: 199, column: 17, scope: !1951)
!1956 = !DILocation(line: 199, column: 36, scope: !1951)
!1957 = !DILocation(line: 199, column: 34, scope: !1951)
!1958 = !DILocation(line: 199, column: 6, scope: !1827)
!1959 = !DILocation(line: 200, column: 8, scope: !1951)
!1960 = !DILocation(line: 200, column: 6, scope: !1951)
!1961 = !DILocation(line: 200, column: 3, scope: !1951)
!1962 = !DILocation(line: 202, column: 6, scope: !1848)
!1963 = !DILocation(line: 202, column: 11, scope: !1848)
!1964 = !DILocation(line: 202, column: 9, scope: !1848)
!1965 = !DILocation(line: 202, column: 6, scope: !1827)
!1966 = !DILocation(line: 206, column: 3, scope: !1847)
!1967 = !DILocation(line: 206, column: 12, scope: !1847)
!1968 = !DILocation(line: 206, column: 16, scope: !1847)
!1969 = !DILocation(line: 207, column: 3, scope: !1847)
!1970 = !DILocation(line: 207, column: 12, scope: !1847)
!1971 = !DILocation(line: 207, column: 16, scope: !1847)
!1972 = !DILocation(line: 207, column: 20, scope: !1847)
!1973 = !DILocation(line: 207, column: 18, scope: !1847)
!1974 = !DILocation(line: 208, column: 3, scope: !1847)
!1975 = !DILocation(line: 208, column: 7, scope: !1847)
!1976 = !DILocation(line: 208, column: 13, scope: !1847)
!1977 = !DILocation(line: 210, column: 7, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1847, file: !3, line: 210, column: 7)
!1979 = !DILocation(line: 210, column: 12, scope: !1978)
!1980 = !DILocation(line: 210, column: 9, scope: !1978)
!1981 = !DILocation(line: 210, column: 7, scope: !1847)
!1982 = !DILocation(line: 212, column: 8, scope: !1983)
!1983 = distinct !DILexicalBlock(scope: !1984, file: !3, line: 212, column: 8)
!1984 = distinct !DILexicalBlock(scope: !1978, file: !3, line: 210, column: 15)
!1985 = !DILocation(line: 212, column: 13, scope: !1983)
!1986 = !DILocation(line: 212, column: 10, scope: !1983)
!1987 = !DILocation(line: 212, column: 15, scope: !1983)
!1988 = !DILocation(line: 212, column: 18, scope: !1983)
!1989 = !DILocation(line: 212, column: 22, scope: !1983)
!1990 = !DILocation(line: 212, column: 20, scope: !1983)
!1991 = !DILocation(line: 212, column: 33, scope: !1983)
!1992 = !DILocation(line: 212, column: 30, scope: !1983)
!1993 = !DILocation(line: 212, column: 8, scope: !1984)
!1994 = !DILocation(line: 214, column: 11, scope: !1983)
!1995 = !DILocation(line: 214, column: 9, scope: !1983)
!1996 = !DILocation(line: 214, column: 5, scope: !1983)
!1997 = !DILocation(line: 216, column: 11, scope: !1983)
!1998 = !DILocation(line: 216, column: 15, scope: !1983)
!1999 = !DILocation(line: 216, column: 18, scope: !1983)
!2000 = !DILocation(line: 0, scope: !1983)
!2001 = !DILocation(line: 216, column: 9, scope: !1983)
!2002 = !DILocation(line: 218, column: 8, scope: !2003)
!2003 = distinct !DILexicalBlock(scope: !1984, file: !3, line: 218, column: 8)
!2004 = !DILocation(line: 218, column: 12, scope: !2003)
!2005 = !DILocation(line: 218, column: 16, scope: !2003)
!2006 = !DILocation(line: 218, column: 14, scope: !2003)
!2007 = !DILocation(line: 218, column: 10, scope: !2003)
!2008 = !DILocation(line: 218, column: 8, scope: !1984)
!2009 = !DILocation(line: 219, column: 9, scope: !2003)
!2010 = !DILocation(line: 219, column: 13, scope: !2003)
!2011 = !DILocation(line: 219, column: 11, scope: !2003)
!2012 = !DILocation(line: 219, column: 7, scope: !2003)
!2013 = !DILocation(line: 219, column: 5, scope: !2003)
!2014 = !DILocation(line: 220, column: 8, scope: !2015)
!2015 = distinct !DILexicalBlock(scope: !1984, file: !3, line: 220, column: 8)
!2016 = !DILocation(line: 220, column: 12, scope: !2015)
!2017 = !DILocation(line: 220, column: 10, scope: !2015)
!2018 = !DILocation(line: 220, column: 14, scope: !2015)
!2019 = !DILocation(line: 220, column: 8, scope: !1984)
!2020 = !DILocation(line: 221, column: 13, scope: !2021)
!2021 = distinct !DILexicalBlock(scope: !2015, file: !3, line: 220, column: 29)
!2022 = !DILocation(line: 221, column: 5, scope: !2021)
!2023 = !DILocation(line: 221, column: 7, scope: !2021)
!2024 = !DILocation(line: 221, column: 11, scope: !2021)
!2025 = !DILocation(line: 222, column: 9, scope: !2021)
!2026 = !DILocation(line: 222, column: 7, scope: !2021)
!2027 = !DILocation(line: 223, column: 4, scope: !2021)
!2028 = !DILocation(line: 227, column: 9, scope: !2029)
!2029 = distinct !DILexicalBlock(scope: !2030, file: !3, line: 227, column: 9)
!2030 = distinct !DILexicalBlock(scope: !2015, file: !3, line: 223, column: 11)
!2031 = !DILocation(line: 227, column: 23, scope: !2029)
!2032 = !DILocation(line: 227, column: 9, scope: !2030)
!2033 = !DILocation(line: 228, column: 14, scope: !2029)
!2034 = !DILocation(line: 228, column: 6, scope: !2029)
!2035 = !DILocation(line: 228, column: 8, scope: !2029)
!2036 = !DILocation(line: 228, column: 12, scope: !2029)
!2037 = !DILocation(line: 229, column: 9, scope: !2030)
!2038 = !DILocation(line: 229, column: 11, scope: !2030)
!2039 = !DILocation(line: 229, column: 7, scope: !2030)
!2040 = !DILocation(line: 231, column: 14, scope: !1984)
!2041 = !DILocation(line: 231, column: 18, scope: !1984)
!2042 = !DILocation(line: 231, column: 16, scope: !1984)
!2043 = !DILocation(line: 231, column: 12, scope: !1984)
!2044 = !DILocation(line: 232, column: 3, scope: !1984)
!2045 = !DILocation(line: 233, column: 2, scope: !1848)
!2046 = !DILocation(line: 233, column: 2, scope: !1847)
!2047 = !DILocation(line: 234, column: 6, scope: !1853)
!2048 = !DILocation(line: 234, column: 14, scope: !1853)
!2049 = !DILocation(line: 234, column: 17, scope: !1853)
!2050 = !DILocation(line: 234, column: 22, scope: !1853)
!2051 = !DILocation(line: 234, column: 26, scope: !1853)
!2052 = !DILocation(line: 234, column: 20, scope: !1853)
!2053 = !DILocation(line: 234, column: 6, scope: !1827)
!2054 = !DILocation(line: 238, column: 3, scope: !1852)
!2055 = !DILocation(line: 238, column: 12, scope: !1852)
!2056 = !DILocation(line: 238, column: 16, scope: !1852)
!2057 = !DILocation(line: 239, column: 3, scope: !1852)
!2058 = !DILocation(line: 239, column: 12, scope: !1852)
!2059 = !DILocation(line: 239, column: 16, scope: !1852)
!2060 = !DILocation(line: 239, column: 20, scope: !1852)
!2061 = !DILocation(line: 239, column: 18, scope: !1852)
!2062 = !DILocation(line: 240, column: 3, scope: !1852)
!2063 = !DILocation(line: 240, column: 7, scope: !1852)
!2064 = !DILocation(line: 240, column: 13, scope: !1852)
!2065 = !DILocation(line: 242, column: 7, scope: !2066)
!2066 = distinct !DILexicalBlock(scope: !1852, file: !3, line: 242, column: 7)
!2067 = !DILocation(line: 242, column: 12, scope: !2066)
!2068 = !DILocation(line: 242, column: 16, scope: !2066)
!2069 = !DILocation(line: 242, column: 14, scope: !2066)
!2070 = !DILocation(line: 242, column: 9, scope: !2066)
!2071 = !DILocation(line: 242, column: 7, scope: !1852)
!2072 = !DILocation(line: 244, column: 8, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !3, line: 244, column: 8)
!2074 = distinct !DILexicalBlock(scope: !2066, file: !3, line: 242, column: 25)
!2075 = !DILocation(line: 244, column: 13, scope: !2073)
!2076 = !DILocation(line: 244, column: 17, scope: !2073)
!2077 = !DILocation(line: 244, column: 15, scope: !2073)
!2078 = !DILocation(line: 244, column: 10, scope: !2073)
!2079 = !DILocation(line: 244, column: 8, scope: !2074)
!2080 = !DILocation(line: 246, column: 9, scope: !2081)
!2081 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 244, column: 26)
!2082 = !DILocation(line: 246, column: 13, scope: !2081)
!2083 = !DILocation(line: 246, column: 11, scope: !2081)
!2084 = !DILocation(line: 246, column: 7, scope: !2081)
!2085 = !DILocation(line: 247, column: 11, scope: !2081)
!2086 = !DILocation(line: 247, column: 9, scope: !2081)
!2087 = !DILocation(line: 248, column: 4, scope: !2081)
!2088 = !DILocation(line: 249, column: 11, scope: !2073)
!2089 = !DILocation(line: 249, column: 15, scope: !2073)
!2090 = !DILocation(line: 249, column: 18, scope: !2073)
!2091 = !DILocation(line: 0, scope: !2073)
!2092 = !DILocation(line: 249, column: 9, scope: !2073)
!2093 = !DILocation(line: 251, column: 8, scope: !2074)
!2094 = !DILocation(line: 251, column: 6, scope: !2074)
!2095 = !DILocation(line: 252, column: 8, scope: !2096)
!2096 = distinct !DILexicalBlock(scope: !2074, file: !3, line: 252, column: 8)
!2097 = !DILocation(line: 252, column: 12, scope: !2096)
!2098 = !DILocation(line: 252, column: 10, scope: !2096)
!2099 = !DILocation(line: 252, column: 14, scope: !2096)
!2100 = !DILocation(line: 252, column: 8, scope: !2074)
!2101 = !DILocation(line: 253, column: 13, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2096, file: !3, line: 252, column: 29)
!2103 = !DILocation(line: 253, column: 5, scope: !2102)
!2104 = !DILocation(line: 253, column: 7, scope: !2102)
!2105 = !DILocation(line: 253, column: 11, scope: !2102)
!2106 = !DILocation(line: 254, column: 9, scope: !2102)
!2107 = !DILocation(line: 254, column: 7, scope: !2102)
!2108 = !DILocation(line: 255, column: 4, scope: !2102)
!2109 = !DILocation(line: 256, column: 13, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2096, file: !3, line: 255, column: 11)
!2111 = !DILocation(line: 256, column: 5, scope: !2110)
!2112 = !DILocation(line: 256, column: 7, scope: !2110)
!2113 = !DILocation(line: 256, column: 11, scope: !2110)
!2114 = !DILocation(line: 257, column: 9, scope: !2110)
!2115 = !DILocation(line: 257, column: 11, scope: !2110)
!2116 = !DILocation(line: 257, column: 7, scope: !2110)
!2117 = !DILocation(line: 259, column: 14, scope: !2074)
!2118 = !DILocation(line: 259, column: 18, scope: !2074)
!2119 = !DILocation(line: 259, column: 16, scope: !2074)
!2120 = !DILocation(line: 259, column: 12, scope: !2074)
!2121 = !DILocation(line: 260, column: 9, scope: !2074)
!2122 = !DILocation(line: 260, column: 7, scope: !2074)
!2123 = !DILocation(line: 261, column: 6, scope: !2074)
!2124 = !DILocation(line: 262, column: 3, scope: !2074)
!2125 = !DILocation(line: 263, column: 2, scope: !1853)
!2126 = !DILocation(line: 263, column: 2, scope: !1852)
!2127 = !DILocation(line: 264, column: 6, scope: !1858)
!2128 = !DILocation(line: 264, column: 14, scope: !1858)
!2129 = !DILocation(line: 264, column: 19, scope: !1858)
!2130 = !DILocation(line: 264, column: 22, scope: !1858)
!2131 = !DILocation(line: 264, column: 27, scope: !1858)
!2132 = !DILocation(line: 264, column: 31, scope: !1858)
!2133 = !DILocation(line: 264, column: 25, scope: !1858)
!2134 = !DILocation(line: 264, column: 6, scope: !1827)
!2135 = !DILocation(line: 267, column: 3, scope: !1857)
!2136 = !DILocation(line: 267, column: 12, scope: !1857)
!2137 = !DILocation(line: 267, column: 16, scope: !1857)
!2138 = !DILocation(line: 268, column: 3, scope: !1857)
!2139 = !DILocation(line: 268, column: 7, scope: !1857)
!2140 = !DILocation(line: 268, column: 15, scope: !1857)
!2141 = !DILocation(line: 269, column: 3, scope: !1857)
!2142 = !DILocation(line: 269, column: 7, scope: !1857)
!2143 = !DILocation(line: 269, column: 15, scope: !1857)
!2144 = !DILocation(line: 270, column: 3, scope: !1857)
!2145 = !DILocation(line: 270, column: 7, scope: !1857)
!2146 = !DILocation(line: 270, column: 16, scope: !1857)
!2147 = !DILocation(line: 270, column: 24, scope: !1857)
!2148 = !DILocation(line: 270, column: 22, scope: !1857)
!2149 = !DILocation(line: 270, column: 33, scope: !1857)
!2150 = !DILocation(line: 270, column: 37, scope: !1857)
!2151 = !DILocation(line: 270, column: 35, scope: !1857)
!2152 = !DILocation(line: 270, column: 30, scope: !1857)
!2153 = !DILocation(line: 272, column: 7, scope: !1864)
!2154 = !DILocation(line: 272, column: 12, scope: !1864)
!2155 = !DILocation(line: 272, column: 9, scope: !1864)
!2156 = !DILocation(line: 272, column: 14, scope: !1864)
!2157 = !DILocation(line: 272, column: 17, scope: !1864)
!2158 = !DILocation(line: 272, column: 24, scope: !1864)
!2159 = !DILocation(line: 272, column: 7, scope: !1857)
!2160 = !DILocation(line: 274, column: 4, scope: !1863)
!2161 = !DILocation(line: 274, column: 8, scope: !1863)
!2162 = !DILocation(line: 274, column: 14, scope: !1863)
!2163 = !DILocation(line: 274, column: 28, scope: !1863)
!2164 = !DILocation(line: 274, column: 31, scope: !1863)
!2165 = !DILocation(line: 0, scope: !1863)
!2166 = !DILocation(line: 276, column: 12, scope: !1863)
!2167 = !DILocation(line: 276, column: 4, scope: !1863)
!2168 = !DILocation(line: 276, column: 6, scope: !1863)
!2169 = !DILocation(line: 276, column: 10, scope: !1863)
!2170 = !DILocation(line: 277, column: 12, scope: !1863)
!2171 = !DILocation(line: 277, column: 16, scope: !1863)
!2172 = !DILocation(line: 277, column: 14, scope: !1863)
!2173 = !DILocation(line: 277, column: 20, scope: !1863)
!2174 = !DILocation(line: 277, column: 24, scope: !1863)
!2175 = !DILocation(line: 277, column: 22, scope: !1863)
!2176 = !DILocation(line: 277, column: 27, scope: !1863)
!2177 = !DILocation(line: 278, column: 6, scope: !1863)
!2178 = !DILocation(line: 278, column: 10, scope: !1863)
!2179 = !DILocation(line: 278, column: 18, scope: !1863)
!2180 = !DILocation(line: 278, column: 16, scope: !1863)
!2181 = !DILocation(line: 278, column: 21, scope: !1863)
!2182 = !DILocation(line: 278, column: 26, scope: !1863)
!2183 = !DILocation(line: 278, column: 5, scope: !1863)
!2184 = !DILocation(line: 277, column: 4, scope: !1863)
!2185 = !DILocation(line: 279, column: 4, scope: !1863)
!2186 = !DILocation(line: 279, column: 8, scope: !1863)
!2187 = !DILocation(line: 279, column: 13, scope: !1863)
!2188 = !DILocation(line: 280, column: 3, scope: !1864)
!2189 = !DILocation(line: 280, column: 3, scope: !1863)
!2190 = !DILocation(line: 281, column: 2, scope: !1858)
!2191 = !DILocation(line: 281, column: 2, scope: !1857)
!2192 = !DILocation(line: 282, column: 2, scope: !1827)
!2193 = !DILocation(line: 282, column: 9, scope: !1827)
!2194 = !DILocation(line: 286, column: 7, scope: !1867)
!2195 = !DILocation(line: 286, column: 11, scope: !1867)
!2196 = !DILocation(line: 286, column: 17, scope: !1867)
!2197 = !DILocation(line: 286, column: 7, scope: !1868)
!2198 = !DILocation(line: 288, column: 7, scope: !2199)
!2199 = distinct !DILexicalBlock(scope: !1867, file: !3, line: 286, column: 35)
!2200 = !DILocation(line: 289, column: 4, scope: !2199)
!2201 = !DILocation(line: 291, column: 4, scope: !1866)
!2202 = !DILocation(line: 291, column: 8, scope: !1866)
!2203 = !DILocation(line: 291, column: 23, scope: !1866)
!2204 = !DILocation(line: 293, column: 12, scope: !1866)
!2205 = !DILocation(line: 293, column: 16, scope: !1866)
!2206 = !DILocation(line: 293, column: 14, scope: !1866)
!2207 = !DILocation(line: 293, column: 19, scope: !1866)
!2208 = !DILocation(line: 293, column: 24, scope: !1866)
!2209 = !DILocation(line: 293, column: 28, scope: !1866)
!2210 = !DILocation(line: 293, column: 26, scope: !1866)
!2211 = !DILocation(line: 294, column: 6, scope: !1866)
!2212 = !DILocation(line: 294, column: 10, scope: !1866)
!2213 = !DILocation(line: 294, column: 18, scope: !1866)
!2214 = !DILocation(line: 294, column: 16, scope: !1866)
!2215 = !DILocation(line: 294, column: 22, scope: !1866)
!2216 = !DILocation(line: 294, column: 5, scope: !1866)
!2217 = !DILocation(line: 293, column: 4, scope: !1866)
!2218 = !DILocation(line: 295, column: 4, scope: !1866)
!2219 = !DILocation(line: 295, column: 8, scope: !1866)
!2220 = !DILocation(line: 295, column: 13, scope: !1866)
!2221 = !DILocation(line: 297, column: 8, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !1866, file: !3, line: 297, column: 8)
!2223 = !DILocation(line: 297, column: 21, scope: !2222)
!2224 = !DILocation(line: 297, column: 8, scope: !1866)
!2225 = !DILocation(line: 298, column: 18, scope: !2222)
!2226 = !DILocation(line: 298, column: 5, scope: !2222)
!2227 = !DILocation(line: 299, column: 12, scope: !1866)
!2228 = !DILocation(line: 299, column: 4, scope: !1866)
!2229 = !DILocation(line: 299, column: 6, scope: !1866)
!2230 = !DILocation(line: 299, column: 10, scope: !1866)
!2231 = !DILocation(line: 300, column: 15, scope: !1866)
!2232 = !DILocation(line: 300, column: 12, scope: !1866)
!2233 = !DILocation(line: 301, column: 9, scope: !1866)
!2234 = !DILocation(line: 301, column: 6, scope: !1866)
!2235 = !DILocation(line: 302, column: 3, scope: !1867)
!2236 = distinct !{!2236, !2192, !2237, !1734, !1735}
!2237 = !DILocation(line: 303, column: 2, scope: !1827)
!2238 = !DILocation(line: 305, column: 2, scope: !1827)
!2239 = !DILocation(line: 305, column: 6, scope: !1827)
!2240 = !DILocation(line: 305, column: 14, scope: !1827)
!2241 = !DILocation(line: 306, column: 7, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !1827, file: !3, line: 306, column: 6)
!2243 = !DILocation(line: 306, column: 6, scope: !1827)
!2244 = !DILocation(line: 307, column: 3, scope: !2242)
!2245 = !DILocation(line: 307, column: 7, scope: !2242)
!2246 = !DILocation(line: 307, column: 21, scope: !2242)
!2247 = !DILocation(line: 309, column: 26, scope: !2242)
!2248 = !DILocation(line: 309, column: 3, scope: !2242)
!2249 = !DILocation(line: 310, column: 30, scope: !1827)
!2250 = !DILocation(line: 310, column: 34, scope: !1827)
!2251 = !DILocation(line: 310, column: 40, scope: !1827)
!2252 = !DILocation(line: 310, column: 2, scope: !1827)
!2253 = !DILocation(line: 312, column: 9, scope: !1827)
!2254 = !DILocation(line: 312, column: 2, scope: !1827)
!2255 = !DILocation(line: 313, column: 1, scope: !1827)
!2256 = distinct !DISubprogram(name: "__write_seqlock_irqsave", scope: !450, file: !450, line: 1003, type: !2257, scopeLine: 1004, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2260)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{!105, !2259}
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!2260 = !{!2261, !2262, !2263, !2267}
!2261 = !DILocalVariable(name: "sl", arg: 1, scope: !2256, file: !450, line: 1003, type: !2259)
!2262 = !DILocalVariable(name: "flags", scope: !2256, file: !450, line: 1005, type: !105)
!2263 = !DILocalVariable(name: "__dummy", scope: !2264, file: !450, line: 1007, type: !105)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !450, line: 1007, column: 2)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !450, line: 1007, column: 2)
!2266 = distinct !DILexicalBlock(scope: !2256, file: !450, line: 1007, column: 2)
!2267 = !DILocalVariable(name: "__dummy2", scope: !2264, file: !450, line: 1007, type: !105)
!2268 = !DILocation(line: 1003, column: 64, scope: !2256)
!2269 = !DILocation(line: 1005, column: 2, scope: !2256)
!2270 = !DILocation(line: 1005, column: 16, scope: !2256)
!2271 = !DILocation(line: 1007, column: 2, scope: !2256)
!2272 = !DILocation(line: 1007, column: 2, scope: !2266)
!2273 = !DILocation(line: 1007, column: 2, scope: !2264)
!2274 = !DILocation(line: 1007, column: 2, scope: !2265)
!2275 = !DILocation(line: 1008, column: 27, scope: !2256)
!2276 = !DILocation(line: 1008, column: 31, scope: !2256)
!2277 = !DILocation(line: 1008, column: 40, scope: !2256)
!2278 = !DILocation(line: 1008, column: 2, scope: !2256)
!2279 = !DILocation(line: 1009, column: 9, scope: !2256)
!2280 = !DILocation(line: 1010, column: 1, scope: !2256)
!2281 = !DILocation(line: 1009, column: 2, scope: !2256)
!2282 = distinct !DISubprogram(name: "badblocks_update_acked", scope: !3, file: !3, line: 127, type: !2283, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2285)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{null, !151}
!2285 = !{!2286, !2287, !2288, !2289}
!2286 = !DILocalVariable(name: "bb", arg: 1, scope: !2282, file: !3, line: 127, type: !151)
!2287 = !DILocalVariable(name: "p", scope: !2282, file: !3, line: 129, type: !1533)
!2288 = !DILocalVariable(name: "i", scope: !2282, file: !3, line: 130, type: !46)
!2289 = !DILocalVariable(name: "unacked", scope: !2282, file: !3, line: 131, type: !601)
!2290 = !DILocation(line: 127, column: 54, scope: !2282)
!2291 = !DILocation(line: 129, column: 2, scope: !2282)
!2292 = !DILocation(line: 129, column: 7, scope: !2282)
!2293 = !DILocation(line: 129, column: 11, scope: !2282)
!2294 = !DILocation(line: 129, column: 15, scope: !2282)
!2295 = !DILocation(line: 130, column: 2, scope: !2282)
!2296 = !DILocation(line: 130, column: 6, scope: !2282)
!2297 = !DILocation(line: 131, column: 2, scope: !2282)
!2298 = !DILocation(line: 131, column: 7, scope: !2282)
!2299 = !DILocation(line: 133, column: 7, scope: !2300)
!2300 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 133, column: 6)
!2301 = !DILocation(line: 133, column: 11, scope: !2300)
!2302 = !DILocation(line: 133, column: 6, scope: !2282)
!2303 = !DILocation(line: 134, column: 3, scope: !2300)
!2304 = !DILocation(line: 136, column: 9, scope: !2305)
!2305 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 136, column: 2)
!2306 = !DILocation(line: 136, column: 7, scope: !2305)
!2307 = !DILocation(line: 136, column: 14, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2305, file: !3, line: 136, column: 2)
!2309 = !DILocation(line: 136, column: 18, scope: !2308)
!2310 = !DILocation(line: 136, column: 22, scope: !2308)
!2311 = !DILocation(line: 136, column: 16, scope: !2308)
!2312 = !DILocation(line: 136, column: 2, scope: !2305)
!2313 = !DILocation(line: 137, column: 8, scope: !2314)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 137, column: 7)
!2315 = distinct !DILexicalBlock(scope: !2308, file: !3, line: 136, column: 35)
!2316 = !DILocation(line: 137, column: 7, scope: !2315)
!2317 = !DILocation(line: 138, column: 12, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2314, file: !3, line: 137, column: 22)
!2319 = !DILocation(line: 139, column: 4, scope: !2318)
!2320 = !DILocation(line: 141, column: 2, scope: !2315)
!2321 = !DILocation(line: 136, column: 31, scope: !2308)
!2322 = !DILocation(line: 136, column: 2, scope: !2308)
!2323 = distinct !{!2323, !2312, !2324, !1734, !1735}
!2324 = !DILocation(line: 141, column: 2, scope: !2305)
!2325 = !DILocation(line: 143, column: 7, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 143, column: 6)
!2327 = !{i8 0, i8 2}
!2328 = !DILocation(line: 143, column: 6, scope: !2282)
!2329 = !DILocation(line: 144, column: 3, scope: !2326)
!2330 = !DILocation(line: 144, column: 7, scope: !2326)
!2331 = !DILocation(line: 144, column: 21, scope: !2326)
!2332 = !DILocation(line: 145, column: 1, scope: !2282)
!2333 = distinct !DISubprogram(name: "write_sequnlock_irqrestore", scope: !450, file: !450, line: 1035, type: !2334, scopeLine: 1036, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2336)
!2334 = !DISubroutineType(types: !2335)
!2335 = !{null, !2259, !105}
!2336 = !{!2337, !2338}
!2337 = !DILocalVariable(name: "sl", arg: 1, scope: !2333, file: !450, line: 1035, type: !2259)
!2338 = !DILocalVariable(name: "flags", arg: 2, scope: !2333, file: !450, line: 1035, type: !105)
!2339 = !DILocation(line: 1035, column: 39, scope: !2333)
!2340 = !DILocation(line: 1035, column: 57, scope: !2333)
!2341 = !DILocation(line: 1037, column: 25, scope: !2333)
!2342 = !DILocation(line: 1037, column: 29, scope: !2333)
!2343 = !DILocation(line: 1037, column: 38, scope: !2333)
!2344 = !DILocation(line: 1037, column: 2, scope: !2333)
!2345 = !DILocation(line: 1038, column: 26, scope: !2333)
!2346 = !DILocation(line: 1038, column: 30, scope: !2333)
!2347 = !DILocation(line: 1038, column: 36, scope: !2333)
!2348 = !DILocation(line: 1038, column: 2, scope: !2333)
!2349 = !DILocation(line: 1039, column: 1, scope: !2333)
!2350 = distinct !DISubprogram(name: "badblocks_clear", scope: !3, file: !3, line: 330, type: !2351, scopeLine: 331, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2353)
!2351 = !DISubroutineType(types: !2352)
!2352 = !{!46, !151, !1637, !46}
!2353 = !{!2354, !2355, !2356, !2357, !2358, !2359, !2360, !2361, !2362, !2364, !2365, !2370, !2371, !2372, !2376, !2377}
!2354 = !DILocalVariable(name: "bb", arg: 1, scope: !2350, file: !3, line: 330, type: !151)
!2355 = !DILocalVariable(name: "s", arg: 2, scope: !2350, file: !3, line: 330, type: !1637)
!2356 = !DILocalVariable(name: "sectors", arg: 3, scope: !2350, file: !3, line: 330, type: !46)
!2357 = !DILocalVariable(name: "p", scope: !2350, file: !3, line: 332, type: !1533)
!2358 = !DILocalVariable(name: "lo", scope: !2350, file: !3, line: 333, type: !46)
!2359 = !DILocalVariable(name: "hi", scope: !2350, file: !3, line: 333, type: !46)
!2360 = !DILocalVariable(name: "target", scope: !2350, file: !3, line: 334, type: !1637)
!2361 = !DILocalVariable(name: "rv", scope: !2350, file: !3, line: 335, type: !46)
!2362 = !DILocalVariable(name: "mid", scope: !2363, file: !3, line: 356, type: !46)
!2363 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 355, column: 22)
!2364 = !DILocalVariable(name: "a", scope: !2363, file: !3, line: 357, type: !1637)
!2365 = !DILocalVariable(name: "ack", scope: !2366, file: !3, line: 372, type: !46)
!2366 = distinct !DILexicalBlock(scope: !2367, file: !3, line: 370, column: 36)
!2367 = distinct !DILexicalBlock(scope: !2368, file: !3, line: 369, column: 7)
!2368 = distinct !DILexicalBlock(scope: !2369, file: !3, line: 364, column: 15)
!2369 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 364, column: 6)
!2370 = !DILocalVariable(name: "a", scope: !2366, file: !3, line: 373, type: !1637)
!2371 = !DILocalVariable(name: "end", scope: !2366, file: !3, line: 374, type: !1637)
!2372 = !DILocalVariable(name: "ack", scope: !2373, file: !3, line: 398, type: !46)
!2373 = distinct !DILexicalBlock(scope: !2374, file: !3, line: 396, column: 30)
!2374 = distinct !DILexicalBlock(scope: !2375, file: !3, line: 396, column: 8)
!2375 = distinct !DILexicalBlock(scope: !2368, file: !3, line: 394, column: 39)
!2376 = !DILocalVariable(name: "start", scope: !2373, file: !3, line: 399, type: !1637)
!2377 = !DILabel(scope: !2350, name: "out", file: !3, line: 418)
!2378 = !DILocation(line: 330, column: 39, scope: !2350)
!2379 = !DILocation(line: 330, column: 52, scope: !2350)
!2380 = !DILocation(line: 330, column: 59, scope: !2350)
!2381 = !DILocation(line: 332, column: 2, scope: !2350)
!2382 = !DILocation(line: 332, column: 7, scope: !2350)
!2383 = !DILocation(line: 333, column: 2, scope: !2350)
!2384 = !DILocation(line: 333, column: 6, scope: !2350)
!2385 = !DILocation(line: 333, column: 10, scope: !2350)
!2386 = !DILocation(line: 334, column: 2, scope: !2350)
!2387 = !DILocation(line: 334, column: 11, scope: !2350)
!2388 = !DILocation(line: 334, column: 20, scope: !2350)
!2389 = !DILocation(line: 334, column: 24, scope: !2350)
!2390 = !DILocation(line: 334, column: 22, scope: !2350)
!2391 = !DILocation(line: 335, column: 2, scope: !2350)
!2392 = !DILocation(line: 335, column: 6, scope: !2350)
!2393 = !DILocation(line: 337, column: 6, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 337, column: 6)
!2395 = !DILocation(line: 337, column: 10, scope: !2394)
!2396 = !DILocation(line: 337, column: 16, scope: !2394)
!2397 = !DILocation(line: 337, column: 6, scope: !2350)
!2398 = !DILocation(line: 344, column: 12, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 337, column: 21)
!2400 = !DILocation(line: 344, column: 16, scope: !2399)
!2401 = !DILocation(line: 344, column: 10, scope: !2399)
!2402 = !DILocation(line: 344, column: 23, scope: !2399)
!2403 = !DILocation(line: 344, column: 8, scope: !2399)
!2404 = !DILocation(line: 344, column: 5, scope: !2399)
!2405 = !DILocation(line: 345, column: 9, scope: !2399)
!2406 = !DILocation(line: 345, column: 13, scope: !2399)
!2407 = !DILocation(line: 345, column: 5, scope: !2399)
!2408 = !DILocation(line: 346, column: 14, scope: !2399)
!2409 = !DILocation(line: 346, column: 18, scope: !2399)
!2410 = !DILocation(line: 346, column: 10, scope: !2399)
!2411 = !DILocation(line: 347, column: 2, scope: !2399)
!2412 = !DILocation(line: 349, column: 21, scope: !2350)
!2413 = !DILocation(line: 349, column: 25, scope: !2350)
!2414 = !DILocation(line: 349, column: 2, scope: !2350)
!2415 = !DILocation(line: 351, column: 6, scope: !2350)
!2416 = !DILocation(line: 351, column: 10, scope: !2350)
!2417 = !DILocation(line: 351, column: 4, scope: !2350)
!2418 = !DILocation(line: 352, column: 5, scope: !2350)
!2419 = !DILocation(line: 353, column: 7, scope: !2350)
!2420 = !DILocation(line: 353, column: 11, scope: !2350)
!2421 = !DILocation(line: 353, column: 5, scope: !2350)
!2422 = !DILocation(line: 355, column: 2, scope: !2350)
!2423 = !DILocation(line: 355, column: 9, scope: !2350)
!2424 = !DILocation(line: 355, column: 14, scope: !2350)
!2425 = !DILocation(line: 355, column: 12, scope: !2350)
!2426 = !DILocation(line: 355, column: 17, scope: !2350)
!2427 = !DILocation(line: 356, column: 3, scope: !2363)
!2428 = !DILocation(line: 356, column: 7, scope: !2363)
!2429 = !DILocation(line: 356, column: 14, scope: !2363)
!2430 = !DILocation(line: 356, column: 19, scope: !2363)
!2431 = !DILocation(line: 356, column: 17, scope: !2363)
!2432 = !DILocation(line: 356, column: 23, scope: !2363)
!2433 = !DILocation(line: 357, column: 3, scope: !2363)
!2434 = !DILocation(line: 357, column: 12, scope: !2363)
!2435 = !DILocation(line: 357, column: 16, scope: !2363)
!2436 = !DILocation(line: 359, column: 7, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2363, file: !3, line: 359, column: 7)
!2438 = !DILocation(line: 359, column: 11, scope: !2437)
!2439 = !DILocation(line: 359, column: 9, scope: !2437)
!2440 = !DILocation(line: 359, column: 7, scope: !2363)
!2441 = !DILocation(line: 360, column: 9, scope: !2437)
!2442 = !DILocation(line: 360, column: 7, scope: !2437)
!2443 = !DILocation(line: 360, column: 4, scope: !2437)
!2444 = !DILocation(line: 362, column: 9, scope: !2437)
!2445 = !DILocation(line: 362, column: 7, scope: !2437)
!2446 = !DILocation(line: 363, column: 2, scope: !2350)
!2447 = distinct !{!2447, !2422, !2446, !1734, !1735}
!2448 = !DILocation(line: 364, column: 6, scope: !2369)
!2449 = !DILocation(line: 364, column: 11, scope: !2369)
!2450 = !DILocation(line: 364, column: 9, scope: !2369)
!2451 = !DILocation(line: 364, column: 6, scope: !2350)
!2452 = !DILocation(line: 369, column: 8, scope: !2367)
!2453 = !DILocation(line: 369, column: 27, scope: !2367)
!2454 = !DILocation(line: 369, column: 25, scope: !2367)
!2455 = !DILocation(line: 369, column: 43, scope: !2367)
!2456 = !DILocation(line: 369, column: 41, scope: !2367)
!2457 = !DILocation(line: 369, column: 51, scope: !2367)
!2458 = !DILocation(line: 370, column: 8, scope: !2367)
!2459 = !DILocation(line: 370, column: 27, scope: !2367)
!2460 = !DILocation(line: 370, column: 25, scope: !2367)
!2461 = !DILocation(line: 369, column: 7, scope: !2368)
!2462 = !DILocation(line: 372, column: 4, scope: !2366)
!2463 = !DILocation(line: 372, column: 8, scope: !2366)
!2464 = !DILocation(line: 372, column: 14, scope: !2366)
!2465 = !DILocation(line: 373, column: 4, scope: !2366)
!2466 = !DILocation(line: 373, column: 13, scope: !2366)
!2467 = !DILocation(line: 373, column: 17, scope: !2366)
!2468 = !DILocation(line: 374, column: 4, scope: !2366)
!2469 = !DILocation(line: 374, column: 13, scope: !2366)
!2470 = !DILocation(line: 374, column: 19, scope: !2366)
!2471 = !DILocation(line: 374, column: 23, scope: !2366)
!2472 = !DILocation(line: 374, column: 21, scope: !2366)
!2473 = !DILocation(line: 376, column: 8, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2366, file: !3, line: 376, column: 8)
!2475 = !DILocation(line: 376, column: 12, scope: !2474)
!2476 = !DILocation(line: 376, column: 10, scope: !2474)
!2477 = !DILocation(line: 376, column: 8, scope: !2366)
!2478 = !DILocation(line: 378, column: 9, scope: !2479)
!2479 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 378, column: 9)
!2480 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 376, column: 15)
!2481 = !DILocation(line: 378, column: 13, scope: !2479)
!2482 = !DILocation(line: 378, column: 19, scope: !2479)
!2483 = !DILocation(line: 378, column: 9, scope: !2480)
!2484 = !DILocation(line: 379, column: 9, scope: !2485)
!2485 = distinct !DILexicalBlock(scope: !2479, file: !3, line: 378, column: 37)
!2486 = !DILocation(line: 380, column: 6, scope: !2485)
!2487 = !DILocation(line: 382, column: 13, scope: !2480)
!2488 = !DILocation(line: 382, column: 15, scope: !2480)
!2489 = !DILocation(line: 382, column: 14, scope: !2480)
!2490 = !DILocation(line: 382, column: 17, scope: !2480)
!2491 = !DILocation(line: 382, column: 21, scope: !2480)
!2492 = !DILocation(line: 382, column: 23, scope: !2480)
!2493 = !DILocation(line: 382, column: 22, scope: !2480)
!2494 = !DILocation(line: 382, column: 28, scope: !2480)
!2495 = !DILocation(line: 382, column: 32, scope: !2480)
!2496 = !DILocation(line: 382, column: 40, scope: !2480)
!2497 = !DILocation(line: 382, column: 38, scope: !2480)
!2498 = !DILocation(line: 382, column: 44, scope: !2480)
!2499 = !DILocation(line: 382, column: 27, scope: !2480)
!2500 = !DILocation(line: 382, column: 5, scope: !2480)
!2501 = !DILocation(line: 383, column: 5, scope: !2480)
!2502 = !DILocation(line: 383, column: 9, scope: !2480)
!2503 = !DILocation(line: 383, column: 14, scope: !2480)
!2504 = !DILocation(line: 384, column: 13, scope: !2480)
!2505 = !DILocation(line: 384, column: 5, scope: !2480)
!2506 = !DILocation(line: 384, column: 7, scope: !2480)
!2507 = !DILocation(line: 384, column: 11, scope: !2480)
!2508 = !DILocation(line: 385, column: 7, scope: !2480)
!2509 = !DILocation(line: 386, column: 4, scope: !2480)
!2510 = !DILocation(line: 387, column: 12, scope: !2366)
!2511 = !DILocation(line: 387, column: 4, scope: !2366)
!2512 = !DILocation(line: 387, column: 6, scope: !2366)
!2513 = !DILocation(line: 387, column: 10, scope: !2366)
!2514 = !DILocation(line: 389, column: 9, scope: !2366)
!2515 = !DILocation(line: 389, column: 7, scope: !2366)
!2516 = !DILocation(line: 390, column: 6, scope: !2366)
!2517 = !DILocation(line: 391, column: 3, scope: !2367)
!2518 = !DILocation(line: 391, column: 3, scope: !2366)
!2519 = !DILocation(line: 392, column: 3, scope: !2368)
!2520 = !DILocation(line: 392, column: 10, scope: !2368)
!2521 = !DILocation(line: 392, column: 13, scope: !2368)
!2522 = !DILocation(line: 392, column: 18, scope: !2368)
!2523 = !DILocation(line: 393, column: 11, scope: !2368)
!2524 = !DILocation(line: 393, column: 30, scope: !2368)
!2525 = !DILocation(line: 393, column: 28, scope: !2368)
!2526 = !DILocation(line: 393, column: 46, scope: !2368)
!2527 = !DILocation(line: 393, column: 44, scope: !2368)
!2528 = !DILocation(line: 393, column: 49, scope: !2368)
!2529 = !DILocation(line: 394, column: 11, scope: !2368)
!2530 = !DILocation(line: 394, column: 30, scope: !2368)
!2531 = !DILocation(line: 394, column: 28, scope: !2368)
!2532 = !DILocation(line: 0, scope: !2368)
!2533 = !DILocation(line: 396, column: 8, scope: !2374)
!2534 = !DILocation(line: 396, column: 27, scope: !2374)
!2535 = !DILocation(line: 396, column: 25, scope: !2374)
!2536 = !DILocation(line: 396, column: 8, scope: !2375)
!2537 = !DILocation(line: 398, column: 5, scope: !2373)
!2538 = !DILocation(line: 398, column: 9, scope: !2373)
!2539 = !DILocation(line: 398, column: 15, scope: !2373)
!2540 = !DILocation(line: 399, column: 5, scope: !2373)
!2541 = !DILocation(line: 399, column: 14, scope: !2373)
!2542 = !DILocation(line: 399, column: 22, scope: !2373)
!2543 = !DILocation(line: 401, column: 13, scope: !2373)
!2544 = !DILocation(line: 401, column: 5, scope: !2373)
!2545 = !DILocation(line: 401, column: 7, scope: !2373)
!2546 = !DILocation(line: 401, column: 11, scope: !2373)
!2547 = !DILocation(line: 404, column: 4, scope: !2374)
!2548 = !DILocation(line: 405, column: 6, scope: !2375)
!2549 = distinct !{!2549, !2519, !2550, !1734, !1735}
!2550 = !DILocation(line: 406, column: 3, scope: !2368)
!2551 = !DILocation(line: 410, column: 7, scope: !2552)
!2552 = distinct !DILexicalBlock(scope: !2368, file: !3, line: 410, column: 7)
!2553 = !DILocation(line: 410, column: 12, scope: !2552)
!2554 = !DILocation(line: 410, column: 10, scope: !2552)
!2555 = !DILocation(line: 410, column: 15, scope: !2552)
!2556 = !DILocation(line: 410, column: 7, scope: !2368)
!2557 = !DILocation(line: 411, column: 12, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2552, file: !3, line: 410, column: 20)
!2559 = !DILocation(line: 411, column: 14, scope: !2558)
!2560 = !DILocation(line: 411, column: 13, scope: !2558)
!2561 = !DILocation(line: 411, column: 16, scope: !2558)
!2562 = !DILocation(line: 411, column: 20, scope: !2558)
!2563 = !DILocation(line: 411, column: 22, scope: !2558)
!2564 = !DILocation(line: 411, column: 21, scope: !2558)
!2565 = !DILocation(line: 411, column: 27, scope: !2558)
!2566 = !DILocation(line: 411, column: 31, scope: !2558)
!2567 = !DILocation(line: 411, column: 39, scope: !2558)
!2568 = !DILocation(line: 411, column: 37, scope: !2558)
!2569 = !DILocation(line: 411, column: 43, scope: !2558)
!2570 = !DILocation(line: 411, column: 26, scope: !2558)
!2571 = !DILocation(line: 411, column: 4, scope: !2558)
!2572 = !DILocation(line: 412, column: 18, scope: !2558)
!2573 = !DILocation(line: 412, column: 23, scope: !2558)
!2574 = !DILocation(line: 412, column: 21, scope: !2558)
!2575 = !DILocation(line: 412, column: 26, scope: !2558)
!2576 = !DILocation(line: 412, column: 4, scope: !2558)
!2577 = !DILocation(line: 412, column: 8, scope: !2558)
!2578 = !DILocation(line: 412, column: 14, scope: !2558)
!2579 = !DILocation(line: 413, column: 3, scope: !2558)
!2580 = !DILocation(line: 414, column: 2, scope: !2368)
!2581 = !DILocation(line: 416, column: 25, scope: !2350)
!2582 = !DILocation(line: 416, column: 2, scope: !2350)
!2583 = !DILocation(line: 417, column: 2, scope: !2350)
!2584 = !DILocation(line: 417, column: 6, scope: !2350)
!2585 = !DILocation(line: 417, column: 14, scope: !2350)
!2586 = !DILocation(line: 418, column: 1, scope: !2350)
!2587 = !DILocation(line: 419, column: 23, scope: !2350)
!2588 = !DILocation(line: 419, column: 27, scope: !2350)
!2589 = !DILocation(line: 419, column: 2, scope: !2350)
!2590 = !DILocation(line: 420, column: 9, scope: !2350)
!2591 = !DILocation(line: 420, column: 2, scope: !2350)
!2592 = !DILocation(line: 421, column: 1, scope: !2350)
!2593 = distinct !DISubprogram(name: "write_seqlock_irq", scope: !450, file: !450, line: 984, type: !2594, scopeLine: 985, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2596)
!2594 = !DISubroutineType(types: !2595)
!2595 = !{null, !2259}
!2596 = !{!2597}
!2597 = !DILocalVariable(name: "sl", arg: 1, scope: !2593, file: !450, line: 984, type: !2259)
!2598 = !DILocation(line: 984, column: 49, scope: !2593)
!2599 = !DILocation(line: 986, column: 17, scope: !2593)
!2600 = !DILocation(line: 986, column: 21, scope: !2593)
!2601 = !DILocation(line: 986, column: 2, scope: !2593)
!2602 = !DILocation(line: 987, column: 27, scope: !2593)
!2603 = !DILocation(line: 987, column: 31, scope: !2593)
!2604 = !DILocation(line: 987, column: 40, scope: !2593)
!2605 = !DILocation(line: 987, column: 2, scope: !2593)
!2606 = !DILocation(line: 988, column: 1, scope: !2593)
!2607 = distinct !DISubprogram(name: "write_sequnlock_irq", scope: !450, file: !450, line: 997, type: !2594, scopeLine: 998, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2608)
!2608 = !{!2609}
!2609 = !DILocalVariable(name: "sl", arg: 1, scope: !2607, file: !450, line: 997, type: !2259)
!2610 = !DILocation(line: 997, column: 51, scope: !2607)
!2611 = !DILocation(line: 999, column: 25, scope: !2607)
!2612 = !DILocation(line: 999, column: 29, scope: !2607)
!2613 = !DILocation(line: 999, column: 38, scope: !2607)
!2614 = !DILocation(line: 999, column: 2, scope: !2607)
!2615 = !DILocation(line: 1000, column: 19, scope: !2607)
!2616 = !DILocation(line: 1000, column: 23, scope: !2607)
!2617 = !DILocation(line: 1000, column: 2, scope: !2607)
!2618 = !DILocation(line: 1001, column: 1, scope: !2607)
!2619 = distinct !DISubprogram(name: "ack_all_badblocks", scope: !3, file: !3, line: 431, type: !2283, scopeLine: 432, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2620)
!2620 = !{!2621, !2622, !2625, !2626, !2632}
!2621 = !DILocalVariable(name: "bb", arg: 1, scope: !2619, file: !3, line: 431, type: !151)
!2622 = !DILocalVariable(name: "p", scope: !2623, file: !3, line: 439, type: !1533)
!2623 = distinct !DILexicalBlock(scope: !2624, file: !3, line: 438, column: 45)
!2624 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 438, column: 6)
!2625 = !DILocalVariable(name: "i", scope: !2623, file: !3, line: 440, type: !46)
!2626 = !DILocalVariable(name: "start", scope: !2627, file: !3, line: 444, type: !1637)
!2627 = distinct !DILexicalBlock(scope: !2628, file: !3, line: 443, column: 23)
!2628 = distinct !DILexicalBlock(scope: !2629, file: !3, line: 443, column: 8)
!2629 = distinct !DILexicalBlock(scope: !2630, file: !3, line: 442, column: 36)
!2630 = distinct !DILexicalBlock(scope: !2631, file: !3, line: 442, column: 3)
!2631 = distinct !DILexicalBlock(scope: !2623, file: !3, line: 442, column: 3)
!2632 = !DILocalVariable(name: "len", scope: !2627, file: !3, line: 445, type: !46)
!2633 = !DILocation(line: 431, column: 42, scope: !2619)
!2634 = !DILocation(line: 433, column: 6, scope: !2635)
!2635 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 433, column: 6)
!2636 = !DILocation(line: 433, column: 10, scope: !2635)
!2637 = !DILocation(line: 433, column: 15, scope: !2635)
!2638 = !DILocation(line: 433, column: 23, scope: !2635)
!2639 = !DILocation(line: 433, column: 26, scope: !2635)
!2640 = !DILocation(line: 433, column: 30, scope: !2635)
!2641 = !DILocation(line: 433, column: 6, scope: !2619)
!2642 = !DILocation(line: 435, column: 3, scope: !2635)
!2643 = !DILocation(line: 436, column: 21, scope: !2619)
!2644 = !DILocation(line: 436, column: 25, scope: !2619)
!2645 = !DILocation(line: 436, column: 2, scope: !2619)
!2646 = !DILocation(line: 438, column: 6, scope: !2624)
!2647 = !DILocation(line: 438, column: 10, scope: !2624)
!2648 = !DILocation(line: 438, column: 18, scope: !2624)
!2649 = !DILocation(line: 438, column: 23, scope: !2624)
!2650 = !DILocation(line: 438, column: 26, scope: !2624)
!2651 = !DILocation(line: 438, column: 30, scope: !2624)
!2652 = !DILocation(line: 438, column: 6, scope: !2619)
!2653 = !DILocation(line: 439, column: 3, scope: !2623)
!2654 = !DILocation(line: 439, column: 8, scope: !2623)
!2655 = !DILocation(line: 439, column: 12, scope: !2623)
!2656 = !DILocation(line: 439, column: 16, scope: !2623)
!2657 = !DILocation(line: 440, column: 3, scope: !2623)
!2658 = !DILocation(line: 440, column: 7, scope: !2623)
!2659 = !DILocation(line: 442, column: 10, scope: !2631)
!2660 = !DILocation(line: 442, column: 8, scope: !2631)
!2661 = !DILocation(line: 442, column: 15, scope: !2630)
!2662 = !DILocation(line: 442, column: 19, scope: !2630)
!2663 = !DILocation(line: 442, column: 23, scope: !2630)
!2664 = !DILocation(line: 442, column: 17, scope: !2630)
!2665 = !DILocation(line: 442, column: 3, scope: !2631)
!2666 = !DILocation(line: 443, column: 9, scope: !2628)
!2667 = !DILocation(line: 443, column: 8, scope: !2629)
!2668 = !DILocation(line: 444, column: 5, scope: !2627)
!2669 = !DILocation(line: 444, column: 14, scope: !2627)
!2670 = !DILocation(line: 444, column: 22, scope: !2627)
!2671 = !DILocation(line: 445, column: 5, scope: !2627)
!2672 = !DILocation(line: 445, column: 9, scope: !2627)
!2673 = !DILocation(line: 445, column: 15, scope: !2627)
!2674 = !DILocation(line: 447, column: 12, scope: !2627)
!2675 = !DILocation(line: 447, column: 5, scope: !2627)
!2676 = !DILocation(line: 447, column: 7, scope: !2627)
!2677 = !DILocation(line: 447, column: 10, scope: !2627)
!2678 = !DILocation(line: 448, column: 4, scope: !2628)
!2679 = !DILocation(line: 448, column: 4, scope: !2627)
!2680 = !DILocation(line: 449, column: 3, scope: !2629)
!2681 = !DILocation(line: 442, column: 32, scope: !2630)
!2682 = !DILocation(line: 442, column: 3, scope: !2630)
!2683 = distinct !{!2683, !2665, !2684, !1734, !1735}
!2684 = !DILocation(line: 449, column: 3, scope: !2631)
!2685 = !DILocation(line: 450, column: 3, scope: !2623)
!2686 = !DILocation(line: 450, column: 7, scope: !2623)
!2687 = !DILocation(line: 450, column: 21, scope: !2623)
!2688 = !DILocation(line: 451, column: 2, scope: !2624)
!2689 = !DILocation(line: 451, column: 2, scope: !2623)
!2690 = !DILocation(line: 452, column: 23, scope: !2619)
!2691 = !DILocation(line: 452, column: 27, scope: !2619)
!2692 = !DILocation(line: 452, column: 2, scope: !2619)
!2693 = !DILocation(line: 453, column: 1, scope: !2619)
!2694 = distinct !DISubprogram(name: "badblocks_show", scope: !3, file: !3, line: 465, type: !2695, scopeLine: 466, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2697)
!2695 = !DISubroutineType(types: !2696)
!2696 = !{!280, !151, !248, !46}
!2697 = !{!2698, !2699, !2700, !2701, !2702, !2703, !2704, !2705, !2706, !2708, !2709}
!2698 = !DILocalVariable(name: "bb", arg: 1, scope: !2694, file: !3, line: 465, type: !151)
!2699 = !DILocalVariable(name: "page", arg: 2, scope: !2694, file: !3, line: 465, type: !248)
!2700 = !DILocalVariable(name: "unack", arg: 3, scope: !2694, file: !3, line: 465, type: !46)
!2701 = !DILocalVariable(name: "len", scope: !2694, file: !3, line: 467, type: !295)
!2702 = !DILocalVariable(name: "i", scope: !2694, file: !3, line: 468, type: !46)
!2703 = !DILocalVariable(name: "p", scope: !2694, file: !3, line: 469, type: !1533)
!2704 = !DILocalVariable(name: "seq", scope: !2694, file: !3, line: 470, type: !7)
!2705 = !DILabel(scope: !2694, name: "retry", file: !3, line: 475)
!2706 = !DILocalVariable(name: "s", scope: !2707, file: !3, line: 482, type: !1637)
!2707 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 481, column: 43)
!2708 = !DILocalVariable(name: "length", scope: !2707, file: !3, line: 483, type: !7)
!2709 = !DILocalVariable(name: "ack", scope: !2707, file: !3, line: 484, type: !46)
!2710 = !DILocation(line: 465, column: 42, scope: !2694)
!2711 = !DILocation(line: 465, column: 52, scope: !2694)
!2712 = !DILocation(line: 465, column: 62, scope: !2694)
!2713 = !DILocation(line: 467, column: 2, scope: !2694)
!2714 = !DILocation(line: 467, column: 9, scope: !2694)
!2715 = !DILocation(line: 468, column: 2, scope: !2694)
!2716 = !DILocation(line: 468, column: 6, scope: !2694)
!2717 = !DILocation(line: 469, column: 2, scope: !2694)
!2718 = !DILocation(line: 469, column: 7, scope: !2694)
!2719 = !DILocation(line: 469, column: 11, scope: !2694)
!2720 = !DILocation(line: 469, column: 15, scope: !2694)
!2721 = !DILocation(line: 470, column: 2, scope: !2694)
!2722 = !DILocation(line: 470, column: 11, scope: !2694)
!2723 = !DILocation(line: 472, column: 6, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 472, column: 6)
!2725 = !DILocation(line: 472, column: 10, scope: !2724)
!2726 = !DILocation(line: 472, column: 16, scope: !2724)
!2727 = !DILocation(line: 472, column: 6, scope: !2694)
!2728 = !DILocation(line: 473, column: 3, scope: !2724)
!2729 = !DILocation(line: 472, column: 18, scope: !2724)
!2730 = !DILocation(line: 475, column: 1, scope: !2694)
!2731 = !DILocation(line: 476, column: 23, scope: !2694)
!2732 = !DILocation(line: 476, column: 27, scope: !2694)
!2733 = !DILocation(line: 476, column: 8, scope: !2694)
!2734 = !DILocation(line: 476, column: 6, scope: !2694)
!2735 = !DILocation(line: 478, column: 6, scope: !2694)
!2736 = !DILocation(line: 479, column: 4, scope: !2694)
!2737 = !DILocation(line: 481, column: 2, scope: !2694)
!2738 = !DILocation(line: 481, column: 9, scope: !2694)
!2739 = !DILocation(line: 481, column: 13, scope: !2694)
!2740 = !DILocation(line: 481, column: 25, scope: !2694)
!2741 = !DILocation(line: 481, column: 28, scope: !2694)
!2742 = !DILocation(line: 481, column: 32, scope: !2694)
!2743 = !DILocation(line: 481, column: 36, scope: !2694)
!2744 = !DILocation(line: 481, column: 30, scope: !2694)
!2745 = !DILocation(line: 0, scope: !2694)
!2746 = !DILocation(line: 482, column: 3, scope: !2707)
!2747 = !DILocation(line: 482, column: 12, scope: !2707)
!2748 = !DILocation(line: 482, column: 16, scope: !2707)
!2749 = !DILocation(line: 483, column: 3, scope: !2707)
!2750 = !DILocation(line: 483, column: 16, scope: !2707)
!2751 = !DILocation(line: 483, column: 25, scope: !2707)
!2752 = !DILocation(line: 484, column: 3, scope: !2707)
!2753 = !DILocation(line: 484, column: 7, scope: !2707)
!2754 = !DILocation(line: 484, column: 13, scope: !2707)
!2755 = !DILocation(line: 486, column: 4, scope: !2707)
!2756 = !DILocation(line: 488, column: 7, scope: !2757)
!2757 = distinct !DILexicalBlock(scope: !2707, file: !3, line: 488, column: 7)
!2758 = !DILocation(line: 488, column: 13, scope: !2757)
!2759 = !DILocation(line: 488, column: 16, scope: !2757)
!2760 = !DILocation(line: 488, column: 7, scope: !2707)
!2761 = !DILocation(line: 489, column: 4, scope: !2757)
!2762 = distinct !{!2762, !2737, !2763, !1734, !1735}
!2763 = !DILocation(line: 494, column: 2, scope: !2694)
!2764 = !DILocation(line: 491, column: 19, scope: !2707)
!2765 = !DILocation(line: 491, column: 24, scope: !2707)
!2766 = !DILocation(line: 491, column: 23, scope: !2707)
!2767 = !DILocation(line: 491, column: 39, scope: !2707)
!2768 = !DILocation(line: 491, column: 38, scope: !2707)
!2769 = !DILocation(line: 492, column: 25, scope: !2707)
!2770 = !DILocation(line: 492, column: 30, scope: !2707)
!2771 = !DILocation(line: 492, column: 34, scope: !2707)
!2772 = !DILocation(line: 492, column: 27, scope: !2707)
!2773 = !DILocation(line: 493, column: 5, scope: !2707)
!2774 = !DILocation(line: 493, column: 15, scope: !2707)
!2775 = !DILocation(line: 493, column: 19, scope: !2707)
!2776 = !DILocation(line: 493, column: 12, scope: !2707)
!2777 = !DILocation(line: 491, column: 10, scope: !2707)
!2778 = !DILocation(line: 491, column: 7, scope: !2707)
!2779 = !DILocation(line: 495, column: 6, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 495, column: 6)
!2781 = !DILocation(line: 495, column: 12, scope: !2780)
!2782 = !DILocation(line: 495, column: 15, scope: !2780)
!2783 = !DILocation(line: 495, column: 19, scope: !2780)
!2784 = !DILocation(line: 495, column: 6, scope: !2694)
!2785 = !DILocation(line: 496, column: 3, scope: !2780)
!2786 = !DILocation(line: 496, column: 7, scope: !2780)
!2787 = !DILocation(line: 496, column: 21, scope: !2780)
!2788 = !DILocation(line: 498, column: 21, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 498, column: 6)
!2790 = !DILocation(line: 498, column: 25, scope: !2789)
!2791 = !DILocation(line: 498, column: 31, scope: !2789)
!2792 = !DILocation(line: 498, column: 6, scope: !2789)
!2793 = !DILocation(line: 498, column: 6, scope: !2694)
!2794 = !DILocation(line: 499, column: 3, scope: !2789)
!2795 = !DILocation(line: 501, column: 9, scope: !2694)
!2796 = !DILocation(line: 501, column: 2, scope: !2694)
!2797 = !DILocation(line: 502, column: 1, scope: !2694)
!2798 = !DISubprogram(name: "snprintf", scope: !2799, file: !2799, line: 12, type: !2800, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2799 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!2800 = !DISubroutineType(types: !2801)
!2801 = !{!46, !248, !295, !164, null}
!2802 = distinct !DISubprogram(name: "badblocks_store", scope: !3, file: !3, line: 515, type: !2803, scopeLine: 517, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2805)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!280, !151, !164, !295, !46}
!2805 = !{!2806, !2807, !2808, !2809, !2810, !2811, !2812}
!2806 = !DILocalVariable(name: "bb", arg: 1, scope: !2802, file: !3, line: 515, type: !151)
!2807 = !DILocalVariable(name: "page", arg: 2, scope: !2802, file: !3, line: 515, type: !164)
!2808 = !DILocalVariable(name: "len", arg: 3, scope: !2802, file: !3, line: 515, type: !295)
!2809 = !DILocalVariable(name: "unack", arg: 4, scope: !2802, file: !3, line: 516, type: !46)
!2810 = !DILocalVariable(name: "sector", scope: !2802, file: !3, line: 518, type: !99)
!2811 = !DILocalVariable(name: "length", scope: !2802, file: !3, line: 519, type: !46)
!2812 = !DILocalVariable(name: "newline", scope: !2802, file: !3, line: 520, type: !116)
!2813 = !DILocation(line: 515, column: 43, scope: !2802)
!2814 = !DILocation(line: 515, column: 59, scope: !2802)
!2815 = !DILocation(line: 515, column: 72, scope: !2802)
!2816 = !DILocation(line: 516, column: 8, scope: !2802)
!2817 = !DILocation(line: 518, column: 2, scope: !2802)
!2818 = !DILocation(line: 518, column: 21, scope: !2802)
!2819 = !DILocation(line: 519, column: 2, scope: !2802)
!2820 = !DILocation(line: 519, column: 6, scope: !2802)
!2821 = !DILocation(line: 520, column: 2, scope: !2802)
!2822 = !DILocation(line: 520, column: 7, scope: !2802)
!2823 = !DILocation(line: 522, column: 17, scope: !2802)
!2824 = !DILocation(line: 522, column: 10, scope: !2802)
!2825 = !DILocation(line: 522, column: 2, scope: !2802)
!2826 = !DILocation(line: 524, column: 7, scope: !2827)
!2827 = distinct !DILexicalBlock(scope: !2828, file: !3, line: 524, column: 7)
!2828 = distinct !DILexicalBlock(scope: !2802, file: !3, line: 522, column: 65)
!2829 = !DILocation(line: 524, column: 15, scope: !2827)
!2830 = !DILocation(line: 524, column: 7, scope: !2828)
!2831 = !DILocation(line: 525, column: 4, scope: !2827)
!2832 = !DILocation(line: 524, column: 18, scope: !2827)
!2833 = !DILocation(line: 528, column: 7, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2828, file: !3, line: 528, column: 7)
!2835 = !DILocation(line: 528, column: 14, scope: !2834)
!2836 = !DILocation(line: 528, column: 7, scope: !2828)
!2837 = !DILocation(line: 529, column: 4, scope: !2834)
!2838 = !DILocation(line: 530, column: 3, scope: !2828)
!2839 = !DILocation(line: 532, column: 3, scope: !2828)
!2840 = !DILocation(line: 535, column: 20, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2802, file: !3, line: 535, column: 6)
!2842 = !DILocation(line: 535, column: 24, scope: !2841)
!2843 = !DILocation(line: 535, column: 32, scope: !2841)
!2844 = !DILocation(line: 535, column: 41, scope: !2841)
!2845 = !DILocation(line: 535, column: 40, scope: !2841)
!2846 = !DILocation(line: 535, column: 6, scope: !2841)
!2847 = !DILocation(line: 535, column: 6, scope: !2802)
!2848 = !DILocation(line: 536, column: 3, scope: !2841)
!2849 = !DILocation(line: 538, column: 10, scope: !2841)
!2850 = !DILocation(line: 538, column: 3, scope: !2841)
!2851 = !DILocation(line: 539, column: 1, scope: !2802)
!2852 = !DISubprogram(name: "sscanf", scope: !2799, file: !2799, line: 20, type: !2853, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2853 = !DISubroutineType(types: !2854)
!2854 = !{!46, !164, !164, null}
!2855 = distinct !DISubprogram(name: "badblocks_init", scope: !3, file: !3, line: 573, type: !2856, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2858)
!2856 = !DISubroutineType(types: !2857)
!2857 = !{!46, !151, !46}
!2858 = !{!2859, !2860}
!2859 = !DILocalVariable(name: "bb", arg: 1, scope: !2855, file: !3, line: 573, type: !151)
!2860 = !DILocalVariable(name: "enable", arg: 2, scope: !2855, file: !3, line: 573, type: !46)
!2861 = !DILocation(line: 573, column: 38, scope: !2855)
!2862 = !DILocation(line: 573, column: 46, scope: !2855)
!2863 = !DILocation(line: 575, column: 32, scope: !2855)
!2864 = !DILocation(line: 575, column: 36, scope: !2855)
!2865 = !DILocation(line: 575, column: 9, scope: !2855)
!2866 = !DILocation(line: 575, column: 2, scope: !2855)
!2867 = distinct !DISubprogram(name: "__badblocks_init", scope: !3, file: !3, line: 542, type: !2868, scopeLine: 544, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2870)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!46, !156, !151, !46}
!2870 = !{!2871, !2872, !2873, !2874}
!2871 = !DILocalVariable(name: "dev", arg: 1, scope: !2867, file: !3, line: 542, type: !156)
!2872 = !DILocalVariable(name: "bb", arg: 2, scope: !2867, file: !3, line: 542, type: !151)
!2873 = !DILocalVariable(name: "enable", arg: 3, scope: !2867, file: !3, line: 543, type: !46)
!2874 = !DILocalVariable(name: "____s", scope: !2875, file: !3, line: 559, type: !2877)
!2875 = distinct !DILexicalBlock(scope: !2876, file: !3, line: 559, column: 2)
!2876 = distinct !DILexicalBlock(scope: !2867, file: !3, line: 559, column: 2)
!2877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!2878 = !DILocation(line: 542, column: 44, scope: !2867)
!2879 = !DILocation(line: 542, column: 67, scope: !2867)
!2880 = !DILocation(line: 543, column: 7, scope: !2867)
!2881 = !DILocation(line: 545, column: 12, scope: !2867)
!2882 = !DILocation(line: 545, column: 2, scope: !2867)
!2883 = !DILocation(line: 545, column: 6, scope: !2867)
!2884 = !DILocation(line: 545, column: 10, scope: !2867)
!2885 = !DILocation(line: 546, column: 2, scope: !2867)
!2886 = !DILocation(line: 546, column: 6, scope: !2867)
!2887 = !DILocation(line: 546, column: 12, scope: !2867)
!2888 = !DILocation(line: 547, column: 6, scope: !2889)
!2889 = distinct !DILexicalBlock(scope: !2867, file: !3, line: 547, column: 6)
!2890 = !DILocation(line: 547, column: 6, scope: !2867)
!2891 = !DILocation(line: 548, column: 3, scope: !2889)
!2892 = !DILocation(line: 548, column: 7, scope: !2889)
!2893 = !DILocation(line: 548, column: 13, scope: !2889)
!2894 = !DILocation(line: 550, column: 3, scope: !2889)
!2895 = !DILocation(line: 550, column: 7, scope: !2889)
!2896 = !DILocation(line: 550, column: 13, scope: !2889)
!2897 = !DILocation(line: 551, column: 6, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2867, file: !3, line: 551, column: 6)
!2899 = !DILocation(line: 551, column: 6, scope: !2867)
!2900 = !DILocation(line: 552, column: 27, scope: !2898)
!2901 = !DILocation(line: 552, column: 14, scope: !2898)
!2902 = !DILocation(line: 552, column: 3, scope: !2898)
!2903 = !DILocation(line: 552, column: 7, scope: !2898)
!2904 = !DILocation(line: 552, column: 12, scope: !2898)
!2905 = !DILocation(line: 554, column: 14, scope: !2898)
!2906 = !DILocation(line: 554, column: 3, scope: !2898)
!2907 = !DILocation(line: 554, column: 7, scope: !2898)
!2908 = !DILocation(line: 554, column: 12, scope: !2898)
!2909 = !DILocation(line: 555, column: 7, scope: !2910)
!2910 = distinct !DILexicalBlock(scope: !2867, file: !3, line: 555, column: 6)
!2911 = !DILocation(line: 555, column: 11, scope: !2910)
!2912 = !DILocation(line: 555, column: 6, scope: !2867)
!2913 = !DILocation(line: 556, column: 3, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2910, file: !3, line: 555, column: 17)
!2915 = !DILocation(line: 556, column: 7, scope: !2914)
!2916 = !DILocation(line: 556, column: 13, scope: !2914)
!2917 = !DILocation(line: 557, column: 3, scope: !2914)
!2918 = !DILocation(line: 559, column: 2, scope: !2867)
!2919 = !DILocation(line: 559, column: 2, scope: !2876)
!2920 = !DILocation(line: 559, column: 2, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2876, file: !3, line: 559, column: 2)
!2922 = !DILocation(line: 559, column: 2, scope: !2875)
!2923 = !DILocation(line: 561, column: 2, scope: !2867)
!2924 = !DILocation(line: 562, column: 1, scope: !2867)
!2925 = distinct !DISubprogram(name: "devm_init_badblocks", scope: !3, file: !3, line: 579, type: !2926, scopeLine: 580, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2928)
!2926 = !DISubroutineType(types: !2927)
!2927 = !{!46, !156, !151}
!2928 = !{!2929, !2930}
!2929 = !DILocalVariable(name: "dev", arg: 1, scope: !2925, file: !3, line: 579, type: !156)
!2930 = !DILocalVariable(name: "bb", arg: 2, scope: !2925, file: !3, line: 579, type: !151)
!2931 = !DILocation(line: 579, column: 40, scope: !2925)
!2932 = !DILocation(line: 579, column: 63, scope: !2925)
!2933 = !DILocation(line: 581, column: 7, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2925, file: !3, line: 581, column: 6)
!2935 = !DILocation(line: 581, column: 6, scope: !2925)
!2936 = !DILocation(line: 582, column: 3, scope: !2934)
!2937 = !DILocation(line: 583, column: 26, scope: !2925)
!2938 = !DILocation(line: 583, column: 31, scope: !2925)
!2939 = !DILocation(line: 583, column: 9, scope: !2925)
!2940 = !DILocation(line: 583, column: 2, scope: !2925)
!2941 = !DILocation(line: 584, column: 1, scope: !2925)
!2942 = distinct !DISubprogram(name: "badblocks_exit", scope: !3, file: !3, line: 591, type: !2283, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2943)
!2943 = !{!2944}
!2944 = !DILocalVariable(name: "bb", arg: 1, scope: !2942, file: !3, line: 591, type: !151)
!2945 = !DILocation(line: 591, column: 39, scope: !2942)
!2946 = !DILocation(line: 593, column: 7, scope: !2947)
!2947 = distinct !DILexicalBlock(scope: !2942, file: !3, line: 593, column: 6)
!2948 = !DILocation(line: 593, column: 6, scope: !2942)
!2949 = !DILocation(line: 594, column: 3, scope: !2947)
!2950 = !DILocation(line: 595, column: 6, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2942, file: !3, line: 595, column: 6)
!2952 = !DILocation(line: 595, column: 10, scope: !2951)
!2953 = !DILocation(line: 595, column: 6, scope: !2942)
!2954 = !DILocation(line: 596, column: 14, scope: !2951)
!2955 = !DILocation(line: 596, column: 18, scope: !2951)
!2956 = !DILocation(line: 596, column: 23, scope: !2951)
!2957 = !DILocation(line: 596, column: 27, scope: !2951)
!2958 = !DILocation(line: 596, column: 3, scope: !2951)
!2959 = !DILocation(line: 598, column: 9, scope: !2951)
!2960 = !DILocation(line: 598, column: 13, scope: !2951)
!2961 = !DILocation(line: 598, column: 3, scope: !2951)
!2962 = !DILocation(line: 599, column: 2, scope: !2942)
!2963 = !DILocation(line: 599, column: 6, scope: !2942)
!2964 = !DILocation(line: 599, column: 11, scope: !2942)
!2965 = !DILocation(line: 600, column: 1, scope: !2942)
!2966 = !DISubprogram(name: "devm_kfree", scope: !26, file: !26, line: 342, type: !2967, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2967 = !DISubroutineType(types: !2968)
!2968 = !{null, !156, !522}
!2969 = !DISubprogram(name: "kfree", scope: !84, file: !84, line: 227, type: !2970, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2970 = !DISubroutineType(types: !2971)
!2971 = !{null, !522}
!2972 = distinct !DISubprogram(name: "__seqprop_spinlock_sequence", scope: !450, file: !450, line: 275, type: !2973, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2977)
!2973 = !DISubroutineType(types: !2974)
!2974 = !{!7, !2975}
!2975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2976, size: 64)
!2976 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1631)
!2977 = !{!2978, !2979}
!2978 = !DILocalVariable(name: "s", arg: 1, scope: !2972, file: !450, line: 275, type: !2975)
!2979 = !DILocalVariable(name: "seq", scope: !2972, file: !450, line: 275, type: !7)
!2980 = !DILocation(line: 275, column: 1, scope: !2972)
!2981 = !DILocation(line: 275, column: 1, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2972, file: !450, line: 275, column: 1)
!2983 = !DILocation(line: 275, column: 1, scope: !2984)
!2984 = distinct !DILexicalBlock(scope: !2982, file: !450, line: 275, column: 1)
!2985 = !DILocation(line: 275, column: 1, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2972, file: !450, line: 275, column: 1)
!2987 = distinct !DISubprogram(name: "cpu_relax", scope: !2988, file: !2988, line: 16, type: !1272, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2988 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3605265f38a0580735b11842c92ee9df")
!2989 = !DILocation(line: 18, column: 2, scope: !2987)
!2990 = !DILocation(line: 19, column: 1, scope: !2987)
!2991 = distinct !DISubprogram(name: "kcsan_atomic_next", scope: !2992, file: !2992, line: 203, type: !2993, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2995)
!2992 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!2993 = !DISubroutineType(types: !2994)
!2994 = !{null, !46}
!2995 = !{!2996}
!2996 = !DILocalVariable(name: "n", arg: 1, scope: !2991, file: !2992, line: 203, type: !46)
!2997 = !DILocation(line: 203, column: 42, scope: !2991)
!2998 = !DILocation(line: 203, column: 48, scope: !2991)
!2999 = distinct !DISubprogram(name: "rep_nop", scope: !2988, file: !2988, line: 11, type: !1272, scopeLine: 12, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3000 = !DILocation(line: 13, column: 2, scope: !2999)
!3001 = !{i64 2005994}
!3002 = !DILocation(line: 14, column: 1, scope: !2999)
!3003 = distinct !DISubprogram(name: "do_read_seqcount_retry", scope: !450, file: !450, line: 446, type: !3004, scopeLine: 447, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3008)
!3004 = !DISubroutineType(types: !3005)
!3005 = !{!46, !3006, !7}
!3006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3007, size: 64)
!3007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !449)
!3008 = !{!3009, !3010}
!3009 = !DILocalVariable(name: "s", arg: 1, scope: !3003, file: !450, line: 446, type: !3006)
!3010 = !DILocalVariable(name: "start", arg: 2, scope: !3003, file: !450, line: 446, type: !7)
!3011 = !DILocation(line: 446, column: 60, scope: !3003)
!3012 = !DILocation(line: 446, column: 72, scope: !3003)
!3013 = !DILocation(line: 448, column: 2, scope: !3003)
!3014 = !DILocation(line: 448, column: 2, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3003, file: !450, line: 448, column: 2)
!3016 = !DILocation(line: 448, column: 2, scope: !3017)
!3017 = distinct !DILexicalBlock(scope: !3015, file: !450, line: 448, column: 2)
!3018 = !DILocation(line: 448, column: 2, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !3015, file: !450, line: 448, column: 2)
!3020 = !DILocation(line: 448, column: 2, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !3019, file: !450, line: 448, column: 2)
!3022 = !{i64 2149862478}
!3023 = !DILocation(line: 449, column: 34, scope: !3003)
!3024 = !DILocation(line: 449, column: 37, scope: !3003)
!3025 = !DILocation(line: 449, column: 9, scope: !3003)
!3026 = !DILocation(line: 449, column: 2, scope: !3003)
!3027 = distinct !DISubprogram(name: "__seqprop_spinlock_ptr", scope: !450, file: !450, line: 275, type: !3028, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3031)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!3030, !2877}
!3030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!3031 = !{!3032}
!3032 = !DILocalVariable(name: "s", arg: 1, scope: !3027, file: !450, line: 275, type: !2877)
!3033 = !DILocation(line: 275, column: 1, scope: !3027)
!3034 = distinct !DISubprogram(name: "do___read_seqcount_retry", scope: !450, file: !450, line: 426, type: !3004, scopeLine: 427, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3035)
!3035 = !{!3036, !3037}
!3036 = !DILocalVariable(name: "s", arg: 1, scope: !3034, file: !450, line: 426, type: !3006)
!3037 = !DILocalVariable(name: "start", arg: 2, scope: !3034, file: !450, line: 426, type: !7)
!3038 = !DILocation(line: 426, column: 62, scope: !3034)
!3039 = !DILocation(line: 426, column: 74, scope: !3034)
!3040 = !DILocation(line: 428, column: 2, scope: !3034)
!3041 = !DILocation(line: 429, column: 9, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3034, file: !450, line: 429, column: 9)
!3043 = !DILocation(line: 429, column: 9, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3042, file: !450, line: 429, column: 9)
!3045 = !DILocation(line: 429, column: 9, scope: !3034)
!3046 = !DILocation(line: 429, column: 2, scope: !3034)
!3047 = !DISubprogram(name: "_raw_spin_lock_irqsave", scope: !3048, file: !3048, line: 32, type: !3049, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3048 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!3049 = !DISubroutineType(types: !3050)
!3050 = !{!105, !3051}
!3051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!3052 = distinct !DISubprogram(name: "spinlock_check", scope: !3053, file: !3053, line: 324, type: !3054, scopeLine: 325, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3057)
!3053 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!3051, !3056}
!3056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!3057 = !{!3058}
!3058 = !DILocalVariable(name: "lock", arg: 1, scope: !3052, file: !3053, line: 324, type: !3056)
!3059 = !DILocation(line: 324, column: 67, scope: !3052)
!3060 = !DILocation(line: 326, column: 10, scope: !3052)
!3061 = !DILocation(line: 326, column: 16, scope: !3052)
!3062 = !DILocation(line: 326, column: 2, scope: !3052)
!3063 = distinct !DISubprogram(name: "do_write_seqcount_begin", scope: !450, file: !450, line: 539, type: !3064, scopeLine: 540, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3066)
!3064 = !DISubroutineType(types: !3065)
!3065 = !{null, !3030}
!3066 = !{!3067}
!3067 = !DILocalVariable(name: "s", arg: 1, scope: !3063, file: !450, line: 539, type: !3030)
!3068 = !DILocation(line: 539, column: 56, scope: !3063)
!3069 = !DILocation(line: 541, column: 33, scope: !3063)
!3070 = !DILocation(line: 541, column: 2, scope: !3063)
!3071 = !DILocation(line: 542, column: 1, scope: !3063)
!3072 = distinct !DISubprogram(name: "do_write_seqcount_begin_nested", scope: !450, file: !450, line: 513, type: !3073, scopeLine: 514, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3075)
!3073 = !DISubroutineType(types: !3074)
!3074 = !{null, !3030, !46}
!3075 = !{!3076, !3077}
!3076 = !DILocalVariable(name: "s", arg: 1, scope: !3072, file: !450, line: 513, type: !3030)
!3077 = !DILocalVariable(name: "subclass", arg: 2, scope: !3072, file: !450, line: 513, type: !46)
!3078 = !DILocation(line: 513, column: 63, scope: !3072)
!3079 = !DILocation(line: 513, column: 70, scope: !3072)
!3080 = !DILocation(line: 515, column: 2, scope: !3072)
!3081 = !DILocation(line: 515, column: 2, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3072, file: !450, line: 515, column: 2)
!3083 = !DILocation(line: 516, column: 30, scope: !3072)
!3084 = !DILocation(line: 516, column: 2, scope: !3072)
!3085 = !DILocation(line: 517, column: 1, scope: !3072)
!3086 = distinct !DISubprogram(name: "do_raw_write_seqcount_begin", scope: !450, file: !450, line: 466, type: !3064, scopeLine: 467, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3087)
!3087 = !{!3088}
!3088 = !DILocalVariable(name: "s", arg: 1, scope: !3086, file: !450, line: 466, type: !3030)
!3089 = !DILocation(line: 466, column: 60, scope: !3086)
!3090 = !DILocation(line: 468, column: 2, scope: !3086)
!3091 = !DILocation(line: 469, column: 2, scope: !3086)
!3092 = !DILocation(line: 469, column: 5, scope: !3086)
!3093 = !DILocation(line: 469, column: 13, scope: !3086)
!3094 = !DILocation(line: 470, column: 2, scope: !3086)
!3095 = !DILocation(line: 470, column: 2, scope: !3096)
!3096 = distinct !DILexicalBlock(scope: !3086, file: !450, line: 470, column: 2)
!3097 = !DILocation(line: 470, column: 2, scope: !3098)
!3098 = distinct !DILexicalBlock(scope: !3096, file: !450, line: 470, column: 2)
!3099 = !{i64 2149862751}
!3100 = !DILocation(line: 471, column: 1, scope: !3086)
!3101 = distinct !DISubprogram(name: "kcsan_nestable_atomic_begin", scope: !2992, file: !2992, line: 199, type: !1272, scopeLine: 199, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3102 = !DILocation(line: 199, column: 56, scope: !3101)
!3103 = distinct !DISubprogram(name: "do_write_seqcount_end", scope: !450, file: !450, line: 559, type: !3064, scopeLine: 560, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3104)
!3104 = !{!3105}
!3105 = !DILocalVariable(name: "s", arg: 1, scope: !3103, file: !450, line: 559, type: !3030)
!3106 = !DILocation(line: 559, column: 54, scope: !3103)
!3107 = !DILocation(line: 561, column: 2, scope: !3103)
!3108 = !DILocation(line: 561, column: 2, scope: !3109)
!3109 = distinct !DILexicalBlock(scope: !3103, file: !450, line: 561, column: 2)
!3110 = !DILocation(line: 562, column: 28, scope: !3103)
!3111 = !DILocation(line: 562, column: 2, scope: !3103)
!3112 = !DILocation(line: 563, column: 1, scope: !3103)
!3113 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !3053, file: !3053, line: 404, type: !3114, scopeLine: 405, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3116)
!3114 = !DISubroutineType(types: !3115)
!3115 = !{null, !3056, !105}
!3116 = !{!3117, !3118, !3119, !3122}
!3117 = !DILocalVariable(name: "lock", arg: 1, scope: !3113, file: !3053, line: 404, type: !3056)
!3118 = !DILocalVariable(name: "flags", arg: 2, scope: !3113, file: !3053, line: 404, type: !105)
!3119 = !DILocalVariable(name: "__dummy", scope: !3120, file: !3053, line: 406, type: !105)
!3120 = distinct !DILexicalBlock(scope: !3121, file: !3053, line: 406, column: 2)
!3121 = distinct !DILexicalBlock(scope: !3113, file: !3053, line: 406, column: 2)
!3122 = !DILocalVariable(name: "__dummy2", scope: !3120, file: !3053, line: 406, type: !105)
!3123 = !DILocation(line: 404, column: 64, scope: !3113)
!3124 = !DILocation(line: 404, column: 84, scope: !3113)
!3125 = !DILocation(line: 406, column: 2, scope: !3113)
!3126 = !DILocation(line: 406, column: 2, scope: !3120)
!3127 = !DILocation(line: 406, column: 2, scope: !3121)
!3128 = !DILocation(line: 407, column: 1, scope: !3113)
!3129 = distinct !DISubprogram(name: "do_raw_write_seqcount_end", scope: !450, file: !450, line: 487, type: !3064, scopeLine: 488, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3130)
!3130 = !{!3131}
!3131 = !DILocalVariable(name: "s", arg: 1, scope: !3129, file: !450, line: 487, type: !3030)
!3132 = !DILocation(line: 487, column: 58, scope: !3129)
!3133 = !DILocation(line: 489, column: 2, scope: !3129)
!3134 = !DILocation(line: 489, column: 2, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3129, file: !450, line: 489, column: 2)
!3136 = !DILocation(line: 489, column: 2, scope: !3137)
!3137 = distinct !DILexicalBlock(scope: !3135, file: !450, line: 489, column: 2)
!3138 = !{i64 2149863024}
!3139 = !DILocation(line: 490, column: 2, scope: !3129)
!3140 = !DILocation(line: 490, column: 5, scope: !3129)
!3141 = !DILocation(line: 490, column: 13, scope: !3129)
!3142 = !DILocation(line: 491, column: 2, scope: !3129)
!3143 = !DILocation(line: 492, column: 1, scope: !3129)
!3144 = distinct !DISubprogram(name: "kcsan_nestable_atomic_end", scope: !2992, file: !2992, line: 200, type: !1272, scopeLine: 200, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!3145 = !DILocation(line: 200, column: 54, scope: !3144)
!3146 = !DISubprogram(name: "_raw_spin_unlock_irqrestore", scope: !3048, file: !3048, line: 43, type: !3147, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3147 = !DISubroutineType(types: !3148)
!3148 = !{null, !3051, !105}
!3149 = distinct !DISubprogram(name: "spin_lock_irq", scope: !3053, file: !3053, line: 374, type: !3150, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3152)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{null, !3056}
!3152 = !{!3153}
!3153 = !DILocalVariable(name: "lock", arg: 1, scope: !3149, file: !3053, line: 374, type: !3056)
!3154 = !DILocation(line: 374, column: 55, scope: !3149)
!3155 = !DILocation(line: 376, column: 2, scope: !3149)
!3156 = !DILocation(line: 377, column: 1, scope: !3149)
!3157 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !3048, file: !3048, line: 29, type: !3158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{null, !3051}
!3160 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !3053, file: !3053, line: 399, type: !3150, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3161)
!3161 = !{!3162}
!3162 = !DILocalVariable(name: "lock", arg: 1, scope: !3160, file: !3053, line: 399, type: !3056)
!3163 = !DILocation(line: 399, column: 57, scope: !3160)
!3164 = !DILocation(line: 401, column: 2, scope: !3160)
!3165 = !DILocation(line: 402, column: 1, scope: !3160)
!3166 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !3048, file: !3048, line: 41, type: !3158, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3167 = distinct !DISubprogram(name: "devm_kzalloc", scope: !26, file: !26, line: 312, type: !3168, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3170)
!3168 = !DISubroutineType(types: !3169)
!3169 = !{!94, !156, !295, !103}
!3170 = !{!3171, !3172, !3173}
!3171 = !DILocalVariable(name: "dev", arg: 1, scope: !3167, file: !26, line: 312, type: !156)
!3172 = !DILocalVariable(name: "size", arg: 2, scope: !3167, file: !26, line: 312, type: !295)
!3173 = !DILocalVariable(name: "gfp", arg: 3, scope: !3167, file: !26, line: 312, type: !103)
!3174 = !DILocation(line: 312, column: 49, scope: !3167)
!3175 = !DILocation(line: 312, column: 61, scope: !3167)
!3176 = !DILocation(line: 312, column: 73, scope: !3167)
!3177 = !DILocation(line: 314, column: 22, scope: !3167)
!3178 = !DILocation(line: 314, column: 27, scope: !3167)
!3179 = !DILocation(line: 314, column: 33, scope: !3167)
!3180 = !DILocation(line: 314, column: 37, scope: !3167)
!3181 = !DILocation(line: 314, column: 9, scope: !3167)
!3182 = !DILocation(line: 314, column: 2, scope: !3167)
!3183 = distinct !DISubprogram(name: "kzalloc", scope: !84, file: !84, line: 719, type: !3184, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3186)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!94, !295, !103}
!3186 = !{!3187, !3188}
!3187 = !DILocalVariable(name: "size", arg: 1, scope: !3183, file: !84, line: 719, type: !295)
!3188 = !DILocalVariable(name: "flags", arg: 2, scope: !3183, file: !84, line: 719, type: !103)
!3189 = !DILocation(line: 719, column: 52, scope: !3183)
!3190 = !DILocation(line: 719, column: 64, scope: !3183)
!3191 = !DILocation(line: 721, column: 17, scope: !3183)
!3192 = !DILocation(line: 721, column: 23, scope: !3183)
!3193 = !DILocation(line: 721, column: 29, scope: !3183)
!3194 = !DILocation(line: 721, column: 9, scope: !3183)
!3195 = !DILocation(line: 721, column: 2, scope: !3183)
!3196 = distinct !DISubprogram(name: "__seqcount_init", scope: !450, file: !450, line: 71, type: !3197, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3201)
!3197 = !DISubroutineType(types: !3198)
!3198 = !{null, !3030, !164, !3199}
!3199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3200, size: 64)
!3200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1196, line: 206, elements: !383)
!3201 = !{!3202, !3203, !3204}
!3202 = !DILocalVariable(name: "s", arg: 1, scope: !3196, file: !450, line: 71, type: !3030)
!3203 = !DILocalVariable(name: "name", arg: 2, scope: !3196, file: !450, line: 71, type: !164)
!3204 = !DILocalVariable(name: "key", arg: 3, scope: !3196, file: !450, line: 72, type: !3199)
!3205 = !DILocation(line: 71, column: 48, scope: !3196)
!3206 = !DILocation(line: 71, column: 63, scope: !3196)
!3207 = !DILocation(line: 72, column: 31, scope: !3196)
!3208 = !DILocation(line: 77, column: 2, scope: !3196)
!3209 = !DILocation(line: 77, column: 2, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3196, file: !450, line: 77, column: 2)
!3211 = !DILocation(line: 78, column: 2, scope: !3196)
!3212 = !DILocation(line: 78, column: 5, scope: !3196)
!3213 = !DILocation(line: 78, column: 14, scope: !3196)
!3214 = !DILocation(line: 79, column: 1, scope: !3196)
!3215 = !DISubprogram(name: "devm_kmalloc", scope: !26, file: !26, line: 305, type: !3168, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3216 = distinct !DISubprogram(name: "kmalloc", scope: !84, file: !84, line: 591, type: !3184, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3217)
!3217 = !{!3218, !3219, !3220}
!3218 = !DILocalVariable(name: "size", arg: 1, scope: !3216, file: !84, line: 591, type: !295)
!3219 = !DILocalVariable(name: "flags", arg: 2, scope: !3216, file: !84, line: 591, type: !103)
!3220 = !DILocalVariable(name: "index", scope: !3221, file: !84, line: 594, type: !7)
!3221 = distinct !DILexicalBlock(scope: !3222, file: !84, line: 593, column: 42)
!3222 = distinct !DILexicalBlock(scope: !3216, file: !84, line: 593, column: 6)
!3223 = !DILocation(line: 591, column: 61, scope: !3216)
!3224 = !DILocation(line: 591, column: 73, scope: !3216)
!3225 = !DILocation(line: 593, column: 27, scope: !3222)
!3226 = !DILocation(line: 593, column: 6, scope: !3222)
!3227 = !DILocation(line: 593, column: 33, scope: !3222)
!3228 = !DILocation(line: 593, column: 36, scope: !3222)
!3229 = !DILocation(line: 593, column: 6, scope: !3216)
!3230 = !DILocation(line: 594, column: 3, scope: !3221)
!3231 = !DILocation(line: 594, column: 16, scope: !3221)
!3232 = !DILocation(line: 596, column: 7, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3221, file: !84, line: 596, column: 7)
!3234 = !DILocation(line: 596, column: 12, scope: !3233)
!3235 = !DILocation(line: 596, column: 7, scope: !3221)
!3236 = !DILocation(line: 597, column: 25, scope: !3233)
!3237 = !DILocation(line: 597, column: 31, scope: !3233)
!3238 = !DILocation(line: 597, column: 11, scope: !3233)
!3239 = !DILocation(line: 597, column: 4, scope: !3233)
!3240 = !DILocation(line: 599, column: 11, scope: !3221)
!3241 = !DILocation(line: 599, column: 9, scope: !3221)
!3242 = !DILocation(line: 601, column: 33, scope: !3221)
!3243 = !DILocation(line: 601, column: 40, scope: !3221)
!3244 = !DILocation(line: 601, column: 20, scope: !3221)
!3245 = !DILocation(line: 601, column: 5, scope: !3221)
!3246 = !DILocation(line: 601, column: 51, scope: !3221)
!3247 = !DILocation(line: 602, column: 5, scope: !3221)
!3248 = !DILocation(line: 602, column: 12, scope: !3221)
!3249 = !DILocation(line: 600, column: 10, scope: !3221)
!3250 = !DILocation(line: 600, column: 3, scope: !3221)
!3251 = !DILocation(line: 603, column: 2, scope: !3222)
!3252 = !DILocation(line: 604, column: 19, scope: !3216)
!3253 = !DILocation(line: 604, column: 25, scope: !3216)
!3254 = !DILocation(line: 604, column: 9, scope: !3216)
!3255 = !DILocation(line: 604, column: 2, scope: !3216)
!3256 = !DILocation(line: 605, column: 1, scope: !3216)
!3257 = !DISubprogram(name: "kmalloc_large", scope: !84, file: !84, line: 531, type: !3184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3258 = distinct !DISubprogram(name: "__kmalloc_index", scope: !84, file: !84, line: 444, type: !3259, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3261)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!7, !295, !601}
!3261 = !{!3262, !3263}
!3262 = !DILocalVariable(name: "size", arg: 1, scope: !3258, file: !84, line: 444, type: !295)
!3263 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !3258, file: !84, line: 445, type: !601)
!3264 = !DILocation(line: 444, column: 60, scope: !3258)
!3265 = !DILocation(line: 445, column: 16, scope: !3258)
!3266 = !DILocation(line: 447, column: 7, scope: !3267)
!3267 = distinct !DILexicalBlock(scope: !3258, file: !84, line: 447, column: 6)
!3268 = !DILocation(line: 447, column: 6, scope: !3258)
!3269 = !DILocation(line: 448, column: 3, scope: !3267)
!3270 = !DILocation(line: 450, column: 6, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3258, file: !84, line: 450, column: 6)
!3272 = !DILocation(line: 450, column: 11, scope: !3271)
!3273 = !DILocation(line: 450, column: 6, scope: !3258)
!3274 = !DILocation(line: 451, column: 3, scope: !3271)
!3275 = !DILocation(line: 453, column: 32, scope: !3276)
!3276 = distinct !DILexicalBlock(scope: !3258, file: !84, line: 453, column: 6)
!3277 = !DILocation(line: 453, column: 37, scope: !3276)
!3278 = !DILocation(line: 453, column: 42, scope: !3276)
!3279 = !DILocation(line: 453, column: 45, scope: !3276)
!3280 = !DILocation(line: 453, column: 50, scope: !3276)
!3281 = !DILocation(line: 453, column: 6, scope: !3258)
!3282 = !DILocation(line: 454, column: 3, scope: !3276)
!3283 = !DILocation(line: 455, column: 32, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3258, file: !84, line: 455, column: 6)
!3285 = !DILocation(line: 455, column: 37, scope: !3284)
!3286 = !DILocation(line: 455, column: 43, scope: !3284)
!3287 = !DILocation(line: 455, column: 46, scope: !3284)
!3288 = !DILocation(line: 455, column: 51, scope: !3284)
!3289 = !DILocation(line: 455, column: 6, scope: !3258)
!3290 = !DILocation(line: 456, column: 3, scope: !3284)
!3291 = !DILocation(line: 457, column: 6, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3258, file: !84, line: 457, column: 6)
!3293 = !DILocation(line: 457, column: 11, scope: !3292)
!3294 = !DILocation(line: 457, column: 6, scope: !3258)
!3295 = !DILocation(line: 457, column: 26, scope: !3292)
!3296 = !DILocation(line: 458, column: 6, scope: !3297)
!3297 = distinct !DILexicalBlock(scope: !3258, file: !84, line: 458, column: 6)
!3298 = !DILocation(line: 458, column: 11, scope: !3297)
!3299 = !DILocation(line: 458, column: 6, scope: !3258)
!3300 = !DILocation(line: 458, column: 26, scope: !3297)
!3301 = !DILocation(line: 459, column: 6, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3258, file: !84, line: 459, column: 6)
!3303 = !DILocation(line: 459, column: 11, scope: !3302)
!3304 = !DILocation(line: 459, column: 6, scope: !3258)
!3305 = !DILocation(line: 459, column: 26, scope: !3302)
!3306 = !DILocation(line: 460, column: 6, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3258, file: !84, line: 460, column: 6)
!3308 = !DILocation(line: 460, column: 11, scope: !3307)
!3309 = !DILocation(line: 460, column: 6, scope: !3258)
!3310 = !DILocation(line: 460, column: 26, scope: !3307)
!3311 = !DILocation(line: 461, column: 6, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3258, file: !84, line: 461, column: 6)
!3313 = !DILocation(line: 461, column: 11, scope: !3312)
!3314 = !DILocation(line: 461, column: 6, scope: !3258)
!3315 = !DILocation(line: 461, column: 26, scope: !3312)
!3316 = !DILocation(line: 462, column: 6, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3258, file: !84, line: 462, column: 6)
!3318 = !DILocation(line: 462, column: 11, scope: !3317)
!3319 = !DILocation(line: 462, column: 6, scope: !3258)
!3320 = !DILocation(line: 462, column: 26, scope: !3317)
!3321 = !DILocation(line: 463, column: 6, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3258, file: !84, line: 463, column: 6)
!3323 = !DILocation(line: 463, column: 11, scope: !3322)
!3324 = !DILocation(line: 463, column: 6, scope: !3258)
!3325 = !DILocation(line: 463, column: 26, scope: !3322)
!3326 = !DILocation(line: 464, column: 6, scope: !3327)
!3327 = distinct !DILexicalBlock(scope: !3258, file: !84, line: 464, column: 6)
!3328 = !DILocation(line: 464, column: 11, scope: !3327)
!3329 = !DILocation(line: 464, column: 6, scope: !3258)
!3330 = !DILocation(line: 464, column: 26, scope: !3327)
!3331 = !DILocation(line: 465, column: 6, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3258, file: !84, line: 465, column: 6)
!3333 = !DILocation(line: 465, column: 11, scope: !3332)
!3334 = !DILocation(line: 465, column: 6, scope: !3258)
!3335 = !DILocation(line: 465, column: 26, scope: !3332)
!3336 = !DILocation(line: 466, column: 6, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3258, file: !84, line: 466, column: 6)
!3338 = !DILocation(line: 466, column: 11, scope: !3337)
!3339 = !DILocation(line: 466, column: 6, scope: !3258)
!3340 = !DILocation(line: 466, column: 26, scope: !3337)
!3341 = !DILocation(line: 467, column: 6, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3258, file: !84, line: 467, column: 6)
!3343 = !DILocation(line: 467, column: 11, scope: !3342)
!3344 = !DILocation(line: 467, column: 6, scope: !3258)
!3345 = !DILocation(line: 467, column: 26, scope: !3342)
!3346 = !DILocation(line: 468, column: 6, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3258, file: !84, line: 468, column: 6)
!3348 = !DILocation(line: 468, column: 11, scope: !3347)
!3349 = !DILocation(line: 468, column: 6, scope: !3258)
!3350 = !DILocation(line: 468, column: 26, scope: !3347)
!3351 = !DILocation(line: 469, column: 6, scope: !3352)
!3352 = distinct !DILexicalBlock(scope: !3258, file: !84, line: 469, column: 6)
!3353 = !DILocation(line: 469, column: 11, scope: !3352)
!3354 = !DILocation(line: 469, column: 6, scope: !3258)
!3355 = !DILocation(line: 469, column: 26, scope: !3352)
!3356 = !DILocation(line: 470, column: 6, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3258, file: !84, line: 470, column: 6)
!3358 = !DILocation(line: 470, column: 11, scope: !3357)
!3359 = !DILocation(line: 470, column: 6, scope: !3258)
!3360 = !DILocation(line: 470, column: 26, scope: !3357)
!3361 = !DILocation(line: 471, column: 6, scope: !3362)
!3362 = distinct !DILexicalBlock(scope: !3258, file: !84, line: 471, column: 6)
!3363 = !DILocation(line: 471, column: 11, scope: !3362)
!3364 = !DILocation(line: 471, column: 6, scope: !3258)
!3365 = !DILocation(line: 471, column: 26, scope: !3362)
!3366 = !DILocation(line: 472, column: 6, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3258, file: !84, line: 472, column: 6)
!3368 = !DILocation(line: 472, column: 11, scope: !3367)
!3369 = !DILocation(line: 472, column: 6, scope: !3258)
!3370 = !DILocation(line: 472, column: 26, scope: !3367)
!3371 = !DILocation(line: 473, column: 6, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3258, file: !84, line: 473, column: 6)
!3373 = !DILocation(line: 473, column: 11, scope: !3372)
!3374 = !DILocation(line: 473, column: 6, scope: !3258)
!3375 = !DILocation(line: 473, column: 26, scope: !3372)
!3376 = !DILocation(line: 474, column: 6, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3258, file: !84, line: 474, column: 6)
!3378 = !DILocation(line: 474, column: 11, scope: !3377)
!3379 = !DILocation(line: 474, column: 6, scope: !3258)
!3380 = !DILocation(line: 474, column: 27, scope: !3377)
!3381 = !DILocation(line: 475, column: 6, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3258, file: !84, line: 475, column: 6)
!3383 = !DILocation(line: 475, column: 11, scope: !3382)
!3384 = !DILocation(line: 475, column: 6, scope: !3258)
!3385 = !DILocation(line: 475, column: 32, scope: !3382)
!3386 = !DILocation(line: 477, column: 50, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3258, file: !84, line: 477, column: 6)
!3388 = !DILocation(line: 477, column: 6, scope: !3258)
!3389 = !DILocation(line: 478, column: 3, scope: !3387)
!3390 = !DILocation(line: 478, column: 3, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3392, file: !84, line: 478, column: 3)
!3392 = distinct !DILexicalBlock(scope: !3387, file: !84, line: 478, column: 3)
!3393 = !{i32 -2142306998}
!3394 = !DILocation(line: 478, column: 3, scope: !3392)
!3395 = !DILocation(line: 480, column: 3, scope: !3387)
!3396 = !DILocation(line: 480, column: 3, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3387, file: !84, line: 480, column: 3)
!3398 = !DILocation(line: 480, column: 3, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3397, file: !84, line: 480, column: 3)
!3400 = !DILocation(line: 480, column: 3, scope: !3401)
!3401 = distinct !DILexicalBlock(scope: !3397, file: !84, line: 480, column: 3)
!3402 = !{i64 2152660501, i64 2152660530, i64 2152660576, i64 2152660634, i64 2152660688, i64 2152660742, i64 2152660797, i64 2152660828}
!3403 = !DILocation(line: 483, column: 2, scope: !3258)
!3404 = !DILocation(line: 484, column: 1, scope: !3258)
!3405 = !DISubprogram(name: "kmalloc_trace", scope: !84, file: !84, line: 525, type: !3406, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3406 = !DISubroutineType(types: !3407)
!3407 = !{!94, !3408, !103, !295}
!3408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3409, size: 64)
!3409 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3410, line: 11, flags: DIFlagFwdDecl)
!3410 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3411 = distinct !DISubprogram(name: "kmalloc_type", scope: !84, file: !84, line: 401, type: !3412, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3414)
!3412 = !DISubroutineType(types: !3413)
!3413 = !{!83, !103, !105}
!3414 = !{!3415, !3416}
!3415 = !DILocalVariable(name: "flags", arg: 1, scope: !3411, file: !84, line: 401, type: !103)
!3416 = !DILocalVariable(name: "caller", arg: 2, scope: !3411, file: !84, line: 401, type: !105)
!3417 = !DILocation(line: 401, column: 67, scope: !3411)
!3418 = !DILocation(line: 401, column: 88, scope: !3411)
!3419 = !DILocation(line: 407, column: 6, scope: !3420)
!3420 = distinct !DILexicalBlock(scope: !3411, file: !84, line: 407, column: 6)
!3421 = !DILocation(line: 407, column: 6, scope: !3411)
!3422 = !DILocation(line: 413, column: 3, scope: !3420)
!3423 = !DILocation(line: 423, column: 38, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3411, file: !84, line: 423, column: 6)
!3425 = !DILocation(line: 423, column: 44, scope: !3424)
!3426 = !DILocation(line: 423, column: 6, scope: !3411)
!3427 = !DILocation(line: 424, column: 3, scope: !3424)
!3428 = !DILocation(line: 426, column: 3, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3411, file: !84, line: 425, column: 6)
!3430 = !DILocation(line: 429, column: 1, scope: !3411)
!3431 = !DISubprogram(name: "__kmalloc", scope: !84, file: !84, line: 488, type: !3184, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3432 = !DISubprogram(name: "__compiletime_assert_204", scope: !84, file: !84, line: 478, type: !1272, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
