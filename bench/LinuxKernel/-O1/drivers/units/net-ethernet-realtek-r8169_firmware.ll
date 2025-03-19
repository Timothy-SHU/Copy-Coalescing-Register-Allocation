; ModuleID = 'drivers/net/ethernet/realtek/r8169_firmware.c'
source_filename = "drivers/net/ethernet/realtek/r8169_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtl_fw = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, [32 x i8], %struct.rtl_fw_phy_action }
%struct.rtl_fw_phy_action = type { ptr, i64 }
%struct.firmware = type { i64, ptr, ptr }
%struct.fw_info = type <{ i32, [32 x i8], i32, i32, i8 }>

@.str = private unnamed_addr constant [33 x i8] c"Unable to load firmware %s (%d)\0A\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [23 x i8] c"Invalid action 0x%08x\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [26 x i8] c"Out of range of firmware\0A\00", align 1, !dbg !12

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rtl_fw_write_firmware(ptr noundef %tp, ptr noundef %rtl_fw) #0 align 16 !dbg !144 {
entry:
  %tp.addr = alloca ptr, align 8
  %rtl_fw.addr = alloca ptr, align 8
  %pa = alloca ptr, align 8
  %fw_write = alloca ptr, align 8
  %fw_read = alloca ptr, align 8
  %predata = alloca i32, align 4
  %count = alloca i32, align 4
  %index = alloca i64, align 8
  %action = alloca i32, align 4
  %data = alloca i32, align 4
  %regno = alloca i32, align 4
  %opcode = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tp, ptr %tp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tp.addr, metadata !1650, metadata !DIExpression()), !dbg !1666
  store ptr %rtl_fw, ptr %rtl_fw.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rtl_fw.addr, metadata !1651, metadata !DIExpression()), !dbg !1667
  call void @llvm.lifetime.start.p0(i64 8, ptr %pa) #5, !dbg !1668
  call void @llvm.dbg.declare(metadata ptr %pa, metadata !1652, metadata !DIExpression()), !dbg !1669
  %0 = load ptr, ptr %rtl_fw.addr, align 8, !dbg !1670
  %phy_action = getelementptr inbounds %struct.rtl_fw, ptr %0, i32 0, i32 8, !dbg !1671
  store ptr %phy_action, ptr %pa, align 8, !dbg !1669
  call void @llvm.lifetime.start.p0(i64 8, ptr %fw_write) #5, !dbg !1672
  call void @llvm.dbg.declare(metadata ptr %fw_write, metadata !1654, metadata !DIExpression()), !dbg !1673
  %1 = load ptr, ptr %rtl_fw.addr, align 8, !dbg !1674
  %phy_write = getelementptr inbounds %struct.rtl_fw, ptr %1, i32 0, i32 0, !dbg !1675
  %2 = load ptr, ptr %phy_write, align 8, !dbg !1675
  store ptr %2, ptr %fw_write, align 8, !dbg !1673
  call void @llvm.lifetime.start.p0(i64 8, ptr %fw_read) #5, !dbg !1676
  call void @llvm.dbg.declare(metadata ptr %fw_read, metadata !1655, metadata !DIExpression()), !dbg !1677
  %3 = load ptr, ptr %rtl_fw.addr, align 8, !dbg !1678
  %phy_read = getelementptr inbounds %struct.rtl_fw, ptr %3, i32 0, i32 1, !dbg !1679
  %4 = load ptr, ptr %phy_read, align 8, !dbg !1679
  store ptr %4, ptr %fw_read, align 8, !dbg !1677
  call void @llvm.lifetime.start.p0(i64 4, ptr %predata) #5, !dbg !1680
  call void @llvm.dbg.declare(metadata ptr %predata, metadata !1656, metadata !DIExpression()), !dbg !1681
  store i32 0, ptr %predata, align 4, !dbg !1681
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #5, !dbg !1680
  call void @llvm.dbg.declare(metadata ptr %count, metadata !1657, metadata !DIExpression()), !dbg !1682
  store i32 0, ptr %count, align 4, !dbg !1682
  call void @llvm.lifetime.start.p0(i64 8, ptr %index) #5, !dbg !1683
  call void @llvm.dbg.declare(metadata ptr %index, metadata !1658, metadata !DIExpression()), !dbg !1684
  store i64 0, ptr %index, align 8, !dbg !1685
  br label %for.cond, !dbg !1686

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i64, ptr %index, align 8, !dbg !1687
  %6 = load ptr, ptr %pa, align 8, !dbg !1688
  %size = getelementptr inbounds %struct.rtl_fw_phy_action, ptr %6, i32 0, i32 1, !dbg !1689
  %7 = load i64, ptr %size, align 8, !dbg !1689
  %cmp = icmp ult i64 %5, %7, !dbg !1690
  br i1 %cmp, label %for.body, label %for.end, !dbg !1691

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %action) #5, !dbg !1692
  call void @llvm.dbg.declare(metadata ptr %action, metadata !1659, metadata !DIExpression()), !dbg !1693
  %8 = load ptr, ptr %pa, align 8, !dbg !1694
  %code = getelementptr inbounds %struct.rtl_fw_phy_action, ptr %8, i32 0, i32 0, !dbg !1694
  %9 = load ptr, ptr %code, align 8, !dbg !1694
  %10 = load i64, ptr %index, align 8, !dbg !1694
  %arrayidx = getelementptr i32, ptr %9, i64 %10, !dbg !1694
  %11 = load i32, ptr %arrayidx, align 4, !dbg !1694
  store i32 %11, ptr %action, align 4, !dbg !1693
  call void @llvm.lifetime.start.p0(i64 4, ptr %data) #5, !dbg !1695
  call void @llvm.dbg.declare(metadata ptr %data, metadata !1663, metadata !DIExpression()), !dbg !1696
  %12 = load i32, ptr %action, align 4, !dbg !1697
  %and = and i32 %12, 65535, !dbg !1698
  store i32 %and, ptr %data, align 4, !dbg !1696
  call void @llvm.lifetime.start.p0(i64 4, ptr %regno) #5, !dbg !1699
  call void @llvm.dbg.declare(metadata ptr %regno, metadata !1664, metadata !DIExpression()), !dbg !1700
  %13 = load i32, ptr %action, align 4, !dbg !1701
  %and1 = and i32 %13, 268369920, !dbg !1702
  %shr = lshr i32 %and1, 16, !dbg !1703
  store i32 %shr, ptr %regno, align 4, !dbg !1700
  call void @llvm.lifetime.start.p0(i64 4, ptr %opcode) #5, !dbg !1704
  call void @llvm.dbg.declare(metadata ptr %opcode, metadata !1665, metadata !DIExpression()), !dbg !1705
  %14 = load i32, ptr %action, align 4, !dbg !1706
  %shr2 = lshr i32 %14, 28, !dbg !1707
  store i32 %shr2, ptr %opcode, align 4, !dbg !1705
  %15 = load i32, ptr %action, align 4, !dbg !1708
  %tobool = icmp ne i32 %15, 0, !dbg !1708
  br i1 %tobool, label %if.end, label %if.then, !dbg !1710

if.then:                                          ; preds = %for.body
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1711

if.end:                                           ; preds = %for.body
  %16 = load i32, ptr %opcode, align 4, !dbg !1712
  switch i32 %16, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb3
    i32 2, label %sw.bb4
    i32 3, label %sw.bb6
    i32 4, label %sw.bb7
    i32 7, label %sw.bb13
    i32 8, label %sw.bb14
    i32 9, label %sw.bb15
    i32 10, label %sw.bb21
    i32 11, label %sw.bb28
    i32 12, label %sw.bb35
    i32 13, label %sw.bb36
    i32 14, label %sw.bb39
  ], !dbg !1713

sw.bb:                                            ; preds = %if.end
  %17 = load ptr, ptr %fw_read, align 8, !dbg !1714
  %18 = load ptr, ptr %tp.addr, align 8, !dbg !1716
  %19 = load i32, ptr %regno, align 4, !dbg !1717
  %call = call i32 %17(ptr noundef %18, i32 noundef %19) #6, !dbg !1714
  store i32 %call, ptr %predata, align 4, !dbg !1718
  %20 = load i32, ptr %count, align 4, !dbg !1719
  %inc = add i32 %20, 1, !dbg !1719
  store i32 %inc, ptr %count, align 4, !dbg !1719
  br label %sw.epilog, !dbg !1720

sw.bb3:                                           ; preds = %if.end
  %21 = load i32, ptr %data, align 4, !dbg !1721
  %22 = load i32, ptr %predata, align 4, !dbg !1722
  %or = or i32 %22, %21, !dbg !1722
  store i32 %or, ptr %predata, align 4, !dbg !1722
  br label %sw.epilog, !dbg !1723

sw.bb4:                                           ; preds = %if.end
  %23 = load i32, ptr %data, align 4, !dbg !1724
  %24 = load i32, ptr %predata, align 4, !dbg !1725
  %and5 = and i32 %24, %23, !dbg !1725
  store i32 %and5, ptr %predata, align 4, !dbg !1725
  br label %sw.epilog, !dbg !1726

sw.bb6:                                           ; preds = %if.end
  %25 = load i32, ptr %regno, align 4, !dbg !1727
  %add = add i32 %25, 1, !dbg !1728
  %conv = zext i32 %add to i64, !dbg !1729
  %26 = load i64, ptr %index, align 8, !dbg !1730
  %sub = sub i64 %26, %conv, !dbg !1730
  store i64 %sub, ptr %index, align 8, !dbg !1730
  br label %sw.epilog, !dbg !1731

sw.bb7:                                           ; preds = %if.end
  %27 = load i32, ptr %data, align 4, !dbg !1732
  %tobool8 = icmp ne i32 %27, 0, !dbg !1732
  br i1 %tobool8, label %if.then9, label %if.else, !dbg !1734

if.then9:                                         ; preds = %sw.bb7
  %28 = load ptr, ptr %rtl_fw.addr, align 8, !dbg !1735
  %mac_mcu_write = getelementptr inbounds %struct.rtl_fw, ptr %28, i32 0, i32 2, !dbg !1737
  %29 = load ptr, ptr %mac_mcu_write, align 8, !dbg !1737
  store ptr %29, ptr %fw_write, align 8, !dbg !1738
  %30 = load ptr, ptr %rtl_fw.addr, align 8, !dbg !1739
  %mac_mcu_read = getelementptr inbounds %struct.rtl_fw, ptr %30, i32 0, i32 3, !dbg !1740
  %31 = load ptr, ptr %mac_mcu_read, align 8, !dbg !1740
  store ptr %31, ptr %fw_read, align 8, !dbg !1741
  br label %if.end12, !dbg !1742

if.else:                                          ; preds = %sw.bb7
  %32 = load ptr, ptr %rtl_fw.addr, align 8, !dbg !1743
  %phy_write10 = getelementptr inbounds %struct.rtl_fw, ptr %32, i32 0, i32 0, !dbg !1745
  %33 = load ptr, ptr %phy_write10, align 8, !dbg !1745
  store ptr %33, ptr %fw_write, align 8, !dbg !1746
  %34 = load ptr, ptr %rtl_fw.addr, align 8, !dbg !1747
  %phy_read11 = getelementptr inbounds %struct.rtl_fw, ptr %34, i32 0, i32 1, !dbg !1748
  %35 = load ptr, ptr %phy_read11, align 8, !dbg !1748
  store ptr %35, ptr %fw_read, align 8, !dbg !1749
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then9
  br label %sw.epilog, !dbg !1750

sw.bb13:                                          ; preds = %if.end
  store i32 0, ptr %count, align 4, !dbg !1751
  br label %sw.epilog, !dbg !1752

sw.bb14:                                          ; preds = %if.end
  %36 = load ptr, ptr %fw_write, align 8, !dbg !1753
  %37 = load ptr, ptr %tp.addr, align 8, !dbg !1754
  %38 = load i32, ptr %regno, align 4, !dbg !1755
  %39 = load i32, ptr %data, align 4, !dbg !1756
  call void %36(ptr noundef %37, i32 noundef %38, i32 noundef %39) #6, !dbg !1753
  br label %sw.epilog, !dbg !1757

sw.bb15:                                          ; preds = %if.end
  %40 = load i32, ptr %count, align 4, !dbg !1758
  %41 = load i32, ptr %data, align 4, !dbg !1760
  %cmp16 = icmp eq i32 %40, %41, !dbg !1761
  br i1 %cmp16, label %if.then18, label %if.end20, !dbg !1762

if.then18:                                        ; preds = %sw.bb15
  %42 = load i64, ptr %index, align 8, !dbg !1763
  %inc19 = add i64 %42, 1, !dbg !1763
  store i64 %inc19, ptr %index, align 8, !dbg !1763
  br label %if.end20, !dbg !1764

if.end20:                                         ; preds = %if.then18, %sw.bb15
  br label %sw.epilog, !dbg !1765

sw.bb21:                                          ; preds = %if.end
  %43 = load i32, ptr %predata, align 4, !dbg !1766
  %44 = load i32, ptr %data, align 4, !dbg !1768
  %cmp22 = icmp eq i32 %43, %44, !dbg !1769
  br i1 %cmp22, label %if.then24, label %if.end27, !dbg !1770

if.then24:                                        ; preds = %sw.bb21
  %45 = load i32, ptr %regno, align 4, !dbg !1771
  %conv25 = zext i32 %45 to i64, !dbg !1771
  %46 = load i64, ptr %index, align 8, !dbg !1772
  %add26 = add i64 %46, %conv25, !dbg !1772
  store i64 %add26, ptr %index, align 8, !dbg !1772
  br label %if.end27, !dbg !1773

if.end27:                                         ; preds = %if.then24, %sw.bb21
  br label %sw.epilog, !dbg !1774

sw.bb28:                                          ; preds = %if.end
  %47 = load i32, ptr %predata, align 4, !dbg !1775
  %48 = load i32, ptr %data, align 4, !dbg !1777
  %cmp29 = icmp ne i32 %47, %48, !dbg !1778
  br i1 %cmp29, label %if.then31, label %if.end34, !dbg !1779

if.then31:                                        ; preds = %sw.bb28
  %49 = load i32, ptr %regno, align 4, !dbg !1780
  %conv32 = zext i32 %49 to i64, !dbg !1780
  %50 = load i64, ptr %index, align 8, !dbg !1781
  %add33 = add i64 %50, %conv32, !dbg !1781
  store i64 %add33, ptr %index, align 8, !dbg !1781
  br label %if.end34, !dbg !1782

if.end34:                                         ; preds = %if.then31, %sw.bb28
  br label %sw.epilog, !dbg !1783

sw.bb35:                                          ; preds = %if.end
  %51 = load ptr, ptr %fw_write, align 8, !dbg !1784
  %52 = load ptr, ptr %tp.addr, align 8, !dbg !1785
  %53 = load i32, ptr %regno, align 4, !dbg !1786
  %54 = load i32, ptr %predata, align 4, !dbg !1787
  call void %51(ptr noundef %52, i32 noundef %53, i32 noundef %54) #6, !dbg !1784
  br label %sw.epilog, !dbg !1788

sw.bb36:                                          ; preds = %if.end
  %55 = load i32, ptr %regno, align 4, !dbg !1789
  %conv37 = zext i32 %55 to i64, !dbg !1789
  %56 = load i64, ptr %index, align 8, !dbg !1790
  %add38 = add i64 %56, %conv37, !dbg !1790
  store i64 %add38, ptr %index, align 8, !dbg !1790
  br label %sw.epilog, !dbg !1791

sw.bb39:                                          ; preds = %if.end
  %57 = load i32, ptr %data, align 4, !dbg !1792
  call void @msleep(i32 noundef %57) #6, !dbg !1793
  br label %sw.epilog, !dbg !1794

sw.epilog:                                        ; preds = %if.end, %sw.bb39, %sw.bb36, %sw.bb35, %if.end34, %if.end27, %if.end20, %sw.bb14, %sw.bb13, %if.end12, %sw.bb6, %sw.bb4, %sw.bb3, %sw.bb
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1795
  br label %cleanup, !dbg !1795

cleanup:                                          ; preds = %sw.epilog, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %opcode) #5, !dbg !1795
  call void @llvm.lifetime.end.p0(i64 4, ptr %regno) #5, !dbg !1795
  call void @llvm.lifetime.end.p0(i64 4, ptr %data) #5, !dbg !1795
  call void @llvm.lifetime.end.p0(i64 4, ptr %action) #5, !dbg !1795
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !1796

for.inc:                                          ; preds = %cleanup.cont
  %58 = load i64, ptr %index, align 8, !dbg !1797
  %inc43 = add i64 %58, 1, !dbg !1797
  store i64 %inc43, ptr %index, align 8, !dbg !1797
  br label %for.cond, !dbg !1798, !llvm.loop !1799

for.end:                                          ; preds = %cleanup, %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %index) #5, !dbg !1803
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #5, !dbg !1803
  call void @llvm.lifetime.end.p0(i64 4, ptr %predata) #5, !dbg !1803
  call void @llvm.lifetime.end.p0(i64 8, ptr %fw_read) #5, !dbg !1803
  call void @llvm.lifetime.end.p0(i64 8, ptr %fw_write) #5, !dbg !1803
  call void @llvm.lifetime.end.p0(i64 8, ptr %pa) #5, !dbg !1803
  ret void, !dbg !1803

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1804 dso_local void @msleep(i32 noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rtl_fw_release_firmware(ptr noundef %rtl_fw) #0 align 16 !dbg !1808 {
entry:
  %rtl_fw.addr = alloca ptr, align 8
  store ptr %rtl_fw, ptr %rtl_fw.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rtl_fw.addr, metadata !1812, metadata !DIExpression()), !dbg !1813
  %0 = load ptr, ptr %rtl_fw.addr, align 8, !dbg !1814
  %fw = getelementptr inbounds %struct.rtl_fw, ptr %0, i32 0, i32 4, !dbg !1815
  %1 = load ptr, ptr %fw, align 8, !dbg !1815
  call void @release_firmware(ptr noundef %1) #6, !dbg !1816
  ret void, !dbg !1817
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1818 dso_local void @release_firmware(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @rtl_fw_request_firmware(ptr noundef %rtl_fw) #0 align 16 !dbg !1821 {
entry:
  %retval = alloca i32, align 4
  %rtl_fw.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rtl_fw, ptr %rtl_fw.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rtl_fw.addr, metadata !1825, metadata !DIExpression()), !dbg !1828
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #5, !dbg !1829
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !1826, metadata !DIExpression()), !dbg !1830
  %0 = load ptr, ptr %rtl_fw.addr, align 8, !dbg !1831
  %fw = getelementptr inbounds %struct.rtl_fw, ptr %0, i32 0, i32 4, !dbg !1832
  %1 = load ptr, ptr %rtl_fw.addr, align 8, !dbg !1833
  %fw_name = getelementptr inbounds %struct.rtl_fw, ptr %1, i32 0, i32 5, !dbg !1834
  %2 = load ptr, ptr %fw_name, align 8, !dbg !1834
  %3 = load ptr, ptr %rtl_fw.addr, align 8, !dbg !1835
  %dev = getelementptr inbounds %struct.rtl_fw, ptr %3, i32 0, i32 6, !dbg !1836
  %4 = load ptr, ptr %dev, align 8, !dbg !1836
  %call = call i32 @request_firmware(ptr noundef %fw, ptr noundef %2, ptr noundef %4) #6, !dbg !1837
  store i32 %call, ptr %rc, align 4, !dbg !1838
  %5 = load i32, ptr %rc, align 4, !dbg !1839
  %cmp = icmp slt i32 %5, 0, !dbg !1841
  br i1 %cmp, label %if.then, label %if.end, !dbg !1842

if.then:                                          ; preds = %entry
  br label %out, !dbg !1843

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %rtl_fw.addr, align 8, !dbg !1844
  %call1 = call zeroext i1 @rtl_fw_format_ok(ptr noundef %6) #6, !dbg !1846
  br i1 %call1, label %lor.lhs.false, label %if.then3, !dbg !1847

lor.lhs.false:                                    ; preds = %if.end
  %7 = load ptr, ptr %rtl_fw.addr, align 8, !dbg !1848
  %call2 = call zeroext i1 @rtl_fw_data_ok(ptr noundef %7) #6, !dbg !1849
  br i1 %call2, label %if.end5, label %if.then3, !dbg !1850

if.then3:                                         ; preds = %lor.lhs.false, %if.end
  %8 = load ptr, ptr %rtl_fw.addr, align 8, !dbg !1851
  %fw4 = getelementptr inbounds %struct.rtl_fw, ptr %8, i32 0, i32 4, !dbg !1853
  %9 = load ptr, ptr %fw4, align 8, !dbg !1853
  call void @release_firmware(ptr noundef %9) #6, !dbg !1854
  store i32 -22, ptr %rc, align 4, !dbg !1855
  br label %out, !dbg !1856

