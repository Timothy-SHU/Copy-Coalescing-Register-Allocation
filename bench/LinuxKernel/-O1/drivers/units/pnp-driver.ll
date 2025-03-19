; ModuleID = 'drivers/pnp/driver.c'
source_filename = "drivers/pnp/driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pnp_device_attach: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pnp_device_attach ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pnp_device_detach: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pnp_device_detach ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pnp_register_driver: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pnp_register_driver ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_pnp_unregister_driver: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad pnp_unregister_driver ; .previous"

%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.pnp_id = type { [8 x i8], ptr }
%struct.pnp_dev = type { %struct.device, i64, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.list_head, %struct.list_head, [50 x i8], i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
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
%struct.pnp_driver = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, %struct.device_driver }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pnp_device_id = type { [8 x i8], i64 }
%struct.pnp_protocol = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8, %struct.device, %struct.list_head, %struct.list_head }

@.str = private unnamed_addr constant [8 x i8] c"ANYDEVS\00", align 1, !dbg !0
@pnp_lock = external dso_local global %struct.mutex, align 8
@__UNIQUE_ID___addressable_pnp_device_attach207 = internal global ptr @pnp_device_attach, section ".discard.addressable", align 8, !dbg !7
@__UNIQUE_ID___addressable_pnp_device_detach208 = internal global ptr @pnp_device_detach, section ".discard.addressable", align 8, !dbg !1737
@.str.1 = private unnamed_addr constant [4 x i8] c"pnp\00", align 1, !dbg !1739
@pnp_dev_groups = external dso_local global [0 x ptr], align 8
@pnp_bus_dev_pm_ops = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr @pnp_bus_suspend, ptr @pnp_bus_resume, ptr @pnp_bus_freeze, ptr @pnp_bus_resume, ptr @pnp_bus_poweroff, ptr @pnp_bus_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !1748
@pnp_bus_type = hidden global %struct.bus_type { ptr @.str.1, ptr null, ptr null, ptr @pnp_dev_groups, ptr null, ptr @pnp_bus_match, ptr null, ptr @pnp_device_probe, ptr null, ptr @pnp_device_remove, ptr @pnp_device_shutdown, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pnp_bus_dev_pm_ops, ptr null, i8 0 }, align 8, !dbg !1742
@__UNIQUE_ID___addressable_pnp_register_driver209 = internal global ptr @pnp_register_driver, section ".discard.addressable", align 8, !dbg !1744
@__UNIQUE_ID___addressable_pnp_unregister_driver210 = internal global ptr @pnp_unregister_driver, section ".discard.addressable", align 8, !dbg !1746
@_ctype = external dso_local constant [0 x i8], align 1
@__func__.__pnp_bus_suspend = private unnamed_addr constant [18 x i8] c"__pnp_bus_suspend\00", align 1, !dbg !1750
@console_suspend_enabled = external dso_local global i8, align 1
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !1755
@llvm.compiler.used = appending global [4 x ptr] [ptr @__UNIQUE_ID___addressable_pnp_device_attach207, ptr @__UNIQUE_ID___addressable_pnp_device_detach208, ptr @__UNIQUE_ID___addressable_pnp_register_driver209, ptr @__UNIQUE_ID___addressable_pnp_unregister_driver210], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @compare_pnp_id(ptr noundef %pos, ptr noundef %id) #0 align 16 !dbg !1769 {
entry:
  %retval = alloca i32, align 4
  %pos.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  store ptr %pos, ptr %pos.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pos.addr, metadata !1773, metadata !DIExpression()), !dbg !1775
  store ptr %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !1774, metadata !DIExpression()), !dbg !1776
  %0 = load ptr, ptr %pos.addr, align 8, !dbg !1777
  %tobool = icmp ne ptr %0, null, !dbg !1777
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1779

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %id.addr, align 8, !dbg !1780
  %tobool1 = icmp ne ptr %1, null, !dbg !1780
  br i1 %tobool1, label %lor.lhs.false2, label %if.then, !dbg !1781

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %2 = load ptr, ptr %id.addr, align 8, !dbg !1782
  %call = call i64 @strlen(ptr noundef %2) #13, !dbg !1783
  %cmp = icmp ne i64 %call, 7, !dbg !1784
  br i1 %cmp, label %if.then, label %if.end, !dbg !1785

if.then:                                          ; preds = %lor.lhs.false2, %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !1786
  br label %return, !dbg !1786

if.end:                                           ; preds = %lor.lhs.false2
  %3 = load ptr, ptr %id.addr, align 8, !dbg !1787
  %call3 = call i32 @memcmp(ptr noundef %3, ptr noundef @.str, i64 noundef 7) #13, !dbg !1789
  %cmp4 = icmp eq i32 %call3, 0, !dbg !1790
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !1791

if.then5:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !1792
  br label %return, !dbg !1792

if.end6:                                          ; preds = %if.end
  br label %while.cond, !dbg !1793

while.cond:                                       ; preds = %if.end18, %if.end6
  %4 = load ptr, ptr %pos.addr, align 8, !dbg !1794
  %tobool7 = icmp ne ptr %4, null, !dbg !1793
  br i1 %tobool7, label %while.body, label %while.end, !dbg !1793

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %pos.addr, align 8, !dbg !1795
  %id8 = getelementptr inbounds %struct.pnp_id, ptr %5, i32 0, i32 0, !dbg !1798
  %arraydecay = getelementptr inbounds [8 x i8], ptr %id8, i64 0, i64 0, !dbg !1795
  %6 = load ptr, ptr %id.addr, align 8, !dbg !1799
  %call9 = call i32 @memcmp(ptr noundef %arraydecay, ptr noundef %6, i64 noundef 3) #13, !dbg !1800
  %cmp10 = icmp eq i32 %call9, 0, !dbg !1801
  br i1 %cmp10, label %if.then11, label %if.end18, !dbg !1802

if.then11:                                        ; preds = %while.body
  %7 = load ptr, ptr %pos.addr, align 8, !dbg !1803
  %id12 = getelementptr inbounds %struct.pnp_id, ptr %7, i32 0, i32 0, !dbg !1805
  %arraydecay13 = getelementptr inbounds [8 x i8], ptr %id12, i64 0, i64 0, !dbg !1803
  %8 = load ptr, ptr %id.addr, align 8, !dbg !1806
  %call14 = call i32 @compare_func(ptr noundef %arraydecay13, ptr noundef %8) #13, !dbg !1807
  %cmp15 = icmp eq i32 %call14, 1, !dbg !1808
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !1809

if.then16:                                        ; preds = %if.then11
  store i32 1, ptr %retval, align 4, !dbg !1810
  br label %return, !dbg !1810

if.end17:                                         ; preds = %if.then11
  br label %if.end18, !dbg !1811

if.end18:                                         ; preds = %if.end17, %while.body
  %9 = load ptr, ptr %pos.addr, align 8, !dbg !1812
  %next = getelementptr inbounds %struct.pnp_id, ptr %9, i32 0, i32 1, !dbg !1813
  %10 = load ptr, ptr %next, align 8, !dbg !1813
  store ptr %10, ptr %pos.addr, align 8, !dbg !1814
  br label %while.cond, !dbg !1793, !llvm.loop !1815

while.end:                                        ; preds = %while.cond
  store i32 0, ptr %retval, align 4, !dbg !1819
  br label %return, !dbg !1819

return:                                           ; preds = %while.end, %if.then16, %if.then5, %if.then
  %11 = load i32, ptr %retval, align 4, !dbg !1820
  ret i32 %11, !dbg !1820
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1821 dso_local i64 @strlen(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1825 dso_local i32 @memcmp(ptr noundef, ptr noundef, i64 noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @compare_func(ptr noundef %ida, ptr noundef %idb) #0 align 16 !dbg !1828 {
entry:
  %retval = alloca i32, align 4
  %ida.addr = alloca ptr, align 8
  %idb.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ida, ptr %ida.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ida.addr, metadata !1832, metadata !DIExpression()), !dbg !1835
  store ptr %idb, ptr %idb.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %idb.addr, metadata !1833, metadata !DIExpression()), !dbg !1836
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !1837
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1834, metadata !DIExpression()), !dbg !1838
  store i32 3, ptr %i, align 4, !dbg !1839
  br label %for.cond, !dbg !1841

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, ptr %i, align 4, !dbg !1842
  %cmp = icmp slt i32 %0, 7, !dbg !1844
  br i1 %cmp, label %for.body, label %for.end, !dbg !1845

for.body:                                         ; preds = %for.cond
  %1 = load ptr, ptr %ida.addr, align 8, !dbg !1846
  %2 = load i32, ptr %i, align 4, !dbg !1849
  %idxprom = sext i32 %2 to i64, !dbg !1846
  %arrayidx = getelementptr i8, ptr %1, i64 %idxprom, !dbg !1846
  %3 = load i8, ptr %arrayidx, align 1, !dbg !1846
  %conv = zext i8 %3 to i32, !dbg !1846
  %cmp1 = icmp ne i32 %conv, 88, !dbg !1850
  br i1 %cmp1, label %land.lhs.true, label %if.end, !dbg !1851

land.lhs.true:                                    ; preds = %for.body
  %4 = load ptr, ptr %idb.addr, align 8, !dbg !1852
  %5 = load i32, ptr %i, align 4, !dbg !1853
  %idxprom3 = sext i32 %5 to i64, !dbg !1852
  %arrayidx4 = getelementptr i8, ptr %4, i64 %idxprom3, !dbg !1852
  %6 = load i8, ptr %arrayidx4, align 1, !dbg !1852
  %conv5 = zext i8 %6 to i32, !dbg !1852
  %cmp6 = icmp ne i32 %conv5, 88, !dbg !1854
  br i1 %cmp6, label %land.lhs.true8, label %if.end, !dbg !1855

land.lhs.true8:                                   ; preds = %land.lhs.true
  %7 = load ptr, ptr %ida.addr, align 8, !dbg !1856
  %8 = load i32, ptr %i, align 4, !dbg !1856
  %idxprom9 = sext i32 %8 to i64, !dbg !1856
  %arrayidx10 = getelementptr i8, ptr %7, i64 %idxprom9, !dbg !1856
  %9 = load i8, ptr %arrayidx10, align 1, !dbg !1856
  %call = call zeroext i8 @__toupper(i8 noundef zeroext %9) #13, !dbg !1856
  %conv11 = zext i8 %call to i32, !dbg !1856
  %10 = load ptr, ptr %idb.addr, align 8, !dbg !1857
  %11 = load i32, ptr %i, align 4, !dbg !1857
  %idxprom12 = sext i32 %11 to i64, !dbg !1857
  %arrayidx13 = getelementptr i8, ptr %10, i64 %idxprom12, !dbg !1857
  %12 = load i8, ptr %arrayidx13, align 1, !dbg !1857
  %call14 = call zeroext i8 @__toupper(i8 noundef zeroext %12) #13, !dbg !1857
  %conv15 = zext i8 %call14 to i32, !dbg !1857
  %cmp16 = icmp ne i32 %conv11, %conv15, !dbg !1858
  br i1 %cmp16, label %if.then, label %if.end, !dbg !1859

if.then:                                          ; preds = %land.lhs.true8
  store i32 0, ptr %retval, align 4, !dbg !1860
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1860

if.end:                                           ; preds = %land.lhs.true8, %land.lhs.true, %for.body
  br label %for.inc, !dbg !1861

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %i, align 4, !dbg !1862
  %inc = add i32 %13, 1, !dbg !1862
  store i32 %inc, ptr %i, align 4, !dbg !1862
  br label %for.cond, !dbg !1863, !llvm.loop !1864

for.end:                                          ; preds = %for.cond
  store i32 1, ptr %retval, align 4, !dbg !1866
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1866

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !1867
  %14 = load i32, ptr %retval, align 4, !dbg !1867
  ret i32 %14, !dbg !1867
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pnp_device_attach(ptr noundef %pnp_dev) #0 align 16 !dbg !1868 {
entry:
  %retval = alloca i32, align 4
  %pnp_dev.addr = alloca ptr, align 8
  store ptr %pnp_dev, ptr %pnp_dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pnp_dev.addr, metadata !1870, metadata !DIExpression()), !dbg !1871
  call void @mutex_lock(ptr noundef @pnp_lock) #13, !dbg !1872
  %0 = load ptr, ptr %pnp_dev.addr, align 8, !dbg !1873
  %status = getelementptr inbounds %struct.pnp_dev, ptr %0, i32 0, i32 3, !dbg !1875
  %1 = load i32, ptr %status, align 4, !dbg !1875
  %cmp = icmp ne i32 %1, 0, !dbg !1876
  br i1 %cmp, label %if.then, label %if.end, !dbg !1877

if.then:                                          ; preds = %entry
  call void @mutex_unlock(ptr noundef @pnp_lock) #13, !dbg !1878
  store i32 -16, ptr %retval, align 4, !dbg !1880
  br label %return, !dbg !1880

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pnp_dev.addr, align 8, !dbg !1881
  %status1 = getelementptr inbounds %struct.pnp_dev, ptr %2, i32 0, i32 3, !dbg !1882
  store i32 1, ptr %status1, align 4, !dbg !1883
  call void @mutex_unlock(ptr noundef @pnp_lock) #13, !dbg !1884
  store i32 0, ptr %retval, align 4, !dbg !1885
  br label %return, !dbg !1885

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, ptr %retval, align 4, !dbg !1886
  ret i32 %3, !dbg !1886
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1887 dso_local void @mutex_lock(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1891 dso_local void @mutex_unlock(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pnp_device_detach(ptr noundef %pnp_dev) #0 align 16 !dbg !1892 {
entry:
  %pnp_dev.addr = alloca ptr, align 8
  store ptr %pnp_dev, ptr %pnp_dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pnp_dev.addr, metadata !1894, metadata !DIExpression()), !dbg !1895
  call void @mutex_lock(ptr noundef @pnp_lock) #13, !dbg !1896
  %0 = load ptr, ptr %pnp_dev.addr, align 8, !dbg !1897
  %status = getelementptr inbounds %struct.pnp_dev, ptr %0, i32 0, i32 3, !dbg !1899
  %1 = load i32, ptr %status, align 4, !dbg !1899
  %cmp = icmp eq i32 %1, 1, !dbg !1900
  br i1 %cmp, label %if.then, label %if.end, !dbg !1901

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %pnp_dev.addr, align 8, !dbg !1902
  %status1 = getelementptr inbounds %struct.pnp_dev, ptr %2, i32 0, i32 3, !dbg !1903
  store i32 0, ptr %status1, align 4, !dbg !1904
  br label %if.end, !dbg !1902

if.end:                                           ; preds = %if.then, %entry
  call void @mutex_unlock(ptr noundef @pnp_lock) #13, !dbg !1905
  ret void, !dbg !1906
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pnp_bus_match(ptr noundef %dev, ptr noundef %drv) #0 align 16 !dbg !1907 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %drv.addr = alloca ptr, align 8
  %pnp_dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %pnp_drv = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1909, metadata !DIExpression()), !dbg !1917
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !1910, metadata !DIExpression()), !dbg !1918
  call void @llvm.lifetime.start.p0(i64 8, ptr %pnp_dev) #14, !dbg !1919
  call void @llvm.dbg.declare(metadata ptr %pnp_dev, metadata !1911, metadata !DIExpression()), !dbg !1920
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !1921
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1912, metadata !DIExpression()), !dbg !1921
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1921
  store ptr %0, ptr %__mptr, align 8, !dbg !1921
  %1 = load ptr, ptr %__mptr, align 8, !dbg !1921
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !1921
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1921
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !1922
  %2 = load ptr, ptr %tmp, align 8, !dbg !1921
  store ptr %2, ptr %pnp_dev, align 8, !dbg !1920
  call void @llvm.lifetime.start.p0(i64 8, ptr %pnp_drv) #14, !dbg !1923
  call void @llvm.dbg.declare(metadata ptr %pnp_drv, metadata !1914, metadata !DIExpression()), !dbg !1924
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #14, !dbg !1925
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !1915, metadata !DIExpression()), !dbg !1925
  %3 = load ptr, ptr %drv.addr, align 8, !dbg !1925
  store ptr %3, ptr %__mptr1, align 8, !dbg !1925
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !1925
  %add.ptr3 = getelementptr i8, ptr %4, i64 -64, !dbg !1925
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !1925
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #14, !dbg !1926
  %5 = load ptr, ptr %tmp2, align 8, !dbg !1925
  store ptr %5, ptr %pnp_drv, align 8, !dbg !1924
  %6 = load ptr, ptr %pnp_drv, align 8, !dbg !1927
  %7 = load ptr, ptr %pnp_dev, align 8, !dbg !1929
  %call = call ptr @match_device(ptr noundef %6, ptr noundef %7) #13, !dbg !1930
  %cmp = icmp eq ptr %call, null, !dbg !1931
  br i1 %cmp, label %if.then, label %if.end, !dbg !1932

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1933
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1933

if.end:                                           ; preds = %entry
  store i32 1, ptr %retval, align 4, !dbg !1934
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1934

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %pnp_drv) #14, !dbg !1935
  call void @llvm.lifetime.end.p0(i64 8, ptr %pnp_dev) #14, !dbg !1935
  %8 = load i32, ptr %retval, align 4, !dbg !1935
  ret i32 %8, !dbg !1935
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pnp_device_probe(ptr noundef %dev) #0 align 16 !dbg !1936 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %error = alloca i32, align 4
  %pnp_drv = alloca ptr, align 8
  %pnp_dev = alloca ptr, align 8
  %dev_id = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1938, metadata !DIExpression()), !dbg !1948
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #14, !dbg !1949
  call void @llvm.dbg.declare(metadata ptr %error, metadata !1939, metadata !DIExpression()), !dbg !1950
  call void @llvm.lifetime.start.p0(i64 8, ptr %pnp_drv) #14, !dbg !1951
  call void @llvm.dbg.declare(metadata ptr %pnp_drv, metadata !1940, metadata !DIExpression()), !dbg !1952
  call void @llvm.lifetime.start.p0(i64 8, ptr %pnp_dev) #14, !dbg !1953
  call void @llvm.dbg.declare(metadata ptr %pnp_dev, metadata !1941, metadata !DIExpression()), !dbg !1954
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev_id) #14, !dbg !1955
  call void @llvm.dbg.declare(metadata ptr %dev_id, metadata !1942, metadata !DIExpression()), !dbg !1956
  store ptr null, ptr %dev_id, align 8, !dbg !1956
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !1957
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !1943, metadata !DIExpression()), !dbg !1957
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1957
  store ptr %0, ptr %__mptr, align 8, !dbg !1957
  %1 = load ptr, ptr %__mptr, align 8, !dbg !1957
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !1957
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !1957
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !1958
  %2 = load ptr, ptr %tmp, align 8, !dbg !1957
  store ptr %2, ptr %pnp_dev, align 8, !dbg !1959
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #14, !dbg !1960
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !1945, metadata !DIExpression()), !dbg !1960
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !1960
  %driver = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 6, !dbg !1960
  %4 = load ptr, ptr %driver, align 8, !dbg !1960
  store ptr %4, ptr %__mptr1, align 8, !dbg !1960
  %5 = load ptr, ptr %__mptr1, align 8, !dbg !1960
  %add.ptr3 = getelementptr i8, ptr %5, i64 -64, !dbg !1960
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !1960
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #14, !dbg !1961
  %6 = load ptr, ptr %tmp2, align 8, !dbg !1960
  store ptr %6, ptr %pnp_drv, align 8, !dbg !1962
  %7 = load ptr, ptr %pnp_dev, align 8, !dbg !1963
  %call = call i32 @pnp_device_attach(ptr noundef %7) #13, !dbg !1964
  store i32 %call, ptr %error, align 4, !dbg !1965
  %8 = load i32, ptr %error, align 4, !dbg !1966
  %cmp = icmp slt i32 %8, 0, !dbg !1968
  br i1 %cmp, label %if.then, label %if.end, !dbg !1969

if.then:                                          ; preds = %entry
  %9 = load i32, ptr %error, align 4, !dbg !1970
  store i32 %9, ptr %retval, align 4, !dbg !1971
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1971

if.end:                                           ; preds = %entry
  %10 = load ptr, ptr %pnp_dev, align 8, !dbg !1972
  %active = getelementptr inbounds %struct.pnp_dev, ptr %10, i32 0, i32 13, !dbg !1974
  %11 = load i32, ptr %active, align 8, !dbg !1974
  %cmp4 = icmp eq i32 %11, 0, !dbg !1975
  br i1 %cmp4, label %if.then5, label %if.else, !dbg !1976

if.then5:                                         ; preds = %if.end
  %12 = load ptr, ptr %pnp_drv, align 8, !dbg !1977
  %flags = getelementptr inbounds %struct.pnp_driver, ptr %12, i32 0, i32 2, !dbg !1980
  %13 = load i32, ptr %flags, align 8, !dbg !1980
  %and = and i32 %13, 1, !dbg !1981
  %tobool = icmp ne i32 %and, 0, !dbg !1981
  br i1 %tobool, label %if.end11, label %if.then6, !dbg !1982

if.then6:                                         ; preds = %if.then5
  %14 = load ptr, ptr %pnp_dev, align 8, !dbg !1983
  %call7 = call i32 @pnp_activate_dev(ptr noundef %14) #13, !dbg !1985
  store i32 %call7, ptr %error, align 4, !dbg !1986
  %15 = load i32, ptr %error, align 4, !dbg !1987
  %cmp8 = icmp slt i32 %15, 0, !dbg !1989
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !1990

if.then9:                                         ; preds = %if.then6
  %16 = load i32, ptr %error, align 4, !dbg !1991
  store i32 %16, ptr %retval, align 4, !dbg !1992
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1992

if.end10:                                         ; preds = %if.then6
  br label %if.end11, !dbg !1993

if.end11:                                         ; preds = %if.end10, %if.then5
  br label %if.end21, !dbg !1994

if.else:                                          ; preds = %if.end
  %17 = load ptr, ptr %pnp_drv, align 8, !dbg !1995
  %flags12 = getelementptr inbounds %struct.pnp_driver, ptr %17, i32 0, i32 2, !dbg !1997
  %18 = load i32, ptr %flags12, align 8, !dbg !1997
  %and13 = and i32 %18, 3, !dbg !1998
  %cmp14 = icmp eq i32 %and13, 3, !dbg !1999
  br i1 %cmp14, label %if.then15, label %if.end20, !dbg !2000

if.then15:                                        ; preds = %if.else
  %19 = load ptr, ptr %pnp_dev, align 8, !dbg !2001
  %call16 = call i32 @pnp_disable_dev(ptr noundef %19) #13, !dbg !2003
  store i32 %call16, ptr %error, align 4, !dbg !2004
  %20 = load i32, ptr %error, align 4, !dbg !2005
  %cmp17 = icmp slt i32 %20, 0, !dbg !2007
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !2008

if.then18:                                        ; preds = %if.then15
  %21 = load i32, ptr %error, align 4, !dbg !2009
  store i32 %21, ptr %retval, align 4, !dbg !2010
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2010

if.end19:                                         ; preds = %if.then15
  br label %if.end20, !dbg !2011

if.end20:                                         ; preds = %if.end19, %if.else
  br label %if.end21

if.end21:                                         ; preds = %if.end20, %if.end11
  store i32 0, ptr %error, align 4, !dbg !2012
  %22 = load ptr, ptr %pnp_drv, align 8, !dbg !2013
  %probe = getelementptr inbounds %struct.pnp_driver, ptr %22, i32 0, i32 3, !dbg !2015
  %23 = load ptr, ptr %probe, align 8, !dbg !2015
  %tobool22 = icmp ne ptr %23, null, !dbg !2013
  br i1 %tobool22, label %if.then23, label %if.end30, !dbg !2016

if.then23:                                        ; preds = %if.end21
  %24 = load ptr, ptr %pnp_drv, align 8, !dbg !2017
  %25 = load ptr, ptr %pnp_dev, align 8, !dbg !2019
  %call24 = call ptr @match_device(ptr noundef %24, ptr noundef %25) #13, !dbg !2020
  store ptr %call24, ptr %dev_id, align 8, !dbg !2021
  %26 = load ptr, ptr %dev_id, align 8, !dbg !2022
  %cmp25 = icmp ne ptr %26, null, !dbg !2024
  br i1 %cmp25, label %if.then26, label %if.end29, !dbg !2025

if.then26:                                        ; preds = %if.then23
  %27 = load ptr, ptr %pnp_drv, align 8, !dbg !2026
  %probe27 = getelementptr inbounds %struct.pnp_driver, ptr %27, i32 0, i32 3, !dbg !2027
  %28 = load ptr, ptr %probe27, align 8, !dbg !2027
  %29 = load ptr, ptr %pnp_dev, align 8, !dbg !2028
  %30 = load ptr, ptr %dev_id, align 8, !dbg !2029
  %call28 = call i32 %28(ptr noundef %29, ptr noundef %30) #13, !dbg !2026
  store i32 %call28, ptr %error, align 4, !dbg !2030
  br label %if.end29, !dbg !2031

if.end29:                                         ; preds = %if.then26, %if.then23
  br label %if.end30, !dbg !2032

if.end30:                                         ; preds = %if.end29, %if.end21
  %31 = load i32, ptr %error, align 4, !dbg !2033
  %cmp31 = icmp sge i32 %31, 0, !dbg !2035
  br i1 %cmp31, label %if.then32, label %if.else34, !dbg !2036

if.then32:                                        ; preds = %if.end30
  %32 = load ptr, ptr %pnp_drv, align 8, !dbg !2037
  %33 = load ptr, ptr %pnp_dev, align 8, !dbg !2039
  %driver33 = getelementptr inbounds %struct.pnp_dev, ptr %33, i32 0, i32 10, !dbg !2040
  store ptr %32, ptr %driver33, align 8, !dbg !2041
  store i32 0, ptr %error, align 4, !dbg !2042
  br label %if.end35, !dbg !2043

if.else34:                                        ; preds = %if.end30
  br label %fail, !dbg !2044

if.end35:                                         ; preds = %if.then32
  %34 = load i32, ptr %error, align 4, !dbg !2045
  store i32 %34, ptr %retval, align 4, !dbg !2046
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2046

fail:                                             ; preds = %if.else34
  call void @llvm.dbg.label(metadata !1947), !dbg !2047
  %35 = load ptr, ptr %pnp_dev, align 8, !dbg !2048
  call void @pnp_device_detach(ptr noundef %35) #13, !dbg !2049
  %36 = load i32, ptr %error, align 4, !dbg !2050
  store i32 %36, ptr %retval, align 4, !dbg !2051
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2051

cleanup:                                          ; preds = %fail, %if.end35, %if.then18, %if.then9, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev_id) #14, !dbg !2052
  call void @llvm.lifetime.end.p0(i64 8, ptr %pnp_dev) #14, !dbg !2052
  call void @llvm.lifetime.end.p0(i64 8, ptr %pnp_drv) #14, !dbg !2052
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #14, !dbg !2052
  %37 = load i32, ptr %retval, align 4, !dbg !2052
  ret i32 %37, !dbg !2052
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pnp_device_remove(ptr noundef %dev) #0 align 16 !dbg !2053 {
entry:
  %dev.addr = alloca ptr, align 8
  %pnp_dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %drv = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2055, metadata !DIExpression()), !dbg !2060
  call void @llvm.lifetime.start.p0(i64 8, ptr %pnp_dev) #14, !dbg !2061
  call void @llvm.dbg.declare(metadata ptr %pnp_dev, metadata !2056, metadata !DIExpression()), !dbg !2062
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !2063
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2057, metadata !DIExpression()), !dbg !2063
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2063
  store ptr %0, ptr %__mptr, align 8, !dbg !2063
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2063
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !2063
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2063
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !2064
  %2 = load ptr, ptr %tmp, align 8, !dbg !2063
  store ptr %2, ptr %pnp_dev, align 8, !dbg !2062
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv) #14, !dbg !2065
  call void @llvm.dbg.declare(metadata ptr %drv, metadata !2059, metadata !DIExpression()), !dbg !2066
  %3 = load ptr, ptr %pnp_dev, align 8, !dbg !2067
  %driver = getelementptr inbounds %struct.pnp_dev, ptr %3, i32 0, i32 10, !dbg !2068
  %4 = load ptr, ptr %driver, align 8, !dbg !2068
  store ptr %4, ptr %drv, align 8, !dbg !2066
  %5 = load ptr, ptr %drv, align 8, !dbg !2069
  %tobool = icmp ne ptr %5, null, !dbg !2069
  br i1 %tobool, label %if.then, label %if.end5, !dbg !2071

if.then:                                          ; preds = %entry
  %6 = load ptr, ptr %drv, align 8, !dbg !2072
  %remove = getelementptr inbounds %struct.pnp_driver, ptr %6, i32 0, i32 4, !dbg !2075
  %7 = load ptr, ptr %remove, align 8, !dbg !2075
  %tobool1 = icmp ne ptr %7, null, !dbg !2072
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !2076

if.then2:                                         ; preds = %if.then
  %8 = load ptr, ptr %drv, align 8, !dbg !2077
  %remove3 = getelementptr inbounds %struct.pnp_driver, ptr %8, i32 0, i32 4, !dbg !2078
  %9 = load ptr, ptr %remove3, align 8, !dbg !2078
  %10 = load ptr, ptr %pnp_dev, align 8, !dbg !2079
  call void %9(ptr noundef %10) #13, !dbg !2077
  br label %if.end, !dbg !2077

if.end:                                           ; preds = %if.then2, %if.then
  %11 = load ptr, ptr %pnp_dev, align 8, !dbg !2080
  %driver4 = getelementptr inbounds %struct.pnp_dev, ptr %11, i32 0, i32 10, !dbg !2081
  store ptr null, ptr %driver4, align 8, !dbg !2082
  br label %if.end5, !dbg !2083

if.end5:                                          ; preds = %if.end, %entry
  %12 = load ptr, ptr %pnp_dev, align 8, !dbg !2084
  %active = getelementptr inbounds %struct.pnp_dev, ptr %12, i32 0, i32 13, !dbg !2086
  %13 = load i32, ptr %active, align 8, !dbg !2086
  %tobool6 = icmp ne i32 %13, 0, !dbg !2084
  br i1 %tobool6, label %land.lhs.true, label %if.end10, !dbg !2087

land.lhs.true:                                    ; preds = %if.end5
  %14 = load ptr, ptr %drv, align 8, !dbg !2088
  %tobool7 = icmp ne ptr %14, null, !dbg !2088
  br i1 %tobool7, label %lor.lhs.false, label %if.then9, !dbg !2089

lor.lhs.false:                                    ; preds = %land.lhs.true
  %15 = load ptr, ptr %drv, align 8, !dbg !2090
  %flags = getelementptr inbounds %struct.pnp_driver, ptr %15, i32 0, i32 2, !dbg !2091
  %16 = load i32, ptr %flags, align 8, !dbg !2091
  %and = and i32 %16, 1, !dbg !2092
  %tobool8 = icmp ne i32 %and, 0, !dbg !2092
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !2093

if.then9:                                         ; preds = %lor.lhs.false, %land.lhs.true
  %17 = load ptr, ptr %pnp_dev, align 8, !dbg !2094
  %call = call i32 @pnp_disable_dev(ptr noundef %17) #13, !dbg !2095
  br label %if.end10, !dbg !2095

