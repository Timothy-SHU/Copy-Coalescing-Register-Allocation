; ModuleID = 'drivers/base/power/wakeup_stats.c'
source_filename = "drivers/base/power/wakeup_stats.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall2.init..kmod_wakeup_stats__205_217_wakeup_sources_sysfs_init\22, \22a\22\09\09"
module asm "__initcall__kmod_wakeup_stats__205_217_wakeup_sources_sysfs_init2:\09\09\09"
module asm ".long\09__initstub__kmod_wakeup_stats__205_217_wakeup_sources_sysfs_init2 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.wakeup_source = type { ptr, i32, %struct.list_head, %struct.spinlock, ptr, %struct.timer_list, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i8 }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
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

@__UNIQUE_ID___addressable___initstub__kmod_wakeup_stats__205_217_wakeup_sources_sysfs_init2206 = internal global ptr @__initstub__kmod_wakeup_stats__205_217_wakeup_sources_sysfs_init2, section ".discard.addressable", align 8, !dbg !0
@wakeup_class = internal global ptr null, align 8, !dbg !128
@wakeup_source_groups = internal global [2 x ptr] [ptr @wakeup_source_group, ptr null], align 16, !dbg !1678
@.str = private unnamed_addr constant [9 x i8] c"wakeup%d\00", align 1, !dbg !117
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !123
@wakeup_source_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @wakeup_source_attrs, ptr null }, align 8, !dbg !1681
@wakeup_source_attrs = internal global [11 x ptr] [ptr @dev_attr_name, ptr @dev_attr_active_count, ptr @dev_attr_event_count, ptr @dev_attr_wakeup_count, ptr @dev_attr_expire_count, ptr @dev_attr_active_time_ms, ptr @dev_attr_total_time_ms, ptr @dev_attr_max_time_ms, ptr @dev_attr_last_change_ms, ptr @dev_attr_prevent_suspend_time_ms, ptr null], align 16, !dbg !1683
@dev_attr_name = internal global %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292 }, ptr @name_show, ptr null }, align 8, !dbg !1693
@dev_attr_active_count = internal global %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292 }, ptr @active_count_show, ptr null }, align 8, !dbg !1715
@dev_attr_event_count = internal global %struct.device_attribute { %struct.attribute { ptr @.str.6, i16 292 }, ptr @event_count_show, ptr null }, align 8, !dbg !1724
@dev_attr_wakeup_count = internal global %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292 }, ptr @wakeup_count_show, ptr null }, align 8, !dbg !1728
@dev_attr_expire_count = internal global %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 292 }, ptr @expire_count_show, ptr null }, align 8, !dbg !1732
@dev_attr_active_time_ms = internal global %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292 }, ptr @active_time_ms_show, ptr null }, align 8, !dbg !1739
@dev_attr_total_time_ms = internal global %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 292 }, ptr @total_time_ms_show, ptr null }, align 8, !dbg !1756
@dev_attr_max_time_ms = internal global %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 292 }, ptr @max_time_ms_show, ptr null }, align 8, !dbg !1760
@dev_attr_last_change_ms = internal global %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 292 }, ptr @last_change_ms_show, ptr null }, align 8, !dbg !1764
@dev_attr_prevent_suspend_time_ms = internal global %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292 }, ptr @prevent_suspend_time_ms_show, ptr null }, align 8, !dbg !1771
@.str.2 = private unnamed_addr constant [5 x i8] c"name\00", align 1, !dbg !1688
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !1707
@.str.4 = private unnamed_addr constant [13 x i8] c"active_count\00", align 1, !dbg !1710
@.str.5 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1, !dbg !1717
@.str.6 = private unnamed_addr constant [12 x i8] c"event_count\00", align 1, !dbg !1719
@.str.7 = private unnamed_addr constant [13 x i8] c"wakeup_count\00", align 1, !dbg !1726
@.str.8 = private unnamed_addr constant [13 x i8] c"expire_count\00", align 1, !dbg !1730
@.str.9 = private unnamed_addr constant [15 x i8] c"active_time_ms\00", align 1, !dbg !1734
@.str.10 = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1, !dbg !1741
@.str.11 = private unnamed_addr constant [22 x i8] c"include/linux/ktime.h\00", align 1, !dbg !1746
@.str.12 = private unnamed_addr constant [14 x i8] c"total_time_ms\00", align 1, !dbg !1751
@.str.13 = private unnamed_addr constant [12 x i8] c"max_time_ms\00", align 1, !dbg !1758
@.str.14 = private unnamed_addr constant [15 x i8] c"last_change_ms\00", align 1, !dbg !1762
@.str.15 = private unnamed_addr constant [24 x i8] c"prevent_suspend_time_ms\00", align 1, !dbg !1766
@.str.16 = private unnamed_addr constant [7 x i8] c"wakeup\00", align 1, !dbg !1773
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_wakeup_stats__205_217_wakeup_sources_sysfs_init2206], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @wakeup_source_sysfs_add(ptr noundef %parent, ptr noundef %ws) #0 align 16 !dbg !1785 {
entry:
  %retval = alloca i32, align 4
  %parent.addr = alloca ptr, align 8
  %ws.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !1789, metadata !DIExpression()), !dbg !1792
  store ptr %ws, ptr %ws.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ws.addr, metadata !1790, metadata !DIExpression()), !dbg !1793
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #14, !dbg !1794
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !1791, metadata !DIExpression()), !dbg !1795
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !1796
  %1 = load ptr, ptr %ws.addr, align 8, !dbg !1797
  %call = call ptr @wakeup_source_device_create(ptr noundef %0, ptr noundef %1) #15, !dbg !1798
  store ptr %call, ptr %dev, align 8, !dbg !1799
  %2 = load ptr, ptr %dev, align 8, !dbg !1800
  %call1 = call zeroext i1 @IS_ERR(ptr noundef %2) #15, !dbg !1802
  br i1 %call1, label %if.then, label %if.end, !dbg !1803

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %dev, align 8, !dbg !1804
  %call2 = call i64 @PTR_ERR(ptr noundef %3) #15, !dbg !1805
  %conv = trunc i64 %call2 to i32, !dbg !1805
  store i32 %conv, ptr %retval, align 4, !dbg !1806
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1806

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev, align 8, !dbg !1807
  %5 = load ptr, ptr %ws.addr, align 8, !dbg !1808
  %dev3 = getelementptr inbounds %struct.wakeup_source, ptr %5, i32 0, i32 17, !dbg !1809
  store ptr %4, ptr %dev3, align 8, !dbg !1810
  store i32 0, ptr %retval, align 4, !dbg !1811
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1811

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #14, !dbg !1812
  %6 = load i32, ptr %retval, align 4, !dbg !1812
  ret i32 %6, !dbg !1812
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @wakeup_source_device_create(ptr noundef %parent, ptr noundef %ws) #0 align 16 !dbg !1813 {
entry:
  %retval = alloca ptr, align 8
  %parent.addr = alloca ptr, align 8
  %ws.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !1817, metadata !DIExpression()), !dbg !1822
  store ptr %ws, ptr %ws.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ws.addr, metadata !1818, metadata !DIExpression()), !dbg !1823
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #14, !dbg !1824
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !1819, metadata !DIExpression()), !dbg !1825
  store ptr null, ptr %dev, align 8, !dbg !1825
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #14, !dbg !1826
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !1820, metadata !DIExpression()), !dbg !1827
  %call = call noalias ptr @kzalloc(i64 noundef 728, i32 noundef 3264) #16, !dbg !1828
  store ptr %call, ptr %dev, align 8, !dbg !1829
  %0 = load ptr, ptr %dev, align 8, !dbg !1830
  %tobool = icmp ne ptr %0, null, !dbg !1830
  br i1 %tobool, label %if.end, label %if.then, !dbg !1832

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval1, align 4, !dbg !1833
  br label %error, !dbg !1835

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dev, align 8, !dbg !1836
  call void @device_initialize(ptr noundef %1) #15, !dbg !1837
  %2 = load ptr, ptr %dev, align 8, !dbg !1838
  %devt = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 26, !dbg !1839
  store i32 0, ptr %devt, align 4, !dbg !1840
  %3 = load ptr, ptr @wakeup_class, align 8, !dbg !1841
  %4 = load ptr, ptr %dev, align 8, !dbg !1842
  %class = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 30, !dbg !1843
  store ptr %3, ptr %class, align 8, !dbg !1844
  %5 = load ptr, ptr %parent.addr, align 8, !dbg !1845
  %6 = load ptr, ptr %dev, align 8, !dbg !1846
  %parent2 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 1, !dbg !1847
  store ptr %5, ptr %parent2, align 8, !dbg !1848
  %7 = load ptr, ptr %dev, align 8, !dbg !1849
  %groups = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 31, !dbg !1850
  store ptr @wakeup_source_groups, ptr %groups, align 8, !dbg !1851
  %8 = load ptr, ptr %dev, align 8, !dbg !1852
  %release = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 32, !dbg !1853
  store ptr @device_create_release, ptr %release, align 8, !dbg !1854
  %9 = load ptr, ptr %dev, align 8, !dbg !1855
  %10 = load ptr, ptr %ws.addr, align 8, !dbg !1856
  call void @dev_set_drvdata(ptr noundef %9, ptr noundef %10) #15, !dbg !1857
  %11 = load ptr, ptr %dev, align 8, !dbg !1858
  call void @device_set_pm_not_required(ptr noundef %11) #15, !dbg !1859
  %12 = load ptr, ptr %dev, align 8, !dbg !1860
  %13 = load ptr, ptr %ws.addr, align 8, !dbg !1861
  %id = getelementptr inbounds %struct.wakeup_source, ptr %13, i32 0, i32 1, !dbg !1862
  %14 = load i32, ptr %id, align 8, !dbg !1862
  %call3 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %12, ptr noundef @.str, i32 noundef %14) #15, !dbg !1863
  store i32 %call3, ptr %retval1, align 4, !dbg !1864
  %15 = load i32, ptr %retval1, align 4, !dbg !1865
  %tobool4 = icmp ne i32 %15, 0, !dbg !1865
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !1867

if.then5:                                         ; preds = %if.end
  br label %error, !dbg !1868

if.end6:                                          ; preds = %if.end
  %16 = load ptr, ptr %dev, align 8, !dbg !1869
  %call7 = call i32 @device_add(ptr noundef %16) #15, !dbg !1870
  store i32 %call7, ptr %retval1, align 4, !dbg !1871
  %17 = load i32, ptr %retval1, align 4, !dbg !1872
  %tobool8 = icmp ne i32 %17, 0, !dbg !1872
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !1874

if.then9:                                         ; preds = %if.end6
  br label %error, !dbg !1875

if.end10:                                         ; preds = %if.end6
  %18 = load ptr, ptr %dev, align 8, !dbg !1876
  store ptr %18, ptr %retval, align 8, !dbg !1877
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1877

error:                                            ; preds = %if.then9, %if.then5, %if.then
  call void @llvm.dbg.label(metadata !1821), !dbg !1878
  %19 = load ptr, ptr %dev, align 8, !dbg !1879
  call void @put_device(ptr noundef %19) #15, !dbg !1880
  %20 = load i32, ptr %retval1, align 4, !dbg !1881
  %conv = sext i32 %20 to i64, !dbg !1881
  %call11 = call ptr @ERR_PTR(i64 noundef %conv) #15, !dbg !1882
  store ptr %call11, ptr %retval, align 8, !dbg !1883
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1883

cleanup:                                          ; preds = %error, %if.end10
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #14, !dbg !1884
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #14, !dbg !1884
  %21 = load ptr, ptr %retval, align 8, !dbg !1884
  ret ptr %21, !dbg !1884
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #3 align 16 !dbg !1885 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1890, metadata !DIExpression()), !dbg !1891
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !1892
  %1 = ptrtoint ptr %0 to i64, !dbg !1892
  %2 = inttoptr i64 %1 to ptr, !dbg !1892
  %3 = ptrtoint ptr %2 to i64, !dbg !1892
  %cmp = icmp uge i64 %3, -4095, !dbg !1892
  %lnot = xor i1 %cmp, true, !dbg !1892
  %lnot1 = xor i1 %lnot, true, !dbg !1892
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !1892
  %conv = sext i32 %lnot.ext to i64, !dbg !1892
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !1892
  %tobool = icmp ne i64 %expval, 0, !dbg !1892
  ret i1 %tobool, !dbg !1893
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #3 align 16 !dbg !1894 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !1898, metadata !DIExpression()), !dbg !1899
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !1900
  %1 = ptrtoint ptr %0 to i64, !dbg !1901
  ret i64 %1, !dbg !1902
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pm_wakeup_source_sysfs_add(ptr noundef %parent) #0 align 16 !dbg !1903 {
entry:
  %retval = alloca i32, align 4
  %parent.addr = alloca ptr, align 8
  store ptr %parent, ptr %parent.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %parent.addr, metadata !1905, metadata !DIExpression()), !dbg !1906
  %0 = load ptr, ptr %parent.addr, align 8, !dbg !1907
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !1909
  %wakeup = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 6, !dbg !1910
  %1 = load ptr, ptr %wakeup, align 8, !dbg !1910
  %tobool = icmp ne ptr %1, null, !dbg !1907
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !1911

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %parent.addr, align 8, !dbg !1912
  %power1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 11, !dbg !1913
  %wakeup2 = getelementptr inbounds %struct.dev_pm_info, ptr %power1, i32 0, i32 6, !dbg !1914
  %3 = load ptr, ptr %wakeup2, align 8, !dbg !1914
  %dev = getelementptr inbounds %struct.wakeup_source, ptr %3, i32 0, i32 17, !dbg !1915
  %4 = load ptr, ptr %dev, align 8, !dbg !1915
  %tobool3 = icmp ne ptr %4, null, !dbg !1912
  br i1 %tobool3, label %if.then, label %if.end, !dbg !1916

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, ptr %retval, align 4, !dbg !1917
  br label %return, !dbg !1917

if.end:                                           ; preds = %lor.lhs.false
  %5 = load ptr, ptr %parent.addr, align 8, !dbg !1918
  %6 = load ptr, ptr %parent.addr, align 8, !dbg !1919
  %power4 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, !dbg !1920
  %wakeup5 = getelementptr inbounds %struct.dev_pm_info, ptr %power4, i32 0, i32 6, !dbg !1921
  %7 = load ptr, ptr %wakeup5, align 8, !dbg !1921
  %call = call i32 @wakeup_source_sysfs_add(ptr noundef %5, ptr noundef %7) #15, !dbg !1922
  store i32 %call, ptr %retval, align 4, !dbg !1923
  br label %return, !dbg !1923

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, ptr %retval, align 4, !dbg !1924
  ret i32 %8, !dbg !1924
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @wakeup_source_sysfs_remove(ptr noundef %ws) #0 align 16 !dbg !1925 {
entry:
  %ws.addr = alloca ptr, align 8
  store ptr %ws, ptr %ws.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ws.addr, metadata !1929, metadata !DIExpression()), !dbg !1930
  %0 = load ptr, ptr %ws.addr, align 8, !dbg !1931
  %dev = getelementptr inbounds %struct.wakeup_source, ptr %0, i32 0, i32 17, !dbg !1932
  %1 = load ptr, ptr %dev, align 8, !dbg !1932
  call void @device_unregister(ptr noundef %1) #15, !dbg !1933
  ret void, !dbg !1934
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1935 dso_local void @device_unregister(ptr noundef) #4

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_wakeup_stats__205_217_wakeup_sources_sysfs_init2() #5 section ".init.text" align 16 !dbg !1936 {
entry:
  %call = call i32 @wakeup_sources_sysfs_init() #17, !dbg !1937
  ret i32 %call, !dbg !1937
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @wakeup_sources_sysfs_init() #5 section ".init.text" align 16 !dbg !1938 {
entry:
  %call = call ptr @class_create(ptr noundef @.str.16) #15, !dbg !1939
  store ptr %call, ptr @wakeup_class, align 8, !dbg !1940
  %0 = load ptr, ptr @wakeup_class, align 8, !dbg !1941
  %call1 = call i32 @PTR_ERR_OR_ZERO(ptr noundef %0) #15, !dbg !1942
  ret i32 %call1, !dbg !1943
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !1944 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !1948, metadata !DIExpression()), !dbg !1950
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !1949, metadata !DIExpression()), !dbg !1951
  %0 = load i64, ptr %size.addr, align 8, !dbg !1952
  %1 = load i32, ptr %flags.addr, align 4, !dbg !1953
  %or = or i32 %1, 256, !dbg !1954
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !1955
  ret ptr %call, !dbg !1956
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1957 dso_local void @device_initialize(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @device_create_release(ptr noundef %dev) #0 align 16 !dbg !1958 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1960, metadata !DIExpression()), !dbg !1961
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1962
  call void @kfree(ptr noundef %0) #15, !dbg !1963
  ret void, !dbg !1964
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dev_set_drvdata(ptr noundef %dev, ptr noundef %data) #3 align 16 !dbg !1965 {
entry:
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1969, metadata !DIExpression()), !dbg !1971
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !1970, metadata !DIExpression()), !dbg !1972
  %0 = load ptr, ptr %data.addr, align 8, !dbg !1973
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !1974
  %driver_data = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8, !dbg !1975
  store ptr %0, ptr %driver_data, align 8, !dbg !1976
  ret void, !dbg !1977
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @device_set_pm_not_required(ptr noundef %dev) #3 align 16 !dbg !1978 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1980, metadata !DIExpression()), !dbg !1981
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1982
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !1983
  %no_pm = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 1, !dbg !1984
  %bf.load = load i16, ptr %no_pm, align 4, !dbg !1985
  %bf.clear = and i16 %bf.load, -129, !dbg !1985
  %bf.set = or i16 %bf.clear, 128, !dbg !1985
  store i16 %bf.set, ptr %no_pm, align 4, !dbg !1985
  ret void, !dbg !1986
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1987 dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1990 dso_local i32 @device_add(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1991 dso_local void @put_device(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @ERR_PTR(i64 noundef %error) #3 align 16 !dbg !1992 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, ptr %error.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %error.addr, metadata !1996, metadata !DIExpression()), !dbg !1997
  %0 = load i64, ptr %error.addr, align 8, !dbg !1998
  %1 = inttoptr i64 %0 to ptr, !dbg !1999
  ret ptr %1, !dbg !2000
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !2001 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2003, metadata !DIExpression()), !dbg !2008
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2004, metadata !DIExpression()), !dbg !2009
  %0 = load i64, ptr %size.addr, align 8, !dbg !2010
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2011
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2012

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2013
  %tobool = icmp ne i64 %2, 0, !dbg !2013
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2014

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !2015
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2005, metadata !DIExpression()), !dbg !2016
  %3 = load i64, ptr %size.addr, align 8, !dbg !2017
  %cmp = icmp ugt i64 %3, 8192, !dbg !2019
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2020

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2021
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2022
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !2023
  store ptr %call, ptr %retval, align 8, !dbg !2024
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2024

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2025
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !2025
  store i32 %call2, ptr %index, align 4, !dbg !2026
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2027
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2028
  %9 = ptrtoint ptr %8 to i64, !dbg !2028
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !2029
  %idxprom = zext i32 %call3 to i64, !dbg !2030
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2030
  %10 = load i32, ptr %index, align 4, !dbg !2031
  %idxprom4 = zext i32 %10 to i64, !dbg !2030
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2030
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2030
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2032
  %13 = load i64, ptr %size.addr, align 8, !dbg !2033
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !2034
  store ptr %call6, ptr %retval, align 8, !dbg !2035
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2035

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !2036
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2037
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2038
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !2039
  store ptr %call8, ptr %retval, align 8, !dbg !2040
  br label %return, !dbg !2040

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2041
  ret ptr %16, !dbg !2041
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2042 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #10 align 16 !dbg !2043 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2047, metadata !DIExpression()), !dbg !2049
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2048, metadata !DIExpression()), !dbg !2050
  %0 = load i64, ptr %size.addr, align 8, !dbg !2051
  %tobool = icmp ne i64 %0, 0, !dbg !2051
  br i1 %tobool, label %if.end, label %if.then, !dbg !2053

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2054
  br label %return, !dbg !2054

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2055
  %cmp = icmp ule i64 %1, 8, !dbg !2057
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2058

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2059
  br label %return, !dbg !2059

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2060
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2062
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2063

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2064
  %cmp4 = icmp ule i64 %3, 96, !dbg !2065
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2066

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2067
  br label %return, !dbg !2067

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2068
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2070
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2071

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2072
  %cmp9 = icmp ule i64 %5, 192, !dbg !2073
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2074

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2075
  br label %return, !dbg !2075

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2076
  %cmp12 = icmp ule i64 %6, 8, !dbg !2078
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2079

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2080
  br label %return, !dbg !2080

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2081
  %cmp15 = icmp ule i64 %7, 16, !dbg !2083
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2084

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2085
  br label %return, !dbg !2085

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2086
  %cmp18 = icmp ule i64 %8, 32, !dbg !2088
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2089

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2090
  br label %return, !dbg !2090

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2091
  %cmp21 = icmp ule i64 %9, 64, !dbg !2093
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2094

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2095
  br label %return, !dbg !2095

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2096
  %cmp24 = icmp ule i64 %10, 128, !dbg !2098
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2099

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2100
  br label %return, !dbg !2100

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2101
  %cmp27 = icmp ule i64 %11, 256, !dbg !2103
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2104

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2105
  br label %return, !dbg !2105

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2106
  %cmp30 = icmp ule i64 %12, 512, !dbg !2108
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2109

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2110
  br label %return, !dbg !2110

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2111
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2113
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2114

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2115
  br label %return, !dbg !2115

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2116
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2118
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2119

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2120
  br label %return, !dbg !2120

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2121
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2123
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2124

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2125
  br label %return, !dbg !2125

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2126
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2128
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2129

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2130
  br label %return, !dbg !2130

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2131
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2133
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2134

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2135
  br label %return, !dbg !2135

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2136
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2138
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2139

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2140
  br label %return, !dbg !2140

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2141
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2143
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2144

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2145
  br label %return, !dbg !2145

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2146
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2148
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2149

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2150
  br label %return, !dbg !2150

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2151
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2153
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2154

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2155
  br label %return, !dbg !2155

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2156
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2158
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2159

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2160
  br label %return, !dbg !2160

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2161
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2163
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2164

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2165
  br label %return, !dbg !2165

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2166
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2168
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2169

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2170
  br label %return, !dbg !2170

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2171, !range !2173, !noundef !525
  %tobool69 = trunc i8 %25 to i1, !dbg !2171
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2174

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2175

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #19, !dbg !2176, !srcloc !2179
  unreachable, !dbg !2176

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2180

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2181

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2182

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2184

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2182

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #14, !dbg !2186, !srcloc !2188
  br label %do.end75, !dbg !2186

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2182

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2189
  br label %return, !dbg !2189

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2190
  ret i32 %26, !dbg !2190
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2191 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #10 align 16 !dbg !2197 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2201, metadata !DIExpression()), !dbg !2203
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2202, metadata !DIExpression()), !dbg !2204
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2205
  %and = and i32 %0, 17, !dbg !2205
  %cmp = icmp eq i32 %and, 0, !dbg !2205
  %lnot = xor i1 %cmp, true, !dbg !2205
  %lnot1 = xor i1 %lnot, true, !dbg !2205
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2205
  %conv = sext i32 %lnot.ext to i64, !dbg !2205
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2205
  %tobool = icmp ne i64 %expval, 0, !dbg !2205
  br i1 %tobool, label %if.then, label %if.end, !dbg !2207

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2208
  br label %return, !dbg !2208

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2209
  %and2 = and i32 %1, 1, !dbg !2211
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2211
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2212

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2213
  br label %return, !dbg !2213

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2214
  br label %return, !dbg !2214

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2216
  ret i32 %2, !dbg !2216
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2217 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2218 dso_local void @__compiletime_assert_204() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @name_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2219 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %ws = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2221, metadata !DIExpression()), !dbg !2225
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2222, metadata !DIExpression()), !dbg !2226
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2223, metadata !DIExpression()), !dbg !2227
  call void @llvm.lifetime.start.p0(i64 8, ptr %ws) #14, !dbg !2228
  call void @llvm.dbg.declare(metadata ptr %ws, metadata !2224, metadata !DIExpression()), !dbg !2229
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2230
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #15, !dbg !2231
  store ptr %call, ptr %ws, align 8, !dbg !2229
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !2232
  %2 = load ptr, ptr %ws, align 8, !dbg !2233
  %name = getelementptr inbounds %struct.wakeup_source, ptr %2, i32 0, i32 0, !dbg !2234
  %3 = load ptr, ptr %name, align 8, !dbg !2234
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef @.str.3, ptr noundef %3) #15, !dbg !2235
  %conv = sext i32 %call1 to i64, !dbg !2235
  call void @llvm.lifetime.end.p0(i64 8, ptr %ws) #14, !dbg !2236
  ret i64 %conv, !dbg !2237
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_get_drvdata(ptr noundef %dev) #3 align 16 !dbg !2238 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2242, metadata !DIExpression()), !dbg !2243
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2244
  %driver_data = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8, !dbg !2245
  %1 = load ptr, ptr %driver_data, align 8, !dbg !2245
  ret ptr %1, !dbg !2246
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2247 dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @active_count_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2250 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %ws = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2252, metadata !DIExpression()), !dbg !2256
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2253, metadata !DIExpression()), !dbg !2256
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2254, metadata !DIExpression()), !dbg !2256
  call void @llvm.lifetime.start.p0(i64 8, ptr %ws) #14, !dbg !2256
  call void @llvm.dbg.declare(metadata ptr %ws, metadata !2255, metadata !DIExpression()), !dbg !2256
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2256
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #15, !dbg !2256
  store ptr %call, ptr %ws, align 8, !dbg !2256
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !2256
  %2 = load ptr, ptr %ws, align 8, !dbg !2256
  %active_count = getelementptr inbounds %struct.wakeup_source, ptr %2, i32 0, i32 13, !dbg !2256
  %3 = load i64, ptr %active_count, align 8, !dbg !2256
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef @.str.5, i64 noundef %3) #15, !dbg !2256
  %conv = sext i32 %call1 to i64, !dbg !2256
  call void @llvm.lifetime.end.p0(i64 8, ptr %ws) #14, !dbg !2256
  ret i64 %conv, !dbg !2256
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @event_count_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2257 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %ws = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2259, metadata !DIExpression()), !dbg !2263
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2260, metadata !DIExpression()), !dbg !2263
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2261, metadata !DIExpression()), !dbg !2263
  call void @llvm.lifetime.start.p0(i64 8, ptr %ws) #14, !dbg !2263
  call void @llvm.dbg.declare(metadata ptr %ws, metadata !2262, metadata !DIExpression()), !dbg !2263
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2263
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #15, !dbg !2263
  store ptr %call, ptr %ws, align 8, !dbg !2263
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !2263
  %2 = load ptr, ptr %ws, align 8, !dbg !2263
  %event_count = getelementptr inbounds %struct.wakeup_source, ptr %2, i32 0, i32 12, !dbg !2263
  %3 = load i64, ptr %event_count, align 8, !dbg !2263
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef @.str.5, i64 noundef %3) #15, !dbg !2263
  %conv = sext i32 %call1 to i64, !dbg !2263
  call void @llvm.lifetime.end.p0(i64 8, ptr %ws) #14, !dbg !2263
  ret i64 %conv, !dbg !2263
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @wakeup_count_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2264 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %ws = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2266, metadata !DIExpression()), !dbg !2270
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2267, metadata !DIExpression()), !dbg !2270
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2268, metadata !DIExpression()), !dbg !2270
  call void @llvm.lifetime.start.p0(i64 8, ptr %ws) #14, !dbg !2270
  call void @llvm.dbg.declare(metadata ptr %ws, metadata !2269, metadata !DIExpression()), !dbg !2270
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2270
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #15, !dbg !2270
  store ptr %call, ptr %ws, align 8, !dbg !2270
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !2270
  %2 = load ptr, ptr %ws, align 8, !dbg !2270
  %wakeup_count = getelementptr inbounds %struct.wakeup_source, ptr %2, i32 0, i32 16, !dbg !2270
  %3 = load i64, ptr %wakeup_count, align 8, !dbg !2270
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef @.str.5, i64 noundef %3) #15, !dbg !2270
  %conv = sext i32 %call1 to i64, !dbg !2270
  call void @llvm.lifetime.end.p0(i64 8, ptr %ws) #14, !dbg !2270
  ret i64 %conv, !dbg !2270
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @expire_count_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2271 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %ws = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2273, metadata !DIExpression()), !dbg !2277
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2274, metadata !DIExpression()), !dbg !2277
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2275, metadata !DIExpression()), !dbg !2277
  call void @llvm.lifetime.start.p0(i64 8, ptr %ws) #14, !dbg !2277
  call void @llvm.dbg.declare(metadata ptr %ws, metadata !2276, metadata !DIExpression()), !dbg !2277
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2277
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #15, !dbg !2277
  store ptr %call, ptr %ws, align 8, !dbg !2277
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !2277
  %2 = load ptr, ptr %ws, align 8, !dbg !2277
  %expire_count = getelementptr inbounds %struct.wakeup_source, ptr %2, i32 0, i32 15, !dbg !2277
  %3 = load i64, ptr %expire_count, align 8, !dbg !2277
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef @.str.5, i64 noundef %3) #15, !dbg !2277
  %conv = sext i32 %call1 to i64, !dbg !2277
  call void @llvm.lifetime.end.p0(i64 8, ptr %ws) #14, !dbg !2277
  ret i64 %conv, !dbg !2277
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @active_time_ms_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2278 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %ws = alloca ptr, align 8
  %active_time = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2280, metadata !DIExpression()), !dbg !2285
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2281, metadata !DIExpression()), !dbg !2286
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2282, metadata !DIExpression()), !dbg !2287
  call void @llvm.lifetime.start.p0(i64 8, ptr %ws) #14, !dbg !2288
  call void @llvm.dbg.declare(metadata ptr %ws, metadata !2283, metadata !DIExpression()), !dbg !2289
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2290
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #15, !dbg !2291
  store ptr %call, ptr %ws, align 8, !dbg !2289
  call void @llvm.lifetime.start.p0(i64 8, ptr %active_time) #14, !dbg !2292
  call void @llvm.dbg.declare(metadata ptr %active_time, metadata !2284, metadata !DIExpression()), !dbg !2293
  %1 = load ptr, ptr %ws, align 8, !dbg !2294
  %active = getelementptr inbounds %struct.wakeup_source, ptr %1, i32 0, i32 18, !dbg !2295
  %bf.load = load i8, ptr %active, align 8, !dbg !2295
  %bf.clear = and i8 %bf.load, 1, !dbg !2295
  %bf.cast = trunc i8 %bf.clear to i1, !dbg !2295
  br i1 %bf.cast, label %cond.true, label %cond.false, !dbg !2294

