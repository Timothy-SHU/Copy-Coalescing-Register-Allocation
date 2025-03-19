; ModuleID = 'drivers/cpuidle/sysfs.c'
source_filename = "drivers/cpuidle/sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.kobj_type = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.sysfs_ops = type { ptr, ptr }
%struct.cpuidle_state_attr = type { %struct.attribute, ptr, ptr }
%struct.lock_class_key = type {}
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
%struct.cpuidle_device = type { i8, i32, i64, i32, i64, i64, i64, [10 x %struct.cpuidle_state_usage], [10 x ptr], ptr, ptr, %struct.list_head }
%struct.cpuidle_state_usage = type { i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.cpuidle_driver = type { ptr, ptr, i8, [10 x %struct.cpuidle_state], i32, i32, ptr, ptr }
%struct.cpuidle_state = type { [16 x i8], [32 x i8], i64, i64, i32, i32, i32, i32, ptr, ptr, ptr }
%struct.cpuidle_state_kobj = type { ptr, ptr, %struct.completion, %struct.kobject, ptr }
%struct.cpuidle_device_kobj = type { ptr, %struct.completion, %struct.kobject }
%struct.cpuidle_governor = type { [16 x i8], %struct.list_head, i32, ptr, ptr, ptr, ptr }
%struct.cpuidle_attr = type { %struct.attribute, ptr, ptr }

@cpu_subsys = external dso_local global %struct.bus_type, align 8
@cpuidle_attr_group = internal global %struct.attribute_group { ptr @.str, ptr null, ptr null, ptr @cpuidle_attrs, ptr null }, align 8, !dbg !0
@ktype_cpuidle = internal constant %struct.kobj_type { ptr @cpuidle_sysfs_release, ptr @cpuidle_sysfs_ops, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !1893
@.str = private unnamed_addr constant [8 x i8] c"cpuidle\00", align 1, !dbg !1295
@cpuidle_attrs = internal global [5 x ptr] [ptr @dev_attr_available_governors, ptr @dev_attr_current_driver, ptr @dev_attr_current_governor, ptr @dev_attr_current_governor_ro, ptr null], align 16, !dbg !1300
@dev_attr_available_governors = internal global %struct.device_attribute { %struct.attribute { ptr @.str.1, i16 292 }, ptr @show_available_governors, ptr null }, align 8, !dbg !1310
@dev_attr_current_driver = internal global %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292 }, ptr @show_current_driver, ptr null }, align 8, !dbg !1760
@dev_attr_current_governor = internal global %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 420 }, ptr @show_current_governor, ptr @store_current_governor }, align 8, !dbg !1774
@dev_attr_current_governor_ro = internal global %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292 }, ptr @show_current_governor, ptr null }, align 8, !dbg !1781
@.str.1 = private unnamed_addr constant [20 x i8] c"available_governors\00", align 1, !dbg !1305
@cpuidle_lock = external dso_local global %struct.mutex, align 8
@cpuidle_governors = external dso_local global %struct.list_head, align 8
@.str.2 = private unnamed_addr constant [4 x i8] c"%s \00", align 1, !dbg !1749
@.str.3 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !1752
@.str.4 = private unnamed_addr constant [15 x i8] c"current_driver\00", align 1, !dbg !1755
@cpuidle_driver_lock = external dso_local global %struct.spinlock, align 4
@.str.5 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !1762
@.str.6 = private unnamed_addr constant [6 x i8] c"none\0A\00", align 1, !dbg !1764
@.str.7 = private unnamed_addr constant [17 x i8] c"current_governor\00", align 1, !dbg !1769
@cpuidle_curr_governor = external dso_local global ptr, align 8
@.str.8 = private unnamed_addr constant [5 x i8] c"%16s\00", align 1, !dbg !1776
@.str.9 = private unnamed_addr constant [20 x i8] c"current_governor_ro\00", align 1, !dbg !1779
@ktype_state_cpuidle = internal constant %struct.kobj_type { ptr @cpuidle_state_sysfs_release, ptr @cpuidle_state_sysfs_ops, ptr @cpuidle_state_default_groups, ptr null, ptr null, ptr null }, align 8, !dbg !1785
@.str.10 = private unnamed_addr constant [8 x i8] c"state%d\00", align 1, !dbg !1783
@cpuidle_state_sysfs_ops = internal constant %struct.sysfs_ops { ptr @cpuidle_state_show, ptr @cpuidle_state_store }, align 8, !dbg !1787
@cpuidle_state_default_groups = internal global [2 x ptr] [ptr @cpuidle_state_default_group, ptr null], align 16, !dbg !1789
@cpuidle_state_default_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @cpuidle_state_default_attrs, ptr null }, align 8, !dbg !1792
@cpuidle_state_default_attrs = internal global [13 x ptr] [ptr @attr_name, ptr @attr_desc, ptr @attr_latency, ptr @attr_residency, ptr @attr_power, ptr @attr_usage, ptr @attr_rejected, ptr @attr_time, ptr @attr_disable, ptr @attr_above, ptr @attr_below, ptr @attr_default_status, ptr null], align 16, !dbg !1794
@attr_name = internal global %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.11, i16 292 }, ptr @show_state_name, ptr null }, align 8, !dbg !1801
@attr_desc = internal global %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.13, i16 292 }, ptr @show_state_desc, ptr null }, align 8, !dbg !1807
@attr_latency = internal global %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.14, i16 292 }, ptr @show_state_exit_latency, ptr null }, align 8, !dbg !1811
@attr_residency = internal global %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.17, i16 292 }, ptr @show_state_target_residency, ptr null }, align 8, !dbg !1823
@attr_power = internal global %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.18, i16 292 }, ptr @show_state_power_usage, ptr null }, align 8, !dbg !1827
@attr_usage = internal global %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.20, i16 292 }, ptr @show_state_usage, ptr null }, align 8, !dbg !1833
@attr_rejected = internal global %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.21, i16 292 }, ptr @show_state_rejected, ptr null }, align 8, !dbg !1840
@attr_time = internal global %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.22, i16 292 }, ptr @show_state_time, ptr null }, align 8, !dbg !1844
@attr_disable = internal global %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.23, i16 420 }, ptr @show_state_disable, ptr @store_state_disable }, align 8, !dbg !1848
@attr_above = internal global %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.24, i16 292 }, ptr @show_state_above, ptr null }, align 8, !dbg !1852
@attr_below = internal global %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.25, i16 292 }, ptr @show_state_below, ptr null }, align 8, !dbg !1856
@attr_default_status = internal global %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.26, i16 292 }, ptr @show_state_default_status, ptr null }, align 8, !dbg !1860
@.str.11 = private unnamed_addr constant [5 x i8] c"name\00", align 1, !dbg !1799
@.str.12 = private unnamed_addr constant [8 x i8] c"<null>\0A\00", align 1, !dbg !1803
@.str.13 = private unnamed_addr constant [5 x i8] c"desc\00", align 1, !dbg !1805
@.str.14 = private unnamed_addr constant [8 x i8] c"latency\00", align 1, !dbg !1809
@.str.15 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1, !dbg !1813
@.str.16 = private unnamed_addr constant [22 x i8] c"include/linux/ktime.h\00", align 1, !dbg !1815
@.str.17 = private unnamed_addr constant [10 x i8] c"residency\00", align 1, !dbg !1820
@.str.18 = private unnamed_addr constant [6 x i8] c"power\00", align 1, !dbg !1825
@.str.19 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1, !dbg !1829
@.str.20 = private unnamed_addr constant [6 x i8] c"usage\00", align 1, !dbg !1831
@.str.21 = private unnamed_addr constant [9 x i8] c"rejected\00", align 1, !dbg !1835
@.str.22 = private unnamed_addr constant [5 x i8] c"time\00", align 1, !dbg !1842
@.str.23 = private unnamed_addr constant [8 x i8] c"disable\00", align 1, !dbg !1846
@.str.24 = private unnamed_addr constant [6 x i8] c"above\00", align 1, !dbg !1850
@.str.25 = private unnamed_addr constant [6 x i8] c"below\00", align 1, !dbg !1854
@.str.26 = private unnamed_addr constant [15 x i8] c"default_status\00", align 1, !dbg !1858
@.str.27 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1, !dbg !1862
@.str.28 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1, !dbg !1864
@cpuidle_state_s2idle_group = internal constant %struct.attribute_group { ptr @.str.29, ptr null, ptr null, ptr @cpuidle_state_s2idle_attrs, ptr null }, align 8, !dbg !1869
@.str.29 = private unnamed_addr constant [7 x i8] c"s2idle\00", align 1, !dbg !1866
@cpuidle_state_s2idle_attrs = internal global [3 x ptr] [ptr @attr_s2idle_usage, ptr @attr_s2idle_time, ptr null], align 16, !dbg !1871
@attr_s2idle_usage = internal global %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.20, i16 292 }, ptr @show_state_s2idle_usage, ptr null }, align 8, !dbg !1874
@attr_s2idle_time = internal global %struct.cpuidle_state_attr { %struct.attribute { ptr @.str.22, i16 292 }, ptr @show_state_s2idle_time, ptr null }, align 8, !dbg !1876
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.30 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !1878
@init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !1883
@.str.31 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1, !dbg !1891
@cpuidle_sysfs_ops = internal constant %struct.sysfs_ops { ptr @cpuidle_show, ptr @cpuidle_store }, align 8, !dbg !1895

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @cpuidle_add_interface() #0 align 16 !dbg !1906 {
entry:
  %retval = alloca i32, align 4
  %dev_root = alloca ptr, align 8
  %retval1 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev_root) #13, !dbg !1910
  call void @llvm.dbg.declare(metadata ptr %dev_root, metadata !1908, metadata !DIExpression()), !dbg !1911
  %call = call ptr @bus_get_dev_root(ptr noundef @cpu_subsys) #14, !dbg !1912
  store ptr %call, ptr %dev_root, align 8, !dbg !1911
  call void @llvm.lifetime.start.p0(i64 4, ptr %retval1) #13, !dbg !1913
  call void @llvm.dbg.declare(metadata ptr %retval1, metadata !1909, metadata !DIExpression()), !dbg !1914
  %0 = load ptr, ptr %dev_root, align 8, !dbg !1915
  %tobool = icmp ne ptr %0, null, !dbg !1915
  br i1 %tobool, label %if.end, label %if.then, !dbg !1917

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !1918
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1918

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dev_root, align 8, !dbg !1919
  %kobj = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 0, !dbg !1920
  %call2 = call i32 @sysfs_create_group(ptr noundef %kobj, ptr noundef @cpuidle_attr_group) #14, !dbg !1921
  store i32 %call2, ptr %retval1, align 4, !dbg !1922
  %2 = load ptr, ptr %dev_root, align 8, !dbg !1923
  call void @put_device(ptr noundef %2) #14, !dbg !1924
  %3 = load i32, ptr %retval1, align 4, !dbg !1925
  store i32 %3, ptr %retval, align 4, !dbg !1926
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1926

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %retval1) #13, !dbg !1927
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev_root) #13, !dbg !1927
  %4 = load i32, ptr %retval, align 4, !dbg !1927
  ret i32 %4, !dbg !1927
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1928 dso_local ptr @bus_get_dev_root(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1931 dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1934 dso_local void @put_device(ptr noundef) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cpuidle_remove_interface(ptr noundef %dev) #0 align 16 !dbg !1935 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1937, metadata !DIExpression()), !dbg !1938
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1939
  %kobj = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 0, !dbg !1940
  call void @sysfs_remove_group(ptr noundef %kobj, ptr noundef @cpuidle_attr_group) #14, !dbg !1941
  ret void, !dbg !1942
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1943 dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @cpuidle_add_device_sysfs(ptr noundef %device) #0 align 16 !dbg !1946 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !1950, metadata !DIExpression()), !dbg !1952
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !1953
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1951, metadata !DIExpression()), !dbg !1954
  %0 = load ptr, ptr %device.addr, align 8, !dbg !1955
  %call = call i32 @cpuidle_add_state_sysfs(ptr noundef %0) #14, !dbg !1956
  store i32 %call, ptr %ret, align 4, !dbg !1957
  %1 = load i32, ptr %ret, align 4, !dbg !1958
  %tobool = icmp ne i32 %1, 0, !dbg !1958
  br i1 %tobool, label %if.then, label %if.end, !dbg !1960

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %ret, align 4, !dbg !1961
  store i32 %2, ptr %retval, align 4, !dbg !1962
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1962

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %device.addr, align 8, !dbg !1963
  %call1 = call i32 @cpuidle_add_driver_sysfs(ptr noundef %3) #14, !dbg !1964
  store i32 %call1, ptr %ret, align 4, !dbg !1965
  %4 = load i32, ptr %ret, align 4, !dbg !1966
  %tobool2 = icmp ne i32 %4, 0, !dbg !1966
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !1968

if.then3:                                         ; preds = %if.end
  %5 = load ptr, ptr %device.addr, align 8, !dbg !1969
  call void @cpuidle_remove_state_sysfs(ptr noundef %5) #14, !dbg !1970
  br label %if.end4, !dbg !1970

if.end4:                                          ; preds = %if.then3, %if.end
  %6 = load i32, ptr %ret, align 4, !dbg !1971
  store i32 %6, ptr %retval, align 4, !dbg !1972
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1972

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !1973
  %7 = load i32, ptr %retval, align 4, !dbg !1973
  ret i32 %7, !dbg !1973
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuidle_add_state_sysfs(ptr noundef %device) #0 align 16 !dbg !1974 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %kobj = alloca ptr, align 8
  %kdev = alloca ptr, align 8
  %drv = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !1976, metadata !DIExpression()), !dbg !1983
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !1984
  call void @llvm.dbg.declare(metadata ptr %i, metadata !1977, metadata !DIExpression()), !dbg !1985
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !1984
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !1978, metadata !DIExpression()), !dbg !1986
  store i32 -12, ptr %ret, align 4, !dbg !1986
  call void @llvm.lifetime.start.p0(i64 8, ptr %kobj) #13, !dbg !1987
  call void @llvm.dbg.declare(metadata ptr %kobj, metadata !1979, metadata !DIExpression()), !dbg !1988
  call void @llvm.lifetime.start.p0(i64 8, ptr %kdev) #13, !dbg !1989
  call void @llvm.dbg.declare(metadata ptr %kdev, metadata !1980, metadata !DIExpression()), !dbg !1990
  %0 = load ptr, ptr %device.addr, align 8, !dbg !1991
  %kobj_dev = getelementptr inbounds %struct.cpuidle_device, ptr %0, i32 0, i32 10, !dbg !1992
  %1 = load ptr, ptr %kobj_dev, align 8, !dbg !1992
  store ptr %1, ptr %kdev, align 8, !dbg !1990
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv) #13, !dbg !1993
  call void @llvm.dbg.declare(metadata ptr %drv, metadata !1981, metadata !DIExpression()), !dbg !1994
  %2 = load ptr, ptr %device.addr, align 8, !dbg !1995
  %call = call ptr @cpuidle_get_cpu_driver(ptr noundef %2) #14, !dbg !1996
  store ptr %call, ptr %drv, align 8, !dbg !1994
  store i32 0, ptr %i, align 4, !dbg !1997
  br label %for.cond, !dbg !1999

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, ptr %i, align 4, !dbg !2000
  %4 = load ptr, ptr %drv, align 8, !dbg !2002
  %state_count = getelementptr inbounds %struct.cpuidle_driver, ptr %4, i32 0, i32 4, !dbg !2003
  %5 = load i32, ptr %state_count, align 8, !dbg !2003
  %cmp = icmp slt i32 %3, %5, !dbg !2004
  br i1 %cmp, label %for.body, label %for.end, !dbg !2005

for.body:                                         ; preds = %for.cond
  %call1 = call noalias ptr @kzalloc(i64 noundef 120, i32 noundef 3264) #15, !dbg !2006
  store ptr %call1, ptr %kobj, align 8, !dbg !2008
  %6 = load ptr, ptr %kobj, align 8, !dbg !2009
  %tobool = icmp ne ptr %6, null, !dbg !2009
  br i1 %tobool, label %if.end, label %if.then, !dbg !2011

if.then:                                          ; preds = %for.body
  store i32 -12, ptr %ret, align 4, !dbg !2012
  br label %error_state, !dbg !2014

if.end:                                           ; preds = %for.body
  %7 = load ptr, ptr %drv, align 8, !dbg !2015
  %states = getelementptr inbounds %struct.cpuidle_driver, ptr %7, i32 0, i32 3, !dbg !2016
  %8 = load i32, ptr %i, align 4, !dbg !2017
  %idxprom = sext i32 %8 to i64, !dbg !2015
  %arrayidx = getelementptr [10 x %struct.cpuidle_state], ptr %states, i64 0, i64 %idxprom, !dbg !2015
  %9 = load ptr, ptr %kobj, align 8, !dbg !2018
  %state = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %9, i32 0, i32 0, !dbg !2019
  store ptr %arrayidx, ptr %state, align 8, !dbg !2020
  %10 = load ptr, ptr %device.addr, align 8, !dbg !2021
  %states_usage = getelementptr inbounds %struct.cpuidle_device, ptr %10, i32 0, i32 7, !dbg !2022
  %11 = load i32, ptr %i, align 4, !dbg !2023
  %idxprom2 = sext i32 %11 to i64, !dbg !2021
  %arrayidx3 = getelementptr [10 x %struct.cpuidle_state_usage], ptr %states_usage, i64 0, i64 %idxprom2, !dbg !2021
  %12 = load ptr, ptr %kobj, align 8, !dbg !2024
  %state_usage = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %12, i32 0, i32 1, !dbg !2025
  store ptr %arrayidx3, ptr %state_usage, align 8, !dbg !2026
  %13 = load ptr, ptr %device.addr, align 8, !dbg !2027
  %14 = load ptr, ptr %kobj, align 8, !dbg !2028
  %device4 = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %14, i32 0, i32 4, !dbg !2029
  store ptr %13, ptr %device4, align 8, !dbg !2030
  %15 = load ptr, ptr %kobj, align 8, !dbg !2031
  %kobj_unregister = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %15, i32 0, i32 2, !dbg !2032
  call void @init_completion(ptr noundef %kobj_unregister) #14, !dbg !2033
  %16 = load ptr, ptr %kobj, align 8, !dbg !2034
  %kobj5 = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %16, i32 0, i32 3, !dbg !2035
  %17 = load ptr, ptr %kdev, align 8, !dbg !2036
  %kobj6 = getelementptr inbounds %struct.cpuidle_device_kobj, ptr %17, i32 0, i32 2, !dbg !2037
  %18 = load i32, ptr %i, align 4, !dbg !2038
  %call7 = call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %kobj5, ptr noundef @ktype_state_cpuidle, ptr noundef %kobj6, ptr noundef @.str.10, i32 noundef %18) #14, !dbg !2039
  store i32 %call7, ptr %ret, align 4, !dbg !2040
  %19 = load i32, ptr %ret, align 4, !dbg !2041
  %tobool8 = icmp ne i32 %19, 0, !dbg !2041
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !2043

if.then9:                                         ; preds = %if.end
  %20 = load ptr, ptr %kobj, align 8, !dbg !2044
  %kobj10 = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %20, i32 0, i32 3, !dbg !2046
  call void @kobject_put(ptr noundef %kobj10) #14, !dbg !2047
  %21 = load ptr, ptr %kobj, align 8, !dbg !2048
  call void @kfree(ptr noundef %21) #14, !dbg !2049
  br label %error_state, !dbg !2050

if.end11:                                         ; preds = %if.end
  %22 = load ptr, ptr %kobj, align 8, !dbg !2051
  call void @cpuidle_add_s2idle_attr_group(ptr noundef %22) #14, !dbg !2052
  %23 = load ptr, ptr %kobj, align 8, !dbg !2053
  %kobj12 = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %23, i32 0, i32 3, !dbg !2054
  %call13 = call i32 @kobject_uevent(ptr noundef %kobj12, i32 noundef 0) #14, !dbg !2055
  %24 = load ptr, ptr %kobj, align 8, !dbg !2056
  %25 = load ptr, ptr %device.addr, align 8, !dbg !2057
  %kobjs = getelementptr inbounds %struct.cpuidle_device, ptr %25, i32 0, i32 8, !dbg !2058
  %26 = load i32, ptr %i, align 4, !dbg !2059
  %idxprom14 = sext i32 %26 to i64, !dbg !2057
  %arrayidx15 = getelementptr [10 x ptr], ptr %kobjs, i64 0, i64 %idxprom14, !dbg !2057
  store ptr %24, ptr %arrayidx15, align 8, !dbg !2060
  br label %for.inc, !dbg !2061

for.inc:                                          ; preds = %if.end11
  %27 = load i32, ptr %i, align 4, !dbg !2062
  %inc = add i32 %27, 1, !dbg !2062
  store i32 %inc, ptr %i, align 4, !dbg !2062
  br label %for.cond, !dbg !2063, !llvm.loop !2064

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !2068
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2068

error_state:                                      ; preds = %if.then9, %if.then
  call void @llvm.dbg.label(metadata !1982), !dbg !2069
  %28 = load i32, ptr %i, align 4, !dbg !2070
  %sub = sub i32 %28, 1, !dbg !2072
  store i32 %sub, ptr %i, align 4, !dbg !2073
  br label %for.cond16, !dbg !2074

for.cond16:                                       ; preds = %for.inc19, %error_state
  %29 = load i32, ptr %i, align 4, !dbg !2075
  %cmp17 = icmp sge i32 %29, 0, !dbg !2077
  br i1 %cmp17, label %for.body18, label %for.end20, !dbg !2078

for.body18:                                       ; preds = %for.cond16
  %30 = load ptr, ptr %device.addr, align 8, !dbg !2079
  %31 = load i32, ptr %i, align 4, !dbg !2080
  call void @cpuidle_free_state_kobj(ptr noundef %30, i32 noundef %31) #14, !dbg !2081
  br label %for.inc19, !dbg !2081

for.inc19:                                        ; preds = %for.body18
  %32 = load i32, ptr %i, align 4, !dbg !2082
  %dec = add i32 %32, -1, !dbg !2082
  store i32 %dec, ptr %i, align 4, !dbg !2082
  br label %for.cond16, !dbg !2083, !llvm.loop !2084

for.end20:                                        ; preds = %for.cond16
  %33 = load i32, ptr %ret, align 4, !dbg !2086
  store i32 %33, ptr %retval, align 4, !dbg !2087
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2087

cleanup:                                          ; preds = %for.end20, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv) #13, !dbg !2088
  call void @llvm.lifetime.end.p0(i64 8, ptr %kdev) #13, !dbg !2088
  call void @llvm.lifetime.end.p0(i64 8, ptr %kobj) #13, !dbg !2088
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !2088
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !2088
  %34 = load i32, ptr %retval, align 4, !dbg !2088
  ret i32 %34, !dbg !2088
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpuidle_add_driver_sysfs(ptr noundef %dev) #4 align 16 !dbg !2089 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2091, metadata !DIExpression()), !dbg !2092
  ret i32 0, !dbg !2093
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpuidle_remove_state_sysfs(ptr noundef %device) #0 align 16 !dbg !2094 {
entry:
  %device.addr = alloca ptr, align 8
  %drv = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !2098, metadata !DIExpression()), !dbg !2101
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv) #13, !dbg !2102
  call void @llvm.dbg.declare(metadata ptr %drv, metadata !2099, metadata !DIExpression()), !dbg !2103
  %0 = load ptr, ptr %device.addr, align 8, !dbg !2104
  %call = call ptr @cpuidle_get_cpu_driver(ptr noundef %0) #14, !dbg !2105
  store ptr %call, ptr %drv, align 8, !dbg !2103
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !2106
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2100, metadata !DIExpression()), !dbg !2107
  store i32 0, ptr %i, align 4, !dbg !2108
  br label %for.cond, !dbg !2110

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !2111
  %2 = load ptr, ptr %drv, align 8, !dbg !2113
  %state_count = getelementptr inbounds %struct.cpuidle_driver, ptr %2, i32 0, i32 4, !dbg !2114
  %3 = load i32, ptr %state_count, align 8, !dbg !2114
  %cmp = icmp slt i32 %1, %3, !dbg !2115
  br i1 %cmp, label %for.body, label %for.end, !dbg !2116

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %device.addr, align 8, !dbg !2117
  %5 = load i32, ptr %i, align 4, !dbg !2118
  call void @cpuidle_free_state_kobj(ptr noundef %4, i32 noundef %5) #14, !dbg !2119
  br label %for.inc, !dbg !2119

for.inc:                                          ; preds = %for.body
  %6 = load i32, ptr %i, align 4, !dbg !2120
  %inc = add i32 %6, 1, !dbg !2120
  store i32 %inc, ptr %i, align 4, !dbg !2120
  br label %for.cond, !dbg !2121, !llvm.loop !2122

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !2124
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv) #13, !dbg !2124
  ret void, !dbg !2124
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cpuidle_remove_device_sysfs(ptr noundef %device) #0 align 16 !dbg !2125 {
entry:
  %device.addr = alloca ptr, align 8
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !2127, metadata !DIExpression()), !dbg !2128
  %0 = load ptr, ptr %device.addr, align 8, !dbg !2129
  call void @cpuidle_remove_driver_sysfs(ptr noundef %0) #14, !dbg !2130
  %1 = load ptr, ptr %device.addr, align 8, !dbg !2131
  call void @cpuidle_remove_state_sysfs(ptr noundef %1) #14, !dbg !2132
  ret void, !dbg !2133
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpuidle_remove_driver_sysfs(ptr noundef %dev) #4 align 16 !dbg !2134 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2136, metadata !DIExpression()), !dbg !2137
  ret void, !dbg !2138
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @cpuidle_add_sysfs(ptr noundef %dev) #0 align 16 !dbg !2139 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %kdev = alloca ptr, align 8
  %cpu_dev = alloca ptr, align 8
  %error = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2141, metadata !DIExpression()), !dbg !2145
  call void @llvm.lifetime.start.p0(i64 8, ptr %kdev) #13, !dbg !2146
  call void @llvm.dbg.declare(metadata ptr %kdev, metadata !2142, metadata !DIExpression()), !dbg !2147
  call void @llvm.lifetime.start.p0(i64 8, ptr %cpu_dev) #13, !dbg !2148
  call void @llvm.dbg.declare(metadata ptr %cpu_dev, metadata !2143, metadata !DIExpression()), !dbg !2149
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2150
  %cpu = getelementptr inbounds %struct.cpuidle_device, ptr %0, i32 0, i32 1, !dbg !2151
  %1 = load i32, ptr %cpu, align 4, !dbg !2151
  %conv = zext i32 %1 to i64, !dbg !2152
  %conv1 = trunc i64 %conv to i32, !dbg !2152
  %call = call ptr @get_cpu_device(i32 noundef %conv1) #14, !dbg !2153
  store ptr %call, ptr %cpu_dev, align 8, !dbg !2149
  call void @llvm.lifetime.start.p0(i64 4, ptr %error) #13, !dbg !2154
  call void @llvm.dbg.declare(metadata ptr %error, metadata !2144, metadata !DIExpression()), !dbg !2155
  %2 = load ptr, ptr %cpu_dev, align 8, !dbg !2156
  %tobool = icmp ne ptr %2, null, !dbg !2156
  br i1 %tobool, label %if.end, label %if.then, !dbg !2158

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !2159
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2159

if.end:                                           ; preds = %entry
  %call2 = call noalias ptr @kzalloc(i64 noundef 104, i32 noundef 3264) #15, !dbg !2160
  store ptr %call2, ptr %kdev, align 8, !dbg !2161
  %3 = load ptr, ptr %kdev, align 8, !dbg !2162
  %tobool3 = icmp ne ptr %3, null, !dbg !2162
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !2164

if.then4:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !2165
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2165

if.end5:                                          ; preds = %if.end
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !2166
  %5 = load ptr, ptr %kdev, align 8, !dbg !2167
  %dev6 = getelementptr inbounds %struct.cpuidle_device_kobj, ptr %5, i32 0, i32 0, !dbg !2168
  store ptr %4, ptr %dev6, align 8, !dbg !2169
  %6 = load ptr, ptr %kdev, align 8, !dbg !2170
  %kobj_unregister = getelementptr inbounds %struct.cpuidle_device_kobj, ptr %6, i32 0, i32 1, !dbg !2171
  call void @init_completion(ptr noundef %kobj_unregister) #14, !dbg !2172
  %7 = load ptr, ptr %kdev, align 8, !dbg !2173
  %kobj = getelementptr inbounds %struct.cpuidle_device_kobj, ptr %7, i32 0, i32 2, !dbg !2174
  %8 = load ptr, ptr %cpu_dev, align 8, !dbg !2175
  %kobj7 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 0, !dbg !2176
  %call8 = call i32 (ptr, ptr, ptr, ptr, ...) @kobject_init_and_add(ptr noundef %kobj, ptr noundef @ktype_cpuidle, ptr noundef %kobj7, ptr noundef @.str) #14, !dbg !2177
  store i32 %call8, ptr %error, align 4, !dbg !2178
  %9 = load i32, ptr %error, align 4, !dbg !2179
  %tobool9 = icmp ne i32 %9, 0, !dbg !2179
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !2181

if.then10:                                        ; preds = %if.end5
  %10 = load ptr, ptr %kdev, align 8, !dbg !2182
  %kobj11 = getelementptr inbounds %struct.cpuidle_device_kobj, ptr %10, i32 0, i32 2, !dbg !2184
  call void @kobject_put(ptr noundef %kobj11) #14, !dbg !2185
  %11 = load ptr, ptr %kdev, align 8, !dbg !2186
  call void @kfree(ptr noundef %11) #14, !dbg !2187
  %12 = load i32, ptr %error, align 4, !dbg !2188
  store i32 %12, ptr %retval, align 4, !dbg !2189
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2189

if.end12:                                         ; preds = %if.end5
  %13 = load ptr, ptr %kdev, align 8, !dbg !2190
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !2191
  %kobj_dev = getelementptr inbounds %struct.cpuidle_device, ptr %14, i32 0, i32 10, !dbg !2192
  store ptr %13, ptr %kobj_dev, align 8, !dbg !2193
  %15 = load ptr, ptr %kdev, align 8, !dbg !2194
  %kobj13 = getelementptr inbounds %struct.cpuidle_device_kobj, ptr %15, i32 0, i32 2, !dbg !2195
  %call14 = call i32 @kobject_uevent(ptr noundef %kobj13, i32 noundef 0) #14, !dbg !2196
  store i32 0, ptr %retval, align 4, !dbg !2197
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2197

cleanup:                                          ; preds = %if.end12, %if.then10, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %error) #13, !dbg !2198
  call void @llvm.lifetime.end.p0(i64 8, ptr %cpu_dev) #13, !dbg !2198
  call void @llvm.lifetime.end.p0(i64 8, ptr %kdev) #13, !dbg !2198
  %16 = load i32, ptr %retval, align 4, !dbg !2198
  ret i32 %16, !dbg !2198
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2199 dso_local ptr @get_cpu_device(i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !2203 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2207, metadata !DIExpression()), !dbg !2209
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2208, metadata !DIExpression()), !dbg !2210
  %0 = load i64, ptr %size.addr, align 8, !dbg !2211
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2212
  %or = or i32 %1, 256, !dbg !2213
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #15, !dbg !2214
  ret ptr %call, !dbg !2215
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @init_completion(ptr noundef %x) #4 align 16 !dbg !1885 {
entry:
  %x.addr = alloca ptr, align 8
  store ptr %x, ptr %x.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %x.addr, metadata !1889, metadata !DIExpression()), !dbg !2216
  %0 = load ptr, ptr %x.addr, align 8, !dbg !2217
  %done = getelementptr inbounds %struct.completion, ptr %0, i32 0, i32 0, !dbg !2218
  store i32 0, ptr %done, align 8, !dbg !2219
  br label %do.body, !dbg !2220

do.body:                                          ; preds = %entry
  %1 = load ptr, ptr %x.addr, align 8, !dbg !2221
  %wait = getelementptr inbounds %struct.completion, ptr %1, i32 0, i32 1, !dbg !2221
  call void @__init_swait_queue_head(ptr noundef %wait, ptr noundef @.str.31, ptr noundef @init_completion.__key) #14, !dbg !2221
  br label %do.end, !dbg !2221

do.end:                                           ; preds = %do.body
  ret void, !dbg !2223
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2224 dso_local i32 @kobject_init_and_add(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2227 dso_local void @kobject_put(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2228 dso_local void @kfree(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2231 dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @cpuidle_remove_sysfs(ptr noundef %dev) #0 align 16 !dbg !2234 {
entry:
  %dev.addr = alloca ptr, align 8
  %kdev = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2236, metadata !DIExpression()), !dbg !2238
  call void @llvm.lifetime.start.p0(i64 8, ptr %kdev) #13, !dbg !2239
  call void @llvm.dbg.declare(metadata ptr %kdev, metadata !2237, metadata !DIExpression()), !dbg !2240
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2241
  %kobj_dev = getelementptr inbounds %struct.cpuidle_device, ptr %0, i32 0, i32 10, !dbg !2242
  %1 = load ptr, ptr %kobj_dev, align 8, !dbg !2242
  store ptr %1, ptr %kdev, align 8, !dbg !2240
  %2 = load ptr, ptr %kdev, align 8, !dbg !2243
  %kobj = getelementptr inbounds %struct.cpuidle_device_kobj, ptr %2, i32 0, i32 2, !dbg !2244
  call void @kobject_put(ptr noundef %kobj) #14, !dbg !2245
  %3 = load ptr, ptr %kdev, align 8, !dbg !2246
  %kobj_unregister = getelementptr inbounds %struct.cpuidle_device_kobj, ptr %3, i32 0, i32 1, !dbg !2247
  call void @wait_for_completion(ptr noundef %kobj_unregister) #14, !dbg !2248
  %4 = load ptr, ptr %kdev, align 8, !dbg !2249
  call void @kfree(ptr noundef %4) #14, !dbg !2250
  call void @llvm.lifetime.end.p0(i64 8, ptr %kdev) #13, !dbg !2251
  ret void, !dbg !2251
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2252 dso_local void @wait_for_completion(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @show_available_governors(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2253 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %i = alloca i64, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %__mptr3 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2255, metadata !DIExpression()), !dbg !2267
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2256, metadata !DIExpression()), !dbg !2268
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2257, metadata !DIExpression()), !dbg !2269
  call void @llvm.lifetime.start.p0(i64 8, ptr %i) #13, !dbg !2270
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2258, metadata !DIExpression()), !dbg !2271
  store i64 0, ptr %i, align 8, !dbg !2271
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #13, !dbg !2272
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !2259, metadata !DIExpression()), !dbg !2273
  call void @mutex_lock(ptr noundef @cpuidle_lock) #14, !dbg !2274
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !2275
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2260, metadata !DIExpression()), !dbg !2275
  %0 = load ptr, ptr @cpuidle_governors, align 8, !dbg !2275
  store ptr %0, ptr %__mptr, align 8, !dbg !2275
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2275
  %add.ptr = getelementptr i8, ptr %1, i64 -16, !dbg !2275
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !2275
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !2276
  %2 = load ptr, ptr %tmp1, align 8, !dbg !2275
  store ptr %2, ptr %tmp, align 8, !dbg !2276
  br label %for.cond, !dbg !2276

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %tmp, align 8, !dbg !2277
  %governor_list = getelementptr inbounds %struct.cpuidle_governor, ptr %3, i32 0, i32 1, !dbg !2277
  %cmp = icmp eq ptr %governor_list, @cpuidle_governors, !dbg !2277
  %lnot = xor i1 %cmp, true, !dbg !2277
  br i1 %lnot, label %for.body, label %for.end, !dbg !2276

for.body:                                         ; preds = %for.cond
  %4 = load i64, ptr %i, align 8, !dbg !2278
  %cmp2 = icmp sge i64 %4, 4078, !dbg !2281
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2282

if.then:                                          ; preds = %for.body
  br label %out, !dbg !2283

if.end:                                           ; preds = %for.body
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !2284
  %6 = load i64, ptr %i, align 8, !dbg !2285
  %arrayidx = getelementptr i8, ptr %5, i64 %6, !dbg !2284
  %7 = load ptr, ptr %tmp, align 8, !dbg !2286
  %name = getelementptr inbounds %struct.cpuidle_governor, ptr %7, i32 0, i32 0, !dbg !2287
  %arraydecay = getelementptr inbounds [16 x i8], ptr %name, i64 0, i64 0, !dbg !2286
  %call = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %arrayidx, i64 noundef 17, ptr noundef @.str.2, ptr noundef %arraydecay) #14, !dbg !2288
  %conv = sext i32 %call to i64, !dbg !2288
  %8 = load i64, ptr %i, align 8, !dbg !2289
  %add = add i64 %8, %conv, !dbg !2289
  store i64 %add, ptr %i, align 8, !dbg !2289
  br label %for.inc, !dbg !2290

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr3) #13, !dbg !2291
  call void @llvm.dbg.declare(metadata ptr %__mptr3, metadata !2263, metadata !DIExpression()), !dbg !2291
  %9 = load ptr, ptr %tmp, align 8, !dbg !2291
  %governor_list4 = getelementptr inbounds %struct.cpuidle_governor, ptr %9, i32 0, i32 1, !dbg !2291
  %next = getelementptr inbounds %struct.list_head, ptr %governor_list4, i32 0, i32 0, !dbg !2291
  %10 = load ptr, ptr %next, align 8, !dbg !2291
  store ptr %10, ptr %__mptr3, align 8, !dbg !2291
  %11 = load ptr, ptr %__mptr3, align 8, !dbg !2291
  %add.ptr6 = getelementptr i8, ptr %11, i64 -16, !dbg !2291
  store ptr %add.ptr6, ptr %tmp5, align 8, !dbg !2291
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr3) #13, !dbg !2277
  %12 = load ptr, ptr %tmp5, align 8, !dbg !2291
  store ptr %12, ptr %tmp, align 8, !dbg !2277
  br label %for.cond, !dbg !2277, !llvm.loop !2292

for.end:                                          ; preds = %for.cond
  br label %out, !dbg !2293