if.end5:                                          ; preds = %lor.lhs.false
  store i32 0, ptr %retval, align 4, !dbg !1857
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1857

out:                                              ; preds = %if.then3, %if.then
  call void @llvm.dbg.label(metadata !1827), !dbg !1858
  br label %do.body, !dbg !1859

do.body:                                          ; preds = %out
  br label %do.cond, !dbg !1861

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !1861

do.end:                                           ; preds = %do.cond
  %10 = load ptr, ptr %rtl_fw.addr, align 8, !dbg !1859
  %dev6 = getelementptr inbounds %struct.rtl_fw, ptr %10, i32 0, i32 6, !dbg !1859
  %11 = load ptr, ptr %dev6, align 8, !dbg !1859
  %12 = load ptr, ptr %rtl_fw.addr, align 8, !dbg !1859
  %fw_name7 = getelementptr inbounds %struct.rtl_fw, ptr %12, i32 0, i32 5, !dbg !1859
  %13 = load ptr, ptr %fw_name7, align 8, !dbg !1859
  %14 = load i32, ptr %rc, align 4, !dbg !1859
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef @.str, ptr noundef %13, i32 noundef %14) #7, !dbg !1859
  %15 = load i32, ptr %rc, align 4, !dbg !1863
  store i32 %15, ptr %retval, align 4, !dbg !1864
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1864

cleanup:                                          ; preds = %do.end, %if.end5
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #5, !dbg !1865
  %16 = load i32, ptr %retval, align 4, !dbg !1865
  ret i32 %16, !dbg !1865
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1866 dso_local i32 @request_firmware(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @rtl_fw_format_ok(ptr noundef %rtl_fw) #0 align 16 !dbg !1870 {
entry:
  %retval = alloca i1, align 1
  %rtl_fw.addr = alloca ptr, align 8
  %fw = alloca ptr, align 8
  %fw_info = alloca ptr, align 8
  %pa = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %i = alloca i64, align 8
  %size3 = alloca i64, align 8
  %start = alloca i64, align 8
  %checksum = alloca i8, align 1
  store ptr %rtl_fw, ptr %rtl_fw.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rtl_fw.addr, metadata !1874, metadata !DIExpression()), !dbg !1884
  call void @llvm.lifetime.start.p0(i64 8, ptr %fw) #5, !dbg !1885
  call void @llvm.dbg.declare(metadata ptr %fw, metadata !1875, metadata !DIExpression()), !dbg !1886
  %0 = load ptr, ptr %rtl_fw.addr, align 8, !dbg !1887
  %fw1 = getelementptr inbounds %struct.rtl_fw, ptr %0, i32 0, i32 4, !dbg !1888
  %1 = load ptr, ptr %fw1, align 8, !dbg !1888
  store ptr %1, ptr %fw, align 8, !dbg !1886
  call void @llvm.lifetime.start.p0(i64 8, ptr %fw_info) #5, !dbg !1889
  call void @llvm.dbg.declare(metadata ptr %fw_info, metadata !1876, metadata !DIExpression()), !dbg !1890
  %2 = load ptr, ptr %fw, align 8, !dbg !1891
  %data = getelementptr inbounds %struct.firmware, ptr %2, i32 0, i32 1, !dbg !1892
  %3 = load ptr, ptr %data, align 8, !dbg !1892
  store ptr %3, ptr %fw_info, align 8, !dbg !1890
  call void @llvm.lifetime.start.p0(i64 8, ptr %pa) #5, !dbg !1893
  call void @llvm.dbg.declare(metadata ptr %pa, metadata !1877, metadata !DIExpression()), !dbg !1894
  %4 = load ptr, ptr %rtl_fw.addr, align 8, !dbg !1895
  %phy_action = getelementptr inbounds %struct.rtl_fw, ptr %4, i32 0, i32 8, !dbg !1896
  store ptr %phy_action, ptr %pa, align 8, !dbg !1894
  %5 = load ptr, ptr %fw, align 8, !dbg !1897
  %size = getelementptr inbounds %struct.firmware, ptr %5, i32 0, i32 0, !dbg !1899
  %6 = load i64, ptr %size, align 8, !dbg !1899
  %cmp = icmp ult i64 %6, 4, !dbg !1900
  br i1 %cmp, label %if.then, label %if.end, !dbg !1901

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !1902
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup50, !dbg !1902

if.end:                                           ; preds = %entry
  %7 = load ptr, ptr %fw_info, align 8, !dbg !1903
  %magic = getelementptr inbounds %struct.fw_info, ptr %7, i32 0, i32 0, !dbg !1904
  %8 = load i32, ptr %magic, align 1, !dbg !1904
  %tobool = icmp ne i32 %8, 0, !dbg !1903
  br i1 %tobool, label %if.else, label %if.then2, !dbg !1905

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #5, !dbg !1906
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1878, metadata !DIExpression()), !dbg !1907
  call void @llvm.lifetime.start.p0(i64 8, ptr %size3) #5, !dbg !1906
  call void @llvm.dbg.declare(metadata ptr %size3, metadata !1881, metadata !DIExpression()), !dbg !1908
  call void @llvm.lifetime.start.p0(i64 8, ptr %start) #5, !dbg !1906
  call void @llvm.dbg.declare(metadata ptr %start, metadata !1882, metadata !DIExpression()), !dbg !1909
  call void @llvm.lifetime.start.p0(i64 1, ptr %checksum) #5, !dbg !1910
  call void @llvm.dbg.declare(metadata ptr %checksum, metadata !1883, metadata !DIExpression()), !dbg !1911
  store i8 0, ptr %checksum, align 1, !dbg !1911
  %9 = load ptr, ptr %fw, align 8, !dbg !1912
  %size4 = getelementptr inbounds %struct.firmware, ptr %9, i32 0, i32 0, !dbg !1914
  %10 = load i64, ptr %size4, align 8, !dbg !1914
  %cmp5 = icmp ult i64 %10, 45, !dbg !1915
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !1916

if.then6:                                         ; preds = %if.then2
  store i1 false, ptr %retval, align 1, !dbg !1917
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1917

if.end7:                                          ; preds = %if.then2
  store i64 0, ptr %i, align 8, !dbg !1918
  br label %for.cond, !dbg !1920

for.cond:                                         ; preds = %for.inc, %if.end7
  %11 = load i64, ptr %i, align 8, !dbg !1921
  %12 = load ptr, ptr %fw, align 8, !dbg !1923
  %size8 = getelementptr inbounds %struct.firmware, ptr %12, i32 0, i32 0, !dbg !1924
  %13 = load i64, ptr %size8, align 8, !dbg !1924
  %cmp9 = icmp ult i64 %11, %13, !dbg !1925
  br i1 %cmp9, label %for.body, label %for.end, !dbg !1926

for.body:                                         ; preds = %for.cond
  %14 = load ptr, ptr %fw, align 8, !dbg !1927
  %data10 = getelementptr inbounds %struct.firmware, ptr %14, i32 0, i32 1, !dbg !1928
  %15 = load ptr, ptr %data10, align 8, !dbg !1928
  %16 = load i64, ptr %i, align 8, !dbg !1929
  %arrayidx = getelementptr i8, ptr %15, i64 %16, !dbg !1927
  %17 = load i8, ptr %arrayidx, align 1, !dbg !1927
  %conv = zext i8 %17 to i32, !dbg !1927
  %18 = load i8, ptr %checksum, align 1, !dbg !1930
  %conv11 = zext i8 %18 to i32, !dbg !1930
  %add = add i32 %conv11, %conv, !dbg !1930
  %conv12 = trunc i32 %add to i8, !dbg !1930
  store i8 %conv12, ptr %checksum, align 1, !dbg !1930
  br label %for.inc, !dbg !1931

for.inc:                                          ; preds = %for.body
  %19 = load i64, ptr %i, align 8, !dbg !1932
  %inc = add i64 %19, 1, !dbg !1932
  store i64 %inc, ptr %i, align 8, !dbg !1932
  br label %for.cond, !dbg !1933, !llvm.loop !1934

for.end:                                          ; preds = %for.cond
  %20 = load i8, ptr %checksum, align 1, !dbg !1936
  %conv13 = zext i8 %20 to i32, !dbg !1936
  %cmp14 = icmp ne i32 %conv13, 0, !dbg !1938
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !1939

if.then16:                                        ; preds = %for.end
  store i1 false, ptr %retval, align 1, !dbg !1940
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1940

if.end17:                                         ; preds = %for.end
  %21 = load ptr, ptr %fw_info, align 8, !dbg !1941
  %fw_start = getelementptr inbounds %struct.fw_info, ptr %21, i32 0, i32 2, !dbg !1941
  %22 = load i32, ptr %fw_start, align 1, !dbg !1941
  %conv18 = zext i32 %22 to i64, !dbg !1941
  store i64 %conv18, ptr %start, align 8, !dbg !1942
  %23 = load i64, ptr %start, align 8, !dbg !1943
  %24 = load ptr, ptr %fw, align 8, !dbg !1945
  %size19 = getelementptr inbounds %struct.firmware, ptr %24, i32 0, i32 0, !dbg !1946
  %25 = load i64, ptr %size19, align 8, !dbg !1946
  %cmp20 = icmp ugt i64 %23, %25, !dbg !1947
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !1948

if.then22:                                        ; preds = %if.end17
  store i1 false, ptr %retval, align 1, !dbg !1949
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1949

if.end23:                                         ; preds = %if.end17
  %26 = load ptr, ptr %fw_info, align 8, !dbg !1950
  %fw_len = getelementptr inbounds %struct.fw_info, ptr %26, i32 0, i32 3, !dbg !1950
  %27 = load i32, ptr %fw_len, align 1, !dbg !1950
  %conv24 = zext i32 %27 to i64, !dbg !1950
  store i64 %conv24, ptr %size3, align 8, !dbg !1951
  %28 = load i64, ptr %size3, align 8, !dbg !1952
  %29 = load ptr, ptr %fw, align 8, !dbg !1954
  %size25 = getelementptr inbounds %struct.firmware, ptr %29, i32 0, i32 0, !dbg !1955
  %30 = load i64, ptr %size25, align 8, !dbg !1955
  %31 = load i64, ptr %start, align 8, !dbg !1956
  %sub = sub i64 %30, %31, !dbg !1957
  %div = udiv i64 %sub, 4, !dbg !1958
  %cmp26 = icmp ugt i64 %28, %div, !dbg !1959
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !1960

if.then28:                                        ; preds = %if.end23
  store i1 false, ptr %retval, align 1, !dbg !1961
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1961

if.end29:                                         ; preds = %if.end23
  %32 = load ptr, ptr %rtl_fw.addr, align 8, !dbg !1962
  %version = getelementptr inbounds %struct.rtl_fw, ptr %32, i32 0, i32 7, !dbg !1963
  %arraydecay = getelementptr inbounds [32 x i8], ptr %version, i64 0, i64 0, !dbg !1962
  %33 = load ptr, ptr %fw_info, align 8, !dbg !1964
  %version30 = getelementptr inbounds %struct.fw_info, ptr %33, i32 0, i32 1, !dbg !1965
  %arraydecay31 = getelementptr inbounds [32 x i8], ptr %version30, i64 0, i64 0, !dbg !1964
  %call = call i64 @strscpy(ptr noundef %arraydecay, ptr noundef %arraydecay31, i64 noundef 32) #6, !dbg !1966
  %34 = load ptr, ptr %fw, align 8, !dbg !1967
  %data32 = getelementptr inbounds %struct.firmware, ptr %34, i32 0, i32 1, !dbg !1968
  %35 = load ptr, ptr %data32, align 8, !dbg !1968
  %36 = load i64, ptr %start, align 8, !dbg !1969
  %add.ptr = getelementptr i8, ptr %35, i64 %36, !dbg !1970
  %37 = load ptr, ptr %pa, align 8, !dbg !1971
  %code = getelementptr inbounds %struct.rtl_fw_phy_action, ptr %37, i32 0, i32 0, !dbg !1972
  store ptr %add.ptr, ptr %code, align 8, !dbg !1973
  %38 = load i64, ptr %size3, align 8, !dbg !1974
  %39 = load ptr, ptr %pa, align 8, !dbg !1975
  %size33 = getelementptr inbounds %struct.rtl_fw_phy_action, ptr %39, i32 0, i32 1, !dbg !1976
  store i64 %38, ptr %size33, align 8, !dbg !1977
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !1978
  br label %cleanup, !dbg !1978

cleanup:                                          ; preds = %if.end29, %if.then28, %if.then22, %if.then16, %if.then6
  call void @llvm.lifetime.end.p0(i64 1, ptr %checksum) #5, !dbg !1978
  call void @llvm.lifetime.end.p0(i64 8, ptr %start) #5, !dbg !1978
  call void @llvm.lifetime.end.p0(i64 8, ptr %size3) #5, !dbg !1978
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #5, !dbg !1978
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup50 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end49, !dbg !1979

if.else:                                          ; preds = %if.end
  %40 = load ptr, ptr %fw, align 8, !dbg !1980
  %size37 = getelementptr inbounds %struct.firmware, ptr %40, i32 0, i32 0, !dbg !1983
  %41 = load i64, ptr %size37, align 8, !dbg !1983
  %rem = urem i64 %41, 4, !dbg !1984
  %tobool38 = icmp ne i64 %rem, 0, !dbg !1984
  br i1 %tobool38, label %if.then39, label %if.end40, !dbg !1985

if.then39:                                        ; preds = %if.else
  store i1 false, ptr %retval, align 1, !dbg !1986
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup50, !dbg !1986

if.end40:                                         ; preds = %if.else
  %42 = load ptr, ptr %rtl_fw.addr, align 8, !dbg !1987
  %version41 = getelementptr inbounds %struct.rtl_fw, ptr %42, i32 0, i32 7, !dbg !1988
  %arraydecay42 = getelementptr inbounds [32 x i8], ptr %version41, i64 0, i64 0, !dbg !1987
  %43 = load ptr, ptr %rtl_fw.addr, align 8, !dbg !1989
  %fw_name = getelementptr inbounds %struct.rtl_fw, ptr %43, i32 0, i32 5, !dbg !1990
  %44 = load ptr, ptr %fw_name, align 8, !dbg !1990
  %call43 = call i64 @strscpy(ptr noundef %arraydecay42, ptr noundef %44, i64 noundef 32) #6, !dbg !1991
  %45 = load ptr, ptr %fw, align 8, !dbg !1992
  %data44 = getelementptr inbounds %struct.firmware, ptr %45, i32 0, i32 1, !dbg !1993
  %46 = load ptr, ptr %data44, align 8, !dbg !1993
  %47 = load ptr, ptr %pa, align 8, !dbg !1994
  %code45 = getelementptr inbounds %struct.rtl_fw_phy_action, ptr %47, i32 0, i32 0, !dbg !1995
  store ptr %46, ptr %code45, align 8, !dbg !1996
  %48 = load ptr, ptr %fw, align 8, !dbg !1997
  %size46 = getelementptr inbounds %struct.firmware, ptr %48, i32 0, i32 0, !dbg !1998
  %49 = load i64, ptr %size46, align 8, !dbg !1998
  %div47 = udiv i64 %49, 4, !dbg !1999
  %50 = load ptr, ptr %pa, align 8, !dbg !2000
  %size48 = getelementptr inbounds %struct.rtl_fw_phy_action, ptr %50, i32 0, i32 1, !dbg !2001
  store i64 %div47, ptr %size48, align 8, !dbg !2002
  br label %if.end49

if.end49:                                         ; preds = %if.end40, %cleanup.cont
  store i1 true, ptr %retval, align 1, !dbg !2003
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup50, !dbg !2003

cleanup50:                                        ; preds = %if.end49, %if.then39, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pa) #5, !dbg !2004
  call void @llvm.lifetime.end.p0(i64 8, ptr %fw_info) #5, !dbg !2004
  call void @llvm.lifetime.end.p0(i64 8, ptr %fw) #5, !dbg !2004
  %51 = load i1, ptr %retval, align 1, !dbg !2004
  ret i1 %51, !dbg !2004
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @rtl_fw_data_ok(ptr noundef %rtl_fw) #0 align 16 !dbg !2005 {
entry:
  %retval = alloca i1, align 1
  %rtl_fw.addr = alloca ptr, align 8
  %pa = alloca ptr, align 8
  %index = alloca i64, align 8
  %action = alloca i32, align 4
  %val = alloca i32, align 4
  %regno = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %rtl_fw, ptr %rtl_fw.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %rtl_fw.addr, metadata !2007, metadata !DIExpression()), !dbg !2017
  call void @llvm.lifetime.start.p0(i64 8, ptr %pa) #5, !dbg !2018
  call void @llvm.dbg.declare(metadata ptr %pa, metadata !2008, metadata !DIExpression()), !dbg !2019
  %0 = load ptr, ptr %rtl_fw.addr, align 8, !dbg !2020
  %phy_action = getelementptr inbounds %struct.rtl_fw, ptr %0, i32 0, i32 8, !dbg !2021
  store ptr %phy_action, ptr %pa, align 8, !dbg !2019
  call void @llvm.lifetime.start.p0(i64 8, ptr %index) #5, !dbg !2022
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2009, metadata !DIExpression()), !dbg !2023
  store i64 0, ptr %index, align 8, !dbg !2024
  br label %for.cond, !dbg !2025

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i64, ptr %index, align 8, !dbg !2026
  %2 = load ptr, ptr %pa, align 8, !dbg !2027
  %size = getelementptr inbounds %struct.rtl_fw_phy_action, ptr %2, i32 0, i32 1, !dbg !2028
  %3 = load i64, ptr %size, align 8, !dbg !2028
  %cmp = icmp ult i64 %1, %3, !dbg !2029
  br i1 %cmp, label %for.body, label %for.end, !dbg !2030

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %action) #5, !dbg !2031
  call void @llvm.dbg.declare(metadata ptr %action, metadata !2010, metadata !DIExpression()), !dbg !2032
  %4 = load ptr, ptr %pa, align 8, !dbg !2033
  %code = getelementptr inbounds %struct.rtl_fw_phy_action, ptr %4, i32 0, i32 0, !dbg !2033
  %5 = load ptr, ptr %code, align 8, !dbg !2033
  %6 = load i64, ptr %index, align 8, !dbg !2033
  %arrayidx = getelementptr i32, ptr %5, i64 %6, !dbg !2033
  %7 = load i32, ptr %arrayidx, align 4, !dbg !2033
  store i32 %7, ptr %action, align 4, !dbg !2032
  call void @llvm.lifetime.start.p0(i64 4, ptr %val) #5, !dbg !2034
  call void @llvm.dbg.declare(metadata ptr %val, metadata !2014, metadata !DIExpression()), !dbg !2035
  %8 = load i32, ptr %action, align 4, !dbg !2036
  %and = and i32 %8, 65535, !dbg !2037
  store i32 %and, ptr %val, align 4, !dbg !2035
  call void @llvm.lifetime.start.p0(i64 4, ptr %regno) #5, !dbg !2038
  call void @llvm.dbg.declare(metadata ptr %regno, metadata !2015, metadata !DIExpression()), !dbg !2039
  %9 = load i32, ptr %action, align 4, !dbg !2040
  %and1 = and i32 %9, 268369920, !dbg !2041
  %shr = lshr i32 %and1, 16, !dbg !2042
  store i32 %shr, ptr %regno, align 4, !dbg !2039
  %10 = load i32, ptr %action, align 4, !dbg !2043
  %shr2 = lshr i32 %10, 28, !dbg !2044
  switch i32 %shr2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 2, label %sw.bb
    i32 7, label %sw.bb
    i32 8, label %sw.bb
    i32 12, label %sw.bb
    i32 14, label %sw.bb
    i32 4, label %sw.bb3
    i32 3, label %sw.bb5
    i32 9, label %sw.bb10
    i32 10, label %sw.bb16
    i32 11, label %sw.bb16
    i32 13, label %sw.bb16
  ], !dbg !2045

sw.bb:                                            ; preds = %for.body, %for.body, %for.body, %for.body, %for.body, %for.body, %for.body
  br label %sw.epilog, !dbg !2046

sw.bb3:                                           ; preds = %for.body
  %11 = load i32, ptr %val, align 4, !dbg !2048
  %cmp4 = icmp ugt i32 %11, 1, !dbg !2050
  br i1 %cmp4, label %if.then, label %if.end, !dbg !2051

if.then:                                          ; preds = %sw.bb3
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2052

if.end:                                           ; preds = %sw.bb3
  br label %sw.epilog, !dbg !2053