if.end10:                                         ; preds = %if.then9, %lor.lhs.false, %if.end5
  %18 = load ptr, ptr %pnp_dev, align 8, !dbg !2096
  call void @pnp_device_detach(ptr noundef %18) #13, !dbg !2097
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv) #14, !dbg !2098
  call void @llvm.lifetime.end.p0(i64 8, ptr %pnp_dev) #14, !dbg !2098
  ret void, !dbg !2098
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @pnp_device_shutdown(ptr noundef %dev) #0 align 16 !dbg !2099 {
entry:
  %dev.addr = alloca ptr, align 8
  %pnp_dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %drv = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2101, metadata !DIExpression()), !dbg !2106
  call void @llvm.lifetime.start.p0(i64 8, ptr %pnp_dev) #14, !dbg !2107
  call void @llvm.dbg.declare(metadata ptr %pnp_dev, metadata !2102, metadata !DIExpression()), !dbg !2108
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !2109
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2103, metadata !DIExpression()), !dbg !2109
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2109
  store ptr %0, ptr %__mptr, align 8, !dbg !2109
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2109
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !2109
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2109
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !2110
  %2 = load ptr, ptr %tmp, align 8, !dbg !2109
  store ptr %2, ptr %pnp_dev, align 8, !dbg !2108
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv) #14, !dbg !2111
  call void @llvm.dbg.declare(metadata ptr %drv, metadata !2105, metadata !DIExpression()), !dbg !2112
  %3 = load ptr, ptr %pnp_dev, align 8, !dbg !2113
  %driver = getelementptr inbounds %struct.pnp_dev, ptr %3, i32 0, i32 10, !dbg !2114
  %4 = load ptr, ptr %driver, align 8, !dbg !2114
  store ptr %4, ptr %drv, align 8, !dbg !2112
  %5 = load ptr, ptr %drv, align 8, !dbg !2115
  %tobool = icmp ne ptr %5, null, !dbg !2115
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2117

land.lhs.true:                                    ; preds = %entry
  %6 = load ptr, ptr %drv, align 8, !dbg !2118
  %shutdown = getelementptr inbounds %struct.pnp_driver, ptr %6, i32 0, i32 5, !dbg !2119
  %7 = load ptr, ptr %shutdown, align 8, !dbg !2119
  %tobool1 = icmp ne ptr %7, null, !dbg !2118
  br i1 %tobool1, label %if.then, label %if.end, !dbg !2120

if.then:                                          ; preds = %land.lhs.true
  %8 = load ptr, ptr %drv, align 8, !dbg !2121
  %shutdown2 = getelementptr inbounds %struct.pnp_driver, ptr %8, i32 0, i32 5, !dbg !2122
  %9 = load ptr, ptr %shutdown2, align 8, !dbg !2122
  %10 = load ptr, ptr %pnp_dev, align 8, !dbg !2123
  call void %9(ptr noundef %10) #13, !dbg !2121
  br label %if.end, !dbg !2121

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv) #14, !dbg !2124
  call void @llvm.lifetime.end.p0(i64 8, ptr %pnp_dev) #14, !dbg !2124
  ret void, !dbg !2124
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pnp_register_driver(ptr noundef %drv) #0 align 16 !dbg !2125 {
entry:
  %drv.addr = alloca ptr, align 8
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !2129, metadata !DIExpression()), !dbg !2130
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !2131
  %name = getelementptr inbounds %struct.pnp_driver, ptr %0, i32 0, i32 0, !dbg !2132
  %1 = load ptr, ptr %name, align 8, !dbg !2132
  %2 = load ptr, ptr %drv.addr, align 8, !dbg !2133
  %driver = getelementptr inbounds %struct.pnp_driver, ptr %2, i32 0, i32 8, !dbg !2134
  %name1 = getelementptr inbounds %struct.device_driver, ptr %driver, i32 0, i32 0, !dbg !2135
  store ptr %1, ptr %name1, align 8, !dbg !2136
  %3 = load ptr, ptr %drv.addr, align 8, !dbg !2137
  %driver2 = getelementptr inbounds %struct.pnp_driver, ptr %3, i32 0, i32 8, !dbg !2138
  %bus = getelementptr inbounds %struct.device_driver, ptr %driver2, i32 0, i32 1, !dbg !2139
  store ptr @pnp_bus_type, ptr %bus, align 8, !dbg !2140
  %4 = load ptr, ptr %drv.addr, align 8, !dbg !2141
  %driver3 = getelementptr inbounds %struct.pnp_driver, ptr %4, i32 0, i32 8, !dbg !2142
  %call = call i32 @driver_register(ptr noundef %driver3) #13, !dbg !2143
  ret i32 %call, !dbg !2144
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2145 dso_local i32 @driver_register(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pnp_unregister_driver(ptr noundef %drv) #0 align 16 !dbg !2148 {
entry:
  %drv.addr = alloca ptr, align 8
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !2152, metadata !DIExpression()), !dbg !2153
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !2154
  %driver = getelementptr inbounds %struct.pnp_driver, ptr %0, i32 0, i32 8, !dbg !2155
  call void @driver_unregister(ptr noundef %driver) #13, !dbg !2156
  ret void, !dbg !2157
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2158 dso_local void @driver_unregister(ptr noundef) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @pnp_add_id(ptr noundef %dev, ptr noundef %id) #0 align 16 !dbg !2161 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %dev_id = alloca ptr, align 8
  %ptr = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2165, metadata !DIExpression()), !dbg !2169
  store ptr %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !2166, metadata !DIExpression()), !dbg !2170
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev_id) #14, !dbg !2171
  call void @llvm.dbg.declare(metadata ptr %dev_id, metadata !2167, metadata !DIExpression()), !dbg !2172
  call void @llvm.lifetime.start.p0(i64 8, ptr %ptr) #14, !dbg !2171
  call void @llvm.dbg.declare(metadata ptr %ptr, metadata !2168, metadata !DIExpression()), !dbg !2173
  %call = call noalias ptr @kzalloc(i64 noundef 16, i32 noundef 3264) #15, !dbg !2174
  store ptr %call, ptr %dev_id, align 8, !dbg !2175
  %0 = load ptr, ptr %dev_id, align 8, !dbg !2176
  %tobool = icmp ne ptr %0, null, !dbg !2176
  br i1 %tobool, label %if.end, label %if.then, !dbg !2178

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2179
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2179

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %id.addr, align 8, !dbg !2180
  %arrayidx = getelementptr i8, ptr %1, i64 0, !dbg !2180
  %2 = load i8, ptr %arrayidx, align 1, !dbg !2180
  %3 = load ptr, ptr %dev_id, align 8, !dbg !2181
  %id1 = getelementptr inbounds %struct.pnp_id, ptr %3, i32 0, i32 0, !dbg !2182
  %arrayidx2 = getelementptr [8 x i8], ptr %id1, i64 0, i64 0, !dbg !2181
  store i8 %2, ptr %arrayidx2, align 8, !dbg !2183
  %4 = load ptr, ptr %id.addr, align 8, !dbg !2184
  %arrayidx3 = getelementptr i8, ptr %4, i64 1, !dbg !2184
  %5 = load i8, ptr %arrayidx3, align 1, !dbg !2184
  %6 = load ptr, ptr %dev_id, align 8, !dbg !2185
  %id4 = getelementptr inbounds %struct.pnp_id, ptr %6, i32 0, i32 0, !dbg !2186
  %arrayidx5 = getelementptr [8 x i8], ptr %id4, i64 0, i64 1, !dbg !2185
  store i8 %5, ptr %arrayidx5, align 1, !dbg !2187
  %7 = load ptr, ptr %id.addr, align 8, !dbg !2188
  %arrayidx6 = getelementptr i8, ptr %7, i64 2, !dbg !2188
  %8 = load i8, ptr %arrayidx6, align 1, !dbg !2188
  %9 = load ptr, ptr %dev_id, align 8, !dbg !2189
  %id7 = getelementptr inbounds %struct.pnp_id, ptr %9, i32 0, i32 0, !dbg !2190
  %arrayidx8 = getelementptr [8 x i8], ptr %id7, i64 0, i64 2, !dbg !2189
  store i8 %8, ptr %arrayidx8, align 2, !dbg !2191
  %10 = load ptr, ptr %id.addr, align 8, !dbg !2192
  %arrayidx9 = getelementptr i8, ptr %10, i64 3, !dbg !2192
  %11 = load i8, ptr %arrayidx9, align 1, !dbg !2192
  %call10 = call zeroext i8 @__tolower(i8 noundef zeroext %11) #13, !dbg !2192
  %12 = load ptr, ptr %dev_id, align 8, !dbg !2193
  %id11 = getelementptr inbounds %struct.pnp_id, ptr %12, i32 0, i32 0, !dbg !2194
  %arrayidx12 = getelementptr [8 x i8], ptr %id11, i64 0, i64 3, !dbg !2193
  store i8 %call10, ptr %arrayidx12, align 1, !dbg !2195
  %13 = load ptr, ptr %id.addr, align 8, !dbg !2196
  %arrayidx13 = getelementptr i8, ptr %13, i64 4, !dbg !2196
  %14 = load i8, ptr %arrayidx13, align 1, !dbg !2196
  %call14 = call zeroext i8 @__tolower(i8 noundef zeroext %14) #13, !dbg !2196
  %15 = load ptr, ptr %dev_id, align 8, !dbg !2197
  %id15 = getelementptr inbounds %struct.pnp_id, ptr %15, i32 0, i32 0, !dbg !2198
  %arrayidx16 = getelementptr [8 x i8], ptr %id15, i64 0, i64 4, !dbg !2197
  store i8 %call14, ptr %arrayidx16, align 4, !dbg !2199
  %16 = load ptr, ptr %id.addr, align 8, !dbg !2200
  %arrayidx17 = getelementptr i8, ptr %16, i64 5, !dbg !2200
  %17 = load i8, ptr %arrayidx17, align 1, !dbg !2200
  %call18 = call zeroext i8 @__tolower(i8 noundef zeroext %17) #13, !dbg !2200
  %18 = load ptr, ptr %dev_id, align 8, !dbg !2201
  %id19 = getelementptr inbounds %struct.pnp_id, ptr %18, i32 0, i32 0, !dbg !2202
  %arrayidx20 = getelementptr [8 x i8], ptr %id19, i64 0, i64 5, !dbg !2201
  store i8 %call18, ptr %arrayidx20, align 1, !dbg !2203
  %19 = load ptr, ptr %id.addr, align 8, !dbg !2204
  %arrayidx21 = getelementptr i8, ptr %19, i64 6, !dbg !2204
  %20 = load i8, ptr %arrayidx21, align 1, !dbg !2204
  %call22 = call zeroext i8 @__tolower(i8 noundef zeroext %20) #13, !dbg !2204
  %21 = load ptr, ptr %dev_id, align 8, !dbg !2205
  %id23 = getelementptr inbounds %struct.pnp_id, ptr %21, i32 0, i32 0, !dbg !2206
  %arrayidx24 = getelementptr [8 x i8], ptr %id23, i64 0, i64 6, !dbg !2205
  store i8 %call22, ptr %arrayidx24, align 2, !dbg !2207
  %22 = load ptr, ptr %dev_id, align 8, !dbg !2208
  %id25 = getelementptr inbounds %struct.pnp_id, ptr %22, i32 0, i32 0, !dbg !2209
  %arrayidx26 = getelementptr [8 x i8], ptr %id25, i64 0, i64 7, !dbg !2208
  store i8 0, ptr %arrayidx26, align 1, !dbg !2210
  %23 = load ptr, ptr %dev_id, align 8, !dbg !2211
  %next = getelementptr inbounds %struct.pnp_id, ptr %23, i32 0, i32 1, !dbg !2212
  store ptr null, ptr %next, align 8, !dbg !2213
  %24 = load ptr, ptr %dev.addr, align 8, !dbg !2214
  %id27 = getelementptr inbounds %struct.pnp_dev, ptr %24, i32 0, i32 12, !dbg !2215
  %25 = load ptr, ptr %id27, align 8, !dbg !2215
  store ptr %25, ptr %ptr, align 8, !dbg !2216
  br label %while.cond, !dbg !2217

while.cond:                                       ; preds = %while.body, %if.end
  %26 = load ptr, ptr %ptr, align 8, !dbg !2218
  %tobool28 = icmp ne ptr %26, null, !dbg !2218
  br i1 %tobool28, label %land.rhs, label %land.end, !dbg !2219

land.rhs:                                         ; preds = %while.cond
  %27 = load ptr, ptr %ptr, align 8, !dbg !2220
  %next29 = getelementptr inbounds %struct.pnp_id, ptr %27, i32 0, i32 1, !dbg !2221
  %28 = load ptr, ptr %next29, align 8, !dbg !2221
  %tobool30 = icmp ne ptr %28, null, !dbg !2219
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %29 = phi i1 [ false, %while.cond ], [ %tobool30, %land.rhs ], !dbg !2222
  br i1 %29, label %while.body, label %while.end, !dbg !2217

while.body:                                       ; preds = %land.end
  %30 = load ptr, ptr %ptr, align 8, !dbg !2223
  %next31 = getelementptr inbounds %struct.pnp_id, ptr %30, i32 0, i32 1, !dbg !2224
  %31 = load ptr, ptr %next31, align 8, !dbg !2224
  store ptr %31, ptr %ptr, align 8, !dbg !2225
  br label %while.cond, !dbg !2217, !llvm.loop !2226

while.end:                                        ; preds = %land.end
  %32 = load ptr, ptr %ptr, align 8, !dbg !2227
  %tobool32 = icmp ne ptr %32, null, !dbg !2227
  br i1 %tobool32, label %if.then33, label %if.else, !dbg !2229

if.then33:                                        ; preds = %while.end
  %33 = load ptr, ptr %dev_id, align 8, !dbg !2230
  %34 = load ptr, ptr %ptr, align 8, !dbg !2231
  %next34 = getelementptr inbounds %struct.pnp_id, ptr %34, i32 0, i32 1, !dbg !2232
  store ptr %33, ptr %next34, align 8, !dbg !2233
  br label %if.end36, !dbg !2231

if.else:                                          ; preds = %while.end
  %35 = load ptr, ptr %dev_id, align 8, !dbg !2234
  %36 = load ptr, ptr %dev.addr, align 8, !dbg !2235
  %id35 = getelementptr inbounds %struct.pnp_dev, ptr %36, i32 0, i32 12, !dbg !2236
  store ptr %35, ptr %id35, align 8, !dbg !2237
  br label %if.end36

if.end36:                                         ; preds = %if.else, %if.then33
  %37 = load ptr, ptr %dev_id, align 8, !dbg !2238
  store ptr %37, ptr %retval, align 8, !dbg !2239
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2239

cleanup:                                          ; preds = %if.end36, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ptr) #14, !dbg !2240
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev_id) #14, !dbg !2240
  %38 = load ptr, ptr %retval, align 8, !dbg !2240
  ret ptr %38, !dbg !2240
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #4 align 16 !dbg !2241 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2245, metadata !DIExpression()), !dbg !2247
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2246, metadata !DIExpression()), !dbg !2248
  %0 = load i64, ptr %size.addr, align 8, !dbg !2249
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2250
  %or = or i32 %1, 256, !dbg !2251
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #15, !dbg !2252
  ret ptr %call, !dbg !2253
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @__tolower(i8 noundef zeroext %c) #5 align 16 !dbg !2254 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, ptr %c.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !2259, metadata !DIExpression()), !dbg !2260
  %0 = load i8, ptr %c.addr, align 1, !dbg !2261
  %conv = zext i8 %0 to i32, !dbg !2261
  %idxprom = sext i32 %conv to i64, !dbg !2261
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i64 0, i64 %idxprom, !dbg !2261
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2261
  %conv1 = zext i8 %1 to i32, !dbg !2261
  %and = and i32 %conv1, 1, !dbg !2261
  %cmp = icmp ne i32 %and, 0, !dbg !2261
  br i1 %cmp, label %if.then, label %if.end, !dbg !2263

if.then:                                          ; preds = %entry
  %2 = load i8, ptr %c.addr, align 1, !dbg !2264
  %conv3 = zext i8 %2 to i32, !dbg !2264
  %sub = sub i32 %conv3, -32, !dbg !2264
  %conv4 = trunc i32 %sub to i8, !dbg !2264
  store i8 %conv4, ptr %c.addr, align 1, !dbg !2264
  br label %if.end, !dbg !2265

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8, ptr %c.addr, align 1, !dbg !2266
  ret i8 %3, !dbg !2267
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i8 @__toupper(i8 noundef zeroext %c) #5 align 16 !dbg !2268 {
entry:
  %c.addr = alloca i8, align 1
  store i8 %c, ptr %c.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %c.addr, metadata !2270, metadata !DIExpression()), !dbg !2271
  %0 = load i8, ptr %c.addr, align 1, !dbg !2272
  %conv = zext i8 %0 to i32, !dbg !2272
  %idxprom = sext i32 %conv to i64, !dbg !2272
  %arrayidx = getelementptr [0 x i8], ptr @_ctype, i64 0, i64 %idxprom, !dbg !2272
  %1 = load i8, ptr %arrayidx, align 1, !dbg !2272
  %conv1 = zext i8 %1 to i32, !dbg !2272
  %and = and i32 %conv1, 2, !dbg !2272
  %cmp = icmp ne i32 %and, 0, !dbg !2272
  br i1 %cmp, label %if.then, label %if.end, !dbg !2274

if.then:                                          ; preds = %entry
  %2 = load i8, ptr %c.addr, align 1, !dbg !2275
  %conv3 = zext i8 %2 to i32, !dbg !2275
  %sub = sub i32 %conv3, 32, !dbg !2275
  %conv4 = trunc i32 %sub to i8, !dbg !2275
  store i8 %conv4, ptr %c.addr, align 1, !dbg !2275
  br label %if.end, !dbg !2276

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8, ptr %c.addr, align 1, !dbg !2277
  ret i8 %3, !dbg !2278
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @match_device(ptr noundef %drv, ptr noundef %dev) #0 align 16 !dbg !2279 {
entry:
  %retval = alloca ptr, align 8
  %drv.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %drv_id = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %drv, ptr %drv.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %drv.addr, metadata !2283, metadata !DIExpression()), !dbg !2286
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2284, metadata !DIExpression()), !dbg !2287
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv_id) #14, !dbg !2288
  call void @llvm.dbg.declare(metadata ptr %drv_id, metadata !2285, metadata !DIExpression()), !dbg !2289
  %0 = load ptr, ptr %drv.addr, align 8, !dbg !2290
  %id_table = getelementptr inbounds %struct.pnp_driver, ptr %0, i32 0, i32 1, !dbg !2291
  %1 = load ptr, ptr %id_table, align 8, !dbg !2291
  store ptr %1, ptr %drv_id, align 8, !dbg !2289
  %2 = load ptr, ptr %drv_id, align 8, !dbg !2292
  %tobool = icmp ne ptr %2, null, !dbg !2292
  br i1 %tobool, label %if.end, label %if.then, !dbg !2294

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2295
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2295

if.end:                                           ; preds = %entry
  br label %while.cond, !dbg !2296

while.cond:                                       ; preds = %if.end7, %if.end
  %3 = load ptr, ptr %drv_id, align 8, !dbg !2297
  %id = getelementptr inbounds %struct.pnp_device_id, ptr %3, i32 0, i32 0, !dbg !2298
  %arraydecay = getelementptr inbounds [8 x i8], ptr %id, i64 0, i64 0, !dbg !2299
  %4 = load i8, ptr %arraydecay, align 8, !dbg !2299
  %tobool1 = icmp ne i8 %4, 0, !dbg !2296
  br i1 %tobool1, label %while.body, label %while.end, !dbg !2296

while.body:                                       ; preds = %while.cond
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !2300
  %id2 = getelementptr inbounds %struct.pnp_dev, ptr %5, i32 0, i32 12, !dbg !2303
  %6 = load ptr, ptr %id2, align 8, !dbg !2303
  %7 = load ptr, ptr %drv_id, align 8, !dbg !2304
  %id3 = getelementptr inbounds %struct.pnp_device_id, ptr %7, i32 0, i32 0, !dbg !2305
  %arraydecay4 = getelementptr inbounds [8 x i8], ptr %id3, i64 0, i64 0, !dbg !2304
  %call = call i32 @compare_pnp_id(ptr noundef %6, ptr noundef %arraydecay4) #13, !dbg !2306
  %tobool5 = icmp ne i32 %call, 0, !dbg !2306
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !2307

if.then6:                                         ; preds = %while.body
  %8 = load ptr, ptr %drv_id, align 8, !dbg !2308
  store ptr %8, ptr %retval, align 8, !dbg !2309
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2309

if.end7:                                          ; preds = %while.body
  %9 = load ptr, ptr %drv_id, align 8, !dbg !2310
  %incdec.ptr = getelementptr %struct.pnp_device_id, ptr %9, i32 1, !dbg !2310
  store ptr %incdec.ptr, ptr %drv_id, align 8, !dbg !2310
  br label %while.cond, !dbg !2296, !llvm.loop !2311

while.end:                                        ; preds = %while.cond
  store ptr null, ptr %retval, align 8, !dbg !2313
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2313

cleanup:                                          ; preds = %while.end, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv_id) #14, !dbg !2314
  %10 = load ptr, ptr %retval, align 8, !dbg !2314
  ret ptr %10, !dbg !2314
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2315 dso_local i32 @pnp_activate_dev(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2316 dso_local i32 @pnp_disable_dev(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pnp_bus_suspend(ptr noundef %dev) #0 align 16 !dbg !2317 {
entry:
  %dev.addr = alloca ptr, align 8
  %.compoundliteral = alloca %struct.pm_message, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2319, metadata !DIExpression()), !dbg !2320
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2321
  %event = getelementptr inbounds %struct.pm_message, ptr %.compoundliteral, i32 0, i32 0, !dbg !2322
  store i32 2, ptr %event, align 4, !dbg !2322
  %coerce.dive = getelementptr inbounds %struct.pm_message, ptr %.compoundliteral, i32 0, i32 0, !dbg !2323
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !2323
  %call = call i32 @__pnp_bus_suspend(ptr noundef %0, i32 %1) #13, !dbg !2323
  ret i32 %call, !dbg !2324
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pnp_bus_resume(ptr noundef %dev) #0 align 16 !dbg !2325 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %pnp_dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %pnp_drv = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2327, metadata !DIExpression()), !dbg !2333
  call void @llvm.lifetime.start.p0(i64 8, ptr %pnp_dev) #14, !dbg !2334
  call void @llvm.dbg.declare(metadata ptr %pnp_dev, metadata !2328, metadata !DIExpression()), !dbg !2335
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !2336
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2329, metadata !DIExpression()), !dbg !2336
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2336
  store ptr %0, ptr %__mptr, align 8, !dbg !2336
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2336
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !2336
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2336
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !2337
  %2 = load ptr, ptr %tmp, align 8, !dbg !2336
  store ptr %2, ptr %pnp_dev, align 8, !dbg !2335
  call void @llvm.lifetime.start.p0(i64 8, ptr %pnp_drv) #14, !dbg !2338
  call void @llvm.dbg.declare(metadata ptr %pnp_drv, metadata !2331, metadata !DIExpression()), !dbg !2339
  %3 = load ptr, ptr %pnp_dev, align 8, !dbg !2340
  %driver = getelementptr inbounds %struct.pnp_dev, ptr %3, i32 0, i32 10, !dbg !2341
  %4 = load ptr, ptr %driver, align 8, !dbg !2341
  store ptr %4, ptr %pnp_drv, align 8, !dbg !2339
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #14, !dbg !2342
  call void @llvm.dbg.declare(metadata ptr %error, metadata !2332, metadata !DIExpression()), !dbg !2343
  %5 = load ptr, ptr %pnp_drv, align 8, !dbg !2344
  %tobool = icmp ne ptr %5, null, !dbg !2344
  br i1 %tobool, label %if.end, label %if.then, !dbg !2346

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2347
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2347

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %pnp_dev, align 8, !dbg !2348
  %protocol = getelementptr inbounds %struct.pnp_dev, ptr %6, i32 0, i32 8, !dbg !2350
  %7 = load ptr, ptr %protocol, align 8, !dbg !2350
  %resume = getelementptr inbounds %struct.pnp_protocol, ptr %7, i32 0, i32 7, !dbg !2351
  %8 = load ptr, ptr %resume, align 8, !dbg !2351
  %tobool1 = icmp ne ptr %8, null, !dbg !2348
  br i1 %tobool1, label %if.then2, label %if.end8, !dbg !2352

if.then2:                                         ; preds = %if.end
  %9 = load ptr, ptr %pnp_dev, align 8, !dbg !2353
  %protocol3 = getelementptr inbounds %struct.pnp_dev, ptr %9, i32 0, i32 8, !dbg !2355
  %10 = load ptr, ptr %protocol3, align 8, !dbg !2355
  %resume4 = getelementptr inbounds %struct.pnp_protocol, ptr %10, i32 0, i32 7, !dbg !2356
  %11 = load ptr, ptr %resume4, align 8, !dbg !2356
  %12 = load ptr, ptr %pnp_dev, align 8, !dbg !2357
  %call = call i32 %11(ptr noundef %12) #13, !dbg !2353
  store i32 %call, ptr %error, align 4, !dbg !2358
  %13 = load i32, ptr %error, align 4, !dbg !2359
  %tobool5 = icmp ne i32 %13, 0, !dbg !2359
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !2361

if.then6:                                         ; preds = %if.then2
  %14 = load i32, ptr %error, align 4, !dbg !2362
  store i32 %14, ptr %retval, align 4, !dbg !2363
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2363

if.end7:                                          ; preds = %if.then2
  br label %if.end8, !dbg !2364

if.end8:                                          ; preds = %if.end7, %if.end
  %15 = load ptr, ptr %pnp_dev, align 8, !dbg !2365
  %protocol9 = getelementptr inbounds %struct.pnp_dev, ptr %15, i32 0, i32 8, !dbg !2365
  %16 = load ptr, ptr %protocol9, align 8, !dbg !2365
  %set = getelementptr inbounds %struct.pnp_protocol, ptr %16, i32 0, i32 3, !dbg !2365
  %17 = load ptr, ptr %set, align 8, !dbg !2365
  %tobool10 = icmp ne ptr %17, null, !dbg !2365
  br i1 %tobool10, label %land.lhs.true, label %if.end17, !dbg !2365

land.lhs.true:                                    ; preds = %if.end8
  %18 = load ptr, ptr %pnp_dev, align 8, !dbg !2365
  %capabilities = getelementptr inbounds %struct.pnp_dev, ptr %18, i32 0, i32 14, !dbg !2365
  %19 = load i32, ptr %capabilities, align 4, !dbg !2365
  %and = and i32 %19, 2, !dbg !2365
  %tobool11 = icmp ne i32 %and, 0, !dbg !2365
  br i1 %tobool11, label %if.then12, label %if.end17, !dbg !2367

if.then12:                                        ; preds = %land.lhs.true
  %20 = load ptr, ptr %pnp_dev, align 8, !dbg !2368
  %call13 = call i32 @pnp_start_dev(ptr noundef %20) #13, !dbg !2370
  store i32 %call13, ptr %error, align 4, !dbg !2371
  %21 = load i32, ptr %error, align 4, !dbg !2372
  %tobool14 = icmp ne i32 %21, 0, !dbg !2372
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !2374

if.then15:                                        ; preds = %if.then12
  %22 = load i32, ptr %error, align 4, !dbg !2375
  store i32 %22, ptr %retval, align 4, !dbg !2376
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2376

if.end16:                                         ; preds = %if.then12
  br label %if.end17, !dbg !2377

if.end17:                                         ; preds = %if.end16, %land.lhs.true, %if.end8
  %23 = load ptr, ptr %pnp_drv, align 8, !dbg !2378
  %driver18 = getelementptr inbounds %struct.pnp_driver, ptr %23, i32 0, i32 8, !dbg !2380
  %pm = getelementptr inbounds %struct.device_driver, ptr %driver18, i32 0, i32 16, !dbg !2381
  %24 = load ptr, ptr %pm, align 8, !dbg !2381
  %tobool19 = icmp ne ptr %24, null, !dbg !2378
  br i1 %tobool19, label %land.lhs.true20, label %if.end33, !dbg !2382

land.lhs.true20:                                  ; preds = %if.end17
  %25 = load ptr, ptr %pnp_drv, align 8, !dbg !2383
  %driver21 = getelementptr inbounds %struct.pnp_driver, ptr %25, i32 0, i32 8, !dbg !2384
  %pm22 = getelementptr inbounds %struct.device_driver, ptr %driver21, i32 0, i32 16, !dbg !2385
  %26 = load ptr, ptr %pm22, align 8, !dbg !2385
  %resume23 = getelementptr inbounds %struct.dev_pm_ops, ptr %26, i32 0, i32 3, !dbg !2386
  %27 = load ptr, ptr %resume23, align 8, !dbg !2386
  %tobool24 = icmp ne ptr %27, null, !dbg !2383
  br i1 %tobool24, label %if.then25, label %if.end33, !dbg !2387

if.then25:                                        ; preds = %land.lhs.true20
  %28 = load ptr, ptr %pnp_drv, align 8, !dbg !2388
  %driver26 = getelementptr inbounds %struct.pnp_driver, ptr %28, i32 0, i32 8, !dbg !2390
  %pm27 = getelementptr inbounds %struct.device_driver, ptr %driver26, i32 0, i32 16, !dbg !2391
  %29 = load ptr, ptr %pm27, align 8, !dbg !2391
  %resume28 = getelementptr inbounds %struct.dev_pm_ops, ptr %29, i32 0, i32 3, !dbg !2392
  %30 = load ptr, ptr %resume28, align 8, !dbg !2392
  %31 = load ptr, ptr %dev.addr, align 8, !dbg !2393
  %call29 = call i32 %30(ptr noundef %31) #13, !dbg !2388
  store i32 %call29, ptr %error, align 4, !dbg !2394
  %32 = load i32, ptr %error, align 4, !dbg !2395
  %tobool30 = icmp ne i32 %32, 0, !dbg !2395
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !2397

if.then31:                                        ; preds = %if.then25
  %33 = load i32, ptr %error, align 4, !dbg !2398
  store i32 %33, ptr %retval, align 4, !dbg !2399
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2399

if.end32:                                         ; preds = %if.then25
  br label %if.end33, !dbg !2400

if.end33:                                         ; preds = %if.end32, %land.lhs.true20, %if.end17
  %34 = load ptr, ptr %pnp_drv, align 8, !dbg !2401
  %resume34 = getelementptr inbounds %struct.pnp_driver, ptr %34, i32 0, i32 7, !dbg !2403
  %35 = load ptr, ptr %resume34, align 8, !dbg !2403
  %tobool35 = icmp ne ptr %35, null, !dbg !2401
  br i1 %tobool35, label %if.then36, label %if.end42, !dbg !2404