cond.true:                                        ; preds = %entry
  %call1 = call i64 @ktime_get() #15, !dbg !2296
  %2 = load ptr, ptr %ws, align 8, !dbg !2296
  %last_time = getelementptr inbounds %struct.wakeup_source, ptr %2, i32 0, i32 9, !dbg !2296
  %3 = load i64, ptr %last_time, align 8, !dbg !2296
  %sub = sub i64 %call1, %3, !dbg !2296
  br label %cond.end, !dbg !2294

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2294

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %sub, %cond.true ], [ 0, %cond.false ], !dbg !2294
  store i64 %cond, ptr %active_time, align 8, !dbg !2293
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !2297
  %5 = load i64, ptr %active_time, align 8, !dbg !2298
  %call2 = call i64 @ktime_to_ms(i64 noundef %5) #15, !dbg !2299
  %call3 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %4, ptr noundef @.str.10, i64 noundef %call2) #15, !dbg !2300
  %conv = sext i32 %call3 to i64, !dbg !2300
  call void @llvm.lifetime.end.p0(i64 8, ptr %active_time) #14, !dbg !2301
  call void @llvm.lifetime.end.p0(i64 8, ptr %ws) #14, !dbg !2301
  ret i64 %conv, !dbg !2302
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2303 dso_local i64 @ktime_get() #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ktime_to_ms(i64 noundef %kt) #3 align 16 !dbg !2305 {
entry:
  %kt.addr = alloca i64, align 8
  store i64 %kt, ptr %kt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kt.addr, metadata !2310, metadata !DIExpression()), !dbg !2311
  %0 = load i64, ptr %kt.addr, align 8, !dbg !2312
  %call = call i64 @ktime_divns(i64 noundef %0, i64 noundef 1000000) #15, !dbg !2313
  ret i64 %call, !dbg !2314
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ktime_divns(i64 noundef %kt, i64 noundef %div) #3 align 16 !dbg !2315 {
entry:
  %kt.addr = alloca i64, align 8
  %div.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i64 %kt, ptr %kt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kt.addr, metadata !2319, metadata !DIExpression()), !dbg !2326
  store i64 %div, ptr %div.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %div.addr, metadata !2320, metadata !DIExpression()), !dbg !2327
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !2328
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2321, metadata !DIExpression()), !dbg !2328
  %0 = load i64, ptr %div.addr, align 8, !dbg !2328
  %cmp = icmp slt i64 %0, 0, !dbg !2328
  %lnot = xor i1 %cmp, true, !dbg !2328
  %lnot1 = xor i1 %lnot, true, !dbg !2328
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2328
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2328
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !2329
  %tobool = icmp ne i32 %1, 0, !dbg !2329
  %lnot2 = xor i1 %tobool, true, !dbg !2329
  %lnot4 = xor i1 %lnot2, true, !dbg !2329
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !2329
  %conv = sext i32 %lnot.ext5 to i64, !dbg !2329
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2329
  %tobool6 = icmp ne i64 %expval, 0, !dbg !2329
  br i1 %tobool6, label %if.then, label %if.end, !dbg !2328

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2329

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #14, !dbg !2330
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2323, metadata !DIExpression()), !dbg !2330
  store i32 2305, ptr %__flags, align 4, !dbg !2330
  br label %do.body7, !dbg !2330

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !2331

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !2331

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !2330

do.body8:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !2333
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.11, i32 154, i32 %2, i64 12) #14, !dbg !2333, !srcloc !2335
  br label %do.cond9, !dbg !2333

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !2333

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !2330

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !2336

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !2336

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #14, !dbg !2329
  br label %do.cond14, !dbg !2330

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !2330

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !2330

if.end:                                           ; preds = %do.end15, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !2328
  %tobool16 = icmp ne i32 %3, 0, !dbg !2328
  %lnot17 = xor i1 %tobool16, true, !dbg !2328
  %lnot19 = xor i1 %lnot17, true, !dbg !2328
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !2328
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !2328
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !2328
  store i64 %expval22, ptr %tmp, align 8, !dbg !2329
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #14, !dbg !2338
  %4 = load i64, ptr %tmp, align 8, !dbg !2328
  %5 = load i64, ptr %kt.addr, align 8, !dbg !2339
  %6 = load i64, ptr %div.addr, align 8, !dbg !2340
  %div23 = sdiv i64 %5, %6, !dbg !2341
  ret i64 %div23, !dbg !2342
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @total_time_ms_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2343 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %ws = alloca ptr, align 8
  %active_time = alloca i64, align 8
  %total_time = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2345, metadata !DIExpression()), !dbg !2351
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2346, metadata !DIExpression()), !dbg !2352
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2347, metadata !DIExpression()), !dbg !2353
  call void @llvm.lifetime.start.p0(i64 8, ptr %ws) #14, !dbg !2354
  call void @llvm.dbg.declare(metadata ptr %ws, metadata !2348, metadata !DIExpression()), !dbg !2355
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2356
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #15, !dbg !2357
  store ptr %call, ptr %ws, align 8, !dbg !2355
  call void @llvm.lifetime.start.p0(i64 8, ptr %active_time) #14, !dbg !2358
  call void @llvm.dbg.declare(metadata ptr %active_time, metadata !2349, metadata !DIExpression()), !dbg !2359
  call void @llvm.lifetime.start.p0(i64 8, ptr %total_time) #14, !dbg !2360
  call void @llvm.dbg.declare(metadata ptr %total_time, metadata !2350, metadata !DIExpression()), !dbg !2361
  %1 = load ptr, ptr %ws, align 8, !dbg !2362
  %total_time1 = getelementptr inbounds %struct.wakeup_source, ptr %1, i32 0, i32 7, !dbg !2363
  %2 = load i64, ptr %total_time1, align 8, !dbg !2363
  store i64 %2, ptr %total_time, align 8, !dbg !2361
  %3 = load ptr, ptr %ws, align 8, !dbg !2364
  %active = getelementptr inbounds %struct.wakeup_source, ptr %3, i32 0, i32 18, !dbg !2366
  %bf.load = load i8, ptr %active, align 8, !dbg !2366
  %bf.clear = and i8 %bf.load, 1, !dbg !2366
  %bf.cast = trunc i8 %bf.clear to i1, !dbg !2366
  br i1 %bf.cast, label %if.then, label %if.end, !dbg !2367

if.then:                                          ; preds = %entry
  %call2 = call i64 @ktime_get() #15, !dbg !2368
  %4 = load ptr, ptr %ws, align 8, !dbg !2368
  %last_time = getelementptr inbounds %struct.wakeup_source, ptr %4, i32 0, i32 9, !dbg !2368
  %5 = load i64, ptr %last_time, align 8, !dbg !2368
  %sub = sub i64 %call2, %5, !dbg !2368
  store i64 %sub, ptr %active_time, align 8, !dbg !2370
  %6 = load i64, ptr %total_time, align 8, !dbg !2371
  %7 = load i64, ptr %active_time, align 8, !dbg !2371
  %add = add i64 %6, %7, !dbg !2371
  store i64 %add, ptr %total_time, align 8, !dbg !2372
  br label %if.end, !dbg !2373

if.end:                                           ; preds = %if.then, %entry
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !2374
  %9 = load i64, ptr %total_time, align 8, !dbg !2375
  %call3 = call i64 @ktime_to_ms(i64 noundef %9) #15, !dbg !2376
  %call4 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %8, ptr noundef @.str.10, i64 noundef %call3) #15, !dbg !2377
  %conv = sext i32 %call4 to i64, !dbg !2377
  call void @llvm.lifetime.end.p0(i64 8, ptr %total_time) #14, !dbg !2378
  call void @llvm.lifetime.end.p0(i64 8, ptr %active_time) #14, !dbg !2378
  call void @llvm.lifetime.end.p0(i64 8, ptr %ws) #14, !dbg !2378
  ret i64 %conv, !dbg !2379
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @max_time_ms_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2380 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %ws = alloca ptr, align 8
  %active_time = alloca i64, align 8
  %max_time = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2382, metadata !DIExpression()), !dbg !2388
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2383, metadata !DIExpression()), !dbg !2389
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2384, metadata !DIExpression()), !dbg !2390
  call void @llvm.lifetime.start.p0(i64 8, ptr %ws) #14, !dbg !2391
  call void @llvm.dbg.declare(metadata ptr %ws, metadata !2385, metadata !DIExpression()), !dbg !2392
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2393
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #15, !dbg !2394
  store ptr %call, ptr %ws, align 8, !dbg !2392
  call void @llvm.lifetime.start.p0(i64 8, ptr %active_time) #14, !dbg !2395
  call void @llvm.dbg.declare(metadata ptr %active_time, metadata !2386, metadata !DIExpression()), !dbg !2396
  call void @llvm.lifetime.start.p0(i64 8, ptr %max_time) #14, !dbg !2397
  call void @llvm.dbg.declare(metadata ptr %max_time, metadata !2387, metadata !DIExpression()), !dbg !2398
  %1 = load ptr, ptr %ws, align 8, !dbg !2399
  %max_time1 = getelementptr inbounds %struct.wakeup_source, ptr %1, i32 0, i32 8, !dbg !2400
  %2 = load i64, ptr %max_time1, align 8, !dbg !2400
  store i64 %2, ptr %max_time, align 8, !dbg !2398
  %3 = load ptr, ptr %ws, align 8, !dbg !2401
  %active = getelementptr inbounds %struct.wakeup_source, ptr %3, i32 0, i32 18, !dbg !2403
  %bf.load = load i8, ptr %active, align 8, !dbg !2403
  %bf.clear = and i8 %bf.load, 1, !dbg !2403
  %bf.cast = trunc i8 %bf.clear to i1, !dbg !2403
  br i1 %bf.cast, label %if.then, label %if.end4, !dbg !2404

if.then:                                          ; preds = %entry
  %call2 = call i64 @ktime_get() #15, !dbg !2405
  %4 = load ptr, ptr %ws, align 8, !dbg !2405
  %last_time = getelementptr inbounds %struct.wakeup_source, ptr %4, i32 0, i32 9, !dbg !2405
  %5 = load i64, ptr %last_time, align 8, !dbg !2405
  %sub = sub i64 %call2, %5, !dbg !2405
  store i64 %sub, ptr %active_time, align 8, !dbg !2407
  %6 = load i64, ptr %active_time, align 8, !dbg !2408
  %7 = load i64, ptr %max_time, align 8, !dbg !2410
  %cmp = icmp sgt i64 %6, %7, !dbg !2411
  br i1 %cmp, label %if.then3, label %if.end, !dbg !2412

if.then3:                                         ; preds = %if.then
  %8 = load i64, ptr %active_time, align 8, !dbg !2413
  store i64 %8, ptr %max_time, align 8, !dbg !2414
  br label %if.end, !dbg !2415

if.end:                                           ; preds = %if.then3, %if.then
  br label %if.end4, !dbg !2416

if.end4:                                          ; preds = %if.end, %entry
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !2417
  %10 = load i64, ptr %max_time, align 8, !dbg !2418
  %call5 = call i64 @ktime_to_ms(i64 noundef %10) #15, !dbg !2419
  %call6 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %9, ptr noundef @.str.10, i64 noundef %call5) #15, !dbg !2420
  %conv = sext i32 %call6 to i64, !dbg !2420
  call void @llvm.lifetime.end.p0(i64 8, ptr %max_time) #14, !dbg !2421
  call void @llvm.lifetime.end.p0(i64 8, ptr %active_time) #14, !dbg !2421
  call void @llvm.lifetime.end.p0(i64 8, ptr %ws) #14, !dbg !2421
  ret i64 %conv, !dbg !2422
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @last_change_ms_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2423 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %ws = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2425, metadata !DIExpression()), !dbg !2429
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2426, metadata !DIExpression()), !dbg !2430
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2427, metadata !DIExpression()), !dbg !2431
  call void @llvm.lifetime.start.p0(i64 8, ptr %ws) #14, !dbg !2432
  call void @llvm.dbg.declare(metadata ptr %ws, metadata !2428, metadata !DIExpression()), !dbg !2433
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2434
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #15, !dbg !2435
  store ptr %call, ptr %ws, align 8, !dbg !2433
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !2436
  %2 = load ptr, ptr %ws, align 8, !dbg !2437
  %last_time = getelementptr inbounds %struct.wakeup_source, ptr %2, i32 0, i32 9, !dbg !2438
  %3 = load i64, ptr %last_time, align 8, !dbg !2438
  %call1 = call i64 @ktime_to_ms(i64 noundef %3) #15, !dbg !2439
  %call2 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef @.str.10, i64 noundef %call1) #15, !dbg !2440
  %conv = sext i32 %call2 to i64, !dbg !2440
  call void @llvm.lifetime.end.p0(i64 8, ptr %ws) #14, !dbg !2441
  ret i64 %conv, !dbg !2442
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @prevent_suspend_time_ms_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2443 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %ws = alloca ptr, align 8
  %prevent_sleep_time = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2445, metadata !DIExpression()), !dbg !2450
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2446, metadata !DIExpression()), !dbg !2451
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2447, metadata !DIExpression()), !dbg !2452
  call void @llvm.lifetime.start.p0(i64 8, ptr %ws) #14, !dbg !2453
  call void @llvm.dbg.declare(metadata ptr %ws, metadata !2448, metadata !DIExpression()), !dbg !2454
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2455
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #15, !dbg !2456
  store ptr %call, ptr %ws, align 8, !dbg !2454
  call void @llvm.lifetime.start.p0(i64 8, ptr %prevent_sleep_time) #14, !dbg !2457
  call void @llvm.dbg.declare(metadata ptr %prevent_sleep_time, metadata !2449, metadata !DIExpression()), !dbg !2458
  %1 = load ptr, ptr %ws, align 8, !dbg !2459
  %prevent_sleep_time1 = getelementptr inbounds %struct.wakeup_source, ptr %1, i32 0, i32 11, !dbg !2460
  %2 = load i64, ptr %prevent_sleep_time1, align 8, !dbg !2460
  store i64 %2, ptr %prevent_sleep_time, align 8, !dbg !2458
  %3 = load ptr, ptr %ws, align 8, !dbg !2461
  %active = getelementptr inbounds %struct.wakeup_source, ptr %3, i32 0, i32 18, !dbg !2463
  %bf.load = load i8, ptr %active, align 8, !dbg !2463
  %bf.clear = and i8 %bf.load, 1, !dbg !2463
  %bf.cast = trunc i8 %bf.clear to i1, !dbg !2463
  br i1 %bf.cast, label %land.lhs.true, label %if.end, !dbg !2464

land.lhs.true:                                    ; preds = %entry
  %4 = load ptr, ptr %ws, align 8, !dbg !2465
  %autosleep_enabled = getelementptr inbounds %struct.wakeup_source, ptr %4, i32 0, i32 18, !dbg !2466
  %bf.load2 = load i8, ptr %autosleep_enabled, align 8, !dbg !2466
  %bf.lshr = lshr i8 %bf.load2, 1, !dbg !2466
  %bf.clear3 = and i8 %bf.lshr, 1, !dbg !2466
  %bf.cast4 = trunc i8 %bf.clear3 to i1, !dbg !2466
  br i1 %bf.cast4, label %if.then, label %if.end, !dbg !2467