out:                                              ; preds = %for.end, %if.then
  call void @llvm.dbg.label(metadata !2266), !dbg !2294
  %13 = load ptr, ptr %buf.addr, align 8, !dbg !2295
  %14 = load i64, ptr %i, align 8, !dbg !2296
  %arrayidx7 = getelementptr i8, ptr %13, i64 %14, !dbg !2295
  %call8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arrayidx7, ptr noundef @.str.3) #14, !dbg !2297
  %conv9 = sext i32 %call8 to i64, !dbg !2297
  %15 = load i64, ptr %i, align 8, !dbg !2298
  %add10 = add i64 %15, %conv9, !dbg !2298
  store i64 %add10, ptr %i, align 8, !dbg !2298
  call void @mutex_unlock(ptr noundef @cpuidle_lock) #14, !dbg !2299
  %16 = load i64, ptr %i, align 8, !dbg !2300
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #13, !dbg !2301
  call void @llvm.lifetime.end.p0(i64 8, ptr %i) #13, !dbg !2301
  ret i64 %16, !dbg !2302
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2303 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2307 dso_local i32 @scnprintf(ptr noundef, i64 noundef, ptr noundef, ...) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2311 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2314 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @show_current_driver(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2315 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  %drv = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2317, metadata !DIExpression()), !dbg !2322
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2318, metadata !DIExpression()), !dbg !2323
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2319, metadata !DIExpression()), !dbg !2324
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #13, !dbg !2325
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2320, metadata !DIExpression()), !dbg !2326
  call void @llvm.lifetime.start.p0(i64 8, ptr %drv) #13, !dbg !2327
  call void @llvm.dbg.declare(metadata ptr %drv, metadata !2321, metadata !DIExpression()), !dbg !2328
  call void @spin_lock(ptr noundef @cpuidle_driver_lock) #14, !dbg !2329
  %call = call ptr @cpuidle_get_driver() #14, !dbg !2330
  store ptr %call, ptr %drv, align 8, !dbg !2331
  %0 = load ptr, ptr %drv, align 8, !dbg !2332
  %tobool = icmp ne ptr %0, null, !dbg !2332
  br i1 %tobool, label %if.then, label %if.else, !dbg !2334

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !2335
  %2 = load ptr, ptr %drv, align 8, !dbg !2336
  %name = getelementptr inbounds %struct.cpuidle_driver, ptr %2, i32 0, i32 0, !dbg !2337
  %3 = load ptr, ptr %name, align 8, !dbg !2337
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef @.str.5, ptr noundef %3) #14, !dbg !2338
  %conv = sext i32 %call1 to i64, !dbg !2338
  store i64 %conv, ptr %ret, align 8, !dbg !2339
  br label %if.end, !dbg !2340

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !2341
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %4, ptr noundef @.str.6) #14, !dbg !2342
  %conv3 = sext i32 %call2 to i64, !dbg !2342
  store i64 %conv3, ptr %ret, align 8, !dbg !2343
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @spin_unlock(ptr noundef @cpuidle_driver_lock) #14, !dbg !2344
  %5 = load i64, ptr %ret, align 8, !dbg !2345
  call void @llvm.lifetime.end.p0(i64 8, ptr %drv) #13, !dbg !2346
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #13, !dbg !2346
  ret i64 %5, !dbg !2347
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock(ptr noundef %lock) #6 align 16 !dbg !2348 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2354, metadata !DIExpression()), !dbg !2355
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2356
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !2356
  call void @_raw_spin_lock(ptr noundef %1) #14, !dbg !2356
  ret void, !dbg !2357
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2358 dso_local ptr @cpuidle_get_driver() #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock(ptr noundef %lock) #6 align 16 !dbg !2361 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2363, metadata !DIExpression()), !dbg !2364
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2365
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !2365
  call void @_raw_spin_unlock(ptr noundef %1) #14, !dbg !2365
  ret void, !dbg !2366
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2367 dso_local void @_raw_spin_lock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2372 dso_local void @_raw_spin_unlock(ptr noundef) #3 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @show_current_governor(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2373 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %ret = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2375, metadata !DIExpression()), !dbg !2379
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2376, metadata !DIExpression()), !dbg !2380
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2377, metadata !DIExpression()), !dbg !2381
  call void @llvm.lifetime.start.p0(i64 8, ptr %ret) #13, !dbg !2382
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2378, metadata !DIExpression()), !dbg !2383
  call void @mutex_lock(ptr noundef @cpuidle_lock) #14, !dbg !2384
  %0 = load ptr, ptr @cpuidle_curr_governor, align 8, !dbg !2385
  %tobool = icmp ne ptr %0, null, !dbg !2385
  br i1 %tobool, label %if.then, label %if.else, !dbg !2387

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !2388
  %2 = load ptr, ptr @cpuidle_curr_governor, align 8, !dbg !2389
  %name = getelementptr inbounds %struct.cpuidle_governor, ptr %2, i32 0, i32 0, !dbg !2390
  %arraydecay = getelementptr inbounds [16 x i8], ptr %name, i64 0, i64 0, !dbg !2389
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %1, ptr noundef @.str.5, ptr noundef %arraydecay) #14, !dbg !2391
  %conv = sext i32 %call to i64, !dbg !2391
  store i64 %conv, ptr %ret, align 8, !dbg !2392
  br label %if.end, !dbg !2393

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !2394
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef @.str.6) #14, !dbg !2395
  %conv2 = sext i32 %call1 to i64, !dbg !2395
  store i64 %conv2, ptr %ret, align 8, !dbg !2396
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void @mutex_unlock(ptr noundef @cpuidle_lock) #14, !dbg !2397
  %4 = load i64, ptr %ret, align 8, !dbg !2398
  call void @llvm.lifetime.end.p0(i64 8, ptr %ret) #13, !dbg !2399
  ret i64 %4, !dbg !2400
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @store_current_governor(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !2401 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %gov_name = alloca [17 x i8], align 16
  %ret = alloca i32, align 4
  %gov = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr8 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2403, metadata !DIExpression()), !dbg !2416
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2404, metadata !DIExpression()), !dbg !2417
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2405, metadata !DIExpression()), !dbg !2418
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !2406, metadata !DIExpression()), !dbg !2419
  call void @llvm.lifetime.start.p0(i64 17, ptr %gov_name) #13, !dbg !2420
  call void @llvm.dbg.declare(metadata ptr %gov_name, metadata !2407, metadata !DIExpression()), !dbg !2421
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !2422
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2408, metadata !DIExpression()), !dbg !2423
  call void @llvm.lifetime.start.p0(i64 8, ptr %gov) #13, !dbg !2424
  call void @llvm.dbg.declare(metadata ptr %gov, metadata !2409, metadata !DIExpression()), !dbg !2425
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !2426
  %arraydecay = getelementptr inbounds [17 x i8], ptr %gov_name, i64 0, i64 0, !dbg !2427
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %0, ptr noundef @.str.8, ptr noundef %arraydecay) #14, !dbg !2428
  store i32 %call, ptr %ret, align 4, !dbg !2429
  %1 = load i32, ptr %ret, align 4, !dbg !2430
  %cmp = icmp ne i32 %1, 1, !dbg !2432
  br i1 %cmp, label %if.then, label %if.end, !dbg !2433

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !2434
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2434

if.end:                                           ; preds = %entry
  call void @mutex_lock(ptr noundef @cpuidle_lock) #14, !dbg !2435
  store i32 -22, ptr %ret, align 4, !dbg !2436
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !2437
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2410, metadata !DIExpression()), !dbg !2437
  %2 = load ptr, ptr @cpuidle_governors, align 8, !dbg !2437
  store ptr %2, ptr %__mptr, align 8, !dbg !2437
  %3 = load ptr, ptr %__mptr, align 8, !dbg !2437
  %add.ptr = getelementptr i8, ptr %3, i64 -16, !dbg !2437
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2437
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !2438
  %4 = load ptr, ptr %tmp, align 8, !dbg !2437
  store ptr %4, ptr %gov, align 8, !dbg !2438
  br label %for.cond, !dbg !2438

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load ptr, ptr %gov, align 8, !dbg !2439
  %governor_list = getelementptr inbounds %struct.cpuidle_governor, ptr %5, i32 0, i32 1, !dbg !2439
  %cmp1 = icmp eq ptr %governor_list, @cpuidle_governors, !dbg !2439
  %lnot = xor i1 %cmp1, true, !dbg !2439
  br i1 %lnot, label %for.body, label %for.end, !dbg !2438

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %gov, align 8, !dbg !2440
  %name = getelementptr inbounds %struct.cpuidle_governor, ptr %6, i32 0, i32 0, !dbg !2443
  %arraydecay2 = getelementptr inbounds [16 x i8], ptr %name, i64 0, i64 0, !dbg !2440
  %arraydecay3 = getelementptr inbounds [17 x i8], ptr %gov_name, i64 0, i64 0, !dbg !2444
  %call4 = call i32 @strncmp(ptr noundef %arraydecay2, ptr noundef %arraydecay3, i64 noundef 16) #14, !dbg !2445
  %tobool = icmp ne i32 %call4, 0, !dbg !2445
  br i1 %tobool, label %if.end7, label %if.then5, !dbg !2446

if.then5:                                         ; preds = %for.body
  %7 = load ptr, ptr %gov, align 8, !dbg !2447
  %call6 = call i32 @cpuidle_switch_governor(ptr noundef %7) #14, !dbg !2449
  store i32 %call6, ptr %ret, align 4, !dbg !2450
  br label %for.end, !dbg !2451

if.end7:                                          ; preds = %for.body
  br label %for.inc, !dbg !2452

for.inc:                                          ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr8) #13, !dbg !2453
  call void @llvm.dbg.declare(metadata ptr %__mptr8, metadata !2413, metadata !DIExpression()), !dbg !2453
  %8 = load ptr, ptr %gov, align 8, !dbg !2453
  %governor_list9 = getelementptr inbounds %struct.cpuidle_governor, ptr %8, i32 0, i32 1, !dbg !2453
  %next = getelementptr inbounds %struct.list_head, ptr %governor_list9, i32 0, i32 0, !dbg !2453
  %9 = load ptr, ptr %next, align 8, !dbg !2453
  store ptr %9, ptr %__mptr8, align 8, !dbg !2453
  %10 = load ptr, ptr %__mptr8, align 8, !dbg !2453
  %add.ptr11 = getelementptr i8, ptr %10, i64 -16, !dbg !2453
  store ptr %add.ptr11, ptr %tmp10, align 8, !dbg !2453
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr8) #13, !dbg !2439
  %11 = load ptr, ptr %tmp10, align 8, !dbg !2453
  store ptr %11, ptr %gov, align 8, !dbg !2439
  br label %for.cond, !dbg !2439, !llvm.loop !2454

for.end:                                          ; preds = %if.then5, %for.cond
  call void @mutex_unlock(ptr noundef @cpuidle_lock) #14, !dbg !2456
  %12 = load i32, ptr %ret, align 4, !dbg !2457
  %tobool12 = icmp ne i32 %12, 0, !dbg !2457
  br i1 %tobool12, label %cond.true, label %cond.false, !dbg !2457

cond.true:                                        ; preds = %for.end
  %13 = load i32, ptr %ret, align 4, !dbg !2458
  %conv = sext i32 %13 to i64, !dbg !2458
  br label %cond.end, !dbg !2457

cond.false:                                       ; preds = %for.end
  %14 = load i64, ptr %count.addr, align 8, !dbg !2459
  br label %cond.end, !dbg !2457

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %14, %cond.false ], !dbg !2457
  store i64 %cond, ptr %retval, align 8, !dbg !2460
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2460

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %gov) #13, !dbg !2461
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !2461
  call void @llvm.lifetime.end.p0(i64 17, ptr %gov_name) #13, !dbg !2461
  %15 = load i64, ptr %retval, align 8, !dbg !2461
  ret i64 %15, !dbg !2461
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2462 dso_local i32 @sscanf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2465 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2469 dso_local i32 @cpuidle_switch_governor(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2473 dso_local ptr @cpuidle_get_cpu_driver(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpuidle_add_s2idle_attr_group(ptr noundef %kobj) #0 align 16 !dbg !2476 {
entry:
  %kobj.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !2480, metadata !DIExpression()), !dbg !2482
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !2483
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2481, metadata !DIExpression()), !dbg !2484
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !2485
  %state = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %0, i32 0, i32 0, !dbg !2487
  %1 = load ptr, ptr %state, align 8, !dbg !2487
  %enter_s2idle = getelementptr inbounds %struct.cpuidle_state, ptr %1, i32 0, i32 10, !dbg !2488
  %2 = load ptr, ptr %enter_s2idle, align 8, !dbg !2488
  %tobool = icmp ne ptr %2, null, !dbg !2485
  br i1 %tobool, label %if.end, label %if.then, !dbg !2489

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2490

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %kobj.addr, align 8, !dbg !2491
  %kobj1 = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %3, i32 0, i32 3, !dbg !2492
  %call = call i32 @sysfs_create_group(ptr noundef %kobj1, ptr noundef @cpuidle_state_s2idle_group) #14, !dbg !2493
  store i32 %call, ptr %ret, align 4, !dbg !2494
  %4 = load i32, ptr %ret, align 4, !dbg !2495
  %tobool2 = icmp ne i32 %4, 0, !dbg !2495
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !2497

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %tmp, align 4, !dbg !2498
  %5 = load i32, ptr %tmp, align 4, !dbg !2501
  br label %if.end4, !dbg !2502

if.end4:                                          ; preds = %if.then3, %if.end
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2503
  br label %cleanup, !dbg !2503

cleanup:                                          ; preds = %if.end4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !2503
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2503

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpuidle_free_state_kobj(ptr noundef %device, i32 noundef %i) #4 align 16 !dbg !2504 {
entry:
  %device.addr = alloca ptr, align 8
  %i.addr = alloca i32, align 4
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !2506, metadata !DIExpression()), !dbg !2508
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2507, metadata !DIExpression()), !dbg !2509
  %0 = load ptr, ptr %device.addr, align 8, !dbg !2510
  %kobjs = getelementptr inbounds %struct.cpuidle_device, ptr %0, i32 0, i32 8, !dbg !2511
  %1 = load i32, ptr %i.addr, align 4, !dbg !2512
  %idxprom = sext i32 %1 to i64, !dbg !2510
  %arrayidx = getelementptr [10 x ptr], ptr %kobjs, i64 0, i64 %idxprom, !dbg !2510
  %2 = load ptr, ptr %arrayidx, align 8, !dbg !2510
  call void @cpuidle_remove_s2idle_attr_group(ptr noundef %2) #14, !dbg !2513
  %3 = load ptr, ptr %device.addr, align 8, !dbg !2514
  %kobjs1 = getelementptr inbounds %struct.cpuidle_device, ptr %3, i32 0, i32 8, !dbg !2515
  %4 = load i32, ptr %i.addr, align 4, !dbg !2516
  %idxprom2 = sext i32 %4 to i64, !dbg !2514
  %arrayidx3 = getelementptr [10 x ptr], ptr %kobjs1, i64 0, i64 %idxprom2, !dbg !2514
  %5 = load ptr, ptr %arrayidx3, align 8, !dbg !2514
  %kobj = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %5, i32 0, i32 3, !dbg !2517
  call void @kobject_put(ptr noundef %kobj) #14, !dbg !2518
  %6 = load ptr, ptr %device.addr, align 8, !dbg !2519
  %kobjs4 = getelementptr inbounds %struct.cpuidle_device, ptr %6, i32 0, i32 8, !dbg !2520
  %7 = load i32, ptr %i.addr, align 4, !dbg !2521
  %idxprom5 = sext i32 %7 to i64, !dbg !2519
  %arrayidx6 = getelementptr [10 x ptr], ptr %kobjs4, i64 0, i64 %idxprom5, !dbg !2519
  %8 = load ptr, ptr %arrayidx6, align 8, !dbg !2519
  %kobj_unregister = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %8, i32 0, i32 2, !dbg !2522
  call void @wait_for_completion(ptr noundef %kobj_unregister) #14, !dbg !2523
  %9 = load ptr, ptr %device.addr, align 8, !dbg !2524
  %kobjs7 = getelementptr inbounds %struct.cpuidle_device, ptr %9, i32 0, i32 8, !dbg !2525
  %10 = load i32, ptr %i.addr, align 4, !dbg !2526
  %idxprom8 = sext i32 %10 to i64, !dbg !2524
  %arrayidx9 = getelementptr [10 x ptr], ptr %kobjs7, i64 0, i64 %idxprom8, !dbg !2524
  %11 = load ptr, ptr %arrayidx9, align 8, !dbg !2524
  call void @kfree(ptr noundef %11) #14, !dbg !2527
  %12 = load ptr, ptr %device.addr, align 8, !dbg !2528
  %kobjs10 = getelementptr inbounds %struct.cpuidle_device, ptr %12, i32 0, i32 8, !dbg !2529
  %13 = load i32, ptr %i.addr, align 4, !dbg !2530
  %idxprom11 = sext i32 %13 to i64, !dbg !2528
  %arrayidx12 = getelementptr [10 x ptr], ptr %kobjs10, i64 0, i64 %idxprom11, !dbg !2528
  store ptr null, ptr %arrayidx12, align 8, !dbg !2531
  ret void, !dbg !2532
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpuidle_state_sysfs_release(ptr noundef %kobj) #0 align 16 !dbg !2533 {
entry:
  %kobj.addr = alloca ptr, align 8
  %state_obj = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !2535, metadata !DIExpression()), !dbg !2539
  call void @llvm.lifetime.start.p0(i64 8, ptr %state_obj) #13, !dbg !2540
  call void @llvm.dbg.declare(metadata ptr %state_obj, metadata !2536, metadata !DIExpression()), !dbg !2541
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !2542
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2537, metadata !DIExpression()), !dbg !2542
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !2542
  store ptr %0, ptr %__mptr, align 8, !dbg !2542
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2542
  %add.ptr = getelementptr i8, ptr %1, i64 -48, !dbg !2542
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2542
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !2543
  %2 = load ptr, ptr %tmp, align 8, !dbg !2542
  store ptr %2, ptr %state_obj, align 8, !dbg !2541
  %3 = load ptr, ptr %state_obj, align 8, !dbg !2544
  %kobj_unregister = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %3, i32 0, i32 2, !dbg !2545
  call void @complete(ptr noundef %kobj_unregister) #14, !dbg !2546
  call void @llvm.lifetime.end.p0(i64 8, ptr %state_obj) #13, !dbg !2547
  ret void, !dbg !2547
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2548 dso_local void @complete(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cpuidle_state_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2549 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %state = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %state_usage = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %cattr = alloca ptr, align 8
  %__mptr6 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !2551, metadata !DIExpression()), !dbg !2564
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2552, metadata !DIExpression()), !dbg !2565
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2553, metadata !DIExpression()), !dbg !2566
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !2567
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2554, metadata !DIExpression()), !dbg !2568
  store i32 -5, ptr %ret, align 4, !dbg !2568
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #13, !dbg !2569
  call void @llvm.dbg.declare(metadata ptr %state, metadata !2555, metadata !DIExpression()), !dbg !2570
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !2571
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2556, metadata !DIExpression()), !dbg !2571
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !2571
  store ptr %0, ptr %__mptr, align 8, !dbg !2571
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2571
  %add.ptr = getelementptr i8, ptr %1, i64 -48, !dbg !2571
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2571
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !2572
  %2 = load ptr, ptr %tmp, align 8, !dbg !2571
  %state1 = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %2, i32 0, i32 0, !dbg !2572
  %3 = load ptr, ptr %state1, align 8, !dbg !2572
  store ptr %3, ptr %state, align 8, !dbg !2570
  call void @llvm.lifetime.start.p0(i64 8, ptr %state_usage) #13, !dbg !2573
  call void @llvm.dbg.declare(metadata ptr %state_usage, metadata !2558, metadata !DIExpression()), !dbg !2574
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #13, !dbg !2575
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !2559, metadata !DIExpression()), !dbg !2575
  %4 = load ptr, ptr %kobj.addr, align 8, !dbg !2575
  store ptr %4, ptr %__mptr2, align 8, !dbg !2575
  %5 = load ptr, ptr %__mptr2, align 8, !dbg !2575
  %add.ptr4 = getelementptr i8, ptr %5, i64 -48, !dbg !2575
  store ptr %add.ptr4, ptr %tmp3, align 8, !dbg !2575
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #13, !dbg !2576
  %6 = load ptr, ptr %tmp3, align 8, !dbg !2575
  %state_usage5 = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %6, i32 0, i32 1, !dbg !2576
  %7 = load ptr, ptr %state_usage5, align 8, !dbg !2576
  store ptr %7, ptr %state_usage, align 8, !dbg !2574
  call void @llvm.lifetime.start.p0(i64 8, ptr %cattr) #13, !dbg !2577
  call void @llvm.dbg.declare(metadata ptr %cattr, metadata !2561, metadata !DIExpression()), !dbg !2578
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr6) #13, !dbg !2579
  call void @llvm.dbg.declare(metadata ptr %__mptr6, metadata !2562, metadata !DIExpression()), !dbg !2579
  %8 = load ptr, ptr %attr.addr, align 8, !dbg !2579
  store ptr %8, ptr %__mptr6, align 8, !dbg !2579
  %9 = load ptr, ptr %__mptr6, align 8, !dbg !2579
  %add.ptr8 = getelementptr i8, ptr %9, i64 0, !dbg !2579
  store ptr %add.ptr8, ptr %tmp7, align 8, !dbg !2579
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr6) #13, !dbg !2580
  %10 = load ptr, ptr %tmp7, align 8, !dbg !2579
  store ptr %10, ptr %cattr, align 8, !dbg !2578
  %11 = load ptr, ptr %cattr, align 8, !dbg !2581
  %show = getelementptr inbounds %struct.cpuidle_state_attr, ptr %11, i32 0, i32 1, !dbg !2583
  %12 = load ptr, ptr %show, align 8, !dbg !2583
  %tobool = icmp ne ptr %12, null, !dbg !2581
  br i1 %tobool, label %if.then, label %if.end, !dbg !2584

if.then:                                          ; preds = %entry
  %13 = load ptr, ptr %cattr, align 8, !dbg !2585
  %show9 = getelementptr inbounds %struct.cpuidle_state_attr, ptr %13, i32 0, i32 1, !dbg !2586
  %14 = load ptr, ptr %show9, align 8, !dbg !2586
  %15 = load ptr, ptr %state, align 8, !dbg !2587
  %16 = load ptr, ptr %state_usage, align 8, !dbg !2588
  %17 = load ptr, ptr %buf.addr, align 8, !dbg !2589
  %call = call i64 %14(ptr noundef %15, ptr noundef %16, ptr noundef %17) #14, !dbg !2585
  %conv = trunc i64 %call to i32, !dbg !2585
  store i32 %conv, ptr %ret, align 4, !dbg !2590
  br label %if.end, !dbg !2591

if.end:                                           ; preds = %if.then, %entry
  %18 = load i32, ptr %ret, align 4, !dbg !2592
  %conv10 = sext i32 %18 to i64, !dbg !2592
  call void @llvm.lifetime.end.p0(i64 8, ptr %cattr) #13, !dbg !2593
  call void @llvm.lifetime.end.p0(i64 8, ptr %state_usage) #13, !dbg !2593
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #13, !dbg !2593
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !2593
  ret i64 %conv10, !dbg !2594
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cpuidle_state_store(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i64 noundef %size) #0 align 16 !dbg !2595 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %state = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %state_usage = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp3 = alloca ptr, align 8
  %cattr = alloca ptr, align 8
  %__mptr6 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %__mptr9 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !2597, metadata !DIExpression()), !dbg !2614
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2598, metadata !DIExpression()), !dbg !2615
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2599, metadata !DIExpression()), !dbg !2616
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2600, metadata !DIExpression()), !dbg !2617
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !2618
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2601, metadata !DIExpression()), !dbg !2619
  store i32 -5, ptr %ret, align 4, !dbg !2619
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #13, !dbg !2620
  call void @llvm.dbg.declare(metadata ptr %state, metadata !2602, metadata !DIExpression()), !dbg !2621
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !2622
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2603, metadata !DIExpression()), !dbg !2622
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !2622
  store ptr %0, ptr %__mptr, align 8, !dbg !2622
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2622
  %add.ptr = getelementptr i8, ptr %1, i64 -48, !dbg !2622
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2622
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !2623
  %2 = load ptr, ptr %tmp, align 8, !dbg !2622
  %state1 = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %2, i32 0, i32 0, !dbg !2623
  %3 = load ptr, ptr %state1, align 8, !dbg !2623
  store ptr %3, ptr %state, align 8, !dbg !2621
  call void @llvm.lifetime.start.p0(i64 8, ptr %state_usage) #13, !dbg !2624
  call void @llvm.dbg.declare(metadata ptr %state_usage, metadata !2605, metadata !DIExpression()), !dbg !2625
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #13, !dbg !2626
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !2606, metadata !DIExpression()), !dbg !2626
  %4 = load ptr, ptr %kobj.addr, align 8, !dbg !2626
  store ptr %4, ptr %__mptr2, align 8, !dbg !2626
  %5 = load ptr, ptr %__mptr2, align 8, !dbg !2626
  %add.ptr4 = getelementptr i8, ptr %5, i64 -48, !dbg !2626
  store ptr %add.ptr4, ptr %tmp3, align 8, !dbg !2626
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #13, !dbg !2627
  %6 = load ptr, ptr %tmp3, align 8, !dbg !2626
  %state_usage5 = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %6, i32 0, i32 1, !dbg !2627
  %7 = load ptr, ptr %state_usage5, align 8, !dbg !2627
  store ptr %7, ptr %state_usage, align 8, !dbg !2625
  call void @llvm.lifetime.start.p0(i64 8, ptr %cattr) #13, !dbg !2628
  call void @llvm.dbg.declare(metadata ptr %cattr, metadata !2608, metadata !DIExpression()), !dbg !2629
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr6) #13, !dbg !2630
  call void @llvm.dbg.declare(metadata ptr %__mptr6, metadata !2609, metadata !DIExpression()), !dbg !2630
  %8 = load ptr, ptr %attr.addr, align 8, !dbg !2630
  store ptr %8, ptr %__mptr6, align 8, !dbg !2630
  %9 = load ptr, ptr %__mptr6, align 8, !dbg !2630
  %add.ptr8 = getelementptr i8, ptr %9, i64 0, !dbg !2630
  store ptr %add.ptr8, ptr %tmp7, align 8, !dbg !2630
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr6) #13, !dbg !2631
  %10 = load ptr, ptr %tmp7, align 8, !dbg !2630
  store ptr %10, ptr %cattr, align 8, !dbg !2629
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #13, !dbg !2632
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !2611, metadata !DIExpression()), !dbg !2633
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr9) #13, !dbg !2634
  call void @llvm.dbg.declare(metadata ptr %__mptr9, metadata !2612, metadata !DIExpression()), !dbg !2634
  %11 = load ptr, ptr %kobj.addr, align 8, !dbg !2634
  store ptr %11, ptr %__mptr9, align 8, !dbg !2634
  %12 = load ptr, ptr %__mptr9, align 8, !dbg !2634
  %add.ptr11 = getelementptr i8, ptr %12, i64 -48, !dbg !2634
  store ptr %add.ptr11, ptr %tmp10, align 8, !dbg !2634
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr9) #13, !dbg !2635
  %13 = load ptr, ptr %tmp10, align 8, !dbg !2634
  %device = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %13, i32 0, i32 4, !dbg !2635
  %14 = load ptr, ptr %device, align 8, !dbg !2635
  store ptr %14, ptr %dev, align 8, !dbg !2633
  %15 = load ptr, ptr %cattr, align 8, !dbg !2636
  %store = getelementptr inbounds %struct.cpuidle_state_attr, ptr %15, i32 0, i32 2, !dbg !2638
  %16 = load ptr, ptr %store, align 8, !dbg !2638
  %tobool = icmp ne ptr %16, null, !dbg !2636
  br i1 %tobool, label %if.then, label %if.end, !dbg !2639

if.then:                                          ; preds = %entry
  %17 = load ptr, ptr %cattr, align 8, !dbg !2640
  %store12 = getelementptr inbounds %struct.cpuidle_state_attr, ptr %17, i32 0, i32 2, !dbg !2641
  %18 = load ptr, ptr %store12, align 8, !dbg !2641
  %19 = load ptr, ptr %state, align 8, !dbg !2642
  %20 = load ptr, ptr %state_usage, align 8, !dbg !2643
  %21 = load ptr, ptr %buf.addr, align 8, !dbg !2644
  %22 = load i64, ptr %size.addr, align 8, !dbg !2645
  %call = call i64 %18(ptr noundef %19, ptr noundef %20, ptr noundef %21, i64 noundef %22) #14, !dbg !2640
  %conv = trunc i64 %call to i32, !dbg !2640
  store i32 %conv, ptr %ret, align 4, !dbg !2646
  br label %if.end, !dbg !2647

if.end:                                           ; preds = %if.then, %entry
  %23 = load ptr, ptr %dev, align 8, !dbg !2648
  %poll_limit_ns = getelementptr inbounds %struct.cpuidle_device, ptr %23, i32 0, i32 5, !dbg !2649
  store i64 0, ptr %poll_limit_ns, align 8, !dbg !2650
  %24 = load i32, ptr %ret, align 4, !dbg !2651
  %conv13 = sext i32 %24 to i64, !dbg !2651
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #13, !dbg !2652
  call void @llvm.lifetime.end.p0(i64 8, ptr %cattr) #13, !dbg !2652
  call void @llvm.lifetime.end.p0(i64 8, ptr %state_usage) #13, !dbg !2652
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #13, !dbg !2652
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !2652
  ret i64 %conv13, !dbg !2653
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @show_state_name(ptr noundef %state, ptr noundef %state_usage, ptr noundef %buf) #0 align 16 !dbg !2654 {
entry:
  %retval = alloca i64, align 8
  %state.addr = alloca ptr, align 8
  %state_usage.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2656, metadata !DIExpression()), !dbg !2659
  store ptr %state_usage, ptr %state_usage.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state_usage.addr, metadata !2657, metadata !DIExpression()), !dbg !2659
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2658, metadata !DIExpression()), !dbg !2659
  %0 = load ptr, ptr %state.addr, align 8, !dbg !2660
  %name = getelementptr inbounds %struct.cpuidle_state, ptr %0, i32 0, i32 0, !dbg !2660
  %arrayidx = getelementptr [16 x i8], ptr %name, i64 0, i64 0, !dbg !2660
  %1 = load i8, ptr %arrayidx, align 8, !dbg !2660
  %conv = zext i8 %1 to i32, !dbg !2660
  %cmp = icmp eq i32 %conv, 0, !dbg !2660
  br i1 %cmp, label %if.then, label %if.end, !dbg !2659

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !2660
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef @.str.12) #14, !dbg !2660
  %conv2 = sext i32 %call to i64, !dbg !2660
  store i64 %conv2, ptr %retval, align 8, !dbg !2660
  br label %return, !dbg !2660

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !2659
  %4 = load ptr, ptr %state.addr, align 8, !dbg !2659
  %name3 = getelementptr inbounds %struct.cpuidle_state, ptr %4, i32 0, i32 0, !dbg !2659
  %arraydecay = getelementptr inbounds [16 x i8], ptr %name3, i64 0, i64 0, !dbg !2659
  %call4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef @.str.5, ptr noundef %arraydecay) #14, !dbg !2659
  %conv5 = sext i32 %call4 to i64, !dbg !2659
  store i64 %conv5, ptr %retval, align 8, !dbg !2659
  br label %return, !dbg !2659

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, ptr %retval, align 8, !dbg !2659
  ret i64 %5, !dbg !2659
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @show_state_desc(ptr noundef %state, ptr noundef %state_usage, ptr noundef %buf) #0 align 16 !dbg !2662 {
entry:
  %retval = alloca i64, align 8
  %state.addr = alloca ptr, align 8
  %state_usage.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2664, metadata !DIExpression()), !dbg !2667
  store ptr %state_usage, ptr %state_usage.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state_usage.addr, metadata !2665, metadata !DIExpression()), !dbg !2667
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2666, metadata !DIExpression()), !dbg !2667
  %0 = load ptr, ptr %state.addr, align 8, !dbg !2668
  %desc = getelementptr inbounds %struct.cpuidle_state, ptr %0, i32 0, i32 1, !dbg !2668
  %arrayidx = getelementptr [32 x i8], ptr %desc, i64 0, i64 0, !dbg !2668
  %1 = load i8, ptr %arrayidx, align 8, !dbg !2668
  %conv = zext i8 %1 to i32, !dbg !2668
  %cmp = icmp eq i32 %conv, 0, !dbg !2668
  br i1 %cmp, label %if.then, label %if.end, !dbg !2667

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !2668
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %2, ptr noundef @.str.12) #14, !dbg !2668
  %conv2 = sext i32 %call to i64, !dbg !2668
  store i64 %conv2, ptr %retval, align 8, !dbg !2668
  br label %return, !dbg !2668

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !2667
  %4 = load ptr, ptr %state.addr, align 8, !dbg !2667
  %desc3 = getelementptr inbounds %struct.cpuidle_state, ptr %4, i32 0, i32 1, !dbg !2667
  %arraydecay = getelementptr inbounds [32 x i8], ptr %desc3, i64 0, i64 0, !dbg !2667
  %call4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef @.str.5, ptr noundef %arraydecay) #14, !dbg !2667
  %conv5 = sext i32 %call4 to i64, !dbg !2667
  store i64 %conv5, ptr %retval, align 8, !dbg !2667
  br label %return, !dbg !2667

return:                                           ; preds = %if.end, %if.then
  %5 = load i64, ptr %retval, align 8, !dbg !2667
  ret i64 %5, !dbg !2667
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @show_state_exit_latency(ptr noundef %state, ptr noundef %state_usage, ptr noundef %buf) #0 align 16 !dbg !2670 {
entry:
  %state.addr = alloca ptr, align 8
  %state_usage.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2672, metadata !DIExpression()), !dbg !2675
  store ptr %state_usage, ptr %state_usage.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state_usage.addr, metadata !2673, metadata !DIExpression()), !dbg !2675
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2674, metadata !DIExpression()), !dbg !2675
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !2675
  %1 = load ptr, ptr %state.addr, align 8, !dbg !2675
  %exit_latency_ns = getelementptr inbounds %struct.cpuidle_state, ptr %1, i32 0, i32 2, !dbg !2675
  %2 = load i64, ptr %exit_latency_ns, align 8, !dbg !2675
  %call = call i64 @ktime_to_us(i64 noundef %2) #14, !dbg !2675
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.15, i64 noundef %call) #14, !dbg !2675
  %conv = sext i32 %call1 to i64, !dbg !2675
  ret i64 %conv, !dbg !2675
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ktime_to_us(i64 noundef %kt) #4 align 16 !dbg !2676 {
entry:
  %kt.addr = alloca i64, align 8
  store i64 %kt, ptr %kt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kt.addr, metadata !2681, metadata !DIExpression()), !dbg !2682
  %0 = load i64, ptr %kt.addr, align 8, !dbg !2683
  %call = call i64 @ktime_divns(i64 noundef %0, i64 noundef 1000) #14, !dbg !2684
  ret i64 %call, !dbg !2685
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ktime_divns(i64 noundef %kt, i64 noundef %div) #4 align 16 !dbg !2686 {
entry:
  %kt.addr = alloca i64, align 8
  %div.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i64 %kt, ptr %kt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kt.addr, metadata !2690, metadata !DIExpression()), !dbg !2697
  store i64 %div, ptr %div.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %div.addr, metadata !2691, metadata !DIExpression()), !dbg !2698
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !2699
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2692, metadata !DIExpression()), !dbg !2699
  %0 = load i64, ptr %div.addr, align 8, !dbg !2699
  %cmp = icmp slt i64 %0, 0, !dbg !2699
  %lnot = xor i1 %cmp, true, !dbg !2699
  %lnot1 = xor i1 %lnot, true, !dbg !2699
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2699
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2699
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !2700
  %tobool = icmp ne i32 %1, 0, !dbg !2700
  %lnot2 = xor i1 %tobool, true, !dbg !2700
  %lnot4 = xor i1 %lnot2, true, !dbg !2700
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !2700
  %conv = sext i32 %lnot.ext5 to i64, !dbg !2700
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2700
  %tobool6 = icmp ne i64 %expval, 0, !dbg !2700
  br i1 %tobool6, label %if.then, label %if.end, !dbg !2699

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2700

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #13, !dbg !2701
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2694, metadata !DIExpression()), !dbg !2701
  store i32 2305, ptr %__flags, align 4, !dbg !2701
  br label %do.body7, !dbg !2701

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !2702

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !2702

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !2701

do.body8:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !2704
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.16, i32 154, i32 %2, i64 12) #13, !dbg !2704, !srcloc !2706
  br label %do.cond9, !dbg !2704

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !2704

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !2701

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !2707

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !2707

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #13, !dbg !2700
  br label %do.cond14, !dbg !2701

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !2701

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !2701