if.then36:                                        ; preds = %if.end33
  %36 = load ptr, ptr %pnp_drv, align 8, !dbg !2405
  %resume37 = getelementptr inbounds %struct.pnp_driver, ptr %36, i32 0, i32 7, !dbg !2407
  %37 = load ptr, ptr %resume37, align 8, !dbg !2407
  %38 = load ptr, ptr %pnp_dev, align 8, !dbg !2408
  %call38 = call i32 %37(ptr noundef %38) #13, !dbg !2405
  store i32 %call38, ptr %error, align 4, !dbg !2409
  %39 = load i32, ptr %error, align 4, !dbg !2410
  %tobool39 = icmp ne i32 %39, 0, !dbg !2410
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !2412

if.then40:                                        ; preds = %if.then36
  %40 = load i32, ptr %error, align 4, !dbg !2413
  store i32 %40, ptr %retval, align 4, !dbg !2414
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2414

if.end41:                                         ; preds = %if.then36
  br label %if.end42, !dbg !2415

if.end42:                                         ; preds = %if.end41, %if.end33
  store i32 0, ptr %retval, align 4, !dbg !2416
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2416

cleanup:                                          ; preds = %if.end42, %if.then40, %if.then31, %if.then15, %if.then6, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #14, !dbg !2417
  call void @llvm.lifetime.end.p0(i64 8, ptr %pnp_drv) #14, !dbg !2417
  call void @llvm.lifetime.end.p0(i64 8, ptr %pnp_dev) #14, !dbg !2417
  %41 = load i32, ptr %retval, align 4, !dbg !2417
  ret i32 %41, !dbg !2417
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pnp_bus_freeze(ptr noundef %dev) #0 align 16 !dbg !2418 {
entry:
  %dev.addr = alloca ptr, align 8
  %.compoundliteral = alloca %struct.pm_message, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2420, metadata !DIExpression()), !dbg !2421
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2422
  %event = getelementptr inbounds %struct.pm_message, ptr %.compoundliteral, i32 0, i32 0, !dbg !2423
  store i32 1, ptr %event, align 4, !dbg !2423
  %coerce.dive = getelementptr inbounds %struct.pm_message, ptr %.compoundliteral, i32 0, i32 0, !dbg !2424
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !2424
  %call = call i32 @__pnp_bus_suspend(ptr noundef %0, i32 %1) #13, !dbg !2424
  ret i32 %call, !dbg !2425
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pnp_bus_poweroff(ptr noundef %dev) #0 align 16 !dbg !2426 {
entry:
  %dev.addr = alloca ptr, align 8
  %.compoundliteral = alloca %struct.pm_message, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2428, metadata !DIExpression()), !dbg !2429
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2430
  %event = getelementptr inbounds %struct.pm_message, ptr %.compoundliteral, i32 0, i32 0, !dbg !2431
  store i32 4, ptr %event, align 4, !dbg !2431
  %coerce.dive = getelementptr inbounds %struct.pm_message, ptr %.compoundliteral, i32 0, i32 0, !dbg !2432
  %1 = load i32, ptr %coerce.dive, align 4, !dbg !2432
  %call = call i32 @__pnp_bus_suspend(ptr noundef %0, i32 %1) #13, !dbg !2432
  ret i32 %call, !dbg !2433
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__pnp_bus_suspend(ptr noundef %dev, i32 %state.coerce) #0 align 16 !dbg !2434 {
entry:
  %retval = alloca i32, align 4
  %state = alloca %struct.pm_message, align 4
  %dev.addr = alloca ptr, align 8
  %pnp_dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %pnp_drv = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.pm_message, ptr %state, i32 0, i32 0
  store i32 %state.coerce, ptr %coerce.dive, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2436, metadata !DIExpression()), !dbg !2443
  call void @llvm.dbg.declare(metadata ptr %state, metadata !2437, metadata !DIExpression()), !dbg !2444
  call void @llvm.lifetime.start.p0(i64 8, ptr %pnp_dev) #14, !dbg !2445
  call void @llvm.dbg.declare(metadata ptr %pnp_dev, metadata !2438, metadata !DIExpression()), !dbg !2446
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !2447
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2439, metadata !DIExpression()), !dbg !2447
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2447
  store ptr %0, ptr %__mptr, align 8, !dbg !2447
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2447
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !2447
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2447
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !2448
  %2 = load ptr, ptr %tmp, align 8, !dbg !2447
  store ptr %2, ptr %pnp_dev, align 8, !dbg !2446
  call void @llvm.lifetime.start.p0(i64 8, ptr %pnp_drv) #14, !dbg !2449
  call void @llvm.dbg.declare(metadata ptr %pnp_drv, metadata !2441, metadata !DIExpression()), !dbg !2450
  %3 = load ptr, ptr %pnp_dev, align 8, !dbg !2451
  %driver = getelementptr inbounds %struct.pnp_dev, ptr %3, i32 0, i32 10, !dbg !2452
  %4 = load ptr, ptr %driver, align 8, !dbg !2452
  store ptr %4, ptr %pnp_drv, align 8, !dbg !2450
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #14, !dbg !2453
  call void @llvm.dbg.declare(metadata ptr %error, metadata !2442, metadata !DIExpression()), !dbg !2454
  %5 = load ptr, ptr %pnp_drv, align 8, !dbg !2455
  %tobool = icmp ne ptr %5, null, !dbg !2455
  br i1 %tobool, label %if.end, label %if.then, !dbg !2457

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2458
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2458

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %pnp_drv, align 8, !dbg !2459
  %driver1 = getelementptr inbounds %struct.pnp_driver, ptr %6, i32 0, i32 8, !dbg !2461
  %pm = getelementptr inbounds %struct.device_driver, ptr %driver1, i32 0, i32 16, !dbg !2462
  %7 = load ptr, ptr %pm, align 8, !dbg !2462
  %tobool2 = icmp ne ptr %7, null, !dbg !2459
  br i1 %tobool2, label %land.lhs.true, label %if.end16, !dbg !2463

land.lhs.true:                                    ; preds = %if.end
  %8 = load ptr, ptr %pnp_drv, align 8, !dbg !2464
  %driver3 = getelementptr inbounds %struct.pnp_driver, ptr %8, i32 0, i32 8, !dbg !2465
  %pm4 = getelementptr inbounds %struct.device_driver, ptr %driver3, i32 0, i32 16, !dbg !2466
  %9 = load ptr, ptr %pm4, align 8, !dbg !2466
  %suspend = getelementptr inbounds %struct.dev_pm_ops, ptr %9, i32 0, i32 2, !dbg !2467
  %10 = load ptr, ptr %suspend, align 8, !dbg !2467
  %tobool5 = icmp ne ptr %10, null, !dbg !2464
  br i1 %tobool5, label %if.then6, label %if.end16, !dbg !2468

if.then6:                                         ; preds = %land.lhs.true
  %11 = load ptr, ptr %pnp_drv, align 8, !dbg !2469
  %driver7 = getelementptr inbounds %struct.pnp_driver, ptr %11, i32 0, i32 8, !dbg !2471
  %pm8 = getelementptr inbounds %struct.device_driver, ptr %driver7, i32 0, i32 16, !dbg !2472
  %12 = load ptr, ptr %pm8, align 8, !dbg !2472
  %suspend9 = getelementptr inbounds %struct.dev_pm_ops, ptr %12, i32 0, i32 2, !dbg !2473
  %13 = load ptr, ptr %suspend9, align 8, !dbg !2473
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !2474
  %call = call i32 %13(ptr noundef %14) #13, !dbg !2469
  store i32 %call, ptr %error, align 4, !dbg !2475
  br label %do.body, !dbg !2476

do.body:                                          ; preds = %if.then6
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !2477
  %16 = load ptr, ptr %pnp_drv, align 8, !dbg !2477
  %driver10 = getelementptr inbounds %struct.pnp_driver, ptr %16, i32 0, i32 8, !dbg !2477
  %pm11 = getelementptr inbounds %struct.device_driver, ptr %driver10, i32 0, i32 16, !dbg !2477
  %17 = load ptr, ptr %pm11, align 8, !dbg !2477
  %suspend12 = getelementptr inbounds %struct.dev_pm_ops, ptr %17, i32 0, i32 2, !dbg !2477
  %18 = load ptr, ptr %suspend12, align 8, !dbg !2477
  %19 = load i32, ptr %error, align 4, !dbg !2477
  call void @__suspend_report_result(ptr noundef @__func__.__pnp_bus_suspend, ptr noundef %15, ptr noundef %18, i32 noundef %19) #13, !dbg !2477
  br label %do.cond, !dbg !2477

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2477

do.end:                                           ; preds = %do.cond
  %20 = load i32, ptr %error, align 4, !dbg !2479
  %tobool13 = icmp ne i32 %20, 0, !dbg !2479
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !2481

if.then14:                                        ; preds = %do.end
  %21 = load i32, ptr %error, align 4, !dbg !2482
  store i32 %21, ptr %retval, align 4, !dbg !2483
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2483

if.end15:                                         ; preds = %do.end
  br label %if.end16, !dbg !2484

if.end16:                                         ; preds = %if.end15, %land.lhs.true, %if.end
  %22 = load ptr, ptr %pnp_drv, align 8, !dbg !2485
  %suspend17 = getelementptr inbounds %struct.pnp_driver, ptr %22, i32 0, i32 6, !dbg !2487
  %23 = load ptr, ptr %suspend17, align 8, !dbg !2487
  %tobool18 = icmp ne ptr %23, null, !dbg !2485
  br i1 %tobool18, label %if.then19, label %if.end26, !dbg !2488

if.then19:                                        ; preds = %if.end16
  %24 = load ptr, ptr %pnp_drv, align 8, !dbg !2489
  %suspend20 = getelementptr inbounds %struct.pnp_driver, ptr %24, i32 0, i32 6, !dbg !2491
  %25 = load ptr, ptr %suspend20, align 8, !dbg !2491
  %26 = load ptr, ptr %pnp_dev, align 8, !dbg !2492
  %coerce.dive21 = getelementptr inbounds %struct.pm_message, ptr %state, i32 0, i32 0, !dbg !2489
  %27 = load i32, ptr %coerce.dive21, align 4, !dbg !2489
  %call22 = call i32 %25(ptr noundef %26, i32 %27) #13, !dbg !2489
  store i32 %call22, ptr %error, align 4, !dbg !2493
  %28 = load i32, ptr %error, align 4, !dbg !2494
  %tobool23 = icmp ne i32 %28, 0, !dbg !2494
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !2496

if.then24:                                        ; preds = %if.then19
  %29 = load i32, ptr %error, align 4, !dbg !2497
  store i32 %29, ptr %retval, align 4, !dbg !2498
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2498

if.end25:                                         ; preds = %if.then19
  br label %if.end26, !dbg !2499

if.end26:                                         ; preds = %if.end25, %if.end16
  %30 = load ptr, ptr %pnp_dev, align 8, !dbg !2500
  %protocol = getelementptr inbounds %struct.pnp_dev, ptr %30, i32 0, i32 8, !dbg !2500
  %31 = load ptr, ptr %protocol, align 8, !dbg !2500
  %disable = getelementptr inbounds %struct.pnp_protocol, ptr %31, i32 0, i32 4, !dbg !2500
  %32 = load ptr, ptr %disable, align 8, !dbg !2500
  %tobool27 = icmp ne ptr %32, null, !dbg !2500
  br i1 %tobool27, label %land.lhs.true28, label %if.end47, !dbg !2500

land.lhs.true28:                                  ; preds = %if.end26
  %33 = load ptr, ptr %pnp_dev, align 8, !dbg !2500
  %capabilities = getelementptr inbounds %struct.pnp_dev, ptr %33, i32 0, i32 14, !dbg !2500
  %34 = load i32, ptr %capabilities, align 4, !dbg !2500
  %and = and i32 %34, 4, !dbg !2500
  %tobool29 = icmp ne i32 %and, 0, !dbg !2500
  br i1 %tobool29, label %land.lhs.true30, label %if.end47, !dbg !2500

land.lhs.true30:                                  ; preds = %land.lhs.true28
  %35 = load ptr, ptr %pnp_dev, align 8, !dbg !2500
  %capabilities31 = getelementptr inbounds %struct.pnp_dev, ptr %35, i32 0, i32 14, !dbg !2500
  %36 = load i32, ptr %capabilities31, align 4, !dbg !2500
  %and32 = and i32 %36, 32, !dbg !2500
  %tobool33 = icmp ne i32 %and32, 0, !dbg !2500
  br i1 %tobool33, label %lor.lhs.false, label %land.lhs.true35, !dbg !2500

lor.lhs.false:                                    ; preds = %land.lhs.true30
  %37 = load i8, ptr @console_suspend_enabled, align 1, !dbg !2500, !range !2502, !noundef !337
  %tobool34 = trunc i8 %37 to i1, !dbg !2500
  br i1 %tobool34, label %land.lhs.true35, label %if.end47, !dbg !2503

land.lhs.true35:                                  ; preds = %lor.lhs.false, %land.lhs.true30
  %38 = load ptr, ptr %pnp_dev, align 8, !dbg !2504
  %protocol36 = getelementptr inbounds %struct.pnp_dev, ptr %38, i32 0, i32 8, !dbg !2504
  %39 = load ptr, ptr %protocol36, align 8, !dbg !2504
  %set = getelementptr inbounds %struct.pnp_protocol, ptr %39, i32 0, i32 3, !dbg !2504
  %40 = load ptr, ptr %set, align 8, !dbg !2504
  %tobool37 = icmp ne ptr %40, null, !dbg !2504
  br i1 %tobool37, label %land.lhs.true38, label %if.end47, !dbg !2504

land.lhs.true38:                                  ; preds = %land.lhs.true35
  %41 = load ptr, ptr %pnp_dev, align 8, !dbg !2504
  %capabilities39 = getelementptr inbounds %struct.pnp_dev, ptr %41, i32 0, i32 14, !dbg !2504
  %42 = load i32, ptr %capabilities39, align 4, !dbg !2504
  %and40 = and i32 %42, 2, !dbg !2504
  %tobool41 = icmp ne i32 %and40, 0, !dbg !2504
  br i1 %tobool41, label %if.then42, label %if.end47, !dbg !2505

if.then42:                                        ; preds = %land.lhs.true38
  %43 = load ptr, ptr %pnp_dev, align 8, !dbg !2506
  %call43 = call i32 @pnp_stop_dev(ptr noundef %43) #13, !dbg !2508
  store i32 %call43, ptr %error, align 4, !dbg !2509
  %44 = load i32, ptr %error, align 4, !dbg !2510
  %tobool44 = icmp ne i32 %44, 0, !dbg !2510
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !2512

if.then45:                                        ; preds = %if.then42
  %45 = load i32, ptr %error, align 4, !dbg !2513
  store i32 %45, ptr %retval, align 4, !dbg !2514
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2514

if.end46:                                         ; preds = %if.then42
  br label %if.end47, !dbg !2515

if.end47:                                         ; preds = %if.end46, %land.lhs.true38, %land.lhs.true35, %lor.lhs.false, %land.lhs.true28, %if.end26
  %46 = load ptr, ptr %pnp_dev, align 8, !dbg !2516
  %protocol48 = getelementptr inbounds %struct.pnp_dev, ptr %46, i32 0, i32 8, !dbg !2516
  %47 = load ptr, ptr %protocol48, align 8, !dbg !2516
  %suspend49 = getelementptr inbounds %struct.pnp_protocol, ptr %47, i32 0, i32 6, !dbg !2516
  %48 = load ptr, ptr %suspend49, align 8, !dbg !2516
  %tobool50 = icmp ne ptr %48, null, !dbg !2516
  br i1 %tobool50, label %land.lhs.true51, label %if.end62, !dbg !2516

land.lhs.true51:                                  ; preds = %if.end47
  %49 = load ptr, ptr %pnp_dev, align 8, !dbg !2516
  %capabilities52 = getelementptr inbounds %struct.pnp_dev, ptr %49, i32 0, i32 14, !dbg !2516
  %50 = load i32, ptr %capabilities52, align 4, !dbg !2516
  %and53 = and i32 %50, 32, !dbg !2516
  %tobool54 = icmp ne i32 %and53, 0, !dbg !2516
  br i1 %tobool54, label %lor.lhs.false55, label %if.then57, !dbg !2516

lor.lhs.false55:                                  ; preds = %land.lhs.true51
  %51 = load i8, ptr @console_suspend_enabled, align 1, !dbg !2516, !range !2502, !noundef !337
  %tobool56 = trunc i8 %51 to i1, !dbg !2516
  br i1 %tobool56, label %if.then57, label %if.end62, !dbg !2518

if.then57:                                        ; preds = %lor.lhs.false55, %land.lhs.true51
  %52 = load ptr, ptr %pnp_dev, align 8, !dbg !2519
  %protocol58 = getelementptr inbounds %struct.pnp_dev, ptr %52, i32 0, i32 8, !dbg !2520
  %53 = load ptr, ptr %protocol58, align 8, !dbg !2520
  %suspend59 = getelementptr inbounds %struct.pnp_protocol, ptr %53, i32 0, i32 6, !dbg !2521
  %54 = load ptr, ptr %suspend59, align 8, !dbg !2521
  %55 = load ptr, ptr %pnp_dev, align 8, !dbg !2522
  %coerce.dive60 = getelementptr inbounds %struct.pm_message, ptr %state, i32 0, i32 0, !dbg !2519
  %56 = load i32, ptr %coerce.dive60, align 4, !dbg !2519
  %call61 = call i32 %54(ptr noundef %55, i32 %56) #13, !dbg !2519
  br label %if.end62, !dbg !2519

if.end62:                                         ; preds = %if.then57, %lor.lhs.false55, %if.end47
  store i32 0, ptr %retval, align 4, !dbg !2523
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2523