sw.bb5:                                           ; preds = %for.body
  %12 = load i32, ptr %regno, align 4, !dbg !2054
  %conv = zext i32 %12 to i64, !dbg !2054
  %13 = load i64, ptr %index, align 8, !dbg !2056
  %cmp6 = icmp ugt i64 %conv, %13, !dbg !2057
  br i1 %cmp6, label %if.then8, label %if.end9, !dbg !2058

if.then8:                                         ; preds = %sw.bb5
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2059

if.end9:                                          ; preds = %sw.bb5
  br label %sw.epilog, !dbg !2060

sw.bb10:                                          ; preds = %for.body
  %14 = load i64, ptr %index, align 8, !dbg !2061
  %add = add i64 %14, 2, !dbg !2063
  %15 = load ptr, ptr %pa, align 8, !dbg !2064
  %size11 = getelementptr inbounds %struct.rtl_fw_phy_action, ptr %15, i32 0, i32 1, !dbg !2065
  %16 = load i64, ptr %size11, align 8, !dbg !2065
  %cmp12 = icmp uge i64 %add, %16, !dbg !2066
  br i1 %cmp12, label %if.then14, label %if.end15, !dbg !2067

if.then14:                                        ; preds = %sw.bb10
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2068

if.end15:                                         ; preds = %sw.bb10
  br label %sw.epilog, !dbg !2069

sw.bb16:                                          ; preds = %for.body, %for.body, %for.body
  %17 = load i64, ptr %index, align 8, !dbg !2070
  %add17 = add i64 %17, 1, !dbg !2072
  %18 = load i32, ptr %regno, align 4, !dbg !2073
  %conv18 = zext i32 %18 to i64, !dbg !2073
  %add19 = add i64 %add17, %conv18, !dbg !2074
  %19 = load ptr, ptr %pa, align 8, !dbg !2075
  %size20 = getelementptr inbounds %struct.rtl_fw_phy_action, ptr %19, i32 0, i32 1, !dbg !2076
  %20 = load i64, ptr %size20, align 8, !dbg !2076
  %cmp21 = icmp uge i64 %add19, %20, !dbg !2077
  br i1 %cmp21, label %if.then23, label %if.end24, !dbg !2078

if.then23:                                        ; preds = %sw.bb16
  store i32 6, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2079

if.end24:                                         ; preds = %sw.bb16
  br label %sw.epilog, !dbg !2080

sw.default:                                       ; preds = %for.body
  br label %do.body, !dbg !2081

do.body:                                          ; preds = %sw.default
  br label %do.cond, !dbg !2083

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2083

do.end:                                           ; preds = %do.cond
  %21 = load ptr, ptr %rtl_fw.addr, align 8, !dbg !2081
  %dev = getelementptr inbounds %struct.rtl_fw, ptr %21, i32 0, i32 6, !dbg !2081
  %22 = load ptr, ptr %dev, align 8, !dbg !2081
  %23 = load i32, ptr %action, align 4, !dbg !2081
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef @.str.1, i32 noundef %23) #7, !dbg !2081
  store i1 false, ptr %retval, align 1, !dbg !2085
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2085

sw.epilog:                                        ; preds = %if.end24, %if.end15, %if.end9, %if.end, %sw.bb
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2086
  br label %cleanup, !dbg !2086

cleanup:                                          ; preds = %if.then23, %if.then14, %if.then8, %if.then, %sw.epilog, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %regno) #5, !dbg !2086
  call void @llvm.lifetime.end.p0(i64 4, ptr %val) #5, !dbg !2086
  call void @llvm.lifetime.end.p0(i64 4, ptr %action) #5, !dbg !2086
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup31 [
    i32 0, label %cleanup.cont
    i32 6, label %out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2087

for.inc:                                          ; preds = %cleanup.cont
  %24 = load i64, ptr %index, align 8, !dbg !2088
  %inc = add i64 %24, 1, !dbg !2088
  store i64 %inc, ptr %index, align 8, !dbg !2088
  br label %for.cond, !dbg !2089, !llvm.loop !2090

for.end:                                          ; preds = %for.cond
  store i1 true, ptr %retval, align 1, !dbg !2092
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup31, !dbg !2092

out:                                              ; preds = %cleanup
  call void @llvm.dbg.label(metadata !2016), !dbg !2093
  br label %do.body27, !dbg !2094

do.body27:                                        ; preds = %out
  br label %do.cond28, !dbg !2096

do.cond28:                                        ; preds = %do.body27
  br label %do.end29, !dbg !2096

do.end29:                                         ; preds = %do.cond28
  %25 = load ptr, ptr %rtl_fw.addr, align 8, !dbg !2094
  %dev30 = getelementptr inbounds %struct.rtl_fw, ptr %25, i32 0, i32 6, !dbg !2094
  %26 = load ptr, ptr %dev30, align 8, !dbg !2094
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef @.str.2) #7, !dbg !2094
  store i1 false, ptr %retval, align 1, !dbg !2098
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup31, !dbg !2098

cleanup31:                                        ; preds = %do.end29, %for.end, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %index) #5, !dbg !2099
  call void @llvm.lifetime.end.p0(i64 8, ptr %pa) #5, !dbg !2099
  %27 = load i1, ptr %retval, align 1, !dbg !2099
  ret i1 %27, !dbg !2099
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2100 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2104 dso_local i64 @strscpy(ptr noundef, ptr noundef, i64 noundef) #3

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noredzone }
attributes #7 = { cold noredzone }