if.end:                                           ; preds = %do.end15, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !2699
  %tobool16 = icmp ne i32 %3, 0, !dbg !2699
  %lnot17 = xor i1 %tobool16, true, !dbg !2699
  %lnot19 = xor i1 %lnot17, true, !dbg !2699
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !2699
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !2699
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !2699
  store i64 %expval22, ptr %tmp, align 8, !dbg !2700
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #13, !dbg !2709
  %4 = load i64, ptr %tmp, align 8, !dbg !2699
  %5 = load i64, ptr %kt.addr, align 8, !dbg !2710
  %6 = load i64, ptr %div.addr, align 8, !dbg !2711
  %div23 = sdiv i64 %5, %6, !dbg !2712
  ret i64 %div23, !dbg !2713
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @show_state_target_residency(ptr noundef %state, ptr noundef %state_usage, ptr noundef %buf) #0 align 16 !dbg !2714 {
entry:
  %state.addr = alloca ptr, align 8
  %state_usage.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2716, metadata !DIExpression()), !dbg !2719
  store ptr %state_usage, ptr %state_usage.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state_usage.addr, metadata !2717, metadata !DIExpression()), !dbg !2719
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2718, metadata !DIExpression()), !dbg !2719
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !2719
  %1 = load ptr, ptr %state.addr, align 8, !dbg !2719
  %target_residency_ns = getelementptr inbounds %struct.cpuidle_state, ptr %1, i32 0, i32 3, !dbg !2719
  %2 = load i64, ptr %target_residency_ns, align 8, !dbg !2719
  %call = call i64 @ktime_to_us(i64 noundef %2) #14, !dbg !2719
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.15, i64 noundef %call) #14, !dbg !2719
  %conv = sext i32 %call1 to i64, !dbg !2719
  ret i64 %conv, !dbg !2719
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @show_state_power_usage(ptr noundef %state, ptr noundef %state_usage, ptr noundef %buf) #0 align 16 !dbg !2720 {
entry:
  %state.addr = alloca ptr, align 8
  %state_usage.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2722, metadata !DIExpression()), !dbg !2725
  store ptr %state_usage, ptr %state_usage.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state_usage.addr, metadata !2723, metadata !DIExpression()), !dbg !2725
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2724, metadata !DIExpression()), !dbg !2725
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !2725
  %1 = load ptr, ptr %state.addr, align 8, !dbg !2725
  %power_usage = getelementptr inbounds %struct.cpuidle_state, ptr %1, i32 0, i32 6, !dbg !2725
  %2 = load i32, ptr %power_usage, align 8, !dbg !2725
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.19, i32 noundef %2) #14, !dbg !2725
  %conv = sext i32 %call to i64, !dbg !2725
  ret i64 %conv, !dbg !2725
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @show_state_usage(ptr noundef %state, ptr noundef %state_usage, ptr noundef %buf) #0 align 16 !dbg !2726 {
entry:
  %state.addr = alloca ptr, align 8
  %state_usage.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2728, metadata !DIExpression()), !dbg !2731
  store ptr %state_usage, ptr %state_usage.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state_usage.addr, metadata !2729, metadata !DIExpression()), !dbg !2731
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2730, metadata !DIExpression()), !dbg !2731
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !2731
  %1 = load ptr, ptr %state_usage.addr, align 8, !dbg !2731
  %usage = getelementptr inbounds %struct.cpuidle_state_usage, ptr %1, i32 0, i32 1, !dbg !2731
  %2 = load i64, ptr %usage, align 8, !dbg !2731
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.15, i64 noundef %2) #14, !dbg !2731
  %conv = sext i32 %call to i64, !dbg !2731
  ret i64 %conv, !dbg !2731
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @show_state_rejected(ptr noundef %state, ptr noundef %state_usage, ptr noundef %buf) #0 align 16 !dbg !2732 {
entry:
  %state.addr = alloca ptr, align 8
  %state_usage.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2734, metadata !DIExpression()), !dbg !2737
  store ptr %state_usage, ptr %state_usage.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state_usage.addr, metadata !2735, metadata !DIExpression()), !dbg !2737
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2736, metadata !DIExpression()), !dbg !2737
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !2737
  %1 = load ptr, ptr %state_usage.addr, align 8, !dbg !2737
  %rejected = getelementptr inbounds %struct.cpuidle_state_usage, ptr %1, i32 0, i32 5, !dbg !2737
  %2 = load i64, ptr %rejected, align 8, !dbg !2737
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.15, i64 noundef %2) #14, !dbg !2737
  %conv = sext i32 %call to i64, !dbg !2737
  ret i64 %conv, !dbg !2737
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @show_state_time(ptr noundef %state, ptr noundef %state_usage, ptr noundef %buf) #0 align 16 !dbg !2738 {
entry:
  %state.addr = alloca ptr, align 8
  %state_usage.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2740, metadata !DIExpression()), !dbg !2743
  store ptr %state_usage, ptr %state_usage.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state_usage.addr, metadata !2741, metadata !DIExpression()), !dbg !2744
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2742, metadata !DIExpression()), !dbg !2745
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !2746
  %1 = load ptr, ptr %state_usage.addr, align 8, !dbg !2747
  %time_ns = getelementptr inbounds %struct.cpuidle_state_usage, ptr %1, i32 0, i32 2, !dbg !2748
  %2 = load i64, ptr %time_ns, align 8, !dbg !2748
  %call = call i64 @ktime_to_us(i64 noundef %2) #14, !dbg !2749
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.15, i64 noundef %call) #14, !dbg !2750
  %conv = sext i32 %call1 to i64, !dbg !2750
  ret i64 %conv, !dbg !2751
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @show_state_disable(ptr noundef %state, ptr noundef %state_usage, ptr noundef %buf) #0 align 16 !dbg !2752 {
entry:
  %state.addr = alloca ptr, align 8
  %state_usage.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2754, metadata !DIExpression()), !dbg !2757
  store ptr %state_usage, ptr %state_usage.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state_usage.addr, metadata !2755, metadata !DIExpression()), !dbg !2758
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2756, metadata !DIExpression()), !dbg !2759
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !2760
  %1 = load ptr, ptr %state_usage.addr, align 8, !dbg !2761
  %disable = getelementptr inbounds %struct.cpuidle_state_usage, ptr %1, i32 0, i32 0, !dbg !2762
  %2 = load i64, ptr %disable, align 8, !dbg !2762
  %and = and i64 %2, 1, !dbg !2763
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.15, i64 noundef %and) #14, !dbg !2764
  %conv = sext i32 %call to i64, !dbg !2764
  ret i64 %conv, !dbg !2765
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @store_state_disable(ptr noundef %state, ptr noundef %state_usage, ptr noundef %buf, i64 noundef %size) #0 align 16 !dbg !2766 {
entry:
  %retval = alloca i64, align 8
  %state.addr = alloca ptr, align 8
  %state_usage.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %value = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2768, metadata !DIExpression()), !dbg !2774
  store ptr %state_usage, ptr %state_usage.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state_usage.addr, metadata !2769, metadata !DIExpression()), !dbg !2775
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2770, metadata !DIExpression()), !dbg !2776
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2771, metadata !DIExpression()), !dbg !2777
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #13, !dbg !2778
  call void @llvm.dbg.declare(metadata ptr %value, metadata !2772, metadata !DIExpression()), !dbg !2779
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #13, !dbg !2780
  call void @llvm.dbg.declare(metadata ptr %err, metadata !2773, metadata !DIExpression()), !dbg !2781
  %call = call zeroext i1 @capable(i32 noundef 21) #14, !dbg !2782
  br i1 %call, label %if.end, label %if.then, !dbg !2784

if.then:                                          ; preds = %entry
  store i64 -1, ptr %retval, align 8, !dbg !2785
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2785

if.end:                                           ; preds = %entry
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !2786
  %call1 = call i32 @kstrtouint(ptr noundef %0, i32 noundef 0, ptr noundef %value) #14, !dbg !2787
  store i32 %call1, ptr %err, align 4, !dbg !2788
  %1 = load i32, ptr %err, align 4, !dbg !2789
  %tobool = icmp ne i32 %1, 0, !dbg !2789
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !2791

if.then2:                                         ; preds = %if.end
  %2 = load i32, ptr %err, align 4, !dbg !2792
  %conv = sext i32 %2 to i64, !dbg !2792
  store i64 %conv, ptr %retval, align 8, !dbg !2793
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2793

if.end3:                                          ; preds = %if.end
  %3 = load i32, ptr %value, align 4, !dbg !2794
  %tobool4 = icmp ne i32 %3, 0, !dbg !2794
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !2796

if.then5:                                         ; preds = %if.end3
  %4 = load ptr, ptr %state_usage.addr, align 8, !dbg !2797
  %disable = getelementptr inbounds %struct.cpuidle_state_usage, ptr %4, i32 0, i32 0, !dbg !2798
  %5 = load i64, ptr %disable, align 8, !dbg !2799
  %or = or i64 %5, 1, !dbg !2799
  store i64 %or, ptr %disable, align 8, !dbg !2799
  br label %if.end7, !dbg !2797

if.else:                                          ; preds = %if.end3
  %6 = load ptr, ptr %state_usage.addr, align 8, !dbg !2800
  %disable6 = getelementptr inbounds %struct.cpuidle_state_usage, ptr %6, i32 0, i32 0, !dbg !2801
  %7 = load i64, ptr %disable6, align 8, !dbg !2802
  %and = and i64 %7, -2, !dbg !2802
  store i64 %and, ptr %disable6, align 8, !dbg !2802
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  %8 = load i64, ptr %size.addr, align 8, !dbg !2803
  store i64 %8, ptr %retval, align 8, !dbg !2804
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2804

cleanup:                                          ; preds = %if.end7, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #13, !dbg !2805
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #13, !dbg !2805
  %9 = load i64, ptr %retval, align 8, !dbg !2805
  ret i64 %9, !dbg !2805
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2806 dso_local zeroext i1 @capable(i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2810 dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @show_state_above(ptr noundef %state, ptr noundef %state_usage, ptr noundef %buf) #0 align 16 !dbg !2814 {
entry:
  %state.addr = alloca ptr, align 8
  %state_usage.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2816, metadata !DIExpression()), !dbg !2819
  store ptr %state_usage, ptr %state_usage.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state_usage.addr, metadata !2817, metadata !DIExpression()), !dbg !2819
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2818, metadata !DIExpression()), !dbg !2819
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !2819
  %1 = load ptr, ptr %state_usage.addr, align 8, !dbg !2819
  %above = getelementptr inbounds %struct.cpuidle_state_usage, ptr %1, i32 0, i32 3, !dbg !2819
  %2 = load i64, ptr %above, align 8, !dbg !2819
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.15, i64 noundef %2) #14, !dbg !2819
  %conv = sext i32 %call to i64, !dbg !2819
  ret i64 %conv, !dbg !2819
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @show_state_below(ptr noundef %state, ptr noundef %state_usage, ptr noundef %buf) #0 align 16 !dbg !2820 {
entry:
  %state.addr = alloca ptr, align 8
  %state_usage.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2822, metadata !DIExpression()), !dbg !2825
  store ptr %state_usage, ptr %state_usage.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state_usage.addr, metadata !2823, metadata !DIExpression()), !dbg !2825
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2824, metadata !DIExpression()), !dbg !2825
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !2825
  %1 = load ptr, ptr %state_usage.addr, align 8, !dbg !2825
  %below = getelementptr inbounds %struct.cpuidle_state_usage, ptr %1, i32 0, i32 4, !dbg !2825
  %2 = load i64, ptr %below, align 8, !dbg !2825
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.15, i64 noundef %2) #14, !dbg !2825
  %conv = sext i32 %call to i64, !dbg !2825
  ret i64 %conv, !dbg !2825
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @show_state_default_status(ptr noundef %state, ptr noundef %state_usage, ptr noundef %buf) #0 align 16 !dbg !2826 {
entry:
  %state.addr = alloca ptr, align 8
  %state_usage.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2828, metadata !DIExpression()), !dbg !2831
  store ptr %state_usage, ptr %state_usage.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state_usage.addr, metadata !2829, metadata !DIExpression()), !dbg !2832
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2830, metadata !DIExpression()), !dbg !2833
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !2834
  %1 = load ptr, ptr %state.addr, align 8, !dbg !2835
  %flags = getelementptr inbounds %struct.cpuidle_state, ptr %1, i32 0, i32 4, !dbg !2836
  %2 = load i32, ptr %flags, align 8, !dbg !2836
  %conv = zext i32 %2 to i64, !dbg !2835
  %and = and i64 %conv, 16, !dbg !2837
  %tobool = icmp ne i64 %and, 0, !dbg !2835
  %3 = zext i1 %tobool to i64, !dbg !2835
  %cond = select i1 %tobool, ptr @.str.27, ptr @.str.28, !dbg !2835
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.5, ptr noundef %cond) #14, !dbg !2838
  %conv1 = sext i32 %call to i64, !dbg !2838
  ret i64 %conv1, !dbg !2839
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @show_state_s2idle_usage(ptr noundef %state, ptr noundef %state_usage, ptr noundef %buf) #0 align 16 !dbg !2840 {
entry:
  %state.addr = alloca ptr, align 8
  %state_usage.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2842, metadata !DIExpression()), !dbg !2845
  store ptr %state_usage, ptr %state_usage.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state_usage.addr, metadata !2843, metadata !DIExpression()), !dbg !2845
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2844, metadata !DIExpression()), !dbg !2845
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !2845
  %1 = load ptr, ptr %state_usage.addr, align 8, !dbg !2845
  %s2idle_usage = getelementptr inbounds %struct.cpuidle_state_usage, ptr %1, i32 0, i32 6, !dbg !2845
  %2 = load i64, ptr %s2idle_usage, align 8, !dbg !2845
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.15, i64 noundef %2) #14, !dbg !2845
  %conv = sext i32 %call to i64, !dbg !2845
  ret i64 %conv, !dbg !2845
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @show_state_s2idle_time(ptr noundef %state, ptr noundef %state_usage, ptr noundef %buf) #0 align 16 !dbg !2846 {
entry:
  %state.addr = alloca ptr, align 8
  %state_usage.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2848, metadata !DIExpression()), !dbg !2851
  store ptr %state_usage, ptr %state_usage.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state_usage.addr, metadata !2849, metadata !DIExpression()), !dbg !2851
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2850, metadata !DIExpression()), !dbg !2851
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !2851
  %1 = load ptr, ptr %state_usage.addr, align 8, !dbg !2851
  %s2idle_time = getelementptr inbounds %struct.cpuidle_state_usage, ptr %1, i32 0, i32 7, !dbg !2851
  %2 = load i64, ptr %s2idle_time, align 8, !dbg !2851
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %0, ptr noundef @.str.15, i64 noundef %2) #14, !dbg !2851
  %conv = sext i32 %call to i64, !dbg !2851
  ret i64 %conv, !dbg !2851
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpuidle_remove_s2idle_attr_group(ptr noundef %kobj) #0 align 16 !dbg !2852 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !2854, metadata !DIExpression()), !dbg !2855
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !2856
  %state = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %0, i32 0, i32 0, !dbg !2858
  %1 = load ptr, ptr %state, align 8, !dbg !2858
  %enter_s2idle = getelementptr inbounds %struct.cpuidle_state, ptr %1, i32 0, i32 10, !dbg !2859
  %2 = load ptr, ptr %enter_s2idle, align 8, !dbg !2859
  %tobool = icmp ne ptr %2, null, !dbg !2856
  br i1 %tobool, label %if.then, label %if.end, !dbg !2860

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %kobj.addr, align 8, !dbg !2861
  %kobj1 = getelementptr inbounds %struct.cpuidle_state_kobj, ptr %3, i32 0, i32 3, !dbg !2862
  call void @sysfs_remove_group(ptr noundef %kobj1, ptr noundef @cpuidle_state_s2idle_group) #14, !dbg !2863
  br label %if.end, !dbg !2863

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2864
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !2865 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2867, metadata !DIExpression()), !dbg !2872
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2868, metadata !DIExpression()), !dbg !2873
  %0 = load i64, ptr %size.addr, align 8, !dbg !2874
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2875
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2876

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2877
  %tobool = icmp ne i64 %2, 0, !dbg !2877
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2878

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !2879
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2869, metadata !DIExpression()), !dbg !2880
  %3 = load i64, ptr %size.addr, align 8, !dbg !2881
  %cmp = icmp ugt i64 %3, 8192, !dbg !2883
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2884

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2885
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2886
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !2887
  store ptr %call, ptr %retval, align 8, !dbg !2888
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2888

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2889
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !2889
  store i32 %call2, ptr %index, align 4, !dbg !2890
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2891
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2892
  %9 = ptrtoint ptr %8 to i64, !dbg !2892
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !2893
  %idxprom = zext i32 %call3 to i64, !dbg !2894
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2894
  %10 = load i32, ptr %index, align 4, !dbg !2895
  %idxprom4 = zext i32 %10 to i64, !dbg !2894
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2894
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2894
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2896
  %13 = load i64, ptr %size.addr, align 8, !dbg !2897
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !2898
  store ptr %call6, ptr %retval, align 8, !dbg !2899
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2899

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !2900
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2901
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2902
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !2903
  store ptr %call8, ptr %retval, align 8, !dbg !2904
  br label %return, !dbg !2904

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2905
  ret ptr %16, !dbg !2905
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2906 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #6 align 16 !dbg !2907 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2911, metadata !DIExpression()), !dbg !2913
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2912, metadata !DIExpression()), !dbg !2914
  %0 = load i64, ptr %size.addr, align 8, !dbg !2915
  %tobool = icmp ne i64 %0, 0, !dbg !2915
  br i1 %tobool, label %if.end, label %if.then, !dbg !2917

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2918
  br label %return, !dbg !2918

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2919
  %cmp = icmp ule i64 %1, 8, !dbg !2921
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2922

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2923
  br label %return, !dbg !2923

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2924
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2926
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2927

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2928
  %cmp4 = icmp ule i64 %3, 96, !dbg !2929
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2930

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2931
  br label %return, !dbg !2931

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2932
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2934
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2935

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2936
  %cmp9 = icmp ule i64 %5, 192, !dbg !2937
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2938

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2939
  br label %return, !dbg !2939

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2940
  %cmp12 = icmp ule i64 %6, 8, !dbg !2942
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2943

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2944
  br label %return, !dbg !2944

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2945
  %cmp15 = icmp ule i64 %7, 16, !dbg !2947
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2948

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2949
  br label %return, !dbg !2949

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2950
  %cmp18 = icmp ule i64 %8, 32, !dbg !2952
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2953

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2954
  br label %return, !dbg !2954

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2955
  %cmp21 = icmp ule i64 %9, 64, !dbg !2957
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2958

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2959
  br label %return, !dbg !2959

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2960
  %cmp24 = icmp ule i64 %10, 128, !dbg !2962
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2963

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2964
  br label %return, !dbg !2964

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2965
  %cmp27 = icmp ule i64 %11, 256, !dbg !2967
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2968

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2969
  br label %return, !dbg !2969

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2970
  %cmp30 = icmp ule i64 %12, 512, !dbg !2972
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2973

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2974
  br label %return, !dbg !2974

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2975
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2977
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2978

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2979
  br label %return, !dbg !2979

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2980
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2982
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2983

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2984
  br label %return, !dbg !2984

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2985
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2987
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2988

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2989
  br label %return, !dbg !2989

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2990
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2992
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2993

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2994
  br label %return, !dbg !2994

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2995
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2997
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2998

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2999
  br label %return, !dbg !2999

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !3000
  %cmp48 = icmp ule i64 %18, 32768, !dbg !3002
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !3003

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !3004
  br label %return, !dbg !3004

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !3005
  %cmp51 = icmp ule i64 %19, 65536, !dbg !3007
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !3008

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !3009
  br label %return, !dbg !3009

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !3010
  %cmp54 = icmp ule i64 %20, 131072, !dbg !3012
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !3013

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !3014
  br label %return, !dbg !3014

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !3015
  %cmp57 = icmp ule i64 %21, 262144, !dbg !3017
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !3018

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !3019
  br label %return, !dbg !3019

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !3020
  %cmp60 = icmp ule i64 %22, 524288, !dbg !3022
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !3023

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !3024
  br label %return, !dbg !3024

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !3025
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !3027
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !3028

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !3029
  br label %return, !dbg !3029

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !3030
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !3032
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !3033

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !3034
  br label %return, !dbg !3034

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !3035, !range !3037, !noundef !366
  %tobool69 = trunc i8 %25 to i1, !dbg !3035
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !3038

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !3039

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_191() #17, !dbg !3040, !srcloc !3043
  unreachable, !dbg !3040

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !3044

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !3045

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !3046

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !3048

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !3046

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.30, i32 480, i32 0, i64 12) #13, !dbg !3050, !srcloc !3052
  br label %do.end75, !dbg !3050

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !3046

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !3053
  br label %return, !dbg !3053

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !3054
  ret i32 %26, !dbg !3054
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !3055 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #6 align 16 !dbg !3061 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3065, metadata !DIExpression()), !dbg !3067
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !3066, metadata !DIExpression()), !dbg !3068
  %0 = load i32, ptr %flags.addr, align 4, !dbg !3069
  %and = and i32 %0, 17, !dbg !3069
  %cmp = icmp eq i32 %and, 0, !dbg !3069
  %lnot = xor i1 %cmp, true, !dbg !3069
  %lnot1 = xor i1 %lnot, true, !dbg !3069
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3069
  %conv = sext i32 %lnot.ext to i64, !dbg !3069
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3069
  %tobool = icmp ne i64 %expval, 0, !dbg !3069
  br i1 %tobool, label %if.then, label %if.end, !dbg !3071

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3072
  br label %return, !dbg !3072

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !3073
  %and2 = and i32 %1, 1, !dbg !3075
  %tobool3 = icmp ne i32 %and2, 0, !dbg !3075
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !3076

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !3077
  br label %return, !dbg !3077

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !3078
  br label %return, !dbg !3078

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !3080
  ret i32 %2, !dbg !3080
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3081 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !3082 dso_local void @__compiletime_assert_191() #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3083 dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpuidle_sysfs_release(ptr noundef %kobj) #0 align 16 !dbg !3088 {
entry:
  %kobj.addr = alloca ptr, align 8
  %kdev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !3090, metadata !DIExpression()), !dbg !3094
  call void @llvm.lifetime.start.p0(i64 8, ptr %kdev) #13, !dbg !3095
  call void @llvm.dbg.declare(metadata ptr %kdev, metadata !3091, metadata !DIExpression()), !dbg !3096
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !3097
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3092, metadata !DIExpression()), !dbg !3097
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !3097
  store ptr %0, ptr %__mptr, align 8, !dbg !3097
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3097
  %add.ptr = getelementptr i8, ptr %1, i64 -40, !dbg !3097
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3097
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !3098
  %2 = load ptr, ptr %tmp, align 8, !dbg !3097
  store ptr %2, ptr %kdev, align 8, !dbg !3096
  %3 = load ptr, ptr %kdev, align 8, !dbg !3099
  %kobj_unregister = getelementptr inbounds %struct.cpuidle_device_kobj, ptr %3, i32 0, i32 1, !dbg !3100
  call void @complete(ptr noundef %kobj_unregister) #14, !dbg !3101
  call void @llvm.lifetime.end.p0(i64 8, ptr %kdev) #13, !dbg !3102
  ret void, !dbg !3102
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cpuidle_show(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !3103 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %dev = alloca ptr, align 8
  %cattr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !3105, metadata !DIExpression()), !dbg !3113
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3106, metadata !DIExpression()), !dbg !3114
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3107, metadata !DIExpression()), !dbg !3115
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !3116
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3108, metadata !DIExpression()), !dbg !3117
  store i32 -5, ptr %ret, align 4, !dbg !3117
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #13, !dbg !3118
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !3109, metadata !DIExpression()), !dbg !3119
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !3120
  %call = call ptr @to_cpuidle_device(ptr noundef %0) #14, !dbg !3121
  store ptr %call, ptr %dev, align 8, !dbg !3119
  call void @llvm.lifetime.start.p0(i64 8, ptr %cattr) #13, !dbg !3122
  call void @llvm.dbg.declare(metadata ptr %cattr, metadata !3110, metadata !DIExpression()), !dbg !3123
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !3124
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3111, metadata !DIExpression()), !dbg !3124
  %1 = load ptr, ptr %attr.addr, align 8, !dbg !3124
  store ptr %1, ptr %__mptr, align 8, !dbg !3124
  %2 = load ptr, ptr %__mptr, align 8, !dbg !3124
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !3124
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3124
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !3125
  %3 = load ptr, ptr %tmp, align 8, !dbg !3124
  store ptr %3, ptr %cattr, align 8, !dbg !3123
  %4 = load ptr, ptr %cattr, align 8, !dbg !3126
  %show = getelementptr inbounds %struct.cpuidle_attr, ptr %4, i32 0, i32 1, !dbg !3128
  %5 = load ptr, ptr %show, align 8, !dbg !3128
  %tobool = icmp ne ptr %5, null, !dbg !3126
  br i1 %tobool, label %if.then, label %if.end, !dbg !3129

if.then:                                          ; preds = %entry
  call void @mutex_lock(ptr noundef @cpuidle_lock) #14, !dbg !3130
  %6 = load ptr, ptr %cattr, align 8, !dbg !3132
  %show1 = getelementptr inbounds %struct.cpuidle_attr, ptr %6, i32 0, i32 1, !dbg !3133
  %7 = load ptr, ptr %show1, align 8, !dbg !3133
  %8 = load ptr, ptr %dev, align 8, !dbg !3134
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !3135
  %call2 = call i64 %7(ptr noundef %8, ptr noundef %9) #14, !dbg !3132
  %conv = trunc i64 %call2 to i32, !dbg !3132
  store i32 %conv, ptr %ret, align 4, !dbg !3136
  call void @mutex_unlock(ptr noundef @cpuidle_lock) #14, !dbg !3137
  br label %if.end, !dbg !3138

if.end:                                           ; preds = %if.then, %entry
  %10 = load i32, ptr %ret, align 4, !dbg !3139
  %conv3 = sext i32 %10 to i64, !dbg !3139
  call void @llvm.lifetime.end.p0(i64 8, ptr %cattr) #13, !dbg !3140
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #13, !dbg !3140
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !3140
  ret i64 %conv3, !dbg !3141
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cpuidle_store(ptr noundef %kobj, ptr noundef %attr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !3142 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %dev = alloca ptr, align 8
  %cattr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !3144, metadata !DIExpression()), !dbg !3153
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3145, metadata !DIExpression()), !dbg !3154
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3146, metadata !DIExpression()), !dbg !3155
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !3147, metadata !DIExpression()), !dbg !3156
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !3157
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3148, metadata !DIExpression()), !dbg !3158
  store i32 -5, ptr %ret, align 4, !dbg !3158
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #13, !dbg !3159
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !3149, metadata !DIExpression()), !dbg !3160
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !3161
  %call = call ptr @to_cpuidle_device(ptr noundef %0) #14, !dbg !3162
  store ptr %call, ptr %dev, align 8, !dbg !3160
  call void @llvm.lifetime.start.p0(i64 8, ptr %cattr) #13, !dbg !3163
  call void @llvm.dbg.declare(metadata ptr %cattr, metadata !3150, metadata !DIExpression()), !dbg !3164
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !3165
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3151, metadata !DIExpression()), !dbg !3165
  %1 = load ptr, ptr %attr.addr, align 8, !dbg !3165
  store ptr %1, ptr %__mptr, align 8, !dbg !3165
  %2 = load ptr, ptr %__mptr, align 8, !dbg !3165
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !3165
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3165
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !3166
  %3 = load ptr, ptr %tmp, align 8, !dbg !3165
  store ptr %3, ptr %cattr, align 8, !dbg !3164
  %4 = load ptr, ptr %cattr, align 8, !dbg !3167
  %store = getelementptr inbounds %struct.cpuidle_attr, ptr %4, i32 0, i32 2, !dbg !3169
  %5 = load ptr, ptr %store, align 8, !dbg !3169
  %tobool = icmp ne ptr %5, null, !dbg !3167
  br i1 %tobool, label %if.then, label %if.end, !dbg !3170

if.then:                                          ; preds = %entry
  call void @mutex_lock(ptr noundef @cpuidle_lock) #14, !dbg !3171
  %6 = load ptr, ptr %cattr, align 8, !dbg !3173
  %store1 = getelementptr inbounds %struct.cpuidle_attr, ptr %6, i32 0, i32 2, !dbg !3174
  %7 = load ptr, ptr %store1, align 8, !dbg !3174
  %8 = load ptr, ptr %dev, align 8, !dbg !3175
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !3176
  %10 = load i64, ptr %count.addr, align 8, !dbg !3177
  %call2 = call i64 %7(ptr noundef %8, ptr noundef %9, i64 noundef %10) #14, !dbg !3173
  %conv = trunc i64 %call2 to i32, !dbg !3173
  store i32 %conv, ptr %ret, align 4, !dbg !3178
  call void @mutex_unlock(ptr noundef @cpuidle_lock) #14, !dbg !3179
  br label %if.end, !dbg !3180