if.then:                                          ; preds = %land.lhs.true
  %5 = load i64, ptr %prevent_sleep_time, align 8, !dbg !2468
  %call5 = call i64 @ktime_get() #15, !dbg !2468
  %6 = load ptr, ptr %ws, align 8, !dbg !2468
  %start_prevent_time = getelementptr inbounds %struct.wakeup_source, ptr %6, i32 0, i32 10, !dbg !2468
  %7 = load i64, ptr %start_prevent_time, align 8, !dbg !2468
  %sub = sub i64 %call5, %7, !dbg !2468
  %add = add i64 %5, %sub, !dbg !2468
  store i64 %add, ptr %prevent_sleep_time, align 8, !dbg !2470
  br label %if.end, !dbg !2471

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !2472
  %9 = load i64, ptr %prevent_sleep_time, align 8, !dbg !2473
  %call6 = call i64 @ktime_to_ms(i64 noundef %9) #15, !dbg !2474
  %call7 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %8, ptr noundef @.str.10, i64 noundef %call6) #15, !dbg !2475
  %conv = sext i32 %call7 to i64, !dbg !2475
  call void @llvm.lifetime.end.p0(i64 8, ptr %prevent_sleep_time) #14, !dbg !2476
  call void @llvm.lifetime.end.p0(i64 8, ptr %ws) #14, !dbg !2476
  ret i64 %conv, !dbg !2477
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2478 dso_local void @kfree(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2481 dso_local ptr @class_create(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @PTR_ERR_OR_ZERO(ptr noundef %ptr) #3 align 16 !dbg !2484 {
entry:
  %retval = alloca i32, align 4
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2488, metadata !DIExpression()), !dbg !2489
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2490
  %call = call zeroext i1 @IS_ERR(ptr noundef %0) #15, !dbg !2492
  br i1 %call, label %if.then, label %if.else, !dbg !2493

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ptr.addr, align 8, !dbg !2494
  %call1 = call i64 @PTR_ERR(ptr noundef %1) #15, !dbg !2495
  %conv = trunc i64 %call1 to i32, !dbg !2495
  store i32 %conv, ptr %retval, align 4, !dbg !2496
  br label %return, !dbg !2496

if.else:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2497
  br label %return, !dbg !2497

return:                                           ; preds = %if.else, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2498
  ret i32 %2, !dbg !2498
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { nounwind }
attributes #15 = { noredzone }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { cold noredzone }
attributes #18 = { noredzone allocsize(2) }
attributes #19 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783}
!llvm.ident = !{!1784}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_wakeup_stats__205_217_wakeup_sources_sysfs_init2206", scope: !2, file: !3, line: 217, type: !111, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/base/power/.wakeup_stats.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/base/power/wakeup_stats\22 -D KBUILD_BASENAME=\22wakeup_stats\22 -D KBUILD_MODNAME=\22wakeup_stats\22 -D __KBUILD_MODNAME=kmod_wakeup_stats -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/base/power/wakeup_stats.ll drivers/base/power/wakeup_stats.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !110, globals: !116, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/base/power/wakeup_stats.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "51171aee6658b6edf20ee45dedb21d9a")
!4 = !{!5, !12, !19, !25, !32, !37, !45, !53, !59, !66, !70, !79, !84, !89, !95, !100}
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
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "pm_qos_type", file: !54, line: 41, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/pm_qos.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8a2b5f150c1950efc9d96089627ea373")
!55 = !{!56, !57, !58}
!56 = !DIEnumerator(name: "PM_QOS_UNITIALIZED", value: 0)
!57 = !DIEnumerator(name: "PM_QOS_MAX", value: 1)
!58 = !DIEnumerator(name: "PM_QOS_MIN", value: 2)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_pm_qos_req_type", file: !54, line: 99, baseType: !7, size: 32, elements: !60)
!60 = !{!61, !62, !63, !64, !65}
!61 = !DIEnumerator(name: "DEV_PM_QOS_RESUME_LATENCY", value: 1)
!62 = !DIEnumerator(name: "DEV_PM_QOS_LATENCY_TOLERANCE", value: 2)
!63 = !DIEnumerator(name: "DEV_PM_QOS_MIN_FREQUENCY", value: 3)
!64 = !DIEnumerator(name: "DEV_PM_QOS_MAX_FREQUENCY", value: 4)
!65 = !DIEnumerator(name: "DEV_PM_QOS_FLAGS", value: 5)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "freq_qos_req_type", file: !54, line: 80, baseType: !7, size: 32, elements: !67)
!67 = !{!68, !69}
!68 = !DIEnumerator(name: "FREQ_QOS_MIN", value: 1)
!69 = !DIEnumerator(name: "FREQ_QOS_MAX", value: 2)
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !26, line: 547, baseType: !7, size: 32, elements: !71)
!71 = !{!72, !73, !74, !75, !76, !77, !78}
!72 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!73 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!74 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!75 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!76 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!77 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!78 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !26, line: 564, baseType: !7, size: 32, elements: !80)
!80 = !{!81, !82, !83}
!81 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!82 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!83 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !26, line: 577, baseType: !7, size: 32, elements: !85)
!85 = !{!86, !87, !88}
!86 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!87 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!88 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !26, line: 503, baseType: !7, size: 32, elements: !90)
!90 = !{!91, !92, !93, !94}
!91 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!92 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!93 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!94 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !96, line: 10, baseType: !7, size: 32, elements: !97)
!96 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!97 = !{!98, !99}
!98 = !DIEnumerator(name: "false", value: 0)
!99 = !DIEnumerator(name: "true", value: 1)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !101, line: 364, baseType: !7, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!102 = !{!103, !104, !105, !106, !107, !108, !109}
!103 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!104 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!105 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!106 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!107 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!108 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!109 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!110 = !{!111, !112, !114, !115}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !113, line: 154, baseType: !7)
!113 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!114 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!115 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!116 = !{!0, !117, !123, !128, !1678, !1681, !1683, !1688, !1693, !1707, !1710, !1715, !1717, !1719, !1724, !1726, !1728, !1730, !1732, !1734, !1739, !1741, !1746, !1751, !1756, !1758, !1760, !1762, !1764, !1766, !1771, !1773}
!117 = !DIGlobalVariableExpression(var: !118, expr: !DIExpression())
!118 = distinct !DIGlobalVariable(scope: null, file: !3, line: 157, type: !119, isLocal: true, isDefinition: true)
!119 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 72, elements: !121)
!120 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!121 = !{!122}
!122 = !DISubrange(count: 9)
!123 = !DIGlobalVariableExpression(var: !124, expr: !DIExpression())
!124 = distinct !DIGlobalVariable(scope: null, file: !101, line: 480, type: !125, isLocal: true, isDefinition: true)
!125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 168, elements: !126)
!126 = !{!127}
!127 = !DISubrange(count: 21)
!128 = !DIGlobalVariableExpression(var: !129, expr: !DIExpression())
!129 = distinct !DIGlobalVariable(name: "wakeup_class", scope: !2, file: !3, line: 21, type: !130, isLocal: true, isDefinition: true)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !132, line: 52, size: 768, elements: !133)
!132 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!133 = !{!134, !137, !799, !800, !1658, !1662, !1666, !1667, !1668, !1669, !1673, !1677}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !131, file: !132, line: 53, baseType: !135, size: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !120)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !131, file: !132, line: 55, baseType: !138, size: 64, offset: 64)
!138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !141)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !142, line: 84, size: 320, elements: !143)
!142 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!143 = !{!144, !145, !770, !795, !797}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !141, file: !142, line: 85, baseType: !135, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !141, file: !142, line: 86, baseType: !146, size: 64, offset: 64)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!149, !151, !273, !46}
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !113, line: 24, baseType: !150)
!150 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !153, line: 64, size: 512, elements: !154)
!153 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!154 = !{!155, !156, !162, !163, !251, !344, !755, !765, !766, !767, !768, !769}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !152, file: !153, line: 65, baseType: !135, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !152, file: !153, line: 66, baseType: !157, size: 128, offset: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !113, line: 190, size: 128, elements: !158)
!158 = !{!159, !161}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !157, file: !113, line: 191, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !157, file: !113, line: 191, baseType: !160, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !152, file: !153, line: 67, baseType: !151, size: 64, offset: 192)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !152, file: !153, line: 68, baseType: !164, size: 64, offset: 256)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !153, line: 168, size: 768, elements: !166)
!166 = !{!167, !168, !210, !211}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !165, file: !153, line: 169, baseType: !157, size: 128)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !165, file: !153, line: 170, baseType: !169, size: 32, offset: 128)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !170, line: 29, baseType: !171)
!170 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !170, line: 17, size: 32, elements: !172)
!172 = !{!173}
!173 = !DIDerivedType(tag: DW_TAG_member, scope: !171, file: !170, line: 18, baseType: !174, size: 32)
!174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !171, file: !170, line: 18, size: 32, elements: !175)
!175 = !{!176}
!176 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !174, file: !170, line: 19, baseType: !177, size: 32)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !178, line: 14, size: 32, elements: !179)
!178 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!179 = !{!180}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !177, file: !178, line: 15, baseType: !181, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !182, line: 44, baseType: !183)
!182 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !182, line: 14, size: 32, elements: !184)
!184 = !{!185}
!185 = !DIDerivedType(tag: DW_TAG_member, scope: !183, file: !182, line: 15, baseType: !186, size: 32)
!186 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !183, file: !182, line: 15, size: 32, elements: !187)
!187 = !{!188, !193, !203}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !186, file: !182, line: 16, baseType: !189, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !113, line: 174, baseType: !190)
!190 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !113, line: 172, size: 32, elements: !191)
!191 = !{!192}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !190, file: !113, line: 173, baseType: !46, size: 32)
!193 = !DIDerivedType(tag: DW_TAG_member, scope: !186, file: !182, line: 24, baseType: !194, size: 16)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !186, file: !182, line: 24, size: 16, elements: !195)
!195 = !{!196, !202}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !194, file: !182, line: 25, baseType: !197, size: 8)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !198, line: 17, baseType: !199)
!198 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !200, line: 21, baseType: !201)
!200 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!201 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !194, file: !182, line: 26, baseType: !197, size: 8, offset: 8)
!203 = !DIDerivedType(tag: DW_TAG_member, scope: !186, file: !182, line: 28, baseType: !204, size: 32)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !186, file: !182, line: 28, size: 32, elements: !205)
!205 = !{!206, !209}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !204, file: !182, line: 29, baseType: !207, size: 16)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !198, line: 19, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !200, line: 24, baseType: !150)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !204, file: !182, line: 30, baseType: !207, size: 16, offset: 16)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !165, file: !153, line: 171, baseType: !152, size: 512, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !165, file: !153, line: 172, baseType: !212, size: 64, offset: 704)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !153, line: 133, size: 192, elements: !215)
!215 = !{!216, !223, !228}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !214, file: !153, line: 134, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!46, !221}
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !214, file: !153, line: 135, baseType: !224, size: 64, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!135, !221}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !214, file: !153, line: 136, baseType: !229, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!46, !221, !233}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !153, line: 125, size: 20736, elements: !235)
!235 = !{!236, !241, !245, !246, !250}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !234, file: !153, line: 126, baseType: !237, size: 192)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 192, elements: !239)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!239 = !{!240}
!240 = !DISubrange(count: 3)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !234, file: !153, line: 127, baseType: !242, size: 4096, offset: 192)
!242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 4096, elements: !243)
!243 = !{!244}
!244 = !DISubrange(count: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !234, file: !153, line: 128, baseType: !46, size: 32, offset: 4288)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !234, file: !153, line: 129, baseType: !247, size: 16384, offset: 4320)
!247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 16384, elements: !248)
!248 = !{!249}
!249 = !DISubrange(count: 2048)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !234, file: !153, line: 130, baseType: !46, size: 32, offset: 20704)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !152, file: !153, line: 69, baseType: !252, size: 64, offset: 320)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !153, line: 116, size: 384, elements: !255)
!255 = !{!256, !260, !285, !286, !321, !325}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !254, file: !153, line: 117, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{null, !151}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !254, file: !153, line: 118, baseType: !261, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !142, line: 254, size: 128, elements: !264)
!264 = !{!265, !278}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !263, file: !142, line: 255, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{!269, !151, !273, !238}
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !113, line: 66, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !271, line: 73, baseType: !272)
!271 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!272 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !271, line: 15, baseType: !115)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !142, line: 30, size: 128, elements: !275)
!275 = !{!276, !277}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !274, file: !142, line: 31, baseType: !135, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !274, file: !142, line: 32, baseType: !149, size: 16, offset: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !263, file: !142, line: 256, baseType: !279, size: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!269, !151, !273, !135, !282}
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !113, line: 61, baseType: !283)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !271, line: 72, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !271, line: 16, baseType: !114)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !254, file: !153, line: 119, baseType: !138, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !254, file: !153, line: 120, baseType: !287, size: 64, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!290, !221}
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !293)
!293 = !{!294, !295, !301, !305, !313, !317}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !292, file: !6, line: 40, baseType: !5, size: 32)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !292, file: !6, line: 41, baseType: !296, size: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!299}
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !113, line: 35, baseType: !300)
!300 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !292, file: !6, line: 42, baseType: !302, size: 64, offset: 128)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!111}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !292, file: !6, line: 43, baseType: !306, size: 64, offset: 192)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!309, !311}
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !292, file: !6, line: 44, baseType: !314, size: 64, offset: 256)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!309}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !292, file: !6, line: 45, baseType: !318, size: 64, offset: 320)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !111}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !254, file: !153, line: 121, baseType: !322, size: 64, offset: 256)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DISubroutineType(types: !324)
!324 = !{!309, !221}
!325 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !254, file: !153, line: 122, baseType: !326, size: 64, offset: 320)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{null, !221, !329, !337}
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !331, line: 23, baseType: !332)
!331 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !331, line: 21, size: 32, elements: !333)
!333 = !{!334}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !332, file: !331, line: 22, baseType: !335, size: 32)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !113, line: 37, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !271, line: 49, baseType: !7)
!337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !331, line: 28, baseType: !339)
!339 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !331, line: 26, size: 32, elements: !340)
!340 = !{!341}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !339, file: !331, line: 27, baseType: !342, size: 32)
!342 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !113, line: 38, baseType: !343)
!343 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !271, line: 50, baseType: !7)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !152, file: !153, line: 70, baseType: !345, size: 64, offset: 384)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !347, line: 190, size: 1152, elements: !348)
!347 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!348 = !{!349, !350, !351, !352, !353, !361, !362, !363, !747, !748, !749, !750, !751, !754}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !346, file: !347, line: 191, baseType: !189, size: 32)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !346, file: !347, line: 192, baseType: !189, size: 32, offset: 32)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !346, file: !347, line: 202, baseType: !345, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !346, file: !347, line: 203, baseType: !135, size: 64, offset: 128)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !346, file: !347, line: 205, baseType: !354, size: 192, align: 64, offset: 192)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !355, line: 5, size: 192, align: 64, elements: !356)
!355 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!356 = !{!357, !358, !360}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !354, file: !355, line: 6, baseType: !114, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !354, file: !355, line: 7, baseType: !359, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !354, file: !355, line: 8, baseType: !359, size: 64, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !346, file: !347, line: 207, baseType: !309, size: 64, offset: 384)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !346, file: !347, line: 208, baseType: !7, size: 32, offset: 448)
!363 = !DIDerivedType(tag: DW_TAG_member, scope: !346, file: !347, line: 209, baseType: !364, size: 256, offset: 512)
!364 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !346, file: !347, line: 209, size: 256, elements: !365)
!365 = !{!366, !378, !382}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !364, file: !347, line: 210, baseType: !367, size: 256)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !347, line: 153, size: 256, elements: !368)
!368 = !{!369, !370, !374, !377}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !367, file: !347, line: 154, baseType: !114, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !367, file: !347, line: 156, baseType: !371, size: 64, offset: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !355, line: 12, size: 64, elements: !372)
!372 = !{!373}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !371, file: !355, line: 13, baseType: !359, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !367, file: !347, line: 162, baseType: !375, size: 64, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !347, line: 162, flags: DIFlagFwdDecl)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !367, file: !347, line: 167, baseType: !114, size: 64, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !364, file: !347, line: 211, baseType: !379, size: 64)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !347, line: 170, size: 64, elements: !380)
!380 = !{!381}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !379, file: !347, line: 171, baseType: !345, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !364, file: !347, line: 212, baseType: !383, size: 256)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !347, line: 174, size: 256, elements: !384)
!384 = !{!385, !742, !745, !746}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !383, file: !347, line: 175, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !388)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !347, line: 271, size: 768, elements: !389)
!389 = !{!390, !441, !445, !449, !456, !460, !464, !468, !469, !470, !471, !479}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !388, file: !347, line: 276, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = !DISubroutineType(types: !393)
!393 = !{!46, !394}
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !347, line: 251, size: 1216, elements: !396)
!396 = !{!397, !398, !402, !406, !407, !429, !430, !431, !432, !433, !434, !435, !436}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !395, file: !347, line: 253, baseType: !345, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !395, file: !347, line: 254, baseType: !399, size: 64, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !401, line: 537, flags: DIFlagFwdDecl)
!401 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!402 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !395, file: !347, line: 255, baseType: !403, size: 64, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !405, line: 66, flags: DIFlagFwdDecl)
!405 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!406 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !395, file: !347, line: 256, baseType: !111, size: 64, offset: 192)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !395, file: !347, line: 259, baseType: !408, size: 256, offset: 256)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !409, line: 66, size: 256, elements: !410)
!409 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!410 = !{!411, !421, !423, !428}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !408, file: !409, line: 67, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !413, line: 13, baseType: !414)
!413 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !113, line: 181, baseType: !415)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !113, line: 179, size: 64, elements: !416)
!416 = !{!417}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !415, file: !113, line: 180, baseType: !418, size: 64)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !198, line: 22, baseType: !419)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !200, line: 30, baseType: !420)
!420 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !408, file: !409, line: 68, baseType: !422, size: 32, offset: 64)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !178, line: 23, baseType: !177)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !408, file: !409, line: 70, baseType: !424, size: 32, offset: 96)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !425, line: 15, size: 32, elements: !426)
!425 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!426 = !{!427}
!427 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !424, file: !425, line: 20, baseType: !189, size: 32)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !408, file: !409, line: 72, baseType: !157, size: 128, offset: 128)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !395, file: !347, line: 260, baseType: !408, size: 256, offset: 512)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !395, file: !347, line: 261, baseType: !46, size: 32, offset: 768)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !395, file: !347, line: 262, baseType: !157, size: 128, offset: 832)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !395, file: !347, line: 263, baseType: !238, size: 64, offset: 960)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !395, file: !347, line: 265, baseType: !282, size: 64, offset: 1024)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !395, file: !347, line: 266, baseType: !299, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !395, file: !347, line: 267, baseType: !299, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !395, file: !347, line: 268, baseType: !437, size: 64, offset: 1152)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !439)
!439 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !440, line: 694, flags: DIFlagFwdDecl)
!440 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!441 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !388, file: !347, line: 277, baseType: !442, size: 64, offset: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DISubroutineType(types: !444)
!444 = !{null, !394}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !388, file: !347, line: 290, baseType: !446, size: 64, offset: 128)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DISubroutineType(types: !448)
!448 = !{!46, !403, !111}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !388, file: !347, line: 292, baseType: !450, size: 64, offset: 192)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DISubroutineType(types: !452)
!452 = !{!111, !403, !453}
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !113, line: 52, baseType: !455)
!455 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !271, line: 88, baseType: !420)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !388, file: !347, line: 293, baseType: !457, size: 64, offset: 256)
!457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !458, size: 64)
!458 = !DISubroutineType(types: !459)
!459 = !{!111, !403, !111, !453}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !388, file: !347, line: 294, baseType: !461, size: 64, offset: 320)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = !DISubroutineType(types: !463)
!463 = !{null, !403, !111}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !388, file: !347, line: 296, baseType: !465, size: 64, offset: 384)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!269, !394, !238, !282, !454}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !388, file: !347, line: 306, baseType: !282, size: 64, offset: 448)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !388, file: !347, line: 313, baseType: !299, size: 8, offset: 512)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !388, file: !347, line: 314, baseType: !465, size: 64, offset: 576)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !388, file: !347, line: 317, baseType: !472, size: 64, offset: 640)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!475, !394, !477}
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !476, line: 59, baseType: !7)
!476 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !347, line: 31, flags: DIFlagFwdDecl)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !388, file: !347, line: 320, baseType: !480, size: 64, offset: 704)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DISubroutineType(types: !482)
!482 = !{!46, !394, !483}
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !440, line: 625, size: 1344, elements: !485)
!485 = !{!486, !503, !703, !709, !716, !717, !722, !723, !728, !729, !732, !733, !734, !735, !736, !737, !740}
!486 = !DIDerivedType(tag: DW_TAG_member, scope: !484, file: !440, line: 628, baseType: !487, size: 128)
!487 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !484, file: !440, line: 628, size: 128, elements: !488)
!488 = !{!489, !494}
!489 = !DIDerivedType(tag: DW_TAG_member, scope: !487, file: !440, line: 629, baseType: !490, size: 128)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !487, file: !440, line: 629, size: 128, elements: !491)
!491 = !{!492, !493}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !490, file: !440, line: 631, baseType: !114, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !490, file: !440, line: 632, baseType: !114, size: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !487, file: !440, line: 635, baseType: !495, size: 128, align: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !113, line: 232, size: 128, align: 64, elements: !496)
!496 = !{!497, !499}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !495, file: !113, line: 233, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !495, file: !113, line: 234, baseType: !500, size: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DISubroutineType(types: !502)
!502 = !{null, !498}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !484, file: !440, line: 639, baseType: !504, size: 64, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !440, line: 733, size: 10240, elements: !506)
!506 = !{!507, !699}
!507 = !DIDerivedType(tag: DW_TAG_member, scope: !505, file: !440, line: 734, baseType: !508, size: 10240)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !505, file: !440, line: 734, size: 10240, elements: !509)
!509 = !{!510, !514, !528, !532, !533, !534, !535, !536, !537, !545, !546, !547, !556, !557, !558, !559, !560, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !602, !616, !619, !665, !666, !667, !670, !673, !674, !677, !678, !679, !686, !687}
!510 = !DIDerivedType(tag: DW_TAG_member, scope: !508, file: !440, line: 739, baseType: !511, size: 512, align: 512)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !508, file: !440, line: 739, size: 512, align: 512, elements: !512)
!512 = !{!513}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !511, file: !440, line: 747, baseType: !189, size: 32)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !508, file: !440, line: 750, baseType: !515, size: 128, offset: 512)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !516, line: 218, size: 128, elements: !517)
!516 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!517 = !{!518, !526, !527}
!518 = !DIDerivedType(tag: DW_TAG_member, scope: !515, file: !516, line: 219, baseType: !519, size: 32)
!519 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !515, file: !516, line: 219, size: 32, elements: !520)
!520 = !{!521, !522}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !519, file: !516, line: 220, baseType: !169, size: 32)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !519, file: !516, line: 221, baseType: !523)
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !516, line: 197, baseType: !524)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !516, line: 197, elements: !525)
!525 = !{}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !515, file: !516, line: 223, baseType: !7, size: 32, offset: 32)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !515, file: !516, line: 224, baseType: !111, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !508, file: !440, line: 752, baseType: !529, size: 64, offset: 640)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DISubroutineType(types: !531)
!531 = !{!114, !399, !114, !114, !114, !114}
!532 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !508, file: !440, line: 756, baseType: !114, size: 64, offset: 704)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !508, file: !440, line: 757, baseType: !114, size: 64, offset: 768)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !508, file: !440, line: 760, baseType: !114, size: 64, offset: 832)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !508, file: !440, line: 761, baseType: !114, size: 64, offset: 896)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !508, file: !440, line: 763, baseType: !114, size: 64, offset: 960)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !508, file: !440, line: 764, baseType: !538, size: 64, offset: 1024)
!538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !401, line: 299, baseType: !540)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !401, line: 299, size: 64, elements: !541)
!541 = !{!542}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !540, file: !401, line: 299, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !544, line: 18, baseType: !114)
!544 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!545 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !508, file: !440, line: 773, baseType: !189, size: 32, offset: 1088)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !508, file: !440, line: 785, baseType: !189, size: 32, offset: 1120)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !508, file: !440, line: 795, baseType: !548, size: 64, offset: 1152)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !440, line: 726, size: 128, elements: !550)
!550 = !{!551, !555}
!551 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !549, file: !440, line: 727, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !198, line: 23, baseType: !553)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !200, line: 31, baseType: !554)
!554 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !549, file: !440, line: 728, baseType: !46, size: 32, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !508, file: !440, line: 801, baseType: !114, size: 64, offset: 1216)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !508, file: !440, line: 804, baseType: !412, size: 64, offset: 1280)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !508, file: !440, line: 806, baseType: !46, size: 32, offset: 1344)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !508, file: !440, line: 808, baseType: !169, size: 32, offset: 1376)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !508, file: !440, line: 823, baseType: !561, size: 320, offset: 1408)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !562, line: 48, size: 320, elements: !563)
!562 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!563 = !{!564, !565, !566, !567, !568}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !561, file: !562, line: 49, baseType: !412, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !561, file: !562, line: 55, baseType: !412, size: 64, offset: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !561, file: !562, line: 57, baseType: !424, size: 32, offset: 128)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !561, file: !562, line: 59, baseType: !422, size: 32, offset: 160)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !561, file: !562, line: 60, baseType: !157, size: 128, offset: 192)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !508, file: !440, line: 825, baseType: !157, size: 128, offset: 1728)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !508, file: !440, line: 845, baseType: !46, size: 32, offset: 1856)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !508, file: !440, line: 849, baseType: !114, size: 64, offset: 1920)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !508, file: !440, line: 850, baseType: !114, size: 64, offset: 1984)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !508, file: !440, line: 852, baseType: !114, size: 64, offset: 2048)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !508, file: !440, line: 853, baseType: !114, size: 64, offset: 2112)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !508, file: !440, line: 854, baseType: !414, size: 64, offset: 2176)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !508, file: !440, line: 855, baseType: !114, size: 64, offset: 2240)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !508, file: !440, line: 856, baseType: !114, size: 64, offset: 2304)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !508, file: !440, line: 857, baseType: !114, size: 64, offset: 2368)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !508, file: !440, line: 858, baseType: !114, size: 64, offset: 2432)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !508, file: !440, line: 865, baseType: !581, size: 32, offset: 2496)
!581 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !582, line: 69, baseType: !583)
!582 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !582, line: 64, size: 32, elements: !584)
!584 = !{!585}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !583, file: !582, line: 65, baseType: !7, size: 32)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !508, file: !440, line: 867, baseType: !169, size: 32, offset: 2528)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !508, file: !440, line: 869, baseType: !114, size: 64, offset: 2560)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !508, file: !440, line: 869, baseType: !114, size: 64, offset: 2624)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !508, file: !440, line: 869, baseType: !114, size: 64, offset: 2688)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !508, file: !440, line: 869, baseType: !114, size: 64, offset: 2752)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !508, file: !440, line: 870, baseType: !114, size: 64, offset: 2816)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !508, file: !440, line: 870, baseType: !114, size: 64, offset: 2880)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !508, file: !440, line: 870, baseType: !114, size: 64, offset: 2944)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !508, file: !440, line: 871, baseType: !114, size: 64, offset: 3008)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !508, file: !440, line: 871, baseType: !114, size: 64, offset: 3072)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !508, file: !440, line: 871, baseType: !114, size: 64, offset: 3136)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !508, file: !440, line: 871, baseType: !114, size: 64, offset: 3200)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !508, file: !440, line: 873, baseType: !599, size: 3328, offset: 3264)
!599 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 3328, elements: !600)
!600 = !{!601}
!601 = !DISubrange(count: 52)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !508, file: !440, line: 875, baseType: !603, size: 1280, offset: 6592)
!603 = !DICompositeType(tag: DW_TAG_array_type, baseType: !604, size: 1280, elements: !614)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !605, line: 22, size: 320, elements: !606)
!605 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!606 = !{!607, !608, !609, !610}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !604, file: !605, line: 23, baseType: !422, size: 32)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !604, file: !605, line: 24, baseType: !418, size: 64, offset: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !604, file: !605, line: 26, baseType: !157, size: 128, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !604, file: !605, line: 28, baseType: !611, size: 64, offset: 256)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !198, line: 20, baseType: !613)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !200, line: 26, baseType: !46)
!614 = !{!615}
!615 = !DISubrange(count: 4)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !508, file: !440, line: 877, baseType: !617, size: 64, offset: 7872)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !440, line: 877, flags: DIFlagFwdDecl)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !508, file: !440, line: 880, baseType: !620, size: 1088, offset: 7936)
!620 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !621, line: 72, baseType: !622)
!621 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !621, line: 23, size: 1088, elements: !623)
!623 = !{!624, !625, !626, !627, !628, !631, !632, !633, !634, !659, !660, !661}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !622, file: !621, line: 28, baseType: !552, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !622, file: !621, line: 38, baseType: !414, size: 64, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !622, file: !621, line: 40, baseType: !114, size: 64, offset: 128)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !622, file: !621, line: 43, baseType: !561, size: 320, offset: 192)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !622, file: !621, line: 44, baseType: !629, size: 64, offset: 512)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !621, line: 44, flags: DIFlagFwdDecl)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !622, file: !621, line: 48, baseType: !114, size: 64, offset: 576)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !622, file: !621, line: 59, baseType: !408, size: 256, offset: 640)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !622, file: !621, line: 60, baseType: !111, size: 64, offset: 896)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !622, file: !621, line: 61, baseType: !635, size: 64, offset: 960)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !637)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !638, line: 13, size: 1216, elements: !639)
!638 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!639 = !{!640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !637, file: !638, line: 14, baseType: !111, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !637, file: !638, line: 15, baseType: !114, size: 64, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !637, file: !638, line: 17, baseType: !114, size: 64, offset: 128)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !637, file: !638, line: 17, baseType: !114, size: 64, offset: 192)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !637, file: !638, line: 18, baseType: !114, size: 64, offset: 256)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !637, file: !638, line: 18, baseType: !114, size: 64, offset: 320)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !637, file: !638, line: 19, baseType: !309, size: 64, offset: 384)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !637, file: !638, line: 21, baseType: !115, size: 64, offset: 448)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !637, file: !638, line: 23, baseType: !115, size: 64, offset: 512)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !637, file: !638, line: 24, baseType: !115, size: 64, offset: 576)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !637, file: !638, line: 25, baseType: !115, size: 64, offset: 640)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !637, file: !638, line: 26, baseType: !115, size: 64, offset: 704)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !637, file: !638, line: 27, baseType: !115, size: 64, offset: 768)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !637, file: !638, line: 28, baseType: !115, size: 64, offset: 832)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !637, file: !638, line: 29, baseType: !115, size: 64, offset: 896)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !637, file: !638, line: 30, baseType: !115, size: 64, offset: 960)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !637, file: !638, line: 31, baseType: !115, size: 64, offset: 1024)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !637, file: !638, line: 32, baseType: !115, size: 64, offset: 1088)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !637, file: !638, line: 33, baseType: !115, size: 64, offset: 1152)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !622, file: !621, line: 63, baseType: !189, size: 32, offset: 1024)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !622, file: !621, line: 69, baseType: !207, size: 16, offset: 1056)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !622, file: !621, line: 70, baseType: !662, size: 16, offset: 1072)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !198, line: 18, baseType: !663)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !200, line: 23, baseType: !664)
!664 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !508, file: !440, line: 882, baseType: !114, size: 64, offset: 9024)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !508, file: !440, line: 885, baseType: !169, size: 32, offset: 9088)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !508, file: !440, line: 886, baseType: !668, size: 64, offset: 9152)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !440, line: 732, flags: DIFlagFwdDecl)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !508, file: !440, line: 901, baseType: !671, size: 64, offset: 9216)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !331, line: 18, flags: DIFlagFwdDecl)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !508, file: !440, line: 904, baseType: !399, size: 64, offset: 9280)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !508, file: !440, line: 906, baseType: !675, size: 64, offset: 9344)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !440, line: 906, flags: DIFlagFwdDecl)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !508, file: !440, line: 930, baseType: !189, size: 32, offset: 9408)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !508, file: !440, line: 933, baseType: !189, size: 32, offset: 9440)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !508, file: !440, line: 935, baseType: !680, size: 64, offset: 9472)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !681, line: 103, size: 64, elements: !682)
!681 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!682 = !{!683}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !680, file: !681, line: 104, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !681, line: 101, flags: DIFlagFwdDecl)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !508, file: !440, line: 940, baseType: !412, size: 64, offset: 9536)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !508, file: !440, line: 942, baseType: !688, size: 256, offset: 9600)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !689, line: 98, size: 256, elements: !690)
!689 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!690 = !{!691, !692, !693}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !688, file: !689, line: 99, baseType: !412, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !688, file: !689, line: 100, baseType: !157, size: 128, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !688, file: !689, line: 101, baseType: !694, size: 64, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !689, line: 21, baseType: !695)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!696 = !DISubroutineType(types: !697)
!697 = !{null, !698}
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !505, file: !440, line: 986, baseType: !700, offset: 10240)
!700 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, elements: !701)
!701 = !{!702}
!702 = !DISubrange(count: -1)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !484, file: !440, line: 640, baseType: !704, size: 64, offset: 192)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !401, line: 297, baseType: !705)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !401, line: 297, size: 64, elements: !706)
!706 = !{!707}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !705, file: !401, line: 297, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !544, line: 19, baseType: !114)
!709 = !DIDerivedType(tag: DW_TAG_member, scope: !484, file: !440, line: 646, baseType: !710, size: 64, offset: 256)
!710 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !484, file: !440, line: 646, size: 64, elements: !711)
!711 = !{!712, !715}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !710, file: !440, line: 647, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !714)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !440, line: 542, baseType: !114)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !710, file: !440, line: 648, baseType: !714, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !484, file: !440, line: 666, baseType: !46, size: 32, offset: 320)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !484, file: !440, line: 667, baseType: !718, size: 64, offset: 384)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !440, line: 579, size: 320, elements: !720)
!720 = !{!721}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !719, file: !440, line: 580, baseType: !561, size: 320)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !484, file: !440, line: 670, baseType: !299, size: 8, offset: 448)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !484, file: !440, line: 681, baseType: !724, size: 256, offset: 512)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !484, file: !440, line: 678, size: 256, elements: !725)
!725 = !{!726, !727}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !724, file: !440, line: 679, baseType: !354, size: 192, align: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !724, file: !440, line: 680, baseType: !114, size: 64, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !484, file: !440, line: 689, baseType: !157, size: 128, offset: 768)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !484, file: !440, line: 691, baseType: !730, size: 64, offset: 896)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !440, line: 691, flags: DIFlagFwdDecl)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !484, file: !440, line: 694, baseType: !437, size: 64, offset: 960)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !484, file: !440, line: 697, baseType: !114, size: 64, offset: 1024)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !484, file: !440, line: 699, baseType: !399, size: 64, offset: 1088)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !484, file: !440, line: 700, baseType: !111, size: 64, offset: 1152)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !484, file: !440, line: 711, baseType: !412, size: 64, offset: 1216)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !484, file: !440, line: 717, baseType: !738, size: 64, offset: 1280)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !405, line: 54, flags: DIFlagFwdDecl)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !484, file: !440, line: 722, baseType: !741, offset: 1344)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !440, line: 570, elements: !525)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !383, file: !347, line: 176, baseType: !743, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !347, line: 35, flags: DIFlagFwdDecl)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !383, file: !347, line: 177, baseType: !454, size: 64, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !383, file: !347, line: 178, baseType: !345, size: 64, offset: 192)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !346, file: !347, line: 215, baseType: !111, size: 64, offset: 768)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !346, file: !347, line: 221, baseType: !552, size: 64, offset: 832)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !346, file: !347, line: 223, baseType: !150, size: 16, offset: 896)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !346, file: !347, line: 224, baseType: !149, size: 16, offset: 912)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !346, file: !347, line: 225, baseType: !752, size: 64, offset: 960)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !347, line: 36, flags: DIFlagFwdDecl)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !346, file: !347, line: 227, baseType: !495, size: 128, align: 64, offset: 1024)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !152, file: !153, line: 71, baseType: !756, size: 32, offset: 448)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !757, line: 19, size: 32, elements: !758)
!757 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!758 = !{!759}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !756, file: !757, line: 20, baseType: !760, size: 32)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !761, line: 113, baseType: !762)
!761 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !761, line: 111, size: 32, elements: !763)
!763 = !{!764}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !762, file: !761, line: 112, baseType: !189, size: 32)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !152, file: !153, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !152, file: !153, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !152, file: !153, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !152, file: !153, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !152, file: !153, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !141, file: !142, line: 88, baseType: !771, size: 64, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!149, !151, !774, !46}
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !142, line: 175, size: 512, elements: !776)
!776 = !{!777, !778, !779, !780, !786, !790, !791}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !775, file: !142, line: 176, baseType: !274, size: 128)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !775, file: !142, line: 177, baseType: !282, size: 64, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !775, file: !142, line: 178, baseType: !111, size: 64, offset: 192)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !775, file: !142, line: 179, baseType: !781, size: 64, offset: 256)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{!784}
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !440, line: 32, flags: DIFlagFwdDecl)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !775, file: !142, line: 180, baseType: !787, size: 64, offset: 320)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DISubroutineType(types: !789)
!789 = !{!269, !399, !151, !774, !238, !454, !282}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !775, file: !142, line: 182, baseType: !787, size: 64, offset: 384)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !775, file: !142, line: 184, baseType: !792, size: 64, offset: 448)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!46, !399, !151, !774, !483}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !141, file: !142, line: 90, baseType: !796, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !141, file: !142, line: 91, baseType: !798, size: 64, offset: 256)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !131, file: !132, line: 56, baseType: !138, size: 64, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !131, file: !132, line: 58, baseType: !801, size: 64, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!46, !804, !233}
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !806)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !807)
!807 = !{!808, !809, !811, !814, !815, !863, !1310, !1311, !1312, !1313, !1314, !1321, !1569, !1582, !1592, !1596, !1598, !1599, !1600, !1604, !1611, !1612, !1615, !1618, !1622, !1625, !1626, !1629, !1630, !1631, !1632, !1635, !1636, !1637, !1640, !1643, !1652, !1653, !1654, !1655, !1656, !1657}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !806, file: !26, line: 706, baseType: !152, size: 512)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !806, file: !26, line: 707, baseType: !810, size: 64, offset: 512)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !806, file: !26, line: 709, baseType: !812, size: 64, offset: 576)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !806, file: !26, line: 711, baseType: !135, size: 64, offset: 640)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !806, file: !26, line: 712, baseType: !816, size: 64, offset: 704)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !818)
!818 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !819)
!819 = !{!820, !821, !822, !823, !828, !832}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !818, file: !26, line: 90, baseType: !135, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !818, file: !26, line: 91, baseType: !138, size: 64, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !818, file: !26, line: 92, baseType: !801, size: 64, offset: 128)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !818, file: !26, line: 93, baseType: !824, size: 64, offset: 192)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!238, !804, !827, !329, !337}
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !818, file: !26, line: 95, baseType: !829, size: 64, offset: 256)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{null, !810}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !818, file: !26, line: 97, baseType: !833, size: 64, offset: 320)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !835)
!835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !836)
!836 = !{!837, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !835, file: !38, line: 287, baseType: !838, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DISubroutineType(types: !840)
!840 = !{!46, !810}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !835, file: !38, line: 288, baseType: !829, size: 64, offset: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !835, file: !38, line: 289, baseType: !838, size: 64, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !835, file: !38, line: 290, baseType: !838, size: 64, offset: 192)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !835, file: !38, line: 291, baseType: !838, size: 64, offset: 256)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !835, file: !38, line: 292, baseType: !838, size: 64, offset: 320)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !835, file: !38, line: 293, baseType: !838, size: 64, offset: 384)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !835, file: !38, line: 294, baseType: !838, size: 64, offset: 448)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !835, file: !38, line: 295, baseType: !838, size: 64, offset: 512)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !835, file: !38, line: 296, baseType: !838, size: 64, offset: 576)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !835, file: !38, line: 297, baseType: !838, size: 64, offset: 640)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !835, file: !38, line: 298, baseType: !838, size: 64, offset: 704)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !835, file: !38, line: 299, baseType: !838, size: 64, offset: 768)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !835, file: !38, line: 300, baseType: !838, size: 64, offset: 832)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !835, file: !38, line: 301, baseType: !838, size: 64, offset: 896)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !835, file: !38, line: 302, baseType: !838, size: 64, offset: 960)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !835, file: !38, line: 303, baseType: !838, size: 64, offset: 1024)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !835, file: !38, line: 304, baseType: !838, size: 64, offset: 1088)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !835, file: !38, line: 305, baseType: !838, size: 64, offset: 1152)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !835, file: !38, line: 306, baseType: !838, size: 64, offset: 1216)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !835, file: !38, line: 307, baseType: !838, size: 64, offset: 1280)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !835, file: !38, line: 308, baseType: !838, size: 64, offset: 1344)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !835, file: !38, line: 309, baseType: !838, size: 64, offset: 1408)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !806, file: !26, line: 714, baseType: !864, size: 64, offset: 768)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !866)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !867, line: 80, size: 1344, elements: !868)
!867 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!868 = !{!869, !870, !871, !872, !873, !874, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1309}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !866, file: !867, line: 81, baseType: !135, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !866, file: !867, line: 82, baseType: !135, size: 64, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !866, file: !867, line: 83, baseType: !138, size: 64, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !866, file: !867, line: 84, baseType: !138, size: 64, offset: 192)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !866, file: !867, line: 85, baseType: !138, size: 64, offset: 256)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !866, file: !867, line: 87, baseType: !875, size: 64, offset: 320)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DISubroutineType(types: !877)
!877 = !{!46, !810, !878}
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !880)
!880 = !{!881, !882, !883, !1261, !1262, !1263, !1264, !1268, !1272, !1273, !1274, !1275, !1276, !1284, !1285, !1286, !1287, !1288, !1289}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !879, file: !20, line: 97, baseType: !135, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !879, file: !20, line: 98, baseType: !864, size: 64, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !879, file: !20, line: 100, baseType: !884, size: 64, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !886)
!886 = !{!887, !888, !889, !893, !914, !940, !941, !942, !943, !947, !950, !951, !952, !1005, !1006, !1007, !1008, !1009, !1010, !1011, !1012, !1015, !1019, !1039, !1057, !1058, !1059, !1060, !1069, !1093, !1094, !1097, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1111, !1112, !1219, !1227, !1228, !1229, !1231, !1235, !1236, !1240, !1241, !1242, !1243, !1245, !1246, !1247, !1254, !1255, !1256, !1260}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !885, file: !13, line: 403, baseType: !12, size: 32)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !885, file: !13, line: 406, baseType: !157, size: 128, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !885, file: !13, line: 409, baseType: !890, size: 448, offset: 192)
!890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 448, elements: !891)
!891 = !{!892}
!892 = !DISubrange(count: 56)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !885, file: !13, line: 417, baseType: !894, size: 768, offset: 640)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !895)
!895 = !{!896, !897, !898, !899, !902}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !894, file: !13, line: 46, baseType: !152, size: 512)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !894, file: !13, line: 47, baseType: !884, size: 64, offset: 512)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !894, file: !13, line: 48, baseType: !151, size: 64, offset: 576)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !894, file: !13, line: 49, baseType: !900, size: 64, offset: 640)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !13, line: 49, flags: DIFlagFwdDecl)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !894, file: !13, line: 50, baseType: !903, size: 64, offset: 704)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !905, line: 26, size: 256, elements: !906)
!905 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!906 = !{!907, !908}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !904, file: !905, line: 27, baseType: !7, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !904, file: !905, line: 28, baseType: !909, size: 192, offset: 64)
!909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !910, line: 43, size: 192, elements: !911)
!910 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!911 = !{!912, !913}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !909, file: !910, line: 44, baseType: !422, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !909, file: !910, line: 45, baseType: !157, size: 128, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !885, file: !13, line: 418, baseType: !915, size: 64, offset: 1408)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !917)
!917 = !{!918, !919, !924, !928, !932, !936}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !916, file: !13, line: 54, baseType: !274, size: 128)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !916, file: !13, line: 55, baseType: !920, size: 64, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DISubroutineType(types: !922)
!922 = !{!269, !915, !923, !238}
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !916, file: !13, line: 57, baseType: !925, size: 64, offset: 192)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DISubroutineType(types: !927)
!927 = !{!269, !915, !923, !135, !282}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !916, file: !13, line: 59, baseType: !929, size: 64, offset: 256)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DISubroutineType(types: !931)
!931 = !{null, !884, !135}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !916, file: !13, line: 60, baseType: !933, size: 64, offset: 320)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DISubroutineType(types: !935)
!935 = !{!46, !884}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !916, file: !13, line: 61, baseType: !937, size: 64, offset: 384)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{null, !884}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !885, file: !13, line: 419, baseType: !135, size: 64, offset: 1472)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !885, file: !13, line: 420, baseType: !135, size: 64, offset: 1536)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !885, file: !13, line: 421, baseType: !151, size: 64, offset: 1600)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !885, file: !13, line: 424, baseType: !944, size: 64, offset: 1664)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !946)
!946 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !885, file: !13, line: 425, baseType: !948, size: 64, offset: 1728)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !612)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !885, file: !13, line: 426, baseType: !7, size: 32, offset: 1792)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !885, file: !13, line: 435, baseType: !408, size: 256, offset: 1856)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !885, file: !13, line: 437, baseType: !953, size: 64, offset: 2112)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !954, size: 64)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !955, line: 69, size: 320, elements: !956)
!955 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!956 = !{!957, !958, !959, !976, !978, !982, !983}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !954, file: !955, line: 70, baseType: !135, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !954, file: !955, line: 71, baseType: !884, size: 64, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !954, file: !955, line: 72, baseType: !960, size: 64, offset: 128)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !962)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !955, line: 47, size: 256, elements: !963)
!963 = !{!964, !965, !971, !975}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !962, file: !955, line: 49, baseType: !7, size: 32)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !962, file: !955, line: 51, baseType: !966, size: 64, offset: 64)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DISubroutineType(types: !968)
!968 = !{!46, !135, !969}
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !954)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !962, file: !955, line: 53, baseType: !972, size: 64, offset: 128)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DISubroutineType(types: !974)
!974 = !{!46, !238, !969}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !962, file: !955, line: 55, baseType: !318, size: 64, offset: 192)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !954, file: !955, line: 73, baseType: !977, size: 16, offset: 192)
!977 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !954, file: !955, line: 74, baseType: !979, size: 8, offset: 208)
!979 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !198, line: 16, baseType: !980)
!980 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !200, line: 20, baseType: !981)
!981 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !954, file: !955, line: 75, baseType: !197, size: 8, offset: 216)
!983 = !DIDerivedType(tag: DW_TAG_member, scope: !954, file: !955, line: 76, baseType: !984, size: 64, offset: 256)
!984 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !954, file: !955, line: 76, size: 64, elements: !985)
!985 = !{!986, !987, !994}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !984, file: !955, line: 77, baseType: !111, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !984, file: !955, line: 78, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !990)
!990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !955, line: 86, size: 128, elements: !991)
!991 = !{!992, !993}
!992 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !990, file: !955, line: 87, baseType: !7, size: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !990, file: !955, line: 88, baseType: !238, size: 64, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !984, file: !955, line: 79, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !996, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !997)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !955, line: 92, size: 256, elements: !998)
!998 = !{!999, !1000, !1001, !1003, !1004}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !997, file: !955, line: 94, baseType: !7, size: 32)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !997, file: !955, line: 95, baseType: !7, size: 32, offset: 32)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !997, file: !955, line: 96, baseType: !1002, size: 64, offset: 64)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !997, file: !955, line: 97, baseType: !960, size: 64, offset: 128)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !997, file: !955, line: 98, baseType: !111, size: 64, offset: 192)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !885, file: !13, line: 438, baseType: !7, size: 32, offset: 2176)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !885, file: !13, line: 441, baseType: !7, size: 32, offset: 2208)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !885, file: !13, line: 442, baseType: !944, size: 64, offset: 2240)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !885, file: !13, line: 443, baseType: !948, size: 64, offset: 2304)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !885, file: !13, line: 444, baseType: !299, size: 8, offset: 2368)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !885, file: !13, line: 451, baseType: !299, size: 8, offset: 2376)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !885, file: !13, line: 454, baseType: !7, size: 32, offset: 2400)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !885, file: !13, line: 455, baseType: !1013, size: 64, offset: 2432)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !13, line: 43, flags: DIFlagFwdDecl)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !885, file: !13, line: 458, baseType: !1016, size: 64, offset: 2496)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DISubroutineType(types: !1018)
!1018 = !{!46}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !885, file: !13, line: 460, baseType: !1020, size: 4032, align: 512, offset: 2560)
!1020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1021, size: 4032, elements: !1037)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !13, line: 362, size: 576, elements: !1022)
!1022 = !{!1023, !1024, !1025}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1021, file: !13, line: 363, baseType: !111, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1021, file: !13, line: 364, baseType: !7, size: 32, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1021, file: !13, line: 367, baseType: !1026, size: 448, offset: 128)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !13, line: 319, size: 448, elements: !1027)
!1027 = !{!1028, !1029}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1026, file: !13, line: 320, baseType: !884, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1026, file: !13, line: 321, baseType: !1030, size: 384, offset: 64)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1031, line: 40, size: 384, elements: !1032)
!1031 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1032 = !{!1033}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1030, file: !1031, line: 41, baseType: !1034, size: 384, align: 64)
!1034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !354, size: 384, align: 64, elements: !1035)
!1035 = !{!1036}
!1036 = !DISubrange(count: 2)
!1037 = !{!1038}
!1038 = !DISubrange(count: 7)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !885, file: !13, line: 463, baseType: !1040, size: 192, offset: 6592)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1041, line: 8, size: 192, elements: !1042)
!1041 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1042 = !{!1043, !1044, !1046}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1040, file: !1041, line: 10, baseType: !7, size: 32)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1040, file: !1041, line: 11, baseType: !1045, size: 64, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1040, file: !1041, line: 12, baseType: !1047, size: 64, offset: 128)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1049, line: 59, size: 48, elements: !1050)
!1049 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1050 = !{!1051, !1052, !1053, !1054, !1055, !1056}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1048, file: !1049, line: 60, baseType: !662, size: 16)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1048, file: !1049, line: 61, baseType: !662, size: 16, offset: 16)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1048, file: !1049, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1048, file: !1049, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1048, file: !1049, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1048, file: !1049, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !885, file: !13, line: 465, baseType: !114, size: 64, offset: 6784)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !885, file: !13, line: 469, baseType: !7, size: 32, offset: 6848)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !885, file: !13, line: 470, baseType: !157, size: 128, offset: 6912)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !885, file: !13, line: 471, baseType: !1061, size: 64, offset: 7040)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1063, line: 33, size: 96, elements: !1064)
!1063 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1064 = !{!1065, !1066, !1067, !1068}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1062, file: !1063, line: 37, baseType: !46, size: 32)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1062, file: !1063, line: 43, baseType: !46, size: 32, offset: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1062, file: !1063, line: 45, baseType: !150, size: 16, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1062, file: !1063, line: 47, baseType: !150, size: 16, offset: 80)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !885, file: !13, line: 476, baseType: !1070, size: 64, offset: 7104)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !13, line: 378, size: 256, elements: !1072)
!1072 = !{!1073, !1090, !1091, !1092}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1071, file: !13, line: 379, baseType: !1074, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1076, line: 204, baseType: !1077)
!1076 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1076, line: 197, size: 192, elements: !1078)
!1078 = !{!1079, !1082, !1083, !1084, !1086, !1088}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1077, file: !1076, line: 198, baseType: !1080, size: 32)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1076, line: 21, baseType: !1081)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !200, line: 27, baseType: !7)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1077, file: !1076, line: 199, baseType: !201, size: 8, offset: 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1077, file: !1076, line: 200, baseType: !201, size: 8, offset: 40)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1077, file: !1076, line: 201, baseType: !1085, size: 16, offset: 48)
!1085 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1076, line: 17, baseType: !208)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1077, file: !1076, line: 202, baseType: !1087, size: 64, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1076, line: 16, baseType: !553)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1077, file: !1076, line: 203, baseType: !1089, size: 64, offset: 128)
!1089 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1076, line: 22, baseType: !553)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1071, file: !13, line: 380, baseType: !7, size: 32, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1071, file: !13, line: 381, baseType: !238, size: 64, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1071, file: !13, line: 382, baseType: !238, size: 64, offset: 192)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !885, file: !13, line: 477, baseType: !1071, size: 256, offset: 7168)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !885, file: !13, line: 480, baseType: !1095, size: 64, offset: 7424)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !885, file: !13, line: 483, baseType: !1098, size: 64, offset: 7488)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !885, file: !13, line: 488, baseType: !238, size: 64, offset: 7552)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !885, file: !13, line: 492, baseType: !111, size: 64, offset: 7616)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !885, file: !13, line: 493, baseType: !7, size: 32, offset: 7680)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !885, file: !13, line: 495, baseType: !111, size: 64, offset: 7744)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !885, file: !13, line: 496, baseType: !7, size: 32, offset: 7808)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !885, file: !13, line: 499, baseType: !7, size: 32, offset: 7840)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !885, file: !13, line: 500, baseType: !1107, size: 64, offset: 7872)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1109, line: 45, baseType: !1110)
!1109 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !885, file: !13, line: 503, baseType: !7, size: 32, offset: 7936)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !885, file: !13, line: 504, baseType: !1113, size: 64, offset: 8000)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1116, line: 96, size: 192, elements: !1117)
!1116 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1117 = !{!1118, !1119, !1180, !1183}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1115, file: !1116, line: 97, baseType: !7, size: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1115, file: !1116, line: 98, baseType: !1120, size: 64, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1121, size: 64)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1116, line: 24, size: 3072, elements: !1122)
!1122 = !{!1123, !1125, !1126, !1127, !1128, !1142, !1143, !1144, !1145, !1164, !1165, !1166, !1177, !1178, !1179}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1121, file: !1116, line: 26, baseType: !1124, size: 128)
!1124 = !DICompositeType(tag: DW_TAG_array_type, baseType: !412, size: 128, elements: !1035)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1121, file: !1116, line: 27, baseType: !1124, size: 128, offset: 128)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1121, file: !1116, line: 28, baseType: !46, size: 32, offset: 256)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1121, file: !1116, line: 31, baseType: !169, size: 32, align: 512, offset: 512)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1121, file: !1116, line: 32, baseType: !1129, size: 960, offset: 576)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1130, line: 206, size: 960, elements: !1131)
!1130 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1131 = !{!1132, !1133, !1136, !1138, !1139, !1141}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1129, file: !1130, line: 207, baseType: !498, size: 64)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1129, file: !1130, line: 208, baseType: !1134, size: 256, offset: 64)
!1134 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1135, size: 256, elements: !614)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1129, file: !1130, line: 209, baseType: !1137, size: 256, offset: 320)
!1137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !114, size: 256, elements: !614)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1129, file: !1130, line: 213, baseType: !115, size: 64, offset: 576)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1129, file: !1130, line: 215, baseType: !1140, size: 256, offset: 640)
!1140 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 256, elements: !614)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1129, file: !1130, line: 216, baseType: !197, size: 8, offset: 896)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1121, file: !1116, line: 33, baseType: !114, size: 64, offset: 1536)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1121, file: !1116, line: 34, baseType: !114, size: 64, offset: 1600)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1121, file: !1116, line: 35, baseType: !299, size: 8, offset: 1664)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1121, file: !1116, line: 36, baseType: !1146, size: 320, offset: 1728)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1147, line: 11, size: 320, elements: !1148)
!1147 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1148 = !{!1149, !1156, !1157, !1162}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1146, file: !1147, line: 16, baseType: !1150, size: 128)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !113, line: 198, size: 128, elements: !1151)
!1151 = !{!1152, !1154}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1150, file: !113, line: 199, baseType: !1153, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1150, file: !113, line: 199, baseType: !1155, size: 64, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1153, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1146, file: !1147, line: 17, baseType: !114, size: 64, offset: 128)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1146, file: !1147, line: 18, baseType: !1158, size: 64, offset: 192)
!1158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1159, size: 64)
!1159 = !DISubroutineType(types: !1160)
!1160 = !{null, !1161}
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1146, file: !1147, line: 19, baseType: !1163, size: 32, offset: 256)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !198, line: 21, baseType: !1081)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1121, file: !1116, line: 37, baseType: !688, size: 256, offset: 2048)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1121, file: !1116, line: 38, baseType: !495, size: 128, align: 64, offset: 2304)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1121, file: !1116, line: 39, baseType: !1167, size: 64, offset: 2432)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1116, line: 49, size: 768, elements: !1169)
!1169 = !{!1170, !1171, !1172, !1173, !1174, !1175, !1176}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1168, file: !1116, line: 50, baseType: !169, size: 32)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1168, file: !1116, line: 51, baseType: !1137, size: 256, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1168, file: !1116, line: 53, baseType: !1137, size: 256, offset: 320)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1168, file: !1116, line: 54, baseType: !114, size: 64, offset: 576)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1168, file: !1116, line: 55, baseType: !1167, size: 64, offset: 640)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1168, file: !1116, line: 56, baseType: !46, size: 32, offset: 704)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1168, file: !1116, line: 57, baseType: !46, size: 32, offset: 736)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1121, file: !1116, line: 40, baseType: !114, size: 64, offset: 2496)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1121, file: !1116, line: 42, baseType: !46, size: 32, offset: 2560)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1121, file: !1116, line: 43, baseType: !1114, size: 64, offset: 2624)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1115, file: !1116, line: 99, baseType: !1181, offset: 128)
!1181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1182, line: 211, elements: !525)
!1182 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1115, file: !1116, line: 100, baseType: !1184, size: 64, offset: 128)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1116, line: 63, size: 3008, elements: !1186)
!1186 = !{!1187, !1188, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1218}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1185, file: !1116, line: 64, baseType: !1167, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1185, file: !1116, line: 65, baseType: !1189, size: 192, offset: 64)
!1189 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1167, size: 192, elements: !239)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1185, file: !1116, line: 67, baseType: !46, size: 32, offset: 256)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1185, file: !1116, line: 68, baseType: !408, size: 256, offset: 320)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1185, file: !1116, line: 69, baseType: !169, size: 32, offset: 576)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1185, file: !1116, line: 70, baseType: !408, size: 256, offset: 640)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1185, file: !1116, line: 71, baseType: !114, size: 64, offset: 896)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1185, file: !1116, line: 72, baseType: !114, size: 64, offset: 960)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1185, file: !1116, line: 73, baseType: !114, size: 64, offset: 1024)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1185, file: !1116, line: 74, baseType: !114, size: 64, offset: 1088)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1185, file: !1116, line: 75, baseType: !114, size: 64, offset: 1152)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1185, file: !1116, line: 76, baseType: !114, size: 64, offset: 1216)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1185, file: !1116, line: 77, baseType: !114, size: 64, offset: 1280)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1185, file: !1116, line: 78, baseType: !114, size: 64, offset: 1344)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1185, file: !1116, line: 79, baseType: !299, size: 8, offset: 1408)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1185, file: !1116, line: 80, baseType: !114, size: 64, offset: 1472)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1185, file: !1116, line: 81, baseType: !408, size: 256, offset: 1536)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1185, file: !1116, line: 82, baseType: !904, size: 256, offset: 1792)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1185, file: !1116, line: 84, baseType: !189, size: 32, offset: 2048)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1185, file: !1116, line: 87, baseType: !114, size: 64, offset: 2112)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1185, file: !1116, line: 88, baseType: !114, size: 64, offset: 2176)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1185, file: !1116, line: 89, baseType: !1210, size: 704, offset: 2240)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !689, line: 111, size: 704, elements: !1211)
!1211 = !{!1212, !1213, !1214, !1217}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1210, file: !689, line: 112, baseType: !688, size: 256)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1210, file: !689, line: 113, baseType: !1146, size: 320, offset: 256)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1210, file: !689, line: 116, baseType: !1215, size: 64, offset: 576)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !689, line: 18, flags: DIFlagFwdDecl)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1210, file: !689, line: 117, baseType: !46, size: 32, offset: 640)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1185, file: !1116, line: 90, baseType: !1114, size: 64, offset: 2944)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !885, file: !13, line: 515, baseType: !1220, size: 64, offset: 8064)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1221, size: 64)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1222, line: 117, size: 128, elements: !1223)
!1222 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1223 = !{!1224, !1225, !1226}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1221, file: !1222, line: 118, baseType: !612, size: 32)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1221, file: !1222, line: 119, baseType: !612, size: 32, offset: 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1221, file: !1222, line: 120, baseType: !115, size: 64, offset: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !885, file: !13, line: 516, baseType: !7, size: 32, offset: 8128)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !885, file: !13, line: 519, baseType: !7, size: 32, offset: 8160)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !885, file: !13, line: 520, baseType: !1230, size: 64, offset: 8192)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !885, file: !13, line: 523, baseType: !1232, size: 64, offset: 8256)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !13, line: 523, flags: DIFlagFwdDecl)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !885, file: !13, line: 524, baseType: !7, size: 32, offset: 8320)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !885, file: !13, line: 525, baseType: !1237, size: 64, offset: 8384)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !13, line: 525, flags: DIFlagFwdDecl)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !885, file: !13, line: 526, baseType: !7, size: 32, offset: 8448)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !885, file: !13, line: 533, baseType: !111, size: 64, offset: 8512)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !885, file: !13, line: 534, baseType: !7, size: 32, offset: 8576)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !885, file: !13, line: 535, baseType: !1244, size: 64, offset: 8640)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !885, file: !13, line: 536, baseType: !7, size: 32, offset: 8704)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !885, file: !13, line: 539, baseType: !46, size: 32, offset: 8736)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !885, file: !13, line: 540, baseType: !1248, size: 64, offset: 8768)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1250, line: 32, size: 64, elements: !1251)
!1250 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1251 = !{!1252, !1253}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1249, file: !1250, line: 33, baseType: !612, size: 32)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1249, file: !1250, line: 34, baseType: !612, size: 32, offset: 32)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !885, file: !13, line: 563, baseType: !157, size: 128, offset: 8832)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !885, file: !13, line: 565, baseType: !157, size: 128, offset: 8960)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !885, file: !13, line: 568, baseType: !1257, size: 64, offset: 9088)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DISubroutineType(types: !1259)
!1259 = !{null}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !885, file: !13, line: 570, baseType: !189, size: 32, offset: 9152)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !879, file: !20, line: 101, baseType: !135, size: 64, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !879, file: !20, line: 103, baseType: !299, size: 8, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !879, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !879, file: !20, line: 106, baseType: !1265, size: 64, offset: 320)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1267)
!1267 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !20, line: 106, flags: DIFlagFwdDecl)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !879, file: !20, line: 107, baseType: !1269, size: 64, offset: 384)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1271)
!1271 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !20, line: 107, flags: DIFlagFwdDecl)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !879, file: !20, line: 109, baseType: !838, size: 64, offset: 448)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !879, file: !20, line: 110, baseType: !829, size: 64, offset: 512)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !879, file: !20, line: 111, baseType: !838, size: 64, offset: 576)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !879, file: !20, line: 112, baseType: !829, size: 64, offset: 640)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !879, file: !20, line: 113, baseType: !1277, size: 64, offset: 704)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DISubroutineType(types: !1279)
!1279 = !{!46, !810, !1280}
!1280 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1281)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1282)
!1282 = !{!1283}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1281, file: !38, line: 59, baseType: !46, size: 32)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !879, file: !20, line: 114, baseType: !838, size: 64, offset: 768)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !879, file: !20, line: 115, baseType: !138, size: 64, offset: 832)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !879, file: !20, line: 116, baseType: !138, size: 64, offset: 896)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !879, file: !20, line: 118, baseType: !833, size: 64, offset: 960)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !879, file: !20, line: 119, baseType: !829, size: 64, offset: 1024)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !879, file: !20, line: 121, baseType: !1290, size: 64, offset: 1088)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !866, file: !867, line: 88, baseType: !801, size: 64, offset: 384)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !866, file: !867, line: 89, baseType: !838, size: 64, offset: 448)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !866, file: !867, line: 90, baseType: !829, size: 64, offset: 512)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !866, file: !867, line: 91, baseType: !829, size: 64, offset: 576)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !866, file: !867, line: 92, baseType: !829, size: 64, offset: 640)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !866, file: !867, line: 94, baseType: !838, size: 64, offset: 704)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !866, file: !867, line: 95, baseType: !838, size: 64, offset: 768)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !866, file: !867, line: 97, baseType: !1277, size: 64, offset: 832)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !866, file: !867, line: 98, baseType: !838, size: 64, offset: 896)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !866, file: !867, line: 100, baseType: !838, size: 64, offset: 960)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !866, file: !867, line: 102, baseType: !838, size: 64, offset: 1024)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !866, file: !867, line: 103, baseType: !829, size: 64, offset: 1088)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !866, file: !867, line: 105, baseType: !833, size: 64, offset: 1152)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !866, file: !867, line: 107, baseType: !1306, size: 64, offset: 1216)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1308)
!1308 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !867, line: 107, flags: DIFlagFwdDecl)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !866, file: !867, line: 109, baseType: !299, size: 8, offset: 1280)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !806, file: !26, line: 715, baseType: !878, size: 64, offset: 832)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !806, file: !26, line: 717, baseType: !111, size: 64, offset: 896)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !806, file: !26, line: 719, baseType: !111, size: 64, offset: 960)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !806, file: !26, line: 721, baseType: !408, size: 256, offset: 1024)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !806, file: !26, line: 725, baseType: !1315, size: 448, offset: 1280)
!1315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1316)
!1316 = !{!1317, !1318, !1319, !1320}
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1315, file: !26, line: 518, baseType: !157, size: 128)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1315, file: !26, line: 519, baseType: !157, size: 128, offset: 128)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1315, file: !26, line: 520, baseType: !157, size: 128, offset: 256)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1315, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !806, file: !26, line: 726, baseType: !1322, size: 2496, offset: 1728)
!1322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1323)
!1323 = !{!1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1374, !1375, !1376, !1377, !1378, !1379, !1450, !1451, !1452, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1490, !1494}
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1322, file: !38, line: 664, baseType: !1280, size: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1322, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1322, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1322, file: !38, line: 667, baseType: !299, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1322, file: !38, line: 668, baseType: !299, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1322, file: !38, line: 669, baseType: !299, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1322, file: !38, line: 670, baseType: !299, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1322, file: !38, line: 671, baseType: !299, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1322, file: !38, line: 672, baseType: !299, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1322, file: !38, line: 673, baseType: !299, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1322, file: !38, line: 674, baseType: !299, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1322, file: !38, line: 675, baseType: !1163, size: 32, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1322, file: !38, line: 676, baseType: !169, size: 32, offset: 96)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1322, file: !38, line: 678, baseType: !157, size: 128, offset: 128)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1322, file: !38, line: 679, baseType: !904, size: 256, offset: 256)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1322, file: !38, line: 680, baseType: !1340, size: 64, offset: 512)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1342, line: 43, size: 1536, elements: !1343)
!1342 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1343 = !{!1344, !1345, !1346, !1347, !1348, !1357, !1358, !1359, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1341, file: !1342, line: 44, baseType: !135, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1341, file: !1342, line: 45, baseType: !46, size: 32, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1341, file: !1342, line: 46, baseType: !157, size: 128, offset: 128)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1341, file: !1342, line: 47, baseType: !169, size: 32, offset: 256)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1341, file: !1342, line: 48, baseType: !1349, size: 64, offset: 320)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !1351, line: 34, size: 192, elements: !1352)
!1351 = !DIFile(filename: "drivers/base/power/power.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1327210c8ac5950226b4c5538c62ec75")
!1352 = !{!1353, !1354, !1355, !1356}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1350, file: !1351, line: 35, baseType: !810, size: 64)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1350, file: !1351, line: 36, baseType: !7, size: 32, offset: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !1350, file: !1351, line: 37, baseType: !46, size: 32, offset: 96)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1350, file: !1351, line: 38, baseType: !135, size: 64, offset: 128)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1341, file: !1342, line: 49, baseType: !1146, size: 320, offset: 384)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1341, file: !1342, line: 50, baseType: !114, size: 64, offset: 704)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1341, file: !1342, line: 51, baseType: !1360, size: 64, offset: 768)
!1360 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1361, line: 29, baseType: !418)
!1361 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1341, file: !1342, line: 52, baseType: !1360, size: 64, offset: 832)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1341, file: !1342, line: 53, baseType: !1360, size: 64, offset: 896)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1341, file: !1342, line: 54, baseType: !1360, size: 64, offset: 960)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1341, file: !1342, line: 55, baseType: !1360, size: 64, offset: 1024)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1341, file: !1342, line: 56, baseType: !114, size: 64, offset: 1088)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1341, file: !1342, line: 57, baseType: !114, size: 64, offset: 1152)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1341, file: !1342, line: 58, baseType: !114, size: 64, offset: 1216)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1341, file: !1342, line: 59, baseType: !114, size: 64, offset: 1280)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1341, file: !1342, line: 60, baseType: !114, size: 64, offset: 1344)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1341, file: !1342, line: 61, baseType: !810, size: 64, offset: 1408)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1341, file: !1342, line: 62, baseType: !299, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1341, file: !1342, line: 63, baseType: !299, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1322, file: !38, line: 681, baseType: !299, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1322, file: !38, line: 682, baseType: !299, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1322, file: !38, line: 683, baseType: !299, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1322, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1322, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1322, file: !38, line: 690, baseType: !1380, size: 512, offset: 640)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1381)
!1381 = !{!1382, !1388, !1389, !1394, !1446, !1447, !1448, !1449}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1380, file: !33, line: 119, baseType: !1383, size: 256)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1384, line: 9, size: 256, elements: !1385)
!1384 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1385 = !{!1386, !1387}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1383, file: !1384, line: 10, baseType: !354, size: 192, align: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1383, file: !1384, line: 11, baseType: !1360, size: 64, offset: 192)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1380, file: !33, line: 120, baseType: !1360, size: 64, offset: 256)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1380, file: !33, line: 121, baseType: !1390, size: 64, offset: 320)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!32, !1393}
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1380, file: !33, line: 122, baseType: !1395, size: 64, offset: 384)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1397)
!1397 = !{!1398, !1423, !1424, !1427, !1432, !1433, !1441, !1445}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1396, file: !33, line: 160, baseType: !1399, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1401)
!1401 = !{!1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1400, file: !33, line: 216, baseType: !422, size: 32)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1400, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1400, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1400, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1400, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1400, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1400, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1400, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1400, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1400, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1400, file: !33, line: 227, baseType: !150, size: 16, offset: 192)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1400, file: !33, line: 228, baseType: !150, size: 16, offset: 208)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1400, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1400, file: !33, line: 235, baseType: !1360, size: 64, offset: 256)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1400, file: !33, line: 236, baseType: !1393, size: 64, offset: 320)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1400, file: !33, line: 237, baseType: !1360, size: 64, offset: 384)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1400, file: !33, line: 238, baseType: !1393, size: 64, offset: 448)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1400, file: !33, line: 239, baseType: !1420, size: 4096, align: 512, offset: 512)
!1420 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1396, size: 4096, align: 512, elements: !1421)
!1421 = !{!1422}
!1422 = !DISubrange(count: 8)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1396, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1396, file: !33, line: 162, baseType: !1425, size: 32, offset: 96)
!1425 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !113, line: 32, baseType: !1426)
!1426 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !271, line: 96, baseType: !46)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1396, file: !33, line: 163, baseType: !1428, size: 32, offset: 128)
!1428 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !582, line: 274, baseType: !1429)
!1429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !582, line: 274, size: 32, elements: !1430)
!1430 = !{!1431}
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1429, file: !582, line: 274, baseType: !581, size: 32)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1396, file: !33, line: 164, baseType: !1393, size: 64, offset: 192)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1396, file: !33, line: 165, baseType: !1434, size: 128, offset: 256)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1384, line: 14, size: 128, elements: !1435)
!1435 = !{!1436}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1434, file: !1384, line: 15, baseType: !1437, size: 128)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !355, line: 26, size: 128, elements: !1438)
!1438 = !{!1439, !1440}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1437, file: !355, line: 27, baseType: !371, size: 64)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1437, file: !355, line: 28, baseType: !359, size: 64, offset: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1396, file: !33, line: 166, baseType: !1442, size: 64, offset: 384)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!1360}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1396, file: !33, line: 167, baseType: !1360, size: 64, offset: 448)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1380, file: !33, line: 123, baseType: !197, size: 8, offset: 448)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1380, file: !33, line: 124, baseType: !197, size: 8, offset: 456)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1380, file: !33, line: 125, baseType: !197, size: 8, offset: 464)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1380, file: !33, line: 126, baseType: !197, size: 8, offset: 472)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1322, file: !38, line: 691, baseType: !552, size: 64, offset: 1152)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1322, file: !38, line: 692, baseType: !688, size: 256, offset: 1216)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1322, file: !38, line: 693, baseType: !1453, size: 192, offset: 1472)
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1454, line: 41, baseType: !1455)
!1454 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1454, line: 37, size: 192, elements: !1456)
!1456 = !{!1457, !1458}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1455, file: !1454, line: 38, baseType: !169, size: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1455, file: !1454, line: 39, baseType: !157, size: 128, offset: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1322, file: !38, line: 694, baseType: !1349, size: 64, offset: 1664)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1322, file: !38, line: 695, baseType: !189, size: 32, offset: 1728)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1322, file: !38, line: 696, baseType: !189, size: 32, offset: 1760)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1322, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1322, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1322, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1322, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1322, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1322, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1322, file: !38, line: 703, baseType: !299, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1322, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1322, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1322, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1322, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1322, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1322, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1322, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1322, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1322, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1322, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1322, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1322, file: !38, line: 715, baseType: !552, size: 64, offset: 2048)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1322, file: !38, line: 716, baseType: !552, size: 64, offset: 2112)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1322, file: !38, line: 717, baseType: !552, size: 64, offset: 2176)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1322, file: !38, line: 718, baseType: !552, size: 64, offset: 2240)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1322, file: !38, line: 720, baseType: !1485, size: 64, offset: 2304)
!1485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1486, size: 64)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1487)
!1487 = !{!1488, !1489}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1486, file: !38, line: 633, baseType: !169, size: 32)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1486, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1322, file: !38, line: 721, baseType: !1491, size: 64, offset: 2368)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{null, !810, !612}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1322, file: !38, line: 722, baseType: !1495, size: 64, offset: 2432)
!1495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1496, size: 64)
!1496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !54, line: 117, size: 2432, elements: !1497)
!1497 = !{!1498, !1527, !1528, !1535, !1540, !1567, !1568}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency", scope: !1496, file: !54, line: 118, baseType: !1499, size: 320)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !54, line: 52, size: 320, elements: !1500)
!1500 = !{!1501, !1506, !1507, !1508, !1509, !1510}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1499, file: !54, line: 53, baseType: !1502, size: 128)
!1502 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !1503, line: 82, size: 128, elements: !1504)
!1503 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1504 = !{!1505}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1502, file: !1503, line: 83, baseType: !157, size: 128)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !1499, file: !54, line: 54, baseType: !612, size: 32, offset: 128)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !1499, file: !54, line: 55, baseType: !612, size: 32, offset: 160)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !1499, file: !54, line: 56, baseType: !612, size: 32, offset: 192)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1499, file: !54, line: 57, baseType: !53, size: 32, offset: 224)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !1499, file: !54, line: 58, baseType: !1511, size: 64, offset: 256)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !1513, line: 65, size: 384, elements: !1514)
!1513 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!1514 = !{!1515, !1516}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !1512, file: !1513, line: 66, baseType: !561, size: 320)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1512, file: !1513, line: 67, baseType: !1517, size: 64, offset: 320)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !1513, line: 54, size: 192, elements: !1519)
!1519 = !{!1520, !1525, !1526}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !1518, file: !1513, line: 55, baseType: !1521, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !1513, line: 51, baseType: !1522)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!46, !1517, !114, !111}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1518, file: !1513, line: 56, baseType: !1517, size: 64, offset: 64)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1518, file: !1513, line: 57, baseType: !46, size: 32, offset: 128)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance", scope: !1496, file: !54, line: 119, baseType: !1499, size: 320, offset: 320)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1496, file: !54, line: 120, baseType: !1529, size: 1408, offset: 640)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !54, line: 85, size: 1408, elements: !1530)
!1530 = !{!1531, !1532, !1533, !1534}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !1529, file: !54, line: 86, baseType: !1499, size: 320)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !1529, file: !54, line: 87, baseType: !1512, size: 384, offset: 320)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !1529, file: !54, line: 88, baseType: !1499, size: 320, offset: 704)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !1529, file: !54, line: 89, baseType: !1512, size: 384, offset: 1024)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1496, file: !54, line: 121, baseType: !1536, size: 192, offset: 2048)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags", file: !54, line: 71, size: 192, elements: !1537)
!1537 = !{!1538, !1539}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1536, file: !54, line: 72, baseType: !157, size: 128)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "effective_flags", scope: !1536, file: !54, line: 73, baseType: !612, size: 32, offset: 128)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency_req", scope: !1496, file: !54, line: 122, baseType: !1541, size: 64, offset: 2240)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos_request", file: !54, line: 107, size: 576, elements: !1543)
!1543 = !{!1544, !1545, !1566}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1542, file: !54, line: 108, baseType: !59, size: 32)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1542, file: !54, line: 113, baseType: !1546, size: 448, offset: 64)
!1546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1542, file: !54, line: 109, size: 448, elements: !1547)
!1547 = !{!1548, !1554, !1559}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !1546, file: !54, line: 110, baseType: !1549, size: 320)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1503, line: 86, size: 320, elements: !1550)
!1550 = !{!1551, !1552, !1553}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1549, file: !1503, line: 87, baseType: !46, size: 32)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1549, file: !1503, line: 88, baseType: !157, size: 128, offset: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1549, file: !1503, line: 89, baseType: !157, size: 128, offset: 192)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "flr", scope: !1546, file: !54, line: 111, baseType: !1555, size: 192)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags_request", file: !54, line: 66, size: 192, elements: !1556)
!1556 = !{!1557, !1558}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1555, file: !54, line: 67, baseType: !157, size: 128)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1555, file: !54, line: 68, baseType: !612, size: 32, offset: 128)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1546, file: !54, line: 112, baseType: !1560, size: 448)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !54, line: 92, size: 448, elements: !1561)
!1561 = !{!1562, !1563, !1564}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1560, file: !54, line: 93, baseType: !66, size: 32)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !1560, file: !54, line: 94, baseType: !1549, size: 320, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1560, file: !54, line: 95, baseType: !1565, size: 64, offset: 384)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1542, file: !54, line: 114, baseType: !810, size: 64, offset: 512)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance_req", scope: !1496, file: !54, line: 123, baseType: !1541, size: 64, offset: 2304)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "flags_req", scope: !1496, file: !54, line: 124, baseType: !1541, size: 64, offset: 2368)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !806, file: !26, line: 727, baseType: !1570, size: 64, offset: 4224)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1572)
!1572 = !{!1573, !1574, !1575, !1579, !1580, !1581}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1571, file: !38, line: 743, baseType: !835, size: 1472)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1571, file: !38, line: 744, baseType: !838, size: 64, offset: 1472)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1571, file: !38, line: 745, baseType: !1576, size: 64, offset: 1536)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DISubroutineType(types: !1578)
!1578 = !{null, !810, !299}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1571, file: !38, line: 746, baseType: !838, size: 64, offset: 1600)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1571, file: !38, line: 747, baseType: !829, size: 64, offset: 1664)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1571, file: !38, line: 748, baseType: !829, size: 64, offset: 1728)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !806, file: !26, line: 736, baseType: !1583, size: 128, offset: 4288)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1584)
!1584 = !{!1585, !1589}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1583, file: !26, line: 531, baseType: !1586, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1588, line: 13, flags: DIFlagFwdDecl)
!1588 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1583, file: !26, line: 532, baseType: !1590, size: 64, offset: 64)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !806, file: !26, line: 738, baseType: !1593, size: 64, offset: 4416)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1595)
!1595 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !806, file: !26, line: 740, baseType: !1597, size: 64, offset: 4480)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !806, file: !26, line: 741, baseType: !552, size: 64, offset: 4544)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !806, file: !26, line: 746, baseType: !552, size: 64, offset: 4608)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !806, file: !26, line: 747, baseType: !1601, size: 64, offset: 4672)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1603)
!1603 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !806, file: !26, line: 749, baseType: !1605, size: 64, offset: 4736)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1607)
!1607 = !{!1608, !1609, !1610}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1606, file: !26, line: 433, baseType: !7, size: 32)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1606, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1606, file: !26, line: 435, baseType: !114, size: 64, offset: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !806, file: !26, line: 751, baseType: !157, size: 128, offset: 4800)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !806, file: !26, line: 762, baseType: !1613, size: 64, offset: 4928)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !806, file: !26, line: 770, baseType: !1616, offset: 4992)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1617, line: 5, elements: !525)
!1617 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !806, file: !26, line: 772, baseType: !1619, size: 64, offset: 4992)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1621, line: 18, flags: DIFlagFwdDecl)
!1621 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !806, file: !26, line: 773, baseType: !1623, size: 64, offset: 5056)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !867, line: 22, flags: DIFlagFwdDecl)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !806, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !806, file: !26, line: 778, baseType: !1627, size: 32, offset: 5152)
!1627 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !113, line: 21, baseType: !1628)
!1628 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !113, line: 18, baseType: !1163)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !806, file: !26, line: 779, baseType: !1163, size: 32, offset: 5184)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !806, file: !26, line: 781, baseType: !169, size: 32, offset: 5216)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !806, file: !26, line: 782, baseType: !157, size: 128, offset: 5248)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !806, file: !26, line: 784, baseType: !1633, size: 64, offset: 5376)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !806, file: !26, line: 785, baseType: !138, size: 64, offset: 5440)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !806, file: !26, line: 787, baseType: !829, size: 64, offset: 5504)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !806, file: !26, line: 788, baseType: !1638, size: 64, offset: 5568)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !806, file: !26, line: 789, baseType: !1641, size: 64, offset: 5632)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !806, file: !26, line: 791, baseType: !1644, size: 64, offset: 5696)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1646)
!1646 = !{!1647, !1648, !1649, !1650, !1651}
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1645, file: !26, line: 598, baseType: !70, size: 32)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1645, file: !26, line: 599, baseType: !79, size: 32, offset: 32)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1645, file: !26, line: 600, baseType: !84, size: 32, offset: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1645, file: !26, line: 601, baseType: !299, size: 8, offset: 96)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1645, file: !26, line: 602, baseType: !299, size: 8, offset: 104)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !806, file: !26, line: 793, baseType: !89, size: 32, offset: 5760)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !806, file: !26, line: 795, baseType: !299, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !806, file: !26, line: 796, baseType: !299, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !806, file: !26, line: 797, baseType: !299, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !806, file: !26, line: 798, baseType: !299, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !806, file: !26, line: 799, baseType: !299, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !131, file: !132, line: 59, baseType: !1659, size: 64, offset: 256)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!238, !804, !827}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !131, file: !132, line: 61, baseType: !1663, size: 64, offset: 320)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{null, !1633}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !131, file: !132, line: 62, baseType: !829, size: 64, offset: 384)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !131, file: !132, line: 64, baseType: !838, size: 64, offset: 448)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !131, file: !132, line: 66, baseType: !290, size: 64, offset: 512)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !131, file: !132, line: 67, baseType: !1670, size: 64, offset: 576)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!309, !804}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !131, file: !132, line: 69, baseType: !1674, size: 64, offset: 640)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{null, !804, !329, !337}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !131, file: !132, line: 71, baseType: !833, size: 64, offset: 704)
!1678 = !DIGlobalVariableExpression(var: !1679, expr: !DIExpression())
!1679 = distinct !DIGlobalVariable(name: "wakeup_source_groups", scope: !2, file: !3, line: 129, type: !1680, isLocal: true, isDefinition: true)
!1680 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 128, elements: !1035)
!1681 = !DIGlobalVariableExpression(var: !1682, expr: !DIExpression())
!1682 = distinct !DIGlobalVariable(name: "wakeup_source_group", scope: !2, file: !3, line: 129, type: !140, isLocal: true, isDefinition: true)
!1683 = !DIGlobalVariableExpression(var: !1684, expr: !DIExpression())
!1684 = distinct !DIGlobalVariable(name: "wakeup_source_attrs", scope: !2, file: !3, line: 116, type: !1685, isLocal: true, isDefinition: true)
!1685 = !DICompositeType(tag: DW_TAG_array_type, baseType: !273, size: 704, elements: !1686)
!1686 = !{!1687}
!1687 = !DISubrange(count: 11)
!1688 = !DIGlobalVariableExpression(var: !1689, expr: !DIExpression())
!1689 = distinct !DIGlobalVariable(scope: null, file: !3, line: 98, type: !1690, isLocal: true, isDefinition: true)
!1690 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 40, elements: !1691)
!1691 = !{!1692}
!1692 = !DISubrange(count: 5)
!1693 = !DIGlobalVariableExpression(var: !1694, expr: !DIExpression())
!1694 = distinct !DIGlobalVariable(name: "dev_attr_name", scope: !2, file: !3, line: 98, type: !1695, isLocal: true, isDefinition: true)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !26, line: 106, size: 256, elements: !1696)
!1696 = !{!1697, !1698, !1703}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1695, file: !26, line: 107, baseType: !274, size: 128)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1695, file: !26, line: 108, baseType: !1699, size: 64, offset: 128)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!269, !810, !1702, !238}
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1695, file: !26, line: 110, baseType: !1704, size: 64, offset: 192)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!269, !810, !1702, !135, !282}
!1707 = !DIGlobalVariableExpression(var: !1708, expr: !DIExpression())
!1708 = distinct !DIGlobalVariable(scope: null, file: !3, line: 96, type: !1709, isLocal: true, isDefinition: true)
!1709 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 32, elements: !614)
!1710 = !DIGlobalVariableExpression(var: !1711, expr: !DIExpression())
!1711 = distinct !DIGlobalVariable(scope: null, file: !3, line: 33, type: !1712, isLocal: true, isDefinition: true)
!1712 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 104, elements: !1713)
!1713 = !{!1714}
!1714 = !DISubrange(count: 13)
!1715 = !DIGlobalVariableExpression(var: !1716, expr: !DIExpression())
!1716 = distinct !DIGlobalVariable(name: "dev_attr_active_count", scope: !2, file: !3, line: 33, type: !1695, isLocal: true, isDefinition: true)
!1717 = !DIGlobalVariableExpression(var: !1718, expr: !DIExpression())
!1718 = distinct !DIGlobalVariable(scope: null, file: !3, line: 33, type: !1690, isLocal: true, isDefinition: true)
!1719 = !DIGlobalVariableExpression(var: !1720, expr: !DIExpression())
!1720 = distinct !DIGlobalVariable(scope: null, file: !3, line: 34, type: !1721, isLocal: true, isDefinition: true)
!1721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 96, elements: !1722)
!1722 = !{!1723}
!1723 = !DISubrange(count: 12)
!1724 = !DIGlobalVariableExpression(var: !1725, expr: !DIExpression())
!1725 = distinct !DIGlobalVariable(name: "dev_attr_event_count", scope: !2, file: !3, line: 34, type: !1695, isLocal: true, isDefinition: true)
!1726 = !DIGlobalVariableExpression(var: !1727, expr: !DIExpression())
!1727 = distinct !DIGlobalVariable(scope: null, file: !3, line: 35, type: !1712, isLocal: true, isDefinition: true)
!1728 = !DIGlobalVariableExpression(var: !1729, expr: !DIExpression())
!1729 = distinct !DIGlobalVariable(name: "dev_attr_wakeup_count", scope: !2, file: !3, line: 35, type: !1695, isLocal: true, isDefinition: true)
!1730 = !DIGlobalVariableExpression(var: !1731, expr: !DIExpression())
!1731 = distinct !DIGlobalVariable(scope: null, file: !3, line: 36, type: !1712, isLocal: true, isDefinition: true)
!1732 = !DIGlobalVariableExpression(var: !1733, expr: !DIExpression())
!1733 = distinct !DIGlobalVariable(name: "dev_attr_expire_count", scope: !2, file: !3, line: 36, type: !1695, isLocal: true, isDefinition: true)
!1734 = !DIGlobalVariableExpression(var: !1735, expr: !DIExpression())
!1735 = distinct !DIGlobalVariable(scope: null, file: !3, line: 47, type: !1736, isLocal: true, isDefinition: true)
!1736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 120, elements: !1737)
!1737 = !{!1738}
!1738 = !DISubrange(count: 15)
!1739 = !DIGlobalVariableExpression(var: !1740, expr: !DIExpression())
!1740 = distinct !DIGlobalVariable(name: "dev_attr_active_time_ms", scope: !2, file: !3, line: 47, type: !1695, isLocal: true, isDefinition: true)
!1741 = !DIGlobalVariableExpression(var: !1742, expr: !DIExpression())
!1742 = distinct !DIGlobalVariable(scope: null, file: !3, line: 45, type: !1743, isLocal: true, isDefinition: true)
!1743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 48, elements: !1744)
!1744 = !{!1745}
!1745 = !DISubrange(count: 6)
!1746 = !DIGlobalVariableExpression(var: !1747, expr: !DIExpression())
!1747 = distinct !DIGlobalVariable(scope: null, file: !1361, line: 154, type: !1748, isLocal: true, isDefinition: true)
!1748 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 176, elements: !1749)
!1749 = !{!1750}
!1750 = !DISubrange(count: 22)
!1751 = !DIGlobalVariableExpression(var: !1752, expr: !DIExpression())
!1752 = distinct !DIGlobalVariable(scope: null, file: !3, line: 63, type: !1753, isLocal: true, isDefinition: true)
!1753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 112, elements: !1754)
!1754 = !{!1755}
!1755 = !DISubrange(count: 14)
!1756 = !DIGlobalVariableExpression(var: !1757, expr: !DIExpression())
!1757 = distinct !DIGlobalVariable(name: "dev_attr_total_time_ms", scope: !2, file: !3, line: 63, type: !1695, isLocal: true, isDefinition: true)
!1758 = !DIGlobalVariableExpression(var: !1759, expr: !DIExpression())
!1759 = distinct !DIGlobalVariable(scope: null, file: !3, line: 80, type: !1721, isLocal: true, isDefinition: true)
!1760 = !DIGlobalVariableExpression(var: !1761, expr: !DIExpression())
!1761 = distinct !DIGlobalVariable(name: "dev_attr_max_time_ms", scope: !2, file: !3, line: 80, type: !1695, isLocal: true, isDefinition: true)
!1762 = !DIGlobalVariableExpression(var: !1763, expr: !DIExpression())
!1763 = distinct !DIGlobalVariable(scope: null, file: !3, line: 89, type: !1736, isLocal: true, isDefinition: true)
!1764 = !DIGlobalVariableExpression(var: !1765, expr: !DIExpression())
!1765 = distinct !DIGlobalVariable(name: "dev_attr_last_change_ms", scope: !2, file: !3, line: 89, type: !1695, isLocal: true, isDefinition: true)
!1766 = !DIGlobalVariableExpression(var: !1767, expr: !DIExpression())
!1767 = distinct !DIGlobalVariable(scope: null, file: !3, line: 114, type: !1768, isLocal: true, isDefinition: true)
!1768 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 192, elements: !1769)
!1769 = !{!1770}
!1770 = !DISubrange(count: 24)
!1771 = !DIGlobalVariableExpression(var: !1772, expr: !DIExpression())
!1772 = distinct !DIGlobalVariable(name: "dev_attr_prevent_suspend_time_ms", scope: !2, file: !3, line: 114, type: !1695, isLocal: true, isDefinition: true)
!1773 = !DIGlobalVariableExpression(var: !1774, expr: !DIExpression())
!1774 = distinct !DIGlobalVariable(scope: null, file: !3, line: 213, type: !1775, isLocal: true, isDefinition: true)
!1775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !120, size: 56, elements: !1037)
!1776 = !{i32 7, !"Dwarf Version", i32 5}
!1777 = !{i32 2, !"Debug Info Version", i32 3}
!1778 = !{i32 1, !"wchar_size", i32 2}
!1779 = !{i32 8, !"cf-protection-branch", i32 1}
!1780 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1781 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1782 = !{i32 1, !"Code Model", i32 2}
!1783 = !{i32 1, !"override-stack-alignment", i32 8}
!1784 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1785 = distinct !DISubprogram(name: "wakeup_source_sysfs_add", scope: !3, file: !3, line: 177, type: !1786, scopeLine: 178, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1788)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!46, !810, !1340}
!1788 = !{!1789, !1790, !1791}
!1789 = !DILocalVariable(name: "parent", arg: 1, scope: !1785, file: !3, line: 177, type: !810)
!1790 = !DILocalVariable(name: "ws", arg: 2, scope: !1785, file: !3, line: 177, type: !1340)
!1791 = !DILocalVariable(name: "dev", scope: !1785, file: !3, line: 179, type: !810)
!1792 = !DILocation(line: 177, column: 44, scope: !1785)
!1793 = !DILocation(line: 177, column: 74, scope: !1785)
!1794 = !DILocation(line: 179, column: 2, scope: !1785)
!1795 = !DILocation(line: 179, column: 17, scope: !1785)
!1796 = !DILocation(line: 181, column: 36, scope: !1785)
!1797 = !DILocation(line: 181, column: 44, scope: !1785)
!1798 = !DILocation(line: 181, column: 8, scope: !1785)
!1799 = !DILocation(line: 181, column: 6, scope: !1785)
!1800 = !DILocation(line: 182, column: 13, scope: !1801)
!1801 = distinct !DILexicalBlock(scope: !1785, file: !3, line: 182, column: 6)
!1802 = !DILocation(line: 182, column: 6, scope: !1801)
!1803 = !DILocation(line: 182, column: 6, scope: !1785)
!1804 = !DILocation(line: 183, column: 18, scope: !1801)
!1805 = !DILocation(line: 183, column: 10, scope: !1801)
!1806 = !DILocation(line: 183, column: 3, scope: !1801)
!1807 = !DILocation(line: 184, column: 12, scope: !1785)
!1808 = !DILocation(line: 184, column: 2, scope: !1785)
!1809 = !DILocation(line: 184, column: 6, scope: !1785)
!1810 = !DILocation(line: 184, column: 10, scope: !1785)
!1811 = !DILocation(line: 186, column: 2, scope: !1785)
!1812 = !DILocation(line: 187, column: 1, scope: !1785)
!1813 = distinct !DISubprogram(name: "wakeup_source_device_create", scope: !3, file: !3, line: 136, type: !1814, scopeLine: 138, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1816)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!810, !810, !1340}
!1816 = !{!1817, !1818, !1819, !1820, !1821}
!1817 = !DILocalVariable(name: "parent", arg: 1, scope: !1813, file: !3, line: 136, type: !810)
!1818 = !DILocalVariable(name: "ws", arg: 2, scope: !1813, file: !3, line: 137, type: !1340)
!1819 = !DILocalVariable(name: "dev", scope: !1813, file: !3, line: 139, type: !810)
!1820 = !DILocalVariable(name: "retval", scope: !1813, file: !3, line: 140, type: !46)
!1821 = !DILabel(scope: !1813, name: "error", file: !3, line: 167)
!1822 = !DILocation(line: 136, column: 66, scope: !1813)
!1823 = !DILocation(line: 137, column: 31, scope: !1813)
!1824 = !DILocation(line: 139, column: 2, scope: !1813)
!1825 = !DILocation(line: 139, column: 17, scope: !1813)
!1826 = !DILocation(line: 140, column: 2, scope: !1813)
!1827 = !DILocation(line: 140, column: 6, scope: !1813)
!1828 = !DILocation(line: 142, column: 8, scope: !1813)
!1829 = !DILocation(line: 142, column: 6, scope: !1813)
!1830 = !DILocation(line: 143, column: 7, scope: !1831)
!1831 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 143, column: 6)
!1832 = !DILocation(line: 143, column: 6, scope: !1813)
!1833 = !DILocation(line: 144, column: 10, scope: !1834)
!1834 = distinct !DILexicalBlock(scope: !1831, file: !3, line: 143, column: 12)
!1835 = !DILocation(line: 145, column: 3, scope: !1834)
!1836 = !DILocation(line: 148, column: 20, scope: !1813)
!1837 = !DILocation(line: 148, column: 2, scope: !1813)
!1838 = !DILocation(line: 149, column: 2, scope: !1813)
!1839 = !DILocation(line: 149, column: 7, scope: !1813)
!1840 = !DILocation(line: 149, column: 12, scope: !1813)
!1841 = !DILocation(line: 150, column: 15, scope: !1813)
!1842 = !DILocation(line: 150, column: 2, scope: !1813)
!1843 = !DILocation(line: 150, column: 7, scope: !1813)
!1844 = !DILocation(line: 150, column: 13, scope: !1813)
!1845 = !DILocation(line: 151, column: 16, scope: !1813)
!1846 = !DILocation(line: 151, column: 2, scope: !1813)
!1847 = !DILocation(line: 151, column: 7, scope: !1813)
!1848 = !DILocation(line: 151, column: 14, scope: !1813)
!1849 = !DILocation(line: 152, column: 2, scope: !1813)
!1850 = !DILocation(line: 152, column: 7, scope: !1813)
!1851 = !DILocation(line: 152, column: 14, scope: !1813)
!1852 = !DILocation(line: 153, column: 2, scope: !1813)
!1853 = !DILocation(line: 153, column: 7, scope: !1813)
!1854 = !DILocation(line: 153, column: 15, scope: !1813)
!1855 = !DILocation(line: 154, column: 18, scope: !1813)
!1856 = !DILocation(line: 154, column: 23, scope: !1813)
!1857 = !DILocation(line: 154, column: 2, scope: !1813)
!1858 = !DILocation(line: 155, column: 29, scope: !1813)
!1859 = !DILocation(line: 155, column: 2, scope: !1813)
!1860 = !DILocation(line: 157, column: 24, scope: !1813)
!1861 = !DILocation(line: 157, column: 41, scope: !1813)
!1862 = !DILocation(line: 157, column: 45, scope: !1813)
!1863 = !DILocation(line: 157, column: 11, scope: !1813)
!1864 = !DILocation(line: 157, column: 9, scope: !1813)
!1865 = !DILocation(line: 158, column: 6, scope: !1866)
!1866 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 158, column: 6)
!1867 = !DILocation(line: 158, column: 6, scope: !1813)
!1868 = !DILocation(line: 159, column: 3, scope: !1866)
!1869 = !DILocation(line: 161, column: 22, scope: !1813)
!1870 = !DILocation(line: 161, column: 11, scope: !1813)
!1871 = !DILocation(line: 161, column: 9, scope: !1813)
!1872 = !DILocation(line: 162, column: 6, scope: !1873)
!1873 = distinct !DILexicalBlock(scope: !1813, file: !3, line: 162, column: 6)
!1874 = !DILocation(line: 162, column: 6, scope: !1813)
!1875 = !DILocation(line: 163, column: 3, scope: !1873)
!1876 = !DILocation(line: 165, column: 9, scope: !1813)
!1877 = !DILocation(line: 165, column: 2, scope: !1813)
!1878 = !DILocation(line: 167, column: 1, scope: !1813)
!1879 = !DILocation(line: 168, column: 13, scope: !1813)
!1880 = !DILocation(line: 168, column: 2, scope: !1813)
!1881 = !DILocation(line: 169, column: 17, scope: !1813)
!1882 = !DILocation(line: 169, column: 9, scope: !1813)
!1883 = !DILocation(line: 169, column: 2, scope: !1813)
!1884 = !DILocation(line: 170, column: 1, scope: !1813)
!1885 = distinct !DISubprogram(name: "IS_ERR", scope: !1886, file: !1886, line: 59, type: !1887, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1889)
!1886 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!1887 = !DISubroutineType(types: !1888)
!1888 = !{!299, !309}
!1889 = !{!1890}
!1890 = !DILocalVariable(name: "ptr", arg: 1, scope: !1885, file: !1886, line: 59, type: !309)
!1891 = !DILocation(line: 59, column: 60, scope: !1885)
!1892 = !DILocation(line: 61, column: 9, scope: !1885)
!1893 = !DILocation(line: 61, column: 2, scope: !1885)
!1894 = distinct !DISubprogram(name: "PTR_ERR", scope: !1886, file: !1886, line: 49, type: !1895, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1897)
!1895 = !DISubroutineType(types: !1896)
!1896 = !{!115, !309}
!1897 = !{!1898}
!1898 = !DILocalVariable(name: "ptr", arg: 1, scope: !1894, file: !1886, line: 49, type: !309)
!1899 = !DILocation(line: 49, column: 61, scope: !1894)
!1900 = !DILocation(line: 51, column: 16, scope: !1894)
!1901 = !DILocation(line: 51, column: 9, scope: !1894)
!1902 = !DILocation(line: 51, column: 2, scope: !1894)
!1903 = distinct !DISubprogram(name: "pm_wakeup_source_sysfs_add", scope: !3, file: !3, line: 194, type: !839, scopeLine: 195, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1904)
!1904 = !{!1905}
!1905 = !DILocalVariable(name: "parent", arg: 1, scope: !1903, file: !3, line: 194, type: !810)
!1906 = !DILocation(line: 194, column: 47, scope: !1903)
!1907 = !DILocation(line: 196, column: 7, scope: !1908)
!1908 = distinct !DILexicalBlock(scope: !1903, file: !3, line: 196, column: 6)
!1909 = !DILocation(line: 196, column: 15, scope: !1908)
!1910 = !DILocation(line: 196, column: 21, scope: !1908)
!1911 = !DILocation(line: 196, column: 28, scope: !1908)
!1912 = !DILocation(line: 196, column: 31, scope: !1908)
!1913 = !DILocation(line: 196, column: 39, scope: !1908)
!1914 = !DILocation(line: 196, column: 45, scope: !1908)
!1915 = !DILocation(line: 196, column: 53, scope: !1908)
!1916 = !DILocation(line: 196, column: 6, scope: !1903)
!1917 = !DILocation(line: 197, column: 3, scope: !1908)
!1918 = !DILocation(line: 199, column: 33, scope: !1903)
!1919 = !DILocation(line: 199, column: 41, scope: !1903)
!1920 = !DILocation(line: 199, column: 49, scope: !1903)
!1921 = !DILocation(line: 199, column: 55, scope: !1903)
!1922 = !DILocation(line: 199, column: 9, scope: !1903)
!1923 = !DILocation(line: 199, column: 2, scope: !1903)
!1924 = !DILocation(line: 200, column: 1, scope: !1903)
!1925 = distinct !DISubprogram(name: "wakeup_source_sysfs_remove", scope: !3, file: !3, line: 206, type: !1926, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1928)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{null, !1340}
!1928 = !{!1929}
!1929 = !DILocalVariable(name: "ws", arg: 1, scope: !1925, file: !3, line: 206, type: !1340)
!1930 = !DILocation(line: 206, column: 55, scope: !1925)
!1931 = !DILocation(line: 208, column: 20, scope: !1925)
!1932 = !DILocation(line: 208, column: 24, scope: !1925)
!1933 = !DILocation(line: 208, column: 2, scope: !1925)
!1934 = !DILocation(line: 209, column: 1, scope: !1925)
!1935 = !DISubprogram(name: "device_unregister", scope: !26, file: !26, line: 1055, type: !830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1936 = distinct !DISubprogram(name: "__initstub__kmod_wakeup_stats__205_217_wakeup_sources_sysfs_init2", scope: !3, file: !3, line: 217, type: !1017, scopeLine: 217, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1937 = !DILocation(line: 217, column: 1, scope: !1936)
!1938 = distinct !DISubprogram(name: "wakeup_sources_sysfs_init", scope: !3, file: !3, line: 211, type: !1017, scopeLine: 212, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!1939 = !DILocation(line: 213, column: 17, scope: !1938)
!1940 = !DILocation(line: 213, column: 15, scope: !1938)
!1941 = !DILocation(line: 215, column: 25, scope: !1938)
!1942 = !DILocation(line: 215, column: 9, scope: !1938)
!1943 = !DILocation(line: 215, column: 2, scope: !1938)
!1944 = distinct !DISubprogram(name: "kzalloc", scope: !101, file: !101, line: 719, type: !1945, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1947)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!111, !282, !112}
!1947 = !{!1948, !1949}
!1948 = !DILocalVariable(name: "size", arg: 1, scope: !1944, file: !101, line: 719, type: !282)
!1949 = !DILocalVariable(name: "flags", arg: 2, scope: !1944, file: !101, line: 719, type: !112)
!1950 = !DILocation(line: 719, column: 52, scope: !1944)
!1951 = !DILocation(line: 719, column: 64, scope: !1944)
!1952 = !DILocation(line: 721, column: 17, scope: !1944)
!1953 = !DILocation(line: 721, column: 23, scope: !1944)
!1954 = !DILocation(line: 721, column: 29, scope: !1944)
!1955 = !DILocation(line: 721, column: 9, scope: !1944)
!1956 = !DILocation(line: 721, column: 2, scope: !1944)
!1957 = !DISubprogram(name: "device_initialize", scope: !26, file: !26, line: 1056, type: !830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1958 = distinct !DISubprogram(name: "device_create_release", scope: !3, file: !3, line: 131, type: !830, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1959)
!1959 = !{!1960}
!1960 = !DILocalVariable(name: "dev", arg: 1, scope: !1958, file: !3, line: 131, type: !810)
!1961 = !DILocation(line: 131, column: 50, scope: !1958)
!1962 = !DILocation(line: 133, column: 8, scope: !1958)
!1963 = !DILocation(line: 133, column: 2, scope: !1958)
!1964 = !DILocation(line: 134, column: 1, scope: !1958)
!1965 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !26, file: !26, line: 921, type: !1966, scopeLine: 922, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1968)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{null, !810, !111}
!1968 = !{!1969, !1970}
!1969 = !DILocalVariable(name: "dev", arg: 1, scope: !1965, file: !26, line: 921, type: !810)
!1970 = !DILocalVariable(name: "data", arg: 2, scope: !1965, file: !26, line: 921, type: !111)
!1971 = !DILocation(line: 921, column: 51, scope: !1965)
!1972 = !DILocation(line: 921, column: 62, scope: !1965)
!1973 = !DILocation(line: 923, column: 21, scope: !1965)
!1974 = !DILocation(line: 923, column: 2, scope: !1965)
!1975 = !DILocation(line: 923, column: 7, scope: !1965)
!1976 = !DILocation(line: 923, column: 19, scope: !1965)
!1977 = !DILocation(line: 924, column: 1, scope: !1965)
!1978 = distinct !DISubprogram(name: "device_set_pm_not_required", scope: !26, file: !26, line: 968, type: !830, scopeLine: 969, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1979)
!1979 = !{!1980}
!1980 = !DILocalVariable(name: "dev", arg: 1, scope: !1978, file: !26, line: 968, type: !810)
!1981 = !DILocation(line: 968, column: 62, scope: !1978)
!1982 = !DILocation(line: 970, column: 2, scope: !1978)
!1983 = !DILocation(line: 970, column: 7, scope: !1978)
!1984 = !DILocation(line: 970, column: 13, scope: !1978)
!1985 = !DILocation(line: 970, column: 19, scope: !1978)
!1986 = !DILocation(line: 971, column: 1, scope: !1978)
!1987 = !DISubprogram(name: "dev_set_name", scope: !26, file: !26, line: 879, type: !1988, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!46, !810, !135, null}
!1990 = !DISubprogram(name: "device_add", scope: !26, file: !26, line: 1057, type: !839, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1991 = !DISubprogram(name: "put_device", scope: !26, file: !26, line: 1231, type: !830, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1992 = distinct !DISubprogram(name: "ERR_PTR", scope: !1886, file: !1886, line: 39, type: !1993, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1995)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{!111, !115}
!1995 = !{!1996}
!1996 = !DILocalVariable(name: "error", arg: 1, scope: !1992, file: !1886, line: 39, type: !115)
!1997 = !DILocation(line: 39, column: 48, scope: !1992)
!1998 = !DILocation(line: 41, column: 18, scope: !1992)
!1999 = !DILocation(line: 41, column: 9, scope: !1992)
!2000 = !DILocation(line: 41, column: 2, scope: !1992)
!2001 = distinct !DISubprogram(name: "kmalloc", scope: !101, file: !101, line: 591, type: !1945, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2002)
!2002 = !{!2003, !2004, !2005}
!2003 = !DILocalVariable(name: "size", arg: 1, scope: !2001, file: !101, line: 591, type: !282)
!2004 = !DILocalVariable(name: "flags", arg: 2, scope: !2001, file: !101, line: 591, type: !112)
!2005 = !DILocalVariable(name: "index", scope: !2006, file: !101, line: 594, type: !7)
!2006 = distinct !DILexicalBlock(scope: !2007, file: !101, line: 593, column: 42)
!2007 = distinct !DILexicalBlock(scope: !2001, file: !101, line: 593, column: 6)
!2008 = !DILocation(line: 591, column: 61, scope: !2001)
!2009 = !DILocation(line: 591, column: 73, scope: !2001)
!2010 = !DILocation(line: 593, column: 27, scope: !2007)
!2011 = !DILocation(line: 593, column: 6, scope: !2007)
!2012 = !DILocation(line: 593, column: 33, scope: !2007)
!2013 = !DILocation(line: 593, column: 36, scope: !2007)
!2014 = !DILocation(line: 593, column: 6, scope: !2001)
!2015 = !DILocation(line: 594, column: 3, scope: !2006)
!2016 = !DILocation(line: 594, column: 16, scope: !2006)
!2017 = !DILocation(line: 596, column: 7, scope: !2018)
!2018 = distinct !DILexicalBlock(scope: !2006, file: !101, line: 596, column: 7)
!2019 = !DILocation(line: 596, column: 12, scope: !2018)
!2020 = !DILocation(line: 596, column: 7, scope: !2006)
!2021 = !DILocation(line: 597, column: 25, scope: !2018)
!2022 = !DILocation(line: 597, column: 31, scope: !2018)
!2023 = !DILocation(line: 597, column: 11, scope: !2018)
!2024 = !DILocation(line: 597, column: 4, scope: !2018)
!2025 = !DILocation(line: 599, column: 11, scope: !2006)
!2026 = !DILocation(line: 599, column: 9, scope: !2006)
!2027 = !DILocation(line: 601, column: 33, scope: !2006)
!2028 = !DILocation(line: 601, column: 40, scope: !2006)
!2029 = !DILocation(line: 601, column: 20, scope: !2006)
!2030 = !DILocation(line: 601, column: 5, scope: !2006)
!2031 = !DILocation(line: 601, column: 51, scope: !2006)
!2032 = !DILocation(line: 602, column: 5, scope: !2006)
!2033 = !DILocation(line: 602, column: 12, scope: !2006)
!2034 = !DILocation(line: 600, column: 10, scope: !2006)
!2035 = !DILocation(line: 600, column: 3, scope: !2006)
!2036 = !DILocation(line: 603, column: 2, scope: !2007)
!2037 = !DILocation(line: 604, column: 19, scope: !2001)
!2038 = !DILocation(line: 604, column: 25, scope: !2001)
!2039 = !DILocation(line: 604, column: 9, scope: !2001)
!2040 = !DILocation(line: 604, column: 2, scope: !2001)
!2041 = !DILocation(line: 605, column: 1, scope: !2001)
!2042 = !DISubprogram(name: "kmalloc_large", scope: !101, file: !101, line: 531, type: !1945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2043 = distinct !DISubprogram(name: "__kmalloc_index", scope: !101, file: !101, line: 444, type: !2044, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2046)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{!7, !282, !299}
!2046 = !{!2047, !2048}
!2047 = !DILocalVariable(name: "size", arg: 1, scope: !2043, file: !101, line: 444, type: !282)
!2048 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2043, file: !101, line: 445, type: !299)
!2049 = !DILocation(line: 444, column: 60, scope: !2043)
!2050 = !DILocation(line: 445, column: 16, scope: !2043)
!2051 = !DILocation(line: 447, column: 7, scope: !2052)
!2052 = distinct !DILexicalBlock(scope: !2043, file: !101, line: 447, column: 6)
!2053 = !DILocation(line: 447, column: 6, scope: !2043)
!2054 = !DILocation(line: 448, column: 3, scope: !2052)
!2055 = !DILocation(line: 450, column: 6, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2043, file: !101, line: 450, column: 6)
!2057 = !DILocation(line: 450, column: 11, scope: !2056)
!2058 = !DILocation(line: 450, column: 6, scope: !2043)
!2059 = !DILocation(line: 451, column: 3, scope: !2056)
!2060 = !DILocation(line: 453, column: 32, scope: !2061)
!2061 = distinct !DILexicalBlock(scope: !2043, file: !101, line: 453, column: 6)
!2062 = !DILocation(line: 453, column: 37, scope: !2061)
!2063 = !DILocation(line: 453, column: 42, scope: !2061)
!2064 = !DILocation(line: 453, column: 45, scope: !2061)
!2065 = !DILocation(line: 453, column: 50, scope: !2061)
!2066 = !DILocation(line: 453, column: 6, scope: !2043)
!2067 = !DILocation(line: 454, column: 3, scope: !2061)
!2068 = !DILocation(line: 455, column: 32, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2043, file: !101, line: 455, column: 6)
!2070 = !DILocation(line: 455, column: 37, scope: !2069)
!2071 = !DILocation(line: 455, column: 43, scope: !2069)
!2072 = !DILocation(line: 455, column: 46, scope: !2069)
!2073 = !DILocation(line: 455, column: 51, scope: !2069)
!2074 = !DILocation(line: 455, column: 6, scope: !2043)
!2075 = !DILocation(line: 456, column: 3, scope: !2069)
!2076 = !DILocation(line: 457, column: 6, scope: !2077)
!2077 = distinct !DILexicalBlock(scope: !2043, file: !101, line: 457, column: 6)
!2078 = !DILocation(line: 457, column: 11, scope: !2077)
!2079 = !DILocation(line: 457, column: 6, scope: !2043)
!2080 = !DILocation(line: 457, column: 26, scope: !2077)
!2081 = !DILocation(line: 458, column: 6, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2043, file: !101, line: 458, column: 6)
!2083 = !DILocation(line: 458, column: 11, scope: !2082)
!2084 = !DILocation(line: 458, column: 6, scope: !2043)
!2085 = !DILocation(line: 458, column: 26, scope: !2082)
!2086 = !DILocation(line: 459, column: 6, scope: !2087)
!2087 = distinct !DILexicalBlock(scope: !2043, file: !101, line: 459, column: 6)
!2088 = !DILocation(line: 459, column: 11, scope: !2087)
!2089 = !DILocation(line: 459, column: 6, scope: !2043)
!2090 = !DILocation(line: 459, column: 26, scope: !2087)
!2091 = !DILocation(line: 460, column: 6, scope: !2092)
!2092 = distinct !DILexicalBlock(scope: !2043, file: !101, line: 460, column: 6)
!2093 = !DILocation(line: 460, column: 11, scope: !2092)
!2094 = !DILocation(line: 460, column: 6, scope: !2043)
!2095 = !DILocation(line: 460, column: 26, scope: !2092)
!2096 = !DILocation(line: 461, column: 6, scope: !2097)
!2097 = distinct !DILexicalBlock(scope: !2043, file: !101, line: 461, column: 6)
!2098 = !DILocation(line: 461, column: 11, scope: !2097)
!2099 = !DILocation(line: 461, column: 6, scope: !2043)
!2100 = !DILocation(line: 461, column: 26, scope: !2097)
!2101 = !DILocation(line: 462, column: 6, scope: !2102)
!2102 = distinct !DILexicalBlock(scope: !2043, file: !101, line: 462, column: 6)
!2103 = !DILocation(line: 462, column: 11, scope: !2102)
!2104 = !DILocation(line: 462, column: 6, scope: !2043)
!2105 = !DILocation(line: 462, column: 26, scope: !2102)
!2106 = !DILocation(line: 463, column: 6, scope: !2107)
!2107 = distinct !DILexicalBlock(scope: !2043, file: !101, line: 463, column: 6)
!2108 = !DILocation(line: 463, column: 11, scope: !2107)
!2109 = !DILocation(line: 463, column: 6, scope: !2043)
!2110 = !DILocation(line: 463, column: 26, scope: !2107)
!2111 = !DILocation(line: 464, column: 6, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2043, file: !101, line: 464, column: 6)
!2113 = !DILocation(line: 464, column: 11, scope: !2112)
!2114 = !DILocation(line: 464, column: 6, scope: !2043)
!2115 = !DILocation(line: 464, column: 26, scope: !2112)
!2116 = !DILocation(line: 465, column: 6, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2043, file: !101, line: 465, column: 6)
!2118 = !DILocation(line: 465, column: 11, scope: !2117)
!2119 = !DILocation(line: 465, column: 6, scope: !2043)
!2120 = !DILocation(line: 465, column: 26, scope: !2117)
!2121 = !DILocation(line: 466, column: 6, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2043, file: !101, line: 466, column: 6)
!2123 = !DILocation(line: 466, column: 11, scope: !2122)
!2124 = !DILocation(line: 466, column: 6, scope: !2043)
!2125 = !DILocation(line: 466, column: 26, scope: !2122)
!2126 = !DILocation(line: 467, column: 6, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2043, file: !101, line: 467, column: 6)
!2128 = !DILocation(line: 467, column: 11, scope: !2127)
!2129 = !DILocation(line: 467, column: 6, scope: !2043)
!2130 = !DILocation(line: 467, column: 26, scope: !2127)
!2131 = !DILocation(line: 468, column: 6, scope: !2132)
!2132 = distinct !DILexicalBlock(scope: !2043, file: !101, line: 468, column: 6)
!2133 = !DILocation(line: 468, column: 11, scope: !2132)
!2134 = !DILocation(line: 468, column: 6, scope: !2043)
!2135 = !DILocation(line: 468, column: 26, scope: !2132)
!2136 = !DILocation(line: 469, column: 6, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2043, file: !101, line: 469, column: 6)
!2138 = !DILocation(line: 469, column: 11, scope: !2137)
!2139 = !DILocation(line: 469, column: 6, scope: !2043)
!2140 = !DILocation(line: 469, column: 26, scope: !2137)
!2141 = !DILocation(line: 470, column: 6, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2043, file: !101, line: 470, column: 6)
!2143 = !DILocation(line: 470, column: 11, scope: !2142)
!2144 = !DILocation(line: 470, column: 6, scope: !2043)
!2145 = !DILocation(line: 470, column: 26, scope: !2142)
!2146 = !DILocation(line: 471, column: 6, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2043, file: !101, line: 471, column: 6)
!2148 = !DILocation(line: 471, column: 11, scope: !2147)
!2149 = !DILocation(line: 471, column: 6, scope: !2043)
!2150 = !DILocation(line: 471, column: 26, scope: !2147)
!2151 = !DILocation(line: 472, column: 6, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2043, file: !101, line: 472, column: 6)
!2153 = !DILocation(line: 472, column: 11, scope: !2152)
!2154 = !DILocation(line: 472, column: 6, scope: !2043)
!2155 = !DILocation(line: 472, column: 26, scope: !2152)
!2156 = !DILocation(line: 473, column: 6, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2043, file: !101, line: 473, column: 6)
!2158 = !DILocation(line: 473, column: 11, scope: !2157)
!2159 = !DILocation(line: 473, column: 6, scope: !2043)
!2160 = !DILocation(line: 473, column: 26, scope: !2157)
!2161 = !DILocation(line: 474, column: 6, scope: !2162)
!2162 = distinct !DILexicalBlock(scope: !2043, file: !101, line: 474, column: 6)
!2163 = !DILocation(line: 474, column: 11, scope: !2162)
!2164 = !DILocation(line: 474, column: 6, scope: !2043)
!2165 = !DILocation(line: 474, column: 27, scope: !2162)
!2166 = !DILocation(line: 475, column: 6, scope: !2167)
!2167 = distinct !DILexicalBlock(scope: !2043, file: !101, line: 475, column: 6)
!2168 = !DILocation(line: 475, column: 11, scope: !2167)
!2169 = !DILocation(line: 475, column: 6, scope: !2043)
!2170 = !DILocation(line: 475, column: 32, scope: !2167)
!2171 = !DILocation(line: 477, column: 50, scope: !2172)
!2172 = distinct !DILexicalBlock(scope: !2043, file: !101, line: 477, column: 6)
!2173 = !{i8 0, i8 2}
!2174 = !DILocation(line: 477, column: 6, scope: !2043)
!2175 = !DILocation(line: 478, column: 3, scope: !2172)
!2176 = !DILocation(line: 478, column: 3, scope: !2177)
!2177 = distinct !DILexicalBlock(scope: !2178, file: !101, line: 478, column: 3)
!2178 = distinct !DILexicalBlock(scope: !2172, file: !101, line: 478, column: 3)
!2179 = !{i32 -2142316160}
!2180 = !DILocation(line: 478, column: 3, scope: !2178)
!2181 = !DILocation(line: 480, column: 3, scope: !2172)
!2182 = !DILocation(line: 480, column: 3, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2172, file: !101, line: 480, column: 3)
!2184 = !DILocation(line: 480, column: 3, scope: !2185)
!2185 = distinct !DILexicalBlock(scope: !2183, file: !101, line: 480, column: 3)
!2186 = !DILocation(line: 480, column: 3, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2183, file: !101, line: 480, column: 3)
!2188 = !{i64 2152651339, i64 2152651368, i64 2152651414, i64 2152651472, i64 2152651526, i64 2152651580, i64 2152651635, i64 2152651666}
!2189 = !DILocation(line: 483, column: 2, scope: !2043)
!2190 = !DILocation(line: 484, column: 1, scope: !2043)
!2191 = !DISubprogram(name: "kmalloc_trace", scope: !101, file: !101, line: 525, type: !2192, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!111, !2194, !112, !282}
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2196, line: 11, flags: DIFlagFwdDecl)
!2196 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2197 = distinct !DISubprogram(name: "kmalloc_type", scope: !101, file: !101, line: 401, type: !2198, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2200)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!100, !112, !114}
!2200 = !{!2201, !2202}
!2201 = !DILocalVariable(name: "flags", arg: 1, scope: !2197, file: !101, line: 401, type: !112)
!2202 = !DILocalVariable(name: "caller", arg: 2, scope: !2197, file: !101, line: 401, type: !114)
!2203 = !DILocation(line: 401, column: 67, scope: !2197)
!2204 = !DILocation(line: 401, column: 88, scope: !2197)
!2205 = !DILocation(line: 407, column: 6, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2197, file: !101, line: 407, column: 6)
!2207 = !DILocation(line: 407, column: 6, scope: !2197)
!2208 = !DILocation(line: 413, column: 3, scope: !2206)
!2209 = !DILocation(line: 423, column: 38, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2197, file: !101, line: 423, column: 6)
!2211 = !DILocation(line: 423, column: 44, scope: !2210)
!2212 = !DILocation(line: 423, column: 6, scope: !2197)
!2213 = !DILocation(line: 424, column: 3, scope: !2210)
!2214 = !DILocation(line: 426, column: 3, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2197, file: !101, line: 425, column: 6)
!2216 = !DILocation(line: 429, column: 1, scope: !2197)
!2217 = !DISubprogram(name: "__kmalloc", scope: !101, file: !101, line: 488, type: !1945, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2218 = !DISubprogram(name: "__compiletime_assert_204", scope: !101, file: !101, line: 478, type: !1258, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2219 = distinct !DISubprogram(name: "name_show", scope: !3, file: !3, line: 91, type: !1700, scopeLine: 93, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2220)
!2220 = !{!2221, !2222, !2223, !2224}
!2221 = !DILocalVariable(name: "dev", arg: 1, scope: !2219, file: !3, line: 91, type: !810)
!2222 = !DILocalVariable(name: "attr", arg: 2, scope: !2219, file: !3, line: 91, type: !1702)
!2223 = !DILocalVariable(name: "buf", arg: 3, scope: !2219, file: !3, line: 92, type: !238)
!2224 = !DILocalVariable(name: "ws", scope: !2219, file: !3, line: 94, type: !1340)
!2225 = !DILocation(line: 91, column: 41, scope: !2219)
!2226 = !DILocation(line: 91, column: 71, scope: !2219)
!2227 = !DILocation(line: 92, column: 11, scope: !2219)
!2228 = !DILocation(line: 94, column: 2, scope: !2219)
!2229 = !DILocation(line: 94, column: 24, scope: !2219)
!2230 = !DILocation(line: 94, column: 45, scope: !2219)
!2231 = !DILocation(line: 94, column: 29, scope: !2219)
!2232 = !DILocation(line: 96, column: 20, scope: !2219)
!2233 = !DILocation(line: 96, column: 33, scope: !2219)
!2234 = !DILocation(line: 96, column: 37, scope: !2219)
!2235 = !DILocation(line: 96, column: 9, scope: !2219)
!2236 = !DILocation(line: 97, column: 1, scope: !2219)
!2237 = !DILocation(line: 96, column: 2, scope: !2219)
!2238 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !26, file: !26, line: 916, type: !2239, scopeLine: 917, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2241)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!111, !804}
!2241 = !{!2242}
!2242 = !DILocalVariable(name: "dev", arg: 1, scope: !2238, file: !26, line: 916, type: !804)
!2243 = !DILocation(line: 916, column: 58, scope: !2238)
!2244 = !DILocation(line: 918, column: 9, scope: !2238)
!2245 = !DILocation(line: 918, column: 14, scope: !2238)
!2246 = !DILocation(line: 918, column: 2, scope: !2238)
!2247 = !DISubprogram(name: "sysfs_emit", scope: !142, file: !142, line: 357, type: !2248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!46, !238, !135, null}
!2250 = distinct !DISubprogram(name: "active_count_show", scope: !3, file: !3, line: 33, type: !1700, scopeLine: 33, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2251)
!2251 = !{!2252, !2253, !2254, !2255}
!2252 = !DILocalVariable(name: "dev", arg: 1, scope: !2250, file: !3, line: 33, type: !810)
!2253 = !DILocalVariable(name: "attr", arg: 2, scope: !2250, file: !3, line: 33, type: !1702)
!2254 = !DILocalVariable(name: "buf", arg: 3, scope: !2250, file: !3, line: 33, type: !238)
!2255 = !DILocalVariable(name: "ws", scope: !2250, file: !3, line: 33, type: !1340)
!2256 = !DILocation(line: 33, column: 1, scope: !2250)
!2257 = distinct !DISubprogram(name: "event_count_show", scope: !3, file: !3, line: 34, type: !1700, scopeLine: 34, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2258)
!2258 = !{!2259, !2260, !2261, !2262}
!2259 = !DILocalVariable(name: "dev", arg: 1, scope: !2257, file: !3, line: 34, type: !810)
!2260 = !DILocalVariable(name: "attr", arg: 2, scope: !2257, file: !3, line: 34, type: !1702)
!2261 = !DILocalVariable(name: "buf", arg: 3, scope: !2257, file: !3, line: 34, type: !238)
!2262 = !DILocalVariable(name: "ws", scope: !2257, file: !3, line: 34, type: !1340)
!2263 = !DILocation(line: 34, column: 1, scope: !2257)
!2264 = distinct !DISubprogram(name: "wakeup_count_show", scope: !3, file: !3, line: 35, type: !1700, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2265)
!2265 = !{!2266, !2267, !2268, !2269}
!2266 = !DILocalVariable(name: "dev", arg: 1, scope: !2264, file: !3, line: 35, type: !810)
!2267 = !DILocalVariable(name: "attr", arg: 2, scope: !2264, file: !3, line: 35, type: !1702)
!2268 = !DILocalVariable(name: "buf", arg: 3, scope: !2264, file: !3, line: 35, type: !238)
!2269 = !DILocalVariable(name: "ws", scope: !2264, file: !3, line: 35, type: !1340)
!2270 = !DILocation(line: 35, column: 1, scope: !2264)
!2271 = distinct !DISubprogram(name: "expire_count_show", scope: !3, file: !3, line: 36, type: !1700, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2272)
!2272 = !{!2273, !2274, !2275, !2276}
!2273 = !DILocalVariable(name: "dev", arg: 1, scope: !2271, file: !3, line: 36, type: !810)
!2274 = !DILocalVariable(name: "attr", arg: 2, scope: !2271, file: !3, line: 36, type: !1702)
!2275 = !DILocalVariable(name: "buf", arg: 3, scope: !2271, file: !3, line: 36, type: !238)
!2276 = !DILocalVariable(name: "ws", scope: !2271, file: !3, line: 36, type: !1340)
!2277 = !DILocation(line: 36, column: 1, scope: !2271)
!2278 = distinct !DISubprogram(name: "active_time_ms_show", scope: !3, file: !3, line: 38, type: !1700, scopeLine: 40, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2279)
!2279 = !{!2280, !2281, !2282, !2283, !2284}
!2280 = !DILocalVariable(name: "dev", arg: 1, scope: !2278, file: !3, line: 38, type: !810)
!2281 = !DILocalVariable(name: "attr", arg: 2, scope: !2278, file: !3, line: 39, type: !1702)
!2282 = !DILocalVariable(name: "buf", arg: 3, scope: !2278, file: !3, line: 39, type: !238)
!2283 = !DILocalVariable(name: "ws", scope: !2278, file: !3, line: 41, type: !1340)
!2284 = !DILocalVariable(name: "active_time", scope: !2278, file: !3, line: 42, type: !1360)
!2285 = !DILocation(line: 38, column: 51, scope: !2278)
!2286 = !DILocation(line: 39, column: 33, scope: !2278)
!2287 = !DILocation(line: 39, column: 45, scope: !2278)
!2288 = !DILocation(line: 41, column: 2, scope: !2278)
!2289 = !DILocation(line: 41, column: 24, scope: !2278)
!2290 = !DILocation(line: 41, column: 45, scope: !2278)
!2291 = !DILocation(line: 41, column: 29, scope: !2278)
!2292 = !DILocation(line: 42, column: 2, scope: !2278)
!2293 = !DILocation(line: 42, column: 10, scope: !2278)
!2294 = !DILocation(line: 43, column: 3, scope: !2278)
!2295 = !DILocation(line: 43, column: 7, scope: !2278)
!2296 = !DILocation(line: 43, column: 16, scope: !2278)
!2297 = !DILocation(line: 45, column: 20, scope: !2278)
!2298 = !DILocation(line: 45, column: 47, scope: !2278)
!2299 = !DILocation(line: 45, column: 35, scope: !2278)
!2300 = !DILocation(line: 45, column: 9, scope: !2278)
!2301 = !DILocation(line: 46, column: 1, scope: !2278)
!2302 = !DILocation(line: 45, column: 2, scope: !2278)
!2303 = !DISubprogram(name: "ktime_get", scope: !2304, file: !2304, line: 67, type: !1443, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2304 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0f8a5b548f2f61d6d6461a10d2f09afe")
!2305 = distinct !DISubprogram(name: "ktime_to_ms", scope: !1361, file: !1361, line: 164, type: !2306, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2309)
!2306 = !DISubroutineType(types: !2307)
!2307 = !{!418, !2308}
!2308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1360)
!2309 = !{!2310}
!2310 = !DILocalVariable(name: "kt", arg: 1, scope: !2305, file: !1361, line: 164, type: !2308)
!2311 = !DILocation(line: 164, column: 45, scope: !2305)
!2312 = !DILocation(line: 166, column: 21, scope: !2305)
!2313 = !DILocation(line: 166, column: 9, scope: !2305)
!2314 = !DILocation(line: 166, column: 2, scope: !2305)
!2315 = distinct !DISubprogram(name: "ktime_divns", scope: !1361, file: !1361, line: 148, type: !2316, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2318)
!2316 = !DISubroutineType(types: !2317)
!2317 = !{!418, !2308, !418}
!2318 = !{!2319, !2320, !2321, !2323}
!2319 = !DILocalVariable(name: "kt", arg: 1, scope: !2315, file: !1361, line: 148, type: !2308)
!2320 = !DILocalVariable(name: "div", arg: 2, scope: !2315, file: !1361, line: 148, type: !418)
!2321 = !DILocalVariable(name: "__ret_warn_on", scope: !2322, file: !1361, line: 154, type: !46)
!2322 = distinct !DILexicalBlock(scope: !2315, file: !1361, line: 154, column: 2)
!2323 = !DILocalVariable(name: "__flags", scope: !2324, file: !1361, line: 154, type: !46)
!2324 = distinct !DILexicalBlock(scope: !2325, file: !1361, line: 154, column: 2)
!2325 = distinct !DILexicalBlock(scope: !2322, file: !1361, line: 154, column: 2)
!2326 = !DILocation(line: 148, column: 45, scope: !2315)
!2327 = !DILocation(line: 148, column: 53, scope: !2315)
!2328 = !DILocation(line: 154, column: 2, scope: !2322)
!2329 = !DILocation(line: 154, column: 2, scope: !2325)
!2330 = !DILocation(line: 154, column: 2, scope: !2324)
!2331 = !DILocation(line: 154, column: 2, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2324, file: !1361, line: 154, column: 2)
!2333 = !DILocation(line: 154, column: 2, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2324, file: !1361, line: 154, column: 2)
!2335 = !{i64 2150355534, i64 2150355563, i64 2150355609, i64 2150355667, i64 2150355721, i64 2150355775, i64 2150355830, i64 2150355861, i64 2150356169, i64 2150356175, i64 2150356222, i64 2150356245, i64 2150356271}
!2336 = !DILocation(line: 154, column: 2, scope: !2337)
!2337 = distinct !DILexicalBlock(scope: !2324, file: !1361, line: 154, column: 2)
!2338 = !DILocation(line: 154, column: 2, scope: !2315)
!2339 = !DILocation(line: 155, column: 9, scope: !2315)
!2340 = !DILocation(line: 155, column: 14, scope: !2315)
!2341 = !DILocation(line: 155, column: 12, scope: !2315)
!2342 = !DILocation(line: 155, column: 2, scope: !2315)
!2343 = distinct !DISubprogram(name: "total_time_ms_show", scope: !3, file: !3, line: 49, type: !1700, scopeLine: 51, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2344)
!2344 = !{!2345, !2346, !2347, !2348, !2349, !2350}
!2345 = !DILocalVariable(name: "dev", arg: 1, scope: !2343, file: !3, line: 49, type: !810)
!2346 = !DILocalVariable(name: "attr", arg: 2, scope: !2343, file: !3, line: 50, type: !1702)
!2347 = !DILocalVariable(name: "buf", arg: 3, scope: !2343, file: !3, line: 50, type: !238)
!2348 = !DILocalVariable(name: "ws", scope: !2343, file: !3, line: 52, type: !1340)
!2349 = !DILocalVariable(name: "active_time", scope: !2343, file: !3, line: 53, type: !1360)
!2350 = !DILocalVariable(name: "total_time", scope: !2343, file: !3, line: 54, type: !1360)
!2351 = !DILocation(line: 49, column: 50, scope: !2343)
!2352 = !DILocation(line: 50, column: 32, scope: !2343)
!2353 = !DILocation(line: 50, column: 44, scope: !2343)
!2354 = !DILocation(line: 52, column: 2, scope: !2343)
!2355 = !DILocation(line: 52, column: 24, scope: !2343)
!2356 = !DILocation(line: 52, column: 45, scope: !2343)
!2357 = !DILocation(line: 52, column: 29, scope: !2343)
!2358 = !DILocation(line: 53, column: 2, scope: !2343)
!2359 = !DILocation(line: 53, column: 10, scope: !2343)
!2360 = !DILocation(line: 54, column: 2, scope: !2343)
!2361 = !DILocation(line: 54, column: 10, scope: !2343)
!2362 = !DILocation(line: 54, column: 23, scope: !2343)
!2363 = !DILocation(line: 54, column: 27, scope: !2343)
!2364 = !DILocation(line: 56, column: 6, scope: !2365)
!2365 = distinct !DILexicalBlock(scope: !2343, file: !3, line: 56, column: 6)
!2366 = !DILocation(line: 56, column: 10, scope: !2365)
!2367 = !DILocation(line: 56, column: 6, scope: !2343)
!2368 = !DILocation(line: 57, column: 17, scope: !2369)
!2369 = distinct !DILexicalBlock(scope: !2365, file: !3, line: 56, column: 18)
!2370 = !DILocation(line: 57, column: 15, scope: !2369)
!2371 = !DILocation(line: 58, column: 16, scope: !2369)
!2372 = !DILocation(line: 58, column: 14, scope: !2369)
!2373 = !DILocation(line: 59, column: 2, scope: !2369)
!2374 = !DILocation(line: 61, column: 20, scope: !2343)
!2375 = !DILocation(line: 61, column: 47, scope: !2343)
!2376 = !DILocation(line: 61, column: 35, scope: !2343)
!2377 = !DILocation(line: 61, column: 9, scope: !2343)
!2378 = !DILocation(line: 62, column: 1, scope: !2343)
!2379 = !DILocation(line: 61, column: 2, scope: !2343)
!2380 = distinct !DISubprogram(name: "max_time_ms_show", scope: !3, file: !3, line: 65, type: !1700, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2381)
!2381 = !{!2382, !2383, !2384, !2385, !2386, !2387}
!2382 = !DILocalVariable(name: "dev", arg: 1, scope: !2380, file: !3, line: 65, type: !810)
!2383 = !DILocalVariable(name: "attr", arg: 2, scope: !2380, file: !3, line: 66, type: !1702)
!2384 = !DILocalVariable(name: "buf", arg: 3, scope: !2380, file: !3, line: 66, type: !238)
!2385 = !DILocalVariable(name: "ws", scope: !2380, file: !3, line: 68, type: !1340)
!2386 = !DILocalVariable(name: "active_time", scope: !2380, file: !3, line: 69, type: !1360)
!2387 = !DILocalVariable(name: "max_time", scope: !2380, file: !3, line: 70, type: !1360)
!2388 = !DILocation(line: 65, column: 48, scope: !2380)
!2389 = !DILocation(line: 66, column: 30, scope: !2380)
!2390 = !DILocation(line: 66, column: 42, scope: !2380)
!2391 = !DILocation(line: 68, column: 2, scope: !2380)
!2392 = !DILocation(line: 68, column: 24, scope: !2380)
!2393 = !DILocation(line: 68, column: 45, scope: !2380)
!2394 = !DILocation(line: 68, column: 29, scope: !2380)
!2395 = !DILocation(line: 69, column: 2, scope: !2380)
!2396 = !DILocation(line: 69, column: 10, scope: !2380)
!2397 = !DILocation(line: 70, column: 2, scope: !2380)
!2398 = !DILocation(line: 70, column: 10, scope: !2380)
!2399 = !DILocation(line: 70, column: 21, scope: !2380)
!2400 = !DILocation(line: 70, column: 25, scope: !2380)
!2401 = !DILocation(line: 72, column: 6, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2380, file: !3, line: 72, column: 6)
!2403 = !DILocation(line: 72, column: 10, scope: !2402)
!2404 = !DILocation(line: 72, column: 6, scope: !2380)
!2405 = !DILocation(line: 73, column: 17, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2402, file: !3, line: 72, column: 18)
!2407 = !DILocation(line: 73, column: 15, scope: !2406)
!2408 = !DILocation(line: 74, column: 7, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2406, file: !3, line: 74, column: 7)
!2410 = !DILocation(line: 74, column: 21, scope: !2409)
!2411 = !DILocation(line: 74, column: 19, scope: !2409)
!2412 = !DILocation(line: 74, column: 7, scope: !2406)
!2413 = !DILocation(line: 75, column: 15, scope: !2409)
!2414 = !DILocation(line: 75, column: 13, scope: !2409)
!2415 = !DILocation(line: 75, column: 4, scope: !2409)
!2416 = !DILocation(line: 76, column: 2, scope: !2406)
!2417 = !DILocation(line: 78, column: 20, scope: !2380)
!2418 = !DILocation(line: 78, column: 47, scope: !2380)
!2419 = !DILocation(line: 78, column: 35, scope: !2380)
!2420 = !DILocation(line: 78, column: 9, scope: !2380)
!2421 = !DILocation(line: 79, column: 1, scope: !2380)
!2422 = !DILocation(line: 78, column: 2, scope: !2380)
!2423 = distinct !DISubprogram(name: "last_change_ms_show", scope: !3, file: !3, line: 82, type: !1700, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2424)
!2424 = !{!2425, !2426, !2427, !2428}
!2425 = !DILocalVariable(name: "dev", arg: 1, scope: !2423, file: !3, line: 82, type: !810)
!2426 = !DILocalVariable(name: "attr", arg: 2, scope: !2423, file: !3, line: 83, type: !1702)
!2427 = !DILocalVariable(name: "buf", arg: 3, scope: !2423, file: !3, line: 83, type: !238)
!2428 = !DILocalVariable(name: "ws", scope: !2423, file: !3, line: 85, type: !1340)
!2429 = !DILocation(line: 82, column: 51, scope: !2423)
!2430 = !DILocation(line: 83, column: 33, scope: !2423)
!2431 = !DILocation(line: 83, column: 45, scope: !2423)
!2432 = !DILocation(line: 85, column: 2, scope: !2423)
!2433 = !DILocation(line: 85, column: 24, scope: !2423)
!2434 = !DILocation(line: 85, column: 45, scope: !2423)
!2435 = !DILocation(line: 85, column: 29, scope: !2423)
!2436 = !DILocation(line: 87, column: 20, scope: !2423)
!2437 = !DILocation(line: 87, column: 47, scope: !2423)
!2438 = !DILocation(line: 87, column: 51, scope: !2423)
!2439 = !DILocation(line: 87, column: 35, scope: !2423)
!2440 = !DILocation(line: 87, column: 9, scope: !2423)
!2441 = !DILocation(line: 88, column: 1, scope: !2423)
!2442 = !DILocation(line: 87, column: 2, scope: !2423)
!2443 = distinct !DISubprogram(name: "prevent_suspend_time_ms_show", scope: !3, file: !3, line: 100, type: !1700, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2444)
!2444 = !{!2445, !2446, !2447, !2448, !2449}
!2445 = !DILocalVariable(name: "dev", arg: 1, scope: !2443, file: !3, line: 100, type: !810)
!2446 = !DILocalVariable(name: "attr", arg: 2, scope: !2443, file: !3, line: 101, type: !1702)
!2447 = !DILocalVariable(name: "buf", arg: 3, scope: !2443, file: !3, line: 102, type: !238)
!2448 = !DILocalVariable(name: "ws", scope: !2443, file: !3, line: 104, type: !1340)
!2449 = !DILocalVariable(name: "prevent_sleep_time", scope: !2443, file: !3, line: 105, type: !1360)
!2450 = !DILocation(line: 100, column: 60, scope: !2443)
!2451 = !DILocation(line: 101, column: 35, scope: !2443)
!2452 = !DILocation(line: 102, column: 16, scope: !2443)
!2453 = !DILocation(line: 104, column: 2, scope: !2443)
!2454 = !DILocation(line: 104, column: 24, scope: !2443)
!2455 = !DILocation(line: 104, column: 45, scope: !2443)
!2456 = !DILocation(line: 104, column: 29, scope: !2443)
!2457 = !DILocation(line: 105, column: 2, scope: !2443)
!2458 = !DILocation(line: 105, column: 10, scope: !2443)
!2459 = !DILocation(line: 105, column: 31, scope: !2443)
!2460 = !DILocation(line: 105, column: 35, scope: !2443)
!2461 = !DILocation(line: 107, column: 6, scope: !2462)
!2462 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 107, column: 6)
!2463 = !DILocation(line: 107, column: 10, scope: !2462)
!2464 = !DILocation(line: 107, column: 17, scope: !2462)
!2465 = !DILocation(line: 107, column: 20, scope: !2462)
!2466 = !DILocation(line: 107, column: 24, scope: !2462)
!2467 = !DILocation(line: 107, column: 6, scope: !2443)
!2468 = !DILocation(line: 108, column: 24, scope: !2469)
!2469 = distinct !DILexicalBlock(scope: !2462, file: !3, line: 107, column: 43)
!2470 = !DILocation(line: 108, column: 22, scope: !2469)
!2471 = !DILocation(line: 110, column: 2, scope: !2469)
!2472 = !DILocation(line: 112, column: 20, scope: !2443)
!2473 = !DILocation(line: 112, column: 47, scope: !2443)
!2474 = !DILocation(line: 112, column: 35, scope: !2443)
!2475 = !DILocation(line: 112, column: 9, scope: !2443)
!2476 = !DILocation(line: 113, column: 1, scope: !2443)
!2477 = !DILocation(line: 112, column: 2, scope: !2443)
!2478 = !DISubprogram(name: "kfree", scope: !101, file: !101, line: 227, type: !2479, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2479 = !DISubroutineType(types: !2480)
!2480 = !{null, !309}
!2481 = !DISubprogram(name: "class_create", scope: !132, file: !132, line: 230, type: !2482, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2482 = !DISubroutineType(types: !2483)
!2483 = !{!130, !135}
!2484 = distinct !DISubprogram(name: "PTR_ERR_OR_ZERO", scope: !1886, file: !1886, line: 105, type: !2485, scopeLine: 106, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2487)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!46, !309}
!2487 = !{!2488}
!2488 = !DILocalVariable(name: "ptr", arg: 1, scope: !2484, file: !1886, line: 105, type: !309)
!2489 = !DILocation(line: 105, column: 68, scope: !2484)
!2490 = !DILocation(line: 107, column: 13, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2484, file: !1886, line: 107, column: 6)
!2492 = !DILocation(line: 107, column: 6, scope: !2491)
!2493 = !DILocation(line: 107, column: 6, scope: !2484)
!2494 = !DILocation(line: 108, column: 18, scope: !2491)
!2495 = !DILocation(line: 108, column: 10, scope: !2491)
!2496 = !DILocation(line: 108, column: 3, scope: !2491)
!2497 = !DILocation(line: 110, column: 3, scope: !2491)
!2498 = !DILocation(line: 111, column: 1, scope: !2484)