cleanup:                                          ; preds = %if.end62, %if.then45, %if.then24, %if.then14, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #14, !dbg !2524
  call void @llvm.lifetime.end.p0(i64 8, ptr %pnp_drv) #14, !dbg !2524
  call void @llvm.lifetime.end.p0(i64 8, ptr %pnp_dev) #14, !dbg !2524
  %57 = load i32, ptr %retval, align 4, !dbg !2524
  ret i32 %57, !dbg !2524
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2525 dso_local void @__suspend_report_result(ptr noundef, ptr noundef, ptr noundef, i32 noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2528 dso_local i32 @pnp_stop_dev(ptr noundef) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2529 dso_local i32 @pnp_start_dev(ptr noundef) #2

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !2530 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2532, metadata !DIExpression()), !dbg !2537
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2533, metadata !DIExpression()), !dbg !2538
  %0 = load i64, ptr %size.addr, align 8, !dbg !2539
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2540
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2541

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2542
  %tobool = icmp ne i64 %2, 0, !dbg !2542
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2543

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !2544
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2534, metadata !DIExpression()), !dbg !2545
  %3 = load i64, ptr %size.addr, align 8, !dbg !2546
  %cmp = icmp ugt i64 %3, 8192, !dbg !2548
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2549

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2550
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2551
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !2552
  store ptr %call, ptr %retval, align 8, !dbg !2553
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2553

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2554
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #13, !dbg !2554
  store i32 %call2, ptr %index, align 4, !dbg !2555
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2556
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2557
  %9 = ptrtoint ptr %8 to i64, !dbg !2557
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #13, !dbg !2558
  %idxprom = zext i32 %call3 to i64, !dbg !2559
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2559
  %10 = load i32, ptr %index, align 4, !dbg !2560
  %idxprom4 = zext i32 %10 to i64, !dbg !2559
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2559
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2559
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2561
  %13 = load i64, ptr %size.addr, align 8, !dbg !2562
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !2563
  store ptr %call6, ptr %retval, align 8, !dbg !2564
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2564

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !2565
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2566
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2567
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !2568
  store ptr %call8, ptr %retval, align 8, !dbg !2569
  br label %return, !dbg !2569

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2570
  ret ptr %16, !dbg !2570
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2571 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #9 align 16 !dbg !2572 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2576, metadata !DIExpression()), !dbg !2578
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2577, metadata !DIExpression()), !dbg !2579
  %0 = load i64, ptr %size.addr, align 8, !dbg !2580
  %tobool = icmp ne i64 %0, 0, !dbg !2580
  br i1 %tobool, label %if.end, label %if.then, !dbg !2582

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2583
  br label %return, !dbg !2583

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2584
  %cmp = icmp ule i64 %1, 8, !dbg !2586
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2587

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2588
  br label %return, !dbg !2588

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2589
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2591
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2592

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2593
  %cmp4 = icmp ule i64 %3, 96, !dbg !2594
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2595

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2596
  br label %return, !dbg !2596

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2597
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2599
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2600

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2601
  %cmp9 = icmp ule i64 %5, 192, !dbg !2602
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2603

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2604
  br label %return, !dbg !2604

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2605
  %cmp12 = icmp ule i64 %6, 8, !dbg !2607
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2608

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2609
  br label %return, !dbg !2609

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2610
  %cmp15 = icmp ule i64 %7, 16, !dbg !2612
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2613

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2614
  br label %return, !dbg !2614

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2615
  %cmp18 = icmp ule i64 %8, 32, !dbg !2617
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2618

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2619
  br label %return, !dbg !2619

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2620
  %cmp21 = icmp ule i64 %9, 64, !dbg !2622
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2623

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2624
  br label %return, !dbg !2624

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2625
  %cmp24 = icmp ule i64 %10, 128, !dbg !2627
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2628

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2629
  br label %return, !dbg !2629

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2630
  %cmp27 = icmp ule i64 %11, 256, !dbg !2632
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2633

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2634
  br label %return, !dbg !2634

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2635
  %cmp30 = icmp ule i64 %12, 512, !dbg !2637
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2638

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2639
  br label %return, !dbg !2639

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2640
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2642
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2643

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2644
  br label %return, !dbg !2644

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2645
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2647
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2648

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2649
  br label %return, !dbg !2649

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2650
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2652
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2653

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2654
  br label %return, !dbg !2654

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2655
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2657
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2658

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2659
  br label %return, !dbg !2659

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2660
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2662
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2663

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2664
  br label %return, !dbg !2664

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2665
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2667
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2668

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2669
  br label %return, !dbg !2669

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2670
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2672
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2673

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2674
  br label %return, !dbg !2674

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2675
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2677
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2678

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2679
  br label %return, !dbg !2679

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2680
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2682
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2683

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2684
  br label %return, !dbg !2684

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2685
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2687
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2688

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2689
  br label %return, !dbg !2689

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2690
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2692
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2693

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2694
  br label %return, !dbg !2694

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2695
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2697
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2698

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2699
  br label %return, !dbg !2699

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2700, !range !2502, !noundef !337
  %tobool69 = trunc i8 %25 to i1, !dbg !2700
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2702

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2703

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_196() #17, !dbg !2704, !srcloc !2707
  unreachable, !dbg !2704

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2708

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2709

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2710

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2712

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2710

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.2, i32 480, i32 0, i64 12) #14, !dbg !2714, !srcloc !2716
  br label %do.end75, !dbg !2714

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2710

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2717
  br label %return, !dbg !2717

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2718
  ret i32 %26, !dbg !2718
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2719 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #9 align 16 !dbg !2725 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2729, metadata !DIExpression()), !dbg !2731
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2730, metadata !DIExpression()), !dbg !2732
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2733
  %and = and i32 %0, 17, !dbg !2733
  %cmp = icmp eq i32 %and, 0, !dbg !2733
  %lnot = xor i1 %cmp, true, !dbg !2733
  %lnot1 = xor i1 %lnot, true, !dbg !2733
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2733
  %conv = sext i32 %lnot.ext to i64, !dbg !2733
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2733
  %tobool = icmp ne i64 %expval, 0, !dbg !2733
  br i1 %tobool, label %if.then, label %if.end, !dbg !2735

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2736
  br label %return, !dbg !2736

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2737
  %and2 = and i32 %1, 1, !dbg !2739
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2739
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2740

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2741
  br label %return, !dbg !2741

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2742
  br label %return, !dbg !2742

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2744
  ret i32 %2, !dbg !2744
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2745 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2746 dso_local void @__compiletime_assert_196() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone }
attributes #14 = { nounwind }
attributes #15 = { noredzone allocsize(0) }
attributes #16 = { noredzone allocsize(2) }
attributes #17 = { noredzone noreturn }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!1760, !1761, !1762, !1763, !1764, !1765, !1766, !1767}
!llvm.ident = !{!1768}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 33, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/pnp/driver.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0c33c1c8b02f7eea346ba8ffae0bf189")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 8)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pnp_device_attach207", scope: !9, file: !2, line: 71, type: !100, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/pnp/.driver.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/pnp/pnp\22 -D KBUILD_BASENAME=\22driver\22 -D KBUILD_MODNAME=\22pnp\22 -D __KBUILD_MODNAME=kmod_pnp -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/pnp/driver.ll drivers/pnp/driver.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !99, globals: !1736, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !18, !25, !31, !38, !43, !51, !59, !68, !73, !78, !84, !89}
!11 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !12, line: 26, baseType: !13, size: 32, elements: !14)
!12 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!13 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!14 = !{!15, !16, !17}
!15 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!16 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!17 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!18 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !19, line: 312, baseType: !13, size: 32, elements: !20)
!19 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!20 = !{!21, !22, !23, !24}
!21 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!22 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!23 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!24 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!25 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !26, line: 45, baseType: !13, size: 32, elements: !27)
!26 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!27 = !{!28, !29, !30}
!28 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!29 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!30 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!31 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !32, line: 487, baseType: !13, size: 32, elements: !33)
!32 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!33 = !{!34, !35, !36, !37}
!34 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!35 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!36 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!37 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !39, line: 65, baseType: !13, size: 32, elements: !40)
!39 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!40 = !{!41, !42}
!41 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!42 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!43 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !44, line: 620, baseType: !13, size: 32, elements: !45)
!44 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!45 = !{!46, !47, !48, !49, !50}
!46 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!47 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!48 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!49 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!50 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!51 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !44, line: 597, baseType: !52, size: 32, elements: !53)
!52 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!53 = !{!54, !55, !56, !57, !58}
!54 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!55 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!56 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!57 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!58 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !32, line: 547, baseType: !13, size: 32, elements: !60)
!60 = !{!61, !62, !63, !64, !65, !66, !67}
!61 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!62 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!63 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!64 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!65 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!66 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!67 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !32, line: 564, baseType: !13, size: 32, elements: !69)
!69 = !{!70, !71, !72}
!70 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!71 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!72 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !32, line: 577, baseType: !13, size: 32, elements: !74)
!74 = !{!75, !76, !77}
!75 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!76 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!77 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !32, line: 503, baseType: !13, size: 32, elements: !79)
!79 = !{!80, !81, !82, !83}
!80 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!81 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!82 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!83 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !85, line: 10, baseType: !13, size: 32, elements: !86)
!85 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!86 = !{!87, !88}
!87 = !DIEnumerator(name: "false", value: 0)
!88 = !DIEnumerator(name: "true", value: 1)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !90, line: 364, baseType: !13, size: 32, elements: !91)
!90 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!91 = !{!92, !93, !94, !95, !96, !97, !98}
!92 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!93 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!94 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!95 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!96 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!97 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!98 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!99 = !{!100, !101, !52, !103, !104, !1658, !251}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !102, line: 154, baseType: !13)
!102 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!103 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_dev", file: !106, line: 243, size: 7744, elements: !107)
!106 = !DIFile(filename: "./include/linux/pnp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71a2b05a7bea4745f52d5f98f7dc6ac6")
!107 = !{!108, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1630, !1657, !1683, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !105, file: !106, line: 244, baseType: !109, size: 5824)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !32, line: 705, size: 5824, elements: !110)
!110 = !{!111, !776, !778, !781, !782, !835, !1303, !1304, !1305, !1306, !1307, !1314, !1482, !1495, !1505, !1509, !1511, !1512, !1513, !1517, !1524, !1525, !1528, !1531, !1535, !1538, !1539, !1542, !1543, !1544, !1545, !1575, !1576, !1577, !1580, !1583, !1592, !1593, !1594, !1595, !1596, !1597}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !109, file: !32, line: 706, baseType: !112, size: 512)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !113, line: 64, size: 512, elements: !114)
!113 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!114 = !{!115, !118, !124, !126, !214, !646, !761, !771, !772, !773, !774, !775}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !112, file: !113, line: 65, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !112, file: !113, line: 66, baseType: !119, size: 128, offset: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !102, line: 190, size: 128, elements: !120)
!120 = !{!121, !123}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !119, file: !102, line: 191, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !119, file: !102, line: 191, baseType: !122, size: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !112, file: !113, line: 67, baseType: !125, size: 64, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !112, file: !113, line: 68, baseType: !127, size: 64, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !113, line: 168, size: 768, elements: !129)
!129 = !{!130, !131, !173, !174}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !128, file: !113, line: 169, baseType: !119, size: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !128, file: !113, line: 170, baseType: !132, size: 32, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !133, line: 29, baseType: !134)
!133 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !133, line: 17, size: 32, elements: !135)
!135 = !{!136}
!136 = !DIDerivedType(tag: DW_TAG_member, scope: !134, file: !133, line: 18, baseType: !137, size: 32)
!137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !134, file: !133, line: 18, size: 32, elements: !138)
!138 = !{!139}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !137, file: !133, line: 19, baseType: !140, size: 32)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !141, line: 14, size: 32, elements: !142)
!141 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!142 = !{!143}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !140, file: !141, line: 15, baseType: !144, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !145, line: 44, baseType: !146)
!145 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !145, line: 14, size: 32, elements: !147)
!147 = !{!148}
!148 = !DIDerivedType(tag: DW_TAG_member, scope: !146, file: !145, line: 15, baseType: !149, size: 32)
!149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !146, file: !145, line: 15, size: 32, elements: !150)
!150 = !{!151, !156, !165}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !149, file: !145, line: 16, baseType: !152, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !102, line: 174, baseType: !153)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !102, line: 172, size: 32, elements: !154)
!154 = !{!155}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !153, file: !102, line: 173, baseType: !52, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, scope: !149, file: !145, line: 24, baseType: !157, size: 16)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !149, file: !145, line: 24, size: 16, elements: !158)
!158 = !{!159, !164}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !157, file: !145, line: 25, baseType: !160, size: 8)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !161, line: 17, baseType: !162)
!161 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !163, line: 21, baseType: !103)
!163 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!164 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !157, file: !145, line: 26, baseType: !160, size: 8, offset: 8)
!165 = !DIDerivedType(tag: DW_TAG_member, scope: !149, file: !145, line: 28, baseType: !166, size: 32)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !149, file: !145, line: 28, size: 32, elements: !167)
!167 = !{!168, !172}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !166, file: !145, line: 29, baseType: !169, size: 16)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !161, line: 19, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !163, line: 24, baseType: !171)
!171 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !166, file: !145, line: 30, baseType: !169, size: 16, offset: 16)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !128, file: !113, line: 171, baseType: !112, size: 512, offset: 192)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !128, file: !113, line: 172, baseType: !175, size: 64, offset: 704)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !113, line: 133, size: 192, elements: !178)
!178 = !{!179, !186, !191}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !177, file: !113, line: 134, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = !DISubroutineType(types: !183)
!183 = !{!52, !184}
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !112)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !177, file: !113, line: 135, baseType: !187, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DISubroutineType(types: !190)
!190 = !{!116, !184}
!191 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !177, file: !113, line: 136, baseType: !192, size: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !193)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{!52, !184, !196}
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !113, line: 125, size: 20736, elements: !198)
!198 = !{!199, !204, !208, !209, !213}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !197, file: !113, line: 126, baseType: !200, size: 192)
!200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 192, elements: !202)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!202 = !{!203}
!203 = !DISubrange(count: 3)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !197, file: !113, line: 127, baseType: !205, size: 4096, offset: 192)
!205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 4096, elements: !206)
!206 = !{!207}
!207 = !DISubrange(count: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !197, file: !113, line: 128, baseType: !52, size: 32, offset: 4288)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !197, file: !113, line: 129, baseType: !210, size: 16384, offset: 4320)
!210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !211)
!211 = !{!212}
!212 = !DISubrange(count: 2048)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !197, file: !113, line: 130, baseType: !52, size: 32, offset: 20704)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !112, file: !113, line: 69, baseType: !215, size: 64, offset: 320)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !113, line: 116, size: 384, elements: !218)
!218 = !{!219, !223, !252, !593, !624, !628}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !217, file: !113, line: 117, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{null, !125}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !217, file: !113, line: 118, baseType: !224, size: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !226)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !227, line: 254, size: 128, elements: !228)
!227 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!228 = !{!229, !244}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !226, file: !227, line: 255, baseType: !230, size: 64)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!233, !125, !238, !201}
!233 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !102, line: 66, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !235, line: 73, baseType: !236)
!235 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !235, line: 15, baseType: !237)
!237 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !227, line: 30, size: 128, elements: !240)
!240 = !{!241, !242}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !239, file: !227, line: 31, baseType: !116, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !239, file: !227, line: 32, baseType: !243, size: 16, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !102, line: 24, baseType: !171)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !226, file: !227, line: 256, baseType: !245, size: 64, offset: 64)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!233, !125, !238, !116, !248}
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !102, line: 61, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !235, line: 72, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !235, line: 16, baseType: !251)
!251 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !217, file: !113, line: 119, baseType: !253, size: 64, offset: 128)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !227, line: 84, size: 320, elements: !257)
!257 = !{!258, !259, !263, !589, !591}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !256, file: !227, line: 85, baseType: !116, size: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !256, file: !227, line: 86, baseType: !260, size: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!243, !125, !238, !52}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !256, file: !227, line: 88, baseType: !264, size: 64, offset: 128)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DISubroutineType(types: !266)
!266 = !{!243, !125, !267, !52}
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !227, line: 175, size: 512, elements: !269)
!269 = !{!270, !271, !272, !273, !280, !290, !291}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !268, file: !227, line: 176, baseType: !239, size: 128)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !268, file: !227, line: 177, baseType: !248, size: 64, offset: 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !268, file: !227, line: 178, baseType: !100, size: 64, offset: 192)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !268, file: !227, line: 179, baseType: !274, size: 64, offset: 256)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!277}
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !279, line: 32, flags: DIFlagFwdDecl)
!279 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!280 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !268, file: !227, line: 180, baseType: !281, size: 64, offset: 320)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!233, !284, !125, !267, !201, !287, !248}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !286, line: 537, flags: DIFlagFwdDecl)
!286 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !102, line: 52, baseType: !288)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !235, line: 88, baseType: !289)
!289 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !268, file: !227, line: 182, baseType: !281, size: 64, offset: 384)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !268, file: !227, line: 184, baseType: !292, size: 64, offset: 448)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!52, !284, !125, !267, !295}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !279, line: 625, size: 1344, elements: !297)
!297 = !{!298, !315, !538, !544, !551, !552, !557, !560, !572, !573, !576, !580, !581, !582, !583, !584, !587}
!298 = !DIDerivedType(tag: DW_TAG_member, scope: !296, file: !279, line: 628, baseType: !299, size: 128)
!299 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !296, file: !279, line: 628, size: 128, elements: !300)
!300 = !{!301, !306}
!301 = !DIDerivedType(tag: DW_TAG_member, scope: !299, file: !279, line: 629, baseType: !302, size: 128)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !299, file: !279, line: 629, size: 128, elements: !303)
!303 = !{!304, !305}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !302, file: !279, line: 631, baseType: !251, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !302, file: !279, line: 632, baseType: !251, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !299, file: !279, line: 635, baseType: !307, size: 128, align: 64)
!307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !102, line: 232, size: 128, align: 64, elements: !308)
!308 = !{!309, !311}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !307, file: !102, line: 233, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !307, file: !102, line: 234, baseType: !312, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{null, !310}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !296, file: !279, line: 639, baseType: !316, size: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !279, line: 733, size: 10240, elements: !318)
!318 = !{!319, !534}
!319 = !DIDerivedType(tag: DW_TAG_member, scope: !317, file: !279, line: 734, baseType: !320, size: 10240)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !317, file: !279, line: 734, size: 10240, elements: !321)
!321 = !{!322, !326, !340, !344, !345, !346, !347, !348, !349, !357, !358, !359, !368, !369, !378, !379, !380, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !427, !441, !444, !499, !500, !501, !504, !508, !509, !512, !513, !514, !521, !522}
!322 = !DIDerivedType(tag: DW_TAG_member, scope: !320, file: !279, line: 739, baseType: !323, size: 512, align: 512)
!323 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !320, file: !279, line: 739, size: 512, align: 512, elements: !324)
!324 = !{!325}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !323, file: !279, line: 747, baseType: !152, size: 32)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !320, file: !279, line: 750, baseType: !327, size: 128, offset: 512)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !328, line: 218, size: 128, elements: !329)
!328 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!329 = !{!330, !338, !339}
!330 = !DIDerivedType(tag: DW_TAG_member, scope: !327, file: !328, line: 219, baseType: !331, size: 32)
!331 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !327, file: !328, line: 219, size: 32, elements: !332)
!332 = !{!333, !334}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !331, file: !328, line: 220, baseType: !132, size: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !331, file: !328, line: 221, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !328, line: 197, baseType: !336)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !328, line: 197, elements: !337)
!337 = !{}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !327, file: !328, line: 223, baseType: !13, size: 32, offset: 32)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !327, file: !328, line: 224, baseType: !100, size: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !320, file: !279, line: 752, baseType: !341, size: 64, offset: 640)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!251, !284, !251, !251, !251, !251}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !320, file: !279, line: 756, baseType: !251, size: 64, offset: 704)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !320, file: !279, line: 757, baseType: !251, size: 64, offset: 768)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !320, file: !279, line: 760, baseType: !251, size: 64, offset: 832)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !320, file: !279, line: 761, baseType: !251, size: 64, offset: 896)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !320, file: !279, line: 763, baseType: !251, size: 64, offset: 960)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !320, file: !279, line: 764, baseType: !350, size: 64, offset: 1024)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !286, line: 299, baseType: !352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !286, line: 299, size: 64, elements: !353)
!353 = !{!354}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !352, file: !286, line: 299, baseType: !355, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !356, line: 18, baseType: !251)
!356 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!357 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !320, file: !279, line: 773, baseType: !152, size: 32, offset: 1088)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !320, file: !279, line: 785, baseType: !152, size: 32, offset: 1120)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !320, file: !279, line: 795, baseType: !360, size: 64, offset: 1152)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !279, line: 726, size: 128, elements: !362)
!362 = !{!363, !367}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !361, file: !279, line: 727, baseType: !364, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !161, line: 23, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !163, line: 31, baseType: !366)
!366 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !361, file: !279, line: 728, baseType: !52, size: 32, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !320, file: !279, line: 801, baseType: !251, size: 64, offset: 1216)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !320, file: !279, line: 804, baseType: !370, size: 64, offset: 1280)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !371, line: 13, baseType: !372)
!371 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !102, line: 181, baseType: !373)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !102, line: 179, size: 64, elements: !374)
!374 = !{!375}
!375 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !373, file: !102, line: 180, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !161, line: 22, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !163, line: 30, baseType: !289)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !320, file: !279, line: 806, baseType: !52, size: 32, offset: 1344)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !320, file: !279, line: 808, baseType: !132, size: 32, offset: 1376)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !320, file: !279, line: 823, baseType: !381, size: 320, offset: 1408)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !382, line: 48, size: 320, elements: !383)
!382 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!383 = !{!384, !385, !386, !391, !393}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !381, file: !382, line: 49, baseType: !370, size: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !381, file: !382, line: 55, baseType: !370, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !381, file: !382, line: 57, baseType: !387, size: 32, offset: 128)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !388, line: 15, size: 32, elements: !389)
!388 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!389 = !{!390}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !387, file: !388, line: 20, baseType: !152, size: 32)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !381, file: !382, line: 59, baseType: !392, size: 32, offset: 160)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !141, line: 23, baseType: !140)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !381, file: !382, line: 60, baseType: !119, size: 128, offset: 192)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !320, file: !279, line: 825, baseType: !119, size: 128, offset: 1728)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !320, file: !279, line: 845, baseType: !52, size: 32, offset: 1856)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !320, file: !279, line: 849, baseType: !251, size: 64, offset: 1920)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !320, file: !279, line: 850, baseType: !251, size: 64, offset: 1984)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !320, file: !279, line: 852, baseType: !251, size: 64, offset: 2048)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !320, file: !279, line: 853, baseType: !251, size: 64, offset: 2112)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !320, file: !279, line: 854, baseType: !372, size: 64, offset: 2176)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !320, file: !279, line: 855, baseType: !251, size: 64, offset: 2240)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !320, file: !279, line: 856, baseType: !251, size: 64, offset: 2304)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !320, file: !279, line: 857, baseType: !251, size: 64, offset: 2368)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !320, file: !279, line: 858, baseType: !251, size: 64, offset: 2432)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !320, file: !279, line: 865, baseType: !406, size: 32, offset: 2496)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !407, line: 69, baseType: !408)
!407 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !407, line: 64, size: 32, elements: !409)
!409 = !{!410}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !408, file: !407, line: 65, baseType: !13, size: 32)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !320, file: !279, line: 867, baseType: !132, size: 32, offset: 2528)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !320, file: !279, line: 869, baseType: !251, size: 64, offset: 2560)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !320, file: !279, line: 869, baseType: !251, size: 64, offset: 2624)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !320, file: !279, line: 869, baseType: !251, size: 64, offset: 2688)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !320, file: !279, line: 869, baseType: !251, size: 64, offset: 2752)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !320, file: !279, line: 870, baseType: !251, size: 64, offset: 2816)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !320, file: !279, line: 870, baseType: !251, size: 64, offset: 2880)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !320, file: !279, line: 870, baseType: !251, size: 64, offset: 2944)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !320, file: !279, line: 871, baseType: !251, size: 64, offset: 3008)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !320, file: !279, line: 871, baseType: !251, size: 64, offset: 3072)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !320, file: !279, line: 871, baseType: !251, size: 64, offset: 3136)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !320, file: !279, line: 871, baseType: !251, size: 64, offset: 3200)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !320, file: !279, line: 873, baseType: !424, size: 3328, offset: 3264)
!424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 3328, elements: !425)
!425 = !{!426}
!426 = !DISubrange(count: 52)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !320, file: !279, line: 875, baseType: !428, size: 1280, offset: 6592)
!428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 1280, elements: !439)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !430, line: 22, size: 320, elements: !431)
!430 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!431 = !{!432, !433, !434, !435}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !429, file: !430, line: 23, baseType: !392, size: 32)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !429, file: !430, line: 24, baseType: !376, size: 64, offset: 64)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !429, file: !430, line: 26, baseType: !119, size: 128, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !429, file: !430, line: 28, baseType: !436, size: 64, offset: 256)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !161, line: 20, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !163, line: 26, baseType: !52)
!439 = !{!440}
!440 = !DISubrange(count: 4)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !320, file: !279, line: 877, baseType: !442, size: 64, offset: 7872)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !279, line: 877, flags: DIFlagFwdDecl)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !320, file: !279, line: 880, baseType: !445, size: 1088, offset: 7936)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !446, line: 72, baseType: !447)
!446 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !446, line: 23, size: 1088, elements: !448)
!448 = !{!449, !450, !451, !452, !453, !456, !457, !465, !466, !493, !494, !495}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !447, file: !446, line: 28, baseType: !364, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !447, file: !446, line: 38, baseType: !372, size: 64, offset: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !447, file: !446, line: 40, baseType: !251, size: 64, offset: 128)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !447, file: !446, line: 43, baseType: !381, size: 320, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !447, file: !446, line: 44, baseType: !454, size: 64, offset: 512)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !446, line: 44, flags: DIFlagFwdDecl)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !447, file: !446, line: 48, baseType: !251, size: 64, offset: 576)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !447, file: !446, line: 59, baseType: !458, size: 256, offset: 640)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !459, line: 66, size: 256, elements: !460)
!459 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!460 = !{!461, !462, !463, !464}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !458, file: !459, line: 67, baseType: !370, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !458, file: !459, line: 68, baseType: !392, size: 32, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !458, file: !459, line: 70, baseType: !387, size: 32, offset: 96)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !458, file: !459, line: 72, baseType: !119, size: 128, offset: 128)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !447, file: !446, line: 60, baseType: !100, size: 64, offset: 896)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !447, file: !446, line: 61, baseType: !467, size: 64, offset: 960)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !469)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !470, line: 13, size: 1216, elements: !471)
!470 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!471 = !{!472, !473, !474, !475, !476, !477, !478, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !469, file: !470, line: 14, baseType: !100, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !469, file: !470, line: 15, baseType: !251, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !469, file: !470, line: 17, baseType: !251, size: 64, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !469, file: !470, line: 17, baseType: !251, size: 64, offset: 192)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !469, file: !470, line: 18, baseType: !251, size: 64, offset: 256)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !469, file: !470, line: 18, baseType: !251, size: 64, offset: 320)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !469, file: !470, line: 19, baseType: !479, size: 64, offset: 384)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !469, file: !470, line: 21, baseType: !237, size: 64, offset: 448)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !469, file: !470, line: 23, baseType: !237, size: 64, offset: 512)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !469, file: !470, line: 24, baseType: !237, size: 64, offset: 576)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !469, file: !470, line: 25, baseType: !237, size: 64, offset: 640)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !469, file: !470, line: 26, baseType: !237, size: 64, offset: 704)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !469, file: !470, line: 27, baseType: !237, size: 64, offset: 768)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !469, file: !470, line: 28, baseType: !237, size: 64, offset: 832)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !469, file: !470, line: 29, baseType: !237, size: 64, offset: 896)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !469, file: !470, line: 30, baseType: !237, size: 64, offset: 960)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !469, file: !470, line: 31, baseType: !237, size: 64, offset: 1024)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !469, file: !470, line: 32, baseType: !237, size: 64, offset: 1088)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !469, file: !470, line: 33, baseType: !237, size: 64, offset: 1152)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !447, file: !446, line: 63, baseType: !152, size: 32, offset: 1024)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !447, file: !446, line: 69, baseType: !169, size: 16, offset: 1056)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !447, file: !446, line: 70, baseType: !496, size: 16, offset: 1072)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !161, line: 18, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !163, line: 23, baseType: !498)
!498 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !320, file: !279, line: 882, baseType: !251, size: 64, offset: 9024)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !320, file: !279, line: 885, baseType: !132, size: 32, offset: 9088)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !320, file: !279, line: 886, baseType: !502, size: 64, offset: 9152)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !503, size: 64)
!503 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !279, line: 732, flags: DIFlagFwdDecl)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !320, file: !279, line: 901, baseType: !505, size: 64, offset: 9216)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !507, line: 18, flags: DIFlagFwdDecl)
!507 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!508 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !320, file: !279, line: 904, baseType: !284, size: 64, offset: 9280)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !320, file: !279, line: 906, baseType: !510, size: 64, offset: 9344)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !279, line: 906, flags: DIFlagFwdDecl)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !320, file: !279, line: 930, baseType: !152, size: 32, offset: 9408)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !320, file: !279, line: 933, baseType: !152, size: 32, offset: 9440)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !320, file: !279, line: 935, baseType: !515, size: 64, offset: 9472)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !516, line: 103, size: 64, elements: !517)
!516 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!517 = !{!518}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !515, file: !516, line: 104, baseType: !519, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !516, line: 101, flags: DIFlagFwdDecl)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !320, file: !279, line: 940, baseType: !370, size: 64, offset: 9536)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !320, file: !279, line: 942, baseType: !523, size: 256, offset: 9600)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !524, line: 98, size: 256, elements: !525)
!524 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!525 = !{!526, !527, !528}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !523, file: !524, line: 99, baseType: !370, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !523, file: !524, line: 100, baseType: !119, size: 128, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !523, file: !524, line: 101, baseType: !529, size: 64, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !524, line: 21, baseType: !530)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DISubroutineType(types: !532)
!532 = !{null, !533}
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !317, file: !279, line: 986, baseType: !535, offset: 10240)
!535 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, elements: !536)
!536 = !{!537}
!537 = !DISubrange(count: -1)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !296, file: !279, line: 640, baseType: !539, size: 64, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !286, line: 297, baseType: !540)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !286, line: 297, size: 64, elements: !541)
!541 = !{!542}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !540, file: !286, line: 297, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !356, line: 19, baseType: !251)
!544 = !DIDerivedType(tag: DW_TAG_member, scope: !296, file: !279, line: 646, baseType: !545, size: 64, offset: 256)
!545 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !296, file: !279, line: 646, size: 64, elements: !546)
!546 = !{!547, !550}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !545, file: !279, line: 647, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !549)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !279, line: 542, baseType: !251)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !545, file: !279, line: 648, baseType: !549, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !296, file: !279, line: 666, baseType: !52, size: 32, offset: 320)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !296, file: !279, line: 667, baseType: !553, size: 64, offset: 384)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !279, line: 579, size: 320, elements: !555)
!555 = !{!556}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !554, file: !279, line: 580, baseType: !381, size: 320)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !296, file: !279, line: 670, baseType: !558, size: 8, offset: 448)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !102, line: 35, baseType: !559)
!559 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !296, file: !279, line: 681, baseType: !561, size: 256, offset: 512)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !296, file: !279, line: 678, size: 256, elements: !562)
!562 = !{!563, !571}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !561, file: !279, line: 679, baseType: !564, size: 192, align: 64)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !565, line: 5, size: 192, align: 64, elements: !566)
!565 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!566 = !{!567, !568, !570}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !564, file: !565, line: 6, baseType: !251, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !564, file: !565, line: 7, baseType: !569, size: 64, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !564, file: !565, line: 8, baseType: !569, size: 64, offset: 128)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !561, file: !279, line: 680, baseType: !251, size: 64, offset: 192)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !296, file: !279, line: 689, baseType: !119, size: 128, offset: 768)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !296, file: !279, line: 691, baseType: !574, size: 64, offset: 896)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !279, line: 691, flags: DIFlagFwdDecl)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !296, file: !279, line: 694, baseType: !577, size: 64, offset: 960)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !579)
!579 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !279, line: 694, flags: DIFlagFwdDecl)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !296, file: !279, line: 697, baseType: !251, size: 64, offset: 1024)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !296, file: !279, line: 699, baseType: !284, size: 64, offset: 1088)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !296, file: !279, line: 700, baseType: !100, size: 64, offset: 1152)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !296, file: !279, line: 711, baseType: !370, size: 64, offset: 1216)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !296, file: !279, line: 717, baseType: !585, size: 64, offset: 1280)
!585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!586 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !279, line: 717, flags: DIFlagFwdDecl)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !296, file: !279, line: 722, baseType: !588, offset: 1344)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !279, line: 570, elements: !337)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !256, file: !227, line: 90, baseType: !590, size: 64, offset: 192)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !256, file: !227, line: 91, baseType: !592, size: 64, offset: 256)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !217, file: !113, line: 120, baseType: !594, size: 64, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DISubroutineType(types: !596)
!596 = !{!597, !184}
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !599)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !12, line: 39, size: 384, elements: !600)
!600 = !{!601, !602, !606, !610, !616, !620}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !599, file: !12, line: 40, baseType: !11, size: 32)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !599, file: !12, line: 41, baseType: !603, size: 64, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DISubroutineType(types: !605)
!605 = !{!558}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !599, file: !12, line: 42, baseType: !607, size: 64, offset: 128)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DISubroutineType(types: !609)
!609 = !{!100}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !599, file: !12, line: 43, baseType: !611, size: 64, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DISubroutineType(types: !613)
!613 = !{!479, !614}
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !12, line: 19, flags: DIFlagFwdDecl)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !599, file: !12, line: 44, baseType: !617, size: 64, offset: 256)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DISubroutineType(types: !619)
!619 = !{!479}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !599, file: !12, line: 45, baseType: !621, size: 64, offset: 320)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{null, !100}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !217, file: !113, line: 121, baseType: !625, size: 64, offset: 256)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!479, !184}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !217, file: !113, line: 122, baseType: !629, size: 64, offset: 320)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{null, !184, !632, !639}
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !507, line: 23, baseType: !634)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !507, line: 21, size: 32, elements: !635)
!635 = !{!636}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !634, file: !507, line: 22, baseType: !637, size: 32)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !102, line: 37, baseType: !638)
!638 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !235, line: 49, baseType: !13)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !507, line: 28, baseType: !641)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !507, line: 26, size: 32, elements: !642)
!642 = !{!643}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !641, file: !507, line: 27, baseType: !644, size: 32)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !102, line: 38, baseType: !645)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !235, line: 50, baseType: !13)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !112, file: !113, line: 70, baseType: !647, size: 64, offset: 384)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !649, line: 190, size: 1152, elements: !650)
!649 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!650 = !{!651, !652, !653, !654, !655, !656, !657, !658, !753, !754, !755, !756, !757, !760}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !648, file: !649, line: 191, baseType: !152, size: 32)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !648, file: !649, line: 192, baseType: !152, size: 32, offset: 32)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !648, file: !649, line: 202, baseType: !647, size: 64, offset: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !648, file: !649, line: 203, baseType: !116, size: 64, offset: 128)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !648, file: !649, line: 205, baseType: !564, size: 192, align: 64, offset: 192)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !648, file: !649, line: 207, baseType: !479, size: 64, offset: 384)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !648, file: !649, line: 208, baseType: !13, size: 32, offset: 448)
!658 = !DIDerivedType(tag: DW_TAG_member, scope: !648, file: !649, line: 209, baseType: !659, size: 256, offset: 512)
!659 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !648, file: !649, line: 209, size: 256, elements: !660)
!660 = !{!661, !673, !677}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !659, file: !649, line: 210, baseType: !662, size: 256)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !649, line: 153, size: 256, elements: !663)
!663 = !{!664, !665, !669, !672}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !662, file: !649, line: 154, baseType: !251, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !662, file: !649, line: 156, baseType: !666, size: 64, offset: 64)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !565, line: 12, size: 64, elements: !667)
!667 = !{!668}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !666, file: !565, line: 13, baseType: !569, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !662, file: !649, line: 162, baseType: !670, size: 64, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !649, line: 162, flags: DIFlagFwdDecl)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !662, file: !649, line: 167, baseType: !251, size: 64, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !659, file: !649, line: 211, baseType: !674, size: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !649, line: 170, size: 64, elements: !675)
!675 = !{!676}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !674, file: !649, line: 171, baseType: !647, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !659, file: !649, line: 212, baseType: !678, size: 256)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !649, line: 174, size: 256, elements: !679)
!679 = !{!680, !748, !751, !752}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !678, file: !649, line: 175, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !683)
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !649, line: 271, size: 768, elements: !684)
!684 = !{!685, !708, !712, !716, !721, !725, !729, !733, !734, !735, !736, !744}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !683, file: !649, line: 276, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!52, !689}
!689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !649, line: 251, size: 1216, elements: !691)
!691 = !{!692, !693, !694, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !690, file: !649, line: 253, baseType: !647, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !690, file: !649, line: 254, baseType: !284, size: 64, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !690, file: !649, line: 255, baseType: !695, size: 64, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !697, line: 66, flags: DIFlagFwdDecl)
!697 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!698 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !690, file: !649, line: 256, baseType: !100, size: 64, offset: 192)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !690, file: !649, line: 259, baseType: !458, size: 256, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !690, file: !649, line: 260, baseType: !458, size: 256, offset: 512)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !690, file: !649, line: 261, baseType: !52, size: 32, offset: 768)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !690, file: !649, line: 262, baseType: !119, size: 128, offset: 832)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !690, file: !649, line: 263, baseType: !201, size: 64, offset: 960)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !690, file: !649, line: 265, baseType: !248, size: 64, offset: 1024)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !690, file: !649, line: 266, baseType: !558, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !690, file: !649, line: 267, baseType: !558, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !690, file: !649, line: 268, baseType: !577, size: 64, offset: 1152)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !683, file: !649, line: 277, baseType: !709, size: 64, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DISubroutineType(types: !711)
!711 = !{null, !689}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !683, file: !649, line: 290, baseType: !713, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!52, !695, !100}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !683, file: !649, line: 292, baseType: !717, size: 64, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DISubroutineType(types: !719)
!719 = !{!100, !695, !720}
!720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !683, file: !649, line: 293, baseType: !722, size: 64, offset: 256)
!722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !723, size: 64)
!723 = !DISubroutineType(types: !724)
!724 = !{!100, !695, !100, !720}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !683, file: !649, line: 294, baseType: !726, size: 64, offset: 320)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{null, !695, !100}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !683, file: !649, line: 296, baseType: !730, size: 64, offset: 384)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DISubroutineType(types: !732)
!732 = !{!233, !689, !201, !248, !287}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !683, file: !649, line: 306, baseType: !248, size: 64, offset: 448)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !683, file: !649, line: 313, baseType: !558, size: 8, offset: 512)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !683, file: !649, line: 314, baseType: !730, size: 64, offset: 576)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !683, file: !649, line: 317, baseType: !737, size: 64, offset: 640)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{!740, !689, !742}
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !741, line: 59, baseType: !13)
!741 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !649, line: 31, flags: DIFlagFwdDecl)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !683, file: !649, line: 320, baseType: !745, size: 64, offset: 704)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!52, !689, !295}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !678, file: !649, line: 176, baseType: !749, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !649, line: 35, flags: DIFlagFwdDecl)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !678, file: !649, line: 177, baseType: !287, size: 64, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !678, file: !649, line: 178, baseType: !647, size: 64, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !648, file: !649, line: 215, baseType: !100, size: 64, offset: 768)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !648, file: !649, line: 221, baseType: !364, size: 64, offset: 832)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !648, file: !649, line: 223, baseType: !171, size: 16, offset: 896)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !648, file: !649, line: 224, baseType: !243, size: 16, offset: 912)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !648, file: !649, line: 225, baseType: !758, size: 64, offset: 960)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !649, line: 36, flags: DIFlagFwdDecl)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !648, file: !649, line: 227, baseType: !307, size: 128, align: 64, offset: 1024)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !112, file: !113, line: 71, baseType: !762, size: 32, offset: 448)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !763, line: 19, size: 32, elements: !764)
!763 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!764 = !{!765}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !762, file: !763, line: 20, baseType: !766, size: 32)
!766 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !767, line: 113, baseType: !768)
!767 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !767, line: 111, size: 32, elements: !769)
!769 = !{!770}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !768, file: !767, line: 112, baseType: !152, size: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !112, file: !113, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !112, file: !113, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !112, file: !113, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !112, file: !113, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !112, file: !113, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !109, file: !32, line: 707, baseType: !777, size: 64, offset: 512)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !109, file: !32, line: 709, baseType: !779, size: 64, offset: 576)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !32, line: 37, flags: DIFlagFwdDecl)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !109, file: !32, line: 711, baseType: !116, size: 64, offset: 640)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !109, file: !32, line: 712, baseType: !783, size: 64, offset: 704)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !785)
!785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !32, line: 89, size: 384, elements: !786)
!786 = !{!787, !788, !789, !795, !800, !804}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !785, file: !32, line: 90, baseType: !116, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !785, file: !32, line: 91, baseType: !253, size: 64, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !785, file: !32, line: 92, baseType: !790, size: 64, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = !DISubroutineType(types: !792)
!792 = !{!52, !793, !196}
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !785, file: !32, line: 93, baseType: !796, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !797, size: 64)
!797 = !DISubroutineType(types: !798)
!798 = !{!201, !793, !799, !632, !639}
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !785, file: !32, line: 95, baseType: !801, size: 64, offset: 256)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{null, !777}
!804 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !785, file: !32, line: 97, baseType: !805, size: 64, offset: 320)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !807)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !44, line: 286, size: 1472, elements: !808)
!808 = !{!809, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !831, !832, !833, !834}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !807, file: !44, line: 287, baseType: !810, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{!52, !777}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !807, file: !44, line: 288, baseType: !801, size: 64, offset: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !807, file: !44, line: 289, baseType: !810, size: 64, offset: 128)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !807, file: !44, line: 290, baseType: !810, size: 64, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !807, file: !44, line: 291, baseType: !810, size: 64, offset: 256)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !807, file: !44, line: 292, baseType: !810, size: 64, offset: 320)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !807, file: !44, line: 293, baseType: !810, size: 64, offset: 384)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !807, file: !44, line: 294, baseType: !810, size: 64, offset: 448)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !807, file: !44, line: 295, baseType: !810, size: 64, offset: 512)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !807, file: !44, line: 296, baseType: !810, size: 64, offset: 576)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !807, file: !44, line: 297, baseType: !810, size: 64, offset: 640)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !807, file: !44, line: 298, baseType: !810, size: 64, offset: 704)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !807, file: !44, line: 299, baseType: !810, size: 64, offset: 768)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !807, file: !44, line: 300, baseType: !810, size: 64, offset: 832)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !807, file: !44, line: 301, baseType: !810, size: 64, offset: 896)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !807, file: !44, line: 302, baseType: !810, size: 64, offset: 960)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !807, file: !44, line: 303, baseType: !810, size: 64, offset: 1024)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !807, file: !44, line: 304, baseType: !810, size: 64, offset: 1088)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !807, file: !44, line: 305, baseType: !810, size: 64, offset: 1152)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !807, file: !44, line: 306, baseType: !810, size: 64, offset: 1216)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !807, file: !44, line: 307, baseType: !810, size: 64, offset: 1280)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !807, file: !44, line: 308, baseType: !810, size: 64, offset: 1344)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !807, file: !44, line: 309, baseType: !810, size: 64, offset: 1408)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !109, file: !32, line: 714, baseType: !836, size: 64, offset: 768)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !838)
!838 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !839, line: 80, size: 1344, elements: !840)
!839 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!840 = !{!841, !842, !843, !844, !845, !846, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1302}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !838, file: !839, line: 81, baseType: !116, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !838, file: !839, line: 82, baseType: !116, size: 64, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !838, file: !839, line: 83, baseType: !253, size: 64, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !838, file: !839, line: 84, baseType: !253, size: 64, offset: 192)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !838, file: !839, line: 85, baseType: !253, size: 64, offset: 256)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !838, file: !839, line: 87, baseType: !847, size: 64, offset: 320)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{!52, !777, !850}
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !26, line: 96, size: 1152, elements: !852)
!852 = !{!853, !854, !855, !1233, !1234, !1235, !1236, !1252, !1265, !1266, !1267, !1268, !1269, !1277, !1278, !1279, !1280, !1281, !1282}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !851, file: !26, line: 97, baseType: !116, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !851, file: !26, line: 98, baseType: !836, size: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !851, file: !26, line: 100, baseType: !856, size: 64, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !19, line: 402, size: 9216, align: 512, elements: !858)
!858 = !{!859, !860, !861, !865, !886, !912, !913, !914, !915, !919, !922, !923, !924, !977, !978, !979, !980, !981, !982, !983, !984, !987, !991, !1011, !1029, !1030, !1031, !1032, !1041, !1065, !1066, !1069, !1072, !1073, !1074, !1075, !1076, !1077, !1078, !1083, !1084, !1191, !1199, !1200, !1201, !1203, !1207, !1208, !1212, !1213, !1214, !1215, !1217, !1218, !1219, !1226, !1227, !1228, !1232}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !857, file: !19, line: 403, baseType: !18, size: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !857, file: !19, line: 406, baseType: !119, size: 128, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !857, file: !19, line: 409, baseType: !862, size: 448, offset: 192)
!862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !863)
!863 = !{!864}
!864 = !DISubrange(count: 56)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !857, file: !19, line: 417, baseType: !866, size: 768, offset: 640)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !19, line: 45, size: 768, elements: !867)
!867 = !{!868, !869, !870, !871, !874}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !866, file: !19, line: 46, baseType: !112, size: 512)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !866, file: !19, line: 47, baseType: !856, size: 64, offset: 512)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !866, file: !19, line: 48, baseType: !125, size: 64, offset: 576)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !866, file: !19, line: 49, baseType: !872, size: 64, offset: 640)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !19, line: 49, flags: DIFlagFwdDecl)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !866, file: !19, line: 50, baseType: !875, size: 64, offset: 704)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !877, line: 26, size: 256, elements: !878)
!877 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!878 = !{!879, !880}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !876, file: !877, line: 27, baseType: !13, size: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !876, file: !877, line: 28, baseType: !881, size: 192, offset: 64)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !882, line: 43, size: 192, elements: !883)
!882 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!883 = !{!884, !885}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !881, file: !882, line: 44, baseType: !392, size: 32)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !881, file: !882, line: 45, baseType: !119, size: 128, offset: 64)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !857, file: !19, line: 418, baseType: !887, size: 64, offset: 1408)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !19, line: 53, size: 448, elements: !889)
!889 = !{!890, !891, !896, !900, !904, !908}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !888, file: !19, line: 54, baseType: !239, size: 128)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !888, file: !19, line: 55, baseType: !892, size: 64, offset: 128)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{!233, !887, !895, !201}
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !888, file: !19, line: 57, baseType: !897, size: 64, offset: 192)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DISubroutineType(types: !899)
!899 = !{!233, !887, !895, !116, !248}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !888, file: !19, line: 59, baseType: !901, size: 64, offset: 256)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{null, !856, !116}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !888, file: !19, line: 60, baseType: !905, size: 64, offset: 320)
!905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!906 = !DISubroutineType(types: !907)
!907 = !{!52, !856}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !888, file: !19, line: 61, baseType: !909, size: 64, offset: 384)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DISubroutineType(types: !911)
!911 = !{null, !856}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !857, file: !19, line: 419, baseType: !116, size: 64, offset: 1472)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !857, file: !19, line: 420, baseType: !116, size: 64, offset: 1536)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !857, file: !19, line: 421, baseType: !125, size: 64, offset: 1600)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !857, file: !19, line: 424, baseType: !916, size: 64, offset: 1664)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !918)
!918 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !19, line: 424, flags: DIFlagFwdDecl)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !857, file: !19, line: 425, baseType: !920, size: 64, offset: 1728)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !437)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !857, file: !19, line: 426, baseType: !13, size: 32, offset: 1792)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !857, file: !19, line: 435, baseType: !458, size: 256, offset: 1856)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !857, file: !19, line: 437, baseType: !925, size: 64, offset: 2112)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !927, line: 69, size: 320, elements: !928)
!927 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!928 = !{!929, !930, !931, !948, !950, !954, !955}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !926, file: !927, line: 70, baseType: !116, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !926, file: !927, line: 71, baseType: !856, size: 64, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !926, file: !927, line: 72, baseType: !932, size: 64, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !934)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !927, line: 47, size: 256, elements: !935)
!935 = !{!936, !937, !943, !947}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !934, file: !927, line: 49, baseType: !13, size: 32)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !934, file: !927, line: 51, baseType: !938, size: 64, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!52, !116, !941}
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !926)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !934, file: !927, line: 53, baseType: !944, size: 64, offset: 128)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DISubroutineType(types: !946)
!946 = !{!52, !201, !941}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !934, file: !927, line: 55, baseType: !621, size: 64, offset: 192)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !926, file: !927, line: 73, baseType: !949, size: 16, offset: 192)
!949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !926, file: !927, line: 74, baseType: !951, size: 8, offset: 208)
!951 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !161, line: 16, baseType: !952)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !163, line: 20, baseType: !953)
!953 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !926, file: !927, line: 75, baseType: !160, size: 8, offset: 216)
!955 = !DIDerivedType(tag: DW_TAG_member, scope: !926, file: !927, line: 76, baseType: !956, size: 64, offset: 256)
!956 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !926, file: !927, line: 76, size: 64, elements: !957)
!957 = !{!958, !959, !966}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !956, file: !927, line: 77, baseType: !100, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !956, file: !927, line: 78, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !962)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !927, line: 86, size: 128, elements: !963)
!963 = !{!964, !965}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !962, file: !927, line: 87, baseType: !13, size: 32)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !962, file: !927, line: 88, baseType: !201, size: 64, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !956, file: !927, line: 79, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !969)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !927, line: 92, size: 256, elements: !970)
!970 = !{!971, !972, !973, !975, !976}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !969, file: !927, line: 94, baseType: !13, size: 32)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !969, file: !927, line: 95, baseType: !13, size: 32, offset: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !969, file: !927, line: 96, baseType: !974, size: 64, offset: 64)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !969, file: !927, line: 97, baseType: !932, size: 64, offset: 128)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !969, file: !927, line: 98, baseType: !100, size: 64, offset: 192)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !857, file: !19, line: 438, baseType: !13, size: 32, offset: 2176)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !857, file: !19, line: 441, baseType: !13, size: 32, offset: 2208)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !857, file: !19, line: 442, baseType: !916, size: 64, offset: 2240)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !857, file: !19, line: 443, baseType: !920, size: 64, offset: 2304)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !857, file: !19, line: 444, baseType: !558, size: 8, offset: 2368)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !857, file: !19, line: 451, baseType: !558, size: 8, offset: 2376)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !857, file: !19, line: 454, baseType: !13, size: 32, offset: 2400)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !857, file: !19, line: 455, baseType: !985, size: 64, offset: 2432)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !19, line: 43, flags: DIFlagFwdDecl)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !857, file: !19, line: 458, baseType: !988, size: 64, offset: 2496)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DISubroutineType(types: !990)
!990 = !{!52}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !857, file: !19, line: 460, baseType: !992, size: 4032, align: 512, offset: 2560)
!992 = !DICompositeType(tag: DW_TAG_array_type, baseType: !993, size: 4032, elements: !1009)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !19, line: 362, size: 576, elements: !994)
!994 = !{!995, !996, !997}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !993, file: !19, line: 363, baseType: !100, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !993, file: !19, line: 364, baseType: !13, size: 32, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !993, file: !19, line: 367, baseType: !998, size: 448, offset: 128)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !19, line: 319, size: 448, elements: !999)
!999 = !{!1000, !1001}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !998, file: !19, line: 320, baseType: !856, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !998, file: !19, line: 321, baseType: !1002, size: 384, offset: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1003, line: 40, size: 384, elements: !1004)
!1003 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1004 = !{!1005}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1002, file: !1003, line: 41, baseType: !1006, size: 384, align: 64)
!1006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !564, size: 384, align: 64, elements: !1007)
!1007 = !{!1008}
!1008 = !DISubrange(count: 2)
!1009 = !{!1010}
!1010 = !DISubrange(count: 7)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !857, file: !19, line: 463, baseType: !1012, size: 192, offset: 6592)
!1012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1013, line: 8, size: 192, elements: !1014)
!1013 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1014 = !{!1015, !1016, !1018}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1012, file: !1013, line: 10, baseType: !13, size: 32)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1012, file: !1013, line: 11, baseType: !1017, size: 64, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1012, file: !1013, line: 12, baseType: !1019, size: 64, offset: 128)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1021, line: 59, size: 48, elements: !1022)
!1021 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1022 = !{!1023, !1024, !1025, !1026, !1027, !1028}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1020, file: !1021, line: 60, baseType: !496, size: 16)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1020, file: !1021, line: 61, baseType: !496, size: 16, offset: 16)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1020, file: !1021, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1020, file: !1021, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1020, file: !1021, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1020, file: !1021, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !857, file: !19, line: 465, baseType: !251, size: 64, offset: 6784)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !857, file: !19, line: 469, baseType: !13, size: 32, offset: 6848)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !857, file: !19, line: 470, baseType: !119, size: 128, offset: 6912)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !857, file: !19, line: 471, baseType: !1033, size: 64, offset: 7040)
!1033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1034, size: 64)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1035, line: 33, size: 96, elements: !1036)
!1035 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1036 = !{!1037, !1038, !1039, !1040}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1034, file: !1035, line: 37, baseType: !52, size: 32)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1034, file: !1035, line: 43, baseType: !52, size: 32, offset: 32)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1034, file: !1035, line: 45, baseType: !171, size: 16, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1034, file: !1035, line: 47, baseType: !171, size: 16, offset: 80)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !857, file: !19, line: 476, baseType: !1042, size: 64, offset: 7104)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !19, line: 378, size: 256, elements: !1044)
!1044 = !{!1045, !1062, !1063, !1064}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1043, file: !19, line: 379, baseType: !1046, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1048, line: 204, baseType: !1049)
!1048 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1048, line: 197, size: 192, elements: !1050)
!1050 = !{!1051, !1054, !1055, !1056, !1058, !1060}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1049, file: !1048, line: 198, baseType: !1052, size: 32)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1048, line: 21, baseType: !1053)
!1053 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !163, line: 27, baseType: !13)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1049, file: !1048, line: 199, baseType: !103, size: 8, offset: 32)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1049, file: !1048, line: 200, baseType: !103, size: 8, offset: 40)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1049, file: !1048, line: 201, baseType: !1057, size: 16, offset: 48)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1048, line: 17, baseType: !170)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1049, file: !1048, line: 202, baseType: !1059, size: 64, offset: 64)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1048, line: 16, baseType: !365)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1049, file: !1048, line: 203, baseType: !1061, size: 64, offset: 128)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1048, line: 22, baseType: !365)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1043, file: !19, line: 380, baseType: !13, size: 32, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1043, file: !19, line: 381, baseType: !201, size: 64, offset: 128)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1043, file: !19, line: 382, baseType: !201, size: 64, offset: 192)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !857, file: !19, line: 477, baseType: !1043, size: 256, offset: 7168)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !857, file: !19, line: 480, baseType: !1067, size: 64, offset: 7424)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !19, line: 480, flags: DIFlagFwdDecl)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !857, file: !19, line: 483, baseType: !1070, size: 64, offset: 7488)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !19, line: 483, flags: DIFlagFwdDecl)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !857, file: !19, line: 488, baseType: !201, size: 64, offset: 7552)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !857, file: !19, line: 492, baseType: !100, size: 64, offset: 7616)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !857, file: !19, line: 493, baseType: !13, size: 32, offset: 7680)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !857, file: !19, line: 495, baseType: !100, size: 64, offset: 7744)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !857, file: !19, line: 496, baseType: !13, size: 32, offset: 7808)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !857, file: !19, line: 499, baseType: !13, size: 32, offset: 7840)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !857, file: !19, line: 500, baseType: !1079, size: 64, offset: 7872)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1081, line: 45, baseType: !1082)
!1081 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !857, file: !19, line: 503, baseType: !13, size: 32, offset: 7936)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !857, file: !19, line: 504, baseType: !1085, size: 64, offset: 8000)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1088, line: 96, size: 192, elements: !1089)
!1088 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1089 = !{!1090, !1091, !1152, !1155}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1087, file: !1088, line: 97, baseType: !13, size: 32)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1087, file: !1088, line: 98, baseType: !1092, size: 64, offset: 64)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1088, line: 24, size: 3072, elements: !1094)
!1094 = !{!1095, !1097, !1098, !1099, !1100, !1114, !1115, !1116, !1117, !1136, !1137, !1138, !1149, !1150, !1151}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1093, file: !1088, line: 26, baseType: !1096, size: 128)
!1096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !370, size: 128, elements: !1007)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1093, file: !1088, line: 27, baseType: !1096, size: 128, offset: 128)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1093, file: !1088, line: 28, baseType: !52, size: 32, offset: 256)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1093, file: !1088, line: 31, baseType: !132, size: 32, align: 512, offset: 512)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1093, file: !1088, line: 32, baseType: !1101, size: 960, offset: 576)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1102, line: 206, size: 960, elements: !1103)
!1102 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1103 = !{!1104, !1105, !1108, !1110, !1111, !1113}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1101, file: !1102, line: 207, baseType: !310, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1101, file: !1102, line: 208, baseType: !1106, size: 256, offset: 64)
!1106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1107, size: 256, elements: !439)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1101, file: !1102, line: 209, baseType: !1109, size: 256, offset: 320)
!1109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 256, elements: !439)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1101, file: !1102, line: 213, baseType: !237, size: 64, offset: 576)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1101, file: !1102, line: 215, baseType: !1112, size: 256, offset: 640)
!1112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !237, size: 256, elements: !439)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1101, file: !1102, line: 216, baseType: !160, size: 8, offset: 896)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1093, file: !1088, line: 33, baseType: !251, size: 64, offset: 1536)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1093, file: !1088, line: 34, baseType: !251, size: 64, offset: 1600)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1093, file: !1088, line: 35, baseType: !558, size: 8, offset: 1664)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1093, file: !1088, line: 36, baseType: !1118, size: 320, offset: 1728)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1119, line: 11, size: 320, elements: !1120)
!1119 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1120 = !{!1121, !1128, !1129, !1134}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1118, file: !1119, line: 16, baseType: !1122, size: 128)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !102, line: 198, size: 128, elements: !1123)
!1123 = !{!1124, !1126}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1122, file: !102, line: 199, baseType: !1125, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1122, file: !102, line: 199, baseType: !1127, size: 64, offset: 64)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1118, file: !1119, line: 17, baseType: !251, size: 64, offset: 128)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1118, file: !1119, line: 18, baseType: !1130, size: 64, offset: 192)
!1130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1131, size: 64)
!1131 = !DISubroutineType(types: !1132)
!1132 = !{null, !1133}
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1118, file: !1119, line: 19, baseType: !1135, size: 32, offset: 256)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !161, line: 21, baseType: !1053)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1093, file: !1088, line: 37, baseType: !523, size: 256, offset: 2048)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1093, file: !1088, line: 38, baseType: !307, size: 128, align: 64, offset: 2304)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1093, file: !1088, line: 39, baseType: !1139, size: 64, offset: 2432)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1088, line: 49, size: 768, elements: !1141)
!1141 = !{!1142, !1143, !1144, !1145, !1146, !1147, !1148}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1140, file: !1088, line: 50, baseType: !132, size: 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1140, file: !1088, line: 51, baseType: !1109, size: 256, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1140, file: !1088, line: 53, baseType: !1109, size: 256, offset: 320)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1140, file: !1088, line: 54, baseType: !251, size: 64, offset: 576)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1140, file: !1088, line: 55, baseType: !1139, size: 64, offset: 640)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1140, file: !1088, line: 56, baseType: !52, size: 32, offset: 704)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1140, file: !1088, line: 57, baseType: !52, size: 32, offset: 736)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1093, file: !1088, line: 40, baseType: !251, size: 64, offset: 2496)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1093, file: !1088, line: 42, baseType: !52, size: 32, offset: 2560)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1093, file: !1088, line: 43, baseType: !1086, size: 64, offset: 2624)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1087, file: !1088, line: 99, baseType: !1153, offset: 128)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1154, line: 211, elements: !337)
!1154 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1087, file: !1088, line: 100, baseType: !1156, size: 64, offset: 128)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1088, line: 63, size: 3008, elements: !1158)
!1158 = !{!1159, !1160, !1162, !1163, !1164, !1165, !1166, !1167, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1190}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1157, file: !1088, line: 64, baseType: !1139, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1157, file: !1088, line: 65, baseType: !1161, size: 192, offset: 64)
!1161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1139, size: 192, elements: !202)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1157, file: !1088, line: 67, baseType: !52, size: 32, offset: 256)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1157, file: !1088, line: 68, baseType: !458, size: 256, offset: 320)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1157, file: !1088, line: 69, baseType: !132, size: 32, offset: 576)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1157, file: !1088, line: 70, baseType: !458, size: 256, offset: 640)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1157, file: !1088, line: 71, baseType: !251, size: 64, offset: 896)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1157, file: !1088, line: 72, baseType: !251, size: 64, offset: 960)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1157, file: !1088, line: 73, baseType: !251, size: 64, offset: 1024)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1157, file: !1088, line: 74, baseType: !251, size: 64, offset: 1088)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1157, file: !1088, line: 75, baseType: !251, size: 64, offset: 1152)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1157, file: !1088, line: 76, baseType: !251, size: 64, offset: 1216)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1157, file: !1088, line: 77, baseType: !251, size: 64, offset: 1280)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1157, file: !1088, line: 78, baseType: !251, size: 64, offset: 1344)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1157, file: !1088, line: 79, baseType: !558, size: 8, offset: 1408)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1157, file: !1088, line: 80, baseType: !251, size: 64, offset: 1472)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1157, file: !1088, line: 81, baseType: !458, size: 256, offset: 1536)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1157, file: !1088, line: 82, baseType: !876, size: 256, offset: 1792)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1157, file: !1088, line: 84, baseType: !152, size: 32, offset: 2048)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1157, file: !1088, line: 87, baseType: !251, size: 64, offset: 2112)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1157, file: !1088, line: 88, baseType: !251, size: 64, offset: 2176)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1157, file: !1088, line: 89, baseType: !1182, size: 704, offset: 2240)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !524, line: 111, size: 704, elements: !1183)
!1183 = !{!1184, !1185, !1186, !1189}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1182, file: !524, line: 112, baseType: !523, size: 256)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1182, file: !524, line: 113, baseType: !1118, size: 320, offset: 256)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1182, file: !524, line: 116, baseType: !1187, size: 64, offset: 576)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !524, line: 18, flags: DIFlagFwdDecl)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1182, file: !524, line: 117, baseType: !52, size: 32, offset: 640)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1157, file: !1088, line: 90, baseType: !1086, size: 64, offset: 2944)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !857, file: !19, line: 515, baseType: !1192, size: 64, offset: 8064)
!1192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1193, size: 64)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1194, line: 117, size: 128, elements: !1195)
!1194 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1195 = !{!1196, !1197, !1198}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1193, file: !1194, line: 118, baseType: !437, size: 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1193, file: !1194, line: 119, baseType: !437, size: 32, offset: 32)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1193, file: !1194, line: 120, baseType: !237, size: 64, offset: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !857, file: !19, line: 516, baseType: !13, size: 32, offset: 8128)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !857, file: !19, line: 519, baseType: !13, size: 32, offset: 8160)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !857, file: !19, line: 520, baseType: !1202, size: 64, offset: 8192)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !857, file: !19, line: 523, baseType: !1204, size: 64, offset: 8256)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !19, line: 523, flags: DIFlagFwdDecl)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !857, file: !19, line: 524, baseType: !13, size: 32, offset: 8320)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !857, file: !19, line: 525, baseType: !1209, size: 64, offset: 8384)
!1209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1210, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !19, line: 525, flags: DIFlagFwdDecl)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !857, file: !19, line: 526, baseType: !13, size: 32, offset: 8448)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !857, file: !19, line: 533, baseType: !100, size: 64, offset: 8512)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !857, file: !19, line: 534, baseType: !13, size: 32, offset: 8576)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !857, file: !19, line: 535, baseType: !1216, size: 64, offset: 8640)
!1216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !857, file: !19, line: 536, baseType: !13, size: 32, offset: 8704)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !857, file: !19, line: 539, baseType: !52, size: 32, offset: 8736)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !857, file: !19, line: 540, baseType: !1220, size: 64, offset: 8768)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1222, line: 32, size: 64, elements: !1223)
!1222 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1223 = !{!1224, !1225}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1221, file: !1222, line: 33, baseType: !437, size: 32)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1221, file: !1222, line: 34, baseType: !437, size: 32, offset: 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !857, file: !19, line: 563, baseType: !119, size: 128, offset: 8832)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !857, file: !19, line: 565, baseType: !119, size: 128, offset: 8960)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !857, file: !19, line: 568, baseType: !1229, size: 64, offset: 9088)
!1229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1230, size: 64)
!1230 = !DISubroutineType(types: !1231)
!1231 = !{null}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !857, file: !19, line: 570, baseType: !152, size: 32, offset: 9152)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !851, file: !26, line: 101, baseType: !116, size: 64, offset: 192)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !851, file: !26, line: 103, baseType: !558, size: 8, offset: 256)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !851, file: !26, line: 104, baseType: !25, size: 32, offset: 288)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !851, file: !26, line: 106, baseType: !1237, size: 64, offset: 320)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1239)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1240, line: 282, size: 1600, elements: !1241)
!1240 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1241 = !{!1242, !1246, !1247, !1251}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1239, file: !1240, line: 283, baseType: !1243, size: 256)
!1243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !1244)
!1244 = !{!1245}
!1245 = !DISubrange(count: 32)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1239, file: !1240, line: 284, baseType: !1243, size: 256, offset: 256)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1239, file: !1240, line: 285, baseType: !1248, size: 1024, offset: 512)
!1248 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !1249)
!1249 = !{!1250}
!1250 = !DISubrange(count: 128)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1239, file: !1240, line: 286, baseType: !479, size: 64, offset: 1536)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !851, file: !26, line: 107, baseType: !1253, size: 64, offset: 384)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1255)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1240, line: 217, size: 256, elements: !1256)
!1256 = !{!1257, !1261, !1263, !1264}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1255, file: !1240, line: 218, baseType: !1258, size: 128)
!1258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 128, elements: !1259)
!1259 = !{!1260}
!1260 = !DISubrange(count: 16)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1255, file: !1240, line: 219, baseType: !1262, size: 64, offset: 128)
!1262 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1240, line: 15, baseType: !251)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1255, file: !1240, line: 220, baseType: !1053, size: 32, offset: 192)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1255, file: !1240, line: 221, baseType: !1053, size: 32, offset: 224)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !851, file: !26, line: 109, baseType: !810, size: 64, offset: 448)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !851, file: !26, line: 110, baseType: !801, size: 64, offset: 512)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !851, file: !26, line: 111, baseType: !810, size: 64, offset: 576)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !851, file: !26, line: 112, baseType: !801, size: 64, offset: 640)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !851, file: !26, line: 113, baseType: !1270, size: 64, offset: 704)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = !DISubroutineType(types: !1272)
!1272 = !{!52, !777, !1273}
!1273 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !44, line: 60, baseType: !1274)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !44, line: 58, size: 32, elements: !1275)
!1275 = !{!1276}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1274, file: !44, line: 59, baseType: !52, size: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !851, file: !26, line: 114, baseType: !810, size: 64, offset: 768)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !851, file: !26, line: 115, baseType: !253, size: 64, offset: 832)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !851, file: !26, line: 116, baseType: !253, size: 64, offset: 896)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !851, file: !26, line: 118, baseType: !805, size: 64, offset: 960)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !851, file: !26, line: 119, baseType: !801, size: 64, offset: 1024)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !851, file: !26, line: 121, baseType: !1283, size: 64, offset: 1088)
!1283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1284, size: 64)
!1284 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !26, line: 121, flags: DIFlagFwdDecl)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !838, file: !839, line: 88, baseType: !790, size: 64, offset: 384)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !838, file: !839, line: 89, baseType: !810, size: 64, offset: 448)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !838, file: !839, line: 90, baseType: !801, size: 64, offset: 512)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !838, file: !839, line: 91, baseType: !801, size: 64, offset: 576)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !838, file: !839, line: 92, baseType: !801, size: 64, offset: 640)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !838, file: !839, line: 94, baseType: !810, size: 64, offset: 704)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !838, file: !839, line: 95, baseType: !810, size: 64, offset: 768)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !838, file: !839, line: 97, baseType: !1270, size: 64, offset: 832)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !838, file: !839, line: 98, baseType: !810, size: 64, offset: 896)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !838, file: !839, line: 100, baseType: !810, size: 64, offset: 960)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !838, file: !839, line: 102, baseType: !810, size: 64, offset: 1024)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !838, file: !839, line: 103, baseType: !801, size: 64, offset: 1088)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !838, file: !839, line: 105, baseType: !805, size: 64, offset: 1152)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !838, file: !839, line: 107, baseType: !1299, size: 64, offset: 1216)
!1299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1300, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1301)
!1301 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !839, line: 107, flags: DIFlagFwdDecl)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !838, file: !839, line: 109, baseType: !558, size: 8, offset: 1280)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !109, file: !32, line: 715, baseType: !850, size: 64, offset: 832)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !109, file: !32, line: 717, baseType: !100, size: 64, offset: 896)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !109, file: !32, line: 719, baseType: !100, size: 64, offset: 960)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !109, file: !32, line: 721, baseType: !458, size: 256, offset: 1024)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !109, file: !32, line: 725, baseType: !1308, size: 448, offset: 1280)
!1308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !32, line: 517, size: 448, elements: !1309)
!1309 = !{!1310, !1311, !1312, !1313}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1308, file: !32, line: 518, baseType: !119, size: 128)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1308, file: !32, line: 519, baseType: !119, size: 128, offset: 128)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1308, file: !32, line: 520, baseType: !119, size: 128, offset: 256)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1308, file: !32, line: 521, baseType: !31, size: 32, offset: 384)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !109, file: !32, line: 726, baseType: !1315, size: 2496, offset: 1728)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !44, line: 663, size: 2496, elements: !1316)
!1316 = !{!1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1361, !1362, !1363, !1364, !1365, !1366, !1435, !1436, !1437, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1475, !1479}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1315, file: !44, line: 664, baseType: !1273, size: 32)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1315, file: !44, line: 665, baseType: !13, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1315, file: !44, line: 666, baseType: !13, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1315, file: !44, line: 667, baseType: !558, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1315, file: !44, line: 668, baseType: !558, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1315, file: !44, line: 669, baseType: !558, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1315, file: !44, line: 670, baseType: !558, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1315, file: !44, line: 671, baseType: !558, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1315, file: !44, line: 672, baseType: !558, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1315, file: !44, line: 673, baseType: !558, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1315, file: !44, line: 674, baseType: !558, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1315, file: !44, line: 675, baseType: !1135, size: 32, offset: 64)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1315, file: !44, line: 676, baseType: !132, size: 32, offset: 96)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1315, file: !44, line: 678, baseType: !119, size: 128, offset: 128)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1315, file: !44, line: 679, baseType: !876, size: 256, offset: 256)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1315, file: !44, line: 680, baseType: !1333, size: 64, offset: 512)
!1333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1334, size: 64)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1335, line: 43, size: 1536, elements: !1336)
!1335 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1336 = !{!1337, !1338, !1339, !1340, !1341, !1344, !1345, !1346, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1334, file: !1335, line: 44, baseType: !116, size: 64)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1334, file: !1335, line: 45, baseType: !52, size: 32, offset: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1334, file: !1335, line: 46, baseType: !119, size: 128, offset: 128)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1334, file: !1335, line: 47, baseType: !132, size: 32, offset: 256)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1334, file: !1335, line: 48, baseType: !1342, size: 64, offset: 320)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !44, line: 629, flags: DIFlagFwdDecl)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1334, file: !1335, line: 49, baseType: !1118, size: 320, offset: 384)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1334, file: !1335, line: 50, baseType: !251, size: 64, offset: 704)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1334, file: !1335, line: 51, baseType: !1347, size: 64, offset: 768)
!1347 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1348, line: 29, baseType: !376)
!1348 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1334, file: !1335, line: 52, baseType: !1347, size: 64, offset: 832)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1334, file: !1335, line: 53, baseType: !1347, size: 64, offset: 896)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1334, file: !1335, line: 54, baseType: !1347, size: 64, offset: 960)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1334, file: !1335, line: 55, baseType: !1347, size: 64, offset: 1024)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1334, file: !1335, line: 56, baseType: !251, size: 64, offset: 1088)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1334, file: !1335, line: 57, baseType: !251, size: 64, offset: 1152)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1334, file: !1335, line: 58, baseType: !251, size: 64, offset: 1216)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1334, file: !1335, line: 59, baseType: !251, size: 64, offset: 1280)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1334, file: !1335, line: 60, baseType: !251, size: 64, offset: 1344)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1334, file: !1335, line: 61, baseType: !777, size: 64, offset: 1408)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1334, file: !1335, line: 62, baseType: !558, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1334, file: !1335, line: 63, baseType: !558, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1315, file: !44, line: 681, baseType: !558, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1315, file: !44, line: 682, baseType: !558, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1315, file: !44, line: 683, baseType: !558, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1315, file: !44, line: 684, baseType: !13, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1315, file: !44, line: 685, baseType: !13, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1315, file: !44, line: 690, baseType: !1367, size: 512, offset: 640)
!1367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !39, line: 118, size: 512, elements: !1368)
!1368 = !{!1369, !1375, !1376, !1381, !1431, !1432, !1433, !1434}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1367, file: !39, line: 119, baseType: !1370, size: 256)
!1370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1371, line: 9, size: 256, elements: !1372)
!1371 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1372 = !{!1373, !1374}
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1370, file: !1371, line: 10, baseType: !564, size: 192, align: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1370, file: !1371, line: 11, baseType: !1347, size: 64, offset: 192)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1367, file: !39, line: 120, baseType: !1347, size: 64, offset: 256)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1367, file: !39, line: 121, baseType: !1377, size: 64, offset: 320)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DISubroutineType(types: !1379)
!1379 = !{!38, !1380}
!1380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1367, file: !39, line: 122, baseType: !1382, size: 64, offset: 384)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !39, line: 159, size: 512, align: 512, elements: !1384)
!1384 = !{!1385, !1408, !1409, !1412, !1417, !1418, !1426, !1430}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1383, file: !39, line: 160, baseType: !1386, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !39, line: 215, size: 4608, align: 512, elements: !1388)
!1388 = !{!1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405, !1406}
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1387, file: !39, line: 216, baseType: !392, size: 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1387, file: !39, line: 217, baseType: !13, size: 32, offset: 32)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1387, file: !39, line: 218, baseType: !13, size: 32, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1387, file: !39, line: 219, baseType: !13, size: 32, offset: 96)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1387, file: !39, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1387, file: !39, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1387, file: !39, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1387, file: !39, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1387, file: !39, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1387, file: !39, line: 226, baseType: !13, size: 32, offset: 160)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1387, file: !39, line: 227, baseType: !171, size: 16, offset: 192)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1387, file: !39, line: 228, baseType: !171, size: 16, offset: 208)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1387, file: !39, line: 229, baseType: !13, size: 32, offset: 224)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1387, file: !39, line: 235, baseType: !1347, size: 64, offset: 256)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1387, file: !39, line: 236, baseType: !1380, size: 64, offset: 320)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1387, file: !39, line: 237, baseType: !1347, size: 64, offset: 384)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1387, file: !39, line: 238, baseType: !1380, size: 64, offset: 448)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1387, file: !39, line: 239, baseType: !1407, size: 4096, align: 512, offset: 512)
!1407 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1383, size: 4096, align: 512, elements: !5)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1383, file: !39, line: 161, baseType: !13, size: 32, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1383, file: !39, line: 162, baseType: !1410, size: 32, offset: 96)
!1410 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !102, line: 32, baseType: !1411)
!1411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !235, line: 96, baseType: !52)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1383, file: !39, line: 163, baseType: !1413, size: 32, offset: 128)
!1413 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !407, line: 274, baseType: !1414)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !407, line: 274, size: 32, elements: !1415)
!1415 = !{!1416}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1414, file: !407, line: 274, baseType: !406, size: 32)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1383, file: !39, line: 164, baseType: !1380, size: 64, offset: 192)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1383, file: !39, line: 165, baseType: !1419, size: 128, offset: 256)
!1419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1371, line: 14, size: 128, elements: !1420)
!1420 = !{!1421}
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1419, file: !1371, line: 15, baseType: !1422, size: 128)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !565, line: 26, size: 128, elements: !1423)
!1423 = !{!1424, !1425}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1422, file: !565, line: 27, baseType: !666, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1422, file: !565, line: 28, baseType: !569, size: 64, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1383, file: !39, line: 166, baseType: !1427, size: 64, offset: 384)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DISubroutineType(types: !1429)
!1429 = !{!1347}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1383, file: !39, line: 167, baseType: !1347, size: 64, offset: 448)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1367, file: !39, line: 123, baseType: !160, size: 8, offset: 448)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1367, file: !39, line: 124, baseType: !160, size: 8, offset: 456)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1367, file: !39, line: 125, baseType: !160, size: 8, offset: 464)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1367, file: !39, line: 126, baseType: !160, size: 8, offset: 472)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1315, file: !44, line: 691, baseType: !364, size: 64, offset: 1152)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1315, file: !44, line: 692, baseType: !523, size: 256, offset: 1216)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1315, file: !44, line: 693, baseType: !1438, size: 192, offset: 1472)
!1438 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1439, line: 41, baseType: !1440)
!1439 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1439, line: 37, size: 192, elements: !1441)
!1441 = !{!1442, !1443}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1440, file: !1439, line: 38, baseType: !132, size: 32)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1440, file: !1439, line: 39, baseType: !119, size: 128, offset: 64)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1315, file: !44, line: 694, baseType: !1342, size: 64, offset: 1664)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1315, file: !44, line: 695, baseType: !152, size: 32, offset: 1728)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1315, file: !44, line: 696, baseType: !152, size: 32, offset: 1760)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1315, file: !44, line: 697, baseType: !13, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1315, file: !44, line: 698, baseType: !13, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1315, file: !44, line: 699, baseType: !13, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1315, file: !44, line: 700, baseType: !13, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1315, file: !44, line: 701, baseType: !13, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1315, file: !44, line: 702, baseType: !13, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1315, file: !44, line: 703, baseType: !558, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1315, file: !44, line: 704, baseType: !13, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1315, file: !44, line: 705, baseType: !13, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1315, file: !44, line: 706, baseType: !13, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1315, file: !44, line: 707, baseType: !13, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1315, file: !44, line: 708, baseType: !13, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1315, file: !44, line: 709, baseType: !13, size: 32, offset: 1824)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1315, file: !44, line: 710, baseType: !43, size: 32, offset: 1856)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1315, file: !44, line: 711, baseType: !51, size: 32, offset: 1888)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1315, file: !44, line: 712, baseType: !51, size: 32, offset: 1920)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1315, file: !44, line: 713, baseType: !52, size: 32, offset: 1952)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1315, file: !44, line: 714, baseType: !52, size: 32, offset: 1984)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1315, file: !44, line: 715, baseType: !364, size: 64, offset: 2048)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1315, file: !44, line: 716, baseType: !364, size: 64, offset: 2112)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1315, file: !44, line: 717, baseType: !364, size: 64, offset: 2176)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1315, file: !44, line: 718, baseType: !364, size: 64, offset: 2240)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1315, file: !44, line: 720, baseType: !1470, size: 64, offset: 2304)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !44, line: 632, size: 64, elements: !1472)
!1472 = !{!1473, !1474}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1471, file: !44, line: 633, baseType: !132, size: 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1471, file: !44, line: 634, baseType: !13, size: 32, offset: 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1315, file: !44, line: 721, baseType: !1476, size: 64, offset: 2368)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DISubroutineType(types: !1478)
!1478 = !{null, !777, !437}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1315, file: !44, line: 722, baseType: !1480, size: 64, offset: 2432)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !44, line: 722, flags: DIFlagFwdDecl)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !109, file: !32, line: 727, baseType: !1483, size: 64, offset: 4224)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !44, line: 742, size: 1792, elements: !1485)
!1485 = !{!1486, !1487, !1488, !1492, !1493, !1494}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1484, file: !44, line: 743, baseType: !807, size: 1472)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1484, file: !44, line: 744, baseType: !810, size: 64, offset: 1472)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1484, file: !44, line: 745, baseType: !1489, size: 64, offset: 1536)
!1489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1490, size: 64)
!1490 = !DISubroutineType(types: !1491)
!1491 = !{null, !777, !558}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1484, file: !44, line: 746, baseType: !810, size: 64, offset: 1600)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1484, file: !44, line: 747, baseType: !801, size: 64, offset: 1664)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1484, file: !44, line: 748, baseType: !801, size: 64, offset: 1728)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !109, file: !32, line: 736, baseType: !1496, size: 128, offset: 4288)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !32, line: 529, size: 128, elements: !1497)
!1497 = !{!1498, !1502}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1496, file: !32, line: 531, baseType: !1499, size: 64)
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1500, size: 64)
!1500 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1501, line: 13, flags: DIFlagFwdDecl)
!1501 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1496, file: !32, line: 532, baseType: !1503, size: 64, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !32, line: 49, flags: DIFlagFwdDecl)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !109, file: !32, line: 738, baseType: !1506, size: 64, offset: 4416)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1508)
!1508 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !32, line: 738, flags: DIFlagFwdDecl)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !109, file: !32, line: 740, baseType: !1510, size: 64, offset: 4480)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !109, file: !32, line: 741, baseType: !364, size: 64, offset: 4544)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !109, file: !32, line: 746, baseType: !364, size: 64, offset: 4608)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !109, file: !32, line: 747, baseType: !1514, size: 64, offset: 4672)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1516)
!1516 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !32, line: 747, flags: DIFlagFwdDecl)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !109, file: !32, line: 749, baseType: !1518, size: 64, offset: 4736)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !32, line: 428, size: 128, elements: !1520)
!1520 = !{!1521, !1522, !1523}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1519, file: !32, line: 433, baseType: !13, size: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1519, file: !32, line: 434, baseType: !13, size: 32, offset: 32)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1519, file: !32, line: 435, baseType: !251, size: 64, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !109, file: !32, line: 751, baseType: !119, size: 128, offset: 4800)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !109, file: !32, line: 762, baseType: !1526, size: 64, offset: 4928)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !32, line: 762, flags: DIFlagFwdDecl)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !109, file: !32, line: 770, baseType: !1529, offset: 4992)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1530, line: 5, elements: !337)
!1530 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !109, file: !32, line: 772, baseType: !1532, size: 64, offset: 4992)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1534, line: 18, flags: DIFlagFwdDecl)
!1534 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !109, file: !32, line: 773, baseType: !1536, size: 64, offset: 5056)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !839, line: 22, flags: DIFlagFwdDecl)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !109, file: !32, line: 776, baseType: !52, size: 32, offset: 5120)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !109, file: !32, line: 778, baseType: !1540, size: 32, offset: 5152)
!1540 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !102, line: 21, baseType: !1541)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !102, line: 18, baseType: !1135)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !109, file: !32, line: 779, baseType: !1135, size: 32, offset: 5184)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !109, file: !32, line: 781, baseType: !132, size: 32, offset: 5216)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !109, file: !32, line: 782, baseType: !119, size: 128, offset: 5248)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !109, file: !32, line: 784, baseType: !1546, size: 64, offset: 5376)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1548)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1549, line: 52, size: 768, elements: !1550)
!1549 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1550 = !{!1551, !1552, !1553, !1554, !1555, !1559, !1563, !1564, !1565, !1566, !1570, !1574}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1548, file: !1549, line: 53, baseType: !116, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1548, file: !1549, line: 55, baseType: !253, size: 64, offset: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1548, file: !1549, line: 56, baseType: !253, size: 64, offset: 128)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1548, file: !1549, line: 58, baseType: !790, size: 64, offset: 192)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1548, file: !1549, line: 59, baseType: !1556, size: 64, offset: 256)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!201, !793, !799}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1548, file: !1549, line: 61, baseType: !1560, size: 64, offset: 320)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{null, !1546}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1548, file: !1549, line: 62, baseType: !801, size: 64, offset: 384)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1548, file: !1549, line: 64, baseType: !810, size: 64, offset: 448)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1548, file: !1549, line: 66, baseType: !597, size: 64, offset: 512)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1548, file: !1549, line: 67, baseType: !1567, size: 64, offset: 576)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!479, !793}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1548, file: !1549, line: 69, baseType: !1571, size: 64, offset: 640)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{null, !793, !632, !639}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1548, file: !1549, line: 71, baseType: !805, size: 64, offset: 704)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !109, file: !32, line: 785, baseType: !253, size: 64, offset: 5440)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !109, file: !32, line: 787, baseType: !801, size: 64, offset: 5504)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !109, file: !32, line: 788, baseType: !1578, size: 64, offset: 5568)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !32, line: 46, flags: DIFlagFwdDecl)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !109, file: !32, line: 789, baseType: !1581, size: 64, offset: 5632)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !32, line: 48, flags: DIFlagFwdDecl)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !109, file: !32, line: 791, baseType: !1584, size: 64, offset: 5696)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !32, line: 597, size: 128, elements: !1586)
!1586 = !{!1587, !1588, !1589, !1590, !1591}
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1585, file: !32, line: 598, baseType: !59, size: 32)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1585, file: !32, line: 599, baseType: !68, size: 32, offset: 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1585, file: !32, line: 600, baseType: !73, size: 32, offset: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1585, file: !32, line: 601, baseType: !558, size: 8, offset: 96)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1585, file: !32, line: 602, baseType: !558, size: 8, offset: 104)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !109, file: !32, line: 793, baseType: !78, size: 32, offset: 5760)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !109, file: !32, line: 795, baseType: !558, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !109, file: !32, line: 796, baseType: !558, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !109, file: !32, line: 797, baseType: !558, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !109, file: !32, line: 798, baseType: !558, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !109, file: !32, line: 799, baseType: !558, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !105, file: !106, line: 245, baseType: !364, size: 64, offset: 5824)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !105, file: !106, line: 246, baseType: !13, size: 32, offset: 5888)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !105, file: !106, line: 247, baseType: !52, size: 32, offset: 5920)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !105, file: !106, line: 249, baseType: !119, size: 128, offset: 5952)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !105, file: !106, line: 250, baseType: !119, size: 128, offset: 6080)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "card_list", scope: !105, file: !106, line: 251, baseType: !119, size: 128, offset: 6208)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "rdev_list", scope: !105, file: !106, line: 252, baseType: !119, size: 128, offset: 6336)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !105, file: !106, line: 254, baseType: !1606, size: 64, offset: 6464)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_protocol", file: !106, line: 411, size: 6720, elements: !1608)
!1608 = !{!1609, !1610, !1611, !1615, !1616, !1617, !1621, !1625, !1626, !1627, !1628, !1629}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !1607, file: !106, line: 412, baseType: !119, size: 128)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1607, file: !106, line: 413, baseType: !201, size: 64, offset: 128)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1607, file: !106, line: 416, baseType: !1612, size: 64, offset: 192)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!52, !104}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1607, file: !106, line: 417, baseType: !1612, size: 64, offset: 256)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !1607, file: !106, line: 418, baseType: !1612, size: 64, offset: 320)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1607, file: !106, line: 421, baseType: !1618, size: 64, offset: 384)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!558, !104}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1607, file: !106, line: 422, baseType: !1622, size: 64, offset: 448)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!52, !104, !1273}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1607, file: !106, line: 423, baseType: !1612, size: 64, offset: 512)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !1607, file: !106, line: 426, baseType: !103, size: 8, offset: 576)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1607, file: !106, line: 427, baseType: !109, size: 5824, offset: 640)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "cards", scope: !1607, file: !106, line: 428, baseType: !119, size: 128, offset: 6464)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !1607, file: !106, line: 429, baseType: !119, size: 128, offset: 6592)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !105, file: !106, line: 255, baseType: !1631, size: 64, offset: 6528)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card", file: !106, line: 202, size: 6976, elements: !1633)
!1633 = !{!1634, !1635, !1636, !1637, !1638, !1639, !1640, !1646, !1650, !1651, !1652, !1653, !1654}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1632, file: !106, line: 203, baseType: !109, size: 5824)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "number", scope: !1632, file: !106, line: 204, baseType: !103, size: 8, offset: 5824)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !1632, file: !106, line: 205, baseType: !119, size: 128, offset: 5888)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "protocol_list", scope: !1632, file: !106, line: 206, baseType: !119, size: 128, offset: 6016)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "devices", scope: !1632, file: !106, line: 207, baseType: !119, size: 128, offset: 6144)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "protocol", scope: !1632, file: !106, line: 209, baseType: !1606, size: 64, offset: 6272)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1632, file: !106, line: 210, baseType: !1641, size: 64, offset: 6336)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_id", file: !106, line: 369, size: 128, elements: !1643)
!1643 = !{!1644, !1645}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1642, file: !106, line: 370, baseType: !3, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1642, file: !106, line: 371, baseType: !1641, size: 64, offset: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1632, file: !106, line: 212, baseType: !1647, size: 400, offset: 6400)
!1647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 400, elements: !1648)
!1648 = !{!1649}
!1649 = !DISubrange(count: 50)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "pnpver", scope: !1632, file: !106, line: 213, baseType: !103, size: 8, offset: 6800)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "productver", scope: !1632, file: !106, line: 214, baseType: !103, size: 8, offset: 6808)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "serial", scope: !1632, file: !106, line: 215, baseType: !13, size: 32, offset: 6816)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !1632, file: !106, line: 216, baseType: !103, size: 8, offset: 6848)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "procdir", scope: !1632, file: !106, line: 217, baseType: !1655, size: 64, offset: 6912)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !106, line: 217, flags: DIFlagFwdDecl)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !105, file: !106, line: 256, baseType: !1658, size: 64, offset: 6592)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_driver", file: !106, line: 374, size: 1664, elements: !1660)
!1660 = !{!1661, !1662, !1670, !1671, !1675, !1679, !1680, !1681, !1682}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1659, file: !106, line: 375, baseType: !116, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !1659, file: !106, line: 376, baseType: !1663, size: 64, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1665)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_device_id", file: !1240, line: 240, size: 128, elements: !1666)
!1666 = !{!1667, !1669}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1665, file: !1240, line: 241, baseType: !1668, size: 64)
!1668 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 64, elements: !5)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1665, file: !1240, line: 242, baseType: !1262, size: 64, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1659, file: !106, line: 377, baseType: !13, size: 32, offset: 128)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1659, file: !106, line: 378, baseType: !1672, size: 64, offset: 192)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!52, !104, !1663}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1659, file: !106, line: 379, baseType: !1676, size: 64, offset: 256)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{null, !104}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1659, file: !106, line: 380, baseType: !1676, size: 64, offset: 320)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1659, file: !106, line: 381, baseType: !1622, size: 64, offset: 384)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1659, file: !106, line: 382, baseType: !1612, size: 64, offset: 448)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1659, file: !106, line: 383, baseType: !851, size: 1152, offset: 512)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "card_link", scope: !105, file: !106, line: 257, baseType: !1684, size: 64, offset: 6656)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_link", file: !106, line: 226, size: 256, elements: !1686)
!1686 = !{!1687, !1688, !1724, !1725}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "card", scope: !1685, file: !106, line: 227, baseType: !1631, size: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1685, file: !106, line: 228, baseType: !1689, size: 64, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_driver", file: !106, line: 388, size: 2240, elements: !1691)
!1691 = !{!1692, !1693, !1694, !1706, !1707, !1711, !1715, !1719, !1723}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "global_list", scope: !1690, file: !106, line: 389, baseType: !119, size: 128)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1690, file: !106, line: 390, baseType: !201, size: 64, offset: 128)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !1690, file: !106, line: 391, baseType: !1695, size: 64, offset: 192)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1697)
!1697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pnp_card_device_id", file: !1240, line: 245, size: 640, elements: !1698)
!1698 = !{!1699, !1700, !1701}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1697, file: !1240, line: 246, baseType: !1668, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1697, file: !1240, line: 247, baseType: !1262, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "devs", scope: !1697, file: !1240, line: 250, baseType: !1702, size: 512, offset: 128)
!1702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1703, size: 512, elements: !5)
!1703 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1697, file: !1240, line: 248, size: 64, elements: !1704)
!1704 = !{!1705}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1703, file: !1240, line: 249, baseType: !1668, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1690, file: !106, line: 392, baseType: !13, size: 32, offset: 256)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1690, file: !106, line: 393, baseType: !1708, size: 64, offset: 320)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!52, !1684, !1695}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1690, file: !106, line: 395, baseType: !1712, size: 64, offset: 384)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{null, !1684}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1690, file: !106, line: 396, baseType: !1716, size: 64, offset: 448)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!52, !1684, !1273}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1690, file: !106, line: 397, baseType: !1720, size: 64, offset: 512)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!52, !1684}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1690, file: !106, line: 398, baseType: !1659, size: 1664, offset: 576)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1685, file: !106, line: 229, baseType: !100, size: 64, offset: 128)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "pm_state", scope: !1685, file: !106, line: 230, baseType: !1273, size: 32, offset: 192)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !105, file: !106, line: 259, baseType: !1641, size: 64, offset: 6720)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !105, file: !106, line: 261, baseType: !52, size: 32, offset: 6784)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "capabilities", scope: !105, file: !106, line: 262, baseType: !52, size: 32, offset: 6816)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "num_dependent_sets", scope: !105, file: !106, line: 263, baseType: !13, size: 32, offset: 6848)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !105, file: !106, line: 264, baseType: !119, size: 128, offset: 6912)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !105, file: !106, line: 265, baseType: !119, size: 128, offset: 7040)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !105, file: !106, line: 267, baseType: !1647, size: 400, offset: 7168)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !105, file: !106, line: 268, baseType: !52, size: 32, offset: 7584)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "procent", scope: !105, file: !106, line: 269, baseType: !1655, size: 64, offset: 7616)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !105, file: !106, line: 270, baseType: !100, size: 64, offset: 7680)
!1736 = !{!0, !7, !1737, !1739, !1742, !1744, !1746, !1748, !1750, !1755}
!1737 = !DIGlobalVariableExpression(var: !1738, expr: !DIExpression())
!1738 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pnp_device_detach208", scope: !9, file: !2, line: 80, type: !100, isLocal: true, isDefinition: true)
!1739 = !DIGlobalVariableExpression(var: !1740, expr: !DIExpression())
!1740 = distinct !DIGlobalVariable(scope: null, file: !2, line: 260, type: !1741, isLocal: true, isDefinition: true)
!1741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !439)
!1742 = !DIGlobalVariableExpression(var: !1743, expr: !DIExpression())
!1743 = distinct !DIGlobalVariable(name: "pnp_bus_type", scope: !9, file: !2, line: 259, type: !838, isLocal: false, isDefinition: true)
!1744 = !DIGlobalVariableExpression(var: !1745, expr: !DIExpression())
!1745 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pnp_register_driver209", scope: !9, file: !2, line: 276, type: !100, isLocal: true, isDefinition: true)
!1746 = !DIGlobalVariableExpression(var: !1747, expr: !DIExpression())
!1747 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_pnp_unregister_driver210", scope: !9, file: !2, line: 282, type: !100, isLocal: true, isDefinition: true)
!1748 = !DIGlobalVariableExpression(var: !1749, expr: !DIExpression())
!1749 = distinct !DIGlobalVariable(name: "pnp_bus_dev_pm_ops", scope: !9, file: !2, line: 248, type: !806, isLocal: true, isDefinition: true)
!1750 = !DIGlobalVariableExpression(var: !1751, expr: !DIExpression())
!1751 = distinct !DIGlobalVariable(scope: null, file: !2, line: 174, type: !1752, isLocal: true, isDefinition: true)
!1752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 144, elements: !1753)
!1753 = !{!1754}
!1754 = !DISubrange(count: 18)
!1755 = !DIGlobalVariableExpression(var: !1756, expr: !DIExpression())
!1756 = distinct !DIGlobalVariable(scope: null, file: !90, line: 480, type: !1757, isLocal: true, isDefinition: true)
!1757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !1758)
!1758 = !{!1759}
!1759 = !DISubrange(count: 21)
!1760 = !{i32 7, !"Dwarf Version", i32 5}
!1761 = !{i32 2, !"Debug Info Version", i32 3}
!1762 = !{i32 1, !"wchar_size", i32 2}
!1763 = !{i32 8, !"cf-protection-branch", i32 1}
!1764 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1765 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1766 = !{i32 1, !"Code Model", i32 2}
!1767 = !{i32 1, !"override-stack-alignment", i32 8}
!1768 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1769 = distinct !DISubprogram(name: "compare_pnp_id", scope: !2, file: !2, line: 29, type: !1770, scopeLine: 30, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1772)
!1770 = !DISubroutineType(types: !1771)
!1771 = !{!52, !1641, !116}
!1772 = !{!1773, !1774}
!1773 = !DILocalVariable(name: "pos", arg: 1, scope: !1769, file: !2, line: 29, type: !1641)
!1774 = !DILocalVariable(name: "id", arg: 2, scope: !1769, file: !2, line: 29, type: !116)
!1775 = !DILocation(line: 29, column: 35, scope: !1769)
!1776 = !DILocation(line: 29, column: 52, scope: !1769)
!1777 = !DILocation(line: 31, column: 7, scope: !1778)
!1778 = distinct !DILexicalBlock(scope: !1769, file: !2, line: 31, column: 6)
!1779 = !DILocation(line: 31, column: 11, scope: !1778)
!1780 = !DILocation(line: 31, column: 15, scope: !1778)
!1781 = !DILocation(line: 31, column: 18, scope: !1778)
!1782 = !DILocation(line: 31, column: 29, scope: !1778)
!1783 = !DILocation(line: 31, column: 22, scope: !1778)
!1784 = !DILocation(line: 31, column: 33, scope: !1778)
!1785 = !DILocation(line: 31, column: 6, scope: !1769)
!1786 = !DILocation(line: 32, column: 3, scope: !1778)
!1787 = !DILocation(line: 33, column: 13, scope: !1788)
!1788 = distinct !DILexicalBlock(scope: !1769, file: !2, line: 33, column: 6)
!1789 = !DILocation(line: 33, column: 6, scope: !1788)
!1790 = !DILocation(line: 33, column: 31, scope: !1788)
!1791 = !DILocation(line: 33, column: 6, scope: !1769)
!1792 = !DILocation(line: 34, column: 3, scope: !1788)
!1793 = !DILocation(line: 35, column: 2, scope: !1769)
!1794 = !DILocation(line: 35, column: 9, scope: !1769)
!1795 = !DILocation(line: 36, column: 14, scope: !1796)
!1796 = distinct !DILexicalBlock(scope: !1797, file: !2, line: 36, column: 7)
!1797 = distinct !DILexicalBlock(scope: !1769, file: !2, line: 35, column: 14)
!1798 = !DILocation(line: 36, column: 19, scope: !1796)
!1799 = !DILocation(line: 36, column: 23, scope: !1796)
!1800 = !DILocation(line: 36, column: 7, scope: !1796)
!1801 = !DILocation(line: 36, column: 30, scope: !1796)
!1802 = !DILocation(line: 36, column: 7, scope: !1797)
!1803 = !DILocation(line: 37, column: 21, scope: !1804)
!1804 = distinct !DILexicalBlock(scope: !1796, file: !2, line: 37, column: 8)
!1805 = !DILocation(line: 37, column: 26, scope: !1804)
!1806 = !DILocation(line: 37, column: 30, scope: !1804)
!1807 = !DILocation(line: 37, column: 8, scope: !1804)
!1808 = !DILocation(line: 37, column: 34, scope: !1804)
!1809 = !DILocation(line: 37, column: 8, scope: !1796)
!1810 = !DILocation(line: 38, column: 5, scope: !1804)
!1811 = !DILocation(line: 37, column: 37, scope: !1804)
!1812 = !DILocation(line: 39, column: 9, scope: !1797)
!1813 = !DILocation(line: 39, column: 14, scope: !1797)
!1814 = !DILocation(line: 39, column: 7, scope: !1797)
!1815 = distinct !{!1815, !1793, !1816, !1817, !1818}
!1816 = !DILocation(line: 40, column: 2, scope: !1769)
!1817 = !{!"llvm.loop.mustprogress"}
!1818 = !{!"llvm.loop.unroll.disable"}
!1819 = !DILocation(line: 41, column: 2, scope: !1769)
!1820 = !DILocation(line: 42, column: 1, scope: !1769)
!1821 = !DISubprogram(name: "strlen", scope: !1822, file: !1822, line: 128, type: !1823, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1822 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!1823 = !DISubroutineType(types: !1824)
!1824 = !{!251, !116}
!1825 = !DISubprogram(name: "memcmp", scope: !1822, file: !1822, line: 196, type: !1826, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1826 = !DISubroutineType(types: !1827)
!1827 = !{!52, !479, !479, !249}
!1828 = distinct !DISubprogram(name: "compare_func", scope: !2, file: !2, line: 16, type: !1829, scopeLine: 17, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1831)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!52, !116, !116}
!1831 = !{!1832, !1833, !1834}
!1832 = !DILocalVariable(name: "ida", arg: 1, scope: !1828, file: !2, line: 16, type: !116)
!1833 = !DILocalVariable(name: "idb", arg: 2, scope: !1828, file: !2, line: 16, type: !116)
!1834 = !DILocalVariable(name: "i", scope: !1828, file: !2, line: 18, type: !52)
!1835 = !DILocation(line: 16, column: 37, scope: !1828)
!1836 = !DILocation(line: 16, column: 54, scope: !1828)
!1837 = !DILocation(line: 18, column: 2, scope: !1828)
!1838 = !DILocation(line: 18, column: 6, scope: !1828)
!1839 = !DILocation(line: 21, column: 9, scope: !1840)
!1840 = distinct !DILexicalBlock(scope: !1828, file: !2, line: 21, column: 2)
!1841 = !DILocation(line: 21, column: 7, scope: !1840)
!1842 = !DILocation(line: 21, column: 14, scope: !1843)
!1843 = distinct !DILexicalBlock(scope: !1840, file: !2, line: 21, column: 2)
!1844 = !DILocation(line: 21, column: 16, scope: !1843)
!1845 = !DILocation(line: 21, column: 2, scope: !1840)
!1846 = !DILocation(line: 22, column: 7, scope: !1847)
!1847 = distinct !DILexicalBlock(scope: !1848, file: !2, line: 22, column: 7)
!1848 = distinct !DILexicalBlock(scope: !1843, file: !2, line: 21, column: 26)
!1849 = !DILocation(line: 22, column: 11, scope: !1847)
!1850 = !DILocation(line: 22, column: 14, scope: !1847)
!1851 = !DILocation(line: 22, column: 21, scope: !1847)
!1852 = !DILocation(line: 23, column: 7, scope: !1847)
!1853 = !DILocation(line: 23, column: 11, scope: !1847)
!1854 = !DILocation(line: 23, column: 14, scope: !1847)
!1855 = !DILocation(line: 23, column: 21, scope: !1847)
!1856 = !DILocation(line: 23, column: 24, scope: !1847)
!1857 = !DILocation(line: 23, column: 43, scope: !1847)
!1858 = !DILocation(line: 23, column: 40, scope: !1847)
!1859 = !DILocation(line: 22, column: 7, scope: !1848)
!1860 = !DILocation(line: 24, column: 4, scope: !1847)
!1861 = !DILocation(line: 25, column: 2, scope: !1848)
!1862 = !DILocation(line: 21, column: 22, scope: !1843)
!1863 = !DILocation(line: 21, column: 2, scope: !1843)
!1864 = distinct !{!1864, !1845, !1865, !1817, !1818}
!1865 = !DILocation(line: 25, column: 2, scope: !1840)
!1866 = !DILocation(line: 26, column: 2, scope: !1828)
!1867 = !DILocation(line: 27, column: 1, scope: !1828)
!1868 = distinct !DISubprogram(name: "pnp_device_attach", scope: !2, file: !2, line: 60, type: !1613, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1869)
!1869 = !{!1870}
!1870 = !DILocalVariable(name: "pnp_dev", arg: 1, scope: !1868, file: !2, line: 60, type: !104)
!1871 = !DILocation(line: 60, column: 39, scope: !1868)
!1872 = !DILocation(line: 62, column: 2, scope: !1868)
!1873 = !DILocation(line: 63, column: 6, scope: !1874)
!1874 = distinct !DILexicalBlock(scope: !1868, file: !2, line: 63, column: 6)
!1875 = !DILocation(line: 63, column: 15, scope: !1874)
!1876 = !DILocation(line: 63, column: 22, scope: !1874)
!1877 = !DILocation(line: 63, column: 6, scope: !1868)
!1878 = !DILocation(line: 64, column: 3, scope: !1879)
!1879 = distinct !DILexicalBlock(scope: !1874, file: !2, line: 63, column: 36)
!1880 = !DILocation(line: 65, column: 3, scope: !1879)
!1881 = !DILocation(line: 67, column: 2, scope: !1868)
!1882 = !DILocation(line: 67, column: 11, scope: !1868)
!1883 = !DILocation(line: 67, column: 18, scope: !1868)
!1884 = !DILocation(line: 68, column: 2, scope: !1868)
!1885 = !DILocation(line: 69, column: 2, scope: !1868)
!1886 = !DILocation(line: 70, column: 1, scope: !1868)
!1887 = !DISubprogram(name: "mutex_lock", scope: !459, file: !459, line: 227, type: !1888, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1888 = !DISubroutineType(types: !1889)
!1889 = !{null, !1890}
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!1891 = !DISubprogram(name: "mutex_unlock", scope: !459, file: !459, line: 246, type: !1888, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1892 = distinct !DISubprogram(name: "pnp_device_detach", scope: !2, file: !2, line: 73, type: !1677, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1893)
!1893 = !{!1894}
!1894 = !DILocalVariable(name: "pnp_dev", arg: 1, scope: !1892, file: !2, line: 73, type: !104)
!1895 = !DILocation(line: 73, column: 40, scope: !1892)
!1896 = !DILocation(line: 75, column: 2, scope: !1892)
!1897 = !DILocation(line: 76, column: 6, scope: !1898)
!1898 = distinct !DILexicalBlock(scope: !1892, file: !2, line: 76, column: 6)
!1899 = !DILocation(line: 76, column: 15, scope: !1898)
!1900 = !DILocation(line: 76, column: 22, scope: !1898)
!1901 = !DILocation(line: 76, column: 6, scope: !1892)
!1902 = !DILocation(line: 77, column: 3, scope: !1898)
!1903 = !DILocation(line: 77, column: 12, scope: !1898)
!1904 = !DILocation(line: 77, column: 19, scope: !1898)
!1905 = !DILocation(line: 78, column: 2, scope: !1892)
!1906 = !DILocation(line: 79, column: 1, scope: !1892)
!1907 = distinct !DISubprogram(name: "pnp_bus_match", scope: !2, file: !2, line: 153, type: !848, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1908)
!1908 = !{!1909, !1910, !1911, !1912, !1914, !1915}
!1909 = !DILocalVariable(name: "dev", arg: 1, scope: !1907, file: !2, line: 153, type: !777)
!1910 = !DILocalVariable(name: "drv", arg: 2, scope: !1907, file: !2, line: 153, type: !850)
!1911 = !DILocalVariable(name: "pnp_dev", scope: !1907, file: !2, line: 155, type: !104)
!1912 = !DILocalVariable(name: "__mptr", scope: !1913, file: !2, line: 155, type: !100)
!1913 = distinct !DILexicalBlock(scope: !1907, file: !2, line: 155, column: 28)
!1914 = !DILocalVariable(name: "pnp_drv", scope: !1907, file: !2, line: 156, type: !1658)
!1915 = !DILocalVariable(name: "__mptr", scope: !1916, file: !2, line: 156, type: !100)
!1916 = distinct !DILexicalBlock(scope: !1907, file: !2, line: 156, column: 31)
!1917 = !DILocation(line: 153, column: 41, scope: !1907)
!1918 = !DILocation(line: 153, column: 68, scope: !1907)
!1919 = !DILocation(line: 155, column: 2, scope: !1907)
!1920 = !DILocation(line: 155, column: 18, scope: !1907)
!1921 = !DILocation(line: 155, column: 28, scope: !1913)
!1922 = !DILocation(line: 155, column: 28, scope: !1907)
!1923 = !DILocation(line: 156, column: 2, scope: !1907)
!1924 = !DILocation(line: 156, column: 21, scope: !1907)
!1925 = !DILocation(line: 156, column: 31, scope: !1916)
!1926 = !DILocation(line: 156, column: 31, scope: !1907)
!1927 = !DILocation(line: 158, column: 19, scope: !1928)
!1928 = distinct !DILexicalBlock(scope: !1907, file: !2, line: 158, column: 6)
!1929 = !DILocation(line: 158, column: 28, scope: !1928)
!1930 = !DILocation(line: 158, column: 6, scope: !1928)
!1931 = !DILocation(line: 158, column: 37, scope: !1928)
!1932 = !DILocation(line: 158, column: 6, scope: !1907)
!1933 = !DILocation(line: 159, column: 3, scope: !1928)
!1934 = !DILocation(line: 160, column: 2, scope: !1907)
!1935 = !DILocation(line: 161, column: 1, scope: !1907)
!1936 = distinct !DISubprogram(name: "pnp_device_probe", scope: !2, file: !2, line: 82, type: !811, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !1937)
!1937 = !{!1938, !1939, !1940, !1941, !1942, !1943, !1945, !1947}
!1938 = !DILocalVariable(name: "dev", arg: 1, scope: !1936, file: !2, line: 82, type: !777)
!1939 = !DILocalVariable(name: "error", scope: !1936, file: !2, line: 84, type: !52)
!1940 = !DILocalVariable(name: "pnp_drv", scope: !1936, file: !2, line: 85, type: !1658)
!1941 = !DILocalVariable(name: "pnp_dev", scope: !1936, file: !2, line: 86, type: !104)
!1942 = !DILocalVariable(name: "dev_id", scope: !1936, file: !2, line: 87, type: !1663)
!1943 = !DILocalVariable(name: "__mptr", scope: !1944, file: !2, line: 88, type: !100)
!1944 = distinct !DILexicalBlock(scope: !1936, file: !2, line: 88, column: 12)
!1945 = !DILocalVariable(name: "__mptr", scope: !1946, file: !2, line: 89, type: !100)
!1946 = distinct !DILexicalBlock(scope: !1936, file: !2, line: 89, column: 12)
!1947 = !DILabel(scope: !1936, name: "fail", file: !2, line: 121)
!1948 = !DILocation(line: 82, column: 44, scope: !1936)
!1949 = !DILocation(line: 84, column: 2, scope: !1936)
!1950 = !DILocation(line: 84, column: 6, scope: !1936)
!1951 = !DILocation(line: 85, column: 2, scope: !1936)
!1952 = !DILocation(line: 85, column: 21, scope: !1936)
!1953 = !DILocation(line: 86, column: 2, scope: !1936)
!1954 = !DILocation(line: 86, column: 18, scope: !1936)
!1955 = !DILocation(line: 87, column: 2, scope: !1936)
!1956 = !DILocation(line: 87, column: 30, scope: !1936)
!1957 = !DILocation(line: 88, column: 12, scope: !1944)
!1958 = !DILocation(line: 88, column: 12, scope: !1936)
!1959 = !DILocation(line: 88, column: 10, scope: !1936)
!1960 = !DILocation(line: 89, column: 12, scope: !1946)
!1961 = !DILocation(line: 89, column: 12, scope: !1936)
!1962 = !DILocation(line: 89, column: 10, scope: !1936)
!1963 = !DILocation(line: 91, column: 28, scope: !1936)
!1964 = !DILocation(line: 91, column: 10, scope: !1936)
!1965 = !DILocation(line: 91, column: 8, scope: !1936)
!1966 = !DILocation(line: 92, column: 6, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1936, file: !2, line: 92, column: 6)
!1968 = !DILocation(line: 92, column: 12, scope: !1967)
!1969 = !DILocation(line: 92, column: 6, scope: !1936)
!1970 = !DILocation(line: 93, column: 10, scope: !1967)
!1971 = !DILocation(line: 93, column: 3, scope: !1967)
!1972 = !DILocation(line: 95, column: 6, scope: !1973)
!1973 = distinct !DILexicalBlock(scope: !1936, file: !2, line: 95, column: 6)
!1974 = !DILocation(line: 95, column: 15, scope: !1973)
!1975 = !DILocation(line: 95, column: 22, scope: !1973)
!1976 = !DILocation(line: 95, column: 6, scope: !1936)
!1977 = !DILocation(line: 96, column: 9, scope: !1978)
!1978 = distinct !DILexicalBlock(scope: !1979, file: !2, line: 96, column: 7)
!1979 = distinct !DILexicalBlock(scope: !1973, file: !2, line: 95, column: 28)
!1980 = !DILocation(line: 96, column: 18, scope: !1978)
!1981 = !DILocation(line: 96, column: 24, scope: !1978)
!1982 = !DILocation(line: 96, column: 7, scope: !1979)
!1983 = !DILocation(line: 97, column: 29, scope: !1984)
!1984 = distinct !DILexicalBlock(scope: !1978, file: !2, line: 96, column: 57)
!1985 = !DILocation(line: 97, column: 12, scope: !1984)
!1986 = !DILocation(line: 97, column: 10, scope: !1984)
!1987 = !DILocation(line: 98, column: 8, scope: !1988)
!1988 = distinct !DILexicalBlock(scope: !1984, file: !2, line: 98, column: 8)
!1989 = !DILocation(line: 98, column: 14, scope: !1988)
!1990 = !DILocation(line: 98, column: 8, scope: !1984)
!1991 = !DILocation(line: 99, column: 12, scope: !1988)
!1992 = !DILocation(line: 99, column: 5, scope: !1988)
!1993 = !DILocation(line: 100, column: 3, scope: !1984)
!1994 = !DILocation(line: 101, column: 2, scope: !1979)
!1995 = !DILocation(line: 101, column: 14, scope: !1996)
!1996 = distinct !DILexicalBlock(scope: !1973, file: !2, line: 101, column: 13)
!1997 = !DILocation(line: 101, column: 23, scope: !1996)
!1998 = !DILocation(line: 101, column: 29, scope: !1996)
!1999 = !DILocation(line: 102, column: 6, scope: !1996)
!2000 = !DILocation(line: 101, column: 13, scope: !1973)
!2001 = !DILocation(line: 103, column: 27, scope: !2002)
!2002 = distinct !DILexicalBlock(scope: !1996, file: !2, line: 102, column: 33)
!2003 = !DILocation(line: 103, column: 11, scope: !2002)
!2004 = !DILocation(line: 103, column: 9, scope: !2002)
!2005 = !DILocation(line: 104, column: 7, scope: !2006)
!2006 = distinct !DILexicalBlock(scope: !2002, file: !2, line: 104, column: 7)
!2007 = !DILocation(line: 104, column: 13, scope: !2006)
!2008 = !DILocation(line: 104, column: 7, scope: !2002)
!2009 = !DILocation(line: 105, column: 11, scope: !2006)
!2010 = !DILocation(line: 105, column: 4, scope: !2006)
!2011 = !DILocation(line: 106, column: 2, scope: !2002)
!2012 = !DILocation(line: 107, column: 8, scope: !1936)
!2013 = !DILocation(line: 108, column: 6, scope: !2014)
!2014 = distinct !DILexicalBlock(scope: !1936, file: !2, line: 108, column: 6)
!2015 = !DILocation(line: 108, column: 15, scope: !2014)
!2016 = !DILocation(line: 108, column: 6, scope: !1936)
!2017 = !DILocation(line: 109, column: 25, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2014, file: !2, line: 108, column: 22)
!2019 = !DILocation(line: 109, column: 34, scope: !2018)
!2020 = !DILocation(line: 109, column: 12, scope: !2018)
!2021 = !DILocation(line: 109, column: 10, scope: !2018)
!2022 = !DILocation(line: 110, column: 7, scope: !2023)
!2023 = distinct !DILexicalBlock(scope: !2018, file: !2, line: 110, column: 7)
!2024 = !DILocation(line: 110, column: 14, scope: !2023)
!2025 = !DILocation(line: 110, column: 7, scope: !2018)
!2026 = !DILocation(line: 111, column: 12, scope: !2023)
!2027 = !DILocation(line: 111, column: 21, scope: !2023)
!2028 = !DILocation(line: 111, column: 27, scope: !2023)
!2029 = !DILocation(line: 111, column: 36, scope: !2023)
!2030 = !DILocation(line: 111, column: 10, scope: !2023)
!2031 = !DILocation(line: 111, column: 4, scope: !2023)
!2032 = !DILocation(line: 112, column: 2, scope: !2018)
!2033 = !DILocation(line: 113, column: 6, scope: !2034)
!2034 = distinct !DILexicalBlock(scope: !1936, file: !2, line: 113, column: 6)
!2035 = !DILocation(line: 113, column: 12, scope: !2034)
!2036 = !DILocation(line: 113, column: 6, scope: !1936)
!2037 = !DILocation(line: 114, column: 21, scope: !2038)
!2038 = distinct !DILexicalBlock(scope: !2034, file: !2, line: 113, column: 18)
!2039 = !DILocation(line: 114, column: 3, scope: !2038)
!2040 = !DILocation(line: 114, column: 12, scope: !2038)
!2041 = !DILocation(line: 114, column: 19, scope: !2038)
!2042 = !DILocation(line: 115, column: 9, scope: !2038)
!2043 = !DILocation(line: 116, column: 2, scope: !2038)
!2044 = !DILocation(line: 117, column: 3, scope: !2034)
!2045 = !DILocation(line: 119, column: 9, scope: !1936)
!2046 = !DILocation(line: 119, column: 2, scope: !1936)
!2047 = !DILocation(line: 121, column: 1, scope: !1936)
!2048 = !DILocation(line: 122, column: 20, scope: !1936)
!2049 = !DILocation(line: 122, column: 2, scope: !1936)
!2050 = !DILocation(line: 123, column: 9, scope: !1936)
!2051 = !DILocation(line: 123, column: 2, scope: !1936)
!2052 = !DILocation(line: 124, column: 1, scope: !1936)
!2053 = distinct !DISubprogram(name: "pnp_device_remove", scope: !2, file: !2, line: 126, type: !802, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2054)
!2054 = !{!2055, !2056, !2057, !2059}
!2055 = !DILocalVariable(name: "dev", arg: 1, scope: !2053, file: !2, line: 126, type: !777)
!2056 = !DILocalVariable(name: "pnp_dev", scope: !2053, file: !2, line: 128, type: !104)
!2057 = !DILocalVariable(name: "__mptr", scope: !2058, file: !2, line: 128, type: !100)
!2058 = distinct !DILexicalBlock(scope: !2053, file: !2, line: 128, column: 28)
!2059 = !DILocalVariable(name: "drv", scope: !2053, file: !2, line: 129, type: !1658)
!2060 = !DILocation(line: 126, column: 46, scope: !2053)
!2061 = !DILocation(line: 128, column: 2, scope: !2053)
!2062 = !DILocation(line: 128, column: 18, scope: !2053)
!2063 = !DILocation(line: 128, column: 28, scope: !2058)
!2064 = !DILocation(line: 128, column: 28, scope: !2053)
!2065 = !DILocation(line: 129, column: 2, scope: !2053)
!2066 = !DILocation(line: 129, column: 21, scope: !2053)
!2067 = !DILocation(line: 129, column: 27, scope: !2053)
!2068 = !DILocation(line: 129, column: 36, scope: !2053)
!2069 = !DILocation(line: 131, column: 6, scope: !2070)
!2070 = distinct !DILexicalBlock(scope: !2053, file: !2, line: 131, column: 6)
!2071 = !DILocation(line: 131, column: 6, scope: !2053)
!2072 = !DILocation(line: 132, column: 7, scope: !2073)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !2, line: 132, column: 7)
!2074 = distinct !DILexicalBlock(scope: !2070, file: !2, line: 131, column: 11)
!2075 = !DILocation(line: 132, column: 12, scope: !2073)
!2076 = !DILocation(line: 132, column: 7, scope: !2074)
!2077 = !DILocation(line: 133, column: 4, scope: !2073)
!2078 = !DILocation(line: 133, column: 9, scope: !2073)
!2079 = !DILocation(line: 133, column: 16, scope: !2073)
!2080 = !DILocation(line: 134, column: 3, scope: !2074)
!2081 = !DILocation(line: 134, column: 12, scope: !2074)
!2082 = !DILocation(line: 134, column: 19, scope: !2074)
!2083 = !DILocation(line: 135, column: 2, scope: !2074)
!2084 = !DILocation(line: 137, column: 6, scope: !2085)
!2085 = distinct !DILexicalBlock(scope: !2053, file: !2, line: 137, column: 6)
!2086 = !DILocation(line: 137, column: 15, scope: !2085)
!2087 = !DILocation(line: 137, column: 22, scope: !2085)
!2088 = !DILocation(line: 138, column: 8, scope: !2085)
!2089 = !DILocation(line: 138, column: 12, scope: !2085)
!2090 = !DILocation(line: 138, column: 17, scope: !2085)
!2091 = !DILocation(line: 138, column: 22, scope: !2085)
!2092 = !DILocation(line: 138, column: 28, scope: !2085)
!2093 = !DILocation(line: 137, column: 6, scope: !2053)
!2094 = !DILocation(line: 139, column: 19, scope: !2085)
!2095 = !DILocation(line: 139, column: 3, scope: !2085)
!2096 = !DILocation(line: 141, column: 20, scope: !2053)
!2097 = !DILocation(line: 141, column: 2, scope: !2053)
!2098 = !DILocation(line: 142, column: 1, scope: !2053)
!2099 = distinct !DISubprogram(name: "pnp_device_shutdown", scope: !2, file: !2, line: 144, type: !802, scopeLine: 145, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2100)
!2100 = !{!2101, !2102, !2103, !2105}
!2101 = !DILocalVariable(name: "dev", arg: 1, scope: !2099, file: !2, line: 144, type: !777)
!2102 = !DILocalVariable(name: "pnp_dev", scope: !2099, file: !2, line: 146, type: !104)
!2103 = !DILocalVariable(name: "__mptr", scope: !2104, file: !2, line: 146, type: !100)
!2104 = distinct !DILexicalBlock(scope: !2099, file: !2, line: 146, column: 28)
!2105 = !DILocalVariable(name: "drv", scope: !2099, file: !2, line: 147, type: !1658)
!2106 = !DILocation(line: 144, column: 48, scope: !2099)
!2107 = !DILocation(line: 146, column: 2, scope: !2099)
!2108 = !DILocation(line: 146, column: 18, scope: !2099)
!2109 = !DILocation(line: 146, column: 28, scope: !2104)
!2110 = !DILocation(line: 146, column: 28, scope: !2099)
!2111 = !DILocation(line: 147, column: 2, scope: !2099)
!2112 = !DILocation(line: 147, column: 21, scope: !2099)
!2113 = !DILocation(line: 147, column: 27, scope: !2099)
!2114 = !DILocation(line: 147, column: 36, scope: !2099)
!2115 = !DILocation(line: 149, column: 6, scope: !2116)
!2116 = distinct !DILexicalBlock(scope: !2099, file: !2, line: 149, column: 6)
!2117 = !DILocation(line: 149, column: 10, scope: !2116)
!2118 = !DILocation(line: 149, column: 13, scope: !2116)
!2119 = !DILocation(line: 149, column: 18, scope: !2116)
!2120 = !DILocation(line: 149, column: 6, scope: !2099)
!2121 = !DILocation(line: 150, column: 3, scope: !2116)
!2122 = !DILocation(line: 150, column: 8, scope: !2116)
!2123 = !DILocation(line: 150, column: 17, scope: !2116)
!2124 = !DILocation(line: 151, column: 1, scope: !2099)
!2125 = distinct !DISubprogram(name: "pnp_register_driver", scope: !2, file: !2, line: 269, type: !2126, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2128)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!52, !1658}
!2128 = !{!2129}
!2129 = !DILocalVariable(name: "drv", arg: 1, scope: !2125, file: !2, line: 269, type: !1658)
!2130 = !DILocation(line: 269, column: 44, scope: !2125)
!2131 = !DILocation(line: 271, column: 21, scope: !2125)
!2132 = !DILocation(line: 271, column: 26, scope: !2125)
!2133 = !DILocation(line: 271, column: 2, scope: !2125)
!2134 = !DILocation(line: 271, column: 7, scope: !2125)
!2135 = !DILocation(line: 271, column: 14, scope: !2125)
!2136 = !DILocation(line: 271, column: 19, scope: !2125)
!2137 = !DILocation(line: 272, column: 2, scope: !2125)
!2138 = !DILocation(line: 272, column: 7, scope: !2125)
!2139 = !DILocation(line: 272, column: 14, scope: !2125)
!2140 = !DILocation(line: 272, column: 18, scope: !2125)
!2141 = !DILocation(line: 274, column: 26, scope: !2125)
!2142 = !DILocation(line: 274, column: 31, scope: !2125)
!2143 = !DILocation(line: 274, column: 9, scope: !2125)
!2144 = !DILocation(line: 274, column: 2, scope: !2125)
!2145 = !DISubprogram(name: "driver_register", scope: !26, file: !26, line: 125, type: !2146, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2146 = !DISubroutineType(types: !2147)
!2147 = !{!52, !850}
!2148 = distinct !DISubprogram(name: "pnp_unregister_driver", scope: !2, file: !2, line: 278, type: !2149, scopeLine: 279, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2151)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{null, !1658}
!2151 = !{!2152}
!2152 = !DILocalVariable(name: "drv", arg: 1, scope: !2148, file: !2, line: 278, type: !1658)
!2153 = !DILocation(line: 278, column: 47, scope: !2148)
!2154 = !DILocation(line: 280, column: 21, scope: !2148)
!2155 = !DILocation(line: 280, column: 26, scope: !2148)
!2156 = !DILocation(line: 280, column: 2, scope: !2148)
!2157 = !DILocation(line: 281, column: 1, scope: !2148)
!2158 = !DISubprogram(name: "driver_unregister", scope: !26, file: !26, line: 126, type: !2159, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{null, !850}
!2161 = distinct !DISubprogram(name: "pnp_add_id", scope: !2, file: !2, line: 289, type: !2162, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2164)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!1641, !104, !116}
!2164 = !{!2165, !2166, !2167, !2168}
!2165 = !DILocalVariable(name: "dev", arg: 1, scope: !2161, file: !2, line: 289, type: !104)
!2166 = !DILocalVariable(name: "id", arg: 2, scope: !2161, file: !2, line: 289, type: !116)
!2167 = !DILocalVariable(name: "dev_id", scope: !2161, file: !2, line: 291, type: !1641)
!2168 = !DILocalVariable(name: "ptr", scope: !2161, file: !2, line: 291, type: !1641)
!2169 = !DILocation(line: 289, column: 43, scope: !2161)
!2170 = !DILocation(line: 289, column: 60, scope: !2161)
!2171 = !DILocation(line: 291, column: 2, scope: !2161)
!2172 = !DILocation(line: 291, column: 17, scope: !2161)
!2173 = !DILocation(line: 291, column: 26, scope: !2161)
!2174 = !DILocation(line: 293, column: 11, scope: !2161)
!2175 = !DILocation(line: 293, column: 9, scope: !2161)
!2176 = !DILocation(line: 294, column: 7, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2161, file: !2, line: 294, column: 6)
!2178 = !DILocation(line: 294, column: 6, scope: !2161)
!2179 = !DILocation(line: 295, column: 3, scope: !2177)
!2180 = !DILocation(line: 297, column: 18, scope: !2161)
!2181 = !DILocation(line: 297, column: 2, scope: !2161)
!2182 = !DILocation(line: 297, column: 10, scope: !2161)
!2183 = !DILocation(line: 297, column: 16, scope: !2161)
!2184 = !DILocation(line: 298, column: 18, scope: !2161)
!2185 = !DILocation(line: 298, column: 2, scope: !2161)
!2186 = !DILocation(line: 298, column: 10, scope: !2161)
!2187 = !DILocation(line: 298, column: 16, scope: !2161)
!2188 = !DILocation(line: 299, column: 18, scope: !2161)
!2189 = !DILocation(line: 299, column: 2, scope: !2161)
!2190 = !DILocation(line: 299, column: 10, scope: !2161)
!2191 = !DILocation(line: 299, column: 16, scope: !2161)
!2192 = !DILocation(line: 300, column: 18, scope: !2161)
!2193 = !DILocation(line: 300, column: 2, scope: !2161)
!2194 = !DILocation(line: 300, column: 10, scope: !2161)
!2195 = !DILocation(line: 300, column: 16, scope: !2161)
!2196 = !DILocation(line: 301, column: 18, scope: !2161)
!2197 = !DILocation(line: 301, column: 2, scope: !2161)
!2198 = !DILocation(line: 301, column: 10, scope: !2161)
!2199 = !DILocation(line: 301, column: 16, scope: !2161)
!2200 = !DILocation(line: 302, column: 18, scope: !2161)
!2201 = !DILocation(line: 302, column: 2, scope: !2161)
!2202 = !DILocation(line: 302, column: 10, scope: !2161)
!2203 = !DILocation(line: 302, column: 16, scope: !2161)
!2204 = !DILocation(line: 303, column: 18, scope: !2161)
!2205 = !DILocation(line: 303, column: 2, scope: !2161)
!2206 = !DILocation(line: 303, column: 10, scope: !2161)
!2207 = !DILocation(line: 303, column: 16, scope: !2161)
!2208 = !DILocation(line: 304, column: 2, scope: !2161)
!2209 = !DILocation(line: 304, column: 10, scope: !2161)
!2210 = !DILocation(line: 304, column: 16, scope: !2161)
!2211 = !DILocation(line: 306, column: 2, scope: !2161)
!2212 = !DILocation(line: 306, column: 10, scope: !2161)
!2213 = !DILocation(line: 306, column: 15, scope: !2161)
!2214 = !DILocation(line: 307, column: 8, scope: !2161)
!2215 = !DILocation(line: 307, column: 13, scope: !2161)
!2216 = !DILocation(line: 307, column: 6, scope: !2161)
!2217 = !DILocation(line: 308, column: 2, scope: !2161)
!2218 = !DILocation(line: 308, column: 9, scope: !2161)
!2219 = !DILocation(line: 308, column: 13, scope: !2161)
!2220 = !DILocation(line: 308, column: 16, scope: !2161)
!2221 = !DILocation(line: 308, column: 21, scope: !2161)
!2222 = !DILocation(line: 0, scope: !2161)
!2223 = !DILocation(line: 309, column: 9, scope: !2161)
!2224 = !DILocation(line: 309, column: 14, scope: !2161)
!2225 = !DILocation(line: 309, column: 7, scope: !2161)
!2226 = distinct !{!2226, !2217, !2224, !1817, !1818}
!2227 = !DILocation(line: 310, column: 6, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2161, file: !2, line: 310, column: 6)
!2229 = !DILocation(line: 310, column: 6, scope: !2161)
!2230 = !DILocation(line: 311, column: 15, scope: !2228)
!2231 = !DILocation(line: 311, column: 3, scope: !2228)
!2232 = !DILocation(line: 311, column: 8, scope: !2228)
!2233 = !DILocation(line: 311, column: 13, scope: !2228)
!2234 = !DILocation(line: 313, column: 13, scope: !2228)
!2235 = !DILocation(line: 313, column: 3, scope: !2228)
!2236 = !DILocation(line: 313, column: 8, scope: !2228)
!2237 = !DILocation(line: 313, column: 11, scope: !2228)
!2238 = !DILocation(line: 315, column: 9, scope: !2161)
!2239 = !DILocation(line: 315, column: 2, scope: !2161)
!2240 = !DILocation(line: 316, column: 1, scope: !2161)
!2241 = distinct !DISubprogram(name: "kzalloc", scope: !90, file: !90, line: 719, type: !2242, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2244)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!100, !248, !101}
!2244 = !{!2245, !2246}
!2245 = !DILocalVariable(name: "size", arg: 1, scope: !2241, file: !90, line: 719, type: !248)
!2246 = !DILocalVariable(name: "flags", arg: 2, scope: !2241, file: !90, line: 719, type: !101)
!2247 = !DILocation(line: 719, column: 52, scope: !2241)
!2248 = !DILocation(line: 719, column: 64, scope: !2241)
!2249 = !DILocation(line: 721, column: 17, scope: !2241)
!2250 = !DILocation(line: 721, column: 23, scope: !2241)
!2251 = !DILocation(line: 721, column: 29, scope: !2241)
!2252 = !DILocation(line: 721, column: 9, scope: !2241)
!2253 = !DILocation(line: 721, column: 2, scope: !2241)
!2254 = distinct !DISubprogram(name: "__tolower", scope: !2255, file: !2255, line: 49, type: !2256, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2258)
!2255 = !DIFile(filename: "./include/linux/ctype.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "16ff466080305de3b83767ab84129dc0")
!2256 = !DISubroutineType(types: !2257)
!2257 = !{!103, !103}
!2258 = !{!2259}
!2259 = !DILocalVariable(name: "c", arg: 1, scope: !2254, file: !2255, line: 49, type: !103)
!2260 = !DILocation(line: 49, column: 53, scope: !2254)
!2261 = !DILocation(line: 51, column: 6, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2254, file: !2255, line: 51, column: 6)
!2263 = !DILocation(line: 51, column: 6, scope: !2254)
!2264 = !DILocation(line: 52, column: 5, scope: !2262)
!2265 = !DILocation(line: 52, column: 3, scope: !2262)
!2266 = !DILocation(line: 53, column: 9, scope: !2254)
!2267 = !DILocation(line: 53, column: 2, scope: !2254)
!2268 = distinct !DISubprogram(name: "__toupper", scope: !2255, file: !2255, line: 56, type: !2256, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2269)
!2269 = !{!2270}
!2270 = !DILocalVariable(name: "c", arg: 1, scope: !2268, file: !2255, line: 56, type: !103)
!2271 = !DILocation(line: 56, column: 53, scope: !2268)
!2272 = !DILocation(line: 58, column: 6, scope: !2273)
!2273 = distinct !DILexicalBlock(scope: !2268, file: !2255, line: 58, column: 6)
!2274 = !DILocation(line: 58, column: 6, scope: !2268)
!2275 = !DILocation(line: 59, column: 5, scope: !2273)
!2276 = !DILocation(line: 59, column: 3, scope: !2273)
!2277 = !DILocation(line: 60, column: 9, scope: !2268)
!2278 = !DILocation(line: 60, column: 2, scope: !2268)
!2279 = distinct !DISubprogram(name: "match_device", scope: !2, file: !2, line: 44, type: !2280, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2282)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!1663, !1658, !104}
!2282 = !{!2283, !2284, !2285}
!2283 = !DILocalVariable(name: "drv", arg: 1, scope: !2279, file: !2, line: 44, type: !1658)
!2284 = !DILocalVariable(name: "dev", arg: 2, scope: !2279, file: !2, line: 45, type: !104)
!2285 = !DILocalVariable(name: "drv_id", scope: !2279, file: !2, line: 47, type: !1663)
!2286 = !DILocation(line: 44, column: 68, scope: !2279)
!2287 = !DILocation(line: 45, column: 23, scope: !2279)
!2288 = !DILocation(line: 47, column: 2, scope: !2279)
!2289 = !DILocation(line: 47, column: 30, scope: !2279)
!2290 = !DILocation(line: 47, column: 39, scope: !2279)
!2291 = !DILocation(line: 47, column: 44, scope: !2279)
!2292 = !DILocation(line: 49, column: 7, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2279, file: !2, line: 49, column: 6)
!2294 = !DILocation(line: 49, column: 6, scope: !2279)
!2295 = !DILocation(line: 50, column: 3, scope: !2293)
!2296 = !DILocation(line: 52, column: 2, scope: !2279)
!2297 = !DILocation(line: 52, column: 10, scope: !2279)
!2298 = !DILocation(line: 52, column: 18, scope: !2279)
!2299 = !DILocation(line: 52, column: 9, scope: !2279)
!2300 = !DILocation(line: 53, column: 22, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2302, file: !2, line: 53, column: 7)
!2302 = distinct !DILexicalBlock(scope: !2279, file: !2, line: 52, column: 22)
!2303 = !DILocation(line: 53, column: 27, scope: !2301)
!2304 = !DILocation(line: 53, column: 31, scope: !2301)
!2305 = !DILocation(line: 53, column: 39, scope: !2301)
!2306 = !DILocation(line: 53, column: 7, scope: !2301)
!2307 = !DILocation(line: 53, column: 7, scope: !2302)
!2308 = !DILocation(line: 54, column: 11, scope: !2301)
!2309 = !DILocation(line: 54, column: 4, scope: !2301)
!2310 = !DILocation(line: 55, column: 9, scope: !2302)
!2311 = distinct !{!2311, !2296, !2312, !1817, !1818}
!2312 = !DILocation(line: 56, column: 2, scope: !2279)
!2313 = !DILocation(line: 57, column: 2, scope: !2279)
!2314 = !DILocation(line: 58, column: 1, scope: !2279)
!2315 = !DISubprogram(name: "pnp_activate_dev", scope: !106, file: !106, line: 462, type: !1613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2316 = !DISubprogram(name: "pnp_disable_dev", scope: !106, file: !106, line: 463, type: !1613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2317 = distinct !DISubprogram(name: "pnp_bus_suspend", scope: !2, file: !2, line: 197, type: !811, scopeLine: 198, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2318)
!2318 = !{!2319}
!2319 = !DILocalVariable(name: "dev", arg: 1, scope: !2317, file: !2, line: 197, type: !777)
!2320 = !DILocation(line: 197, column: 43, scope: !2317)
!2321 = !DILocation(line: 199, column: 27, scope: !2317)
!2322 = !DILocation(line: 199, column: 32, scope: !2317)
!2323 = !DILocation(line: 199, column: 9, scope: !2317)
!2324 = !DILocation(line: 199, column: 2, scope: !2317)
!2325 = distinct !DISubprogram(name: "pnp_bus_resume", scope: !2, file: !2, line: 212, type: !811, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2326)
!2326 = !{!2327, !2328, !2329, !2331, !2332}
!2327 = !DILocalVariable(name: "dev", arg: 1, scope: !2325, file: !2, line: 212, type: !777)
!2328 = !DILocalVariable(name: "pnp_dev", scope: !2325, file: !2, line: 214, type: !104)
!2329 = !DILocalVariable(name: "__mptr", scope: !2330, file: !2, line: 214, type: !100)
!2330 = distinct !DILexicalBlock(scope: !2325, file: !2, line: 214, column: 28)
!2331 = !DILocalVariable(name: "pnp_drv", scope: !2325, file: !2, line: 215, type: !1658)
!2332 = !DILocalVariable(name: "error", scope: !2325, file: !2, line: 216, type: !52)
!2333 = !DILocation(line: 212, column: 42, scope: !2325)
!2334 = !DILocation(line: 214, column: 2, scope: !2325)
!2335 = !DILocation(line: 214, column: 18, scope: !2325)
!2336 = !DILocation(line: 214, column: 28, scope: !2330)
!2337 = !DILocation(line: 214, column: 28, scope: !2325)
!2338 = !DILocation(line: 215, column: 2, scope: !2325)
!2339 = !DILocation(line: 215, column: 21, scope: !2325)
!2340 = !DILocation(line: 215, column: 31, scope: !2325)
!2341 = !DILocation(line: 215, column: 40, scope: !2325)
!2342 = !DILocation(line: 216, column: 2, scope: !2325)
!2343 = !DILocation(line: 216, column: 6, scope: !2325)
!2344 = !DILocation(line: 218, column: 7, scope: !2345)
!2345 = distinct !DILexicalBlock(scope: !2325, file: !2, line: 218, column: 6)
!2346 = !DILocation(line: 218, column: 6, scope: !2325)
!2347 = !DILocation(line: 219, column: 3, scope: !2345)
!2348 = !DILocation(line: 221, column: 6, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2325, file: !2, line: 221, column: 6)
!2350 = !DILocation(line: 221, column: 15, scope: !2349)
!2351 = !DILocation(line: 221, column: 25, scope: !2349)
!2352 = !DILocation(line: 221, column: 6, scope: !2325)
!2353 = !DILocation(line: 222, column: 11, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2349, file: !2, line: 221, column: 33)
!2355 = !DILocation(line: 222, column: 20, scope: !2354)
!2356 = !DILocation(line: 222, column: 30, scope: !2354)
!2357 = !DILocation(line: 222, column: 37, scope: !2354)
!2358 = !DILocation(line: 222, column: 9, scope: !2354)
!2359 = !DILocation(line: 223, column: 7, scope: !2360)
!2360 = distinct !DILexicalBlock(scope: !2354, file: !2, line: 223, column: 7)
!2361 = !DILocation(line: 223, column: 7, scope: !2354)
!2362 = !DILocation(line: 224, column: 11, scope: !2360)
!2363 = !DILocation(line: 224, column: 4, scope: !2360)
!2364 = !DILocation(line: 225, column: 2, scope: !2354)
!2365 = !DILocation(line: 227, column: 6, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2325, file: !2, line: 227, column: 6)
!2367 = !DILocation(line: 227, column: 6, scope: !2325)
!2368 = !DILocation(line: 228, column: 25, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2366, file: !2, line: 227, column: 30)
!2370 = !DILocation(line: 228, column: 11, scope: !2369)
!2371 = !DILocation(line: 228, column: 9, scope: !2369)
!2372 = !DILocation(line: 229, column: 7, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2369, file: !2, line: 229, column: 7)
!2374 = !DILocation(line: 229, column: 7, scope: !2369)
!2375 = !DILocation(line: 230, column: 11, scope: !2373)
!2376 = !DILocation(line: 230, column: 4, scope: !2373)
!2377 = !DILocation(line: 231, column: 2, scope: !2369)
!2378 = !DILocation(line: 233, column: 6, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2325, file: !2, line: 233, column: 6)
!2380 = !DILocation(line: 233, column: 15, scope: !2379)
!2381 = !DILocation(line: 233, column: 22, scope: !2379)
!2382 = !DILocation(line: 233, column: 25, scope: !2379)
!2383 = !DILocation(line: 233, column: 28, scope: !2379)
!2384 = !DILocation(line: 233, column: 37, scope: !2379)
!2385 = !DILocation(line: 233, column: 44, scope: !2379)
!2386 = !DILocation(line: 233, column: 48, scope: !2379)
!2387 = !DILocation(line: 233, column: 6, scope: !2325)
!2388 = !DILocation(line: 234, column: 11, scope: !2389)
!2389 = distinct !DILexicalBlock(scope: !2379, file: !2, line: 233, column: 56)
!2390 = !DILocation(line: 234, column: 20, scope: !2389)
!2391 = !DILocation(line: 234, column: 27, scope: !2389)
!2392 = !DILocation(line: 234, column: 31, scope: !2389)
!2393 = !DILocation(line: 234, column: 38, scope: !2389)
!2394 = !DILocation(line: 234, column: 9, scope: !2389)
!2395 = !DILocation(line: 235, column: 7, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2389, file: !2, line: 235, column: 7)
!2397 = !DILocation(line: 235, column: 7, scope: !2389)
!2398 = !DILocation(line: 236, column: 11, scope: !2396)
!2399 = !DILocation(line: 236, column: 4, scope: !2396)
!2400 = !DILocation(line: 237, column: 2, scope: !2389)
!2401 = !DILocation(line: 239, column: 6, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2325, file: !2, line: 239, column: 6)
!2403 = !DILocation(line: 239, column: 15, scope: !2402)
!2404 = !DILocation(line: 239, column: 6, scope: !2325)
!2405 = !DILocation(line: 240, column: 11, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2402, file: !2, line: 239, column: 23)
!2407 = !DILocation(line: 240, column: 20, scope: !2406)
!2408 = !DILocation(line: 240, column: 27, scope: !2406)
!2409 = !DILocation(line: 240, column: 9, scope: !2406)
!2410 = !DILocation(line: 241, column: 7, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2406, file: !2, line: 241, column: 7)
!2412 = !DILocation(line: 241, column: 7, scope: !2406)
!2413 = !DILocation(line: 242, column: 11, scope: !2411)
!2414 = !DILocation(line: 242, column: 4, scope: !2411)
!2415 = !DILocation(line: 243, column: 2, scope: !2406)
!2416 = !DILocation(line: 245, column: 2, scope: !2325)
!2417 = !DILocation(line: 246, column: 1, scope: !2325)
!2418 = distinct !DISubprogram(name: "pnp_bus_freeze", scope: !2, file: !2, line: 202, type: !811, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2419)
!2419 = !{!2420}
!2420 = !DILocalVariable(name: "dev", arg: 1, scope: !2418, file: !2, line: 202, type: !777)
!2421 = !DILocation(line: 202, column: 42, scope: !2418)
!2422 = !DILocation(line: 204, column: 27, scope: !2418)
!2423 = !DILocation(line: 204, column: 32, scope: !2418)
!2424 = !DILocation(line: 204, column: 9, scope: !2418)
!2425 = !DILocation(line: 204, column: 2, scope: !2418)
!2426 = distinct !DISubprogram(name: "pnp_bus_poweroff", scope: !2, file: !2, line: 207, type: !811, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2427)
!2427 = !{!2428}
!2428 = !DILocalVariable(name: "dev", arg: 1, scope: !2426, file: !2, line: 207, type: !777)
!2429 = !DILocation(line: 207, column: 44, scope: !2426)
!2430 = !DILocation(line: 209, column: 27, scope: !2426)
!2431 = !DILocation(line: 209, column: 32, scope: !2426)
!2432 = !DILocation(line: 209, column: 9, scope: !2426)
!2433 = !DILocation(line: 209, column: 2, scope: !2426)
!2434 = distinct !DISubprogram(name: "__pnp_bus_suspend", scope: !2, file: !2, line: 163, type: !1271, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2435)
!2435 = !{!2436, !2437, !2438, !2439, !2441, !2442}
!2436 = !DILocalVariable(name: "dev", arg: 1, scope: !2434, file: !2, line: 163, type: !777)
!2437 = !DILocalVariable(name: "state", arg: 2, scope: !2434, file: !2, line: 163, type: !1273)
!2438 = !DILocalVariable(name: "pnp_dev", scope: !2434, file: !2, line: 165, type: !104)
!2439 = !DILocalVariable(name: "__mptr", scope: !2440, file: !2, line: 165, type: !100)
!2440 = distinct !DILexicalBlock(scope: !2434, file: !2, line: 165, column: 28)
!2441 = !DILocalVariable(name: "pnp_drv", scope: !2434, file: !2, line: 166, type: !1658)
!2442 = !DILocalVariable(name: "error", scope: !2434, file: !2, line: 167, type: !52)
!2443 = !DILocation(line: 163, column: 45, scope: !2434)
!2444 = !DILocation(line: 163, column: 63, scope: !2434)
!2445 = !DILocation(line: 165, column: 2, scope: !2434)
!2446 = !DILocation(line: 165, column: 18, scope: !2434)
!2447 = !DILocation(line: 165, column: 28, scope: !2440)
!2448 = !DILocation(line: 165, column: 28, scope: !2434)
!2449 = !DILocation(line: 166, column: 2, scope: !2434)
!2450 = !DILocation(line: 166, column: 21, scope: !2434)
!2451 = !DILocation(line: 166, column: 31, scope: !2434)
!2452 = !DILocation(line: 166, column: 40, scope: !2434)
!2453 = !DILocation(line: 167, column: 2, scope: !2434)
!2454 = !DILocation(line: 167, column: 6, scope: !2434)
!2455 = !DILocation(line: 169, column: 7, scope: !2456)
!2456 = distinct !DILexicalBlock(scope: !2434, file: !2, line: 169, column: 6)
!2457 = !DILocation(line: 169, column: 6, scope: !2434)
!2458 = !DILocation(line: 170, column: 3, scope: !2456)
!2459 = !DILocation(line: 172, column: 6, scope: !2460)
!2460 = distinct !DILexicalBlock(scope: !2434, file: !2, line: 172, column: 6)
!2461 = !DILocation(line: 172, column: 15, scope: !2460)
!2462 = !DILocation(line: 172, column: 22, scope: !2460)
!2463 = !DILocation(line: 172, column: 25, scope: !2460)
!2464 = !DILocation(line: 172, column: 28, scope: !2460)
!2465 = !DILocation(line: 172, column: 37, scope: !2460)
!2466 = !DILocation(line: 172, column: 44, scope: !2460)
!2467 = !DILocation(line: 172, column: 48, scope: !2460)
!2468 = !DILocation(line: 172, column: 6, scope: !2434)
!2469 = !DILocation(line: 173, column: 11, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2460, file: !2, line: 172, column: 57)
!2471 = !DILocation(line: 173, column: 20, scope: !2470)
!2472 = !DILocation(line: 173, column: 27, scope: !2470)
!2473 = !DILocation(line: 173, column: 31, scope: !2470)
!2474 = !DILocation(line: 173, column: 39, scope: !2470)
!2475 = !DILocation(line: 173, column: 9, scope: !2470)
!2476 = !DILocation(line: 174, column: 3, scope: !2470)
!2477 = !DILocation(line: 174, column: 3, scope: !2478)
!2478 = distinct !DILexicalBlock(scope: !2470, file: !2, line: 174, column: 3)
!2479 = !DILocation(line: 175, column: 7, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2470, file: !2, line: 175, column: 7)
!2481 = !DILocation(line: 175, column: 7, scope: !2470)
!2482 = !DILocation(line: 176, column: 11, scope: !2480)
!2483 = !DILocation(line: 176, column: 4, scope: !2480)
!2484 = !DILocation(line: 177, column: 2, scope: !2470)
!2485 = !DILocation(line: 179, column: 6, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2434, file: !2, line: 179, column: 6)
!2487 = !DILocation(line: 179, column: 15, scope: !2486)
!2488 = !DILocation(line: 179, column: 6, scope: !2434)
!2489 = !DILocation(line: 180, column: 11, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2486, file: !2, line: 179, column: 24)
!2491 = !DILocation(line: 180, column: 20, scope: !2490)
!2492 = !DILocation(line: 180, column: 28, scope: !2490)
!2493 = !DILocation(line: 180, column: 9, scope: !2490)
!2494 = !DILocation(line: 181, column: 7, scope: !2495)
!2495 = distinct !DILexicalBlock(scope: !2490, file: !2, line: 181, column: 7)
!2496 = !DILocation(line: 181, column: 7, scope: !2490)
!2497 = !DILocation(line: 182, column: 11, scope: !2495)
!2498 = !DILocation(line: 182, column: 4, scope: !2495)
!2499 = !DILocation(line: 183, column: 2, scope: !2490)
!2500 = !DILocation(line: 186, column: 6, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2434, file: !2, line: 186, column: 6)
!2502 = !{i8 0, i8 2}
!2503 = !DILocation(line: 186, column: 31, scope: !2501)
!2504 = !DILocation(line: 186, column: 34, scope: !2501)
!2505 = !DILocation(line: 186, column: 6, scope: !2434)
!2506 = !DILocation(line: 187, column: 24, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2501, file: !2, line: 186, column: 58)
!2508 = !DILocation(line: 187, column: 11, scope: !2507)
!2509 = !DILocation(line: 187, column: 9, scope: !2507)
!2510 = !DILocation(line: 188, column: 7, scope: !2511)
!2511 = distinct !DILexicalBlock(scope: !2507, file: !2, line: 188, column: 7)
!2512 = !DILocation(line: 188, column: 7, scope: !2507)
!2513 = !DILocation(line: 189, column: 11, scope: !2511)
!2514 = !DILocation(line: 189, column: 4, scope: !2511)
!2515 = !DILocation(line: 190, column: 2, scope: !2507)
!2516 = !DILocation(line: 192, column: 6, scope: !2517)
!2517 = distinct !DILexicalBlock(scope: !2434, file: !2, line: 192, column: 6)
!2518 = !DILocation(line: 192, column: 6, scope: !2434)
!2519 = !DILocation(line: 193, column: 3, scope: !2517)
!2520 = !DILocation(line: 193, column: 12, scope: !2517)
!2521 = !DILocation(line: 193, column: 22, scope: !2517)
!2522 = !DILocation(line: 193, column: 30, scope: !2517)
!2523 = !DILocation(line: 194, column: 2, scope: !2434)
!2524 = !DILocation(line: 195, column: 1, scope: !2434)
!2525 = !DISubprogram(name: "__suspend_report_result", scope: !44, file: !44, line: 822, type: !2526, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2526 = !DISubroutineType(types: !2527)
!2527 = !{null, !116, !777, !100, !52}
!2528 = !DISubprogram(name: "pnp_stop_dev", scope: !106, file: !106, line: 461, type: !1613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2529 = !DISubprogram(name: "pnp_start_dev", scope: !106, file: !106, line: 460, type: !1613, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2530 = distinct !DISubprogram(name: "kmalloc", scope: !90, file: !90, line: 591, type: !2242, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2531)
!2531 = !{!2532, !2533, !2534}
!2532 = !DILocalVariable(name: "size", arg: 1, scope: !2530, file: !90, line: 591, type: !248)
!2533 = !DILocalVariable(name: "flags", arg: 2, scope: !2530, file: !90, line: 591, type: !101)
!2534 = !DILocalVariable(name: "index", scope: !2535, file: !90, line: 594, type: !13)
!2535 = distinct !DILexicalBlock(scope: !2536, file: !90, line: 593, column: 42)
!2536 = distinct !DILexicalBlock(scope: !2530, file: !90, line: 593, column: 6)
!2537 = !DILocation(line: 591, column: 61, scope: !2530)
!2538 = !DILocation(line: 591, column: 73, scope: !2530)
!2539 = !DILocation(line: 593, column: 27, scope: !2536)
!2540 = !DILocation(line: 593, column: 6, scope: !2536)
!2541 = !DILocation(line: 593, column: 33, scope: !2536)
!2542 = !DILocation(line: 593, column: 36, scope: !2536)
!2543 = !DILocation(line: 593, column: 6, scope: !2530)
!2544 = !DILocation(line: 594, column: 3, scope: !2535)
!2545 = !DILocation(line: 594, column: 16, scope: !2535)
!2546 = !DILocation(line: 596, column: 7, scope: !2547)
!2547 = distinct !DILexicalBlock(scope: !2535, file: !90, line: 596, column: 7)
!2548 = !DILocation(line: 596, column: 12, scope: !2547)
!2549 = !DILocation(line: 596, column: 7, scope: !2535)
!2550 = !DILocation(line: 597, column: 25, scope: !2547)
!2551 = !DILocation(line: 597, column: 31, scope: !2547)
!2552 = !DILocation(line: 597, column: 11, scope: !2547)
!2553 = !DILocation(line: 597, column: 4, scope: !2547)
!2554 = !DILocation(line: 599, column: 11, scope: !2535)
!2555 = !DILocation(line: 599, column: 9, scope: !2535)
!2556 = !DILocation(line: 601, column: 33, scope: !2535)
!2557 = !DILocation(line: 601, column: 40, scope: !2535)
!2558 = !DILocation(line: 601, column: 20, scope: !2535)
!2559 = !DILocation(line: 601, column: 5, scope: !2535)
!2560 = !DILocation(line: 601, column: 51, scope: !2535)
!2561 = !DILocation(line: 602, column: 5, scope: !2535)
!2562 = !DILocation(line: 602, column: 12, scope: !2535)
!2563 = !DILocation(line: 600, column: 10, scope: !2535)
!2564 = !DILocation(line: 600, column: 3, scope: !2535)
!2565 = !DILocation(line: 603, column: 2, scope: !2536)
!2566 = !DILocation(line: 604, column: 19, scope: !2530)
!2567 = !DILocation(line: 604, column: 25, scope: !2530)
!2568 = !DILocation(line: 604, column: 9, scope: !2530)
!2569 = !DILocation(line: 604, column: 2, scope: !2530)
!2570 = !DILocation(line: 605, column: 1, scope: !2530)
!2571 = !DISubprogram(name: "kmalloc_large", scope: !90, file: !90, line: 531, type: !2242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2572 = distinct !DISubprogram(name: "__kmalloc_index", scope: !90, file: !90, line: 444, type: !2573, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2575)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!13, !248, !558}
!2575 = !{!2576, !2577}
!2576 = !DILocalVariable(name: "size", arg: 1, scope: !2572, file: !90, line: 444, type: !248)
!2577 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2572, file: !90, line: 445, type: !558)
!2578 = !DILocation(line: 444, column: 60, scope: !2572)
!2579 = !DILocation(line: 445, column: 16, scope: !2572)
!2580 = !DILocation(line: 447, column: 7, scope: !2581)
!2581 = distinct !DILexicalBlock(scope: !2572, file: !90, line: 447, column: 6)
!2582 = !DILocation(line: 447, column: 6, scope: !2572)
!2583 = !DILocation(line: 448, column: 3, scope: !2581)
!2584 = !DILocation(line: 450, column: 6, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2572, file: !90, line: 450, column: 6)
!2586 = !DILocation(line: 450, column: 11, scope: !2585)
!2587 = !DILocation(line: 450, column: 6, scope: !2572)
!2588 = !DILocation(line: 451, column: 3, scope: !2585)
!2589 = !DILocation(line: 453, column: 32, scope: !2590)
!2590 = distinct !DILexicalBlock(scope: !2572, file: !90, line: 453, column: 6)
!2591 = !DILocation(line: 453, column: 37, scope: !2590)
!2592 = !DILocation(line: 453, column: 42, scope: !2590)
!2593 = !DILocation(line: 453, column: 45, scope: !2590)
!2594 = !DILocation(line: 453, column: 50, scope: !2590)
!2595 = !DILocation(line: 453, column: 6, scope: !2572)
!2596 = !DILocation(line: 454, column: 3, scope: !2590)
!2597 = !DILocation(line: 455, column: 32, scope: !2598)
!2598 = distinct !DILexicalBlock(scope: !2572, file: !90, line: 455, column: 6)
!2599 = !DILocation(line: 455, column: 37, scope: !2598)
!2600 = !DILocation(line: 455, column: 43, scope: !2598)
!2601 = !DILocation(line: 455, column: 46, scope: !2598)
!2602 = !DILocation(line: 455, column: 51, scope: !2598)
!2603 = !DILocation(line: 455, column: 6, scope: !2572)
!2604 = !DILocation(line: 456, column: 3, scope: !2598)
!2605 = !DILocation(line: 457, column: 6, scope: !2606)
!2606 = distinct !DILexicalBlock(scope: !2572, file: !90, line: 457, column: 6)
!2607 = !DILocation(line: 457, column: 11, scope: !2606)
!2608 = !DILocation(line: 457, column: 6, scope: !2572)
!2609 = !DILocation(line: 457, column: 26, scope: !2606)
!2610 = !DILocation(line: 458, column: 6, scope: !2611)
!2611 = distinct !DILexicalBlock(scope: !2572, file: !90, line: 458, column: 6)
!2612 = !DILocation(line: 458, column: 11, scope: !2611)
!2613 = !DILocation(line: 458, column: 6, scope: !2572)
!2614 = !DILocation(line: 458, column: 26, scope: !2611)
!2615 = !DILocation(line: 459, column: 6, scope: !2616)
!2616 = distinct !DILexicalBlock(scope: !2572, file: !90, line: 459, column: 6)
!2617 = !DILocation(line: 459, column: 11, scope: !2616)
!2618 = !DILocation(line: 459, column: 6, scope: !2572)
!2619 = !DILocation(line: 459, column: 26, scope: !2616)
!2620 = !DILocation(line: 460, column: 6, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2572, file: !90, line: 460, column: 6)
!2622 = !DILocation(line: 460, column: 11, scope: !2621)
!2623 = !DILocation(line: 460, column: 6, scope: !2572)
!2624 = !DILocation(line: 460, column: 26, scope: !2621)
!2625 = !DILocation(line: 461, column: 6, scope: !2626)
!2626 = distinct !DILexicalBlock(scope: !2572, file: !90, line: 461, column: 6)
!2627 = !DILocation(line: 461, column: 11, scope: !2626)
!2628 = !DILocation(line: 461, column: 6, scope: !2572)
!2629 = !DILocation(line: 461, column: 26, scope: !2626)
!2630 = !DILocation(line: 462, column: 6, scope: !2631)
!2631 = distinct !DILexicalBlock(scope: !2572, file: !90, line: 462, column: 6)
!2632 = !DILocation(line: 462, column: 11, scope: !2631)
!2633 = !DILocation(line: 462, column: 6, scope: !2572)
!2634 = !DILocation(line: 462, column: 26, scope: !2631)
!2635 = !DILocation(line: 463, column: 6, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2572, file: !90, line: 463, column: 6)
!2637 = !DILocation(line: 463, column: 11, scope: !2636)
!2638 = !DILocation(line: 463, column: 6, scope: !2572)
!2639 = !DILocation(line: 463, column: 26, scope: !2636)
!2640 = !DILocation(line: 464, column: 6, scope: !2641)
!2641 = distinct !DILexicalBlock(scope: !2572, file: !90, line: 464, column: 6)
!2642 = !DILocation(line: 464, column: 11, scope: !2641)
!2643 = !DILocation(line: 464, column: 6, scope: !2572)
!2644 = !DILocation(line: 464, column: 26, scope: !2641)
!2645 = !DILocation(line: 465, column: 6, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2572, file: !90, line: 465, column: 6)
!2647 = !DILocation(line: 465, column: 11, scope: !2646)
!2648 = !DILocation(line: 465, column: 6, scope: !2572)
!2649 = !DILocation(line: 465, column: 26, scope: !2646)
!2650 = !DILocation(line: 466, column: 6, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2572, file: !90, line: 466, column: 6)
!2652 = !DILocation(line: 466, column: 11, scope: !2651)
!2653 = !DILocation(line: 466, column: 6, scope: !2572)
!2654 = !DILocation(line: 466, column: 26, scope: !2651)
!2655 = !DILocation(line: 467, column: 6, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2572, file: !90, line: 467, column: 6)
!2657 = !DILocation(line: 467, column: 11, scope: !2656)
!2658 = !DILocation(line: 467, column: 6, scope: !2572)
!2659 = !DILocation(line: 467, column: 26, scope: !2656)
!2660 = !DILocation(line: 468, column: 6, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2572, file: !90, line: 468, column: 6)
!2662 = !DILocation(line: 468, column: 11, scope: !2661)
!2663 = !DILocation(line: 468, column: 6, scope: !2572)
!2664 = !DILocation(line: 468, column: 26, scope: !2661)
!2665 = !DILocation(line: 469, column: 6, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2572, file: !90, line: 469, column: 6)
!2667 = !DILocation(line: 469, column: 11, scope: !2666)
!2668 = !DILocation(line: 469, column: 6, scope: !2572)
!2669 = !DILocation(line: 469, column: 26, scope: !2666)
!2670 = !DILocation(line: 470, column: 6, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2572, file: !90, line: 470, column: 6)
!2672 = !DILocation(line: 470, column: 11, scope: !2671)
!2673 = !DILocation(line: 470, column: 6, scope: !2572)
!2674 = !DILocation(line: 470, column: 26, scope: !2671)
!2675 = !DILocation(line: 471, column: 6, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2572, file: !90, line: 471, column: 6)
!2677 = !DILocation(line: 471, column: 11, scope: !2676)
!2678 = !DILocation(line: 471, column: 6, scope: !2572)
!2679 = !DILocation(line: 471, column: 26, scope: !2676)
!2680 = !DILocation(line: 472, column: 6, scope: !2681)
!2681 = distinct !DILexicalBlock(scope: !2572, file: !90, line: 472, column: 6)
!2682 = !DILocation(line: 472, column: 11, scope: !2681)
!2683 = !DILocation(line: 472, column: 6, scope: !2572)
!2684 = !DILocation(line: 472, column: 26, scope: !2681)
!2685 = !DILocation(line: 473, column: 6, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !2572, file: !90, line: 473, column: 6)
!2687 = !DILocation(line: 473, column: 11, scope: !2686)
!2688 = !DILocation(line: 473, column: 6, scope: !2572)
!2689 = !DILocation(line: 473, column: 26, scope: !2686)
!2690 = !DILocation(line: 474, column: 6, scope: !2691)
!2691 = distinct !DILexicalBlock(scope: !2572, file: !90, line: 474, column: 6)
!2692 = !DILocation(line: 474, column: 11, scope: !2691)
!2693 = !DILocation(line: 474, column: 6, scope: !2572)
!2694 = !DILocation(line: 474, column: 27, scope: !2691)
!2695 = !DILocation(line: 475, column: 6, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2572, file: !90, line: 475, column: 6)
!2697 = !DILocation(line: 475, column: 11, scope: !2696)
!2698 = !DILocation(line: 475, column: 6, scope: !2572)
!2699 = !DILocation(line: 475, column: 32, scope: !2696)
!2700 = !DILocation(line: 477, column: 50, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2572, file: !90, line: 477, column: 6)
!2702 = !DILocation(line: 477, column: 6, scope: !2572)
!2703 = !DILocation(line: 478, column: 3, scope: !2701)
!2704 = !DILocation(line: 478, column: 3, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2706, file: !90, line: 478, column: 3)
!2706 = distinct !DILexicalBlock(scope: !2701, file: !90, line: 478, column: 3)
!2707 = !{i32 -2142595300}
!2708 = !DILocation(line: 478, column: 3, scope: !2706)
!2709 = !DILocation(line: 480, column: 3, scope: !2701)
!2710 = !DILocation(line: 480, column: 3, scope: !2711)
!2711 = distinct !DILexicalBlock(scope: !2701, file: !90, line: 480, column: 3)
!2712 = !DILocation(line: 480, column: 3, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2711, file: !90, line: 480, column: 3)
!2714 = !DILocation(line: 480, column: 3, scope: !2715)
!2715 = distinct !DILexicalBlock(scope: !2711, file: !90, line: 480, column: 3)
!2716 = !{i64 2152372199, i64 2152372228, i64 2152372274, i64 2152372332, i64 2152372386, i64 2152372440, i64 2152372495, i64 2152372526}
!2717 = !DILocation(line: 483, column: 2, scope: !2572)
!2718 = !DILocation(line: 484, column: 1, scope: !2572)
!2719 = !DISubprogram(name: "kmalloc_trace", scope: !90, file: !90, line: 525, type: !2720, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!100, !2722, !101, !248}
!2722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2723, size: 64)
!2723 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2724, line: 11, flags: DIFlagFwdDecl)
!2724 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2725 = distinct !DISubprogram(name: "kmalloc_type", scope: !90, file: !90, line: 401, type: !2726, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2728)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{!89, !101, !251}
!2728 = !{!2729, !2730}
!2729 = !DILocalVariable(name: "flags", arg: 1, scope: !2725, file: !90, line: 401, type: !101)
!2730 = !DILocalVariable(name: "caller", arg: 2, scope: !2725, file: !90, line: 401, type: !251)
!2731 = !DILocation(line: 401, column: 67, scope: !2725)
!2732 = !DILocation(line: 401, column: 88, scope: !2725)
!2733 = !DILocation(line: 407, column: 6, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2725, file: !90, line: 407, column: 6)
!2735 = !DILocation(line: 407, column: 6, scope: !2725)
!2736 = !DILocation(line: 413, column: 3, scope: !2734)
!2737 = !DILocation(line: 423, column: 38, scope: !2738)
!2738 = distinct !DILexicalBlock(scope: !2725, file: !90, line: 423, column: 6)
!2739 = !DILocation(line: 423, column: 44, scope: !2738)
!2740 = !DILocation(line: 423, column: 6, scope: !2725)
!2741 = !DILocation(line: 424, column: 3, scope: !2738)
!2742 = !DILocation(line: 426, column: 3, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2725, file: !90, line: 425, column: 6)
!2744 = !DILocation(line: 429, column: 1, scope: !2725)
!2745 = !DISubprogram(name: "__kmalloc", scope: !90, file: !90, line: 488, type: !2242, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2746 = !DISubprogram(name: "__compiletime_assert_196", scope: !90, file: !90, line: 478, type: !1230, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