if.end:                                           ; preds = %if.then, %entry
  %11 = load i32, ptr %ret, align 4, !dbg !3181
  %conv3 = sext i32 %11 to i64, !dbg !3181
  call void @llvm.lifetime.end.p0(i64 8, ptr %cattr) #13, !dbg !3182
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #13, !dbg !3182
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !3182
  ret i64 %conv3, !dbg !3183
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_cpuidle_device(ptr noundef %kobj) #4 align 16 !dbg !3184 {
entry:
  %kobj.addr = alloca ptr, align 8
  %kdev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !3188, metadata !DIExpression()), !dbg !3192
  call void @llvm.lifetime.start.p0(i64 8, ptr %kdev) #13, !dbg !3193
  call void @llvm.dbg.declare(metadata ptr %kdev, metadata !3189, metadata !DIExpression()), !dbg !3194
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !3195
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3190, metadata !DIExpression()), !dbg !3195
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !3195
  store ptr %0, ptr %__mptr, align 8, !dbg !3195
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3195
  %add.ptr = getelementptr i8, ptr %1, i64 -40, !dbg !3195
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3195
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !3196
  %2 = load ptr, ptr %tmp, align 8, !dbg !3195
  store ptr %2, ptr %kdev, align 8, !dbg !3194
  %3 = load ptr, ptr %kdev, align 8, !dbg !3197
  %dev = getelementptr inbounds %struct.cpuidle_device_kobj, ptr %3, i32 0, i32 0, !dbg !3198
  %4 = load ptr, ptr %dev, align 8, !dbg !3198
  call void @llvm.lifetime.end.p0(i64 8, ptr %kdev) #13, !dbg !3199
  ret ptr %4, !dbg !3200
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { noredzone allocsize(0) }
attributes #16 = { noredzone allocsize(2) }
attributes #17 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904}
!llvm.ident = !{!1905}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "cpuidle_attr_group", scope: !2, file: !3, line: 115, type: !285, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/cpuidle/.sysfs.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/cpuidle/sysfs\22 -D KBUILD_BASENAME=\22sysfs\22 -D KBUILD_MODNAME=\22sysfs\22 -D __KBUILD_MODNAME=kmod_sysfs -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/cpuidle/sysfs.ll drivers/cpuidle/sysfs.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !104, globals: !1294, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/cpuidle/sysfs.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9366e0bd45685298a6b6c94c9398affa")
!4 = !{!5, !12, !19, !25, !32, !37, !45, !53, !62, !67, !72, !78, !89, !94}
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
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !90, line: 10, baseType: !7, size: 32, elements: !91)
!90 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!91 = !{!92, !93}
!92 = !DIEnumerator(name: "false", value: 0)
!93 = !DIEnumerator(name: "true", value: 1)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !95, line: 364, baseType: !7, size: 32, elements: !96)
!95 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!96 = !{!97, !98, !99, !100, !101, !102, !103}
!97 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!98 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!99 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!100 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!101 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!102 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!103 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!104 = !{!105, !106, !108, !109, !263, !1219, !1270, !1233, !1282}
!105 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !107, line: 154, baseType: !7)
!107 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_governor", file: !111, line: 288, size: 576, elements: !112)
!111 = !DIFile(filename: "./include/linux/cpuidle.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e4e37910f6e1ee8771b4e96ef73e2ef7")
!112 = !{!113, !118, !124, !125, !1257, !1261, !1266}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !110, file: !111, line: 289, baseType: !114, size: 128)
!114 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 128, elements: !116)
!115 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!116 = !{!117}
!117 = !DISubrange(count: 16)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "governor_list", scope: !110, file: !111, line: 290, baseType: !119, size: 128, offset: 128)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !107, line: 190, size: 128, elements: !120)
!120 = !{!121, !123}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !119, file: !107, line: 191, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !119, file: !107, line: 191, baseType: !122, size: 64, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "rating", scope: !110, file: !111, line: 291, baseType: !7, size: 32, offset: 256)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !110, file: !111, line: 293, baseType: !126, size: 64, offset: 320)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{!46, !129, !1189}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_driver", file: !111, line: 152, size: 8704, elements: !131)
!131 = !{!132, !135, !1169, !1170, !1245, !1246, !1247, !1256}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !130, file: !111, line: 153, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !115)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !130, file: !111, line: 154, baseType: !136, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !138)
!138 = !{!139, !140, !141, !145, !822, !848, !849, !850, !851, !855, !858, !859, !860, !913, !914, !915, !916, !917, !918, !919, !920, !923, !927, !947, !965, !966, !967, !968, !977, !1001, !1002, !1005, !1008, !1009, !1010, !1011, !1012, !1013, !1014, !1019, !1020, !1127, !1135, !1136, !1137, !1139, !1143, !1144, !1148, !1149, !1150, !1151, !1153, !1154, !1155, !1162, !1163, !1164, !1168}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !137, file: !13, line: 403, baseType: !12, size: 32)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !137, file: !13, line: 406, baseType: !119, size: 128, offset: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !137, file: !13, line: 409, baseType: !142, size: 448, offset: 192)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 448, elements: !143)
!143 = !{!144}
!144 = !DISubrange(count: 56)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !137, file: !13, line: 417, baseType: !146, size: 768, offset: 640)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !147)
!147 = !{!148, !805, !806, !807, !810}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !146, file: !13, line: 46, baseType: !149, size: 512)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !79, line: 64, size: 512, elements: !150)
!150 = !{!151, !152, !153, !155, !244, !676, !790, !800, !801, !802, !803, !804}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !149, file: !79, line: 65, baseType: !133, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !149, file: !79, line: 66, baseType: !119, size: 128, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !149, file: !79, line: 67, baseType: !154, size: 64, offset: 192)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !149, file: !79, line: 68, baseType: !156, size: 64, offset: 256)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !79, line: 168, size: 768, elements: !158)
!158 = !{!159, !160, !203, !204}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !157, file: !79, line: 169, baseType: !119, size: 128)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !157, file: !79, line: 170, baseType: !161, size: 32, offset: 128)
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !162, line: 29, baseType: !163)
!162 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !162, line: 17, size: 32, elements: !164)
!164 = !{!165}
!165 = !DIDerivedType(tag: DW_TAG_member, scope: !163, file: !162, line: 18, baseType: !166, size: 32)
!166 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !163, file: !162, line: 18, size: 32, elements: !167)
!167 = !{!168}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !166, file: !162, line: 19, baseType: !169, size: 32)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !170, line: 14, size: 32, elements: !171)
!170 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!171 = !{!172}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !169, file: !170, line: 15, baseType: !173, size: 32)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !174, line: 44, baseType: !175)
!174 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !174, line: 14, size: 32, elements: !176)
!176 = !{!177}
!177 = !DIDerivedType(tag: DW_TAG_member, scope: !175, file: !174, line: 15, baseType: !178, size: 32)
!178 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !175, file: !174, line: 15, size: 32, elements: !179)
!179 = !{!180, !185, !195}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !178, file: !174, line: 16, baseType: !181, size: 32)
!181 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !107, line: 174, baseType: !182)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !107, line: 172, size: 32, elements: !183)
!183 = !{!184}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !182, file: !107, line: 173, baseType: !46, size: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, scope: !178, file: !174, line: 24, baseType: !186, size: 16)
!186 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !178, file: !174, line: 24, size: 16, elements: !187)
!187 = !{!188, !194}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !186, file: !174, line: 25, baseType: !189, size: 8)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !190, line: 17, baseType: !191)
!190 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !192, line: 21, baseType: !193)
!192 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!193 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !186, file: !174, line: 26, baseType: !189, size: 8, offset: 8)
!195 = !DIDerivedType(tag: DW_TAG_member, scope: !178, file: !174, line: 28, baseType: !196, size: 32)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !178, file: !174, line: 28, size: 32, elements: !197)
!197 = !{!198, !202}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !196, file: !174, line: 29, baseType: !199, size: 16)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !190, line: 19, baseType: !200)
!200 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !192, line: 24, baseType: !201)
!201 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !196, file: !174, line: 30, baseType: !199, size: 16, offset: 16)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !157, file: !79, line: 171, baseType: !149, size: 512, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !157, file: !79, line: 172, baseType: !205, size: 64, offset: 704)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !79, line: 133, size: 192, elements: !208)
!208 = !{!209, !216, !221}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !207, file: !79, line: 134, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!46, !214}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !207, file: !79, line: 135, baseType: !217, size: 64, offset: 64)
!217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!133, !214}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !207, file: !79, line: 136, baseType: !222, size: 64, offset: 128)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DISubroutineType(types: !225)
!225 = !{!46, !214, !226}
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !79, line: 125, size: 20736, elements: !228)
!228 = !{!229, !234, !238, !239, !243}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !227, file: !79, line: 126, baseType: !230, size: 192)
!230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 192, elements: !232)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!232 = !{!233}
!233 = !DISubrange(count: 3)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !227, file: !79, line: 127, baseType: !235, size: 4096, offset: 192)
!235 = !DICompositeType(tag: DW_TAG_array_type, baseType: !231, size: 4096, elements: !236)
!236 = !{!237}
!237 = !DISubrange(count: 64)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !227, file: !79, line: 128, baseType: !46, size: 32, offset: 4288)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !227, file: !79, line: 129, baseType: !240, size: 16384, offset: 4320)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 16384, elements: !241)
!241 = !{!242}
!242 = !DISubrange(count: 2048)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !227, file: !79, line: 130, baseType: !46, size: 32, offset: 20704)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !149, file: !79, line: 69, baseType: !245, size: 64, offset: 320)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !247)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !79, line: 116, size: 384, elements: !248)
!248 = !{!249, !253, !281, !623, !654, !658}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !247, file: !79, line: 117, baseType: !250, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{null, !154}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !247, file: !79, line: 118, baseType: !254, size: 64, offset: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !257, line: 254, size: 128, elements: !258)
!257 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!258 = !{!259, !274}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !256, file: !257, line: 255, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!263, !154, !268, !231}
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !107, line: 66, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !265, line: 73, baseType: !266)
!265 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!266 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !265, line: 15, baseType: !267)
!267 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !257, line: 30, size: 128, elements: !270)
!270 = !{!271, !272}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !269, file: !257, line: 31, baseType: !133, size: 64)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !269, file: !257, line: 32, baseType: !273, size: 16, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !107, line: 24, baseType: !201)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !256, file: !257, line: 256, baseType: !275, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!263, !154, !268, !133, !278}
!278 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !107, line: 61, baseType: !279)
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !265, line: 72, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !265, line: 16, baseType: !105)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !247, file: !79, line: 119, baseType: !282, size: 64, offset: 128)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !257, line: 84, size: 320, elements: !286)
!286 = !{!287, !288, !292, !619, !621}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !285, file: !257, line: 85, baseType: !133, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !285, file: !257, line: 86, baseType: !289, size: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!273, !154, !268, !46}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !285, file: !257, line: 88, baseType: !293, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!273, !154, !296, !46}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !257, line: 175, size: 512, elements: !298)
!298 = !{!299, !300, !301, !302, !309, !319, !320}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !297, file: !257, line: 176, baseType: !269, size: 128)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !297, file: !257, line: 177, baseType: !278, size: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !297, file: !257, line: 178, baseType: !108, size: 64, offset: 192)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !297, file: !257, line: 179, baseType: !303, size: 64, offset: 256)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DISubroutineType(types: !305)
!305 = !{!306}
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !308, line: 32, flags: DIFlagFwdDecl)
!308 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!309 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !297, file: !257, line: 180, baseType: !310, size: 64, offset: 320)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!263, !313, !154, !296, !231, !316, !278}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !315, line: 537, flags: DIFlagFwdDecl)
!315 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !107, line: 52, baseType: !317)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !265, line: 88, baseType: !318)
!318 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !297, file: !257, line: 182, baseType: !310, size: 64, offset: 384)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !297, file: !257, line: 184, baseType: !321, size: 64, offset: 448)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!46, !313, !154, !296, !324}
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !308, line: 625, size: 1344, elements: !326)
!326 = !{!327, !344, !567, !573, !580, !581, !586, !589, !601, !602, !605, !609, !610, !611, !612, !613, !617}
!327 = !DIDerivedType(tag: DW_TAG_member, scope: !325, file: !308, line: 628, baseType: !328, size: 128)
!328 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !325, file: !308, line: 628, size: 128, elements: !329)
!329 = !{!330, !335}
!330 = !DIDerivedType(tag: DW_TAG_member, scope: !328, file: !308, line: 629, baseType: !331, size: 128)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !328, file: !308, line: 629, size: 128, elements: !332)
!332 = !{!333, !334}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !331, file: !308, line: 631, baseType: !105, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !331, file: !308, line: 632, baseType: !105, size: 64, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !328, file: !308, line: 635, baseType: !336, size: 128, align: 64)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !107, line: 232, size: 128, align: 64, elements: !337)
!337 = !{!338, !340}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !336, file: !107, line: 233, baseType: !339, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !336, file: !107, line: 234, baseType: !341, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{null, !339}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !325, file: !308, line: 639, baseType: !345, size: 64, offset: 128)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !308, line: 733, size: 10240, elements: !347)
!347 = !{!348, !563}
!348 = !DIDerivedType(tag: DW_TAG_member, scope: !346, file: !308, line: 734, baseType: !349, size: 10240)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !346, file: !308, line: 734, size: 10240, elements: !350)
!350 = !{!351, !355, !369, !373, !374, !375, !376, !377, !378, !386, !387, !388, !397, !398, !407, !408, !409, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !456, !470, !473, !528, !529, !530, !533, !537, !538, !541, !542, !543, !550, !551}
!351 = !DIDerivedType(tag: DW_TAG_member, scope: !349, file: !308, line: 739, baseType: !352, size: 512, align: 512)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !349, file: !308, line: 739, size: 512, align: 512, elements: !353)
!353 = !{!354}
!354 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !352, file: !308, line: 747, baseType: !181, size: 32)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !349, file: !308, line: 750, baseType: !356, size: 128, offset: 512)
!356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !357, line: 218, size: 128, elements: !358)
!357 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!358 = !{!359, !367, !368}
!359 = !DIDerivedType(tag: DW_TAG_member, scope: !356, file: !357, line: 219, baseType: !360, size: 32)
!360 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !356, file: !357, line: 219, size: 32, elements: !361)
!361 = !{!362, !363}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !360, file: !357, line: 220, baseType: !161, size: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !360, file: !357, line: 221, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !357, line: 197, baseType: !365)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !357, line: 197, elements: !366)
!366 = !{}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !356, file: !357, line: 223, baseType: !7, size: 32, offset: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !356, file: !357, line: 224, baseType: !108, size: 64, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !349, file: !308, line: 752, baseType: !370, size: 64, offset: 640)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DISubroutineType(types: !372)
!372 = !{!105, !313, !105, !105, !105, !105}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !349, file: !308, line: 756, baseType: !105, size: 64, offset: 704)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !349, file: !308, line: 757, baseType: !105, size: 64, offset: 768)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !349, file: !308, line: 760, baseType: !105, size: 64, offset: 832)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !349, file: !308, line: 761, baseType: !105, size: 64, offset: 896)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !349, file: !308, line: 763, baseType: !105, size: 64, offset: 960)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !349, file: !308, line: 764, baseType: !379, size: 64, offset: 1024)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !315, line: 299, baseType: !381)
!381 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !315, line: 299, size: 64, elements: !382)
!382 = !{!383}
!383 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !381, file: !315, line: 299, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !385, line: 18, baseType: !105)
!385 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!386 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !349, file: !308, line: 773, baseType: !181, size: 32, offset: 1088)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !349, file: !308, line: 785, baseType: !181, size: 32, offset: 1120)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !349, file: !308, line: 795, baseType: !389, size: 64, offset: 1152)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !308, line: 726, size: 128, elements: !391)
!391 = !{!392, !396}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !390, file: !308, line: 727, baseType: !393, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !190, line: 23, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !192, line: 31, baseType: !395)
!395 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !390, file: !308, line: 728, baseType: !46, size: 32, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !349, file: !308, line: 801, baseType: !105, size: 64, offset: 1216)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !349, file: !308, line: 804, baseType: !399, size: 64, offset: 1280)
!399 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !400, line: 13, baseType: !401)
!400 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !107, line: 181, baseType: !402)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !107, line: 179, size: 64, elements: !403)
!403 = !{!404}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !402, file: !107, line: 180, baseType: !405, size: 64)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !190, line: 22, baseType: !406)
!406 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !192, line: 30, baseType: !318)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !349, file: !308, line: 806, baseType: !46, size: 32, offset: 1344)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !349, file: !308, line: 808, baseType: !161, size: 32, offset: 1376)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !349, file: !308, line: 823, baseType: !410, size: 320, offset: 1408)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !411, line: 48, size: 320, elements: !412)
!411 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!412 = !{!413, !414, !415, !420, !422}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !410, file: !411, line: 49, baseType: !399, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !410, file: !411, line: 55, baseType: !399, size: 64, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !410, file: !411, line: 57, baseType: !416, size: 32, offset: 128)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !417, line: 15, size: 32, elements: !418)
!417 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!418 = !{!419}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !416, file: !417, line: 20, baseType: !181, size: 32)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !410, file: !411, line: 59, baseType: !421, size: 32, offset: 160)
!421 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !170, line: 23, baseType: !169)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !410, file: !411, line: 60, baseType: !119, size: 128, offset: 192)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !349, file: !308, line: 825, baseType: !119, size: 128, offset: 1728)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !349, file: !308, line: 845, baseType: !46, size: 32, offset: 1856)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !349, file: !308, line: 849, baseType: !105, size: 64, offset: 1920)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !349, file: !308, line: 850, baseType: !105, size: 64, offset: 1984)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !349, file: !308, line: 852, baseType: !105, size: 64, offset: 2048)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !349, file: !308, line: 853, baseType: !105, size: 64, offset: 2112)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !349, file: !308, line: 854, baseType: !401, size: 64, offset: 2176)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !349, file: !308, line: 855, baseType: !105, size: 64, offset: 2240)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !349, file: !308, line: 856, baseType: !105, size: 64, offset: 2304)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !349, file: !308, line: 857, baseType: !105, size: 64, offset: 2368)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !349, file: !308, line: 858, baseType: !105, size: 64, offset: 2432)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !349, file: !308, line: 865, baseType: !435, size: 32, offset: 2496)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !436, line: 69, baseType: !437)
!436 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !436, line: 64, size: 32, elements: !438)
!438 = !{!439}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !437, file: !436, line: 65, baseType: !7, size: 32)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !349, file: !308, line: 867, baseType: !161, size: 32, offset: 2528)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !349, file: !308, line: 869, baseType: !105, size: 64, offset: 2560)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !349, file: !308, line: 869, baseType: !105, size: 64, offset: 2624)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !349, file: !308, line: 869, baseType: !105, size: 64, offset: 2688)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !349, file: !308, line: 869, baseType: !105, size: 64, offset: 2752)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !349, file: !308, line: 870, baseType: !105, size: 64, offset: 2816)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !349, file: !308, line: 870, baseType: !105, size: 64, offset: 2880)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !349, file: !308, line: 870, baseType: !105, size: 64, offset: 2944)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !349, file: !308, line: 871, baseType: !105, size: 64, offset: 3008)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !349, file: !308, line: 871, baseType: !105, size: 64, offset: 3072)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !349, file: !308, line: 871, baseType: !105, size: 64, offset: 3136)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !349, file: !308, line: 871, baseType: !105, size: 64, offset: 3200)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !349, file: !308, line: 873, baseType: !453, size: 3328, offset: 3264)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 3328, elements: !454)
!454 = !{!455}
!455 = !DISubrange(count: 52)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !349, file: !308, line: 875, baseType: !457, size: 1280, offset: 6592)
!457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 1280, elements: !468)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !459, line: 22, size: 320, elements: !460)
!459 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!460 = !{!461, !462, !463, !464}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !458, file: !459, line: 23, baseType: !421, size: 32)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !458, file: !459, line: 24, baseType: !405, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !458, file: !459, line: 26, baseType: !119, size: 128, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !458, file: !459, line: 28, baseType: !465, size: 64, offset: 256)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !190, line: 20, baseType: !467)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !192, line: 26, baseType: !46)
!468 = !{!469}
!469 = !DISubrange(count: 4)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !349, file: !308, line: 877, baseType: !471, size: 64, offset: 7872)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !308, line: 877, flags: DIFlagFwdDecl)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !349, file: !308, line: 880, baseType: !474, size: 1088, offset: 7936)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !475, line: 72, baseType: !476)
!475 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !475, line: 23, size: 1088, elements: !477)
!477 = !{!478, !479, !480, !481, !482, !485, !486, !494, !495, !522, !523, !524}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !476, file: !475, line: 28, baseType: !393, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !476, file: !475, line: 38, baseType: !401, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !476, file: !475, line: 40, baseType: !105, size: 64, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !476, file: !475, line: 43, baseType: !410, size: 320, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !476, file: !475, line: 44, baseType: !483, size: 64, offset: 512)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !475, line: 44, flags: DIFlagFwdDecl)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !476, file: !475, line: 48, baseType: !105, size: 64, offset: 576)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !476, file: !475, line: 59, baseType: !487, size: 256, offset: 640)
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !488, line: 66, size: 256, elements: !489)
!488 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!489 = !{!490, !491, !492, !493}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !487, file: !488, line: 67, baseType: !399, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !487, file: !488, line: 68, baseType: !421, size: 32, offset: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !487, file: !488, line: 70, baseType: !416, size: 32, offset: 96)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !487, file: !488, line: 72, baseType: !119, size: 128, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !476, file: !475, line: 60, baseType: !108, size: 64, offset: 896)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !476, file: !475, line: 61, baseType: !496, size: 64, offset: 960)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !498)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !499, line: 13, size: 1216, elements: !500)
!499 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!500 = !{!501, !502, !503, !504, !505, !506, !507, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !498, file: !499, line: 14, baseType: !108, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !498, file: !499, line: 15, baseType: !105, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !498, file: !499, line: 17, baseType: !105, size: 64, offset: 128)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !498, file: !499, line: 17, baseType: !105, size: 64, offset: 192)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !498, file: !499, line: 18, baseType: !105, size: 64, offset: 256)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !498, file: !499, line: 18, baseType: !105, size: 64, offset: 320)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !498, file: !499, line: 19, baseType: !508, size: 64, offset: 384)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !498, file: !499, line: 21, baseType: !267, size: 64, offset: 448)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !498, file: !499, line: 23, baseType: !267, size: 64, offset: 512)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !498, file: !499, line: 24, baseType: !267, size: 64, offset: 576)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !498, file: !499, line: 25, baseType: !267, size: 64, offset: 640)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !498, file: !499, line: 26, baseType: !267, size: 64, offset: 704)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !498, file: !499, line: 27, baseType: !267, size: 64, offset: 768)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !498, file: !499, line: 28, baseType: !267, size: 64, offset: 832)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !498, file: !499, line: 29, baseType: !267, size: 64, offset: 896)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !498, file: !499, line: 30, baseType: !267, size: 64, offset: 960)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !498, file: !499, line: 31, baseType: !267, size: 64, offset: 1024)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !498, file: !499, line: 32, baseType: !267, size: 64, offset: 1088)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !498, file: !499, line: 33, baseType: !267, size: 64, offset: 1152)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !476, file: !475, line: 63, baseType: !181, size: 32, offset: 1024)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !476, file: !475, line: 69, baseType: !199, size: 16, offset: 1056)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !476, file: !475, line: 70, baseType: !525, size: 16, offset: 1072)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !190, line: 18, baseType: !526)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !192, line: 23, baseType: !527)
!527 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !349, file: !308, line: 882, baseType: !105, size: 64, offset: 9024)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !349, file: !308, line: 885, baseType: !161, size: 32, offset: 9088)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !349, file: !308, line: 886, baseType: !531, size: 64, offset: 9152)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !308, line: 732, flags: DIFlagFwdDecl)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !349, file: !308, line: 901, baseType: !534, size: 64, offset: 9216)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !536, line: 18, flags: DIFlagFwdDecl)
!536 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!537 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !349, file: !308, line: 904, baseType: !313, size: 64, offset: 9280)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !349, file: !308, line: 906, baseType: !539, size: 64, offset: 9344)
!539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!540 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !308, line: 906, flags: DIFlagFwdDecl)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !349, file: !308, line: 930, baseType: !181, size: 32, offset: 9408)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !349, file: !308, line: 933, baseType: !181, size: 32, offset: 9440)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !349, file: !308, line: 935, baseType: !544, size: 64, offset: 9472)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !545, line: 103, size: 64, elements: !546)
!545 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!546 = !{!547}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !544, file: !545, line: 104, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !545, line: 101, flags: DIFlagFwdDecl)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !349, file: !308, line: 940, baseType: !399, size: 64, offset: 9536)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !349, file: !308, line: 942, baseType: !552, size: 256, offset: 9600)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !553, line: 98, size: 256, elements: !554)
!553 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!554 = !{!555, !556, !557}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !552, file: !553, line: 99, baseType: !399, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !552, file: !553, line: 100, baseType: !119, size: 128, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !552, file: !553, line: 101, baseType: !558, size: 64, offset: 192)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !553, line: 21, baseType: !559)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DISubroutineType(types: !561)
!561 = !{null, !562}
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !346, file: !308, line: 986, baseType: !564, offset: 10240)
!564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, elements: !565)
!565 = !{!566}
!566 = !DISubrange(count: -1)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !325, file: !308, line: 640, baseType: !568, size: 64, offset: 192)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !315, line: 297, baseType: !569)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !315, line: 297, size: 64, elements: !570)
!570 = !{!571}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !569, file: !315, line: 297, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !385, line: 19, baseType: !105)
!573 = !DIDerivedType(tag: DW_TAG_member, scope: !325, file: !308, line: 646, baseType: !574, size: 64, offset: 256)
!574 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !325, file: !308, line: 646, size: 64, elements: !575)
!575 = !{!576, !579}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !574, file: !308, line: 647, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !578)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !308, line: 542, baseType: !105)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !574, file: !308, line: 648, baseType: !578, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !325, file: !308, line: 666, baseType: !46, size: 32, offset: 320)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !325, file: !308, line: 667, baseType: !582, size: 64, offset: 384)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !308, line: 579, size: 320, elements: !584)
!584 = !{!585}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !583, file: !308, line: 580, baseType: !410, size: 320)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !325, file: !308, line: 670, baseType: !587, size: 8, offset: 448)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !107, line: 35, baseType: !588)
!588 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !325, file: !308, line: 681, baseType: !590, size: 256, offset: 512)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !325, file: !308, line: 678, size: 256, elements: !591)
!591 = !{!592, !600}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !590, file: !308, line: 679, baseType: !593, size: 192, align: 64)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !594, line: 5, size: 192, align: 64, elements: !595)
!594 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!595 = !{!596, !597, !599}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !593, file: !594, line: 6, baseType: !105, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !593, file: !594, line: 7, baseType: !598, size: 64, offset: 64)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !593, file: !594, line: 8, baseType: !598, size: 64, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !590, file: !308, line: 680, baseType: !105, size: 64, offset: 192)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !325, file: !308, line: 689, baseType: !119, size: 128, offset: 768)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !325, file: !308, line: 691, baseType: !603, size: 64, offset: 896)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !308, line: 691, flags: DIFlagFwdDecl)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !325, file: !308, line: 694, baseType: !606, size: 64, offset: 960)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !608)
!608 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !308, line: 694, flags: DIFlagFwdDecl)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !325, file: !308, line: 697, baseType: !105, size: 64, offset: 1024)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !325, file: !308, line: 699, baseType: !313, size: 64, offset: 1088)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !325, file: !308, line: 700, baseType: !108, size: 64, offset: 1152)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !325, file: !308, line: 711, baseType: !399, size: 64, offset: 1216)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !325, file: !308, line: 717, baseType: !614, size: 64, offset: 1280)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !615, size: 64)
!615 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !616, line: 54, flags: DIFlagFwdDecl)
!616 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!617 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !325, file: !308, line: 722, baseType: !618, offset: 1344)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !308, line: 570, elements: !366)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !285, file: !257, line: 90, baseType: !620, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !285, file: !257, line: 91, baseType: !622, size: 64, offset: 256)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !247, file: !79, line: 120, baseType: !624, size: 64, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DISubroutineType(types: !626)
!626 = !{!627, !214}
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !629)
!629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !630)
!630 = !{!631, !632, !636, !640, !646, !650}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !629, file: !6, line: 40, baseType: !5, size: 32)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !629, file: !6, line: 41, baseType: !633, size: 64, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!587}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !629, file: !6, line: 42, baseType: !637, size: 64, offset: 128)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!108}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !629, file: !6, line: 43, baseType: !641, size: 64, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!508, !644}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !629, file: !6, line: 44, baseType: !647, size: 64, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!508}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !629, file: !6, line: 45, baseType: !651, size: 64, offset: 320)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{null, !108}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !247, file: !79, line: 121, baseType: !655, size: 64, offset: 256)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!508, !214}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !247, file: !79, line: 122, baseType: !659, size: 64, offset: 320)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{null, !214, !662, !669}
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !536, line: 23, baseType: !664)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !536, line: 21, size: 32, elements: !665)
!665 = !{!666}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !664, file: !536, line: 22, baseType: !667, size: 32)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !107, line: 37, baseType: !668)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !265, line: 49, baseType: !7)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !536, line: 28, baseType: !671)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !536, line: 26, size: 32, elements: !672)
!672 = !{!673}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !671, file: !536, line: 27, baseType: !674, size: 32)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !107, line: 38, baseType: !675)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !265, line: 50, baseType: !7)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !149, file: !79, line: 70, baseType: !677, size: 64, offset: 384)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !679, line: 190, size: 1152, elements: !680)
!679 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!680 = !{!681, !682, !683, !684, !685, !686, !687, !688, !782, !783, !784, !785, !786, !789}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !678, file: !679, line: 191, baseType: !181, size: 32)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !678, file: !679, line: 192, baseType: !181, size: 32, offset: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !678, file: !679, line: 202, baseType: !677, size: 64, offset: 64)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !678, file: !679, line: 203, baseType: !133, size: 64, offset: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !678, file: !679, line: 205, baseType: !593, size: 192, align: 64, offset: 192)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !678, file: !679, line: 207, baseType: !508, size: 64, offset: 384)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !678, file: !679, line: 208, baseType: !7, size: 32, offset: 448)
!688 = !DIDerivedType(tag: DW_TAG_member, scope: !678, file: !679, line: 209, baseType: !689, size: 256, offset: 512)
!689 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !678, file: !679, line: 209, size: 256, elements: !690)
!690 = !{!691, !703, !707}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !689, file: !679, line: 210, baseType: !692, size: 256)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !679, line: 153, size: 256, elements: !693)
!693 = !{!694, !695, !699, !702}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !692, file: !679, line: 154, baseType: !105, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !692, file: !679, line: 156, baseType: !696, size: 64, offset: 64)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !594, line: 12, size: 64, elements: !697)
!697 = !{!698}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !696, file: !594, line: 13, baseType: !598, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !692, file: !679, line: 162, baseType: !700, size: 64, offset: 128)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !679, line: 162, flags: DIFlagFwdDecl)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !692, file: !679, line: 167, baseType: !105, size: 64, offset: 192)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !689, file: !679, line: 211, baseType: !704, size: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !679, line: 170, size: 64, elements: !705)
!705 = !{!706}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !704, file: !679, line: 171, baseType: !677, size: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !689, file: !679, line: 212, baseType: !708, size: 256)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !679, line: 174, size: 256, elements: !709)
!709 = !{!710, !777, !780, !781}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !708, file: !679, line: 175, baseType: !711, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !713)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !679, line: 271, size: 768, elements: !714)
!714 = !{!715, !737, !741, !745, !750, !754, !758, !762, !763, !764, !765, !773}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !713, file: !679, line: 276, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DISubroutineType(types: !718)
!718 = !{!46, !719}
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !679, line: 251, size: 1216, elements: !721)
!721 = !{!722, !723, !724, !727, !728, !729, !730, !731, !732, !733, !734, !735, !736}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !720, file: !679, line: 253, baseType: !677, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !720, file: !679, line: 254, baseType: !313, size: 64, offset: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !720, file: !679, line: 255, baseType: !725, size: 64, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !616, line: 66, flags: DIFlagFwdDecl)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !720, file: !679, line: 256, baseType: !108, size: 64, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !720, file: !679, line: 259, baseType: !487, size: 256, offset: 256)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !720, file: !679, line: 260, baseType: !487, size: 256, offset: 512)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !720, file: !679, line: 261, baseType: !46, size: 32, offset: 768)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !720, file: !679, line: 262, baseType: !119, size: 128, offset: 832)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !720, file: !679, line: 263, baseType: !231, size: 64, offset: 960)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !720, file: !679, line: 265, baseType: !278, size: 64, offset: 1024)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !720, file: !679, line: 266, baseType: !587, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !720, file: !679, line: 267, baseType: !587, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !720, file: !679, line: 268, baseType: !606, size: 64, offset: 1152)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !713, file: !679, line: 277, baseType: !738, size: 64, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{null, !719}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !713, file: !679, line: 290, baseType: !742, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!46, !725, !108}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !713, file: !679, line: 292, baseType: !746, size: 64, offset: 192)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!108, !725, !749}
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !713, file: !679, line: 293, baseType: !751, size: 64, offset: 256)
!751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !752, size: 64)
!752 = !DISubroutineType(types: !753)
!753 = !{!108, !725, !108, !749}
!754 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !713, file: !679, line: 294, baseType: !755, size: 64, offset: 320)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{null, !725, !108}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !713, file: !679, line: 296, baseType: !759, size: 64, offset: 384)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!263, !719, !231, !278, !316}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !713, file: !679, line: 306, baseType: !278, size: 64, offset: 448)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !713, file: !679, line: 313, baseType: !587, size: 8, offset: 512)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !713, file: !679, line: 314, baseType: !759, size: 64, offset: 576)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !713, file: !679, line: 317, baseType: !766, size: 64, offset: 640)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{!769, !719, !771}
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !770, line: 59, baseType: !7)
!770 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !679, line: 31, flags: DIFlagFwdDecl)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !713, file: !679, line: 320, baseType: !774, size: 64, offset: 704)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = !DISubroutineType(types: !776)
!776 = !{!46, !719, !324}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !708, file: !679, line: 176, baseType: !778, size: 64, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !679, line: 35, flags: DIFlagFwdDecl)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !708, file: !679, line: 177, baseType: !316, size: 64, offset: 128)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !708, file: !679, line: 178, baseType: !677, size: 64, offset: 192)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !678, file: !679, line: 215, baseType: !108, size: 64, offset: 768)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !678, file: !679, line: 221, baseType: !393, size: 64, offset: 832)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !678, file: !679, line: 223, baseType: !201, size: 16, offset: 896)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !678, file: !679, line: 224, baseType: !273, size: 16, offset: 912)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !678, file: !679, line: 225, baseType: !787, size: 64, offset: 960)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !679, line: 36, flags: DIFlagFwdDecl)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !678, file: !679, line: 227, baseType: !336, size: 128, align: 64, offset: 1024)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !149, file: !79, line: 71, baseType: !791, size: 32, offset: 448)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !792, line: 19, size: 32, elements: !793)
!792 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!793 = !{!794}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !791, file: !792, line: 20, baseType: !795, size: 32)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !796, line: 113, baseType: !797)
!796 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !796, line: 111, size: 32, elements: !798)
!798 = !{!799}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !797, file: !796, line: 112, baseType: !181, size: 32)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !149, file: !79, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !149, file: !79, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !149, file: !79, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !149, file: !79, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !149, file: !79, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !146, file: !13, line: 47, baseType: !136, size: 64, offset: 512)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !146, file: !13, line: 48, baseType: !154, size: 64, offset: 576)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !146, file: !13, line: 49, baseType: !808, size: 64, offset: 640)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !13, line: 49, flags: DIFlagFwdDecl)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !146, file: !13, line: 50, baseType: !811, size: 64, offset: 704)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !813, line: 26, size: 256, elements: !814)
!813 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!814 = !{!815, !816}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !812, file: !813, line: 27, baseType: !7, size: 32)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !812, file: !813, line: 28, baseType: !817, size: 192, offset: 64)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !818, line: 43, size: 192, elements: !819)
!818 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!819 = !{!820, !821}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !817, file: !818, line: 44, baseType: !421, size: 32)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !817, file: !818, line: 45, baseType: !119, size: 128, offset: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !137, file: !13, line: 418, baseType: !823, size: 64, offset: 1408)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !825)
!825 = !{!826, !827, !832, !836, !840, !844}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !824, file: !13, line: 54, baseType: !269, size: 128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !824, file: !13, line: 55, baseType: !828, size: 64, offset: 128)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!263, !823, !831, !231}
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !824, file: !13, line: 57, baseType: !833, size: 64, offset: 192)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!263, !823, !831, !133, !278}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !824, file: !13, line: 59, baseType: !837, size: 64, offset: 256)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{null, !136, !133}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !824, file: !13, line: 60, baseType: !841, size: 64, offset: 320)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{!46, !136}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !824, file: !13, line: 61, baseType: !845, size: 64, offset: 384)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{null, !136}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !137, file: !13, line: 419, baseType: !133, size: 64, offset: 1472)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !137, file: !13, line: 420, baseType: !133, size: 64, offset: 1536)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !137, file: !13, line: 421, baseType: !154, size: 64, offset: 1600)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !137, file: !13, line: 424, baseType: !852, size: 64, offset: 1664)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !854)
!854 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !137, file: !13, line: 425, baseType: !856, size: 64, offset: 1728)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !466)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !137, file: !13, line: 426, baseType: !7, size: 32, offset: 1792)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !137, file: !13, line: 435, baseType: !487, size: 256, offset: 1856)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !137, file: !13, line: 437, baseType: !861, size: 64, offset: 2112)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !863, line: 69, size: 320, elements: !864)
!863 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!864 = !{!865, !866, !867, !884, !886, !890, !891}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !862, file: !863, line: 70, baseType: !133, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !862, file: !863, line: 71, baseType: !136, size: 64, offset: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !862, file: !863, line: 72, baseType: !868, size: 64, offset: 128)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !870)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !863, line: 47, size: 256, elements: !871)
!871 = !{!872, !873, !879, !883}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !870, file: !863, line: 49, baseType: !7, size: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !870, file: !863, line: 51, baseType: !874, size: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{!46, !133, !877}
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !862)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !870, file: !863, line: 53, baseType: !880, size: 64, offset: 128)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DISubroutineType(types: !882)
!882 = !{!46, !231, !877}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !870, file: !863, line: 55, baseType: !651, size: 64, offset: 192)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !862, file: !863, line: 73, baseType: !885, size: 16, offset: 192)
!885 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !199)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !862, file: !863, line: 74, baseType: !887, size: 8, offset: 208)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !190, line: 16, baseType: !888)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !192, line: 20, baseType: !889)
!889 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !862, file: !863, line: 75, baseType: !189, size: 8, offset: 216)
!891 = !DIDerivedType(tag: DW_TAG_member, scope: !862, file: !863, line: 76, baseType: !892, size: 64, offset: 256)
!892 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !862, file: !863, line: 76, size: 64, elements: !893)
!893 = !{!894, !895, !902}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !892, file: !863, line: 77, baseType: !108, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !892, file: !863, line: 78, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !898)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !863, line: 86, size: 128, elements: !899)
!899 = !{!900, !901}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !898, file: !863, line: 87, baseType: !7, size: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !898, file: !863, line: 88, baseType: !231, size: 64, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !892, file: !863, line: 79, baseType: !903, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !905)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !863, line: 92, size: 256, elements: !906)
!906 = !{!907, !908, !909, !911, !912}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !905, file: !863, line: 94, baseType: !7, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !905, file: !863, line: 95, baseType: !7, size: 32, offset: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !905, file: !863, line: 96, baseType: !910, size: 64, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !905, file: !863, line: 97, baseType: !868, size: 64, offset: 128)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !905, file: !863, line: 98, baseType: !108, size: 64, offset: 192)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !137, file: !13, line: 438, baseType: !7, size: 32, offset: 2176)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !137, file: !13, line: 441, baseType: !7, size: 32, offset: 2208)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !137, file: !13, line: 442, baseType: !852, size: 64, offset: 2240)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !137, file: !13, line: 443, baseType: !856, size: 64, offset: 2304)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !137, file: !13, line: 444, baseType: !587, size: 8, offset: 2368)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !137, file: !13, line: 451, baseType: !587, size: 8, offset: 2376)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !137, file: !13, line: 454, baseType: !7, size: 32, offset: 2400)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !137, file: !13, line: 455, baseType: !921, size: 64, offset: 2432)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !13, line: 43, flags: DIFlagFwdDecl)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !137, file: !13, line: 458, baseType: !924, size: 64, offset: 2496)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{!46}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !137, file: !13, line: 460, baseType: !928, size: 4032, align: 512, offset: 2560)
!928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !929, size: 4032, elements: !945)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !13, line: 362, size: 576, elements: !930)
!930 = !{!931, !932, !933}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !929, file: !13, line: 363, baseType: !108, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !929, file: !13, line: 364, baseType: !7, size: 32, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !929, file: !13, line: 367, baseType: !934, size: 448, offset: 128)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !13, line: 319, size: 448, elements: !935)
!935 = !{!936, !937}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !934, file: !13, line: 320, baseType: !136, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !934, file: !13, line: 321, baseType: !938, size: 384, offset: 64)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !939, line: 40, size: 384, elements: !940)
!939 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!940 = !{!941}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !938, file: !939, line: 41, baseType: !942, size: 384, align: 64)
!942 = !DICompositeType(tag: DW_TAG_array_type, baseType: !593, size: 384, align: 64, elements: !943)
!943 = !{!944}
!944 = !DISubrange(count: 2)
!945 = !{!946}
!946 = !DISubrange(count: 7)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !137, file: !13, line: 463, baseType: !948, size: 192, offset: 6592)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !949, line: 8, size: 192, elements: !950)
!949 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!950 = !{!951, !952, !954}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !948, file: !949, line: 10, baseType: !7, size: 32)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !948, file: !949, line: 11, baseType: !953, size: 64, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !948, file: !949, line: 12, baseType: !955, size: 64, offset: 128)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !957, line: 59, size: 48, elements: !958)
!957 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!958 = !{!959, !960, !961, !962, !963, !964}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !956, file: !957, line: 60, baseType: !525, size: 16)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !956, file: !957, line: 61, baseType: !525, size: 16, offset: 16)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !956, file: !957, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !956, file: !957, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !956, file: !957, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !956, file: !957, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !137, file: !13, line: 465, baseType: !105, size: 64, offset: 6784)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !137, file: !13, line: 469, baseType: !7, size: 32, offset: 6848)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !137, file: !13, line: 470, baseType: !119, size: 128, offset: 6912)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !137, file: !13, line: 471, baseType: !969, size: 64, offset: 7040)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !971, line: 33, size: 96, elements: !972)
!971 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!972 = !{!973, !974, !975, !976}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !970, file: !971, line: 37, baseType: !46, size: 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !970, file: !971, line: 43, baseType: !46, size: 32, offset: 32)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !970, file: !971, line: 45, baseType: !201, size: 16, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !970, file: !971, line: 47, baseType: !201, size: 16, offset: 80)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !137, file: !13, line: 476, baseType: !978, size: 64, offset: 7104)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !13, line: 378, size: 256, elements: !980)
!980 = !{!981, !998, !999, !1000}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !979, file: !13, line: 379, baseType: !982, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !984, line: 204, baseType: !985)
!984 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !984, line: 197, size: 192, elements: !986)
!986 = !{!987, !990, !991, !992, !994, !996}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !985, file: !984, line: 198, baseType: !988, size: 32)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !984, line: 21, baseType: !989)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !192, line: 27, baseType: !7)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !985, file: !984, line: 199, baseType: !193, size: 8, offset: 32)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !985, file: !984, line: 200, baseType: !193, size: 8, offset: 40)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !985, file: !984, line: 201, baseType: !993, size: 16, offset: 48)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !984, line: 17, baseType: !200)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !985, file: !984, line: 202, baseType: !995, size: 64, offset: 64)
!995 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !984, line: 16, baseType: !394)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !985, file: !984, line: 203, baseType: !997, size: 64, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !984, line: 22, baseType: !394)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !979, file: !13, line: 380, baseType: !7, size: 32, offset: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !979, file: !13, line: 381, baseType: !231, size: 64, offset: 128)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !979, file: !13, line: 382, baseType: !231, size: 64, offset: 192)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !137, file: !13, line: 477, baseType: !979, size: 256, offset: 7168)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !137, file: !13, line: 480, baseType: !1003, size: 64, offset: 7424)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !137, file: !13, line: 483, baseType: !1006, size: 64, offset: 7488)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !137, file: !13, line: 488, baseType: !231, size: 64, offset: 7552)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !137, file: !13, line: 492, baseType: !108, size: 64, offset: 7616)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !137, file: !13, line: 493, baseType: !7, size: 32, offset: 7680)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !137, file: !13, line: 495, baseType: !108, size: 64, offset: 7744)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !137, file: !13, line: 496, baseType: !7, size: 32, offset: 7808)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !137, file: !13, line: 499, baseType: !7, size: 32, offset: 7840)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !137, file: !13, line: 500, baseType: !1015, size: 64, offset: 7872)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1017, line: 45, baseType: !1018)
!1017 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !137, file: !13, line: 503, baseType: !7, size: 32, offset: 7936)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !137, file: !13, line: 504, baseType: !1021, size: 64, offset: 8000)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1024, line: 96, size: 192, elements: !1025)
!1024 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1025 = !{!1026, !1027, !1088, !1091}
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1023, file: !1024, line: 97, baseType: !7, size: 32)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1023, file: !1024, line: 98, baseType: !1028, size: 64, offset: 64)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1024, line: 24, size: 3072, elements: !1030)
!1030 = !{!1031, !1033, !1034, !1035, !1036, !1050, !1051, !1052, !1053, !1072, !1073, !1074, !1085, !1086, !1087}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1029, file: !1024, line: 26, baseType: !1032, size: 128)
!1032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !399, size: 128, elements: !943)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1029, file: !1024, line: 27, baseType: !1032, size: 128, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1029, file: !1024, line: 28, baseType: !46, size: 32, offset: 256)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1029, file: !1024, line: 31, baseType: !161, size: 32, align: 512, offset: 512)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1029, file: !1024, line: 32, baseType: !1037, size: 960, offset: 576)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1038, line: 206, size: 960, elements: !1039)
!1038 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1039 = !{!1040, !1041, !1044, !1046, !1047, !1049}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1037, file: !1038, line: 207, baseType: !339, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1037, file: !1038, line: 208, baseType: !1042, size: 256, offset: 64)
!1042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1043, size: 256, elements: !468)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1037, file: !1038, line: 209, baseType: !1045, size: 256, offset: 320)
!1045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 256, elements: !468)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1037, file: !1038, line: 213, baseType: !267, size: 64, offset: 576)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1037, file: !1038, line: 215, baseType: !1048, size: 256, offset: 640)
!1048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !267, size: 256, elements: !468)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1037, file: !1038, line: 216, baseType: !189, size: 8, offset: 896)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1029, file: !1024, line: 33, baseType: !105, size: 64, offset: 1536)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1029, file: !1024, line: 34, baseType: !105, size: 64, offset: 1600)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1029, file: !1024, line: 35, baseType: !587, size: 8, offset: 1664)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1029, file: !1024, line: 36, baseType: !1054, size: 320, offset: 1728)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1055, line: 11, size: 320, elements: !1056)
!1055 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1056 = !{!1057, !1064, !1065, !1070}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1054, file: !1055, line: 16, baseType: !1058, size: 128)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !107, line: 198, size: 128, elements: !1059)
!1059 = !{!1060, !1062}
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1058, file: !107, line: 199, baseType: !1061, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1058, file: !107, line: 199, baseType: !1063, size: 64, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1054, file: !1055, line: 17, baseType: !105, size: 64, offset: 128)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1054, file: !1055, line: 18, baseType: !1066, size: 64, offset: 192)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DISubroutineType(types: !1068)
!1068 = !{null, !1069}
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1054, file: !1055, line: 19, baseType: !1071, size: 32, offset: 256)
!1071 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !190, line: 21, baseType: !989)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1029, file: !1024, line: 37, baseType: !552, size: 256, offset: 2048)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1029, file: !1024, line: 38, baseType: !336, size: 128, align: 64, offset: 2304)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1029, file: !1024, line: 39, baseType: !1075, size: 64, offset: 2432)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1024, line: 49, size: 768, elements: !1077)
!1077 = !{!1078, !1079, !1080, !1081, !1082, !1083, !1084}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1076, file: !1024, line: 50, baseType: !161, size: 32)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1076, file: !1024, line: 51, baseType: !1045, size: 256, offset: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1076, file: !1024, line: 53, baseType: !1045, size: 256, offset: 320)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1076, file: !1024, line: 54, baseType: !105, size: 64, offset: 576)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1076, file: !1024, line: 55, baseType: !1075, size: 64, offset: 640)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1076, file: !1024, line: 56, baseType: !46, size: 32, offset: 704)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1076, file: !1024, line: 57, baseType: !46, size: 32, offset: 736)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1029, file: !1024, line: 40, baseType: !105, size: 64, offset: 2496)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1029, file: !1024, line: 42, baseType: !46, size: 32, offset: 2560)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1029, file: !1024, line: 43, baseType: !1022, size: 64, offset: 2624)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1023, file: !1024, line: 99, baseType: !1089, offset: 128)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1090, line: 211, elements: !366)
!1090 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1023, file: !1024, line: 100, baseType: !1092, size: 64, offset: 128)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1024, line: 63, size: 3008, elements: !1094)
!1094 = !{!1095, !1096, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1117, !1126}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1093, file: !1024, line: 64, baseType: !1075, size: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1093, file: !1024, line: 65, baseType: !1097, size: 192, offset: 64)
!1097 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1075, size: 192, elements: !232)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1093, file: !1024, line: 67, baseType: !46, size: 32, offset: 256)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1093, file: !1024, line: 68, baseType: !487, size: 256, offset: 320)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1093, file: !1024, line: 69, baseType: !161, size: 32, offset: 576)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1093, file: !1024, line: 70, baseType: !487, size: 256, offset: 640)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1093, file: !1024, line: 71, baseType: !105, size: 64, offset: 896)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1093, file: !1024, line: 72, baseType: !105, size: 64, offset: 960)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1093, file: !1024, line: 73, baseType: !105, size: 64, offset: 1024)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1093, file: !1024, line: 74, baseType: !105, size: 64, offset: 1088)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1093, file: !1024, line: 75, baseType: !105, size: 64, offset: 1152)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1093, file: !1024, line: 76, baseType: !105, size: 64, offset: 1216)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1093, file: !1024, line: 77, baseType: !105, size: 64, offset: 1280)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1093, file: !1024, line: 78, baseType: !105, size: 64, offset: 1344)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1093, file: !1024, line: 79, baseType: !587, size: 8, offset: 1408)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1093, file: !1024, line: 80, baseType: !105, size: 64, offset: 1472)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1093, file: !1024, line: 81, baseType: !487, size: 256, offset: 1536)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1093, file: !1024, line: 82, baseType: !812, size: 256, offset: 1792)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1093, file: !1024, line: 84, baseType: !181, size: 32, offset: 2048)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1093, file: !1024, line: 87, baseType: !105, size: 64, offset: 2112)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1093, file: !1024, line: 88, baseType: !105, size: 64, offset: 2176)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1093, file: !1024, line: 89, baseType: !1118, size: 704, offset: 2240)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !553, line: 111, size: 704, elements: !1119)
!1119 = !{!1120, !1121, !1122, !1125}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1118, file: !553, line: 112, baseType: !552, size: 256)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1118, file: !553, line: 113, baseType: !1054, size: 320, offset: 256)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1118, file: !553, line: 116, baseType: !1123, size: 64, offset: 576)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !553, line: 18, flags: DIFlagFwdDecl)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1118, file: !553, line: 117, baseType: !46, size: 32, offset: 640)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1093, file: !1024, line: 90, baseType: !1022, size: 64, offset: 2944)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !137, file: !13, line: 515, baseType: !1128, size: 64, offset: 8064)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1130, line: 117, size: 128, elements: !1131)
!1130 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1131 = !{!1132, !1133, !1134}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1129, file: !1130, line: 118, baseType: !466, size: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1129, file: !1130, line: 119, baseType: !466, size: 32, offset: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1129, file: !1130, line: 120, baseType: !267, size: 64, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !137, file: !13, line: 516, baseType: !7, size: 32, offset: 8128)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !137, file: !13, line: 519, baseType: !7, size: 32, offset: 8160)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !137, file: !13, line: 520, baseType: !1138, size: 64, offset: 8192)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !137, file: !13, line: 523, baseType: !1140, size: 64, offset: 8256)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1142, size: 64)
!1142 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !13, line: 523, flags: DIFlagFwdDecl)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !137, file: !13, line: 524, baseType: !7, size: 32, offset: 8320)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !137, file: !13, line: 525, baseType: !1145, size: 64, offset: 8384)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1147, size: 64)
!1147 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !13, line: 525, flags: DIFlagFwdDecl)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !137, file: !13, line: 526, baseType: !7, size: 32, offset: 8448)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !137, file: !13, line: 533, baseType: !108, size: 64, offset: 8512)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !137, file: !13, line: 534, baseType: !7, size: 32, offset: 8576)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !137, file: !13, line: 535, baseType: !1152, size: 64, offset: 8640)
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !105, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !137, file: !13, line: 536, baseType: !7, size: 32, offset: 8704)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !137, file: !13, line: 539, baseType: !46, size: 32, offset: 8736)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !137, file: !13, line: 540, baseType: !1156, size: 64, offset: 8768)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1158, line: 32, size: 64, elements: !1159)
!1158 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1159 = !{!1160, !1161}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1157, file: !1158, line: 33, baseType: !466, size: 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1157, file: !1158, line: 34, baseType: !466, size: 32, offset: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !137, file: !13, line: 563, baseType: !119, size: 128, offset: 8832)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !137, file: !13, line: 565, baseType: !119, size: 128, offset: 8960)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !137, file: !13, line: 568, baseType: !1165, size: 64, offset: 9088)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DISubroutineType(types: !1167)
!1167 = !{null}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !137, file: !13, line: 570, baseType: !181, size: 32, offset: 9152)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "bctimer", scope: !130, file: !111, line: 157, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !130, file: !111, line: 159, baseType: !1171, size: 8320, offset: 192)
!1171 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1172, size: 8320, elements: !1215)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state", file: !111, line: 49, size: 832, elements: !1173)
!1173 = !{!1174, !1175, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1240, !1244}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1172, file: !111, line: 50, baseType: !114, size: 128)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1172, file: !111, line: 51, baseType: !1176, size: 256, offset: 128)
!1176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 256, elements: !1177)
!1177 = !{!1178}
!1178 = !DISubrange(count: 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "exit_latency_ns", scope: !1172, file: !111, line: 53, baseType: !405, size: 64, offset: 384)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "target_residency_ns", scope: !1172, file: !111, line: 54, baseType: !405, size: 64, offset: 448)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1172, file: !111, line: 55, baseType: !7, size: 32, offset: 512)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "exit_latency", scope: !1172, file: !111, line: 56, baseType: !7, size: 32, offset: 544)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "power_usage", scope: !1172, file: !111, line: 57, baseType: !46, size: 32, offset: 576)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "target_residency", scope: !1172, file: !111, line: 58, baseType: !7, size: 32, offset: 608)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "enter", scope: !1172, file: !111, line: 60, baseType: !1186, size: 64, offset: 640)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DISubroutineType(types: !1188)
!1188 = !{!46, !1189, !129, !46}
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_device", file: !111, line: 93, size: 6400, elements: !1191)
!1191 = !{!1192, !1193, !1194, !1195, !1196, !1199, !1200, !1201, !1202, !1203, !1217, !1229, !1232, !1239}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "registered", scope: !1190, file: !111, line: 94, baseType: !7, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1190, file: !111, line: 95, baseType: !7, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "poll_time_limit", scope: !1190, file: !111, line: 96, baseType: !7, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1190, file: !111, line: 97, baseType: !7, size: 32, offset: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "next_hrtimer", scope: !1190, file: !111, line: 98, baseType: !1197, size: 64, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1198, line: 29, baseType: !405)
!1198 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "last_state_idx", scope: !1190, file: !111, line: 100, baseType: !46, size: 32, offset: 128)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "last_residency_ns", scope: !1190, file: !111, line: 101, baseType: !393, size: 64, offset: 192)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "poll_limit_ns", scope: !1190, file: !111, line: 102, baseType: !393, size: 64, offset: 256)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "forced_idle_latency_limit_ns", scope: !1190, file: !111, line: 103, baseType: !393, size: 64, offset: 320)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "states_usage", scope: !1190, file: !111, line: 104, baseType: !1204, size: 5120, offset: 384)
!1204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1205, size: 5120, elements: !1215)
!1205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state_usage", file: !111, line: 36, size: 512, elements: !1206)
!1206 = !{!1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !1205, file: !111, line: 37, baseType: !395, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !1205, file: !111, line: 38, baseType: !395, size: 64, offset: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "time_ns", scope: !1205, file: !111, line: 39, baseType: !393, size: 64, offset: 128)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "above", scope: !1205, file: !111, line: 40, baseType: !395, size: 64, offset: 192)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "below", scope: !1205, file: !111, line: 41, baseType: !395, size: 64, offset: 256)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "rejected", scope: !1205, file: !111, line: 42, baseType: !395, size: 64, offset: 320)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "s2idle_usage", scope: !1205, file: !111, line: 44, baseType: !395, size: 64, offset: 384)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "s2idle_time", scope: !1205, file: !111, line: 45, baseType: !395, size: 64, offset: 448)
!1215 = !{!1216}
!1216 = !DISubrange(count: 10)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "kobjs", scope: !1190, file: !111, line: 105, baseType: !1218, size: 640, offset: 5504)
!1218 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1219, size: 640, elements: !1215)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state_kobj", file: !3, line: 347, size: 960, elements: !1221)
!1221 = !{!1222, !1224, !1226, !1227, !1228}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1220, file: !3, line: 348, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1172, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "state_usage", scope: !1220, file: !3, line: 349, baseType: !1225, size: 64, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_unregister", scope: !1220, file: !3, line: 350, baseType: !812, size: 256, offset: 128)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1220, file: !3, line: 351, baseType: !149, size: 512, offset: 384)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !1220, file: !3, line: 352, baseType: !1189, size: 64, offset: 896)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_driver", scope: !1190, file: !111, line: 106, baseType: !1230, size: 64, offset: 6144)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_driver_kobj", file: !111, line: 91, flags: DIFlagFwdDecl)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_dev", scope: !1190, file: !111, line: 107, baseType: !1233, size: 64, offset: 6208)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_device_kobj", file: !3, line: 153, size: 832, elements: !1235)
!1235 = !{!1236, !1237, !1238}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1234, file: !3, line: 154, baseType: !1189, size: 64)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_unregister", scope: !1234, file: !3, line: 155, baseType: !812, size: 256, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1234, file: !3, line: 156, baseType: !149, size: 512, offset: 320)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "device_list", scope: !1190, file: !111, line: 108, baseType: !119, size: 128, offset: 6272)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "enter_dead", scope: !1172, file: !111, line: 64, baseType: !1241, size: 64, offset: 704)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DISubroutineType(types: !1243)
!1243 = !{!46, !1189, !46}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "enter_s2idle", scope: !1172, file: !111, line: 74, baseType: !1186, size: 64, offset: 768)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !130, file: !111, line: 160, baseType: !46, size: 32, offset: 8512)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "safe_state_index", scope: !130, file: !111, line: 161, baseType: !46, size: 32, offset: 8544)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !130, file: !111, line: 164, baseType: !1248, size: 64, offset: 8576)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !1250, line: 19, size: 64, elements: !1251)
!1250 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!1251 = !{!1252}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !1249, file: !1250, line: 19, baseType: !1253, size: 64)
!1253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !105, size: 64, elements: !1254)
!1254 = !{!1255}
!1255 = !DISubrange(count: 1)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !130, file: !111, line: 167, baseType: !133, size: 64, offset: 8640)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !110, file: !111, line: 295, baseType: !1258, size: 64, offset: 384)
!1258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1259, size: 64)
!1259 = !DISubroutineType(types: !1260)
!1260 = !{null, !129, !1189}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !110, file: !111, line: 298, baseType: !1262, size: 64, offset: 448)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DISubroutineType(types: !1264)
!1264 = !{!46, !129, !1189, !1265}
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "reflect", scope: !110, file: !111, line: 301, baseType: !1267, size: 64, offset: 512)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DISubroutineType(types: !1269)
!1269 = !{null, !1189, !46}
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_state_attr", file: !3, line: 215, size: 256, elements: !1272)
!1272 = !{!1273, !1274, !1278}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1271, file: !3, line: 216, baseType: !269, size: 128)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1271, file: !3, line: 217, baseType: !1275, size: 64, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1276, size: 64)
!1276 = !DISubroutineType(types: !1277)
!1277 = !{!263, !1223, !1225, !231}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1271, file: !3, line: 219, baseType: !1279, size: 64, offset: 192)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1280, size: 64)
!1280 = !DISubroutineType(types: !1281)
!1281 = !{!263, !1223, !1225, !133, !278}
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpuidle_attr", file: !3, line: 145, size: 256, elements: !1284)
!1284 = !{!1285, !1286, !1290}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1283, file: !3, line: 146, baseType: !269, size: 128)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1283, file: !3, line: 147, baseType: !1287, size: 64, offset: 128)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = !DISubroutineType(types: !1289)
!1289 = !{!263, !1189, !231}
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1283, file: !3, line: 148, baseType: !1291, size: 64, offset: 192)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = !DISubroutineType(types: !1293)
!1293 = !{!263, !1189, !133, !278}
!1294 = !{!1295, !0, !1300, !1305, !1310, !1749, !1752, !1755, !1760, !1762, !1764, !1769, !1774, !1776, !1779, !1781, !1783, !1785, !1787, !1789, !1792, !1794, !1799, !1801, !1803, !1805, !1807, !1809, !1811, !1813, !1815, !1820, !1823, !1825, !1827, !1829, !1831, !1833, !1835, !1840, !1842, !1844, !1846, !1848, !1850, !1852, !1854, !1856, !1858, !1860, !1862, !1864, !1866, !1869, !1871, !1874, !1876, !1878, !1883, !1891, !1893, !1895}
!1295 = !DIGlobalVariableExpression(var: !1296, expr: !DIExpression())
!1296 = distinct !DIGlobalVariable(scope: null, file: !3, line: 723, type: !1297, isLocal: true, isDefinition: true)
!1297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 64, elements: !1298)
!1298 = !{!1299}
!1299 = !DISubrange(count: 8)
!1300 = !DIGlobalVariableExpression(var: !1301, expr: !DIExpression())
!1301 = distinct !DIGlobalVariable(name: "cpuidle_attrs", scope: !2, file: !3, line: 107, type: !1302, isLocal: true, isDefinition: true)
!1302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 320, elements: !1303)
!1303 = !{!1304}
!1304 = !DISubrange(count: 5)
!1305 = !DIGlobalVariableExpression(var: !1306, expr: !DIExpression())
!1306 = distinct !DIGlobalVariable(scope: null, file: !3, line: 101, type: !1307, isLocal: true, isDefinition: true)
!1307 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 160, elements: !1308)
!1308 = !{!1309}
!1309 = !DISubrange(count: 20)
!1310 = !DIGlobalVariableExpression(var: !1311, expr: !DIExpression())
!1311 = distinct !DIGlobalVariable(name: "dev_attr_available_governors", scope: !2, file: !3, line: 101, type: !1312, isLocal: true, isDefinition: true)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !26, line: 106, size: 256, elements: !1313)
!1313 = !{!1314, !1315, !1745}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1312, file: !26, line: 107, baseType: !269, size: 128)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1312, file: !26, line: 108, baseType: !1316, size: 64, offset: 128)
!1316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1317, size: 64)
!1317 = !DISubroutineType(types: !1318)
!1318 = !{!263, !1319, !1744, !231}
!1319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1320, size: 64)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !1321)
!1321 = !{!1322, !1323, !1324, !1327, !1328, !1381, !1451, !1452, !1453, !1454, !1455, !1462, !1628, !1641, !1651, !1655, !1657, !1658, !1659, !1663, !1670, !1671, !1674, !1677, !1681, !1684, !1685, !1688, !1689, !1690, !1691, !1721, !1722, !1723, !1726, !1729, !1738, !1739, !1740, !1741, !1742, !1743}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1320, file: !26, line: 706, baseType: !149, size: 512)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1320, file: !26, line: 707, baseType: !1319, size: 64, offset: 512)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1320, file: !26, line: 709, baseType: !1325, size: 64, offset: 576)
!1325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1326, size: 64)
!1326 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1320, file: !26, line: 711, baseType: !133, size: 64, offset: 640)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1320, file: !26, line: 712, baseType: !1329, size: 64, offset: 704)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1331)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !1332)
!1332 = !{!1333, !1334, !1335, !1341, !1346, !1350}
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1331, file: !26, line: 90, baseType: !133, size: 64)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1331, file: !26, line: 91, baseType: !282, size: 64, offset: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1331, file: !26, line: 92, baseType: !1336, size: 64, offset: 128)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DISubroutineType(types: !1338)
!1338 = !{!46, !1339, !226}
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1320)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1331, file: !26, line: 93, baseType: !1342, size: 64, offset: 192)
!1342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1343, size: 64)
!1343 = !DISubroutineType(types: !1344)
!1344 = !{!231, !1339, !1345, !662, !669}
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1331, file: !26, line: 95, baseType: !1347, size: 64, offset: 256)
!1347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1348, size: 64)
!1348 = !DISubroutineType(types: !1349)
!1349 = !{null, !1319}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1331, file: !26, line: 97, baseType: !1351, size: 64, offset: 320)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1353)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !1354)
!1354 = !{!1355, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1353, file: !38, line: 287, baseType: !1356, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1357, size: 64)
!1357 = !DISubroutineType(types: !1358)
!1358 = !{!46, !1319}
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1353, file: !38, line: 288, baseType: !1347, size: 64, offset: 64)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1353, file: !38, line: 289, baseType: !1356, size: 64, offset: 128)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1353, file: !38, line: 290, baseType: !1356, size: 64, offset: 192)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1353, file: !38, line: 291, baseType: !1356, size: 64, offset: 256)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1353, file: !38, line: 292, baseType: !1356, size: 64, offset: 320)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1353, file: !38, line: 293, baseType: !1356, size: 64, offset: 384)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1353, file: !38, line: 294, baseType: !1356, size: 64, offset: 448)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1353, file: !38, line: 295, baseType: !1356, size: 64, offset: 512)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1353, file: !38, line: 296, baseType: !1356, size: 64, offset: 576)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1353, file: !38, line: 297, baseType: !1356, size: 64, offset: 640)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1353, file: !38, line: 298, baseType: !1356, size: 64, offset: 704)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1353, file: !38, line: 299, baseType: !1356, size: 64, offset: 768)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1353, file: !38, line: 300, baseType: !1356, size: 64, offset: 832)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1353, file: !38, line: 301, baseType: !1356, size: 64, offset: 896)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1353, file: !38, line: 302, baseType: !1356, size: 64, offset: 960)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1353, file: !38, line: 303, baseType: !1356, size: 64, offset: 1024)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1353, file: !38, line: 304, baseType: !1356, size: 64, offset: 1088)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1353, file: !38, line: 305, baseType: !1356, size: 64, offset: 1152)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1353, file: !38, line: 306, baseType: !1356, size: 64, offset: 1216)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1353, file: !38, line: 307, baseType: !1356, size: 64, offset: 1280)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1353, file: !38, line: 308, baseType: !1356, size: 64, offset: 1344)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1353, file: !38, line: 309, baseType: !1356, size: 64, offset: 1408)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1320, file: !26, line: 714, baseType: !1382, size: 64, offset: 768)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1384)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1385, line: 80, size: 1344, elements: !1386)
!1385 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!1386 = !{!1387, !1388, !1389, !1390, !1391, !1392, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1450}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1384, file: !1385, line: 81, baseType: !133, size: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1384, file: !1385, line: 82, baseType: !133, size: 64, offset: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1384, file: !1385, line: 83, baseType: !282, size: 64, offset: 128)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1384, file: !1385, line: 84, baseType: !282, size: 64, offset: 192)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1384, file: !1385, line: 85, baseType: !282, size: 64, offset: 256)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1384, file: !1385, line: 87, baseType: !1393, size: 64, offset: 320)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DISubroutineType(types: !1395)
!1395 = !{!46, !1319, !1396}
!1396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !1398)
!1398 = !{!1399, !1400, !1401, !1402, !1403, !1404, !1405, !1409, !1413, !1414, !1415, !1416, !1417, !1425, !1426, !1427, !1428, !1429, !1430}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1397, file: !20, line: 97, baseType: !133, size: 64)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1397, file: !20, line: 98, baseType: !1382, size: 64, offset: 64)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1397, file: !20, line: 100, baseType: !136, size: 64, offset: 128)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1397, file: !20, line: 101, baseType: !133, size: 64, offset: 192)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1397, file: !20, line: 103, baseType: !587, size: 8, offset: 256)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1397, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1397, file: !20, line: 106, baseType: !1406, size: 64, offset: 320)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1408)
!1408 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !20, line: 106, flags: DIFlagFwdDecl)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1397, file: !20, line: 107, baseType: !1410, size: 64, offset: 384)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1412)
!1412 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !20, line: 107, flags: DIFlagFwdDecl)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1397, file: !20, line: 109, baseType: !1356, size: 64, offset: 448)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1397, file: !20, line: 110, baseType: !1347, size: 64, offset: 512)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1397, file: !20, line: 111, baseType: !1356, size: 64, offset: 576)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1397, file: !20, line: 112, baseType: !1347, size: 64, offset: 640)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1397, file: !20, line: 113, baseType: !1418, size: 64, offset: 704)
!1418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1419, size: 64)
!1419 = !DISubroutineType(types: !1420)
!1420 = !{!46, !1319, !1421}
!1421 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1422)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1423)
!1423 = !{!1424}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1422, file: !38, line: 59, baseType: !46, size: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1397, file: !20, line: 114, baseType: !1356, size: 64, offset: 768)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1397, file: !20, line: 115, baseType: !282, size: 64, offset: 832)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1397, file: !20, line: 116, baseType: !282, size: 64, offset: 896)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1397, file: !20, line: 118, baseType: !1351, size: 64, offset: 960)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1397, file: !20, line: 119, baseType: !1347, size: 64, offset: 1024)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1397, file: !20, line: 121, baseType: !1431, size: 64, offset: 1088)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1384, file: !1385, line: 88, baseType: !1336, size: 64, offset: 384)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1384, file: !1385, line: 89, baseType: !1356, size: 64, offset: 448)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1384, file: !1385, line: 90, baseType: !1347, size: 64, offset: 512)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1384, file: !1385, line: 91, baseType: !1347, size: 64, offset: 576)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1384, file: !1385, line: 92, baseType: !1347, size: 64, offset: 640)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1384, file: !1385, line: 94, baseType: !1356, size: 64, offset: 704)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1384, file: !1385, line: 95, baseType: !1356, size: 64, offset: 768)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1384, file: !1385, line: 97, baseType: !1418, size: 64, offset: 832)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1384, file: !1385, line: 98, baseType: !1356, size: 64, offset: 896)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1384, file: !1385, line: 100, baseType: !1356, size: 64, offset: 960)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1384, file: !1385, line: 102, baseType: !1356, size: 64, offset: 1024)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !1384, file: !1385, line: 103, baseType: !1347, size: 64, offset: 1088)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1384, file: !1385, line: 105, baseType: !1351, size: 64, offset: 1152)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1384, file: !1385, line: 107, baseType: !1447, size: 64, offset: 1216)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1449)
!1449 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1385, line: 107, flags: DIFlagFwdDecl)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1384, file: !1385, line: 109, baseType: !587, size: 8, offset: 1280)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1320, file: !26, line: 715, baseType: !1396, size: 64, offset: 832)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1320, file: !26, line: 717, baseType: !108, size: 64, offset: 896)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1320, file: !26, line: 719, baseType: !108, size: 64, offset: 960)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1320, file: !26, line: 721, baseType: !487, size: 256, offset: 1024)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1320, file: !26, line: 725, baseType: !1456, size: 448, offset: 1280)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1457)
!1457 = !{!1458, !1459, !1460, !1461}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1456, file: !26, line: 518, baseType: !119, size: 128)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1456, file: !26, line: 519, baseType: !119, size: 128, offset: 128)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1456, file: !26, line: 520, baseType: !119, size: 128, offset: 256)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1456, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1320, file: !26, line: 726, baseType: !1463, size: 2496, offset: 1728)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1464)
!1464 = !{!1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1507, !1508, !1509, !1510, !1511, !1512, !1581, !1582, !1583, !1590, !1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1599, !1600, !1601, !1602, !1603, !1604, !1605, !1606, !1607, !1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1621, !1625}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1463, file: !38, line: 664, baseType: !1421, size: 32)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1463, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1463, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1463, file: !38, line: 667, baseType: !587, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1463, file: !38, line: 668, baseType: !587, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1463, file: !38, line: 669, baseType: !587, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1463, file: !38, line: 670, baseType: !587, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1463, file: !38, line: 671, baseType: !587, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1463, file: !38, line: 672, baseType: !587, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1463, file: !38, line: 673, baseType: !587, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1463, file: !38, line: 674, baseType: !587, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1463, file: !38, line: 675, baseType: !1071, size: 32, offset: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1463, file: !38, line: 676, baseType: !161, size: 32, offset: 96)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1463, file: !38, line: 678, baseType: !119, size: 128, offset: 128)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1463, file: !38, line: 679, baseType: !812, size: 256, offset: 256)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1463, file: !38, line: 680, baseType: !1481, size: 64, offset: 512)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1483, line: 43, size: 1536, elements: !1484)
!1483 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1484 = !{!1485, !1486, !1487, !1488, !1489, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1482, file: !1483, line: 44, baseType: !133, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1482, file: !1483, line: 45, baseType: !46, size: 32, offset: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1482, file: !1483, line: 46, baseType: !119, size: 128, offset: 128)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1482, file: !1483, line: 47, baseType: !161, size: 32, offset: 256)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1482, file: !1483, line: 48, baseType: !1490, size: 64, offset: 320)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1482, file: !1483, line: 49, baseType: !1054, size: 320, offset: 384)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1482, file: !1483, line: 50, baseType: !105, size: 64, offset: 704)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1482, file: !1483, line: 51, baseType: !1197, size: 64, offset: 768)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1482, file: !1483, line: 52, baseType: !1197, size: 64, offset: 832)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1482, file: !1483, line: 53, baseType: !1197, size: 64, offset: 896)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1482, file: !1483, line: 54, baseType: !1197, size: 64, offset: 960)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1482, file: !1483, line: 55, baseType: !1197, size: 64, offset: 1024)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1482, file: !1483, line: 56, baseType: !105, size: 64, offset: 1088)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1482, file: !1483, line: 57, baseType: !105, size: 64, offset: 1152)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1482, file: !1483, line: 58, baseType: !105, size: 64, offset: 1216)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1482, file: !1483, line: 59, baseType: !105, size: 64, offset: 1280)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1482, file: !1483, line: 60, baseType: !105, size: 64, offset: 1344)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1482, file: !1483, line: 61, baseType: !1319, size: 64, offset: 1408)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1482, file: !1483, line: 62, baseType: !587, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1482, file: !1483, line: 63, baseType: !587, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1463, file: !38, line: 681, baseType: !587, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1463, file: !38, line: 682, baseType: !587, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1463, file: !38, line: 683, baseType: !587, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1463, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1463, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1463, file: !38, line: 690, baseType: !1513, size: 512, offset: 640)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1514)
!1514 = !{!1515, !1521, !1522, !1527, !1577, !1578, !1579, !1580}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1513, file: !33, line: 119, baseType: !1516, size: 256)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1517, line: 9, size: 256, elements: !1518)
!1517 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1518 = !{!1519, !1520}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1516, file: !1517, line: 10, baseType: !593, size: 192, align: 64)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1516, file: !1517, line: 11, baseType: !1197, size: 64, offset: 192)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1513, file: !33, line: 120, baseType: !1197, size: 64, offset: 256)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1513, file: !33, line: 121, baseType: !1523, size: 64, offset: 320)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!32, !1526}
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1513, file: !33, line: 122, baseType: !1528, size: 64, offset: 384)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1530)
!1530 = !{!1531, !1554, !1555, !1558, !1563, !1564, !1572, !1576}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1529, file: !33, line: 160, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1534)
!1534 = !{!1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548, !1549, !1550, !1551, !1552}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1533, file: !33, line: 216, baseType: !421, size: 32)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1533, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1533, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1533, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1533, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1533, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1533, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1533, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1533, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1533, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1533, file: !33, line: 227, baseType: !201, size: 16, offset: 192)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1533, file: !33, line: 228, baseType: !201, size: 16, offset: 208)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1533, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1533, file: !33, line: 235, baseType: !1197, size: 64, offset: 256)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1533, file: !33, line: 236, baseType: !1526, size: 64, offset: 320)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1533, file: !33, line: 237, baseType: !1197, size: 64, offset: 384)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1533, file: !33, line: 238, baseType: !1526, size: 64, offset: 448)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1533, file: !33, line: 239, baseType: !1553, size: 4096, align: 512, offset: 512)
!1553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1529, size: 4096, align: 512, elements: !1298)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1529, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1529, file: !33, line: 162, baseType: !1556, size: 32, offset: 96)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !107, line: 32, baseType: !1557)
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !265, line: 96, baseType: !46)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1529, file: !33, line: 163, baseType: !1559, size: 32, offset: 128)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !436, line: 274, baseType: !1560)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !436, line: 274, size: 32, elements: !1561)
!1561 = !{!1562}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1560, file: !436, line: 274, baseType: !435, size: 32)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1529, file: !33, line: 164, baseType: !1526, size: 64, offset: 192)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1529, file: !33, line: 165, baseType: !1565, size: 128, offset: 256)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1517, line: 14, size: 128, elements: !1566)
!1566 = !{!1567}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1565, file: !1517, line: 15, baseType: !1568, size: 128)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !594, line: 26, size: 128, elements: !1569)
!1569 = !{!1570, !1571}
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1568, file: !594, line: 27, baseType: !696, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1568, file: !594, line: 28, baseType: !598, size: 64, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1529, file: !33, line: 166, baseType: !1573, size: 64, offset: 384)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!1197}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1529, file: !33, line: 167, baseType: !1197, size: 64, offset: 448)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1513, file: !33, line: 123, baseType: !189, size: 8, offset: 448)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1513, file: !33, line: 124, baseType: !189, size: 8, offset: 456)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1513, file: !33, line: 125, baseType: !189, size: 8, offset: 464)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1513, file: !33, line: 126, baseType: !189, size: 8, offset: 472)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1463, file: !38, line: 691, baseType: !393, size: 64, offset: 1152)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1463, file: !38, line: 692, baseType: !552, size: 256, offset: 1216)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1463, file: !38, line: 693, baseType: !1584, size: 192, offset: 1472)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1585, line: 41, baseType: !1586)
!1585 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1585, line: 37, size: 192, elements: !1587)
!1587 = !{!1588, !1589}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1586, file: !1585, line: 38, baseType: !161, size: 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1586, file: !1585, line: 39, baseType: !119, size: 128, offset: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1463, file: !38, line: 694, baseType: !1490, size: 64, offset: 1664)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1463, file: !38, line: 695, baseType: !181, size: 32, offset: 1728)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1463, file: !38, line: 696, baseType: !181, size: 32, offset: 1760)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1463, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1463, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1463, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1463, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1463, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1463, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1463, file: !38, line: 703, baseType: !587, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1463, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1463, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1463, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1463, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1463, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1463, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1463, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1463, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1463, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1463, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1463, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1463, file: !38, line: 715, baseType: !393, size: 64, offset: 2048)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1463, file: !38, line: 716, baseType: !393, size: 64, offset: 2112)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1463, file: !38, line: 717, baseType: !393, size: 64, offset: 2176)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1463, file: !38, line: 718, baseType: !393, size: 64, offset: 2240)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1463, file: !38, line: 720, baseType: !1616, size: 64, offset: 2304)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1618)
!1618 = !{!1619, !1620}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1617, file: !38, line: 633, baseType: !161, size: 32)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1617, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1463, file: !38, line: 721, baseType: !1622, size: 64, offset: 2368)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{null, !1319, !466}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1463, file: !38, line: 722, baseType: !1626, size: 64, offset: 2432)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !38, line: 722, flags: DIFlagFwdDecl)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1320, file: !26, line: 727, baseType: !1629, size: 64, offset: 4224)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1631)
!1631 = !{!1632, !1633, !1634, !1638, !1639, !1640}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1630, file: !38, line: 743, baseType: !1353, size: 1472)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1630, file: !38, line: 744, baseType: !1356, size: 64, offset: 1472)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1630, file: !38, line: 745, baseType: !1635, size: 64, offset: 1536)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{null, !1319, !587}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1630, file: !38, line: 746, baseType: !1356, size: 64, offset: 1600)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1630, file: !38, line: 747, baseType: !1347, size: 64, offset: 1664)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1630, file: !38, line: 748, baseType: !1347, size: 64, offset: 1728)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !1320, file: !26, line: 736, baseType: !1642, size: 128, offset: 4288)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1643)
!1643 = !{!1644, !1648}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1642, file: !26, line: 531, baseType: !1645, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1647, line: 13, flags: DIFlagFwdDecl)
!1647 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1642, file: !26, line: 532, baseType: !1649, size: 64, offset: 64)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1320, file: !26, line: 738, baseType: !1652, size: 64, offset: 4416)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1654)
!1654 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1320, file: !26, line: 740, baseType: !1656, size: 64, offset: 4480)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1320, file: !26, line: 741, baseType: !393, size: 64, offset: 4544)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1320, file: !26, line: 746, baseType: !393, size: 64, offset: 4608)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1320, file: !26, line: 747, baseType: !1660, size: 64, offset: 4672)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1662)
!1662 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1320, file: !26, line: 749, baseType: !1664, size: 64, offset: 4736)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1666)
!1666 = !{!1667, !1668, !1669}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1665, file: !26, line: 433, baseType: !7, size: 32)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1665, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1665, file: !26, line: 435, baseType: !105, size: 64, offset: 64)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1320, file: !26, line: 751, baseType: !119, size: 128, offset: 4800)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !1320, file: !26, line: 762, baseType: !1672, size: 64, offset: 4928)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1320, file: !26, line: 770, baseType: !1675, offset: 4992)
!1675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1676, line: 5, elements: !366)
!1676 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1320, file: !26, line: 772, baseType: !1678, size: 64, offset: 4992)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1680, line: 18, flags: DIFlagFwdDecl)
!1680 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1320, file: !26, line: 773, baseType: !1682, size: 64, offset: 5056)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1385, line: 22, flags: DIFlagFwdDecl)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !1320, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1320, file: !26, line: 778, baseType: !1686, size: 32, offset: 5152)
!1686 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !107, line: 21, baseType: !1687)
!1687 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !107, line: 18, baseType: !1071)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1320, file: !26, line: 779, baseType: !1071, size: 32, offset: 5184)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1320, file: !26, line: 781, baseType: !161, size: 32, offset: 5216)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1320, file: !26, line: 782, baseType: !119, size: 128, offset: 5248)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1320, file: !26, line: 784, baseType: !1692, size: 64, offset: 5376)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1694)
!1694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1695, line: 52, size: 768, elements: !1696)
!1695 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1696 = !{!1697, !1698, !1699, !1700, !1701, !1705, !1709, !1710, !1711, !1712, !1716, !1720}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1694, file: !1695, line: 53, baseType: !133, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1694, file: !1695, line: 55, baseType: !282, size: 64, offset: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1694, file: !1695, line: 56, baseType: !282, size: 64, offset: 128)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1694, file: !1695, line: 58, baseType: !1336, size: 64, offset: 192)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1694, file: !1695, line: 59, baseType: !1702, size: 64, offset: 256)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!231, !1339, !1345}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1694, file: !1695, line: 61, baseType: !1706, size: 64, offset: 320)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{null, !1692}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1694, file: !1695, line: 62, baseType: !1347, size: 64, offset: 384)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1694, file: !1695, line: 64, baseType: !1356, size: 64, offset: 448)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1694, file: !1695, line: 66, baseType: !627, size: 64, offset: 512)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1694, file: !1695, line: 67, baseType: !1713, size: 64, offset: 576)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!508, !1339}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1694, file: !1695, line: 69, baseType: !1717, size: 64, offset: 640)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{null, !1339, !662, !669}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1694, file: !1695, line: 71, baseType: !1351, size: 64, offset: 704)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1320, file: !26, line: 785, baseType: !282, size: 64, offset: 5440)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1320, file: !26, line: 787, baseType: !1347, size: 64, offset: 5504)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1320, file: !26, line: 788, baseType: !1724, size: 64, offset: 5568)
!1724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1725, size: 64)
!1725 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1320, file: !26, line: 789, baseType: !1727, size: 64, offset: 5632)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !1320, file: !26, line: 791, baseType: !1730, size: 64, offset: 5696)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1732)
!1732 = !{!1733, !1734, !1735, !1736, !1737}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1731, file: !26, line: 598, baseType: !53, size: 32)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1731, file: !26, line: 599, baseType: !62, size: 32, offset: 32)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1731, file: !26, line: 600, baseType: !67, size: 32, offset: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1731, file: !26, line: 601, baseType: !587, size: 8, offset: 96)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1731, file: !26, line: 602, baseType: !587, size: 8, offset: 104)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1320, file: !26, line: 793, baseType: !72, size: 32, offset: 5760)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1320, file: !26, line: 795, baseType: !587, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1320, file: !26, line: 796, baseType: !587, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1320, file: !26, line: 797, baseType: !587, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1320, file: !26, line: 798, baseType: !587, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !1320, file: !26, line: 799, baseType: !587, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1312, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1312, file: !26, line: 110, baseType: !1746, size: 64, offset: 192)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!263, !1319, !1744, !133, !278}
!1749 = !DIGlobalVariableExpression(var: !1750, expr: !DIExpression())
!1750 = distinct !DIGlobalVariable(scope: null, file: !3, line: 33, type: !1751, isLocal: true, isDefinition: true)
!1751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 32, elements: !468)
!1752 = !DIGlobalVariableExpression(var: !1753, expr: !DIExpression())
!1753 = distinct !DIGlobalVariable(scope: null, file: !3, line: 37, type: !1754, isLocal: true, isDefinition: true)
!1754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 16, elements: !943)
!1755 = !DIGlobalVariableExpression(var: !1756, expr: !DIExpression())
!1756 = distinct !DIGlobalVariable(scope: null, file: !3, line: 102, type: !1757, isLocal: true, isDefinition: true)
!1757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 120, elements: !1758)
!1758 = !{!1759}
!1759 = !DISubrange(count: 15)
!1760 = !DIGlobalVariableExpression(var: !1761, expr: !DIExpression())
!1761 = distinct !DIGlobalVariable(name: "dev_attr_current_driver", scope: !2, file: !3, line: 102, type: !1312, isLocal: true, isDefinition: true)
!1762 = !DIGlobalVariableExpression(var: !1763, expr: !DIExpression())
!1763 = distinct !DIGlobalVariable(scope: null, file: !3, line: 52, type: !1751, isLocal: true, isDefinition: true)
!1764 = !DIGlobalVariableExpression(var: !1765, expr: !DIExpression())
!1765 = distinct !DIGlobalVariable(scope: null, file: !3, line: 54, type: !1766, isLocal: true, isDefinition: true)
!1766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 48, elements: !1767)
!1767 = !{!1768}
!1768 = !DISubrange(count: 6)
!1769 = !DIGlobalVariableExpression(var: !1770, expr: !DIExpression())
!1770 = distinct !DIGlobalVariable(scope: null, file: !3, line: 103, type: !1771, isLocal: true, isDefinition: true)
!1771 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 136, elements: !1772)
!1772 = !{!1773}
!1773 = !DISubrange(count: 17)
!1774 = !DIGlobalVariableExpression(var: !1775, expr: !DIExpression())
!1775 = distinct !DIGlobalVariable(name: "dev_attr_current_governor", scope: !2, file: !3, line: 103, type: !1312, isLocal: true, isDefinition: true)
!1776 = !DIGlobalVariableExpression(var: !1777, expr: !DIExpression())
!1777 = distinct !DIGlobalVariable(scope: null, file: !3, line: 84, type: !1778, isLocal: true, isDefinition: true)
!1778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 40, elements: !1303)
!1779 = !DIGlobalVariableExpression(var: !1780, expr: !DIExpression())
!1780 = distinct !DIGlobalVariable(scope: null, file: !3, line: 105, type: !1307, isLocal: true, isDefinition: true)
!1781 = !DIGlobalVariableExpression(var: !1782, expr: !DIExpression())
!1782 = distinct !DIGlobalVariable(name: "dev_attr_current_governor_ro", scope: !2, file: !3, line: 105, type: !1312, isLocal: true, isDefinition: true)
!1783 = !DIGlobalVariableExpression(var: !1784, expr: !DIExpression())
!1784 = distinct !DIGlobalVariable(scope: null, file: !3, line: 496, type: !1297, isLocal: true, isDefinition: true)
!1785 = !DIGlobalVariableExpression(var: !1786, expr: !DIExpression())
!1786 = distinct !DIGlobalVariable(name: "ktype_state_cpuidle", scope: !2, file: !3, line: 457, type: !246, isLocal: true, isDefinition: true)
!1787 = !DIGlobalVariableExpression(var: !1788, expr: !DIExpression())
!1788 = distinct !DIGlobalVariable(name: "cpuidle_state_sysfs_ops", scope: !2, file: !3, line: 445, type: !255, isLocal: true, isDefinition: true)
!1789 = !DIGlobalVariableExpression(var: !1790, expr: !DIExpression())
!1790 = distinct !DIGlobalVariable(name: "cpuidle_state_default_groups", scope: !2, file: !3, line: 345, type: !1791, isLocal: true, isDefinition: true)
!1791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 128, elements: !943)
!1792 = !DIGlobalVariableExpression(var: !1793, expr: !DIExpression())
!1793 = distinct !DIGlobalVariable(name: "cpuidle_state_default_group", scope: !2, file: !3, line: 345, type: !284, isLocal: true, isDefinition: true)
!1794 = !DIGlobalVariableExpression(var: !1795, expr: !DIExpression())
!1795 = distinct !DIGlobalVariable(name: "cpuidle_state_default_attrs", scope: !2, file: !3, line: 330, type: !1796, isLocal: true, isDefinition: true)
!1796 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 832, elements: !1797)
!1797 = !{!1798}
!1798 = !DISubrange(count: 13)
!1799 = !DIGlobalVariableExpression(var: !1800, expr: !DIExpression())
!1800 = distinct !DIGlobalVariable(scope: null, file: !3, line: 317, type: !1778, isLocal: true, isDefinition: true)
!1801 = !DIGlobalVariableExpression(var: !1802, expr: !DIExpression())
!1802 = distinct !DIGlobalVariable(name: "attr_name", scope: !2, file: !3, line: 317, type: !1271, isLocal: true, isDefinition: true)
!1803 = !DIGlobalVariableExpression(var: !1804, expr: !DIExpression())
!1804 = distinct !DIGlobalVariable(scope: null, file: !3, line: 267, type: !1297, isLocal: true, isDefinition: true)
!1805 = !DIGlobalVariableExpression(var: !1806, expr: !DIExpression())
!1806 = distinct !DIGlobalVariable(scope: null, file: !3, line: 318, type: !1778, isLocal: true, isDefinition: true)
!1807 = !DIGlobalVariableExpression(var: !1808, expr: !DIExpression())
!1808 = distinct !DIGlobalVariable(name: "attr_desc", scope: !2, file: !3, line: 318, type: !1271, isLocal: true, isDefinition: true)
!1809 = !DIGlobalVariableExpression(var: !1810, expr: !DIExpression())
!1810 = distinct !DIGlobalVariable(scope: null, file: !3, line: 319, type: !1297, isLocal: true, isDefinition: true)
!1811 = !DIGlobalVariableExpression(var: !1812, expr: !DIExpression())
!1812 = distinct !DIGlobalVariable(name: "attr_latency", scope: !2, file: !3, line: 319, type: !1271, isLocal: true, isDefinition: true)
!1813 = !DIGlobalVariableExpression(var: !1814, expr: !DIExpression())
!1814 = distinct !DIGlobalVariable(scope: null, file: !3, line: 262, type: !1766, isLocal: true, isDefinition: true)
!1815 = !DIGlobalVariableExpression(var: !1816, expr: !DIExpression())
!1816 = distinct !DIGlobalVariable(scope: null, file: !1198, line: 154, type: !1817, isLocal: true, isDefinition: true)
!1817 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 176, elements: !1818)
!1818 = !{!1819}
!1819 = !DISubrange(count: 22)
!1820 = !DIGlobalVariableExpression(var: !1821, expr: !DIExpression())
!1821 = distinct !DIGlobalVariable(scope: null, file: !3, line: 320, type: !1822, isLocal: true, isDefinition: true)
!1822 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 80, elements: !1215)
!1823 = !DIGlobalVariableExpression(var: !1824, expr: !DIExpression())
!1824 = distinct !DIGlobalVariable(name: "attr_residency", scope: !2, file: !3, line: 320, type: !1271, isLocal: true, isDefinition: true)
!1825 = !DIGlobalVariableExpression(var: !1826, expr: !DIExpression())
!1826 = distinct !DIGlobalVariable(scope: null, file: !3, line: 321, type: !1766, isLocal: true, isDefinition: true)
!1827 = !DIGlobalVariableExpression(var: !1828, expr: !DIExpression())
!1828 = distinct !DIGlobalVariable(name: "attr_power", scope: !2, file: !3, line: 321, type: !1271, isLocal: true, isDefinition: true)
!1829 = !DIGlobalVariableExpression(var: !1830, expr: !DIExpression())
!1830 = distinct !DIGlobalVariable(scope: null, file: !3, line: 264, type: !1751, isLocal: true, isDefinition: true)
!1831 = !DIGlobalVariableExpression(var: !1832, expr: !DIExpression())
!1832 = distinct !DIGlobalVariable(scope: null, file: !3, line: 322, type: !1766, isLocal: true, isDefinition: true)
!1833 = !DIGlobalVariableExpression(var: !1834, expr: !DIExpression())
!1834 = distinct !DIGlobalVariable(name: "attr_usage", scope: !2, file: !3, line: 322, type: !1271, isLocal: true, isDefinition: true)
!1835 = !DIGlobalVariableExpression(var: !1836, expr: !DIExpression())
!1836 = distinct !DIGlobalVariable(scope: null, file: !3, line: 323, type: !1837, isLocal: true, isDefinition: true)
!1837 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 72, elements: !1838)
!1838 = !{!1839}
!1839 = !DISubrange(count: 9)
!1840 = !DIGlobalVariableExpression(var: !1841, expr: !DIExpression())
!1841 = distinct !DIGlobalVariable(name: "attr_rejected", scope: !2, file: !3, line: 323, type: !1271, isLocal: true, isDefinition: true)
!1842 = !DIGlobalVariableExpression(var: !1843, expr: !DIExpression())
!1843 = distinct !DIGlobalVariable(scope: null, file: !3, line: 324, type: !1778, isLocal: true, isDefinition: true)
!1844 = !DIGlobalVariableExpression(var: !1845, expr: !DIExpression())
!1845 = distinct !DIGlobalVariable(name: "attr_time", scope: !2, file: !3, line: 324, type: !1271, isLocal: true, isDefinition: true)
!1846 = !DIGlobalVariableExpression(var: !1847, expr: !DIExpression())
!1847 = distinct !DIGlobalVariable(scope: null, file: !3, line: 325, type: !1297, isLocal: true, isDefinition: true)
!1848 = !DIGlobalVariableExpression(var: !1849, expr: !DIExpression())
!1849 = distinct !DIGlobalVariable(name: "attr_disable", scope: !2, file: !3, line: 325, type: !1271, isLocal: true, isDefinition: true)
!1850 = !DIGlobalVariableExpression(var: !1851, expr: !DIExpression())
!1851 = distinct !DIGlobalVariable(scope: null, file: !3, line: 326, type: !1766, isLocal: true, isDefinition: true)
!1852 = !DIGlobalVariableExpression(var: !1853, expr: !DIExpression())
!1853 = distinct !DIGlobalVariable(name: "attr_above", scope: !2, file: !3, line: 326, type: !1271, isLocal: true, isDefinition: true)
!1854 = !DIGlobalVariableExpression(var: !1855, expr: !DIExpression())
!1855 = distinct !DIGlobalVariable(scope: null, file: !3, line: 327, type: !1766, isLocal: true, isDefinition: true)
!1856 = !DIGlobalVariableExpression(var: !1857, expr: !DIExpression())
!1857 = distinct !DIGlobalVariable(name: "attr_below", scope: !2, file: !3, line: 327, type: !1271, isLocal: true, isDefinition: true)
!1858 = !DIGlobalVariableExpression(var: !1859, expr: !DIExpression())
!1859 = distinct !DIGlobalVariable(scope: null, file: !3, line: 328, type: !1757, isLocal: true, isDefinition: true)
!1860 = !DIGlobalVariableExpression(var: !1861, expr: !DIExpression())
!1861 = distinct !DIGlobalVariable(name: "attr_default_status", scope: !2, file: !3, line: 328, type: !1271, isLocal: true, isDefinition: true)
!1862 = !DIGlobalVariableExpression(var: !1863, expr: !DIExpression())
!1863 = distinct !DIGlobalVariable(scope: null, file: !3, line: 314, type: !1837, isLocal: true, isDefinition: true)
!1864 = !DIGlobalVariableExpression(var: !1865, expr: !DIExpression())
!1865 = distinct !DIGlobalVariable(scope: null, file: !3, line: 314, type: !1297, isLocal: true, isDefinition: true)
!1866 = !DIGlobalVariableExpression(var: !1867, expr: !DIExpression())
!1867 = distinct !DIGlobalVariable(scope: null, file: !3, line: 381, type: !1868, isLocal: true, isDefinition: true)
!1868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 56, elements: !945)
!1869 = !DIGlobalVariableExpression(var: !1870, expr: !DIExpression())
!1870 = distinct !DIGlobalVariable(name: "cpuidle_state_s2idle_group", scope: !2, file: !3, line: 380, type: !284, isLocal: true, isDefinition: true)
!1871 = !DIGlobalVariableExpression(var: !1872, expr: !DIExpression())
!1872 = distinct !DIGlobalVariable(name: "cpuidle_state_s2idle_attrs", scope: !2, file: !3, line: 374, type: !1873, isLocal: true, isDefinition: true)
!1873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !268, size: 192, elements: !232)
!1874 = !DIGlobalVariableExpression(var: !1875, expr: !DIExpression())
!1875 = distinct !DIGlobalVariable(name: "attr_s2idle_usage", scope: !2, file: !3, line: 371, type: !1271, isLocal: true, isDefinition: true)
!1876 = !DIGlobalVariableExpression(var: !1877, expr: !DIExpression())
!1877 = distinct !DIGlobalVariable(name: "attr_s2idle_time", scope: !2, file: !3, line: 372, type: !1271, isLocal: true, isDefinition: true)
!1878 = !DIGlobalVariableExpression(var: !1879, expr: !DIExpression())
!1879 = distinct !DIGlobalVariable(scope: null, file: !95, line: 480, type: !1880, isLocal: true, isDefinition: true)
!1880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !115, size: 168, elements: !1881)
!1881 = !{!1882}
!1882 = !DISubrange(count: 21)
!1883 = !DIGlobalVariableExpression(var: !1884, expr: !DIExpression())
!1884 = distinct !DIGlobalVariable(name: "__key", scope: !1885, file: !813, line: 87, type: !1890, isLocal: true, isDefinition: true)
!1885 = distinct !DISubprogram(name: "init_completion", scope: !813, file: !813, line: 84, type: !1886, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1888)
!1886 = !DISubroutineType(types: !1887)
!1887 = !{null, !811}
!1888 = !{!1889}
!1889 = !DILocalVariable(name: "x", arg: 1, scope: !1885, file: !813, line: 84, type: !811)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1090, line: 206, elements: !366)
!1891 = !DIGlobalVariableExpression(var: !1892, expr: !DIExpression())
!1892 = distinct !DIGlobalVariable(scope: null, file: !813, line: 87, type: !1837, isLocal: true, isDefinition: true)
!1893 = !DIGlobalVariableExpression(var: !1894, expr: !DIExpression())
!1894 = distinct !DIGlobalVariable(name: "ktype_cpuidle", scope: !2, file: !3, line: 210, type: !246, isLocal: true, isDefinition: true)
!1895 = !DIGlobalVariableExpression(var: !1896, expr: !DIExpression())
!1896 = distinct !DIGlobalVariable(name: "cpuidle_sysfs_ops", scope: !2, file: !3, line: 197, type: !255, isLocal: true, isDefinition: true)
!1897 = !{i32 7, !"Dwarf Version", i32 5}
!1898 = !{i32 2, !"Debug Info Version", i32 3}
!1899 = !{i32 1, !"wchar_size", i32 2}
!1900 = !{i32 8, !"cf-protection-branch", i32 1}
!1901 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1902 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1903 = !{i32 1, !"Code Model", i32 2}
!1904 = !{i32 1, !"override-stack-alignment", i32 8}
!1905 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1906 = distinct !DISubprogram(name: "cpuidle_add_interface", scope: !3, file: !3, line: 123, type: !925, scopeLine: 124, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1907)
!1907 = !{!1908, !1909}
!1908 = !DILocalVariable(name: "dev_root", scope: !1906, file: !3, line: 125, type: !1319)
!1909 = !DILocalVariable(name: "retval", scope: !1906, file: !3, line: 126, type: !46)
!1910 = !DILocation(line: 125, column: 2, scope: !1906)
!1911 = !DILocation(line: 125, column: 17, scope: !1906)
!1912 = !DILocation(line: 125, column: 28, scope: !1906)
!1913 = !DILocation(line: 126, column: 2, scope: !1906)
!1914 = !DILocation(line: 126, column: 6, scope: !1906)
!1915 = !DILocation(line: 128, column: 7, scope: !1916)
!1916 = distinct !DILexicalBlock(scope: !1906, file: !3, line: 128, column: 6)
!1917 = !DILocation(line: 128, column: 6, scope: !1906)
!1918 = !DILocation(line: 129, column: 3, scope: !1916)
!1919 = !DILocation(line: 131, column: 31, scope: !1906)
!1920 = !DILocation(line: 131, column: 41, scope: !1906)
!1921 = !DILocation(line: 131, column: 11, scope: !1906)
!1922 = !DILocation(line: 131, column: 9, scope: !1906)
!1923 = !DILocation(line: 132, column: 13, scope: !1906)
!1924 = !DILocation(line: 132, column: 2, scope: !1906)
!1925 = !DILocation(line: 133, column: 9, scope: !1906)
!1926 = !DILocation(line: 133, column: 2, scope: !1906)
!1927 = !DILocation(line: 134, column: 1, scope: !1906)
!1928 = !DISubprogram(name: "bus_get_dev_root", scope: !1385, file: !1385, line: 280, type: !1929, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!1319, !1382}
!1931 = !DISubprogram(name: "sysfs_create_group", scope: !257, file: !257, line: 307, type: !1932, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{!46, !154, !283}
!1934 = !DISubprogram(name: "put_device", scope: !26, file: !26, line: 1231, type: !1348, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1935 = distinct !DISubprogram(name: "cpuidle_remove_interface", scope: !3, file: !3, line: 140, type: !1348, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1936)
!1936 = !{!1937}
!1937 = !DILocalVariable(name: "dev", arg: 1, scope: !1935, file: !3, line: 140, type: !1319)
!1938 = !DILocation(line: 140, column: 46, scope: !1935)
!1939 = !DILocation(line: 142, column: 22, scope: !1935)
!1940 = !DILocation(line: 142, column: 27, scope: !1935)
!1941 = !DILocation(line: 142, column: 2, scope: !1935)
!1942 = !DILocation(line: 143, column: 1, scope: !1935)
!1943 = !DISubprogram(name: "sysfs_remove_group", scope: !257, file: !257, line: 315, type: !1944, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1944 = !DISubroutineType(types: !1945)
!1945 = !{null, !154, !283}
!1946 = distinct !DISubprogram(name: "cpuidle_add_device_sysfs", scope: !3, file: !3, line: 669, type: !1947, scopeLine: 670, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1949)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!46, !1189}
!1949 = !{!1950, !1951}
!1950 = !DILocalVariable(name: "device", arg: 1, scope: !1946, file: !3, line: 669, type: !1189)
!1951 = !DILocalVariable(name: "ret", scope: !1946, file: !3, line: 671, type: !46)
!1952 = !DILocation(line: 669, column: 53, scope: !1946)
!1953 = !DILocation(line: 671, column: 2, scope: !1946)
!1954 = !DILocation(line: 671, column: 6, scope: !1946)
!1955 = !DILocation(line: 673, column: 32, scope: !1946)
!1956 = !DILocation(line: 673, column: 8, scope: !1946)
!1957 = !DILocation(line: 673, column: 6, scope: !1946)
!1958 = !DILocation(line: 674, column: 6, scope: !1959)
!1959 = distinct !DILexicalBlock(scope: !1946, file: !3, line: 674, column: 6)
!1960 = !DILocation(line: 674, column: 6, scope: !1946)
!1961 = !DILocation(line: 675, column: 10, scope: !1959)
!1962 = !DILocation(line: 675, column: 3, scope: !1959)
!1963 = !DILocation(line: 677, column: 33, scope: !1946)
!1964 = !DILocation(line: 677, column: 8, scope: !1946)
!1965 = !DILocation(line: 677, column: 6, scope: !1946)
!1966 = !DILocation(line: 678, column: 6, scope: !1967)
!1967 = distinct !DILexicalBlock(scope: !1946, file: !3, line: 678, column: 6)
!1968 = !DILocation(line: 678, column: 6, scope: !1946)
!1969 = !DILocation(line: 679, column: 30, scope: !1967)
!1970 = !DILocation(line: 679, column: 3, scope: !1967)
!1971 = !DILocation(line: 680, column: 9, scope: !1946)
!1972 = !DILocation(line: 680, column: 2, scope: !1946)
!1973 = !DILocation(line: 681, column: 1, scope: !1946)
!1974 = distinct !DISubprogram(name: "cpuidle_add_state_sysfs", scope: !3, file: !3, line: 476, type: !1947, scopeLine: 477, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1975)
!1975 = !{!1976, !1977, !1978, !1979, !1980, !1981, !1982}
!1976 = !DILocalVariable(name: "device", arg: 1, scope: !1974, file: !3, line: 476, type: !1189)
!1977 = !DILocalVariable(name: "i", scope: !1974, file: !3, line: 478, type: !46)
!1978 = !DILocalVariable(name: "ret", scope: !1974, file: !3, line: 478, type: !46)
!1979 = !DILocalVariable(name: "kobj", scope: !1974, file: !3, line: 479, type: !1219)
!1980 = !DILocalVariable(name: "kdev", scope: !1974, file: !3, line: 480, type: !1233)
!1981 = !DILocalVariable(name: "drv", scope: !1974, file: !3, line: 481, type: !129)
!1982 = !DILabel(scope: !1974, name: "error_state", file: !3, line: 509)
!1983 = !DILocation(line: 476, column: 59, scope: !1974)
!1984 = !DILocation(line: 478, column: 2, scope: !1974)
!1985 = !DILocation(line: 478, column: 6, scope: !1974)
!1986 = !DILocation(line: 478, column: 9, scope: !1974)
!1987 = !DILocation(line: 479, column: 2, scope: !1974)
!1988 = !DILocation(line: 479, column: 29, scope: !1974)
!1989 = !DILocation(line: 480, column: 2, scope: !1974)
!1990 = !DILocation(line: 480, column: 30, scope: !1974)
!1991 = !DILocation(line: 480, column: 37, scope: !1974)
!1992 = !DILocation(line: 480, column: 45, scope: !1974)
!1993 = !DILocation(line: 481, column: 2, scope: !1974)
!1994 = !DILocation(line: 481, column: 25, scope: !1974)
!1995 = !DILocation(line: 481, column: 54, scope: !1974)
!1996 = !DILocation(line: 481, column: 31, scope: !1974)
!1997 = !DILocation(line: 484, column: 9, scope: !1998)
!1998 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 484, column: 2)
!1999 = !DILocation(line: 484, column: 7, scope: !1998)
!2000 = !DILocation(line: 484, column: 14, scope: !2001)
!2001 = distinct !DILexicalBlock(scope: !1998, file: !3, line: 484, column: 2)
!2002 = !DILocation(line: 484, column: 18, scope: !2001)
!2003 = !DILocation(line: 484, column: 23, scope: !2001)
!2004 = !DILocation(line: 484, column: 16, scope: !2001)
!2005 = !DILocation(line: 484, column: 2, scope: !1998)
!2006 = !DILocation(line: 485, column: 10, scope: !2007)
!2007 = distinct !DILexicalBlock(scope: !2001, file: !3, line: 484, column: 41)
!2008 = !DILocation(line: 485, column: 8, scope: !2007)
!2009 = !DILocation(line: 486, column: 8, scope: !2010)
!2010 = distinct !DILexicalBlock(scope: !2007, file: !3, line: 486, column: 7)
!2011 = !DILocation(line: 486, column: 7, scope: !2007)
!2012 = !DILocation(line: 487, column: 8, scope: !2013)
!2013 = distinct !DILexicalBlock(scope: !2010, file: !3, line: 486, column: 14)
!2014 = !DILocation(line: 488, column: 4, scope: !2013)
!2015 = !DILocation(line: 490, column: 18, scope: !2007)
!2016 = !DILocation(line: 490, column: 23, scope: !2007)
!2017 = !DILocation(line: 490, column: 30, scope: !2007)
!2018 = !DILocation(line: 490, column: 3, scope: !2007)
!2019 = !DILocation(line: 490, column: 9, scope: !2007)
!2020 = !DILocation(line: 490, column: 15, scope: !2007)
!2021 = !DILocation(line: 491, column: 24, scope: !2007)
!2022 = !DILocation(line: 491, column: 32, scope: !2007)
!2023 = !DILocation(line: 491, column: 45, scope: !2007)
!2024 = !DILocation(line: 491, column: 3, scope: !2007)
!2025 = !DILocation(line: 491, column: 9, scope: !2007)
!2026 = !DILocation(line: 491, column: 21, scope: !2007)
!2027 = !DILocation(line: 492, column: 18, scope: !2007)
!2028 = !DILocation(line: 492, column: 3, scope: !2007)
!2029 = !DILocation(line: 492, column: 9, scope: !2007)
!2030 = !DILocation(line: 492, column: 16, scope: !2007)
!2031 = !DILocation(line: 493, column: 20, scope: !2007)
!2032 = !DILocation(line: 493, column: 26, scope: !2007)
!2033 = !DILocation(line: 493, column: 3, scope: !2007)
!2034 = !DILocation(line: 495, column: 31, scope: !2007)
!2035 = !DILocation(line: 495, column: 37, scope: !2007)
!2036 = !DILocation(line: 496, column: 10, scope: !2007)
!2037 = !DILocation(line: 496, column: 16, scope: !2007)
!2038 = !DILocation(line: 496, column: 33, scope: !2007)
!2039 = !DILocation(line: 495, column: 9, scope: !2007)
!2040 = !DILocation(line: 495, column: 7, scope: !2007)
!2041 = !DILocation(line: 497, column: 7, scope: !2042)
!2042 = distinct !DILexicalBlock(scope: !2007, file: !3, line: 497, column: 7)
!2043 = !DILocation(line: 497, column: 7, scope: !2007)
!2044 = !DILocation(line: 498, column: 17, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2042, file: !3, line: 497, column: 12)
!2046 = !DILocation(line: 498, column: 23, scope: !2045)
!2047 = !DILocation(line: 498, column: 4, scope: !2045)
!2048 = !DILocation(line: 499, column: 10, scope: !2045)
!2049 = !DILocation(line: 499, column: 4, scope: !2045)
!2050 = !DILocation(line: 500, column: 4, scope: !2045)
!2051 = !DILocation(line: 502, column: 33, scope: !2007)
!2052 = !DILocation(line: 502, column: 3, scope: !2007)
!2053 = !DILocation(line: 503, column: 19, scope: !2007)
!2054 = !DILocation(line: 503, column: 25, scope: !2007)
!2055 = !DILocation(line: 503, column: 3, scope: !2007)
!2056 = !DILocation(line: 504, column: 22, scope: !2007)
!2057 = !DILocation(line: 504, column: 3, scope: !2007)
!2058 = !DILocation(line: 504, column: 11, scope: !2007)
!2059 = !DILocation(line: 504, column: 17, scope: !2007)
!2060 = !DILocation(line: 504, column: 20, scope: !2007)
!2061 = !DILocation(line: 505, column: 2, scope: !2007)
!2062 = !DILocation(line: 484, column: 37, scope: !2001)
!2063 = !DILocation(line: 484, column: 2, scope: !2001)
!2064 = distinct !{!2064, !2005, !2065, !2066, !2067}
!2065 = !DILocation(line: 505, column: 2, scope: !1998)
!2066 = !{!"llvm.loop.mustprogress"}
!2067 = !{!"llvm.loop.unroll.disable"}
!2068 = !DILocation(line: 507, column: 2, scope: !1974)
!2069 = !DILocation(line: 509, column: 1, scope: !1974)
!2070 = !DILocation(line: 510, column: 11, scope: !2071)
!2071 = distinct !DILexicalBlock(scope: !1974, file: !3, line: 510, column: 2)
!2072 = !DILocation(line: 510, column: 13, scope: !2071)
!2073 = !DILocation(line: 510, column: 9, scope: !2071)
!2074 = !DILocation(line: 510, column: 7, scope: !2071)
!2075 = !DILocation(line: 510, column: 18, scope: !2076)
!2076 = distinct !DILexicalBlock(scope: !2071, file: !3, line: 510, column: 2)
!2077 = !DILocation(line: 510, column: 20, scope: !2076)
!2078 = !DILocation(line: 510, column: 2, scope: !2071)
!2079 = !DILocation(line: 511, column: 27, scope: !2076)
!2080 = !DILocation(line: 511, column: 35, scope: !2076)
!2081 = !DILocation(line: 511, column: 3, scope: !2076)
!2082 = !DILocation(line: 510, column: 27, scope: !2076)
!2083 = !DILocation(line: 510, column: 2, scope: !2076)
!2084 = distinct !{!2084, !2078, !2085, !2066, !2067}
!2085 = !DILocation(line: 511, column: 36, scope: !2071)
!2086 = !DILocation(line: 512, column: 9, scope: !1974)
!2087 = !DILocation(line: 512, column: 2, scope: !1974)
!2088 = !DILocation(line: 513, column: 1, scope: !1974)
!2089 = distinct !DISubprogram(name: "cpuidle_add_driver_sysfs", scope: !3, file: !3, line: 654, type: !1947, scopeLine: 655, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2090)
!2090 = !{!2091}
!2091 = !DILocalVariable(name: "dev", arg: 1, scope: !2089, file: !3, line: 654, type: !1189)
!2092 = !DILocation(line: 654, column: 67, scope: !2089)
!2093 = !DILocation(line: 656, column: 2, scope: !2089)
!2094 = distinct !DISubprogram(name: "cpuidle_remove_state_sysfs", scope: !3, file: !3, line: 519, type: !2095, scopeLine: 520, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2097)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{null, !1189}
!2097 = !{!2098, !2099, !2100}
!2098 = !DILocalVariable(name: "device", arg: 1, scope: !2094, file: !3, line: 519, type: !1189)
!2099 = !DILocalVariable(name: "drv", scope: !2094, file: !3, line: 521, type: !129)
!2100 = !DILocalVariable(name: "i", scope: !2094, file: !3, line: 522, type: !46)
!2101 = !DILocation(line: 519, column: 63, scope: !2094)
!2102 = !DILocation(line: 521, column: 2, scope: !2094)
!2103 = !DILocation(line: 521, column: 25, scope: !2094)
!2104 = !DILocation(line: 521, column: 54, scope: !2094)
!2105 = !DILocation(line: 521, column: 31, scope: !2094)
!2106 = !DILocation(line: 522, column: 2, scope: !2094)
!2107 = !DILocation(line: 522, column: 6, scope: !2094)
!2108 = !DILocation(line: 524, column: 9, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2094, file: !3, line: 524, column: 2)
!2110 = !DILocation(line: 524, column: 7, scope: !2109)
!2111 = !DILocation(line: 524, column: 14, scope: !2112)
!2112 = distinct !DILexicalBlock(scope: !2109, file: !3, line: 524, column: 2)
!2113 = !DILocation(line: 524, column: 18, scope: !2112)
!2114 = !DILocation(line: 524, column: 23, scope: !2112)
!2115 = !DILocation(line: 524, column: 16, scope: !2112)
!2116 = !DILocation(line: 524, column: 2, scope: !2109)
!2117 = !DILocation(line: 525, column: 27, scope: !2112)
!2118 = !DILocation(line: 525, column: 35, scope: !2112)
!2119 = !DILocation(line: 525, column: 3, scope: !2112)
!2120 = !DILocation(line: 524, column: 37, scope: !2112)
!2121 = !DILocation(line: 524, column: 2, scope: !2112)
!2122 = distinct !{!2122, !2116, !2123, !2066, !2067}
!2123 = !DILocation(line: 525, column: 36, scope: !2109)
!2124 = !DILocation(line: 526, column: 1, scope: !2094)
!2125 = distinct !DISubprogram(name: "cpuidle_remove_device_sysfs", scope: !3, file: !3, line: 687, type: !2095, scopeLine: 688, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2126)
!2126 = !{!2127}
!2127 = !DILocalVariable(name: "device", arg: 1, scope: !2125, file: !3, line: 687, type: !1189)
!2128 = !DILocation(line: 687, column: 57, scope: !2125)
!2129 = !DILocation(line: 689, column: 30, scope: !2125)
!2130 = !DILocation(line: 689, column: 2, scope: !2125)
!2131 = !DILocation(line: 690, column: 29, scope: !2125)
!2132 = !DILocation(line: 690, column: 2, scope: !2125)
!2133 = !DILocation(line: 691, column: 1, scope: !2125)
!2134 = distinct !DISubprogram(name: "cpuidle_remove_driver_sysfs", scope: !3, file: !3, line: 659, type: !2095, scopeLine: 660, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2135)
!2135 = !{!2136}
!2136 = !DILocalVariable(name: "dev", arg: 1, scope: !2134, file: !3, line: 659, type: !1189)
!2137 = !DILocation(line: 659, column: 71, scope: !2134)
!2138 = !DILocation(line: 662, column: 1, scope: !2134)
!2139 = distinct !DISubprogram(name: "cpuidle_add_sysfs", scope: !3, file: !3, line: 697, type: !1947, scopeLine: 698, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2140)
!2140 = !{!2141, !2142, !2143, !2144}
!2141 = !DILocalVariable(name: "dev", arg: 1, scope: !2139, file: !3, line: 697, type: !1189)
!2142 = !DILocalVariable(name: "kdev", scope: !2139, file: !3, line: 699, type: !1233)
!2143 = !DILocalVariable(name: "cpu_dev", scope: !2139, file: !3, line: 700, type: !1319)
!2144 = !DILocalVariable(name: "error", scope: !2139, file: !3, line: 701, type: !46)
!2145 = !DILocation(line: 697, column: 46, scope: !2139)
!2146 = !DILocation(line: 699, column: 2, scope: !2139)
!2147 = !DILocation(line: 699, column: 30, scope: !2139)
!2148 = !DILocation(line: 700, column: 2, scope: !2139)
!2149 = !DILocation(line: 700, column: 17, scope: !2139)
!2150 = !DILocation(line: 700, column: 57, scope: !2139)
!2151 = !DILocation(line: 700, column: 62, scope: !2139)
!2152 = !DILocation(line: 700, column: 42, scope: !2139)
!2153 = !DILocation(line: 700, column: 27, scope: !2139)
!2154 = !DILocation(line: 701, column: 2, scope: !2139)
!2155 = !DILocation(line: 701, column: 6, scope: !2139)
!2156 = !DILocation(line: 712, column: 7, scope: !2157)
!2157 = distinct !DILexicalBlock(scope: !2139, file: !3, line: 712, column: 6)
!2158 = !DILocation(line: 712, column: 6, scope: !2139)
!2159 = !DILocation(line: 713, column: 3, scope: !2157)
!2160 = !DILocation(line: 715, column: 9, scope: !2139)
!2161 = !DILocation(line: 715, column: 7, scope: !2139)
!2162 = !DILocation(line: 716, column: 7, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2139, file: !3, line: 716, column: 6)
!2164 = !DILocation(line: 716, column: 6, scope: !2139)
!2165 = !DILocation(line: 717, column: 3, scope: !2163)
!2166 = !DILocation(line: 718, column: 14, scope: !2139)
!2167 = !DILocation(line: 718, column: 2, scope: !2139)
!2168 = !DILocation(line: 718, column: 8, scope: !2139)
!2169 = !DILocation(line: 718, column: 12, scope: !2139)
!2170 = !DILocation(line: 720, column: 19, scope: !2139)
!2171 = !DILocation(line: 720, column: 25, scope: !2139)
!2172 = !DILocation(line: 720, column: 2, scope: !2139)
!2173 = !DILocation(line: 722, column: 32, scope: !2139)
!2174 = !DILocation(line: 722, column: 38, scope: !2139)
!2175 = !DILocation(line: 722, column: 61, scope: !2139)
!2176 = !DILocation(line: 722, column: 70, scope: !2139)
!2177 = !DILocation(line: 722, column: 10, scope: !2139)
!2178 = !DILocation(line: 722, column: 8, scope: !2139)
!2179 = !DILocation(line: 724, column: 6, scope: !2180)
!2180 = distinct !DILexicalBlock(scope: !2139, file: !3, line: 724, column: 6)
!2181 = !DILocation(line: 724, column: 6, scope: !2139)
!2182 = !DILocation(line: 725, column: 16, scope: !2183)
!2183 = distinct !DILexicalBlock(scope: !2180, file: !3, line: 724, column: 13)
!2184 = !DILocation(line: 725, column: 22, scope: !2183)
!2185 = !DILocation(line: 725, column: 3, scope: !2183)
!2186 = !DILocation(line: 726, column: 9, scope: !2183)
!2187 = !DILocation(line: 726, column: 3, scope: !2183)
!2188 = !DILocation(line: 727, column: 10, scope: !2183)
!2189 = !DILocation(line: 727, column: 3, scope: !2183)
!2190 = !DILocation(line: 730, column: 18, scope: !2139)
!2191 = !DILocation(line: 730, column: 2, scope: !2139)
!2192 = !DILocation(line: 730, column: 7, scope: !2139)
!2193 = !DILocation(line: 730, column: 16, scope: !2139)
!2194 = !DILocation(line: 731, column: 18, scope: !2139)
!2195 = !DILocation(line: 731, column: 24, scope: !2139)
!2196 = !DILocation(line: 731, column: 2, scope: !2139)
!2197 = !DILocation(line: 733, column: 2, scope: !2139)
!2198 = !DILocation(line: 734, column: 1, scope: !2139)
!2199 = !DISubprogram(name: "get_cpu_device", scope: !2200, file: !2200, line: 39, type: !2201, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2200 = !DIFile(filename: "./include/linux/cpu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0e98a436f4fa7012c18704596232d471")
!2201 = !DISubroutineType(types: !2202)
!2202 = !{!1319, !7}
!2203 = distinct !DISubprogram(name: "kzalloc", scope: !95, file: !95, line: 719, type: !2204, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2206)
!2204 = !DISubroutineType(types: !2205)
!2205 = !{!108, !278, !106}
!2206 = !{!2207, !2208}
!2207 = !DILocalVariable(name: "size", arg: 1, scope: !2203, file: !95, line: 719, type: !278)
!2208 = !DILocalVariable(name: "flags", arg: 2, scope: !2203, file: !95, line: 719, type: !106)
!2209 = !DILocation(line: 719, column: 52, scope: !2203)
!2210 = !DILocation(line: 719, column: 64, scope: !2203)
!2211 = !DILocation(line: 721, column: 17, scope: !2203)
!2212 = !DILocation(line: 721, column: 23, scope: !2203)
!2213 = !DILocation(line: 721, column: 29, scope: !2203)
!2214 = !DILocation(line: 721, column: 9, scope: !2203)
!2215 = !DILocation(line: 721, column: 2, scope: !2203)
!2216 = !DILocation(line: 84, column: 55, scope: !1885)
!2217 = !DILocation(line: 86, column: 2, scope: !1885)
!2218 = !DILocation(line: 86, column: 5, scope: !1885)
!2219 = !DILocation(line: 86, column: 10, scope: !1885)
!2220 = !DILocation(line: 87, column: 2, scope: !1885)
!2221 = !DILocation(line: 87, column: 2, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !1885, file: !813, line: 87, column: 2)
!2223 = !DILocation(line: 88, column: 1, scope: !1885)
!2224 = !DISubprogram(name: "kobject_init_and_add", scope: !79, file: !79, line: 96, type: !2225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!46, !154, !245, !154, !133, null}
!2227 = !DISubprogram(name: "kobject_put", scope: !79, file: !79, line: 110, type: !251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2228 = !DISubprogram(name: "kfree", scope: !95, file: !95, line: 227, type: !2229, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{null, !508}
!2231 = !DISubprogram(name: "kobject_uevent", scope: !79, file: !79, line: 214, type: !2232, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2232 = !DISubroutineType(types: !2233)
!2233 = !{!46, !154, !78}
!2234 = distinct !DISubprogram(name: "cpuidle_remove_sysfs", scope: !3, file: !3, line: 740, type: !2095, scopeLine: 741, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2235)
!2235 = !{!2236, !2237}
!2236 = !DILocalVariable(name: "dev", arg: 1, scope: !2234, file: !3, line: 740, type: !1189)
!2237 = !DILocalVariable(name: "kdev", scope: !2234, file: !3, line: 742, type: !1233)
!2238 = !DILocation(line: 740, column: 50, scope: !2234)
!2239 = !DILocation(line: 742, column: 2, scope: !2234)
!2240 = !DILocation(line: 742, column: 30, scope: !2234)
!2241 = !DILocation(line: 742, column: 37, scope: !2234)
!2242 = !DILocation(line: 742, column: 42, scope: !2234)
!2243 = !DILocation(line: 744, column: 15, scope: !2234)
!2244 = !DILocation(line: 744, column: 21, scope: !2234)
!2245 = !DILocation(line: 744, column: 2, scope: !2234)
!2246 = !DILocation(line: 745, column: 23, scope: !2234)
!2247 = !DILocation(line: 745, column: 29, scope: !2234)
!2248 = !DILocation(line: 745, column: 2, scope: !2234)
!2249 = !DILocation(line: 746, column: 8, scope: !2234)
!2250 = !DILocation(line: 746, column: 2, scope: !2234)
!2251 = !DILocation(line: 747, column: 1, scope: !2234)
!2252 = !DISubprogram(name: "wait_for_completion", scope: !813, file: !813, line: 102, type: !1886, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2253 = distinct !DISubprogram(name: "show_available_governors", scope: !3, file: !3, line: 21, type: !1317, scopeLine: 24, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2254)
!2254 = !{!2255, !2256, !2257, !2258, !2259, !2260, !2263, !2266}
!2255 = !DILocalVariable(name: "dev", arg: 1, scope: !2253, file: !3, line: 21, type: !1319)
!2256 = !DILocalVariable(name: "attr", arg: 2, scope: !2253, file: !3, line: 22, type: !1744)
!2257 = !DILocalVariable(name: "buf", arg: 3, scope: !2253, file: !3, line: 23, type: !231)
!2258 = !DILocalVariable(name: "i", scope: !2253, file: !3, line: 25, type: !263)
!2259 = !DILocalVariable(name: "tmp", scope: !2253, file: !3, line: 26, type: !109)
!2260 = !DILocalVariable(name: "__mptr", scope: !2261, file: !3, line: 29, type: !108)
!2261 = distinct !DILexicalBlock(scope: !2262, file: !3, line: 29, column: 2)
!2262 = distinct !DILexicalBlock(scope: !2253, file: !3, line: 29, column: 2)
!2263 = !DILocalVariable(name: "__mptr", scope: !2264, file: !3, line: 29, type: !108)
!2264 = distinct !DILexicalBlock(scope: !2265, file: !3, line: 29, column: 2)
!2265 = distinct !DILexicalBlock(scope: !2262, file: !3, line: 29, column: 2)
!2266 = !DILabel(scope: !2253, name: "out", file: !3, line: 36)
!2267 = !DILocation(line: 21, column: 56, scope: !2253)
!2268 = !DILocation(line: 22, column: 31, scope: !2253)
!2269 = !DILocation(line: 23, column: 12, scope: !2253)
!2270 = !DILocation(line: 25, column: 2, scope: !2253)
!2271 = !DILocation(line: 25, column: 10, scope: !2253)
!2272 = !DILocation(line: 26, column: 2, scope: !2253)
!2273 = !DILocation(line: 26, column: 27, scope: !2253)
!2274 = !DILocation(line: 28, column: 2, scope: !2253)
!2275 = !DILocation(line: 29, column: 2, scope: !2261)
!2276 = !DILocation(line: 29, column: 2, scope: !2262)
!2277 = !DILocation(line: 29, column: 2, scope: !2265)
!2278 = !DILocation(line: 30, column: 7, scope: !2279)
!2279 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 30, column: 7)
!2280 = distinct !DILexicalBlock(scope: !2265, file: !3, line: 29, column: 62)
!2281 = !DILocation(line: 30, column: 9, scope: !2279)
!2282 = !DILocation(line: 30, column: 7, scope: !2280)
!2283 = !DILocation(line: 31, column: 4, scope: !2279)
!2284 = !DILocation(line: 33, column: 19, scope: !2280)
!2285 = !DILocation(line: 33, column: 23, scope: !2280)
!2286 = !DILocation(line: 33, column: 56, scope: !2280)
!2287 = !DILocation(line: 33, column: 61, scope: !2280)
!2288 = !DILocation(line: 33, column: 8, scope: !2280)
!2289 = !DILocation(line: 33, column: 5, scope: !2280)
!2290 = !DILocation(line: 34, column: 2, scope: !2280)
!2291 = !DILocation(line: 29, column: 2, scope: !2264)
!2292 = distinct !{!2292, !2276, !2293, !2066, !2067}
!2293 = !DILocation(line: 34, column: 2, scope: !2262)
!2294 = !DILocation(line: 36, column: 1, scope: !2253)
!2295 = !DILocation(line: 37, column: 15, scope: !2253)
!2296 = !DILocation(line: 37, column: 19, scope: !2253)
!2297 = !DILocation(line: 37, column: 6, scope: !2253)
!2298 = !DILocation(line: 37, column: 3, scope: !2253)
!2299 = !DILocation(line: 38, column: 2, scope: !2253)
!2300 = !DILocation(line: 39, column: 9, scope: !2253)
!2301 = !DILocation(line: 40, column: 1, scope: !2253)
!2302 = !DILocation(line: 39, column: 2, scope: !2253)
!2303 = !DISubprogram(name: "mutex_lock", scope: !488, file: !488, line: 227, type: !2304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2304 = !DISubroutineType(types: !2305)
!2305 = !{null, !2306}
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !487, size: 64)
!2307 = !DISubprogram(name: "scnprintf", scope: !2308, file: !2308, line: 14, type: !2309, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2308 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!46, !231, !278, !133, null}
!2311 = !DISubprogram(name: "sprintf", scope: !2308, file: !2308, line: 10, type: !2312, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2312 = !DISubroutineType(types: !2313)
!2313 = !{!46, !231, !133, null}
!2314 = !DISubprogram(name: "mutex_unlock", scope: !488, file: !488, line: 246, type: !2304, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2315 = distinct !DISubprogram(name: "show_current_driver", scope: !3, file: !3, line: 42, type: !1317, scopeLine: 45, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2316)
!2316 = !{!2317, !2318, !2319, !2320, !2321}
!2317 = !DILocalVariable(name: "dev", arg: 1, scope: !2315, file: !3, line: 42, type: !1319)
!2318 = !DILocalVariable(name: "attr", arg: 2, scope: !2315, file: !3, line: 43, type: !1744)
!2319 = !DILocalVariable(name: "buf", arg: 3, scope: !2315, file: !3, line: 44, type: !231)
!2320 = !DILocalVariable(name: "ret", scope: !2315, file: !3, line: 46, type: !263)
!2321 = !DILocalVariable(name: "drv", scope: !2315, file: !3, line: 47, type: !129)
!2322 = !DILocation(line: 42, column: 51, scope: !2315)
!2323 = !DILocation(line: 43, column: 33, scope: !2315)
!2324 = !DILocation(line: 44, column: 14, scope: !2315)
!2325 = !DILocation(line: 46, column: 2, scope: !2315)
!2326 = !DILocation(line: 46, column: 10, scope: !2315)
!2327 = !DILocation(line: 47, column: 2, scope: !2315)
!2328 = !DILocation(line: 47, column: 25, scope: !2315)
!2329 = !DILocation(line: 49, column: 2, scope: !2315)
!2330 = !DILocation(line: 50, column: 8, scope: !2315)
!2331 = !DILocation(line: 50, column: 6, scope: !2315)
!2332 = !DILocation(line: 51, column: 6, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 51, column: 6)
!2334 = !DILocation(line: 51, column: 6, scope: !2315)
!2335 = !DILocation(line: 52, column: 17, scope: !2333)
!2336 = !DILocation(line: 52, column: 30, scope: !2333)
!2337 = !DILocation(line: 52, column: 35, scope: !2333)
!2338 = !DILocation(line: 52, column: 9, scope: !2333)
!2339 = !DILocation(line: 52, column: 7, scope: !2333)
!2340 = !DILocation(line: 52, column: 3, scope: !2333)
!2341 = !DILocation(line: 54, column: 17, scope: !2333)
!2342 = !DILocation(line: 54, column: 9, scope: !2333)
!2343 = !DILocation(line: 54, column: 7, scope: !2333)
!2344 = !DILocation(line: 55, column: 2, scope: !2315)
!2345 = !DILocation(line: 57, column: 9, scope: !2315)
!2346 = !DILocation(line: 58, column: 1, scope: !2315)
!2347 = !DILocation(line: 57, column: 2, scope: !2315)
!2348 = distinct !DISubprogram(name: "spin_lock", scope: !2349, file: !2349, line: 349, type: !2350, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2353)
!2349 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!2350 = !DISubroutineType(types: !2351)
!2351 = !{null, !2352}
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!2353 = !{!2354}
!2354 = !DILocalVariable(name: "lock", arg: 1, scope: !2348, file: !2349, line: 349, type: !2352)
!2355 = !DILocation(line: 349, column: 51, scope: !2348)
!2356 = !DILocation(line: 351, column: 2, scope: !2348)
!2357 = !DILocation(line: 352, column: 1, scope: !2348)
!2358 = !DISubprogram(name: "cpuidle_get_driver", scope: !111, file: !111, line: 185, type: !2359, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!129}
!2361 = distinct !DISubprogram(name: "spin_unlock", scope: !2349, file: !2349, line: 389, type: !2350, scopeLine: 390, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2362)
!2362 = !{!2363}
!2363 = !DILocalVariable(name: "lock", arg: 1, scope: !2361, file: !2349, line: 389, type: !2352)
!2364 = !DILocation(line: 389, column: 53, scope: !2361)
!2365 = !DILocation(line: 391, column: 2, scope: !2361)
!2366 = !DILocation(line: 392, column: 1, scope: !2361)
!2367 = !DISubprogram(name: "_raw_spin_lock", scope: !2368, file: !2368, line: 22, type: !2369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2368 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!2369 = !DISubroutineType(types: !2370)
!2370 = !{null, !2371}
!2371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!2372 = !DISubprogram(name: "_raw_spin_unlock", scope: !2368, file: !2368, line: 39, type: !2369, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2373 = distinct !DISubprogram(name: "show_current_governor", scope: !3, file: !3, line: 60, type: !1317, scopeLine: 63, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2374)
!2374 = !{!2375, !2376, !2377, !2378}
!2375 = !DILocalVariable(name: "dev", arg: 1, scope: !2373, file: !3, line: 60, type: !1319)
!2376 = !DILocalVariable(name: "attr", arg: 2, scope: !2373, file: !3, line: 61, type: !1744)
!2377 = !DILocalVariable(name: "buf", arg: 3, scope: !2373, file: !3, line: 62, type: !231)
!2378 = !DILocalVariable(name: "ret", scope: !2373, file: !3, line: 64, type: !263)
!2379 = !DILocation(line: 60, column: 53, scope: !2373)
!2380 = !DILocation(line: 61, column: 35, scope: !2373)
!2381 = !DILocation(line: 62, column: 16, scope: !2373)
!2382 = !DILocation(line: 64, column: 2, scope: !2373)
!2383 = !DILocation(line: 64, column: 10, scope: !2373)
!2384 = !DILocation(line: 66, column: 2, scope: !2373)
!2385 = !DILocation(line: 67, column: 6, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2373, file: !3, line: 67, column: 6)
!2387 = !DILocation(line: 67, column: 6, scope: !2373)
!2388 = !DILocation(line: 68, column: 17, scope: !2386)
!2389 = !DILocation(line: 68, column: 30, scope: !2386)
!2390 = !DILocation(line: 68, column: 53, scope: !2386)
!2391 = !DILocation(line: 68, column: 9, scope: !2386)
!2392 = !DILocation(line: 68, column: 7, scope: !2386)
!2393 = !DILocation(line: 68, column: 3, scope: !2386)
!2394 = !DILocation(line: 70, column: 17, scope: !2386)
!2395 = !DILocation(line: 70, column: 9, scope: !2386)
!2396 = !DILocation(line: 70, column: 7, scope: !2386)
!2397 = !DILocation(line: 71, column: 2, scope: !2373)
!2398 = !DILocation(line: 73, column: 9, scope: !2373)
!2399 = !DILocation(line: 74, column: 1, scope: !2373)
!2400 = !DILocation(line: 73, column: 2, scope: !2373)
!2401 = distinct !DISubprogram(name: "store_current_governor", scope: !3, file: !3, line: 76, type: !1747, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2402)
!2402 = !{!2403, !2404, !2405, !2406, !2407, !2408, !2409, !2410, !2413}
!2403 = !DILocalVariable(name: "dev", arg: 1, scope: !2401, file: !3, line: 76, type: !1319)
!2404 = !DILocalVariable(name: "attr", arg: 2, scope: !2401, file: !3, line: 77, type: !1744)
!2405 = !DILocalVariable(name: "buf", arg: 3, scope: !2401, file: !3, line: 78, type: !133)
!2406 = !DILocalVariable(name: "count", arg: 4, scope: !2401, file: !3, line: 78, type: !278)
!2407 = !DILocalVariable(name: "gov_name", scope: !2401, file: !3, line: 80, type: !1771)
!2408 = !DILocalVariable(name: "ret", scope: !2401, file: !3, line: 81, type: !46)
!2409 = !DILocalVariable(name: "gov", scope: !2401, file: !3, line: 82, type: !109)
!2410 = !DILocalVariable(name: "__mptr", scope: !2411, file: !3, line: 90, type: !108)
!2411 = distinct !DILexicalBlock(scope: !2412, file: !3, line: 90, column: 2)
!2412 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 90, column: 2)
!2413 = !DILocalVariable(name: "__mptr", scope: !2414, file: !3, line: 90, type: !108)
!2414 = distinct !DILexicalBlock(scope: !2415, file: !3, line: 90, column: 2)
!2415 = distinct !DILexicalBlock(scope: !2412, file: !3, line: 90, column: 2)
!2416 = !DILocation(line: 76, column: 54, scope: !2401)
!2417 = !DILocation(line: 77, column: 36, scope: !2401)
!2418 = !DILocation(line: 78, column: 23, scope: !2401)
!2419 = !DILocation(line: 78, column: 35, scope: !2401)
!2420 = !DILocation(line: 80, column: 2, scope: !2401)
!2421 = !DILocation(line: 80, column: 7, scope: !2401)
!2422 = !DILocation(line: 81, column: 2, scope: !2401)
!2423 = !DILocation(line: 81, column: 6, scope: !2401)
!2424 = !DILocation(line: 82, column: 2, scope: !2401)
!2425 = !DILocation(line: 82, column: 27, scope: !2401)
!2426 = !DILocation(line: 84, column: 15, scope: !2401)
!2427 = !DILocation(line: 84, column: 59, scope: !2401)
!2428 = !DILocation(line: 84, column: 8, scope: !2401)
!2429 = !DILocation(line: 84, column: 6, scope: !2401)
!2430 = !DILocation(line: 85, column: 6, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 85, column: 6)
!2432 = !DILocation(line: 85, column: 10, scope: !2431)
!2433 = !DILocation(line: 85, column: 6, scope: !2401)
!2434 = !DILocation(line: 86, column: 3, scope: !2431)
!2435 = !DILocation(line: 88, column: 2, scope: !2401)
!2436 = !DILocation(line: 89, column: 6, scope: !2401)
!2437 = !DILocation(line: 90, column: 2, scope: !2411)
!2438 = !DILocation(line: 90, column: 2, scope: !2412)
!2439 = !DILocation(line: 90, column: 2, scope: !2415)
!2440 = !DILocation(line: 91, column: 16, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 91, column: 7)
!2442 = distinct !DILexicalBlock(scope: !2415, file: !3, line: 90, column: 62)
!2443 = !DILocation(line: 91, column: 21, scope: !2441)
!2444 = !DILocation(line: 91, column: 27, scope: !2441)
!2445 = !DILocation(line: 91, column: 8, scope: !2441)
!2446 = !DILocation(line: 91, column: 7, scope: !2442)
!2447 = !DILocation(line: 92, column: 34, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2441, file: !3, line: 91, column: 56)
!2449 = !DILocation(line: 92, column: 10, scope: !2448)
!2450 = !DILocation(line: 92, column: 8, scope: !2448)
!2451 = !DILocation(line: 93, column: 4, scope: !2448)
!2452 = !DILocation(line: 95, column: 2, scope: !2442)
!2453 = !DILocation(line: 90, column: 2, scope: !2414)
!2454 = distinct !{!2454, !2438, !2455, !2066, !2067}
!2455 = !DILocation(line: 95, column: 2, scope: !2412)
!2456 = !DILocation(line: 96, column: 2, scope: !2401)
!2457 = !DILocation(line: 98, column: 9, scope: !2401)
!2458 = !DILocation(line: 98, column: 15, scope: !2401)
!2459 = !DILocation(line: 98, column: 21, scope: !2401)
!2460 = !DILocation(line: 98, column: 2, scope: !2401)
!2461 = !DILocation(line: 99, column: 1, scope: !2401)
!2462 = !DISubprogram(name: "sscanf", scope: !2308, file: !2308, line: 20, type: !2463, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2463 = !DISubroutineType(types: !2464)
!2464 = !{!46, !133, !133, null}
!2465 = !DISubprogram(name: "strncmp", scope: !2466, file: !2466, line: 91, type: !2467, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2466 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!2467 = !DISubroutineType(types: !2468)
!2468 = !{!46, !133, !133, !279}
!2469 = !DISubprogram(name: "cpuidle_switch_governor", scope: !2470, file: !2470, line: 27, type: !2471, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2470 = !DIFile(filename: "drivers/cpuidle/cpuidle.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8e9136cca38c1e0b4e01e3bdc92d79e5")
!2471 = !DISubroutineType(types: !2472)
!2472 = !{!46, !109}
!2473 = !DISubprogram(name: "cpuidle_get_cpu_driver", scope: !111, file: !111, line: 202, type: !2474, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{!129, !1189}
!2476 = distinct !DISubprogram(name: "cpuidle_add_s2idle_attr_group", scope: !3, file: !3, line: 385, type: !2477, scopeLine: 386, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2479)
!2477 = !DISubroutineType(types: !2478)
!2478 = !{null, !1219}
!2479 = !{!2480, !2481}
!2480 = !DILocalVariable(name: "kobj", arg: 1, scope: !2476, file: !3, line: 385, type: !1219)
!2481 = !DILocalVariable(name: "ret", scope: !2476, file: !3, line: 387, type: !46)
!2482 = !DILocation(line: 385, column: 70, scope: !2476)
!2483 = !DILocation(line: 387, column: 2, scope: !2476)
!2484 = !DILocation(line: 387, column: 6, scope: !2476)
!2485 = !DILocation(line: 389, column: 7, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 389, column: 6)
!2487 = !DILocation(line: 389, column: 13, scope: !2486)
!2488 = !DILocation(line: 389, column: 20, scope: !2486)
!2489 = !DILocation(line: 389, column: 6, scope: !2476)
!2490 = !DILocation(line: 390, column: 3, scope: !2486)
!2491 = !DILocation(line: 392, column: 28, scope: !2476)
!2492 = !DILocation(line: 392, column: 34, scope: !2476)
!2493 = !DILocation(line: 392, column: 8, scope: !2476)
!2494 = !DILocation(line: 392, column: 6, scope: !2476)
!2495 = !DILocation(line: 393, column: 6, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2476, file: !3, line: 393, column: 6)
!2497 = !DILocation(line: 393, column: 6, scope: !2476)
!2498 = !DILocation(line: 394, column: 3, scope: !2499)
!2499 = distinct !DILexicalBlock(scope: !2500, file: !3, line: 394, column: 3)
!2500 = distinct !DILexicalBlock(scope: !2496, file: !3, line: 394, column: 3)
!2501 = !DILocation(line: 394, column: 3, scope: !2500)
!2502 = !DILocation(line: 394, column: 3, scope: !2496)
!2503 = !DILocation(line: 395, column: 1, scope: !2476)
!2504 = distinct !DISubprogram(name: "cpuidle_free_state_kobj", scope: !3, file: !3, line: 463, type: !1268, scopeLine: 464, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2505)
!2505 = !{!2506, !2507}
!2506 = !DILocalVariable(name: "device", arg: 1, scope: !2504, file: !3, line: 463, type: !1189)
!2507 = !DILocalVariable(name: "i", arg: 2, scope: !2504, file: !3, line: 463, type: !46)
!2508 = !DILocation(line: 463, column: 67, scope: !2504)
!2509 = !DILocation(line: 463, column: 79, scope: !2504)
!2510 = !DILocation(line: 465, column: 35, scope: !2504)
!2511 = !DILocation(line: 465, column: 43, scope: !2504)
!2512 = !DILocation(line: 465, column: 49, scope: !2504)
!2513 = !DILocation(line: 465, column: 2, scope: !2504)
!2514 = !DILocation(line: 466, column: 15, scope: !2504)
!2515 = !DILocation(line: 466, column: 23, scope: !2504)
!2516 = !DILocation(line: 466, column: 29, scope: !2504)
!2517 = !DILocation(line: 466, column: 33, scope: !2504)
!2518 = !DILocation(line: 466, column: 2, scope: !2504)
!2519 = !DILocation(line: 467, column: 23, scope: !2504)
!2520 = !DILocation(line: 467, column: 31, scope: !2504)
!2521 = !DILocation(line: 467, column: 37, scope: !2504)
!2522 = !DILocation(line: 467, column: 41, scope: !2504)
!2523 = !DILocation(line: 467, column: 2, scope: !2504)
!2524 = !DILocation(line: 468, column: 8, scope: !2504)
!2525 = !DILocation(line: 468, column: 16, scope: !2504)
!2526 = !DILocation(line: 468, column: 22, scope: !2504)
!2527 = !DILocation(line: 468, column: 2, scope: !2504)
!2528 = !DILocation(line: 469, column: 2, scope: !2504)
!2529 = !DILocation(line: 469, column: 10, scope: !2504)
!2530 = !DILocation(line: 469, column: 16, scope: !2504)
!2531 = !DILocation(line: 469, column: 19, scope: !2504)
!2532 = !DILocation(line: 470, column: 1, scope: !2504)
!2533 = distinct !DISubprogram(name: "cpuidle_state_sysfs_release", scope: !3, file: !3, line: 450, type: !251, scopeLine: 451, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2534)
!2534 = !{!2535, !2536, !2537}
!2535 = !DILocalVariable(name: "kobj", arg: 1, scope: !2533, file: !3, line: 450, type: !154)
!2536 = !DILocalVariable(name: "state_obj", scope: !2533, file: !3, line: 452, type: !1219)
!2537 = !DILocalVariable(name: "__mptr", scope: !2538, file: !3, line: 452, type: !108)
!2538 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 452, column: 41)
!2539 = !DILocation(line: 450, column: 57, scope: !2533)
!2540 = !DILocation(line: 452, column: 2, scope: !2533)
!2541 = !DILocation(line: 452, column: 29, scope: !2533)
!2542 = !DILocation(line: 452, column: 41, scope: !2538)
!2543 = !DILocation(line: 452, column: 41, scope: !2533)
!2544 = !DILocation(line: 454, column: 12, scope: !2533)
!2545 = !DILocation(line: 454, column: 23, scope: !2533)
!2546 = !DILocation(line: 454, column: 2, scope: !2533)
!2547 = !DILocation(line: 455, column: 1, scope: !2533)
!2548 = !DISubprogram(name: "complete", scope: !813, file: !813, line: 118, type: !1886, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2549 = distinct !DISubprogram(name: "cpuidle_state_show", scope: !3, file: !3, line: 413, type: !261, scopeLine: 415, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2550)
!2550 = !{!2551, !2552, !2553, !2554, !2555, !2556, !2558, !2559, !2561, !2562}
!2551 = !DILocalVariable(name: "kobj", arg: 1, scope: !2549, file: !3, line: 413, type: !154)
!2552 = !DILocalVariable(name: "attr", arg: 2, scope: !2549, file: !3, line: 413, type: !268)
!2553 = !DILocalVariable(name: "buf", arg: 3, scope: !2549, file: !3, line: 414, type: !231)
!2554 = !DILocalVariable(name: "ret", scope: !2549, file: !3, line: 416, type: !46)
!2555 = !DILocalVariable(name: "state", scope: !2549, file: !3, line: 417, type: !1223)
!2556 = !DILocalVariable(name: "__mptr", scope: !2557, file: !3, line: 417, type: !108)
!2557 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 417, column: 32)
!2558 = !DILocalVariable(name: "state_usage", scope: !2549, file: !3, line: 418, type: !1225)
!2559 = !DILocalVariable(name: "__mptr", scope: !2560, file: !3, line: 418, type: !108)
!2560 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 418, column: 44)
!2561 = !DILocalVariable(name: "cattr", scope: !2549, file: !3, line: 419, type: !1270)
!2562 = !DILocalVariable(name: "__mptr", scope: !2563, file: !3, line: 419, type: !108)
!2563 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 419, column: 37)
!2564 = !DILocation(line: 413, column: 51, scope: !2549)
!2565 = !DILocation(line: 413, column: 75, scope: !2549)
!2566 = !DILocation(line: 414, column: 13, scope: !2549)
!2567 = !DILocation(line: 416, column: 2, scope: !2549)
!2568 = !DILocation(line: 416, column: 6, scope: !2549)
!2569 = !DILocation(line: 417, column: 2, scope: !2549)
!2570 = !DILocation(line: 417, column: 24, scope: !2549)
!2571 = !DILocation(line: 417, column: 32, scope: !2557)
!2572 = !DILocation(line: 417, column: 32, scope: !2549)
!2573 = !DILocation(line: 418, column: 2, scope: !2549)
!2574 = !DILocation(line: 418, column: 30, scope: !2549)
!2575 = !DILocation(line: 418, column: 44, scope: !2560)
!2576 = !DILocation(line: 418, column: 44, scope: !2549)
!2577 = !DILocation(line: 419, column: 2, scope: !2549)
!2578 = !DILocation(line: 419, column: 29, scope: !2549)
!2579 = !DILocation(line: 419, column: 37, scope: !2563)
!2580 = !DILocation(line: 419, column: 37, scope: !2549)
!2581 = !DILocation(line: 421, column: 6, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2549, file: !3, line: 421, column: 6)
!2583 = !DILocation(line: 421, column: 13, scope: !2582)
!2584 = !DILocation(line: 421, column: 6, scope: !2549)
!2585 = !DILocation(line: 422, column: 9, scope: !2582)
!2586 = !DILocation(line: 422, column: 16, scope: !2582)
!2587 = !DILocation(line: 422, column: 21, scope: !2582)
!2588 = !DILocation(line: 422, column: 28, scope: !2582)
!2589 = !DILocation(line: 422, column: 41, scope: !2582)
!2590 = !DILocation(line: 422, column: 7, scope: !2582)
!2591 = !DILocation(line: 422, column: 3, scope: !2582)
!2592 = !DILocation(line: 424, column: 9, scope: !2549)
!2593 = !DILocation(line: 425, column: 1, scope: !2549)
!2594 = !DILocation(line: 424, column: 2, scope: !2549)
!2595 = distinct !DISubprogram(name: "cpuidle_state_store", scope: !3, file: !3, line: 427, type: !276, scopeLine: 429, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2596)
!2596 = !{!2597, !2598, !2599, !2600, !2601, !2602, !2603, !2605, !2606, !2608, !2609, !2611, !2612}
!2597 = !DILocalVariable(name: "kobj", arg: 1, scope: !2595, file: !3, line: 427, type: !154)
!2598 = !DILocalVariable(name: "attr", arg: 2, scope: !2595, file: !3, line: 427, type: !268)
!2599 = !DILocalVariable(name: "buf", arg: 3, scope: !2595, file: !3, line: 428, type: !133)
!2600 = !DILocalVariable(name: "size", arg: 4, scope: !2595, file: !3, line: 428, type: !278)
!2601 = !DILocalVariable(name: "ret", scope: !2595, file: !3, line: 430, type: !46)
!2602 = !DILocalVariable(name: "state", scope: !2595, file: !3, line: 431, type: !1223)
!2603 = !DILocalVariable(name: "__mptr", scope: !2604, file: !3, line: 431, type: !108)
!2604 = distinct !DILexicalBlock(scope: !2595, file: !3, line: 431, column: 32)
!2605 = !DILocalVariable(name: "state_usage", scope: !2595, file: !3, line: 432, type: !1225)
!2606 = !DILocalVariable(name: "__mptr", scope: !2607, file: !3, line: 432, type: !108)
!2607 = distinct !DILexicalBlock(scope: !2595, file: !3, line: 432, column: 44)
!2608 = !DILocalVariable(name: "cattr", scope: !2595, file: !3, line: 433, type: !1270)
!2609 = !DILocalVariable(name: "__mptr", scope: !2610, file: !3, line: 433, type: !108)
!2610 = distinct !DILexicalBlock(scope: !2595, file: !3, line: 433, column: 37)
!2611 = !DILocalVariable(name: "dev", scope: !2595, file: !3, line: 434, type: !1189)
!2612 = !DILocalVariable(name: "__mptr", scope: !2613, file: !3, line: 434, type: !108)
!2613 = distinct !DILexicalBlock(scope: !2595, file: !3, line: 434, column: 31)
!2614 = !DILocation(line: 427, column: 52, scope: !2595)
!2615 = !DILocation(line: 427, column: 76, scope: !2595)
!2616 = !DILocation(line: 428, column: 20, scope: !2595)
!2617 = !DILocation(line: 428, column: 32, scope: !2595)
!2618 = !DILocation(line: 430, column: 2, scope: !2595)
!2619 = !DILocation(line: 430, column: 6, scope: !2595)
!2620 = !DILocation(line: 431, column: 2, scope: !2595)
!2621 = !DILocation(line: 431, column: 24, scope: !2595)
!2622 = !DILocation(line: 431, column: 32, scope: !2604)
!2623 = !DILocation(line: 431, column: 32, scope: !2595)
!2624 = !DILocation(line: 432, column: 2, scope: !2595)
!2625 = !DILocation(line: 432, column: 30, scope: !2595)
!2626 = !DILocation(line: 432, column: 44, scope: !2607)
!2627 = !DILocation(line: 432, column: 44, scope: !2595)
!2628 = !DILocation(line: 433, column: 2, scope: !2595)
!2629 = !DILocation(line: 433, column: 29, scope: !2595)
!2630 = !DILocation(line: 433, column: 37, scope: !2610)
!2631 = !DILocation(line: 433, column: 37, scope: !2595)
!2632 = !DILocation(line: 434, column: 2, scope: !2595)
!2633 = !DILocation(line: 434, column: 25, scope: !2595)
!2634 = !DILocation(line: 434, column: 31, scope: !2613)
!2635 = !DILocation(line: 434, column: 31, scope: !2595)
!2636 = !DILocation(line: 436, column: 6, scope: !2637)
!2637 = distinct !DILexicalBlock(scope: !2595, file: !3, line: 436, column: 6)
!2638 = !DILocation(line: 436, column: 13, scope: !2637)
!2639 = !DILocation(line: 436, column: 6, scope: !2595)
!2640 = !DILocation(line: 437, column: 9, scope: !2637)
!2641 = !DILocation(line: 437, column: 16, scope: !2637)
!2642 = !DILocation(line: 437, column: 22, scope: !2637)
!2643 = !DILocation(line: 437, column: 29, scope: !2637)
!2644 = !DILocation(line: 437, column: 42, scope: !2637)
!2645 = !DILocation(line: 437, column: 47, scope: !2637)
!2646 = !DILocation(line: 437, column: 7, scope: !2637)
!2647 = !DILocation(line: 437, column: 3, scope: !2637)
!2648 = !DILocation(line: 440, column: 2, scope: !2595)
!2649 = !DILocation(line: 440, column: 7, scope: !2595)
!2650 = !DILocation(line: 440, column: 21, scope: !2595)
!2651 = !DILocation(line: 442, column: 9, scope: !2595)
!2652 = !DILocation(line: 443, column: 1, scope: !2595)
!2653 = !DILocation(line: 442, column: 2, scope: !2595)
!2654 = distinct !DISubprogram(name: "show_state_name", scope: !3, file: !3, line: 267, type: !1276, scopeLine: 267, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2655)
!2655 = !{!2656, !2657, !2658}
!2656 = !DILocalVariable(name: "state", arg: 1, scope: !2654, file: !3, line: 267, type: !1223)
!2657 = !DILocalVariable(name: "state_usage", arg: 2, scope: !2654, file: !3, line: 267, type: !1225)
!2658 = !DILocalVariable(name: "buf", arg: 3, scope: !2654, file: !3, line: 267, type: !231)
!2659 = !DILocation(line: 267, column: 1, scope: !2654)
!2660 = !DILocation(line: 267, column: 1, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2654, file: !3, line: 267, column: 1)
!2662 = distinct !DISubprogram(name: "show_state_desc", scope: !3, file: !3, line: 268, type: !1276, scopeLine: 268, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2663)
!2663 = !{!2664, !2665, !2666}
!2664 = !DILocalVariable(name: "state", arg: 1, scope: !2662, file: !3, line: 268, type: !1223)
!2665 = !DILocalVariable(name: "state_usage", arg: 2, scope: !2662, file: !3, line: 268, type: !1225)
!2666 = !DILocalVariable(name: "buf", arg: 3, scope: !2662, file: !3, line: 268, type: !231)
!2667 = !DILocation(line: 268, column: 1, scope: !2662)
!2668 = !DILocation(line: 268, column: 1, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2662, file: !3, line: 268, column: 1)
!2670 = distinct !DISubprogram(name: "show_state_exit_latency", scope: !3, file: !3, line: 262, type: !1276, scopeLine: 262, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2671)
!2671 = !{!2672, !2673, !2674}
!2672 = !DILocalVariable(name: "state", arg: 1, scope: !2670, file: !3, line: 262, type: !1223)
!2673 = !DILocalVariable(name: "state_usage", arg: 2, scope: !2670, file: !3, line: 262, type: !1225)
!2674 = !DILocalVariable(name: "buf", arg: 3, scope: !2670, file: !3, line: 262, type: !231)
!2675 = !DILocation(line: 262, column: 1, scope: !2670)
!2676 = distinct !DISubprogram(name: "ktime_to_us", scope: !1198, file: !1198, line: 159, type: !2677, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2680)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!405, !2679}
!2679 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1197)
!2680 = !{!2681}
!2681 = !DILocalVariable(name: "kt", arg: 1, scope: !2676, file: !1198, line: 159, type: !2679)
!2682 = !DILocation(line: 159, column: 45, scope: !2676)
!2683 = !DILocation(line: 161, column: 21, scope: !2676)
!2684 = !DILocation(line: 161, column: 9, scope: !2676)
!2685 = !DILocation(line: 161, column: 2, scope: !2676)
!2686 = distinct !DISubprogram(name: "ktime_divns", scope: !1198, file: !1198, line: 148, type: !2687, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2689)
!2687 = !DISubroutineType(types: !2688)
!2688 = !{!405, !2679, !405}
!2689 = !{!2690, !2691, !2692, !2694}
!2690 = !DILocalVariable(name: "kt", arg: 1, scope: !2686, file: !1198, line: 148, type: !2679)
!2691 = !DILocalVariable(name: "div", arg: 2, scope: !2686, file: !1198, line: 148, type: !405)
!2692 = !DILocalVariable(name: "__ret_warn_on", scope: !2693, file: !1198, line: 154, type: !46)
!2693 = distinct !DILexicalBlock(scope: !2686, file: !1198, line: 154, column: 2)
!2694 = !DILocalVariable(name: "__flags", scope: !2695, file: !1198, line: 154, type: !46)
!2695 = distinct !DILexicalBlock(scope: !2696, file: !1198, line: 154, column: 2)
!2696 = distinct !DILexicalBlock(scope: !2693, file: !1198, line: 154, column: 2)
!2697 = !DILocation(line: 148, column: 45, scope: !2686)
!2698 = !DILocation(line: 148, column: 53, scope: !2686)
!2699 = !DILocation(line: 154, column: 2, scope: !2693)
!2700 = !DILocation(line: 154, column: 2, scope: !2696)
!2701 = !DILocation(line: 154, column: 2, scope: !2695)
!2702 = !DILocation(line: 154, column: 2, scope: !2703)
!2703 = distinct !DILexicalBlock(scope: !2695, file: !1198, line: 154, column: 2)
!2704 = !DILocation(line: 154, column: 2, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2695, file: !1198, line: 154, column: 2)
!2706 = !{i64 2149662366, i64 2149662395, i64 2149662441, i64 2149662499, i64 2149662553, i64 2149662607, i64 2149662662, i64 2149662693, i64 2149663001, i64 2149663007, i64 2149663054, i64 2149663077, i64 2149663103}
!2707 = !DILocation(line: 154, column: 2, scope: !2708)
!2708 = distinct !DILexicalBlock(scope: !2695, file: !1198, line: 154, column: 2)
!2709 = !DILocation(line: 154, column: 2, scope: !2686)
!2710 = !DILocation(line: 155, column: 9, scope: !2686)
!2711 = !DILocation(line: 155, column: 14, scope: !2686)
!2712 = !DILocation(line: 155, column: 12, scope: !2686)
!2713 = !DILocation(line: 155, column: 2, scope: !2686)
!2714 = distinct !DISubprogram(name: "show_state_target_residency", scope: !3, file: !3, line: 263, type: !1276, scopeLine: 263, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2715)
!2715 = !{!2716, !2717, !2718}
!2716 = !DILocalVariable(name: "state", arg: 1, scope: !2714, file: !3, line: 263, type: !1223)
!2717 = !DILocalVariable(name: "state_usage", arg: 2, scope: !2714, file: !3, line: 263, type: !1225)
!2718 = !DILocalVariable(name: "buf", arg: 3, scope: !2714, file: !3, line: 263, type: !231)
!2719 = !DILocation(line: 263, column: 1, scope: !2714)
!2720 = distinct !DISubprogram(name: "show_state_power_usage", scope: !3, file: !3, line: 264, type: !1276, scopeLine: 264, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2721)
!2721 = !{!2722, !2723, !2724}
!2722 = !DILocalVariable(name: "state", arg: 1, scope: !2720, file: !3, line: 264, type: !1223)
!2723 = !DILocalVariable(name: "state_usage", arg: 2, scope: !2720, file: !3, line: 264, type: !1225)
!2724 = !DILocalVariable(name: "buf", arg: 3, scope: !2720, file: !3, line: 264, type: !231)
!2725 = !DILocation(line: 264, column: 1, scope: !2720)
!2726 = distinct !DISubprogram(name: "show_state_usage", scope: !3, file: !3, line: 265, type: !1276, scopeLine: 265, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2727)
!2727 = !{!2728, !2729, !2730}
!2728 = !DILocalVariable(name: "state", arg: 1, scope: !2726, file: !3, line: 265, type: !1223)
!2729 = !DILocalVariable(name: "state_usage", arg: 2, scope: !2726, file: !3, line: 265, type: !1225)
!2730 = !DILocalVariable(name: "buf", arg: 3, scope: !2726, file: !3, line: 265, type: !231)
!2731 = !DILocation(line: 265, column: 1, scope: !2726)
!2732 = distinct !DISubprogram(name: "show_state_rejected", scope: !3, file: !3, line: 266, type: !1276, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2733)
!2733 = !{!2734, !2735, !2736}
!2734 = !DILocalVariable(name: "state", arg: 1, scope: !2732, file: !3, line: 266, type: !1223)
!2735 = !DILocalVariable(name: "state_usage", arg: 2, scope: !2732, file: !3, line: 266, type: !1225)
!2736 = !DILocalVariable(name: "buf", arg: 3, scope: !2732, file: !3, line: 266, type: !231)
!2737 = !DILocation(line: 266, column: 1, scope: !2732)
!2738 = distinct !DISubprogram(name: "show_state_time", scope: !3, file: !3, line: 272, type: !1276, scopeLine: 275, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2739)
!2739 = !{!2740, !2741, !2742}
!2740 = !DILocalVariable(name: "state", arg: 1, scope: !2738, file: !3, line: 272, type: !1223)
!2741 = !DILocalVariable(name: "state_usage", arg: 2, scope: !2738, file: !3, line: 273, type: !1225)
!2742 = !DILocalVariable(name: "buf", arg: 3, scope: !2738, file: !3, line: 274, type: !231)
!2743 = !DILocation(line: 272, column: 54, scope: !2738)
!2744 = !DILocation(line: 273, column: 39, scope: !2738)
!2745 = !DILocation(line: 274, column: 17, scope: !2738)
!2746 = !DILocation(line: 276, column: 17, scope: !2738)
!2747 = !DILocation(line: 276, column: 44, scope: !2738)
!2748 = !DILocation(line: 276, column: 57, scope: !2738)
!2749 = !DILocation(line: 276, column: 32, scope: !2738)
!2750 = !DILocation(line: 276, column: 9, scope: !2738)
!2751 = !DILocation(line: 276, column: 2, scope: !2738)
!2752 = distinct !DISubprogram(name: "show_state_disable", scope: !3, file: !3, line: 279, type: !1276, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2753)
!2753 = !{!2754, !2755, !2756}
!2754 = !DILocalVariable(name: "state", arg: 1, scope: !2752, file: !3, line: 279, type: !1223)
!2755 = !DILocalVariable(name: "state_usage", arg: 2, scope: !2752, file: !3, line: 280, type: !1225)
!2756 = !DILocalVariable(name: "buf", arg: 3, scope: !2752, file: !3, line: 281, type: !231)
!2757 = !DILocation(line: 279, column: 57, scope: !2752)
!2758 = !DILocation(line: 280, column: 35, scope: !2752)
!2759 = !DILocation(line: 281, column: 13, scope: !2752)
!2760 = !DILocation(line: 283, column: 17, scope: !2752)
!2761 = !DILocation(line: 284, column: 10, scope: !2752)
!2762 = !DILocation(line: 284, column: 23, scope: !2752)
!2763 = !DILocation(line: 284, column: 31, scope: !2752)
!2764 = !DILocation(line: 283, column: 9, scope: !2752)
!2765 = !DILocation(line: 283, column: 2, scope: !2752)
!2766 = distinct !DISubprogram(name: "store_state_disable", scope: !3, file: !3, line: 287, type: !1280, scopeLine: 290, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2767)
!2767 = !{!2768, !2769, !2770, !2771, !2772, !2773}
!2768 = !DILocalVariable(name: "state", arg: 1, scope: !2766, file: !3, line: 287, type: !1223)
!2769 = !DILocalVariable(name: "state_usage", arg: 2, scope: !2766, file: !3, line: 288, type: !1225)
!2770 = !DILocalVariable(name: "buf", arg: 3, scope: !2766, file: !3, line: 289, type: !133)
!2771 = !DILocalVariable(name: "size", arg: 4, scope: !2766, file: !3, line: 289, type: !278)
!2772 = !DILocalVariable(name: "value", scope: !2766, file: !3, line: 291, type: !7)
!2773 = !DILocalVariable(name: "err", scope: !2766, file: !3, line: 292, type: !46)
!2774 = !DILocation(line: 287, column: 58, scope: !2766)
!2775 = !DILocation(line: 288, column: 36, scope: !2766)
!2776 = !DILocation(line: 289, column: 20, scope: !2766)
!2777 = !DILocation(line: 289, column: 32, scope: !2766)
!2778 = !DILocation(line: 291, column: 2, scope: !2766)
!2779 = !DILocation(line: 291, column: 15, scope: !2766)
!2780 = !DILocation(line: 292, column: 2, scope: !2766)
!2781 = !DILocation(line: 292, column: 6, scope: !2766)
!2782 = !DILocation(line: 294, column: 7, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2766, file: !3, line: 294, column: 6)
!2784 = !DILocation(line: 294, column: 6, scope: !2766)
!2785 = !DILocation(line: 295, column: 3, scope: !2783)
!2786 = !DILocation(line: 297, column: 19, scope: !2766)
!2787 = !DILocation(line: 297, column: 8, scope: !2766)
!2788 = !DILocation(line: 297, column: 6, scope: !2766)
!2789 = !DILocation(line: 298, column: 6, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2766, file: !3, line: 298, column: 6)
!2791 = !DILocation(line: 298, column: 6, scope: !2766)
!2792 = !DILocation(line: 299, column: 10, scope: !2790)
!2793 = !DILocation(line: 299, column: 3, scope: !2790)
!2794 = !DILocation(line: 301, column: 6, scope: !2795)
!2795 = distinct !DILexicalBlock(scope: !2766, file: !3, line: 301, column: 6)
!2796 = !DILocation(line: 301, column: 6, scope: !2766)
!2797 = !DILocation(line: 302, column: 3, scope: !2795)
!2798 = !DILocation(line: 302, column: 16, scope: !2795)
!2799 = !DILocation(line: 302, column: 24, scope: !2795)
!2800 = !DILocation(line: 304, column: 3, scope: !2795)
!2801 = !DILocation(line: 304, column: 16, scope: !2795)
!2802 = !DILocation(line: 304, column: 24, scope: !2795)
!2803 = !DILocation(line: 306, column: 9, scope: !2766)
!2804 = !DILocation(line: 306, column: 2, scope: !2766)
!2805 = !DILocation(line: 307, column: 1, scope: !2766)
!2806 = !DISubprogram(name: "capable", scope: !2807, file: !2807, line: 148, type: !2808, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2807 = !DIFile(filename: "./include/linux/capability.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "844d16bbc1c5d5ddd3d4dd45f55bc1eb")
!2808 = !DISubroutineType(types: !2809)
!2809 = !{!587, !46}
!2810 = !DISubprogram(name: "kstrtouint", scope: !2811, file: !2811, line: 71, type: !2812, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2811 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!2812 = !DISubroutineType(types: !2813)
!2813 = !{!46, !133, !7, !910}
!2814 = distinct !DISubprogram(name: "show_state_above", scope: !3, file: !3, line: 269, type: !1276, scopeLine: 269, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2815)
!2815 = !{!2816, !2817, !2818}
!2816 = !DILocalVariable(name: "state", arg: 1, scope: !2814, file: !3, line: 269, type: !1223)
!2817 = !DILocalVariable(name: "state_usage", arg: 2, scope: !2814, file: !3, line: 269, type: !1225)
!2818 = !DILocalVariable(name: "buf", arg: 3, scope: !2814, file: !3, line: 269, type: !231)
!2819 = !DILocation(line: 269, column: 1, scope: !2814)
!2820 = distinct !DISubprogram(name: "show_state_below", scope: !3, file: !3, line: 270, type: !1276, scopeLine: 270, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2821)
!2821 = !{!2822, !2823, !2824}
!2822 = !DILocalVariable(name: "state", arg: 1, scope: !2820, file: !3, line: 270, type: !1223)
!2823 = !DILocalVariable(name: "state_usage", arg: 2, scope: !2820, file: !3, line: 270, type: !1225)
!2824 = !DILocalVariable(name: "buf", arg: 3, scope: !2820, file: !3, line: 270, type: !231)
!2825 = !DILocation(line: 270, column: 1, scope: !2820)
!2826 = distinct !DISubprogram(name: "show_state_default_status", scope: !3, file: !3, line: 309, type: !1276, scopeLine: 312, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2827)
!2827 = !{!2828, !2829, !2830}
!2828 = !DILocalVariable(name: "state", arg: 1, scope: !2826, file: !3, line: 309, type: !1223)
!2829 = !DILocalVariable(name: "state_usage", arg: 2, scope: !2826, file: !3, line: 310, type: !1225)
!2830 = !DILocalVariable(name: "buf", arg: 3, scope: !2826, file: !3, line: 311, type: !231)
!2831 = !DILocation(line: 309, column: 64, scope: !2826)
!2832 = !DILocation(line: 310, column: 36, scope: !2826)
!2833 = !DILocation(line: 311, column: 14, scope: !2826)
!2834 = !DILocation(line: 313, column: 17, scope: !2826)
!2835 = !DILocation(line: 314, column: 10, scope: !2826)
!2836 = !DILocation(line: 314, column: 17, scope: !2826)
!2837 = !DILocation(line: 314, column: 23, scope: !2826)
!2838 = !DILocation(line: 313, column: 9, scope: !2826)
!2839 = !DILocation(line: 313, column: 2, scope: !2826)
!2840 = distinct !DISubprogram(name: "show_state_s2idle_usage", scope: !3, file: !3, line: 364, type: !1276, scopeLine: 364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2841)
!2841 = !{!2842, !2843, !2844}
!2842 = !DILocalVariable(name: "state", arg: 1, scope: !2840, file: !3, line: 364, type: !1223)
!2843 = !DILocalVariable(name: "state_usage", arg: 2, scope: !2840, file: !3, line: 364, type: !1225)
!2844 = !DILocalVariable(name: "buf", arg: 3, scope: !2840, file: !3, line: 364, type: !231)
!2845 = !DILocation(line: 364, column: 1, scope: !2840)
!2846 = distinct !DISubprogram(name: "show_state_s2idle_time", scope: !3, file: !3, line: 365, type: !1276, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2847)
!2847 = !{!2848, !2849, !2850}
!2848 = !DILocalVariable(name: "state", arg: 1, scope: !2846, file: !3, line: 365, type: !1223)
!2849 = !DILocalVariable(name: "state_usage", arg: 2, scope: !2846, file: !3, line: 365, type: !1225)
!2850 = !DILocalVariable(name: "buf", arg: 3, scope: !2846, file: !3, line: 365, type: !231)
!2851 = !DILocation(line: 365, column: 1, scope: !2846)
!2852 = distinct !DISubprogram(name: "cpuidle_remove_s2idle_attr_group", scope: !3, file: !3, line: 397, type: !2477, scopeLine: 398, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2853)
!2853 = !{!2854}
!2854 = !DILocalVariable(name: "kobj", arg: 1, scope: !2852, file: !3, line: 397, type: !1219)
!2855 = !DILocation(line: 397, column: 73, scope: !2852)
!2856 = !DILocation(line: 399, column: 6, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2852, file: !3, line: 399, column: 6)
!2858 = !DILocation(line: 399, column: 12, scope: !2857)
!2859 = !DILocation(line: 399, column: 19, scope: !2857)
!2860 = !DILocation(line: 399, column: 6, scope: !2852)
!2861 = !DILocation(line: 400, column: 23, scope: !2857)
!2862 = !DILocation(line: 400, column: 29, scope: !2857)
!2863 = !DILocation(line: 400, column: 3, scope: !2857)
!2864 = !DILocation(line: 401, column: 1, scope: !2852)
!2865 = distinct !DISubprogram(name: "kmalloc", scope: !95, file: !95, line: 591, type: !2204, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2866)
!2866 = !{!2867, !2868, !2869}
!2867 = !DILocalVariable(name: "size", arg: 1, scope: !2865, file: !95, line: 591, type: !278)
!2868 = !DILocalVariable(name: "flags", arg: 2, scope: !2865, file: !95, line: 591, type: !106)
!2869 = !DILocalVariable(name: "index", scope: !2870, file: !95, line: 594, type: !7)
!2870 = distinct !DILexicalBlock(scope: !2871, file: !95, line: 593, column: 42)
!2871 = distinct !DILexicalBlock(scope: !2865, file: !95, line: 593, column: 6)
!2872 = !DILocation(line: 591, column: 61, scope: !2865)
!2873 = !DILocation(line: 591, column: 73, scope: !2865)
!2874 = !DILocation(line: 593, column: 27, scope: !2871)
!2875 = !DILocation(line: 593, column: 6, scope: !2871)
!2876 = !DILocation(line: 593, column: 33, scope: !2871)
!2877 = !DILocation(line: 593, column: 36, scope: !2871)
!2878 = !DILocation(line: 593, column: 6, scope: !2865)
!2879 = !DILocation(line: 594, column: 3, scope: !2870)
!2880 = !DILocation(line: 594, column: 16, scope: !2870)
!2881 = !DILocation(line: 596, column: 7, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2870, file: !95, line: 596, column: 7)
!2883 = !DILocation(line: 596, column: 12, scope: !2882)
!2884 = !DILocation(line: 596, column: 7, scope: !2870)
!2885 = !DILocation(line: 597, column: 25, scope: !2882)
!2886 = !DILocation(line: 597, column: 31, scope: !2882)
!2887 = !DILocation(line: 597, column: 11, scope: !2882)
!2888 = !DILocation(line: 597, column: 4, scope: !2882)
!2889 = !DILocation(line: 599, column: 11, scope: !2870)
!2890 = !DILocation(line: 599, column: 9, scope: !2870)
!2891 = !DILocation(line: 601, column: 33, scope: !2870)
!2892 = !DILocation(line: 601, column: 40, scope: !2870)
!2893 = !DILocation(line: 601, column: 20, scope: !2870)
!2894 = !DILocation(line: 601, column: 5, scope: !2870)
!2895 = !DILocation(line: 601, column: 51, scope: !2870)
!2896 = !DILocation(line: 602, column: 5, scope: !2870)
!2897 = !DILocation(line: 602, column: 12, scope: !2870)
!2898 = !DILocation(line: 600, column: 10, scope: !2870)
!2899 = !DILocation(line: 600, column: 3, scope: !2870)
!2900 = !DILocation(line: 603, column: 2, scope: !2871)
!2901 = !DILocation(line: 604, column: 19, scope: !2865)
!2902 = !DILocation(line: 604, column: 25, scope: !2865)
!2903 = !DILocation(line: 604, column: 9, scope: !2865)
!2904 = !DILocation(line: 604, column: 2, scope: !2865)
!2905 = !DILocation(line: 605, column: 1, scope: !2865)
!2906 = !DISubprogram(name: "kmalloc_large", scope: !95, file: !95, line: 531, type: !2204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2907 = distinct !DISubprogram(name: "__kmalloc_index", scope: !95, file: !95, line: 444, type: !2908, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2910)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!7, !278, !587}
!2910 = !{!2911, !2912}
!2911 = !DILocalVariable(name: "size", arg: 1, scope: !2907, file: !95, line: 444, type: !278)
!2912 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2907, file: !95, line: 445, type: !587)
!2913 = !DILocation(line: 444, column: 60, scope: !2907)
!2914 = !DILocation(line: 445, column: 16, scope: !2907)
!2915 = !DILocation(line: 447, column: 7, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2907, file: !95, line: 447, column: 6)
!2917 = !DILocation(line: 447, column: 6, scope: !2907)
!2918 = !DILocation(line: 448, column: 3, scope: !2916)
!2919 = !DILocation(line: 450, column: 6, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2907, file: !95, line: 450, column: 6)
!2921 = !DILocation(line: 450, column: 11, scope: !2920)
!2922 = !DILocation(line: 450, column: 6, scope: !2907)
!2923 = !DILocation(line: 451, column: 3, scope: !2920)
!2924 = !DILocation(line: 453, column: 32, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2907, file: !95, line: 453, column: 6)
!2926 = !DILocation(line: 453, column: 37, scope: !2925)
!2927 = !DILocation(line: 453, column: 42, scope: !2925)
!2928 = !DILocation(line: 453, column: 45, scope: !2925)
!2929 = !DILocation(line: 453, column: 50, scope: !2925)
!2930 = !DILocation(line: 453, column: 6, scope: !2907)
!2931 = !DILocation(line: 454, column: 3, scope: !2925)
!2932 = !DILocation(line: 455, column: 32, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2907, file: !95, line: 455, column: 6)
!2934 = !DILocation(line: 455, column: 37, scope: !2933)
!2935 = !DILocation(line: 455, column: 43, scope: !2933)
!2936 = !DILocation(line: 455, column: 46, scope: !2933)
!2937 = !DILocation(line: 455, column: 51, scope: !2933)
!2938 = !DILocation(line: 455, column: 6, scope: !2907)
!2939 = !DILocation(line: 456, column: 3, scope: !2933)
!2940 = !DILocation(line: 457, column: 6, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2907, file: !95, line: 457, column: 6)
!2942 = !DILocation(line: 457, column: 11, scope: !2941)
!2943 = !DILocation(line: 457, column: 6, scope: !2907)
!2944 = !DILocation(line: 457, column: 26, scope: !2941)
!2945 = !DILocation(line: 458, column: 6, scope: !2946)
!2946 = distinct !DILexicalBlock(scope: !2907, file: !95, line: 458, column: 6)
!2947 = !DILocation(line: 458, column: 11, scope: !2946)
!2948 = !DILocation(line: 458, column: 6, scope: !2907)
!2949 = !DILocation(line: 458, column: 26, scope: !2946)
!2950 = !DILocation(line: 459, column: 6, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2907, file: !95, line: 459, column: 6)
!2952 = !DILocation(line: 459, column: 11, scope: !2951)
!2953 = !DILocation(line: 459, column: 6, scope: !2907)
!2954 = !DILocation(line: 459, column: 26, scope: !2951)
!2955 = !DILocation(line: 460, column: 6, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2907, file: !95, line: 460, column: 6)
!2957 = !DILocation(line: 460, column: 11, scope: !2956)
!2958 = !DILocation(line: 460, column: 6, scope: !2907)
!2959 = !DILocation(line: 460, column: 26, scope: !2956)
!2960 = !DILocation(line: 461, column: 6, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2907, file: !95, line: 461, column: 6)
!2962 = !DILocation(line: 461, column: 11, scope: !2961)
!2963 = !DILocation(line: 461, column: 6, scope: !2907)
!2964 = !DILocation(line: 461, column: 26, scope: !2961)
!2965 = !DILocation(line: 462, column: 6, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2907, file: !95, line: 462, column: 6)
!2967 = !DILocation(line: 462, column: 11, scope: !2966)
!2968 = !DILocation(line: 462, column: 6, scope: !2907)
!2969 = !DILocation(line: 462, column: 26, scope: !2966)
!2970 = !DILocation(line: 463, column: 6, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2907, file: !95, line: 463, column: 6)
!2972 = !DILocation(line: 463, column: 11, scope: !2971)
!2973 = !DILocation(line: 463, column: 6, scope: !2907)
!2974 = !DILocation(line: 463, column: 26, scope: !2971)
!2975 = !DILocation(line: 464, column: 6, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2907, file: !95, line: 464, column: 6)
!2977 = !DILocation(line: 464, column: 11, scope: !2976)
!2978 = !DILocation(line: 464, column: 6, scope: !2907)
!2979 = !DILocation(line: 464, column: 26, scope: !2976)
!2980 = !DILocation(line: 465, column: 6, scope: !2981)
!2981 = distinct !DILexicalBlock(scope: !2907, file: !95, line: 465, column: 6)
!2982 = !DILocation(line: 465, column: 11, scope: !2981)
!2983 = !DILocation(line: 465, column: 6, scope: !2907)
!2984 = !DILocation(line: 465, column: 26, scope: !2981)
!2985 = !DILocation(line: 466, column: 6, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2907, file: !95, line: 466, column: 6)
!2987 = !DILocation(line: 466, column: 11, scope: !2986)
!2988 = !DILocation(line: 466, column: 6, scope: !2907)
!2989 = !DILocation(line: 466, column: 26, scope: !2986)
!2990 = !DILocation(line: 467, column: 6, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2907, file: !95, line: 467, column: 6)
!2992 = !DILocation(line: 467, column: 11, scope: !2991)
!2993 = !DILocation(line: 467, column: 6, scope: !2907)
!2994 = !DILocation(line: 467, column: 26, scope: !2991)
!2995 = !DILocation(line: 468, column: 6, scope: !2996)
!2996 = distinct !DILexicalBlock(scope: !2907, file: !95, line: 468, column: 6)
!2997 = !DILocation(line: 468, column: 11, scope: !2996)
!2998 = !DILocation(line: 468, column: 6, scope: !2907)
!2999 = !DILocation(line: 468, column: 26, scope: !2996)
!3000 = !DILocation(line: 469, column: 6, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2907, file: !95, line: 469, column: 6)
!3002 = !DILocation(line: 469, column: 11, scope: !3001)
!3003 = !DILocation(line: 469, column: 6, scope: !2907)
!3004 = !DILocation(line: 469, column: 26, scope: !3001)
!3005 = !DILocation(line: 470, column: 6, scope: !3006)
!3006 = distinct !DILexicalBlock(scope: !2907, file: !95, line: 470, column: 6)
!3007 = !DILocation(line: 470, column: 11, scope: !3006)
!3008 = !DILocation(line: 470, column: 6, scope: !2907)
!3009 = !DILocation(line: 470, column: 26, scope: !3006)
!3010 = !DILocation(line: 471, column: 6, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !2907, file: !95, line: 471, column: 6)
!3012 = !DILocation(line: 471, column: 11, scope: !3011)
!3013 = !DILocation(line: 471, column: 6, scope: !2907)
!3014 = !DILocation(line: 471, column: 26, scope: !3011)
!3015 = !DILocation(line: 472, column: 6, scope: !3016)
!3016 = distinct !DILexicalBlock(scope: !2907, file: !95, line: 472, column: 6)
!3017 = !DILocation(line: 472, column: 11, scope: !3016)
!3018 = !DILocation(line: 472, column: 6, scope: !2907)
!3019 = !DILocation(line: 472, column: 26, scope: !3016)
!3020 = !DILocation(line: 473, column: 6, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !2907, file: !95, line: 473, column: 6)
!3022 = !DILocation(line: 473, column: 11, scope: !3021)
!3023 = !DILocation(line: 473, column: 6, scope: !2907)
!3024 = !DILocation(line: 473, column: 26, scope: !3021)
!3025 = !DILocation(line: 474, column: 6, scope: !3026)
!3026 = distinct !DILexicalBlock(scope: !2907, file: !95, line: 474, column: 6)
!3027 = !DILocation(line: 474, column: 11, scope: !3026)
!3028 = !DILocation(line: 474, column: 6, scope: !2907)
!3029 = !DILocation(line: 474, column: 27, scope: !3026)
!3030 = !DILocation(line: 475, column: 6, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !2907, file: !95, line: 475, column: 6)
!3032 = !DILocation(line: 475, column: 11, scope: !3031)
!3033 = !DILocation(line: 475, column: 6, scope: !2907)
!3034 = !DILocation(line: 475, column: 32, scope: !3031)
!3035 = !DILocation(line: 477, column: 50, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !2907, file: !95, line: 477, column: 6)
!3037 = !{i8 0, i8 2}
!3038 = !DILocation(line: 477, column: 6, scope: !2907)
!3039 = !DILocation(line: 478, column: 3, scope: !3036)
!3040 = !DILocation(line: 478, column: 3, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3042, file: !95, line: 478, column: 3)
!3042 = distinct !DILexicalBlock(scope: !3036, file: !95, line: 478, column: 3)
!3043 = !{i32 -2142732720}
!3044 = !DILocation(line: 478, column: 3, scope: !3042)
!3045 = !DILocation(line: 480, column: 3, scope: !3036)
!3046 = !DILocation(line: 480, column: 3, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3036, file: !95, line: 480, column: 3)
!3048 = !DILocation(line: 480, column: 3, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3047, file: !95, line: 480, column: 3)
!3050 = !DILocation(line: 480, column: 3, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3047, file: !95, line: 480, column: 3)
!3052 = !{i64 2152234779, i64 2152234808, i64 2152234854, i64 2152234912, i64 2152234966, i64 2152235020, i64 2152235075, i64 2152235106}
!3053 = !DILocation(line: 483, column: 2, scope: !2907)
!3054 = !DILocation(line: 484, column: 1, scope: !2907)
!3055 = !DISubprogram(name: "kmalloc_trace", scope: !95, file: !95, line: 525, type: !3056, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3056 = !DISubroutineType(types: !3057)
!3057 = !{!108, !3058, !106, !278}
!3058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3059, size: 64)
!3059 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3060, line: 11, flags: DIFlagFwdDecl)
!3060 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3061 = distinct !DISubprogram(name: "kmalloc_type", scope: !95, file: !95, line: 401, type: !3062, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3064)
!3062 = !DISubroutineType(types: !3063)
!3063 = !{!94, !106, !105}
!3064 = !{!3065, !3066}
!3065 = !DILocalVariable(name: "flags", arg: 1, scope: !3061, file: !95, line: 401, type: !106)
!3066 = !DILocalVariable(name: "caller", arg: 2, scope: !3061, file: !95, line: 401, type: !105)
!3067 = !DILocation(line: 401, column: 67, scope: !3061)
!3068 = !DILocation(line: 401, column: 88, scope: !3061)
!3069 = !DILocation(line: 407, column: 6, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3061, file: !95, line: 407, column: 6)
!3071 = !DILocation(line: 407, column: 6, scope: !3061)
!3072 = !DILocation(line: 413, column: 3, scope: !3070)
!3073 = !DILocation(line: 423, column: 38, scope: !3074)
!3074 = distinct !DILexicalBlock(scope: !3061, file: !95, line: 423, column: 6)
!3075 = !DILocation(line: 423, column: 44, scope: !3074)
!3076 = !DILocation(line: 423, column: 6, scope: !3061)
!3077 = !DILocation(line: 424, column: 3, scope: !3074)
!3078 = !DILocation(line: 426, column: 3, scope: !3079)
!3079 = distinct !DILexicalBlock(scope: !3061, file: !95, line: 425, column: 6)
!3080 = !DILocation(line: 429, column: 1, scope: !3061)
!3081 = !DISubprogram(name: "__kmalloc", scope: !95, file: !95, line: 488, type: !2204, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3082 = !DISubprogram(name: "__compiletime_assert_191", scope: !95, file: !95, line: 478, type: !1166, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!3083 = !DISubprogram(name: "__init_swait_queue_head", scope: !818, file: !818, line: 69, type: !3084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{null, !3086, !133, !3087}
!3086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!3087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!3088 = distinct !DISubprogram(name: "cpuidle_sysfs_release", scope: !3, file: !3, line: 202, type: !251, scopeLine: 203, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3089)
!3089 = !{!3090, !3091, !3092}
!3090 = !DILocalVariable(name: "kobj", arg: 1, scope: !3088, file: !3, line: 202, type: !154)
!3091 = !DILocalVariable(name: "kdev", scope: !3088, file: !3, line: 204, type: !1233)
!3092 = !DILocalVariable(name: "__mptr", scope: !3093, file: !3, line: 205, type: !108)
!3093 = distinct !DILexicalBlock(scope: !3088, file: !3, line: 205, column: 3)
!3094 = !DILocation(line: 202, column: 51, scope: !3088)
!3095 = !DILocation(line: 204, column: 2, scope: !3088)
!3096 = !DILocation(line: 204, column: 30, scope: !3088)
!3097 = !DILocation(line: 205, column: 3, scope: !3093)
!3098 = !DILocation(line: 205, column: 3, scope: !3088)
!3099 = !DILocation(line: 207, column: 12, scope: !3088)
!3100 = !DILocation(line: 207, column: 18, scope: !3088)
!3101 = !DILocation(line: 207, column: 2, scope: !3088)
!3102 = !DILocation(line: 208, column: 1, scope: !3088)
!3103 = distinct !DISubprogram(name: "cpuidle_show", scope: !3, file: !3, line: 167, type: !261, scopeLine: 169, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3104)
!3104 = !{!3105, !3106, !3107, !3108, !3109, !3110, !3111}
!3105 = !DILocalVariable(name: "kobj", arg: 1, scope: !3103, file: !3, line: 167, type: !154)
!3106 = !DILocalVariable(name: "attr", arg: 2, scope: !3103, file: !3, line: 167, type: !268)
!3107 = !DILocalVariable(name: "buf", arg: 3, scope: !3103, file: !3, line: 168, type: !231)
!3108 = !DILocalVariable(name: "ret", scope: !3103, file: !3, line: 170, type: !46)
!3109 = !DILocalVariable(name: "dev", scope: !3103, file: !3, line: 171, type: !1189)
!3110 = !DILocalVariable(name: "cattr", scope: !3103, file: !3, line: 172, type: !1282)
!3111 = !DILocalVariable(name: "__mptr", scope: !3112, file: !3, line: 172, type: !108)
!3112 = distinct !DILexicalBlock(scope: !3103, file: !3, line: 172, column: 31)
!3113 = !DILocation(line: 167, column: 45, scope: !3103)
!3114 = !DILocation(line: 167, column: 69, scope: !3103)
!3115 = !DILocation(line: 168, column: 14, scope: !3103)
!3116 = !DILocation(line: 170, column: 2, scope: !3103)
!3117 = !DILocation(line: 170, column: 6, scope: !3103)
!3118 = !DILocation(line: 171, column: 2, scope: !3103)
!3119 = !DILocation(line: 171, column: 25, scope: !3103)
!3120 = !DILocation(line: 171, column: 49, scope: !3103)
!3121 = !DILocation(line: 171, column: 31, scope: !3103)
!3122 = !DILocation(line: 172, column: 2, scope: !3103)
!3123 = !DILocation(line: 172, column: 23, scope: !3103)
!3124 = !DILocation(line: 172, column: 31, scope: !3112)
!3125 = !DILocation(line: 172, column: 31, scope: !3103)
!3126 = !DILocation(line: 174, column: 6, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3103, file: !3, line: 174, column: 6)
!3128 = !DILocation(line: 174, column: 13, scope: !3127)
!3129 = !DILocation(line: 174, column: 6, scope: !3103)
!3130 = !DILocation(line: 175, column: 3, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3127, file: !3, line: 174, column: 19)
!3132 = !DILocation(line: 176, column: 9, scope: !3131)
!3133 = !DILocation(line: 176, column: 16, scope: !3131)
!3134 = !DILocation(line: 176, column: 21, scope: !3131)
!3135 = !DILocation(line: 176, column: 26, scope: !3131)
!3136 = !DILocation(line: 176, column: 7, scope: !3131)
!3137 = !DILocation(line: 177, column: 3, scope: !3131)
!3138 = !DILocation(line: 178, column: 2, scope: !3131)
!3139 = !DILocation(line: 179, column: 9, scope: !3103)
!3140 = !DILocation(line: 180, column: 1, scope: !3103)
!3141 = !DILocation(line: 179, column: 2, scope: !3103)
!3142 = distinct !DISubprogram(name: "cpuidle_store", scope: !3, file: !3, line: 182, type: !276, scopeLine: 184, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3143)
!3143 = !{!3144, !3145, !3146, !3147, !3148, !3149, !3150, !3151}
!3144 = !DILocalVariable(name: "kobj", arg: 1, scope: !3142, file: !3, line: 182, type: !154)
!3145 = !DILocalVariable(name: "attr", arg: 2, scope: !3142, file: !3, line: 182, type: !268)
!3146 = !DILocalVariable(name: "buf", arg: 3, scope: !3142, file: !3, line: 183, type: !133)
!3147 = !DILocalVariable(name: "count", arg: 4, scope: !3142, file: !3, line: 183, type: !278)
!3148 = !DILocalVariable(name: "ret", scope: !3142, file: !3, line: 185, type: !46)
!3149 = !DILocalVariable(name: "dev", scope: !3142, file: !3, line: 186, type: !1189)
!3150 = !DILocalVariable(name: "cattr", scope: !3142, file: !3, line: 187, type: !1282)
!3151 = !DILocalVariable(name: "__mptr", scope: !3152, file: !3, line: 187, type: !108)
!3152 = distinct !DILexicalBlock(scope: !3142, file: !3, line: 187, column: 31)
!3153 = !DILocation(line: 182, column: 46, scope: !3142)
!3154 = !DILocation(line: 182, column: 70, scope: !3142)
!3155 = !DILocation(line: 183, column: 21, scope: !3142)
!3156 = !DILocation(line: 183, column: 33, scope: !3142)
!3157 = !DILocation(line: 185, column: 2, scope: !3142)
!3158 = !DILocation(line: 185, column: 6, scope: !3142)
!3159 = !DILocation(line: 186, column: 2, scope: !3142)
!3160 = !DILocation(line: 186, column: 25, scope: !3142)
!3161 = !DILocation(line: 186, column: 49, scope: !3142)
!3162 = !DILocation(line: 186, column: 31, scope: !3142)
!3163 = !DILocation(line: 187, column: 2, scope: !3142)
!3164 = !DILocation(line: 187, column: 23, scope: !3142)
!3165 = !DILocation(line: 187, column: 31, scope: !3152)
!3166 = !DILocation(line: 187, column: 31, scope: !3142)
!3167 = !DILocation(line: 189, column: 6, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3142, file: !3, line: 189, column: 6)
!3169 = !DILocation(line: 189, column: 13, scope: !3168)
!3170 = !DILocation(line: 189, column: 6, scope: !3142)
!3171 = !DILocation(line: 190, column: 3, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3168, file: !3, line: 189, column: 20)
!3173 = !DILocation(line: 191, column: 9, scope: !3172)
!3174 = !DILocation(line: 191, column: 16, scope: !3172)
!3175 = !DILocation(line: 191, column: 22, scope: !3172)
!3176 = !DILocation(line: 191, column: 27, scope: !3172)
!3177 = !DILocation(line: 191, column: 32, scope: !3172)
!3178 = !DILocation(line: 191, column: 7, scope: !3172)
!3179 = !DILocation(line: 192, column: 3, scope: !3172)
!3180 = !DILocation(line: 193, column: 2, scope: !3172)
!3181 = !DILocation(line: 194, column: 9, scope: !3142)
!3182 = !DILocation(line: 195, column: 1, scope: !3142)
!3183 = !DILocation(line: 194, column: 2, scope: !3142)
!3184 = distinct !DISubprogram(name: "to_cpuidle_device", scope: !3, file: !3, line: 159, type: !3185, scopeLine: 160, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3187)
!3185 = !DISubroutineType(types: !3186)
!3186 = !{!1189, !154}
!3187 = !{!3188, !3189, !3190}
!3188 = !DILocalVariable(name: "kobj", arg: 1, scope: !3184, file: !3, line: 159, type: !154)
!3189 = !DILocalVariable(name: "kdev", scope: !3184, file: !3, line: 161, type: !1233)
!3190 = !DILocalVariable(name: "__mptr", scope: !3191, file: !3, line: 162, type: !108)
!3191 = distinct !DILexicalBlock(scope: !3184, file: !3, line: 162, column: 3)
!3192 = !DILocation(line: 159, column: 72, scope: !3184)
!3193 = !DILocation(line: 161, column: 2, scope: !3184)
!3194 = !DILocation(line: 161, column: 30, scope: !3184)
!3195 = !DILocation(line: 162, column: 3, scope: !3191)
!3196 = !DILocation(line: 162, column: 3, scope: !3184)
!3197 = !DILocation(line: 164, column: 9, scope: !3184)
!3198 = !DILocation(line: 164, column: 15, scope: !3184)
!3199 = !DILocation(line: 165, column: 1, scope: !3184)
!3200 = !DILocation(line: 164, column: 2, scope: !3184)