!llvm.dbg.cu = !{!17}
!llvm.module.flags = !{!135, !136, !137, !138, !139, !140, !141, !142}
!llvm.ident = !{!143}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 233, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/net/ethernet/realtek/r8169_firmware.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e6688c29d3339f3af9d909e250a8a141")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 264, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 33)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 129, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 184, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 23)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 136, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 208, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 26)
!17 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/net/ethernet/realtek/.r8169_firmware.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/net/ethernet/realtek/r8169\22 -D KBUILD_BASENAME=\22r8169_firmware\22 -D KBUILD_MODNAME=\22r8169\22 -D __KBUILD_MODNAME=kmod_r8169 -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/net/ethernet/realtek/r8169_firmware.ll drivers/net/ethernet/realtek/r8169_firmware.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !18, retainedTypes: !112, globals: !134, splitDebugInlining: false, nameTableKind: None)
!18 = !{!19, !26, !33, !39, !46, !51, !59, !67, !76, !81, !86, !92, !107}
!19 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !20, line: 26, baseType: !21, size: 32, elements: !22)
!20 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!21 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!22 = !{!23, !24, !25}
!23 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!24 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!25 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!26 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !27, line: 312, baseType: !21, size: 32, elements: !28)
!27 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!28 = !{!29, !30, !31, !32}
!29 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!30 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!31 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!32 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!33 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !34, line: 45, baseType: !21, size: 32, elements: !35)
!34 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!35 = !{!36, !37, !38}
!36 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!37 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!38 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!39 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !40, line: 487, baseType: !21, size: 32, elements: !41)
!40 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!41 = !{!42, !43, !44, !45}
!42 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!43 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!44 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!45 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!46 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !47, line: 65, baseType: !21, size: 32, elements: !48)
!47 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!48 = !{!49, !50}
!49 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!50 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !52, line: 620, baseType: !21, size: 32, elements: !53)
!52 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!53 = !{!54, !55, !56, !57, !58}
!54 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!55 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!56 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!57 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!58 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !52, line: 597, baseType: !60, size: 32, elements: !61)
!60 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!61 = !{!62, !63, !64, !65, !66}
!62 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!63 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!64 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!65 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!66 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!67 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !40, line: 547, baseType: !21, size: 32, elements: !68)
!68 = !{!69, !70, !71, !72, !73, !74, !75}
!69 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!70 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!71 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!72 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!73 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!74 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!75 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !40, line: 564, baseType: !21, size: 32, elements: !77)
!77 = !{!78, !79, !80}
!78 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!79 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!80 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !40, line: 577, baseType: !21, size: 32, elements: !82)
!82 = !{!83, !84, !85}
!83 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!84 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!85 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!86 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !40, line: 503, baseType: !21, size: 32, elements: !87)
!87 = !{!88, !89, !90, !91}
!88 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!89 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!90 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!91 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rtl_fw_opcode", file: !2, line: 16, baseType: !21, size: 32, elements: !93)
!93 = !{!94, !95, !96, !97, !98, !99, !100, !101, !102, !103, !104, !105, !106}
!94 = !DIEnumerator(name: "PHY_READ", value: 0)
!95 = !DIEnumerator(name: "PHY_DATA_OR", value: 1)
!96 = !DIEnumerator(name: "PHY_DATA_AND", value: 2)
!97 = !DIEnumerator(name: "PHY_BJMPN", value: 3)
!98 = !DIEnumerator(name: "PHY_MDIO_CHG", value: 4)
!99 = !DIEnumerator(name: "PHY_CLEAR_READCOUNT", value: 7)
!100 = !DIEnumerator(name: "PHY_WRITE", value: 8)
!101 = !DIEnumerator(name: "PHY_READCOUNT_EQ_SKIP", value: 9)
!102 = !DIEnumerator(name: "PHY_COMP_EQ_SKIPN", value: 10)
!103 = !DIEnumerator(name: "PHY_COMP_NEQ_SKIPN", value: 11)
!104 = !DIEnumerator(name: "PHY_WRITE_PREVIOUS", value: 12)
!105 = !DIEnumerator(name: "PHY_SKIPN", value: 13)
!106 = !DIEnumerator(name: "PHY_DELAY_MS", value: 14)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !108, line: 10, baseType: !21, size: 32, elements: !109)
!108 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!109 = !{!110, !111}
!110 = !DIEnumerator(name: "false", value: 0)
!111 = !DIEnumerator(name: "true", value: 1)
!112 = !{!113, !115, !117, !133}
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !114, line: 27, baseType: !21)
!114 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !116, line: 38, baseType: !113)
!116 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fw_info", file: !2, line: 32, size: 360, elements: !119)
!119 = !{!120, !123, !127, !128, !129}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "magic", scope: !118, file: !2, line: 33, baseType: !121, size: 32)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !122, line: 21, baseType: !113)
!122 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!123 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !118, file: !2, line: 34, baseType: !124, size: 256, offset: 32)
!124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !125)
!125 = !{!126}
!126 = !DISubrange(count: 32)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "fw_start", scope: !118, file: !2, line: 35, baseType: !115, size: 32, offset: 288)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "fw_len", scope: !118, file: !2, line: 36, baseType: !115, size: 32, offset: 320)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "chksum", scope: !118, file: !2, line: 37, baseType: !130, size: 8, offset: 352)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !122, line: 17, baseType: !131)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !114, line: 21, baseType: !132)
!132 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!134 = !{!0, !7, !12}
!135 = !{i32 7, !"Dwarf Version", i32 5}
!136 = !{i32 2, !"Debug Info Version", i32 3}
!137 = !{i32 1, !"wchar_size", i32 2}
!138 = !{i32 8, !"cf-protection-branch", i32 1}
!139 = !{i32 4, !"function_return_thunk_extern", i32 1}
!140 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!141 = !{i32 1, !"Code Model", i32 2}
!142 = !{i32 1, !"override-stack-alignment", i32 8}
!143 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!144 = distinct !DISubprogram(name: "rtl_fw_write_firmware", scope: !2, file: !2, line: 140, type: !145, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1649)
!145 = !DISubroutineType(types: !146)
!146 = !{null, !147, !150}
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DICompositeType(tag: DW_TAG_structure_type, name: "rtl8169_private", file: !149, line: 14, flags: DIFlagFwdDecl)
!149 = !DIFile(filename: "drivers/net/ethernet/realtek/r8169_firmware.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "17f819f06e5a2dc4cb550105751a1ae7")
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_fw", file: !149, line: 20, size: 832, elements: !152)
!152 = !{!153, !158, !163, !164, !165, !183, !186, !1643, !1644}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "phy_write", scope: !151, file: !149, line: 21, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtl_fw_write_t", file: !149, line: 15, baseType: !155)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{null, !147, !60, !60}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "phy_read", scope: !151, file: !149, line: 22, baseType: !159, size: 64, offset: 64)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "rtl_fw_read_t", file: !149, line: 16, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{!60, !147, !60}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "mac_mcu_write", scope: !151, file: !149, line: 23, baseType: !154, size: 64, offset: 128)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "mac_mcu_read", scope: !151, file: !149, line: 24, baseType: !159, size: 64, offset: 192)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "fw", scope: !151, file: !149, line: 25, baseType: !166, size: 64, offset: 256)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "firmware", file: !169, line: 12, size: 192, elements: !170)
!169 = !DIFile(filename: "./include/linux/firmware.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a94668a811664b50b12e1246efadf209")
!170 = !{!171, !178, !181}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !168, file: !169, line: 13, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !173, line: 61, baseType: !174)
!173 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !175, line: 72, baseType: !176)
!175 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !175, line: 16, baseType: !177)
!177 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !168, file: !169, line: 14, baseType: !179, size: 64, offset: 64)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !168, file: !169, line: 17, baseType: !182, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "fw_name", scope: !151, file: !149, line: 26, baseType: !184, size: 64, offset: 320)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !151, file: !149, line: 27, baseType: !187, size: 64, offset: 384)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !40, line: 705, size: 5824, elements: !189)
!189 = !{!190, !843, !844, !847, !848, !901, !1346, !1347, !1348, !1349, !1350, !1357, !1527, !1540, !1550, !1554, !1556, !1557, !1558, !1562, !1569, !1570, !1573, !1576, !1580, !1583, !1584, !1587, !1588, !1589, !1590, !1620, !1621, !1622, !1625, !1628, !1637, !1638, !1639, !1640, !1641, !1642}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !188, file: !40, line: 706, baseType: !191, size: 512)
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !192, line: 64, size: 512, elements: !193)
!192 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!193 = !{!194, !195, !201, !203, !287, !715, !828, !838, !839, !840, !841, !842}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !191, file: !192, line: 65, baseType: !184, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !191, file: !192, line: 66, baseType: !196, size: 128, offset: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !173, line: 190, size: 128, elements: !197)
!197 = !{!198, !200}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !196, file: !173, line: 191, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !196, file: !173, line: 191, baseType: !199, size: 64, offset: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !191, file: !192, line: 67, baseType: !202, size: 64, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !191, file: !192, line: 68, baseType: !204, size: 64, offset: 256)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !192, line: 168, size: 768, elements: !206)
!206 = !{!207, !208, !246, !247}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !205, file: !192, line: 169, baseType: !196, size: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !205, file: !192, line: 170, baseType: !209, size: 32, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !210, line: 29, baseType: !211)
!210 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !210, line: 17, size: 32, elements: !212)
!212 = !{!213}
!213 = !DIDerivedType(tag: DW_TAG_member, scope: !211, file: !210, line: 18, baseType: !214, size: 32)
!214 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !211, file: !210, line: 18, size: 32, elements: !215)
!215 = !{!216}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !214, file: !210, line: 19, baseType: !217, size: 32)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !218, line: 14, size: 32, elements: !219)
!218 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!219 = !{!220}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !217, file: !218, line: 15, baseType: !221, size: 32)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !222, line: 44, baseType: !223)
!222 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !222, line: 14, size: 32, elements: !224)
!224 = !{!225}
!225 = !DIDerivedType(tag: DW_TAG_member, scope: !223, file: !222, line: 15, baseType: !226, size: 32)
!226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !223, file: !222, line: 15, size: 32, elements: !227)
!227 = !{!228, !233, !238}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !226, file: !222, line: 16, baseType: !229, size: 32)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !173, line: 174, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !173, line: 172, size: 32, elements: !231)
!231 = !{!232}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !230, file: !173, line: 173, baseType: !60, size: 32)
!233 = !DIDerivedType(tag: DW_TAG_member, scope: !226, file: !222, line: 24, baseType: !234, size: 16)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !226, file: !222, line: 24, size: 16, elements: !235)
!235 = !{!236, !237}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !234, file: !222, line: 25, baseType: !130, size: 8)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !234, file: !222, line: 26, baseType: !130, size: 8, offset: 8)
!238 = !DIDerivedType(tag: DW_TAG_member, scope: !226, file: !222, line: 28, baseType: !239, size: 32)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !226, file: !222, line: 28, size: 32, elements: !240)
!240 = !{!241, !245}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !239, file: !222, line: 29, baseType: !242, size: 16)
!242 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !122, line: 19, baseType: !243)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !114, line: 24, baseType: !244)
!244 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !239, file: !222, line: 30, baseType: !242, size: 16, offset: 16)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !205, file: !192, line: 171, baseType: !191, size: 512, offset: 192)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !205, file: !192, line: 172, baseType: !248, size: 64, offset: 704)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !250)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !192, line: 133, size: 192, elements: !251)
!251 = !{!252, !259, !264}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !250, file: !192, line: 134, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!60, !257}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !191)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !250, file: !192, line: 135, baseType: !260, size: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!184, !257}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !250, file: !192, line: 136, baseType: !265, size: 64, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!60, !257, !269}
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !192, line: 125, size: 20736, elements: !271)
!271 = !{!272, !277, !281, !282, !286}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !270, file: !192, line: 126, baseType: !273, size: 192)
!273 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 192, elements: !275)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!275 = !{!276}
!276 = !DISubrange(count: 3)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !270, file: !192, line: 127, baseType: !278, size: 4096, offset: 192)
!278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !274, size: 4096, elements: !279)
!279 = !{!280}
!280 = !DISubrange(count: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !270, file: !192, line: 128, baseType: !60, size: 32, offset: 4288)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !270, file: !192, line: 129, baseType: !283, size: 16384, offset: 4320)
!283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !284)
!284 = !{!285}
!285 = !DISubrange(count: 2048)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !270, file: !192, line: 130, baseType: !60, size: 32, offset: 20704)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !191, file: !192, line: 69, baseType: !288, size: 64, offset: 320)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !290)
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !192, line: 116, size: 384, elements: !291)
!291 = !{!292, !296, !320, !662, !693, !697}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !290, file: !192, line: 117, baseType: !293, size: 64)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{null, !202}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !290, file: !192, line: 118, baseType: !297, size: 64, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !300, line: 254, size: 128, elements: !301)
!300 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!301 = !{!302, !316}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !299, file: !300, line: 255, baseType: !303, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{!306, !202, !310, !274}
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !173, line: 66, baseType: !307)
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !175, line: 73, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !175, line: 15, baseType: !309)
!309 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !300, line: 30, size: 128, elements: !312)
!312 = !{!313, !314}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !311, file: !300, line: 31, baseType: !184, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !311, file: !300, line: 32, baseType: !315, size: 16, offset: 64)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !173, line: 24, baseType: !244)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !299, file: !300, line: 256, baseType: !317, size: 64, offset: 64)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!306, !202, !310, !184, !172}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !290, file: !192, line: 119, baseType: !321, size: 64, offset: 128)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !300, line: 84, size: 320, elements: !325)
!325 = !{!326, !327, !331, !658, !660}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !324, file: !300, line: 85, baseType: !184, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !324, file: !300, line: 86, baseType: !328, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!315, !202, !310, !60}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !324, file: !300, line: 88, baseType: !332, size: 64, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!315, !202, !335, !60}
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !300, line: 175, size: 512, elements: !337)
!337 = !{!338, !339, !340, !341, !348, !358, !359}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !336, file: !300, line: 176, baseType: !311, size: 128)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !336, file: !300, line: 177, baseType: !172, size: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !336, file: !300, line: 178, baseType: !182, size: 64, offset: 192)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !336, file: !300, line: 179, baseType: !342, size: 64, offset: 256)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!345}
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !347, line: 32, flags: DIFlagFwdDecl)
!347 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!348 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !336, file: !300, line: 180, baseType: !349, size: 64, offset: 320)
!349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!350 = !DISubroutineType(types: !351)
!351 = !{!306, !352, !202, !335, !274, !355, !172}
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !354, line: 537, flags: DIFlagFwdDecl)
!354 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !173, line: 52, baseType: !356)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !175, line: 88, baseType: !357)
!357 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !336, file: !300, line: 182, baseType: !349, size: 64, offset: 384)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !336, file: !300, line: 184, baseType: !360, size: 64, offset: 448)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!60, !352, !202, !335, !363}
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !347, line: 625, size: 1344, elements: !365)
!365 = !{!366, !383, !606, !612, !619, !620, !625, !628, !640, !641, !644, !648, !649, !650, !651, !652, !656}
!366 = !DIDerivedType(tag: DW_TAG_member, scope: !364, file: !347, line: 628, baseType: !367, size: 128)
!367 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !364, file: !347, line: 628, size: 128, elements: !368)
!368 = !{!369, !374}
!369 = !DIDerivedType(tag: DW_TAG_member, scope: !367, file: !347, line: 629, baseType: !370, size: 128)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !367, file: !347, line: 629, size: 128, elements: !371)
!371 = !{!372, !373}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !370, file: !347, line: 631, baseType: !177, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !370, file: !347, line: 632, baseType: !177, size: 64, offset: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !367, file: !347, line: 635, baseType: !375, size: 128, align: 64)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !173, line: 232, size: 128, align: 64, elements: !376)
!376 = !{!377, !379}
!377 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !375, file: !173, line: 233, baseType: !378, size: 64)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !375, file: !173, line: 234, baseType: !380, size: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{null, !378}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !364, file: !347, line: 639, baseType: !384, size: 64, offset: 128)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !347, line: 733, size: 10240, elements: !386)
!386 = !{!387, !602}
!387 = !DIDerivedType(tag: DW_TAG_member, scope: !385, file: !347, line: 734, baseType: !388, size: 10240)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !385, file: !347, line: 734, size: 10240, elements: !389)
!389 = !{!390, !394, !408, !412, !413, !414, !415, !416, !417, !425, !426, !427, !436, !437, !446, !447, !448, !462, !463, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !495, !509, !512, !567, !568, !569, !572, !576, !577, !580, !581, !582, !589, !590}
!390 = !DIDerivedType(tag: DW_TAG_member, scope: !388, file: !347, line: 739, baseType: !391, size: 512, align: 512)
!391 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !388, file: !347, line: 739, size: 512, align: 512, elements: !392)
!392 = !{!393}
!393 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !391, file: !347, line: 747, baseType: !229, size: 32)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !388, file: !347, line: 750, baseType: !395, size: 128, offset: 512)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !396, line: 218, size: 128, elements: !397)
!396 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!397 = !{!398, !406, !407}
!398 = !DIDerivedType(tag: DW_TAG_member, scope: !395, file: !396, line: 219, baseType: !399, size: 32)
!399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !395, file: !396, line: 219, size: 32, elements: !400)
!400 = !{!401, !402}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !399, file: !396, line: 220, baseType: !209, size: 32)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !399, file: !396, line: 221, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !396, line: 197, baseType: !404)
!404 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !396, line: 197, elements: !405)
!405 = !{}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !395, file: !396, line: 223, baseType: !21, size: 32, offset: 32)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !395, file: !396, line: 224, baseType: !182, size: 64, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !388, file: !347, line: 752, baseType: !409, size: 64, offset: 640)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!177, !352, !177, !177, !177, !177}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !388, file: !347, line: 756, baseType: !177, size: 64, offset: 704)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !388, file: !347, line: 757, baseType: !177, size: 64, offset: 768)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !388, file: !347, line: 760, baseType: !177, size: 64, offset: 832)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !388, file: !347, line: 761, baseType: !177, size: 64, offset: 896)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !388, file: !347, line: 763, baseType: !177, size: 64, offset: 960)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !388, file: !347, line: 764, baseType: !418, size: 64, offset: 1024)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !354, line: 299, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !354, line: 299, size: 64, elements: !421)
!421 = !{!422}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !420, file: !354, line: 299, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !424, line: 18, baseType: !177)
!424 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!425 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !388, file: !347, line: 773, baseType: !229, size: 32, offset: 1088)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !388, file: !347, line: 785, baseType: !229, size: 32, offset: 1120)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !388, file: !347, line: 795, baseType: !428, size: 64, offset: 1152)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !347, line: 726, size: 128, elements: !430)
!430 = !{!431, !435}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !429, file: !347, line: 727, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !122, line: 23, baseType: !433)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !114, line: 31, baseType: !434)
!434 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !429, file: !347, line: 728, baseType: !60, size: 32, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !388, file: !347, line: 801, baseType: !177, size: 64, offset: 1216)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !388, file: !347, line: 804, baseType: !438, size: 64, offset: 1280)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !439, line: 13, baseType: !440)
!439 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !173, line: 181, baseType: !441)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !173, line: 179, size: 64, elements: !442)
!442 = !{!443}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !441, file: !173, line: 180, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !122, line: 22, baseType: !445)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !114, line: 30, baseType: !357)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !388, file: !347, line: 806, baseType: !60, size: 32, offset: 1344)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !388, file: !347, line: 808, baseType: !209, size: 32, offset: 1376)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !388, file: !347, line: 823, baseType: !449, size: 320, offset: 1408)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !450, line: 48, size: 320, elements: !451)
!450 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!451 = !{!452, !453, !454, !459, !461}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !449, file: !450, line: 49, baseType: !438, size: 64)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !449, file: !450, line: 55, baseType: !438, size: 64, offset: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !449, file: !450, line: 57, baseType: !455, size: 32, offset: 128)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !456, line: 15, size: 32, elements: !457)
!456 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!457 = !{!458}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !455, file: !456, line: 20, baseType: !229, size: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !449, file: !450, line: 59, baseType: !460, size: 32, offset: 160)
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !218, line: 23, baseType: !217)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !449, file: !450, line: 60, baseType: !196, size: 128, offset: 192)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !388, file: !347, line: 825, baseType: !196, size: 128, offset: 1728)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !388, file: !347, line: 845, baseType: !60, size: 32, offset: 1856)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !388, file: !347, line: 849, baseType: !177, size: 64, offset: 1920)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !388, file: !347, line: 850, baseType: !177, size: 64, offset: 1984)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !388, file: !347, line: 852, baseType: !177, size: 64, offset: 2048)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !388, file: !347, line: 853, baseType: !177, size: 64, offset: 2112)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !388, file: !347, line: 854, baseType: !440, size: 64, offset: 2176)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !388, file: !347, line: 855, baseType: !177, size: 64, offset: 2240)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !388, file: !347, line: 856, baseType: !177, size: 64, offset: 2304)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !388, file: !347, line: 857, baseType: !177, size: 64, offset: 2368)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !388, file: !347, line: 858, baseType: !177, size: 64, offset: 2432)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !388, file: !347, line: 865, baseType: !474, size: 32, offset: 2496)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !475, line: 69, baseType: !476)
!475 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !475, line: 64, size: 32, elements: !477)
!477 = !{!478}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !476, file: !475, line: 65, baseType: !21, size: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !388, file: !347, line: 867, baseType: !209, size: 32, offset: 2528)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !388, file: !347, line: 869, baseType: !177, size: 64, offset: 2560)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !388, file: !347, line: 869, baseType: !177, size: 64, offset: 2624)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !388, file: !347, line: 869, baseType: !177, size: 64, offset: 2688)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !388, file: !347, line: 869, baseType: !177, size: 64, offset: 2752)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !388, file: !347, line: 870, baseType: !177, size: 64, offset: 2816)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !388, file: !347, line: 870, baseType: !177, size: 64, offset: 2880)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !388, file: !347, line: 870, baseType: !177, size: 64, offset: 2944)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !388, file: !347, line: 871, baseType: !177, size: 64, offset: 3008)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !388, file: !347, line: 871, baseType: !177, size: 64, offset: 3072)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !388, file: !347, line: 871, baseType: !177, size: 64, offset: 3136)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !388, file: !347, line: 871, baseType: !177, size: 64, offset: 3200)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !388, file: !347, line: 873, baseType: !492, size: 3328, offset: 3264)
!492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 3328, elements: !493)
!493 = !{!494}
!494 = !DISubrange(count: 52)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !388, file: !347, line: 875, baseType: !496, size: 1280, offset: 6592)
!496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !497, size: 1280, elements: !507)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !498, line: 22, size: 320, elements: !499)
!498 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!499 = !{!500, !501, !502, !503}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !497, file: !498, line: 23, baseType: !460, size: 32)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !497, file: !498, line: 24, baseType: !444, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !497, file: !498, line: 26, baseType: !196, size: 128, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !497, file: !498, line: 28, baseType: !504, size: 64, offset: 256)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !122, line: 20, baseType: !506)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !114, line: 26, baseType: !60)
!507 = !{!508}
!508 = !DISubrange(count: 4)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !388, file: !347, line: 877, baseType: !510, size: 64, offset: 7872)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !347, line: 877, flags: DIFlagFwdDecl)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !388, file: !347, line: 880, baseType: !513, size: 1088, offset: 7936)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !514, line: 72, baseType: !515)
!514 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !514, line: 23, size: 1088, elements: !516)
!516 = !{!517, !518, !519, !520, !521, !524, !525, !533, !534, !561, !562, !563}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !515, file: !514, line: 28, baseType: !432, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !515, file: !514, line: 38, baseType: !440, size: 64, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !515, file: !514, line: 40, baseType: !177, size: 64, offset: 128)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !515, file: !514, line: 43, baseType: !449, size: 320, offset: 192)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !515, file: !514, line: 44, baseType: !522, size: 64, offset: 512)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !514, line: 44, flags: DIFlagFwdDecl)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !515, file: !514, line: 48, baseType: !177, size: 64, offset: 576)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !515, file: !514, line: 59, baseType: !526, size: 256, offset: 640)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !527, line: 66, size: 256, elements: !528)
!527 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!528 = !{!529, !530, !531, !532}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !526, file: !527, line: 67, baseType: !438, size: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !526, file: !527, line: 68, baseType: !460, size: 32, offset: 64)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !526, file: !527, line: 70, baseType: !455, size: 32, offset: 96)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !526, file: !527, line: 72, baseType: !196, size: 128, offset: 128)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !515, file: !514, line: 60, baseType: !182, size: 64, offset: 896)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !515, file: !514, line: 61, baseType: !535, size: 64, offset: 960)
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !536, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !537)
!537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !538, line: 13, size: 1216, elements: !539)
!538 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!539 = !{!540, !541, !542, !543, !544, !545, !546, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !537, file: !538, line: 14, baseType: !182, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !537, file: !538, line: 15, baseType: !177, size: 64, offset: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !537, file: !538, line: 17, baseType: !177, size: 64, offset: 128)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !537, file: !538, line: 17, baseType: !177, size: 64, offset: 192)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !537, file: !538, line: 18, baseType: !177, size: 64, offset: 256)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !537, file: !538, line: 18, baseType: !177, size: 64, offset: 320)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !537, file: !538, line: 19, baseType: !547, size: 64, offset: 384)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !537, file: !538, line: 21, baseType: !309, size: 64, offset: 448)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !537, file: !538, line: 23, baseType: !309, size: 64, offset: 512)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !537, file: !538, line: 24, baseType: !309, size: 64, offset: 576)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !537, file: !538, line: 25, baseType: !309, size: 64, offset: 640)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !537, file: !538, line: 26, baseType: !309, size: 64, offset: 704)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !537, file: !538, line: 27, baseType: !309, size: 64, offset: 768)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !537, file: !538, line: 28, baseType: !309, size: 64, offset: 832)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !537, file: !538, line: 29, baseType: !309, size: 64, offset: 896)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !537, file: !538, line: 30, baseType: !309, size: 64, offset: 960)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !537, file: !538, line: 31, baseType: !309, size: 64, offset: 1024)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !537, file: !538, line: 32, baseType: !309, size: 64, offset: 1088)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !537, file: !538, line: 33, baseType: !309, size: 64, offset: 1152)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !515, file: !514, line: 63, baseType: !229, size: 32, offset: 1024)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !515, file: !514, line: 69, baseType: !242, size: 16, offset: 1056)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !515, file: !514, line: 70, baseType: !564, size: 16, offset: 1072)
!564 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !122, line: 18, baseType: !565)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !114, line: 23, baseType: !566)
!566 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !388, file: !347, line: 882, baseType: !177, size: 64, offset: 9024)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !388, file: !347, line: 885, baseType: !209, size: 32, offset: 9088)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !388, file: !347, line: 886, baseType: !570, size: 64, offset: 9152)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !347, line: 732, flags: DIFlagFwdDecl)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !388, file: !347, line: 901, baseType: !573, size: 64, offset: 9216)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !575, line: 18, flags: DIFlagFwdDecl)
!575 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!576 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !388, file: !347, line: 904, baseType: !352, size: 64, offset: 9280)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !388, file: !347, line: 906, baseType: !578, size: 64, offset: 9344)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !347, line: 906, flags: DIFlagFwdDecl)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !388, file: !347, line: 930, baseType: !229, size: 32, offset: 9408)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !388, file: !347, line: 933, baseType: !229, size: 32, offset: 9440)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !388, file: !347, line: 935, baseType: !583, size: 64, offset: 9472)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !584, line: 103, size: 64, elements: !585)
!584 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!585 = !{!586}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !583, file: !584, line: 104, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !588, size: 64)
!588 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !584, line: 101, flags: DIFlagFwdDecl)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !388, file: !347, line: 940, baseType: !438, size: 64, offset: 9536)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !388, file: !347, line: 942, baseType: !591, size: 256, offset: 9600)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !592, line: 98, size: 256, elements: !593)
!592 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!593 = !{!594, !595, !596}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !591, file: !592, line: 99, baseType: !438, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !591, file: !592, line: 100, baseType: !196, size: 128, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !591, file: !592, line: 101, baseType: !597, size: 64, offset: 192)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !592, line: 21, baseType: !598)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = !DISubroutineType(types: !600)
!600 = !{null, !601}
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !385, file: !347, line: 986, baseType: !603, offset: 10240)
!603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, elements: !604)
!604 = !{!605}
!605 = !DISubrange(count: -1)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !364, file: !347, line: 640, baseType: !607, size: 64, offset: 192)
!607 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !354, line: 297, baseType: !608)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !354, line: 297, size: 64, elements: !609)
!609 = !{!610}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !608, file: !354, line: 297, baseType: !611, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !424, line: 19, baseType: !177)
!612 = !DIDerivedType(tag: DW_TAG_member, scope: !364, file: !347, line: 646, baseType: !613, size: 64, offset: 256)
!613 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !364, file: !347, line: 646, size: 64, elements: !614)
!614 = !{!615, !618}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !613, file: !347, line: 647, baseType: !616, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !617)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !347, line: 542, baseType: !177)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !613, file: !347, line: 648, baseType: !617, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !364, file: !347, line: 666, baseType: !60, size: 32, offset: 320)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !364, file: !347, line: 667, baseType: !621, size: 64, offset: 384)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !347, line: 579, size: 320, elements: !623)
!623 = !{!624}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !622, file: !347, line: 580, baseType: !449, size: 320)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !364, file: !347, line: 670, baseType: !626, size: 8, offset: 448)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !173, line: 35, baseType: !627)
!627 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !364, file: !347, line: 681, baseType: !629, size: 256, offset: 512)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !364, file: !347, line: 678, size: 256, elements: !630)
!630 = !{!631, !639}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !629, file: !347, line: 679, baseType: !632, size: 192, align: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !633, line: 5, size: 192, align: 64, elements: !634)
!633 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!634 = !{!635, !636, !638}
!635 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !632, file: !633, line: 6, baseType: !177, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !632, file: !633, line: 7, baseType: !637, size: 64, offset: 64)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !632, file: !633, line: 8, baseType: !637, size: 64, offset: 128)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !629, file: !347, line: 680, baseType: !177, size: 64, offset: 192)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !364, file: !347, line: 689, baseType: !196, size: 128, offset: 768)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !364, file: !347, line: 691, baseType: !642, size: 64, offset: 896)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !347, line: 691, flags: DIFlagFwdDecl)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !364, file: !347, line: 694, baseType: !645, size: 64, offset: 960)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !647)
!647 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !347, line: 694, flags: DIFlagFwdDecl)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !364, file: !347, line: 697, baseType: !177, size: 64, offset: 1024)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !364, file: !347, line: 699, baseType: !352, size: 64, offset: 1088)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !364, file: !347, line: 700, baseType: !182, size: 64, offset: 1152)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !364, file: !347, line: 711, baseType: !438, size: 64, offset: 1216)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !364, file: !347, line: 717, baseType: !653, size: 64, offset: 1280)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !655, line: 54, flags: DIFlagFwdDecl)
!655 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!656 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !364, file: !347, line: 722, baseType: !657, offset: 1344)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !347, line: 570, elements: !405)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !324, file: !300, line: 90, baseType: !659, size: 64, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !324, file: !300, line: 91, baseType: !661, size: 64, offset: 256)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !290, file: !192, line: 120, baseType: !663, size: 64, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{!666, !257}
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !668)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !20, line: 39, size: 384, elements: !669)
!669 = !{!670, !671, !675, !679, !685, !689}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !668, file: !20, line: 40, baseType: !19, size: 32)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !668, file: !20, line: 41, baseType: !672, size: 64, offset: 64)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!626}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !668, file: !20, line: 42, baseType: !676, size: 64, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{!182}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !668, file: !20, line: 43, baseType: !680, size: 64, offset: 192)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DISubroutineType(types: !682)
!682 = !{!547, !683}
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !20, line: 19, flags: DIFlagFwdDecl)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !668, file: !20, line: 44, baseType: !686, size: 64, offset: 256)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!547}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !668, file: !20, line: 45, baseType: !690, size: 64, offset: 320)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{null, !182}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !290, file: !192, line: 121, baseType: !694, size: 64, offset: 256)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!547, !257}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !290, file: !192, line: 122, baseType: !698, size: 64, offset: 320)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{null, !257, !701, !708}
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !575, line: 23, baseType: !703)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !575, line: 21, size: 32, elements: !704)
!704 = !{!705}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !703, file: !575, line: 22, baseType: !706, size: 32)
!706 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !173, line: 37, baseType: !707)
!707 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !175, line: 49, baseType: !21)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !575, line: 28, baseType: !710)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !575, line: 26, size: 32, elements: !711)
!711 = !{!712}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !710, file: !575, line: 27, baseType: !713, size: 32)
!713 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !173, line: 38, baseType: !714)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !175, line: 50, baseType: !21)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !191, file: !192, line: 70, baseType: !716, size: 64, offset: 384)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !718, line: 190, size: 1152, elements: !719)
!718 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!719 = !{!720, !721, !722, !723, !724, !725, !726, !727, !820, !821, !822, !823, !824, !827}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !717, file: !718, line: 191, baseType: !229, size: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !717, file: !718, line: 192, baseType: !229, size: 32, offset: 32)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !717, file: !718, line: 202, baseType: !716, size: 64, offset: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !717, file: !718, line: 203, baseType: !184, size: 64, offset: 128)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !717, file: !718, line: 205, baseType: !632, size: 192, align: 64, offset: 192)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !717, file: !718, line: 207, baseType: !547, size: 64, offset: 384)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !717, file: !718, line: 208, baseType: !21, size: 32, offset: 448)
!727 = !DIDerivedType(tag: DW_TAG_member, scope: !717, file: !718, line: 209, baseType: !728, size: 256, offset: 512)
!728 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !717, file: !718, line: 209, size: 256, elements: !729)
!729 = !{!730, !742, !746}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !728, file: !718, line: 210, baseType: !731, size: 256)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !718, line: 153, size: 256, elements: !732)
!732 = !{!733, !734, !738, !741}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !731, file: !718, line: 154, baseType: !177, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !731, file: !718, line: 156, baseType: !735, size: 64, offset: 64)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !633, line: 12, size: 64, elements: !736)
!736 = !{!737}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !735, file: !633, line: 13, baseType: !637, size: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !731, file: !718, line: 162, baseType: !739, size: 64, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !718, line: 162, flags: DIFlagFwdDecl)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !731, file: !718, line: 167, baseType: !177, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !728, file: !718, line: 211, baseType: !743, size: 64)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !718, line: 170, size: 64, elements: !744)
!744 = !{!745}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !743, file: !718, line: 171, baseType: !716, size: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !728, file: !718, line: 212, baseType: !747, size: 256)
!747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !718, line: 174, size: 256, elements: !748)
!748 = !{!749, !815, !818, !819}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !747, file: !718, line: 175, baseType: !750, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !752)
!752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !718, line: 271, size: 768, elements: !753)
!753 = !{!754, !776, !780, !784, !789, !793, !797, !801, !802, !803, !804, !811}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !752, file: !718, line: 276, baseType: !755, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{!60, !758}
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !718, line: 251, size: 1216, elements: !760)
!760 = !{!761, !762, !763, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !759, file: !718, line: 253, baseType: !716, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !759, file: !718, line: 254, baseType: !352, size: 64, offset: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !759, file: !718, line: 255, baseType: !764, size: 64, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !655, line: 66, flags: DIFlagFwdDecl)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !759, file: !718, line: 256, baseType: !182, size: 64, offset: 192)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !759, file: !718, line: 259, baseType: !526, size: 256, offset: 256)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !759, file: !718, line: 260, baseType: !526, size: 256, offset: 512)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !759, file: !718, line: 261, baseType: !60, size: 32, offset: 768)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !759, file: !718, line: 262, baseType: !196, size: 128, offset: 832)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !759, file: !718, line: 263, baseType: !274, size: 64, offset: 960)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !759, file: !718, line: 265, baseType: !172, size: 64, offset: 1024)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !759, file: !718, line: 266, baseType: !626, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !759, file: !718, line: 267, baseType: !626, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !759, file: !718, line: 268, baseType: !645, size: 64, offset: 1152)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !752, file: !718, line: 277, baseType: !777, size: 64, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{null, !758}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !752, file: !718, line: 290, baseType: !781, size: 64, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{!60, !764, !182}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !752, file: !718, line: 292, baseType: !785, size: 64, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{!182, !764, !788}
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !752, file: !718, line: 293, baseType: !790, size: 64, offset: 256)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!182, !764, !182, !788}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !752, file: !718, line: 294, baseType: !794, size: 64, offset: 320)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{null, !764, !182}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !752, file: !718, line: 296, baseType: !798, size: 64, offset: 384)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!306, !758, !274, !172, !355}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !752, file: !718, line: 306, baseType: !172, size: 64, offset: 448)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !752, file: !718, line: 313, baseType: !626, size: 8, offset: 512)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !752, file: !718, line: 314, baseType: !798, size: 64, offset: 576)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !752, file: !718, line: 317, baseType: !805, size: 64, offset: 640)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{!808, !758, !809}
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !116, line: 59, baseType: !21)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !718, line: 31, flags: DIFlagFwdDecl)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !752, file: !718, line: 320, baseType: !812, size: 64, offset: 704)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!60, !758, !363}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !747, file: !718, line: 176, baseType: !816, size: 64, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !718, line: 35, flags: DIFlagFwdDecl)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !747, file: !718, line: 177, baseType: !355, size: 64, offset: 128)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !747, file: !718, line: 178, baseType: !716, size: 64, offset: 192)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !717, file: !718, line: 215, baseType: !182, size: 64, offset: 768)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !717, file: !718, line: 221, baseType: !432, size: 64, offset: 832)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !717, file: !718, line: 223, baseType: !244, size: 16, offset: 896)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !717, file: !718, line: 224, baseType: !315, size: 16, offset: 912)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !717, file: !718, line: 225, baseType: !825, size: 64, offset: 960)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !718, line: 36, flags: DIFlagFwdDecl)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !717, file: !718, line: 227, baseType: !375, size: 128, align: 64, offset: 1024)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !191, file: !192, line: 71, baseType: !829, size: 32, offset: 448)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !830, line: 19, size: 32, elements: !831)
!830 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!831 = !{!832}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !829, file: !830, line: 20, baseType: !833, size: 32)
!833 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !834, line: 113, baseType: !835)
!834 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !834, line: 111, size: 32, elements: !836)
!836 = !{!837}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !835, file: !834, line: 112, baseType: !229, size: 32)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !191, file: !192, line: 73, baseType: !21, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !191, file: !192, line: 74, baseType: !21, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !191, file: !192, line: 75, baseType: !21, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !191, file: !192, line: 76, baseType: !21, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !191, file: !192, line: 77, baseType: !21, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !188, file: !40, line: 707, baseType: !187, size: 64, offset: 512)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !188, file: !40, line: 709, baseType: !845, size: 64, offset: 576)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !40, line: 37, flags: DIFlagFwdDecl)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !188, file: !40, line: 711, baseType: !184, size: 64, offset: 640)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !188, file: !40, line: 712, baseType: !849, size: 64, offset: 704)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !851)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !40, line: 89, size: 384, elements: !852)
!852 = !{!853, !854, !855, !861, !866, !870}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !851, file: !40, line: 90, baseType: !184, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !851, file: !40, line: 91, baseType: !321, size: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !851, file: !40, line: 92, baseType: !856, size: 64, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{!60, !859, !269}
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !851, file: !40, line: 93, baseType: !862, size: 64, offset: 192)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DISubroutineType(types: !864)
!864 = !{!274, !859, !865, !701, !708}
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !851, file: !40, line: 95, baseType: !867, size: 64, offset: 256)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{null, !187}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !851, file: !40, line: 97, baseType: !871, size: 64, offset: 320)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !873)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !52, line: 286, size: 1472, elements: !874)
!874 = !{!875, !879, !880, !881, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !873, file: !52, line: 287, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{!60, !187}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !873, file: !52, line: 288, baseType: !867, size: 64, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !873, file: !52, line: 289, baseType: !876, size: 64, offset: 128)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !873, file: !52, line: 290, baseType: !876, size: 64, offset: 192)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !873, file: !52, line: 291, baseType: !876, size: 64, offset: 256)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !873, file: !52, line: 292, baseType: !876, size: 64, offset: 320)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !873, file: !52, line: 293, baseType: !876, size: 64, offset: 384)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !873, file: !52, line: 294, baseType: !876, size: 64, offset: 448)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !873, file: !52, line: 295, baseType: !876, size: 64, offset: 512)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !873, file: !52, line: 296, baseType: !876, size: 64, offset: 576)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !873, file: !52, line: 297, baseType: !876, size: 64, offset: 640)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !873, file: !52, line: 298, baseType: !876, size: 64, offset: 704)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !873, file: !52, line: 299, baseType: !876, size: 64, offset: 768)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !873, file: !52, line: 300, baseType: !876, size: 64, offset: 832)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !873, file: !52, line: 301, baseType: !876, size: 64, offset: 896)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !873, file: !52, line: 302, baseType: !876, size: 64, offset: 960)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !873, file: !52, line: 303, baseType: !876, size: 64, offset: 1024)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !873, file: !52, line: 304, baseType: !876, size: 64, offset: 1088)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !873, file: !52, line: 305, baseType: !876, size: 64, offset: 1152)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !873, file: !52, line: 306, baseType: !876, size: 64, offset: 1216)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !873, file: !52, line: 307, baseType: !876, size: 64, offset: 1280)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !873, file: !52, line: 308, baseType: !876, size: 64, offset: 1344)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !873, file: !52, line: 309, baseType: !876, size: 64, offset: 1408)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !188, file: !40, line: 714, baseType: !902, size: 64, offset: 768)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !904)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !905, line: 80, size: 1344, elements: !906)
!905 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!906 = !{!907, !908, !909, !910, !911, !912, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1345}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !904, file: !905, line: 81, baseType: !184, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !904, file: !905, line: 82, baseType: !184, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !904, file: !905, line: 83, baseType: !321, size: 64, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !904, file: !905, line: 84, baseType: !321, size: 64, offset: 192)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !904, file: !905, line: 85, baseType: !321, size: 64, offset: 256)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !904, file: !905, line: 87, baseType: !913, size: 64, offset: 320)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DISubroutineType(types: !915)
!915 = !{!60, !187, !916}
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !34, line: 96, size: 1152, elements: !918)
!918 = !{!919, !920, !921, !1297, !1298, !1299, !1300, !1304, !1308, !1309, !1310, !1311, !1312, !1320, !1321, !1322, !1323, !1324, !1325}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !917, file: !34, line: 97, baseType: !184, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !917, file: !34, line: 98, baseType: !902, size: 64, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !917, file: !34, line: 100, baseType: !922, size: 64, offset: 128)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !27, line: 402, size: 9216, align: 512, elements: !924)
!924 = !{!925, !926, !927, !931, !952, !978, !979, !980, !981, !985, !988, !989, !990, !1043, !1044, !1045, !1046, !1047, !1048, !1049, !1050, !1053, !1057, !1077, !1095, !1096, !1097, !1098, !1107, !1130, !1131, !1134, !1137, !1138, !1139, !1140, !1141, !1142, !1143, !1148, !1149, !1255, !1263, !1264, !1265, !1267, !1271, !1272, !1276, !1277, !1278, !1279, !1281, !1282, !1283, !1290, !1291, !1292, !1296}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !923, file: !27, line: 403, baseType: !26, size: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !923, file: !27, line: 406, baseType: !196, size: 128, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !923, file: !27, line: 409, baseType: !928, size: 448, offset: 192)
!928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !929)
!929 = !{!930}
!930 = !DISubrange(count: 56)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !923, file: !27, line: 417, baseType: !932, size: 768, offset: 640)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !27, line: 45, size: 768, elements: !933)
!933 = !{!934, !935, !936, !937, !940}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !932, file: !27, line: 46, baseType: !191, size: 512)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !932, file: !27, line: 47, baseType: !922, size: 64, offset: 512)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !932, file: !27, line: 48, baseType: !202, size: 64, offset: 576)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !932, file: !27, line: 49, baseType: !938, size: 64, offset: 640)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !27, line: 49, flags: DIFlagFwdDecl)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !932, file: !27, line: 50, baseType: !941, size: 64, offset: 704)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !943, line: 26, size: 256, elements: !944)
!943 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!944 = !{!945, !946}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !942, file: !943, line: 27, baseType: !21, size: 32)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !942, file: !943, line: 28, baseType: !947, size: 192, offset: 64)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !948, line: 43, size: 192, elements: !949)
!948 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!949 = !{!950, !951}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !947, file: !948, line: 44, baseType: !460, size: 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !947, file: !948, line: 45, baseType: !196, size: 128, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !923, file: !27, line: 418, baseType: !953, size: 64, offset: 1408)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !27, line: 53, size: 448, elements: !955)
!955 = !{!956, !957, !962, !966, !970, !974}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !954, file: !27, line: 54, baseType: !311, size: 128)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !954, file: !27, line: 55, baseType: !958, size: 64, offset: 128)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DISubroutineType(types: !960)
!960 = !{!306, !953, !961, !274}
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !954, file: !27, line: 57, baseType: !963, size: 64, offset: 192)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DISubroutineType(types: !965)
!965 = !{!306, !953, !961, !184, !172}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !954, file: !27, line: 59, baseType: !967, size: 64, offset: 256)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DISubroutineType(types: !969)
!969 = !{null, !922, !184}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !954, file: !27, line: 60, baseType: !971, size: 64, offset: 320)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DISubroutineType(types: !973)
!973 = !{!60, !922}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !954, file: !27, line: 61, baseType: !975, size: 64, offset: 384)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DISubroutineType(types: !977)
!977 = !{null, !922}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !923, file: !27, line: 419, baseType: !184, size: 64, offset: 1472)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !923, file: !27, line: 420, baseType: !184, size: 64, offset: 1536)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !923, file: !27, line: 421, baseType: !202, size: 64, offset: 1600)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !923, file: !27, line: 424, baseType: !982, size: 64, offset: 1664)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !984)
!984 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !27, line: 424, flags: DIFlagFwdDecl)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !923, file: !27, line: 425, baseType: !986, size: 64, offset: 1728)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !505)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !923, file: !27, line: 426, baseType: !21, size: 32, offset: 1792)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !923, file: !27, line: 435, baseType: !526, size: 256, offset: 1856)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !923, file: !27, line: 437, baseType: !991, size: 64, offset: 2112)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !993, line: 69, size: 320, elements: !994)
!993 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!994 = !{!995, !996, !997, !1014, !1016, !1020, !1021}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !992, file: !993, line: 70, baseType: !184, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !992, file: !993, line: 71, baseType: !922, size: 64, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !992, file: !993, line: 72, baseType: !998, size: 64, offset: 128)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1000)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !993, line: 47, size: 256, elements: !1001)
!1001 = !{!1002, !1003, !1009, !1013}
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1000, file: !993, line: 49, baseType: !21, size: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1000, file: !993, line: 51, baseType: !1004, size: 64, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1005, size: 64)
!1005 = !DISubroutineType(types: !1006)
!1006 = !{!60, !184, !1007}
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !992)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1000, file: !993, line: 53, baseType: !1010, size: 64, offset: 128)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DISubroutineType(types: !1012)
!1012 = !{!60, !274, !1007}
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1000, file: !993, line: 55, baseType: !690, size: 64, offset: 192)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !992, file: !993, line: 73, baseType: !1015, size: 16, offset: 192)
!1015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !242)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !992, file: !993, line: 74, baseType: !1017, size: 8, offset: 208)
!1017 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !122, line: 16, baseType: !1018)
!1018 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !114, line: 20, baseType: !1019)
!1019 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !992, file: !993, line: 75, baseType: !130, size: 8, offset: 216)
!1021 = !DIDerivedType(tag: DW_TAG_member, scope: !992, file: !993, line: 76, baseType: !1022, size: 64, offset: 256)
!1022 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !992, file: !993, line: 76, size: 64, elements: !1023)
!1023 = !{!1024, !1025, !1032}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1022, file: !993, line: 77, baseType: !182, size: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1022, file: !993, line: 78, baseType: !1026, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1028)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !993, line: 86, size: 128, elements: !1029)
!1029 = !{!1030, !1031}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1028, file: !993, line: 87, baseType: !21, size: 32)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1028, file: !993, line: 88, baseType: !274, size: 64, offset: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1022, file: !993, line: 79, baseType: !1033, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1035)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !993, line: 92, size: 256, elements: !1036)
!1036 = !{!1037, !1038, !1039, !1041, !1042}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1035, file: !993, line: 94, baseType: !21, size: 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1035, file: !993, line: 95, baseType: !21, size: 32, offset: 32)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1035, file: !993, line: 96, baseType: !1040, size: 64, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !21, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1035, file: !993, line: 97, baseType: !998, size: 64, offset: 128)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1035, file: !993, line: 98, baseType: !182, size: 64, offset: 192)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !923, file: !27, line: 438, baseType: !21, size: 32, offset: 2176)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !923, file: !27, line: 441, baseType: !21, size: 32, offset: 2208)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !923, file: !27, line: 442, baseType: !982, size: 64, offset: 2240)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !923, file: !27, line: 443, baseType: !986, size: 64, offset: 2304)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !923, file: !27, line: 444, baseType: !626, size: 8, offset: 2368)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !923, file: !27, line: 451, baseType: !626, size: 8, offset: 2376)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !923, file: !27, line: 454, baseType: !21, size: 32, offset: 2400)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !923, file: !27, line: 455, baseType: !1051, size: 64, offset: 2432)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1052 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !27, line: 43, flags: DIFlagFwdDecl)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !923, file: !27, line: 458, baseType: !1054, size: 64, offset: 2496)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{!60}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !923, file: !27, line: 460, baseType: !1058, size: 4032, align: 512, offset: 2560)
!1058 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1059, size: 4032, elements: !1075)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !27, line: 362, size: 576, elements: !1060)
!1060 = !{!1061, !1062, !1063}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1059, file: !27, line: 363, baseType: !182, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1059, file: !27, line: 364, baseType: !21, size: 32, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1059, file: !27, line: 367, baseType: !1064, size: 448, offset: 128)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !27, line: 319, size: 448, elements: !1065)
!1065 = !{!1066, !1067}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1064, file: !27, line: 320, baseType: !922, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1064, file: !27, line: 321, baseType: !1068, size: 384, offset: 64)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1069, line: 40, size: 384, elements: !1070)
!1069 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1070 = !{!1071}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1068, file: !1069, line: 41, baseType: !1072, size: 384, align: 64)
!1072 = !DICompositeType(tag: DW_TAG_array_type, baseType: !632, size: 384, align: 64, elements: !1073)
!1073 = !{!1074}
!1074 = !DISubrange(count: 2)
!1075 = !{!1076}
!1076 = !DISubrange(count: 7)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !923, file: !27, line: 463, baseType: !1078, size: 192, offset: 6592)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1079, line: 8, size: 192, elements: !1080)
!1079 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1080 = !{!1081, !1082, !1084}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1078, file: !1079, line: 10, baseType: !21, size: 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1078, file: !1079, line: 11, baseType: !1083, size: 64, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !60, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1078, file: !1079, line: 12, baseType: !1085, size: 64, offset: 128)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1087, line: 59, size: 48, elements: !1088)
!1087 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1088 = !{!1089, !1090, !1091, !1092, !1093, !1094}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1086, file: !1087, line: 60, baseType: !564, size: 16)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1086, file: !1087, line: 61, baseType: !564, size: 16, offset: 16)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1086, file: !1087, line: 63, baseType: !21, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1086, file: !1087, line: 64, baseType: !21, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1086, file: !1087, line: 65, baseType: !21, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1086, file: !1087, line: 66, baseType: !21, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !923, file: !27, line: 465, baseType: !177, size: 64, offset: 6784)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !923, file: !27, line: 469, baseType: !21, size: 32, offset: 6848)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !923, file: !27, line: 470, baseType: !196, size: 128, offset: 6912)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !923, file: !27, line: 471, baseType: !1099, size: 64, offset: 7040)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1101, line: 33, size: 96, elements: !1102)
!1101 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1102 = !{!1103, !1104, !1105, !1106}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1100, file: !1101, line: 37, baseType: !60, size: 32)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1100, file: !1101, line: 43, baseType: !60, size: 32, offset: 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1100, file: !1101, line: 45, baseType: !244, size: 16, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1100, file: !1101, line: 47, baseType: !244, size: 16, offset: 80)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !923, file: !27, line: 476, baseType: !1108, size: 64, offset: 7104)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !27, line: 378, size: 256, elements: !1110)
!1110 = !{!1111, !1127, !1128, !1129}
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1109, file: !27, line: 379, baseType: !1112, size: 64)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1114, line: 204, baseType: !1115)
!1114 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1114, line: 197, size: 192, elements: !1116)
!1116 = !{!1117, !1119, !1120, !1121, !1123, !1125}
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1115, file: !1114, line: 198, baseType: !1118, size: 32)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1114, line: 21, baseType: !113)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1115, file: !1114, line: 199, baseType: !132, size: 8, offset: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1115, file: !1114, line: 200, baseType: !132, size: 8, offset: 40)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1115, file: !1114, line: 201, baseType: !1122, size: 16, offset: 48)
!1122 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1114, line: 17, baseType: !243)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1115, file: !1114, line: 202, baseType: !1124, size: 64, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1114, line: 16, baseType: !433)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1115, file: !1114, line: 203, baseType: !1126, size: 64, offset: 128)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1114, line: 22, baseType: !433)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1109, file: !27, line: 380, baseType: !21, size: 32, offset: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1109, file: !27, line: 381, baseType: !274, size: 64, offset: 128)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1109, file: !27, line: 382, baseType: !274, size: 64, offset: 192)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !923, file: !27, line: 477, baseType: !1109, size: 256, offset: 7168)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !923, file: !27, line: 480, baseType: !1132, size: 64, offset: 7424)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !27, line: 480, flags: DIFlagFwdDecl)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !923, file: !27, line: 483, baseType: !1135, size: 64, offset: 7488)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !27, line: 483, flags: DIFlagFwdDecl)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !923, file: !27, line: 488, baseType: !274, size: 64, offset: 7552)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !923, file: !27, line: 492, baseType: !182, size: 64, offset: 7616)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !923, file: !27, line: 493, baseType: !21, size: 32, offset: 7680)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !923, file: !27, line: 495, baseType: !182, size: 64, offset: 7744)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !923, file: !27, line: 496, baseType: !21, size: 32, offset: 7808)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !923, file: !27, line: 499, baseType: !21, size: 32, offset: 7840)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !923, file: !27, line: 500, baseType: !1144, size: 64, offset: 7872)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1146, line: 45, baseType: !1147)
!1146 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !60)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !923, file: !27, line: 503, baseType: !21, size: 32, offset: 7936)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !923, file: !27, line: 504, baseType: !1150, size: 64, offset: 8000)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1153, line: 96, size: 192, elements: !1154)
!1153 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1154 = !{!1155, !1156, !1216, !1219}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1152, file: !1153, line: 97, baseType: !21, size: 32)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1152, file: !1153, line: 98, baseType: !1157, size: 64, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1153, line: 24, size: 3072, elements: !1159)
!1159 = !{!1160, !1162, !1163, !1164, !1165, !1179, !1180, !1181, !1182, !1200, !1201, !1202, !1213, !1214, !1215}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1158, file: !1153, line: 26, baseType: !1161, size: 128)
!1161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !438, size: 128, elements: !1073)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1158, file: !1153, line: 27, baseType: !1161, size: 128, offset: 128)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1158, file: !1153, line: 28, baseType: !60, size: 32, offset: 256)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1158, file: !1153, line: 31, baseType: !209, size: 32, align: 512, offset: 512)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1158, file: !1153, line: 32, baseType: !1166, size: 960, offset: 576)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1167, line: 206, size: 960, elements: !1168)
!1167 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1168 = !{!1169, !1170, !1173, !1175, !1176, !1178}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1166, file: !1167, line: 207, baseType: !378, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1166, file: !1167, line: 208, baseType: !1171, size: 256, offset: 64)
!1171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1172, size: 256, elements: !507)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !378, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1166, file: !1167, line: 209, baseType: !1174, size: 256, offset: 320)
!1174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 256, elements: !507)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1166, file: !1167, line: 213, baseType: !309, size: 64, offset: 576)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1166, file: !1167, line: 215, baseType: !1177, size: 256, offset: 640)
!1177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 256, elements: !507)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1166, file: !1167, line: 216, baseType: !130, size: 8, offset: 896)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1158, file: !1153, line: 33, baseType: !177, size: 64, offset: 1536)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1158, file: !1153, line: 34, baseType: !177, size: 64, offset: 1600)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1158, file: !1153, line: 35, baseType: !626, size: 8, offset: 1664)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1158, file: !1153, line: 36, baseType: !1183, size: 320, offset: 1728)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1184, line: 11, size: 320, elements: !1185)
!1184 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1185 = !{!1186, !1193, !1194, !1199}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1183, file: !1184, line: 16, baseType: !1187, size: 128)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !173, line: 198, size: 128, elements: !1188)
!1188 = !{!1189, !1191}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1187, file: !173, line: 199, baseType: !1190, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1187, file: !173, line: 199, baseType: !1192, size: 64, offset: 64)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1183, file: !1184, line: 17, baseType: !177, size: 64, offset: 128)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1183, file: !1184, line: 18, baseType: !1195, size: 64, offset: 192)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = !DISubroutineType(types: !1197)
!1197 = !{null, !1198}
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1183, file: !1184, line: 19, baseType: !121, size: 32, offset: 256)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1158, file: !1153, line: 37, baseType: !591, size: 256, offset: 2048)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1158, file: !1153, line: 38, baseType: !375, size: 128, align: 64, offset: 2304)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1158, file: !1153, line: 39, baseType: !1203, size: 64, offset: 2432)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1153, line: 49, size: 768, elements: !1205)
!1205 = !{!1206, !1207, !1208, !1209, !1210, !1211, !1212}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1204, file: !1153, line: 50, baseType: !209, size: 32)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1204, file: !1153, line: 51, baseType: !1174, size: 256, offset: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1204, file: !1153, line: 53, baseType: !1174, size: 256, offset: 320)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1204, file: !1153, line: 54, baseType: !177, size: 64, offset: 576)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1204, file: !1153, line: 55, baseType: !1203, size: 64, offset: 640)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1204, file: !1153, line: 56, baseType: !60, size: 32, offset: 704)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1204, file: !1153, line: 57, baseType: !60, size: 32, offset: 736)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1158, file: !1153, line: 40, baseType: !177, size: 64, offset: 2496)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1158, file: !1153, line: 42, baseType: !60, size: 32, offset: 2560)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1158, file: !1153, line: 43, baseType: !1151, size: 64, offset: 2624)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1152, file: !1153, line: 99, baseType: !1217, offset: 128)
!1217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1218, line: 211, elements: !405)
!1218 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1152, file: !1153, line: 100, baseType: !1220, size: 64, offset: 128)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1153, line: 63, size: 3008, elements: !1222)
!1222 = !{!1223, !1224, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1254}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1221, file: !1153, line: 64, baseType: !1203, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1221, file: !1153, line: 65, baseType: !1225, size: 192, offset: 64)
!1225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1203, size: 192, elements: !275)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1221, file: !1153, line: 67, baseType: !60, size: 32, offset: 256)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1221, file: !1153, line: 68, baseType: !526, size: 256, offset: 320)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1221, file: !1153, line: 69, baseType: !209, size: 32, offset: 576)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1221, file: !1153, line: 70, baseType: !526, size: 256, offset: 640)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1221, file: !1153, line: 71, baseType: !177, size: 64, offset: 896)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1221, file: !1153, line: 72, baseType: !177, size: 64, offset: 960)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1221, file: !1153, line: 73, baseType: !177, size: 64, offset: 1024)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1221, file: !1153, line: 74, baseType: !177, size: 64, offset: 1088)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1221, file: !1153, line: 75, baseType: !177, size: 64, offset: 1152)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1221, file: !1153, line: 76, baseType: !177, size: 64, offset: 1216)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1221, file: !1153, line: 77, baseType: !177, size: 64, offset: 1280)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1221, file: !1153, line: 78, baseType: !177, size: 64, offset: 1344)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1221, file: !1153, line: 79, baseType: !626, size: 8, offset: 1408)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1221, file: !1153, line: 80, baseType: !177, size: 64, offset: 1472)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1221, file: !1153, line: 81, baseType: !526, size: 256, offset: 1536)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1221, file: !1153, line: 82, baseType: !942, size: 256, offset: 1792)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1221, file: !1153, line: 84, baseType: !229, size: 32, offset: 2048)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1221, file: !1153, line: 87, baseType: !177, size: 64, offset: 2112)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1221, file: !1153, line: 88, baseType: !177, size: 64, offset: 2176)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1221, file: !1153, line: 89, baseType: !1246, size: 704, offset: 2240)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !592, line: 111, size: 704, elements: !1247)
!1247 = !{!1248, !1249, !1250, !1253}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1246, file: !592, line: 112, baseType: !591, size: 256)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1246, file: !592, line: 113, baseType: !1183, size: 320, offset: 256)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1246, file: !592, line: 116, baseType: !1251, size: 64, offset: 576)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !592, line: 18, flags: DIFlagFwdDecl)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1246, file: !592, line: 117, baseType: !60, size: 32, offset: 640)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1221, file: !1153, line: 90, baseType: !1151, size: 64, offset: 2944)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !923, file: !27, line: 515, baseType: !1256, size: 64, offset: 8064)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1258, line: 117, size: 128, elements: !1259)
!1258 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1259 = !{!1260, !1261, !1262}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1257, file: !1258, line: 118, baseType: !505, size: 32)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1257, file: !1258, line: 119, baseType: !505, size: 32, offset: 32)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1257, file: !1258, line: 120, baseType: !309, size: 64, offset: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !923, file: !27, line: 516, baseType: !21, size: 32, offset: 8128)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !923, file: !27, line: 519, baseType: !21, size: 32, offset: 8160)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !923, file: !27, line: 520, baseType: !1266, size: 64, offset: 8192)
!1266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !923, file: !27, line: 523, baseType: !1268, size: 64, offset: 8256)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !27, line: 523, flags: DIFlagFwdDecl)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !923, file: !27, line: 524, baseType: !21, size: 32, offset: 8320)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !923, file: !27, line: 525, baseType: !1273, size: 64, offset: 8384)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !27, line: 525, flags: DIFlagFwdDecl)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !923, file: !27, line: 526, baseType: !21, size: 32, offset: 8448)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !923, file: !27, line: 533, baseType: !182, size: 64, offset: 8512)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !923, file: !27, line: 534, baseType: !21, size: 32, offset: 8576)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !923, file: !27, line: 535, baseType: !1280, size: 64, offset: 8640)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !923, file: !27, line: 536, baseType: !21, size: 32, offset: 8704)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !923, file: !27, line: 539, baseType: !60, size: 32, offset: 8736)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !923, file: !27, line: 540, baseType: !1284, size: 64, offset: 8768)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1286, line: 32, size: 64, elements: !1287)
!1286 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1287 = !{!1288, !1289}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1285, file: !1286, line: 33, baseType: !505, size: 32)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1285, file: !1286, line: 34, baseType: !505, size: 32, offset: 32)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !923, file: !27, line: 563, baseType: !196, size: 128, offset: 8832)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !923, file: !27, line: 565, baseType: !196, size: 128, offset: 8960)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !923, file: !27, line: 568, baseType: !1293, size: 64, offset: 9088)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DISubroutineType(types: !1295)
!1295 = !{null}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !923, file: !27, line: 570, baseType: !229, size: 32, offset: 9152)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !917, file: !34, line: 101, baseType: !184, size: 64, offset: 192)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !917, file: !34, line: 103, baseType: !626, size: 8, offset: 256)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !917, file: !34, line: 104, baseType: !33, size: 32, offset: 288)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !917, file: !34, line: 106, baseType: !1301, size: 64, offset: 320)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1303)
!1303 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !34, line: 106, flags: DIFlagFwdDecl)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !917, file: !34, line: 107, baseType: !1305, size: 64, offset: 384)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1307)
!1307 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !34, line: 107, flags: DIFlagFwdDecl)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !917, file: !34, line: 109, baseType: !876, size: 64, offset: 448)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !917, file: !34, line: 110, baseType: !867, size: 64, offset: 512)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !917, file: !34, line: 111, baseType: !876, size: 64, offset: 576)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !917, file: !34, line: 112, baseType: !867, size: 64, offset: 640)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !917, file: !34, line: 113, baseType: !1313, size: 64, offset: 704)
!1313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1314, size: 64)
!1314 = !DISubroutineType(types: !1315)
!1315 = !{!60, !187, !1316}
!1316 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !52, line: 60, baseType: !1317)
!1317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !52, line: 58, size: 32, elements: !1318)
!1318 = !{!1319}
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1317, file: !52, line: 59, baseType: !60, size: 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !917, file: !34, line: 114, baseType: !876, size: 64, offset: 768)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !917, file: !34, line: 115, baseType: !321, size: 64, offset: 832)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !917, file: !34, line: 116, baseType: !321, size: 64, offset: 896)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !917, file: !34, line: 118, baseType: !871, size: 64, offset: 960)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !917, file: !34, line: 119, baseType: !867, size: 64, offset: 1024)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !917, file: !34, line: 121, baseType: !1326, size: 64, offset: 1088)
!1326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1327, size: 64)
!1327 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !34, line: 121, flags: DIFlagFwdDecl)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !904, file: !905, line: 88, baseType: !856, size: 64, offset: 384)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !904, file: !905, line: 89, baseType: !876, size: 64, offset: 448)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !904, file: !905, line: 90, baseType: !867, size: 64, offset: 512)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !904, file: !905, line: 91, baseType: !867, size: 64, offset: 576)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !904, file: !905, line: 92, baseType: !867, size: 64, offset: 640)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !904, file: !905, line: 94, baseType: !876, size: 64, offset: 704)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !904, file: !905, line: 95, baseType: !876, size: 64, offset: 768)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !904, file: !905, line: 97, baseType: !1313, size: 64, offset: 832)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !904, file: !905, line: 98, baseType: !876, size: 64, offset: 896)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !904, file: !905, line: 100, baseType: !876, size: 64, offset: 960)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !904, file: !905, line: 102, baseType: !876, size: 64, offset: 1024)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !904, file: !905, line: 103, baseType: !867, size: 64, offset: 1088)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !904, file: !905, line: 105, baseType: !871, size: 64, offset: 1152)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !904, file: !905, line: 107, baseType: !1342, size: 64, offset: 1216)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1344)
!1344 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !905, line: 107, flags: DIFlagFwdDecl)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !904, file: !905, line: 109, baseType: !626, size: 8, offset: 1280)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !188, file: !40, line: 715, baseType: !916, size: 64, offset: 832)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !188, file: !40, line: 717, baseType: !182, size: 64, offset: 896)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !188, file: !40, line: 719, baseType: !182, size: 64, offset: 960)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !188, file: !40, line: 721, baseType: !526, size: 256, offset: 1024)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !188, file: !40, line: 725, baseType: !1351, size: 448, offset: 1280)
!1351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !40, line: 517, size: 448, elements: !1352)
!1352 = !{!1353, !1354, !1355, !1356}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1351, file: !40, line: 518, baseType: !196, size: 128)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1351, file: !40, line: 519, baseType: !196, size: 128, offset: 128)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1351, file: !40, line: 520, baseType: !196, size: 128, offset: 256)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1351, file: !40, line: 521, baseType: !39, size: 32, offset: 384)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !188, file: !40, line: 726, baseType: !1358, size: 2496, offset: 1728)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !52, line: 663, size: 2496, elements: !1359)
!1359 = !{!1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1404, !1405, !1406, !1407, !1408, !1409, !1480, !1481, !1482, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1520, !1524}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1358, file: !52, line: 664, baseType: !1316, size: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1358, file: !52, line: 665, baseType: !21, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1358, file: !52, line: 666, baseType: !21, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1358, file: !52, line: 667, baseType: !626, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1358, file: !52, line: 668, baseType: !626, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1358, file: !52, line: 669, baseType: !626, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1358, file: !52, line: 670, baseType: !626, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1358, file: !52, line: 671, baseType: !626, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1358, file: !52, line: 672, baseType: !626, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1358, file: !52, line: 673, baseType: !626, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1358, file: !52, line: 674, baseType: !626, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1358, file: !52, line: 675, baseType: !121, size: 32, offset: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1358, file: !52, line: 676, baseType: !209, size: 32, offset: 96)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1358, file: !52, line: 678, baseType: !196, size: 128, offset: 128)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1358, file: !52, line: 679, baseType: !942, size: 256, offset: 256)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1358, file: !52, line: 680, baseType: !1376, size: 64, offset: 512)
!1376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1377, size: 64)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1378, line: 43, size: 1536, elements: !1379)
!1378 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1379 = !{!1380, !1381, !1382, !1383, !1384, !1387, !1388, !1389, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1377, file: !1378, line: 44, baseType: !184, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1377, file: !1378, line: 45, baseType: !60, size: 32, offset: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1377, file: !1378, line: 46, baseType: !196, size: 128, offset: 128)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1377, file: !1378, line: 47, baseType: !209, size: 32, offset: 256)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1377, file: !1378, line: 48, baseType: !1385, size: 64, offset: 320)
!1385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1386, size: 64)
!1386 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !52, line: 629, flags: DIFlagFwdDecl)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1377, file: !1378, line: 49, baseType: !1183, size: 320, offset: 384)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1377, file: !1378, line: 50, baseType: !177, size: 64, offset: 704)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1377, file: !1378, line: 51, baseType: !1390, size: 64, offset: 768)
!1390 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1391, line: 29, baseType: !444)
!1391 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1377, file: !1378, line: 52, baseType: !1390, size: 64, offset: 832)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1377, file: !1378, line: 53, baseType: !1390, size: 64, offset: 896)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1377, file: !1378, line: 54, baseType: !1390, size: 64, offset: 960)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1377, file: !1378, line: 55, baseType: !1390, size: 64, offset: 1024)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1377, file: !1378, line: 56, baseType: !177, size: 64, offset: 1088)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1377, file: !1378, line: 57, baseType: !177, size: 64, offset: 1152)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1377, file: !1378, line: 58, baseType: !177, size: 64, offset: 1216)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1377, file: !1378, line: 59, baseType: !177, size: 64, offset: 1280)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1377, file: !1378, line: 60, baseType: !177, size: 64, offset: 1344)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1377, file: !1378, line: 61, baseType: !187, size: 64, offset: 1408)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1377, file: !1378, line: 62, baseType: !626, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1377, file: !1378, line: 63, baseType: !626, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1358, file: !52, line: 681, baseType: !626, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1358, file: !52, line: 682, baseType: !626, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1358, file: !52, line: 683, baseType: !626, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1358, file: !52, line: 684, baseType: !21, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1358, file: !52, line: 685, baseType: !21, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1358, file: !52, line: 690, baseType: !1410, size: 512, offset: 640)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !47, line: 118, size: 512, elements: !1411)
!1411 = !{!1412, !1418, !1419, !1424, !1476, !1477, !1478, !1479}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1410, file: !47, line: 119, baseType: !1413, size: 256)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1414, line: 9, size: 256, elements: !1415)
!1414 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1415 = !{!1416, !1417}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1413, file: !1414, line: 10, baseType: !632, size: 192, align: 64)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1413, file: !1414, line: 11, baseType: !1390, size: 64, offset: 192)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1410, file: !47, line: 120, baseType: !1390, size: 64, offset: 256)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1410, file: !47, line: 121, baseType: !1420, size: 64, offset: 320)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!46, !1423}
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1410, file: !47, line: 122, baseType: !1425, size: 64, offset: 384)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !47, line: 159, size: 512, align: 512, elements: !1427)
!1427 = !{!1428, !1453, !1454, !1457, !1462, !1463, !1471, !1475}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1426, file: !47, line: 160, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1430, size: 64)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !47, line: 215, size: 4608, align: 512, elements: !1431)
!1431 = !{!1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1430, file: !47, line: 216, baseType: !460, size: 32)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1430, file: !47, line: 217, baseType: !21, size: 32, offset: 32)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1430, file: !47, line: 218, baseType: !21, size: 32, offset: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1430, file: !47, line: 219, baseType: !21, size: 32, offset: 96)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1430, file: !47, line: 220, baseType: !21, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1430, file: !47, line: 221, baseType: !21, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1430, file: !47, line: 222, baseType: !21, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1430, file: !47, line: 223, baseType: !21, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1430, file: !47, line: 224, baseType: !21, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1430, file: !47, line: 226, baseType: !21, size: 32, offset: 160)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1430, file: !47, line: 227, baseType: !244, size: 16, offset: 192)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1430, file: !47, line: 228, baseType: !244, size: 16, offset: 208)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1430, file: !47, line: 229, baseType: !21, size: 32, offset: 224)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1430, file: !47, line: 235, baseType: !1390, size: 64, offset: 256)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1430, file: !47, line: 236, baseType: !1423, size: 64, offset: 320)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1430, file: !47, line: 237, baseType: !1390, size: 64, offset: 384)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1430, file: !47, line: 238, baseType: !1423, size: 64, offset: 448)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1430, file: !47, line: 239, baseType: !1450, size: 4096, align: 512, offset: 512)
!1450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1426, size: 4096, align: 512, elements: !1451)
!1451 = !{!1452}
!1452 = !DISubrange(count: 8)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1426, file: !47, line: 161, baseType: !21, size: 32, offset: 64)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1426, file: !47, line: 162, baseType: !1455, size: 32, offset: 96)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !173, line: 32, baseType: !1456)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !175, line: 96, baseType: !60)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1426, file: !47, line: 163, baseType: !1458, size: 32, offset: 128)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !475, line: 274, baseType: !1459)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !475, line: 274, size: 32, elements: !1460)
!1460 = !{!1461}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1459, file: !475, line: 274, baseType: !474, size: 32)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1426, file: !47, line: 164, baseType: !1423, size: 64, offset: 192)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1426, file: !47, line: 165, baseType: !1464, size: 128, offset: 256)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1414, line: 14, size: 128, elements: !1465)
!1465 = !{!1466}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1464, file: !1414, line: 15, baseType: !1467, size: 128)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !633, line: 26, size: 128, elements: !1468)
!1468 = !{!1469, !1470}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1467, file: !633, line: 27, baseType: !735, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1467, file: !633, line: 28, baseType: !637, size: 64, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1426, file: !47, line: 166, baseType: !1472, size: 64, offset: 384)
!1472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1473, size: 64)
!1473 = !DISubroutineType(types: !1474)
!1474 = !{!1390}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1426, file: !47, line: 167, baseType: !1390, size: 64, offset: 448)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1410, file: !47, line: 123, baseType: !130, size: 8, offset: 448)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1410, file: !47, line: 124, baseType: !130, size: 8, offset: 456)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1410, file: !47, line: 125, baseType: !130, size: 8, offset: 464)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1410, file: !47, line: 126, baseType: !130, size: 8, offset: 472)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1358, file: !52, line: 691, baseType: !432, size: 64, offset: 1152)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1358, file: !52, line: 692, baseType: !591, size: 256, offset: 1216)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1358, file: !52, line: 693, baseType: !1483, size: 192, offset: 1472)
!1483 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1484, line: 41, baseType: !1485)
!1484 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1484, line: 37, size: 192, elements: !1486)
!1486 = !{!1487, !1488}
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1485, file: !1484, line: 38, baseType: !209, size: 32)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1485, file: !1484, line: 39, baseType: !196, size: 128, offset: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1358, file: !52, line: 694, baseType: !1385, size: 64, offset: 1664)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1358, file: !52, line: 695, baseType: !229, size: 32, offset: 1728)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1358, file: !52, line: 696, baseType: !229, size: 32, offset: 1760)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1358, file: !52, line: 697, baseType: !21, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1358, file: !52, line: 698, baseType: !21, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1358, file: !52, line: 699, baseType: !21, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1358, file: !52, line: 700, baseType: !21, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1358, file: !52, line: 701, baseType: !21, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1358, file: !52, line: 702, baseType: !21, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1358, file: !52, line: 703, baseType: !626, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1358, file: !52, line: 704, baseType: !21, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1358, file: !52, line: 705, baseType: !21, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1358, file: !52, line: 706, baseType: !21, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1358, file: !52, line: 707, baseType: !21, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1358, file: !52, line: 708, baseType: !21, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1358, file: !52, line: 709, baseType: !21, size: 32, offset: 1824)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1358, file: !52, line: 710, baseType: !51, size: 32, offset: 1856)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1358, file: !52, line: 711, baseType: !59, size: 32, offset: 1888)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1358, file: !52, line: 712, baseType: !59, size: 32, offset: 1920)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1358, file: !52, line: 713, baseType: !60, size: 32, offset: 1952)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1358, file: !52, line: 714, baseType: !60, size: 32, offset: 1984)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1358, file: !52, line: 715, baseType: !432, size: 64, offset: 2048)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1358, file: !52, line: 716, baseType: !432, size: 64, offset: 2112)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1358, file: !52, line: 717, baseType: !432, size: 64, offset: 2176)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1358, file: !52, line: 718, baseType: !432, size: 64, offset: 2240)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1358, file: !52, line: 720, baseType: !1515, size: 64, offset: 2304)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !52, line: 632, size: 64, elements: !1517)
!1517 = !{!1518, !1519}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1516, file: !52, line: 633, baseType: !209, size: 32)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1516, file: !52, line: 634, baseType: !21, size: 32, offset: 32)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1358, file: !52, line: 721, baseType: !1521, size: 64, offset: 2368)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DISubroutineType(types: !1523)
!1523 = !{null, !187, !505}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1358, file: !52, line: 722, baseType: !1525, size: 64, offset: 2432)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !52, line: 722, flags: DIFlagFwdDecl)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !188, file: !40, line: 727, baseType: !1528, size: 64, offset: 4224)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !52, line: 742, size: 1792, elements: !1530)
!1530 = !{!1531, !1532, !1533, !1537, !1538, !1539}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1529, file: !52, line: 743, baseType: !873, size: 1472)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1529, file: !52, line: 744, baseType: !876, size: 64, offset: 1472)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1529, file: !52, line: 745, baseType: !1534, size: 64, offset: 1536)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{null, !187, !626}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1529, file: !52, line: 746, baseType: !876, size: 64, offset: 1600)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1529, file: !52, line: 747, baseType: !867, size: 64, offset: 1664)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1529, file: !52, line: 748, baseType: !867, size: 64, offset: 1728)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !188, file: !40, line: 736, baseType: !1541, size: 128, offset: 4288)
!1541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !40, line: 529, size: 128, elements: !1542)
!1542 = !{!1543, !1547}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1541, file: !40, line: 531, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1546, line: 13, flags: DIFlagFwdDecl)
!1546 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1541, file: !40, line: 532, baseType: !1548, size: 64, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !40, line: 49, flags: DIFlagFwdDecl)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !188, file: !40, line: 738, baseType: !1551, size: 64, offset: 4416)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1553)
!1553 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !40, line: 738, flags: DIFlagFwdDecl)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !188, file: !40, line: 740, baseType: !1555, size: 64, offset: 4480)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !188, file: !40, line: 741, baseType: !432, size: 64, offset: 4544)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !188, file: !40, line: 746, baseType: !432, size: 64, offset: 4608)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !188, file: !40, line: 747, baseType: !1559, size: 64, offset: 4672)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1561)
!1561 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !40, line: 747, flags: DIFlagFwdDecl)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !188, file: !40, line: 749, baseType: !1563, size: 64, offset: 4736)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !40, line: 428, size: 128, elements: !1565)
!1565 = !{!1566, !1567, !1568}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1564, file: !40, line: 433, baseType: !21, size: 32)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1564, file: !40, line: 434, baseType: !21, size: 32, offset: 32)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1564, file: !40, line: 435, baseType: !177, size: 64, offset: 64)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !188, file: !40, line: 751, baseType: !196, size: 128, offset: 4800)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !188, file: !40, line: 762, baseType: !1571, size: 64, offset: 4928)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !40, line: 762, flags: DIFlagFwdDecl)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !188, file: !40, line: 770, baseType: !1574, offset: 4992)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1575, line: 5, elements: !405)
!1575 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !188, file: !40, line: 772, baseType: !1577, size: 64, offset: 4992)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1579, line: 18, flags: DIFlagFwdDecl)
!1579 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !188, file: !40, line: 773, baseType: !1581, size: 64, offset: 5056)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !905, line: 22, flags: DIFlagFwdDecl)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !188, file: !40, line: 776, baseType: !60, size: 32, offset: 5120)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !188, file: !40, line: 778, baseType: !1585, size: 32, offset: 5152)
!1585 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !173, line: 21, baseType: !1586)
!1586 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !173, line: 18, baseType: !121)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !188, file: !40, line: 779, baseType: !121, size: 32, offset: 5184)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !188, file: !40, line: 781, baseType: !209, size: 32, offset: 5216)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !188, file: !40, line: 782, baseType: !196, size: 128, offset: 5248)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !188, file: !40, line: 784, baseType: !1591, size: 64, offset: 5376)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1593)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1594, line: 52, size: 768, elements: !1595)
!1594 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1595 = !{!1596, !1597, !1598, !1599, !1600, !1604, !1608, !1609, !1610, !1611, !1615, !1619}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1593, file: !1594, line: 53, baseType: !184, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1593, file: !1594, line: 55, baseType: !321, size: 64, offset: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1593, file: !1594, line: 56, baseType: !321, size: 64, offset: 128)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1593, file: !1594, line: 58, baseType: !856, size: 64, offset: 192)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1593, file: !1594, line: 59, baseType: !1601, size: 64, offset: 256)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!274, !859, !865}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1593, file: !1594, line: 61, baseType: !1605, size: 64, offset: 320)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{null, !1591}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1593, file: !1594, line: 62, baseType: !867, size: 64, offset: 384)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1593, file: !1594, line: 64, baseType: !876, size: 64, offset: 448)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1593, file: !1594, line: 66, baseType: !666, size: 64, offset: 512)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1593, file: !1594, line: 67, baseType: !1612, size: 64, offset: 576)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!547, !859}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1593, file: !1594, line: 69, baseType: !1616, size: 64, offset: 640)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{null, !859, !701, !708}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1593, file: !1594, line: 71, baseType: !871, size: 64, offset: 704)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !188, file: !40, line: 785, baseType: !321, size: 64, offset: 5440)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !188, file: !40, line: 787, baseType: !867, size: 64, offset: 5504)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !188, file: !40, line: 788, baseType: !1623, size: 64, offset: 5568)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !40, line: 46, flags: DIFlagFwdDecl)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !188, file: !40, line: 789, baseType: !1626, size: 64, offset: 5632)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !40, line: 48, flags: DIFlagFwdDecl)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !188, file: !40, line: 791, baseType: !1629, size: 64, offset: 5696)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !40, line: 597, size: 128, elements: !1631)
!1631 = !{!1632, !1633, !1634, !1635, !1636}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1630, file: !40, line: 598, baseType: !67, size: 32)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1630, file: !40, line: 599, baseType: !76, size: 32, offset: 32)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1630, file: !40, line: 600, baseType: !81, size: 32, offset: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1630, file: !40, line: 601, baseType: !626, size: 8, offset: 96)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1630, file: !40, line: 602, baseType: !626, size: 8, offset: 104)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !188, file: !40, line: 793, baseType: !86, size: 32, offset: 5760)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !188, file: !40, line: 795, baseType: !626, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !188, file: !40, line: 796, baseType: !626, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !188, file: !40, line: 797, baseType: !626, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !188, file: !40, line: 798, baseType: !626, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !188, file: !40, line: 799, baseType: !626, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !151, file: !149, line: 29, baseType: !124, size: 256, offset: 448)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "phy_action", scope: !151, file: !149, line: 34, baseType: !1645, size: 128, offset: 704)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rtl_fw_phy_action", file: !149, line: 31, size: 128, elements: !1646)
!1646 = !{!1647, !1648}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1645, file: !149, line: 32, baseType: !133, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1645, file: !149, line: 33, baseType: !172, size: 64, offset: 64)
!1649 = !{!1650, !1651, !1652, !1654, !1655, !1656, !1657, !1658, !1659, !1663, !1664, !1665}
!1650 = !DILocalVariable(name: "tp", arg: 1, scope: !144, file: !2, line: 140, type: !147)
!1651 = !DILocalVariable(name: "rtl_fw", arg: 2, scope: !144, file: !2, line: 140, type: !150)
!1652 = !DILocalVariable(name: "pa", scope: !144, file: !2, line: 142, type: !1653)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1654 = !DILocalVariable(name: "fw_write", scope: !144, file: !2, line: 143, type: !154)
!1655 = !DILocalVariable(name: "fw_read", scope: !144, file: !2, line: 144, type: !159)
!1656 = !DILocalVariable(name: "predata", scope: !144, file: !2, line: 145, type: !60)
!1657 = !DILocalVariable(name: "count", scope: !144, file: !2, line: 145, type: !60)
!1658 = !DILocalVariable(name: "index", scope: !144, file: !2, line: 146, type: !172)
!1659 = !DILocalVariable(name: "action", scope: !1660, file: !2, line: 149, type: !121)
!1660 = distinct !DILexicalBlock(scope: !1661, file: !2, line: 148, column: 45)
!1661 = distinct !DILexicalBlock(scope: !1662, file: !2, line: 148, column: 2)
!1662 = distinct !DILexicalBlock(scope: !144, file: !2, line: 148, column: 2)
!1663 = !DILocalVariable(name: "data", scope: !1660, file: !2, line: 150, type: !121)
!1664 = !DILocalVariable(name: "regno", scope: !1660, file: !2, line: 151, type: !121)
!1665 = !DILocalVariable(name: "opcode", scope: !1660, file: !2, line: 152, type: !92)
!1666 = !DILocation(line: 140, column: 52, scope: !144)
!1667 = !DILocation(line: 140, column: 71, scope: !144)
!1668 = !DILocation(line: 142, column: 2, scope: !144)
!1669 = !DILocation(line: 142, column: 28, scope: !144)
!1670 = !DILocation(line: 142, column: 34, scope: !144)
!1671 = !DILocation(line: 142, column: 42, scope: !144)
!1672 = !DILocation(line: 143, column: 2, scope: !144)
!1673 = !DILocation(line: 143, column: 17, scope: !144)
!1674 = !DILocation(line: 143, column: 28, scope: !144)
!1675 = !DILocation(line: 143, column: 36, scope: !144)
!1676 = !DILocation(line: 144, column: 2, scope: !144)
!1677 = !DILocation(line: 144, column: 16, scope: !144)
!1678 = !DILocation(line: 144, column: 26, scope: !144)
!1679 = !DILocation(line: 144, column: 34, scope: !144)
!1680 = !DILocation(line: 145, column: 2, scope: !144)
!1681 = !DILocation(line: 145, column: 6, scope: !144)
!1682 = !DILocation(line: 145, column: 19, scope: !144)
!1683 = !DILocation(line: 146, column: 2, scope: !144)
!1684 = !DILocation(line: 146, column: 9, scope: !144)
!1685 = !DILocation(line: 148, column: 13, scope: !1662)
!1686 = !DILocation(line: 148, column: 7, scope: !1662)
!1687 = !DILocation(line: 148, column: 18, scope: !1661)
!1688 = !DILocation(line: 148, column: 26, scope: !1661)
!1689 = !DILocation(line: 148, column: 30, scope: !1661)
!1690 = !DILocation(line: 148, column: 24, scope: !1661)
!1691 = !DILocation(line: 148, column: 2, scope: !1662)
!1692 = !DILocation(line: 149, column: 3, scope: !1660)
!1693 = !DILocation(line: 149, column: 7, scope: !1660)
!1694 = !DILocation(line: 149, column: 16, scope: !1660)
!1695 = !DILocation(line: 150, column: 3, scope: !1660)
!1696 = !DILocation(line: 150, column: 7, scope: !1660)
!1697 = !DILocation(line: 150, column: 14, scope: !1660)
!1698 = !DILocation(line: 150, column: 21, scope: !1660)
!1699 = !DILocation(line: 151, column: 3, scope: !1660)
!1700 = !DILocation(line: 151, column: 7, scope: !1660)
!1701 = !DILocation(line: 151, column: 16, scope: !1660)
!1702 = !DILocation(line: 151, column: 23, scope: !1660)
!1703 = !DILocation(line: 151, column: 37, scope: !1660)
!1704 = !DILocation(line: 152, column: 3, scope: !1660)
!1705 = !DILocation(line: 152, column: 22, scope: !1660)
!1706 = !DILocation(line: 152, column: 31, scope: !1660)
!1707 = !DILocation(line: 152, column: 38, scope: !1660)
!1708 = !DILocation(line: 154, column: 8, scope: !1709)
!1709 = distinct !DILexicalBlock(scope: !1660, file: !2, line: 154, column: 7)
!1710 = !DILocation(line: 154, column: 7, scope: !1660)
!1711 = !DILocation(line: 155, column: 4, scope: !1709)
!1712 = !DILocation(line: 157, column: 11, scope: !1660)
!1713 = !DILocation(line: 157, column: 3, scope: !1660)
!1714 = !DILocation(line: 159, column: 14, scope: !1715)
!1715 = distinct !DILexicalBlock(scope: !1660, file: !2, line: 157, column: 19)
!1716 = !DILocation(line: 159, column: 22, scope: !1715)
!1717 = !DILocation(line: 159, column: 26, scope: !1715)
!1718 = !DILocation(line: 159, column: 12, scope: !1715)
!1719 = !DILocation(line: 160, column: 9, scope: !1715)
!1720 = !DILocation(line: 161, column: 4, scope: !1715)
!1721 = !DILocation(line: 163, column: 15, scope: !1715)
!1722 = !DILocation(line: 163, column: 12, scope: !1715)
!1723 = !DILocation(line: 164, column: 4, scope: !1715)
!1724 = !DILocation(line: 166, column: 15, scope: !1715)
!1725 = !DILocation(line: 166, column: 12, scope: !1715)
!1726 = !DILocation(line: 167, column: 4, scope: !1715)
!1727 = !DILocation(line: 169, column: 14, scope: !1715)
!1728 = !DILocation(line: 169, column: 20, scope: !1715)
!1729 = !DILocation(line: 169, column: 13, scope: !1715)
!1730 = !DILocation(line: 169, column: 10, scope: !1715)
!1731 = !DILocation(line: 170, column: 4, scope: !1715)
!1732 = !DILocation(line: 172, column: 8, scope: !1733)
!1733 = distinct !DILexicalBlock(scope: !1715, file: !2, line: 172, column: 8)
!1734 = !DILocation(line: 172, column: 8, scope: !1715)
!1735 = !DILocation(line: 173, column: 16, scope: !1736)
!1736 = distinct !DILexicalBlock(scope: !1733, file: !2, line: 172, column: 14)
!1737 = !DILocation(line: 173, column: 24, scope: !1736)
!1738 = !DILocation(line: 173, column: 14, scope: !1736)
!1739 = !DILocation(line: 174, column: 15, scope: !1736)
!1740 = !DILocation(line: 174, column: 23, scope: !1736)
!1741 = !DILocation(line: 174, column: 13, scope: !1736)
!1742 = !DILocation(line: 175, column: 4, scope: !1736)
!1743 = !DILocation(line: 176, column: 16, scope: !1744)
!1744 = distinct !DILexicalBlock(scope: !1733, file: !2, line: 175, column: 11)
!1745 = !DILocation(line: 176, column: 24, scope: !1744)
!1746 = !DILocation(line: 176, column: 14, scope: !1744)
!1747 = !DILocation(line: 177, column: 15, scope: !1744)
!1748 = !DILocation(line: 177, column: 23, scope: !1744)
!1749 = !DILocation(line: 177, column: 13, scope: !1744)
!1750 = !DILocation(line: 180, column: 4, scope: !1715)
!1751 = !DILocation(line: 182, column: 10, scope: !1715)
!1752 = !DILocation(line: 183, column: 4, scope: !1715)
!1753 = !DILocation(line: 185, column: 4, scope: !1715)
!1754 = !DILocation(line: 185, column: 13, scope: !1715)
!1755 = !DILocation(line: 185, column: 17, scope: !1715)
!1756 = !DILocation(line: 185, column: 24, scope: !1715)
!1757 = !DILocation(line: 186, column: 4, scope: !1715)
!1758 = !DILocation(line: 188, column: 8, scope: !1759)
!1759 = distinct !DILexicalBlock(scope: !1715, file: !2, line: 188, column: 8)
!1760 = !DILocation(line: 188, column: 17, scope: !1759)
!1761 = !DILocation(line: 188, column: 14, scope: !1759)
!1762 = !DILocation(line: 188, column: 8, scope: !1715)
!1763 = !DILocation(line: 189, column: 10, scope: !1759)
!1764 = !DILocation(line: 189, column: 5, scope: !1759)
!1765 = !DILocation(line: 190, column: 4, scope: !1715)
!1766 = !DILocation(line: 192, column: 8, scope: !1767)
!1767 = distinct !DILexicalBlock(scope: !1715, file: !2, line: 192, column: 8)
!1768 = !DILocation(line: 192, column: 19, scope: !1767)
!1769 = !DILocation(line: 192, column: 16, scope: !1767)
!1770 = !DILocation(line: 192, column: 8, scope: !1715)
!1771 = !DILocation(line: 193, column: 14, scope: !1767)
!1772 = !DILocation(line: 193, column: 11, scope: !1767)
!1773 = !DILocation(line: 193, column: 5, scope: !1767)
!1774 = !DILocation(line: 194, column: 4, scope: !1715)
!1775 = !DILocation(line: 196, column: 8, scope: !1776)
!1776 = distinct !DILexicalBlock(scope: !1715, file: !2, line: 196, column: 8)
!1777 = !DILocation(line: 196, column: 19, scope: !1776)
!1778 = !DILocation(line: 196, column: 16, scope: !1776)
!1779 = !DILocation(line: 196, column: 8, scope: !1715)
!1780 = !DILocation(line: 197, column: 14, scope: !1776)
!1781 = !DILocation(line: 197, column: 11, scope: !1776)
!1782 = !DILocation(line: 197, column: 5, scope: !1776)
!1783 = !DILocation(line: 198, column: 4, scope: !1715)
!1784 = !DILocation(line: 200, column: 4, scope: !1715)
!1785 = !DILocation(line: 200, column: 13, scope: !1715)
!1786 = !DILocation(line: 200, column: 17, scope: !1715)
!1787 = !DILocation(line: 200, column: 24, scope: !1715)
!1788 = !DILocation(line: 201, column: 4, scope: !1715)
!1789 = !DILocation(line: 203, column: 13, scope: !1715)
!1790 = !DILocation(line: 203, column: 10, scope: !1715)
!1791 = !DILocation(line: 204, column: 4, scope: !1715)
!1792 = !DILocation(line: 206, column: 11, scope: !1715)
!1793 = !DILocation(line: 206, column: 4, scope: !1715)
!1794 = !DILocation(line: 207, column: 4, scope: !1715)
!1795 = !DILocation(line: 209, column: 2, scope: !1661)
!1796 = !DILocation(line: 209, column: 2, scope: !1660)
!1797 = !DILocation(line: 148, column: 41, scope: !1661)
!1798 = !DILocation(line: 148, column: 2, scope: !1661)
!1799 = distinct !{!1799, !1691, !1800, !1801, !1802}
!1800 = !DILocation(line: 209, column: 2, scope: !1662)
!1801 = !{!"llvm.loop.mustprogress"}
!1802 = !{!"llvm.loop.unroll.disable"}
!1803 = !DILocation(line: 210, column: 1, scope: !144)
!1804 = !DISubprogram(name: "msleep", scope: !1805, file: !1805, line: 61, type: !1806, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1805 = !DIFile(filename: "./include/linux/delay.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "305c363b0f511174031dc8979b58b410")
!1806 = !DISubroutineType(types: !1807)
!1807 = !{null, !21}
!1808 = distinct !DISubprogram(name: "rtl_fw_release_firmware", scope: !2, file: !2, line: 212, type: !1809, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1811)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{null, !150}
!1811 = !{!1812}
!1812 = !DILocalVariable(name: "rtl_fw", arg: 1, scope: !1808, file: !2, line: 212, type: !150)
!1813 = !DILocation(line: 212, column: 45, scope: !1808)
!1814 = !DILocation(line: 214, column: 19, scope: !1808)
!1815 = !DILocation(line: 214, column: 27, scope: !1808)
!1816 = !DILocation(line: 214, column: 2, scope: !1808)
!1817 = !DILocation(line: 215, column: 1, scope: !1808)
!1818 = !DISubprogram(name: "release_firmware", scope: !169, file: !169, line: 114, type: !1819, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1819 = !DISubroutineType(types: !1820)
!1820 = !{null, !166}
!1821 = distinct !DISubprogram(name: "rtl_fw_request_firmware", scope: !2, file: !2, line: 217, type: !1822, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1824)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{!60, !150}
!1824 = !{!1825, !1826, !1827}
!1825 = !DILocalVariable(name: "rtl_fw", arg: 1, scope: !1821, file: !2, line: 217, type: !150)
!1826 = !DILocalVariable(name: "rc", scope: !1821, file: !2, line: 219, type: !60)
!1827 = !DILabel(scope: !1821, name: "out", file: !2, line: 232)
!1828 = !DILocation(line: 217, column: 44, scope: !1821)
!1829 = !DILocation(line: 219, column: 2, scope: !1821)
!1830 = !DILocation(line: 219, column: 6, scope: !1821)
!1831 = !DILocation(line: 221, column: 25, scope: !1821)
!1832 = !DILocation(line: 221, column: 33, scope: !1821)
!1833 = !DILocation(line: 221, column: 37, scope: !1821)
!1834 = !DILocation(line: 221, column: 45, scope: !1821)
!1835 = !DILocation(line: 221, column: 54, scope: !1821)
!1836 = !DILocation(line: 221, column: 62, scope: !1821)
!1837 = !DILocation(line: 221, column: 7, scope: !1821)
!1838 = !DILocation(line: 221, column: 5, scope: !1821)
!1839 = !DILocation(line: 222, column: 6, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1821, file: !2, line: 222, column: 6)
!1841 = !DILocation(line: 222, column: 9, scope: !1840)
!1842 = !DILocation(line: 222, column: 6, scope: !1821)
!1843 = !DILocation(line: 223, column: 3, scope: !1840)
!1844 = !DILocation(line: 225, column: 24, scope: !1845)
!1845 = distinct !DILexicalBlock(scope: !1821, file: !2, line: 225, column: 6)
!1846 = !DILocation(line: 225, column: 7, scope: !1845)
!1847 = !DILocation(line: 225, column: 32, scope: !1845)
!1848 = !DILocation(line: 225, column: 51, scope: !1845)
!1849 = !DILocation(line: 225, column: 36, scope: !1845)
!1850 = !DILocation(line: 225, column: 6, scope: !1821)
!1851 = !DILocation(line: 226, column: 20, scope: !1852)
!1852 = distinct !DILexicalBlock(scope: !1845, file: !2, line: 225, column: 60)
!1853 = !DILocation(line: 226, column: 28, scope: !1852)
!1854 = !DILocation(line: 226, column: 3, scope: !1852)
!1855 = !DILocation(line: 227, column: 6, scope: !1852)
!1856 = !DILocation(line: 228, column: 3, scope: !1852)
!1857 = !DILocation(line: 231, column: 2, scope: !1821)
!1858 = !DILocation(line: 232, column: 1, scope: !1821)
!1859 = !DILocation(line: 233, column: 2, scope: !1860)
!1860 = distinct !DILexicalBlock(scope: !1821, file: !2, line: 233, column: 2)
!1861 = !DILocation(line: 233, column: 2, scope: !1862)
!1862 = distinct !DILexicalBlock(scope: !1860, file: !2, line: 233, column: 2)
!1863 = !DILocation(line: 235, column: 9, scope: !1821)
!1864 = !DILocation(line: 235, column: 2, scope: !1821)
!1865 = !DILocation(line: 236, column: 1, scope: !1821)
!1866 = !DISubprogram(name: "request_firmware", scope: !169, file: !169, line: 96, type: !1867, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!60, !1869, !184, !187}
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!1870 = distinct !DISubprogram(name: "rtl_fw_format_ok", scope: !2, file: !2, line: 42, type: !1871, scopeLine: 43, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !1873)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!626, !150}
!1873 = !{!1874, !1875, !1876, !1877, !1878, !1881, !1882, !1883}
!1874 = !DILocalVariable(name: "rtl_fw", arg: 1, scope: !1870, file: !2, line: 42, type: !150)
!1875 = !DILocalVariable(name: "fw", scope: !1870, file: !2, line: 44, type: !166)
!1876 = !DILocalVariable(name: "fw_info", scope: !1870, file: !2, line: 45, type: !117)
!1877 = !DILocalVariable(name: "pa", scope: !1870, file: !2, line: 46, type: !1653)
!1878 = !DILocalVariable(name: "i", scope: !1879, file: !2, line: 52, type: !172)
!1879 = distinct !DILexicalBlock(scope: !1880, file: !2, line: 51, column: 23)
!1880 = distinct !DILexicalBlock(scope: !1870, file: !2, line: 51, column: 6)
!1881 = !DILocalVariable(name: "size", scope: !1879, file: !2, line: 52, type: !172)
!1882 = !DILocalVariable(name: "start", scope: !1879, file: !2, line: 52, type: !172)
!1883 = !DILocalVariable(name: "checksum", scope: !1879, file: !2, line: 53, type: !130)
!1884 = !DILocation(line: 42, column: 45, scope: !1870)
!1885 = !DILocation(line: 44, column: 2, scope: !1870)
!1886 = !DILocation(line: 44, column: 25, scope: !1870)
!1887 = !DILocation(line: 44, column: 30, scope: !1870)
!1888 = !DILocation(line: 44, column: 38, scope: !1870)
!1889 = !DILocation(line: 45, column: 2, scope: !1870)
!1890 = !DILocation(line: 45, column: 18, scope: !1870)
!1891 = !DILocation(line: 45, column: 46, scope: !1870)
!1892 = !DILocation(line: 45, column: 50, scope: !1870)
!1893 = !DILocation(line: 46, column: 2, scope: !1870)
!1894 = !DILocation(line: 46, column: 28, scope: !1870)
!1895 = !DILocation(line: 46, column: 34, scope: !1870)
!1896 = !DILocation(line: 46, column: 42, scope: !1870)
!1897 = !DILocation(line: 48, column: 6, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1870, file: !2, line: 48, column: 6)
!1899 = !DILocation(line: 48, column: 10, scope: !1898)
!1900 = !DILocation(line: 48, column: 15, scope: !1898)
!1901 = !DILocation(line: 48, column: 6, scope: !1870)
!1902 = !DILocation(line: 49, column: 3, scope: !1898)
!1903 = !DILocation(line: 51, column: 7, scope: !1880)
!1904 = !DILocation(line: 51, column: 16, scope: !1880)
!1905 = !DILocation(line: 51, column: 6, scope: !1870)
!1906 = !DILocation(line: 52, column: 3, scope: !1879)
!1907 = !DILocation(line: 52, column: 10, scope: !1879)
!1908 = !DILocation(line: 52, column: 13, scope: !1879)
!1909 = !DILocation(line: 52, column: 19, scope: !1879)
!1910 = !DILocation(line: 53, column: 3, scope: !1879)
!1911 = !DILocation(line: 53, column: 6, scope: !1879)
!1912 = !DILocation(line: 55, column: 7, scope: !1913)
!1913 = distinct !DILexicalBlock(scope: !1879, file: !2, line: 55, column: 7)
!1914 = !DILocation(line: 55, column: 11, scope: !1913)
!1915 = !DILocation(line: 55, column: 16, scope: !1913)
!1916 = !DILocation(line: 55, column: 7, scope: !1879)
!1917 = !DILocation(line: 56, column: 4, scope: !1913)
!1918 = !DILocation(line: 58, column: 10, scope: !1919)
!1919 = distinct !DILexicalBlock(scope: !1879, file: !2, line: 58, column: 3)
!1920 = !DILocation(line: 58, column: 8, scope: !1919)
!1921 = !DILocation(line: 58, column: 15, scope: !1922)
!1922 = distinct !DILexicalBlock(scope: !1919, file: !2, line: 58, column: 3)
!1923 = !DILocation(line: 58, column: 19, scope: !1922)
!1924 = !DILocation(line: 58, column: 23, scope: !1922)
!1925 = !DILocation(line: 58, column: 17, scope: !1922)
!1926 = !DILocation(line: 58, column: 3, scope: !1919)
!1927 = !DILocation(line: 59, column: 16, scope: !1922)
!1928 = !DILocation(line: 59, column: 20, scope: !1922)
!1929 = !DILocation(line: 59, column: 25, scope: !1922)
!1930 = !DILocation(line: 59, column: 13, scope: !1922)
!1931 = !DILocation(line: 59, column: 4, scope: !1922)
!1932 = !DILocation(line: 58, column: 30, scope: !1922)
!1933 = !DILocation(line: 58, column: 3, scope: !1922)
!1934 = distinct !{!1934, !1926, !1935, !1801, !1802}
!1935 = !DILocation(line: 59, column: 26, scope: !1919)
!1936 = !DILocation(line: 60, column: 7, scope: !1937)
!1937 = distinct !DILexicalBlock(scope: !1879, file: !2, line: 60, column: 7)
!1938 = !DILocation(line: 60, column: 16, scope: !1937)
!1939 = !DILocation(line: 60, column: 7, scope: !1879)
!1940 = !DILocation(line: 61, column: 4, scope: !1937)
!1941 = !DILocation(line: 63, column: 11, scope: !1879)
!1942 = !DILocation(line: 63, column: 9, scope: !1879)
!1943 = !DILocation(line: 64, column: 7, scope: !1944)
!1944 = distinct !DILexicalBlock(scope: !1879, file: !2, line: 64, column: 7)
!1945 = !DILocation(line: 64, column: 15, scope: !1944)
!1946 = !DILocation(line: 64, column: 19, scope: !1944)
!1947 = !DILocation(line: 64, column: 13, scope: !1944)
!1948 = !DILocation(line: 64, column: 7, scope: !1879)
!1949 = !DILocation(line: 65, column: 4, scope: !1944)
!1950 = !DILocation(line: 67, column: 10, scope: !1879)
!1951 = !DILocation(line: 67, column: 8, scope: !1879)
!1952 = !DILocation(line: 68, column: 7, scope: !1953)
!1953 = distinct !DILexicalBlock(scope: !1879, file: !2, line: 68, column: 7)
!1954 = !DILocation(line: 68, column: 15, scope: !1953)
!1955 = !DILocation(line: 68, column: 19, scope: !1953)
!1956 = !DILocation(line: 68, column: 26, scope: !1953)
!1957 = !DILocation(line: 68, column: 24, scope: !1953)
!1958 = !DILocation(line: 68, column: 33, scope: !1953)
!1959 = !DILocation(line: 68, column: 12, scope: !1953)
!1960 = !DILocation(line: 68, column: 7, scope: !1879)
!1961 = !DILocation(line: 69, column: 4, scope: !1953)
!1962 = !DILocation(line: 71, column: 11, scope: !1879)
!1963 = !DILocation(line: 71, column: 19, scope: !1879)
!1964 = !DILocation(line: 71, column: 28, scope: !1879)
!1965 = !DILocation(line: 71, column: 37, scope: !1879)
!1966 = !DILocation(line: 71, column: 3, scope: !1879)
!1967 = !DILocation(line: 73, column: 25, scope: !1879)
!1968 = !DILocation(line: 73, column: 29, scope: !1879)
!1969 = !DILocation(line: 73, column: 36, scope: !1879)
!1970 = !DILocation(line: 73, column: 34, scope: !1879)
!1971 = !DILocation(line: 73, column: 3, scope: !1879)
!1972 = !DILocation(line: 73, column: 7, scope: !1879)
!1973 = !DILocation(line: 73, column: 12, scope: !1879)
!1974 = !DILocation(line: 74, column: 14, scope: !1879)
!1975 = !DILocation(line: 74, column: 3, scope: !1879)
!1976 = !DILocation(line: 74, column: 7, scope: !1879)
!1977 = !DILocation(line: 74, column: 12, scope: !1879)
!1978 = !DILocation(line: 75, column: 2, scope: !1880)
!1979 = !DILocation(line: 75, column: 2, scope: !1879)
!1980 = !DILocation(line: 76, column: 7, scope: !1981)
!1981 = distinct !DILexicalBlock(scope: !1982, file: !2, line: 76, column: 7)
!1982 = distinct !DILexicalBlock(scope: !1880, file: !2, line: 75, column: 9)
!1983 = !DILocation(line: 76, column: 11, scope: !1981)
!1984 = !DILocation(line: 76, column: 16, scope: !1981)
!1985 = !DILocation(line: 76, column: 7, scope: !1982)
!1986 = !DILocation(line: 77, column: 4, scope: !1981)
!1987 = !DILocation(line: 79, column: 11, scope: !1982)
!1988 = !DILocation(line: 79, column: 19, scope: !1982)
!1989 = !DILocation(line: 79, column: 28, scope: !1982)
!1990 = !DILocation(line: 79, column: 36, scope: !1982)
!1991 = !DILocation(line: 79, column: 3, scope: !1982)
!1992 = !DILocation(line: 81, column: 24, scope: !1982)
!1993 = !DILocation(line: 81, column: 28, scope: !1982)
!1994 = !DILocation(line: 81, column: 3, scope: !1982)
!1995 = !DILocation(line: 81, column: 7, scope: !1982)
!1996 = !DILocation(line: 81, column: 12, scope: !1982)
!1997 = !DILocation(line: 82, column: 14, scope: !1982)
!1998 = !DILocation(line: 82, column: 18, scope: !1982)
!1999 = !DILocation(line: 82, column: 23, scope: !1982)
!2000 = !DILocation(line: 82, column: 3, scope: !1982)
!2001 = !DILocation(line: 82, column: 7, scope: !1982)
!2002 = !DILocation(line: 82, column: 12, scope: !1982)
!2003 = !DILocation(line: 85, column: 2, scope: !1870)
!2004 = !DILocation(line: 86, column: 1, scope: !1870)
!2005 = distinct !DISubprogram(name: "rtl_fw_data_ok", scope: !2, file: !2, line: 88, type: !1871, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !17, retainedNodes: !2006)
!2006 = !{!2007, !2008, !2009, !2010, !2014, !2015, !2016}
!2007 = !DILocalVariable(name: "rtl_fw", arg: 1, scope: !2005, file: !2, line: 88, type: !150)
!2008 = !DILocalVariable(name: "pa", scope: !2005, file: !2, line: 90, type: !1653)
!2009 = !DILocalVariable(name: "index", scope: !2005, file: !2, line: 91, type: !172)
!2010 = !DILocalVariable(name: "action", scope: !2011, file: !2, line: 94, type: !121)
!2011 = distinct !DILexicalBlock(scope: !2012, file: !2, line: 93, column: 45)
!2012 = distinct !DILexicalBlock(scope: !2013, file: !2, line: 93, column: 2)
!2013 = distinct !DILexicalBlock(scope: !2005, file: !2, line: 93, column: 2)
!2014 = !DILocalVariable(name: "val", scope: !2011, file: !2, line: 95, type: !121)
!2015 = !DILocalVariable(name: "regno", scope: !2011, file: !2, line: 96, type: !121)
!2016 = !DILabel(scope: !2005, name: "out", file: !2, line: 135)
!2017 = !DILocation(line: 88, column: 43, scope: !2005)
!2018 = !DILocation(line: 90, column: 2, scope: !2005)
!2019 = !DILocation(line: 90, column: 28, scope: !2005)
!2020 = !DILocation(line: 90, column: 34, scope: !2005)
!2021 = !DILocation(line: 90, column: 42, scope: !2005)
!2022 = !DILocation(line: 91, column: 2, scope: !2005)
!2023 = !DILocation(line: 91, column: 9, scope: !2005)
!2024 = !DILocation(line: 93, column: 13, scope: !2013)
!2025 = !DILocation(line: 93, column: 7, scope: !2013)
!2026 = !DILocation(line: 93, column: 18, scope: !2012)
!2027 = !DILocation(line: 93, column: 26, scope: !2012)
!2028 = !DILocation(line: 93, column: 30, scope: !2012)
!2029 = !DILocation(line: 93, column: 24, scope: !2012)
!2030 = !DILocation(line: 93, column: 2, scope: !2013)
!2031 = !DILocation(line: 94, column: 3, scope: !2011)
!2032 = !DILocation(line: 94, column: 7, scope: !2011)
!2033 = !DILocation(line: 94, column: 16, scope: !2011)
!2034 = !DILocation(line: 95, column: 3, scope: !2011)
!2035 = !DILocation(line: 95, column: 7, scope: !2011)
!2036 = !DILocation(line: 95, column: 13, scope: !2011)
!2037 = !DILocation(line: 95, column: 20, scope: !2011)
!2038 = !DILocation(line: 96, column: 3, scope: !2011)
!2039 = !DILocation(line: 96, column: 7, scope: !2011)
!2040 = !DILocation(line: 96, column: 16, scope: !2011)
!2041 = !DILocation(line: 96, column: 23, scope: !2011)
!2042 = !DILocation(line: 96, column: 37, scope: !2011)
!2043 = !DILocation(line: 98, column: 11, scope: !2011)
!2044 = !DILocation(line: 98, column: 18, scope: !2011)
!2045 = !DILocation(line: 98, column: 3, scope: !2011)
!2046 = !DILocation(line: 106, column: 4, scope: !2047)
!2047 = distinct !DILexicalBlock(scope: !2011, file: !2, line: 98, column: 25)
!2048 = !DILocation(line: 109, column: 8, scope: !2049)
!2049 = distinct !DILexicalBlock(scope: !2047, file: !2, line: 109, column: 8)
!2050 = !DILocation(line: 109, column: 12, scope: !2049)
!2051 = !DILocation(line: 109, column: 8, scope: !2047)
!2052 = !DILocation(line: 110, column: 5, scope: !2049)
!2053 = !DILocation(line: 111, column: 4, scope: !2047)
!2054 = !DILocation(line: 114, column: 8, scope: !2055)
!2055 = distinct !DILexicalBlock(scope: !2047, file: !2, line: 114, column: 8)
!2056 = !DILocation(line: 114, column: 16, scope: !2055)
!2057 = !DILocation(line: 114, column: 14, scope: !2055)
!2058 = !DILocation(line: 114, column: 8, scope: !2047)
!2059 = !DILocation(line: 115, column: 5, scope: !2055)
!2060 = !DILocation(line: 116, column: 4, scope: !2047)
!2061 = !DILocation(line: 118, column: 8, scope: !2062)
!2062 = distinct !DILexicalBlock(scope: !2047, file: !2, line: 118, column: 8)
!2063 = !DILocation(line: 118, column: 14, scope: !2062)
!2064 = !DILocation(line: 118, column: 21, scope: !2062)
!2065 = !DILocation(line: 118, column: 25, scope: !2062)
!2066 = !DILocation(line: 118, column: 18, scope: !2062)
!2067 = !DILocation(line: 118, column: 8, scope: !2047)
!2068 = !DILocation(line: 119, column: 5, scope: !2062)
!2069 = !DILocation(line: 120, column: 4, scope: !2047)
!2070 = !DILocation(line: 124, column: 8, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !2047, file: !2, line: 124, column: 8)
!2072 = !DILocation(line: 124, column: 14, scope: !2071)
!2073 = !DILocation(line: 124, column: 20, scope: !2071)
!2074 = !DILocation(line: 124, column: 18, scope: !2071)
!2075 = !DILocation(line: 124, column: 29, scope: !2071)
!2076 = !DILocation(line: 124, column: 33, scope: !2071)
!2077 = !DILocation(line: 124, column: 26, scope: !2071)
!2078 = !DILocation(line: 124, column: 8, scope: !2047)
!2079 = !DILocation(line: 125, column: 5, scope: !2071)
!2080 = !DILocation(line: 126, column: 4, scope: !2047)
!2081 = !DILocation(line: 129, column: 4, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2047, file: !2, line: 129, column: 4)
!2083 = !DILocation(line: 129, column: 4, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2082, file: !2, line: 129, column: 4)
!2085 = !DILocation(line: 130, column: 4, scope: !2047)
!2086 = !DILocation(line: 132, column: 2, scope: !2012)
!2087 = !DILocation(line: 132, column: 2, scope: !2011)
!2088 = !DILocation(line: 93, column: 41, scope: !2012)
!2089 = !DILocation(line: 93, column: 2, scope: !2012)
!2090 = distinct !{!2090, !2030, !2091, !1801, !1802}
!2091 = !DILocation(line: 132, column: 2, scope: !2013)
!2092 = !DILocation(line: 134, column: 2, scope: !2005)
!2093 = !DILocation(line: 135, column: 1, scope: !2005)
!2094 = !DILocation(line: 136, column: 2, scope: !2095)
!2095 = distinct !DILexicalBlock(scope: !2005, file: !2, line: 136, column: 2)
!2096 = !DILocation(line: 136, column: 2, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2095, file: !2, line: 136, column: 2)
!2098 = !DILocation(line: 137, column: 2, scope: !2005)
!2099 = !DILocation(line: 138, column: 1, scope: !2005)
!2100 = !DISubprogram(name: "_dev_err", scope: !2101, file: !2101, line: 50, type: !2102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2101 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!2102 = !DISubroutineType(types: !2103)
!2103 = !{null, !859, !184, null}
!2104 = !DISubprogram(name: "strscpy", scope: !2105, file: !2105, line: 72, type: !2106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2105 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!306, !274, !184, !172}
