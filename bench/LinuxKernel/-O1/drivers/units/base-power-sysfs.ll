; ModuleID = 'drivers/base/power/sysfs.c'
source_filename = "drivers/base/power/sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_power_group_name: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad power_group_name ; .previous"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
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
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
%struct.wakeup_source = type { ptr, i32, %struct.list_head, %struct.spinlock, ptr, %struct.timer_list, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, ptr, i8 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_pm_qos = type { %struct.pm_qos_constraints, %struct.pm_qos_constraints, %struct.freq_constraints, %struct.pm_qos_flags, ptr, ptr, ptr }
%struct.pm_qos_constraints = type { %struct.plist_head, i32, i32, i32, i32, ptr }
%struct.plist_head = type { %struct.list_head }
%struct.freq_constraints = type { %struct.pm_qos_constraints, %struct.blocking_notifier_head, %struct.pm_qos_constraints, %struct.blocking_notifier_head }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, ptr }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.optimistic_spin_queue, %struct.raw_spinlock, %struct.list_head }
%struct.pm_qos_flags = type { %struct.list_head, i32 }
%struct.dev_pm_qos_request = type { i32, %union.anon.2, ptr }
%union.anon.2 = type { %struct.freq_qos_request }
%struct.freq_qos_request = type { i32, %struct.plist_node, ptr }
%struct.plist_node = type { i32, %struct.list_head, %struct.list_head }
%struct.pm_qos_flags_request = type { %struct.list_head, i32 }

@power_group_name = hidden constant [6 x i8] c"power\00", align 1, !dbg !0
@__UNIQUE_ID___addressable_power_group_name204 = internal global ptr @power_group_name, section ".discard.addressable", align 8, !dbg !127
@pm_attr_group = internal constant %struct.attribute_group { ptr @power_group_name, ptr null, ptr null, ptr @power_attrs, ptr null }, align 8, !dbg !129
@pm_runtime_attr_group = internal constant %struct.attribute_group { ptr @power_group_name, ptr null, ptr null, ptr @runtime_attrs, ptr null }, align 8, !dbg !793
@pm_wakeup_attr_group = internal constant %struct.attribute_group { ptr @power_group_name, ptr null, ptr null, ptr @wakeup_attrs, ptr null }, align 8, !dbg !1768
@pm_qos_latency_tolerance_attr_group = internal constant %struct.attribute_group { ptr @power_group_name, ptr null, ptr null, ptr @pm_qos_latency_tolerance_attrs, ptr null }, align 8, !dbg !1842
@pm_qos_resume_latency_attr_group = internal constant %struct.attribute_group { ptr @power_group_name, ptr null, ptr null, ptr @pm_qos_resume_latency_attrs, ptr null }, align 8, !dbg !1858
@pm_qos_flags_attr_group = internal constant %struct.attribute_group { ptr @power_group_name, ptr null, ptr null, ptr @pm_qos_flags_attrs, ptr null }, align 8, !dbg !1873
@power_attrs = internal global [1 x ptr] zeroinitializer, align 8, !dbg !788
@runtime_attrs = internal global [6 x ptr] [ptr @dev_attr_runtime_status, ptr @dev_attr_control, ptr @dev_attr_runtime_suspended_time, ptr @dev_attr_runtime_active_time, ptr @dev_attr_autosuspend_delay_ms, ptr null], align 16, !dbg !795
@dev_attr_runtime_status = internal global %struct.device_attribute { %struct.attribute { ptr @.str, i16 292 }, ptr @runtime_status_show, ptr null }, align 8, !dbg !805
@dev_attr_control = internal global %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 420 }, ptr @control_show, ptr @control_store }, align 8, !dbg !1733
@dev_attr_runtime_suspended_time = internal global %struct.device_attribute { %struct.attribute { ptr @.str.9, i16 292 }, ptr @runtime_suspended_time_show, ptr null }, align 8, !dbg !1748
@dev_attr_runtime_active_time = internal global %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292 }, ptr @runtime_active_time_show, ptr null }, align 8, !dbg !1757
@dev_attr_autosuspend_delay_ms = internal global %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420 }, ptr @autosuspend_delay_ms_show, ptr @autosuspend_delay_ms_store }, align 8, !dbg !1764
@.str = private unnamed_addr constant [15 x i8] c"runtime_status\00", align 1, !dbg !800
@.str.1 = private unnamed_addr constant [6 x i8] c"error\00", align 1, !dbg !1701
@.str.2 = private unnamed_addr constant [12 x i8] c"unsupported\00", align 1, !dbg !1704
@.str.3 = private unnamed_addr constant [10 x i8] c"suspended\00", align 1, !dbg !1709
@.str.4 = private unnamed_addr constant [11 x i8] c"suspending\00", align 1, !dbg !1714
@.str.5 = private unnamed_addr constant [9 x i8] c"resuming\00", align 1, !dbg !1719
@.str.6 = private unnamed_addr constant [7 x i8] c"active\00", align 1, !dbg !1724
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !1727
@.str.8 = private unnamed_addr constant [8 x i8] c"control\00", align 1, !dbg !1730
@ctrl_auto = internal constant [5 x i8] c"auto\00", align 1, !dbg !1735
@ctrl_on = internal constant [3 x i8] c"on\00", align 1, !dbg !1740
@.str.9 = private unnamed_addr constant [23 x i8] c"runtime_suspended_time\00", align 1, !dbg !1743
@.str.10 = private unnamed_addr constant [6 x i8] c"%llu\0A\00", align 1, !dbg !1750
@.str.11 = private unnamed_addr constant [20 x i8] c"runtime_active_time\00", align 1, !dbg !1752
@.str.12 = private unnamed_addr constant [21 x i8] c"autosuspend_delay_ms\00", align 1, !dbg !1759
@.str.13 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1, !dbg !1766
@wakeup_attrs = internal global [10 x ptr] [ptr @dev_attr_wakeup, ptr @dev_attr_wakeup_count, ptr @dev_attr_wakeup_active_count, ptr @dev_attr_wakeup_abort_count, ptr @dev_attr_wakeup_expire_count, ptr @dev_attr_wakeup_active, ptr @dev_attr_wakeup_total_time_ms, ptr @dev_attr_wakeup_max_time_ms, ptr @dev_attr_wakeup_last_time_ms, ptr null], align 16, !dbg !1770
@dev_attr_wakeup = internal global %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420 }, ptr @wakeup_show, ptr @wakeup_store }, align 8, !dbg !1775
@dev_attr_wakeup_count = internal global %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292 }, ptr @wakeup_count_show, ptr null }, align 8, !dbg !1791
@dev_attr_wakeup_active_count = internal global %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292 }, ptr @wakeup_active_count_show, ptr null }, align 8, !dbg !1801
@dev_attr_wakeup_abort_count = internal global %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292 }, ptr @wakeup_abort_count_show, ptr null }, align 8, !dbg !1808
@dev_attr_wakeup_expire_count = internal global %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292 }, ptr @wakeup_expire_count_show, ptr null }, align 8, !dbg !1812
@dev_attr_wakeup_active = internal global %struct.device_attribute { %struct.attribute { ptr @.str.22, i16 292 }, ptr @wakeup_active_show, ptr null }, align 8, !dbg !1819
@dev_attr_wakeup_total_time_ms = internal global %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292 }, ptr @wakeup_total_time_ms_show, ptr null }, align 8, !dbg !1825
@dev_attr_wakeup_max_time_ms = internal global %struct.device_attribute { %struct.attribute { ptr @.str.27, i16 292 }, ptr @wakeup_max_time_ms_show, ptr null }, align 8, !dbg !1836
@dev_attr_wakeup_last_time_ms = internal global %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292 }, ptr @wakeup_last_time_ms_show, ptr null }, align 8, !dbg !1840
@.str.14 = private unnamed_addr constant [7 x i8] c"wakeup\00", align 1, !dbg !1773
@_enabled = internal constant [8 x i8] c"enabled\00", align 1, !dbg !1780
@_disabled = internal constant [9 x i8] c"disabled\00", align 1, !dbg !1783
@.str.15 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1, !dbg !1777
@.str.16 = private unnamed_addr constant [13 x i8] c"wakeup_count\00", align 1, !dbg !1786
@.str.17 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1, !dbg !1793
@.str.18 = private unnamed_addr constant [5 x i8] c"%lu\0A\00", align 1, !dbg !1796
@.str.19 = private unnamed_addr constant [20 x i8] c"wakeup_active_count\00", align 1, !dbg !1799
@.str.20 = private unnamed_addr constant [19 x i8] c"wakeup_abort_count\00", align 1, !dbg !1803
@.str.21 = private unnamed_addr constant [20 x i8] c"wakeup_expire_count\00", align 1, !dbg !1810
@.str.22 = private unnamed_addr constant [14 x i8] c"wakeup_active\00", align 1, !dbg !1814
@.str.23 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1, !dbg !1821
@.str.24 = private unnamed_addr constant [21 x i8] c"wakeup_total_time_ms\00", align 1, !dbg !1823
@.str.25 = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1, !dbg !1827
@.str.26 = private unnamed_addr constant [22 x i8] c"include/linux/ktime.h\00", align 1, !dbg !1829
@.str.27 = private unnamed_addr constant [19 x i8] c"wakeup_max_time_ms\00", align 1, !dbg !1834
@.str.28 = private unnamed_addr constant [20 x i8] c"wakeup_last_time_ms\00", align 1, !dbg !1838
@pm_qos_latency_tolerance_attrs = internal global [2 x ptr] [ptr @dev_attr_pm_qos_latency_tolerance_us, ptr null], align 16, !dbg !1844
@dev_attr_pm_qos_latency_tolerance_us = internal global %struct.device_attribute { %struct.attribute { ptr @.str.29, i16 420 }, ptr @pm_qos_latency_tolerance_us_show, ptr @pm_qos_latency_tolerance_us_store }, align 8, !dbg !1852
@.str.29 = private unnamed_addr constant [28 x i8] c"pm_qos_latency_tolerance_us\00", align 1, !dbg !1847
@.str.30 = private unnamed_addr constant [5 x i8] c"auto\00", align 1, !dbg !1854
@.str.31 = private unnamed_addr constant [4 x i8] c"any\00", align 1, !dbg !1856
@pm_qos_resume_latency_attrs = internal global [2 x ptr] [ptr @dev_attr_pm_qos_resume_latency_us, ptr null], align 16, !dbg !1860
@dev_attr_pm_qos_resume_latency_us = internal global %struct.device_attribute { %struct.attribute { ptr @.str.32, i16 420 }, ptr @pm_qos_resume_latency_us_show, ptr @pm_qos_resume_latency_us_store }, align 8, !dbg !1867
@.str.32 = private unnamed_addr constant [25 x i8] c"pm_qos_resume_latency_us\00", align 1, !dbg !1862
@.str.33 = private unnamed_addr constant [5 x i8] c"n/a\0A\00", align 1, !dbg !1869
@.str.34 = private unnamed_addr constant [4 x i8] c"n/a\00", align 1, !dbg !1871
@pm_qos_flags_attrs = internal global [2 x ptr] [ptr @dev_attr_pm_qos_no_power_off, ptr null], align 16, !dbg !1875
@dev_attr_pm_qos_no_power_off = internal global %struct.device_attribute { %struct.attribute { ptr @.str.35, i16 420 }, ptr @pm_qos_no_power_off_show, ptr @pm_qos_no_power_off_store }, align 8, !dbg !1879
@.str.35 = private unnamed_addr constant [20 x i8] c"pm_qos_no_power_off\00", align 1, !dbg !1877
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable_power_group_name204], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @dpm_sysfs_add(ptr noundef %dev) #0 align 16 !dbg !1891 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1893, metadata !DIExpression()), !dbg !1899
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #7, !dbg !1900
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !1894, metadata !DIExpression()), !dbg !1901
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1902
  %call = call zeroext i1 @device_pm_not_required(ptr noundef %0) #8, !dbg !1904
  br i1 %call, label %if.then, label %if.end, !dbg !1905

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !1906
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1906

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !1907
  %kobj = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 0, !dbg !1908
  %call1 = call i32 @sysfs_create_group(ptr noundef %kobj, ptr noundef @pm_attr_group) #8, !dbg !1909
  store i32 %call1, ptr %rc, align 4, !dbg !1910
  %2 = load i32, ptr %rc, align 4, !dbg !1911
  %tobool = icmp ne i32 %2, 0, !dbg !1911
  br i1 %tobool, label %if.then2, label %if.end3, !dbg !1913

if.then2:                                         ; preds = %if.end
  %3 = load i32, ptr %rc, align 4, !dbg !1914
  store i32 %3, ptr %retval, align 4, !dbg !1915
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1915

if.end3:                                          ; preds = %if.end
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !1916
  %call4 = call zeroext i1 @pm_runtime_has_no_callbacks(ptr noundef %4) #8, !dbg !1918
  br i1 %call4, label %if.end11, label %if.then5, !dbg !1919

if.then5:                                         ; preds = %if.end3
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !1920
  %kobj6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 0, !dbg !1922
  %call7 = call i32 @sysfs_merge_group(ptr noundef %kobj6, ptr noundef @pm_runtime_attr_group) #8, !dbg !1923
  store i32 %call7, ptr %rc, align 4, !dbg !1924
  %6 = load i32, ptr %rc, align 4, !dbg !1925
  %tobool8 = icmp ne i32 %6, 0, !dbg !1925
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !1927

if.then9:                                         ; preds = %if.then5
  br label %err_out, !dbg !1928

if.end10:                                         ; preds = %if.then5
  br label %if.end11, !dbg !1929

if.end11:                                         ; preds = %if.end10, %if.end3
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !1930
  %call12 = call zeroext i1 @device_can_wakeup(ptr noundef %7) #8, !dbg !1932
  br i1 %call12, label %if.then13, label %if.end19, !dbg !1933

if.then13:                                        ; preds = %if.end11
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !1934
  %kobj14 = getelementptr inbounds %struct.device, ptr %8, i32 0, i32 0, !dbg !1936
  %call15 = call i32 @sysfs_merge_group(ptr noundef %kobj14, ptr noundef @pm_wakeup_attr_group) #8, !dbg !1937
  store i32 %call15, ptr %rc, align 4, !dbg !1938
  %9 = load i32, ptr %rc, align 4, !dbg !1939
  %tobool16 = icmp ne i32 %9, 0, !dbg !1939
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !1941

if.then17:                                        ; preds = %if.then13
  br label %err_runtime, !dbg !1942

if.end18:                                         ; preds = %if.then13
  br label %if.end19, !dbg !1943

if.end19:                                         ; preds = %if.end18, %if.end11
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !1944
  %power = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 11, !dbg !1946
  %set_latency_tolerance = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 27, !dbg !1947
  %11 = load ptr, ptr %set_latency_tolerance, align 8, !dbg !1947
  %tobool20 = icmp ne ptr %11, null, !dbg !1944
  br i1 %tobool20, label %if.then21, label %if.end27, !dbg !1948

if.then21:                                        ; preds = %if.end19
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !1949
  %kobj22 = getelementptr inbounds %struct.device, ptr %12, i32 0, i32 0, !dbg !1951
  %call23 = call i32 @sysfs_merge_group(ptr noundef %kobj22, ptr noundef @pm_qos_latency_tolerance_attr_group) #8, !dbg !1952
  store i32 %call23, ptr %rc, align 4, !dbg !1953
  %13 = load i32, ptr %rc, align 4, !dbg !1954
  %tobool24 = icmp ne i32 %13, 0, !dbg !1954
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !1956

if.then25:                                        ; preds = %if.then21
  br label %err_wakeup, !dbg !1957

if.end26:                                         ; preds = %if.then21
  br label %if.end27, !dbg !1958

if.end27:                                         ; preds = %if.end26, %if.end19
  %14 = load ptr, ptr %dev.addr, align 8, !dbg !1959
  %call28 = call i32 @pm_wakeup_source_sysfs_add(ptr noundef %14) #8, !dbg !1960
  store i32 %call28, ptr %rc, align 4, !dbg !1961
  %15 = load i32, ptr %rc, align 4, !dbg !1962
  %tobool29 = icmp ne i32 %15, 0, !dbg !1962
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !1964

if.then30:                                        ; preds = %if.end27
  br label %err_latency, !dbg !1965

if.end31:                                         ; preds = %if.end27
  store i32 0, ptr %retval, align 4, !dbg !1966
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1966

err_latency:                                      ; preds = %if.then30
  call void @llvm.dbg.label(metadata !1895), !dbg !1967
  %16 = load ptr, ptr %dev.addr, align 8, !dbg !1968
  %kobj32 = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 0, !dbg !1969
  call void @sysfs_unmerge_group(ptr noundef %kobj32, ptr noundef @pm_qos_latency_tolerance_attr_group) #8, !dbg !1970
  br label %err_wakeup, !dbg !1970

err_wakeup:                                       ; preds = %err_latency, %if.then25
  call void @llvm.dbg.label(metadata !1896), !dbg !1971
  %17 = load ptr, ptr %dev.addr, align 8, !dbg !1972
  %kobj33 = getelementptr inbounds %struct.device, ptr %17, i32 0, i32 0, !dbg !1973
  call void @sysfs_unmerge_group(ptr noundef %kobj33, ptr noundef @pm_wakeup_attr_group) #8, !dbg !1974
  br label %err_runtime, !dbg !1974

err_runtime:                                      ; preds = %err_wakeup, %if.then17
  call void @llvm.dbg.label(metadata !1897), !dbg !1975
  %18 = load ptr, ptr %dev.addr, align 8, !dbg !1976
  %kobj34 = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 0, !dbg !1977
  call void @sysfs_unmerge_group(ptr noundef %kobj34, ptr noundef @pm_runtime_attr_group) #8, !dbg !1978
  br label %err_out, !dbg !1978

err_out:                                          ; preds = %err_runtime, %if.then9
  call void @llvm.dbg.label(metadata !1898), !dbg !1979
  %19 = load ptr, ptr %dev.addr, align 8, !dbg !1980
  %kobj35 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 0, !dbg !1981
  call void @sysfs_remove_group(ptr noundef %kobj35, ptr noundef @pm_attr_group) #8, !dbg !1982
  %20 = load i32, ptr %rc, align 4, !dbg !1983
  store i32 %20, ptr %retval, align 4, !dbg !1984
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !1984

cleanup:                                          ; preds = %err_out, %if.end31, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #7, !dbg !1985
  %21 = load i32, ptr %retval, align 4, !dbg !1985
  ret i32 %21, !dbg !1985
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @device_pm_not_required(ptr noundef %dev) #3 align 16 !dbg !1986 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !1990, metadata !DIExpression()), !dbg !1991
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !1992
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !1993
  %no_pm = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 1, !dbg !1994
  %bf.load = load i16, ptr %no_pm, align 4, !dbg !1994
  %bf.lshr = lshr i16 %bf.load, 7, !dbg !1994
  %bf.clear = and i16 %bf.lshr, 1, !dbg !1994
  %bf.cast = trunc i16 %bf.clear to i1, !dbg !1994
  ret i1 %bf.cast, !dbg !1995
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !1996 dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @pm_runtime_has_no_callbacks(ptr noundef %dev) #3 align 16 !dbg !1999 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2002, metadata !DIExpression()), !dbg !2003
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2004
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !2005
  %no_callbacks = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 15, !dbg !2006
  %bf.load = load i16, ptr %no_callbacks, align 8, !dbg !2006
  %bf.lshr = lshr i16 %bf.load, 9, !dbg !2006
  %bf.clear = and i16 %bf.lshr, 1, !dbg !2006
  %bf.cast = zext i16 %bf.clear to i32, !dbg !2006
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !2004
  ret i1 %tobool, !dbg !2007
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2008 dso_local i32 @sysfs_merge_group(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @device_can_wakeup(ptr noundef %dev) #3 align 16 !dbg !2009 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2011, metadata !DIExpression()), !dbg !2012
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2013
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !2014
  %can_wakeup = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 1, !dbg !2015
  %bf.load = load i16, ptr %can_wakeup, align 4, !dbg !2015
  %bf.clear = and i16 %bf.load, 1, !dbg !2015
  %bf.cast = zext i16 %bf.clear to i32, !dbg !2015
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !2013
  ret i1 %tobool, !dbg !2016
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2017 dso_local i32 @pm_wakeup_source_sysfs_add(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2018 dso_local void @sysfs_unmerge_group(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2021 dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @dpm_sysfs_change_owner(ptr noundef %dev, i32 %kuid.coerce, i32 %kgid.coerce) #0 align 16 !dbg !2022 {
entry:
  %retval = alloca i32, align 4
  %kuid = alloca %struct.kuid_t, align 4
  %kgid = alloca %struct.kgid_t, align 4
  %dev.addr = alloca ptr, align 8
  %rc = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive1, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2026, metadata !DIExpression()), !dbg !2030
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !2027, metadata !DIExpression()), !dbg !2031
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !2028, metadata !DIExpression()), !dbg !2032
  call void @llvm.lifetime.start.p0(i64 4, ptr %rc) #7, !dbg !2033
  call void @llvm.dbg.declare(metadata ptr %rc, metadata !2029, metadata !DIExpression()), !dbg !2034
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2035
  %call = call zeroext i1 @device_pm_not_required(ptr noundef %0) #8, !dbg !2037
  br i1 %call, label %if.then, label %if.end, !dbg !2038

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2039
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2039

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2040
  %kobj = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 0, !dbg !2041
  %coerce.dive2 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !2042
  %2 = load i32, ptr %coerce.dive2, align 4, !dbg !2042
  %coerce.dive3 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !2042
  %3 = load i32, ptr %coerce.dive3, align 4, !dbg !2042
  %call4 = call i32 @sysfs_group_change_owner(ptr noundef %kobj, ptr noundef @pm_attr_group, i32 %2, i32 %3) #8, !dbg !2042
  store i32 %call4, ptr %rc, align 4, !dbg !2043
  %4 = load i32, ptr %rc, align 4, !dbg !2044
  %tobool = icmp ne i32 %4, 0, !dbg !2044
  br i1 %tobool, label %if.then5, label %if.end6, !dbg !2046

if.then5:                                         ; preds = %if.end
  %5 = load i32, ptr %rc, align 4, !dbg !2047
  store i32 %5, ptr %retval, align 4, !dbg !2048
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2048

if.end6:                                          ; preds = %if.end
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !2049
  %call7 = call zeroext i1 @pm_runtime_has_no_callbacks(ptr noundef %6) #8, !dbg !2051
  br i1 %call7, label %if.end16, label %if.then8, !dbg !2052

if.then8:                                         ; preds = %if.end6
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !2053
  %kobj9 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 0, !dbg !2055
  %coerce.dive10 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !2056
  %8 = load i32, ptr %coerce.dive10, align 4, !dbg !2056
  %coerce.dive11 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !2056
  %9 = load i32, ptr %coerce.dive11, align 4, !dbg !2056
  %call12 = call i32 @sysfs_group_change_owner(ptr noundef %kobj9, ptr noundef @pm_runtime_attr_group, i32 %8, i32 %9) #8, !dbg !2056
  store i32 %call12, ptr %rc, align 4, !dbg !2057
  %10 = load i32, ptr %rc, align 4, !dbg !2058
  %tobool13 = icmp ne i32 %10, 0, !dbg !2058
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !2060

if.then14:                                        ; preds = %if.then8
  %11 = load i32, ptr %rc, align 4, !dbg !2061
  store i32 %11, ptr %retval, align 4, !dbg !2062
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2062

if.end15:                                         ; preds = %if.then8
  br label %if.end16, !dbg !2063

if.end16:                                         ; preds = %if.end15, %if.end6
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !2064
  %call17 = call zeroext i1 @device_can_wakeup(ptr noundef %12) #8, !dbg !2066
  br i1 %call17, label %if.then18, label %if.end32, !dbg !2067

if.then18:                                        ; preds = %if.end16
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !2068
  %kobj19 = getelementptr inbounds %struct.device, ptr %13, i32 0, i32 0, !dbg !2070
  %coerce.dive20 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !2071
  %14 = load i32, ptr %coerce.dive20, align 4, !dbg !2071
  %coerce.dive21 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !2071
  %15 = load i32, ptr %coerce.dive21, align 4, !dbg !2071
  %call22 = call i32 @sysfs_group_change_owner(ptr noundef %kobj19, ptr noundef @pm_wakeup_attr_group, i32 %14, i32 %15) #8, !dbg !2071
  store i32 %call22, ptr %rc, align 4, !dbg !2072
  %16 = load i32, ptr %rc, align 4, !dbg !2073
  %tobool23 = icmp ne i32 %16, 0, !dbg !2073
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !2075

if.then24:                                        ; preds = %if.then18
  %17 = load i32, ptr %rc, align 4, !dbg !2076
  store i32 %17, ptr %retval, align 4, !dbg !2077
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2077

if.end25:                                         ; preds = %if.then18
  %18 = load ptr, ptr %dev.addr, align 8, !dbg !2078
  %coerce.dive26 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !2079
  %19 = load i32, ptr %coerce.dive26, align 4, !dbg !2079
  %coerce.dive27 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !2079
  %20 = load i32, ptr %coerce.dive27, align 4, !dbg !2079
  %call28 = call i32 @dpm_sysfs_wakeup_change_owner(ptr noundef %18, i32 %19, i32 %20) #8, !dbg !2079
  store i32 %call28, ptr %rc, align 4, !dbg !2080
  %21 = load i32, ptr %rc, align 4, !dbg !2081
  %tobool29 = icmp ne i32 %21, 0, !dbg !2081
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !2083

if.then30:                                        ; preds = %if.end25
  %22 = load i32, ptr %rc, align 4, !dbg !2084
  store i32 %22, ptr %retval, align 4, !dbg !2085
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2085

if.end31:                                         ; preds = %if.end25
  br label %if.end32, !dbg !2086

if.end32:                                         ; preds = %if.end31, %if.end16
  %23 = load ptr, ptr %dev.addr, align 8, !dbg !2087
  %power = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 11, !dbg !2089
  %set_latency_tolerance = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 27, !dbg !2090
  %24 = load ptr, ptr %set_latency_tolerance, align 8, !dbg !2090
  %tobool33 = icmp ne ptr %24, null, !dbg !2087
  br i1 %tobool33, label %if.then34, label %if.end42, !dbg !2091

if.then34:                                        ; preds = %if.end32
  %25 = load ptr, ptr %dev.addr, align 8, !dbg !2092
  %kobj35 = getelementptr inbounds %struct.device, ptr %25, i32 0, i32 0, !dbg !2094
  %coerce.dive36 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !2095
  %26 = load i32, ptr %coerce.dive36, align 4, !dbg !2095
  %coerce.dive37 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !2095
  %27 = load i32, ptr %coerce.dive37, align 4, !dbg !2095
  %call38 = call i32 @sysfs_group_change_owner(ptr noundef %kobj35, ptr noundef @pm_qos_latency_tolerance_attr_group, i32 %26, i32 %27) #8, !dbg !2095
  store i32 %call38, ptr %rc, align 4, !dbg !2096
  %28 = load i32, ptr %rc, align 4, !dbg !2097
  %tobool39 = icmp ne i32 %28, 0, !dbg !2097
  br i1 %tobool39, label %if.then40, label %if.end41, !dbg !2099

if.then40:                                        ; preds = %if.then34
  %29 = load i32, ptr %rc, align 4, !dbg !2100
  store i32 %29, ptr %retval, align 4, !dbg !2101
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2101

if.end41:                                         ; preds = %if.then34
  br label %if.end42, !dbg !2102

if.end42:                                         ; preds = %if.end41, %if.end32
  store i32 0, ptr %retval, align 4, !dbg !2103
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2103

cleanup:                                          ; preds = %if.end42, %if.then40, %if.then30, %if.then24, %if.then14, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %rc) #7, !dbg !2104
  %30 = load i32, ptr %retval, align 4, !dbg !2104
  ret i32 %30, !dbg !2104
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2105 dso_local i32 @sysfs_group_change_owner(ptr noundef, ptr noundef, i32, i32) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dpm_sysfs_wakeup_change_owner(ptr noundef %dev, i32 %kuid.coerce, i32 %kgid.coerce) #3 align 16 !dbg !2108 {
entry:
  %retval = alloca i32, align 4
  %kuid = alloca %struct.kuid_t, align 4
  %kgid = alloca %struct.kgid_t, align 4
  %dev.addr = alloca ptr, align 8
  %coerce.dive = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0
  store i32 %kuid.coerce, ptr %coerce.dive, align 4
  %coerce.dive1 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0
  store i32 %kgid.coerce, ptr %coerce.dive1, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2110, metadata !DIExpression()), !dbg !2113
  call void @llvm.dbg.declare(metadata ptr %kuid, metadata !2111, metadata !DIExpression()), !dbg !2114
  call void @llvm.dbg.declare(metadata ptr %kgid, metadata !2112, metadata !DIExpression()), !dbg !2115
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2116
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !2118
  %wakeup = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 6, !dbg !2119
  %1 = load ptr, ptr %wakeup, align 8, !dbg !2119
  %tobool = icmp ne ptr %1, null, !dbg !2116
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2120

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2121
  %power2 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 11, !dbg !2122
  %wakeup3 = getelementptr inbounds %struct.dev_pm_info, ptr %power2, i32 0, i32 6, !dbg !2123
  %3 = load ptr, ptr %wakeup3, align 8, !dbg !2123
  %dev4 = getelementptr inbounds %struct.wakeup_source, ptr %3, i32 0, i32 17, !dbg !2124
  %4 = load ptr, ptr %dev4, align 8, !dbg !2124
  %tobool5 = icmp ne ptr %4, null, !dbg !2121
  br i1 %tobool5, label %if.then, label %if.end, !dbg !2125

if.then:                                          ; preds = %land.lhs.true
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !2126
  %power6 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 11, !dbg !2127
  %wakeup7 = getelementptr inbounds %struct.dev_pm_info, ptr %power6, i32 0, i32 6, !dbg !2128
  %6 = load ptr, ptr %wakeup7, align 8, !dbg !2128
  %dev8 = getelementptr inbounds %struct.wakeup_source, ptr %6, i32 0, i32 17, !dbg !2129
  %7 = load ptr, ptr %dev8, align 8, !dbg !2129
  %coerce.dive9 = getelementptr inbounds %struct.kuid_t, ptr %kuid, i32 0, i32 0, !dbg !2130
  %8 = load i32, ptr %coerce.dive9, align 4, !dbg !2130
  %coerce.dive10 = getelementptr inbounds %struct.kgid_t, ptr %kgid, i32 0, i32 0, !dbg !2130
  %9 = load i32, ptr %coerce.dive10, align 4, !dbg !2130
  %call = call i32 @device_change_owner(ptr noundef %7, i32 %8, i32 %9) #8, !dbg !2130
  store i32 %call, ptr %retval, align 4, !dbg !2131
  br label %return, !dbg !2131

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4, !dbg !2132
  br label %return, !dbg !2132

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, ptr %retval, align 4, !dbg !2133
  ret i32 %10, !dbg !2133
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @wakeup_sysfs_add(ptr noundef %dev) #0 align 16 !dbg !2134 {
entry:
  %dev.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2136, metadata !DIExpression()), !dbg !2138
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !2139
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2137, metadata !DIExpression()), !dbg !2140
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2141
  %kobj = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 0, !dbg !2142
  %call = call i32 @sysfs_merge_group(ptr noundef %kobj, ptr noundef @pm_wakeup_attr_group) #8, !dbg !2143
  store i32 %call, ptr %ret, align 4, !dbg !2140
  %1 = load i32, ptr %ret, align 4, !dbg !2144
  %tobool = icmp ne i32 %1, 0, !dbg !2144
  br i1 %tobool, label %if.end, label %if.then, !dbg !2146

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2147
  %kobj1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 0, !dbg !2148
  %call2 = call i32 @kobject_uevent(ptr noundef %kobj1, i32 noundef 2) #8, !dbg !2149
  br label %if.end, !dbg !2149

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, ptr %ret, align 4, !dbg !2150
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !2151
  ret i32 %3, !dbg !2152
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2153 dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @wakeup_sysfs_remove(ptr noundef %dev) #0 align 16 !dbg !2156 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2158, metadata !DIExpression()), !dbg !2159
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2160
  %kobj = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 0, !dbg !2161
  call void @sysfs_unmerge_group(ptr noundef %kobj, ptr noundef @pm_wakeup_attr_group) #8, !dbg !2162
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2163
  %kobj1 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 0, !dbg !2164
  %call = call i32 @kobject_uevent(ptr noundef %kobj1, i32 noundef 2) #8, !dbg !2165
  ret void, !dbg !2166
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pm_qos_sysfs_add_resume_latency(ptr noundef %dev) #0 align 16 !dbg !2167 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2169, metadata !DIExpression()), !dbg !2170
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2171
  %kobj = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 0, !dbg !2172
  %call = call i32 @sysfs_merge_group(ptr noundef %kobj, ptr noundef @pm_qos_resume_latency_attr_group) #8, !dbg !2173
  ret i32 %call, !dbg !2174
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pm_qos_sysfs_remove_resume_latency(ptr noundef %dev) #0 align 16 !dbg !2175 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2177, metadata !DIExpression()), !dbg !2178
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2179
  %kobj = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 0, !dbg !2180
  call void @sysfs_unmerge_group(ptr noundef %kobj, ptr noundef @pm_qos_resume_latency_attr_group) #8, !dbg !2181
  ret void, !dbg !2182
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pm_qos_sysfs_add_flags(ptr noundef %dev) #0 align 16 !dbg !2183 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2185, metadata !DIExpression()), !dbg !2186
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2187
  %kobj = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 0, !dbg !2188
  %call = call i32 @sysfs_merge_group(ptr noundef %kobj, ptr noundef @pm_qos_flags_attr_group) #8, !dbg !2189
  ret i32 %call, !dbg !2190
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pm_qos_sysfs_remove_flags(ptr noundef %dev) #0 align 16 !dbg !2191 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2193, metadata !DIExpression()), !dbg !2194
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2195
  %kobj = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 0, !dbg !2196
  call void @sysfs_unmerge_group(ptr noundef %kobj, ptr noundef @pm_qos_flags_attr_group) #8, !dbg !2197
  ret void, !dbg !2198
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @pm_qos_sysfs_add_latency_tolerance(ptr noundef %dev) #0 align 16 !dbg !2199 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2201, metadata !DIExpression()), !dbg !2202
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2203
  %kobj = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 0, !dbg !2204
  %call = call i32 @sysfs_merge_group(ptr noundef %kobj, ptr noundef @pm_qos_latency_tolerance_attr_group) #8, !dbg !2205
  ret i32 %call, !dbg !2206
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @pm_qos_sysfs_remove_latency_tolerance(ptr noundef %dev) #0 align 16 !dbg !2207 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2209, metadata !DIExpression()), !dbg !2210
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2211
  %kobj = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 0, !dbg !2212
  call void @sysfs_unmerge_group(ptr noundef %kobj, ptr noundef @pm_qos_latency_tolerance_attr_group) #8, !dbg !2213
  ret void, !dbg !2214
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @rpm_sysfs_remove(ptr noundef %dev) #0 align 16 !dbg !2215 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2217, metadata !DIExpression()), !dbg !2218
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2219
  %kobj = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 0, !dbg !2220
  call void @sysfs_unmerge_group(ptr noundef %kobj, ptr noundef @pm_runtime_attr_group) #8, !dbg !2221
  ret void, !dbg !2222
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @dpm_sysfs_remove(ptr noundef %dev) #0 align 16 !dbg !2223 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2225, metadata !DIExpression()), !dbg !2226
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2227
  %call = call zeroext i1 @device_pm_not_required(ptr noundef %0) #8, !dbg !2229
  br i1 %call, label %if.then, label %if.end, !dbg !2230

if.then:                                          ; preds = %entry
  br label %return, !dbg !2231

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2232
  %kobj = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 0, !dbg !2233
  call void @sysfs_unmerge_group(ptr noundef %kobj, ptr noundef @pm_qos_latency_tolerance_attr_group) #8, !dbg !2234
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2235
  call void @dev_pm_qos_constraints_destroy(ptr noundef %2) #8, !dbg !2236
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !2237
  call void @rpm_sysfs_remove(ptr noundef %3) #8, !dbg !2238
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !2239
  %kobj1 = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !2240
  call void @sysfs_unmerge_group(ptr noundef %kobj1, ptr noundef @pm_wakeup_attr_group) #8, !dbg !2241
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !2242
  %kobj2 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 0, !dbg !2243
  call void @sysfs_remove_group(ptr noundef %kobj2, ptr noundef @pm_attr_group) #8, !dbg !2244
  br label %return, !dbg !2245

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2245
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2246 dso_local void @dev_pm_qos_constraints_destroy(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @runtime_status_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2247 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %output = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2249, metadata !DIExpression()), !dbg !2253
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2250, metadata !DIExpression()), !dbg !2254
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2251, metadata !DIExpression()), !dbg !2255
  call void @llvm.lifetime.start.p0(i64 8, ptr %output) #7, !dbg !2256
  call void @llvm.dbg.declare(metadata ptr %output, metadata !2252, metadata !DIExpression()), !dbg !2257
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2258
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !2260
  %runtime_error = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 20, !dbg !2261
  %1 = load i32, ptr %runtime_error, align 4, !dbg !2261
  %tobool = icmp ne i32 %1, 0, !dbg !2258
  br i1 %tobool, label %if.then, label %if.else, !dbg !2262

if.then:                                          ; preds = %entry
  store ptr @.str.1, ptr %output, align 8, !dbg !2263
  br label %if.end9, !dbg !2265

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2266
  %power1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 11, !dbg !2268
  %disable_depth = getelementptr inbounds %struct.dev_pm_info, ptr %power1, i32 0, i32 15, !dbg !2269
  %bf.load = load i16, ptr %disable_depth, align 8, !dbg !2269
  %bf.clear = and i16 %bf.load, 7, !dbg !2269
  %bf.cast = zext i16 %bf.clear to i32, !dbg !2269
  %tobool2 = icmp ne i32 %bf.cast, 0, !dbg !2266
  br i1 %tobool2, label %if.then3, label %if.else4, !dbg !2270

if.then3:                                         ; preds = %if.else
  store ptr @.str.2, ptr %output, align 8, !dbg !2271
  br label %if.end, !dbg !2273

if.else4:                                         ; preds = %if.else
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !2274
  %power5 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 11, !dbg !2276
  %runtime_status = getelementptr inbounds %struct.dev_pm_info, ptr %power5, i32 0, i32 18, !dbg !2277
  %4 = load i32, ptr %runtime_status, align 4, !dbg !2277
  switch i32 %4, label %sw.default [
    i32 2, label %sw.bb
    i32 3, label %sw.bb6
    i32 1, label %sw.bb7
    i32 0, label %sw.bb8
  ], !dbg !2278

sw.bb:                                            ; preds = %if.else4
  store ptr @.str.3, ptr %output, align 8, !dbg !2279
  br label %sw.epilog, !dbg !2281

sw.bb6:                                           ; preds = %if.else4
  store ptr @.str.4, ptr %output, align 8, !dbg !2282
  br label %sw.epilog, !dbg !2283

sw.bb7:                                           ; preds = %if.else4
  store ptr @.str.5, ptr %output, align 8, !dbg !2284
  br label %sw.epilog, !dbg !2285

sw.bb8:                                           ; preds = %if.else4
  store ptr @.str.6, ptr %output, align 8, !dbg !2286
  br label %sw.epilog, !dbg !2287

sw.default:                                       ; preds = %if.else4
  store i64 -5, ptr %retval, align 8, !dbg !2288
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2288

sw.epilog:                                        ; preds = %sw.bb8, %sw.bb7, %sw.bb6, %sw.bb
  br label %if.end

if.end:                                           ; preds = %sw.epilog, %if.then3
  br label %if.end9

if.end9:                                          ; preds = %if.end, %if.then
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !2289
  %6 = load ptr, ptr %output, align 8, !dbg !2290
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %5, ptr noundef @.str.7, ptr noundef %6) #8, !dbg !2291
  %conv = sext i32 %call to i64, !dbg !2291
  store i64 %conv, ptr %retval, align 8, !dbg !2292
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2292

cleanup:                                          ; preds = %if.end9, %sw.default
  call void @llvm.lifetime.end.p0(i64 8, ptr %output) #7, !dbg !2293
  %7 = load i64, ptr %retval, align 8, !dbg !2293
  ret i64 %7, !dbg !2293
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2294 dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @control_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2297 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2299, metadata !DIExpression()), !dbg !2302
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2300, metadata !DIExpression()), !dbg !2303
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2301, metadata !DIExpression()), !dbg !2304
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !2305
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2306
  %power = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, !dbg !2307
  %runtime_auto = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 15, !dbg !2308
  %bf.load = load i16, ptr %runtime_auto, align 8, !dbg !2308
  %bf.lshr = lshr i16 %bf.load, 7, !dbg !2308
  %bf.clear = and i16 %bf.lshr, 1, !dbg !2308
  %bf.cast = zext i16 %bf.clear to i32, !dbg !2308
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !2306
  %2 = zext i1 %tobool to i64, !dbg !2306
  %cond = select i1 %tobool, ptr @ctrl_auto, ptr @ctrl_on, !dbg !2306
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %0, ptr noundef @.str.7, ptr noundef %cond) #8, !dbg !2309
  %conv = sext i32 %call to i64, !dbg !2309
  ret i64 %conv, !dbg !2310
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @control_store(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %n) #0 align 16 !dbg !2311 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2313, metadata !DIExpression()), !dbg !2317
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2314, metadata !DIExpression()), !dbg !2318
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2315, metadata !DIExpression()), !dbg !2319
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2316, metadata !DIExpression()), !dbg !2320
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2321
  call void @device_lock(ptr noundef %0) #8, !dbg !2322
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !2323
  %call = call zeroext i1 @sysfs_streq(ptr noundef %1, ptr noundef @ctrl_auto) #8, !dbg !2325
  br i1 %call, label %if.then, label %if.else, !dbg !2326

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2327
  call void @pm_runtime_allow(ptr noundef %2) #8, !dbg !2328
  br label %if.end4, !dbg !2328

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !2329
  %call1 = call zeroext i1 @sysfs_streq(ptr noundef %3, ptr noundef @ctrl_on) #8, !dbg !2331
  br i1 %call1, label %if.then2, label %if.else3, !dbg !2332

if.then2:                                         ; preds = %if.else
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !2333
  call void @pm_runtime_forbid(ptr noundef %4) #8, !dbg !2334
  br label %if.end, !dbg !2334

if.else3:                                         ; preds = %if.else
  store i64 -22, ptr %n.addr, align 8, !dbg !2335
  br label %if.end

if.end:                                           ; preds = %if.else3, %if.then2
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !2336
  call void @device_unlock(ptr noundef %5) #8, !dbg !2337
  %6 = load i64, ptr %n.addr, align 8, !dbg !2338
  ret i64 %6, !dbg !2339
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @device_lock(ptr noundef %dev) #3 align 16 !dbg !2340 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2342, metadata !DIExpression()), !dbg !2343
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2344
  %mutex = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9, !dbg !2345
  call void @mutex_lock(ptr noundef %mutex) #8, !dbg !2346
  ret void, !dbg !2347
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2348 dso_local zeroext i1 @sysfs_streq(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2352 dso_local void @pm_runtime_allow(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2353 dso_local void @pm_runtime_forbid(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @device_unlock(ptr noundef %dev) #3 align 16 !dbg !2354 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2356, metadata !DIExpression()), !dbg !2357
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2358
  %mutex = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 9, !dbg !2359
  call void @mutex_unlock(ptr noundef %mutex) #8, !dbg !2360
  ret void, !dbg !2361
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2362 dso_local void @mutex_lock(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2366 dso_local void @mutex_unlock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @runtime_suspended_time_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2367 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2369, metadata !DIExpression()), !dbg !2377
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2370, metadata !DIExpression()), !dbg !2378
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2371, metadata !DIExpression()), !dbg !2379
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #7, !dbg !2380
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !2372, metadata !DIExpression()), !dbg !2381
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2382
  %call = call i64 @pm_runtime_suspended_time(ptr noundef %0) #8, !dbg !2383
  store i64 %call, ptr %tmp, align 8, !dbg !2381
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base) #7, !dbg !2384
  call void @llvm.dbg.declare(metadata ptr %__base, metadata !2373, metadata !DIExpression()), !dbg !2384
  store i32 1000000, ptr %__base, align 4, !dbg !2384
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem) #7, !dbg !2384
  call void @llvm.dbg.declare(metadata ptr %__rem, metadata !2376, metadata !DIExpression()), !dbg !2384
  %1 = load i64, ptr %tmp, align 8, !dbg !2384
  %2 = load i32, ptr %__base, align 4, !dbg !2384
  %conv = zext i32 %2 to i64, !dbg !2384
  %rem = urem i64 %1, %conv, !dbg !2384
  %conv1 = trunc i64 %rem to i32, !dbg !2384
  store i32 %conv1, ptr %__rem, align 4, !dbg !2384
  %3 = load i64, ptr %tmp, align 8, !dbg !2384
  %4 = load i32, ptr %__base, align 4, !dbg !2384
  %conv2 = zext i32 %4 to i64, !dbg !2384
  %div = udiv i64 %3, %conv2, !dbg !2384
  store i64 %div, ptr %tmp, align 8, !dbg !2384
  %5 = load i32, ptr %__rem, align 4, !dbg !2384
  store i32 %5, ptr %tmp3, align 4, !dbg !2384
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem) #7, !dbg !2385
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base) #7, !dbg !2385
  %6 = load i32, ptr %tmp3, align 4, !dbg !2384
  %7 = load ptr, ptr %buf.addr, align 8, !dbg !2386
  %8 = load i64, ptr %tmp, align 8, !dbg !2387
  %call4 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %7, ptr noundef @.str.10, i64 noundef %8) #8, !dbg !2388
  %conv5 = sext i32 %call4 to i64, !dbg !2388
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #7, !dbg !2389
  ret i64 %conv5, !dbg !2390
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2391 dso_local i64 @pm_runtime_suspended_time(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @runtime_active_time_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2394 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %tmp = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2396, metadata !DIExpression()), !dbg !2403
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2397, metadata !DIExpression()), !dbg !2404
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2398, metadata !DIExpression()), !dbg !2405
  call void @llvm.lifetime.start.p0(i64 8, ptr %tmp) #7, !dbg !2406
  call void @llvm.dbg.declare(metadata ptr %tmp, metadata !2399, metadata !DIExpression()), !dbg !2407
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2408
  %call = call i64 @pm_runtime_active_time(ptr noundef %0) #8, !dbg !2409
  store i64 %call, ptr %tmp, align 8, !dbg !2407
  call void @llvm.lifetime.start.p0(i64 4, ptr %__base) #7, !dbg !2410
  call void @llvm.dbg.declare(metadata ptr %__base, metadata !2400, metadata !DIExpression()), !dbg !2410
  store i32 1000000, ptr %__base, align 4, !dbg !2410
  call void @llvm.lifetime.start.p0(i64 4, ptr %__rem) #7, !dbg !2410
  call void @llvm.dbg.declare(metadata ptr %__rem, metadata !2402, metadata !DIExpression()), !dbg !2410
  %1 = load i64, ptr %tmp, align 8, !dbg !2410
  %2 = load i32, ptr %__base, align 4, !dbg !2410
  %conv = zext i32 %2 to i64, !dbg !2410
  %rem = urem i64 %1, %conv, !dbg !2410
  %conv1 = trunc i64 %rem to i32, !dbg !2410
  store i32 %conv1, ptr %__rem, align 4, !dbg !2410
  %3 = load i64, ptr %tmp, align 8, !dbg !2410
  %4 = load i32, ptr %__base, align 4, !dbg !2410
  %conv2 = zext i32 %4 to i64, !dbg !2410
  %div = udiv i64 %3, %conv2, !dbg !2410
  store i64 %div, ptr %tmp, align 8, !dbg !2410
  %5 = load i32, ptr %__rem, align 4, !dbg !2410
  store i32 %5, ptr %tmp3, align 4, !dbg !2410
  call void @llvm.lifetime.end.p0(i64 4, ptr %__rem) #7, !dbg !2411
  call void @llvm.lifetime.end.p0(i64 4, ptr %__base) #7, !dbg !2411
  %6 = load i32, ptr %tmp3, align 4, !dbg !2410
  %7 = load ptr, ptr %buf.addr, align 8, !dbg !2412
  %8 = load i64, ptr %tmp, align 8, !dbg !2413
  %call4 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %7, ptr noundef @.str.10, i64 noundef %8) #8, !dbg !2414
  %conv5 = sext i32 %call4 to i64, !dbg !2414
  call void @llvm.lifetime.end.p0(i64 8, ptr %tmp) #7, !dbg !2415
  ret i64 %conv5, !dbg !2416
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2417 dso_local i64 @pm_runtime_active_time(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @autosuspend_delay_ms_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2418 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2420, metadata !DIExpression()), !dbg !2423
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2421, metadata !DIExpression()), !dbg !2424
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2422, metadata !DIExpression()), !dbg !2425
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2426
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !2428
  %use_autosuspend = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 15, !dbg !2429
  %bf.load = load i16, ptr %use_autosuspend, align 8, !dbg !2429
  %bf.lshr = lshr i16 %bf.load, 11, !dbg !2429
  %bf.clear = and i16 %bf.lshr, 1, !dbg !2429
  %bf.cast = zext i16 %bf.clear to i32, !dbg !2429
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !2426
  br i1 %tobool, label %if.end, label %if.then, !dbg !2430

if.then:                                          ; preds = %entry
  store i64 -5, ptr %retval, align 8, !dbg !2431
  br label %return, !dbg !2431

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !2432
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2433
  %power1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 11, !dbg !2434
  %autosuspend_delay = getelementptr inbounds %struct.dev_pm_info, ptr %power1, i32 0, i32 21, !dbg !2435
  %3 = load i32, ptr %autosuspend_delay, align 8, !dbg !2435
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %1, ptr noundef @.str.13, i32 noundef %3) #8, !dbg !2436
  %conv = sext i32 %call to i64, !dbg !2436
  store i64 %conv, ptr %retval, align 8, !dbg !2437
  br label %return, !dbg !2437

return:                                           ; preds = %if.end, %if.then
  %4 = load i64, ptr %retval, align 8, !dbg !2438
  ret i64 %4, !dbg !2438
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @autosuspend_delay_ms_store(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %n) #0 align 16 !dbg !2439 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %delay = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2441, metadata !DIExpression()), !dbg !2446
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2442, metadata !DIExpression()), !dbg !2447
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2443, metadata !DIExpression()), !dbg !2448
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2444, metadata !DIExpression()), !dbg !2449
  call void @llvm.lifetime.start.p0(i64 8, ptr %delay) #7, !dbg !2450
  call void @llvm.dbg.declare(metadata ptr %delay, metadata !2445, metadata !DIExpression()), !dbg !2451
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2452
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !2454
  %use_autosuspend = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 15, !dbg !2455
  %bf.load = load i16, ptr %use_autosuspend, align 8, !dbg !2455
  %bf.lshr = lshr i16 %bf.load, 11, !dbg !2455
  %bf.clear = and i16 %bf.lshr, 1, !dbg !2455
  %bf.cast = zext i16 %bf.clear to i32, !dbg !2455
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !2452
  br i1 %tobool, label %if.end, label %if.then, !dbg !2456

if.then:                                          ; preds = %entry
  store i64 -5, ptr %retval, align 8, !dbg !2457
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2457

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !2458
  %call = call i32 @kstrtol(ptr noundef %1, i32 noundef 10, ptr noundef %delay) #8, !dbg !2460
  %cmp = icmp ne i32 %call, 0, !dbg !2461
  br i1 %cmp, label %if.then4, label %lor.lhs.false, !dbg !2462

lor.lhs.false:                                    ; preds = %if.end
  %2 = load i64, ptr %delay, align 8, !dbg !2463
  %3 = load i64, ptr %delay, align 8, !dbg !2464
  %conv = trunc i64 %3 to i32, !dbg !2465
  %conv1 = sext i32 %conv to i64, !dbg !2465
  %cmp2 = icmp ne i64 %2, %conv1, !dbg !2466
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !2467

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  store i64 -22, ptr %retval, align 8, !dbg !2468
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2468

if.end5:                                          ; preds = %lor.lhs.false
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !2469
  call void @device_lock(ptr noundef %4) #8, !dbg !2470
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !2471
  %6 = load i64, ptr %delay, align 8, !dbg !2472
  %conv6 = trunc i64 %6 to i32, !dbg !2472
  call void @pm_runtime_set_autosuspend_delay(ptr noundef %5, i32 noundef %conv6) #8, !dbg !2473
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !2474
  call void @device_unlock(ptr noundef %7) #8, !dbg !2475
  %8 = load i64, ptr %n.addr, align 8, !dbg !2476
  store i64 %8, ptr %retval, align 8, !dbg !2477
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2477

cleanup:                                          ; preds = %if.end5, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %delay) #7, !dbg !2478
  %9 = load i64, ptr %retval, align 8, !dbg !2478
  ret i64 %9, !dbg !2478
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kstrtol(ptr noundef %s, i32 noundef %base, ptr noundef %res) #3 align 16 !dbg !2479 {
entry:
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !2485, metadata !DIExpression()), !dbg !2488
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !2486, metadata !DIExpression()), !dbg !2489
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !2487, metadata !DIExpression()), !dbg !2490
  %0 = load ptr, ptr %s.addr, align 8, !dbg !2491
  %1 = load i32, ptr %base.addr, align 4, !dbg !2493
  %2 = load ptr, ptr %res.addr, align 8, !dbg !2494
  %call = call i32 @kstrtoll(ptr noundef %0, i32 noundef %1, ptr noundef %2) #8, !dbg !2495
  ret i32 %call, !dbg !2496
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2497 dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2500 dso_local i32 @kstrtoll(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @wakeup_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2503 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2505, metadata !DIExpression()), !dbg !2508
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2506, metadata !DIExpression()), !dbg !2509
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2507, metadata !DIExpression()), !dbg !2510
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !2511
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2512
  %call = call zeroext i1 @device_can_wakeup(ptr noundef %1) #8, !dbg !2513
  br i1 %call, label %cond.true, label %cond.false, !dbg !2513

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2514
  %call1 = call zeroext i1 @device_may_wakeup(ptr noundef %2) #8, !dbg !2515
  %3 = zext i1 %call1 to i64, !dbg !2515
  %cond = select i1 %call1, ptr @_enabled, ptr @_disabled, !dbg !2515
  br label %cond.end, !dbg !2513

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2513

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond2 = phi ptr [ %cond, %cond.true ], [ @.str.15, %cond.false ], !dbg !2513
  %call3 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %0, ptr noundef @.str.7, ptr noundef %cond2) #8, !dbg !2516
  %conv = sext i32 %call3 to i64, !dbg !2516
  ret i64 %conv, !dbg !2517
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @wakeup_store(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %n) #0 align 16 !dbg !2518 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2520, metadata !DIExpression()), !dbg !2524
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2521, metadata !DIExpression()), !dbg !2525
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2522, metadata !DIExpression()), !dbg !2526
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2523, metadata !DIExpression()), !dbg !2527
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2528
  %call = call zeroext i1 @device_can_wakeup(ptr noundef %0) #8, !dbg !2530
  br i1 %call, label %if.end, label %if.then, !dbg !2531

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !2532
  br label %return, !dbg !2532

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %buf.addr, align 8, !dbg !2533
  %call1 = call zeroext i1 @sysfs_streq(ptr noundef %1, ptr noundef @_enabled) #8, !dbg !2535
  br i1 %call1, label %if.then2, label %if.else, !dbg !2536

if.then2:                                         ; preds = %if.end
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2537
  %call3 = call i32 @device_set_wakeup_enable(ptr noundef %2, i1 noundef zeroext true) #8, !dbg !2538
  br label %if.end9, !dbg !2538

if.else:                                          ; preds = %if.end
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !2539
  %call4 = call zeroext i1 @sysfs_streq(ptr noundef %3, ptr noundef @_disabled) #8, !dbg !2541
  br i1 %call4, label %if.then5, label %if.else7, !dbg !2542

if.then5:                                         ; preds = %if.else
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !2543
  %call6 = call i32 @device_set_wakeup_enable(ptr noundef %4, i1 noundef zeroext false) #8, !dbg !2544
  br label %if.end8, !dbg !2544

if.else7:                                         ; preds = %if.else
  store i64 -22, ptr %retval, align 8, !dbg !2545
  br label %return, !dbg !2545

if.end8:                                          ; preds = %if.then5
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then2
  %5 = load i64, ptr %n.addr, align 8, !dbg !2546
  store i64 %5, ptr %retval, align 8, !dbg !2547
  br label %return, !dbg !2547

return:                                           ; preds = %if.end9, %if.else7, %if.then
  %6 = load i64, ptr %retval, align 8, !dbg !2548
  ret i64 %6, !dbg !2548
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @device_may_wakeup(ptr noundef %dev) #3 align 16 !dbg !2549 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2551, metadata !DIExpression()), !dbg !2552
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2553
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !2554
  %can_wakeup = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 1, !dbg !2555
  %bf.load = load i16, ptr %can_wakeup, align 4, !dbg !2555
  %bf.clear = and i16 %bf.load, 1, !dbg !2555
  %bf.cast = zext i16 %bf.clear to i32, !dbg !2555
  %tobool = icmp ne i32 %bf.cast, 0, !dbg !2553
  br i1 %tobool, label %land.rhs, label %land.end, !dbg !2556

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2557
  %power1 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, !dbg !2558
  %wakeup = getelementptr inbounds %struct.dev_pm_info, ptr %power1, i32 0, i32 6, !dbg !2559
  %2 = load ptr, ptr %wakeup, align 8, !dbg !2559
  %tobool2 = icmp ne ptr %2, null, !dbg !2560
  %lnot = xor i1 %tobool2, true, !dbg !2560
  %lnot3 = xor i1 %lnot, true, !dbg !2561
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %3 = phi i1 [ false, %entry ], [ %lnot3, %land.rhs ], !dbg !2562
  ret i1 %3, !dbg !2563
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2564 dso_local i32 @device_set_wakeup_enable(ptr noundef, i1 noundef zeroext) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @wakeup_count_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2567 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count = alloca i64, align 8
  %enabled = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2569, metadata !DIExpression()), !dbg !2574
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2570, metadata !DIExpression()), !dbg !2575
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2571, metadata !DIExpression()), !dbg !2576
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #7, !dbg !2577
  call void @llvm.dbg.declare(metadata ptr %count, metadata !2572, metadata !DIExpression()), !dbg !2578
  call void @llvm.lifetime.start.p0(i64 1, ptr %enabled) #7, !dbg !2579
  call void @llvm.dbg.declare(metadata ptr %enabled, metadata !2573, metadata !DIExpression()), !dbg !2580
  store i8 0, ptr %enabled, align 1, !dbg !2580
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2581
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !2582
  %lock = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 3, !dbg !2583
  call void @spin_lock_irq(ptr noundef %lock) #8, !dbg !2584
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2585
  %power1 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, !dbg !2587
  %wakeup = getelementptr inbounds %struct.dev_pm_info, ptr %power1, i32 0, i32 6, !dbg !2588
  %2 = load ptr, ptr %wakeup, align 8, !dbg !2588
  %tobool = icmp ne ptr %2, null, !dbg !2585
  br i1 %tobool, label %if.then, label %if.end, !dbg !2589

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !2590
  %power2 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 11, !dbg !2592
  %wakeup3 = getelementptr inbounds %struct.dev_pm_info, ptr %power2, i32 0, i32 6, !dbg !2593
  %4 = load ptr, ptr %wakeup3, align 8, !dbg !2593
  %wakeup_count = getelementptr inbounds %struct.wakeup_source, ptr %4, i32 0, i32 16, !dbg !2594
  %5 = load i64, ptr %wakeup_count, align 8, !dbg !2594
  store i64 %5, ptr %count, align 8, !dbg !2595
  store i8 1, ptr %enabled, align 1, !dbg !2596
  br label %if.end, !dbg !2597

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !2598
  %power4 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, !dbg !2599
  %lock5 = getelementptr inbounds %struct.dev_pm_info, ptr %power4, i32 0, i32 3, !dbg !2600
  call void @spin_unlock_irq(ptr noundef %lock5) #8, !dbg !2601
  %7 = load i8, ptr %enabled, align 1, !dbg !2602, !range !2604, !noundef !519
  %tobool6 = trunc i8 %7 to i1, !dbg !2602
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !2605

if.then7:                                         ; preds = %if.end
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !2606
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %8, ptr noundef @.str.17) #8, !dbg !2607
  %conv = sext i32 %call to i64, !dbg !2607
  store i64 %conv, ptr %retval, align 8, !dbg !2608
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2608

if.end8:                                          ; preds = %if.end
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !2609
  %10 = load i64, ptr %count, align 8, !dbg !2610
  %call9 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %9, ptr noundef @.str.18, i64 noundef %10) #8, !dbg !2611
  %conv10 = sext i32 %call9 to i64, !dbg !2611
  store i64 %conv10, ptr %retval, align 8, !dbg !2612
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2612

cleanup:                                          ; preds = %if.end8, %if.then7
  call void @llvm.lifetime.end.p0(i64 1, ptr %enabled) #7, !dbg !2613
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #7, !dbg !2613
  %11 = load i64, ptr %retval, align 8, !dbg !2613
  ret i64 %11, !dbg !2613
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_lock_irq(ptr noundef %lock) #5 align 16 !dbg !2614 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2620, metadata !DIExpression()), !dbg !2621
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2622
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !2622
  call void @_raw_spin_lock_irq(ptr noundef %1) #8, !dbg !2622
  ret void, !dbg !2623
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @spin_unlock_irq(ptr noundef %lock) #5 align 16 !dbg !2624 {
entry:
  %lock.addr = alloca ptr, align 8
  store ptr %lock, ptr %lock.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %lock.addr, metadata !2626, metadata !DIExpression()), !dbg !2627
  %0 = load ptr, ptr %lock.addr, align 8, !dbg !2628
  %1 = getelementptr inbounds %struct.spinlock, ptr %0, i32 0, i32 0, !dbg !2628
  call void @_raw_spin_unlock_irq(ptr noundef %1) #8, !dbg !2628
  ret void, !dbg !2629
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2630 dso_local void @_raw_spin_lock_irq(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2635 dso_local void @_raw_spin_unlock_irq(ptr noundef) #4 section ".spinlock.text"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @wakeup_active_count_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2636 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count = alloca i64, align 8
  %enabled = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2638, metadata !DIExpression()), !dbg !2643
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2639, metadata !DIExpression()), !dbg !2644
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2640, metadata !DIExpression()), !dbg !2645
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #7, !dbg !2646
  call void @llvm.dbg.declare(metadata ptr %count, metadata !2641, metadata !DIExpression()), !dbg !2647
  call void @llvm.lifetime.start.p0(i64 1, ptr %enabled) #7, !dbg !2648
  call void @llvm.dbg.declare(metadata ptr %enabled, metadata !2642, metadata !DIExpression()), !dbg !2649
  store i8 0, ptr %enabled, align 1, !dbg !2649
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2650
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !2651
  %lock = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 3, !dbg !2652
  call void @spin_lock_irq(ptr noundef %lock) #8, !dbg !2653
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2654
  %power1 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, !dbg !2656
  %wakeup = getelementptr inbounds %struct.dev_pm_info, ptr %power1, i32 0, i32 6, !dbg !2657
  %2 = load ptr, ptr %wakeup, align 8, !dbg !2657
  %tobool = icmp ne ptr %2, null, !dbg !2654
  br i1 %tobool, label %if.then, label %if.end, !dbg !2658

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !2659
  %power2 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 11, !dbg !2661
  %wakeup3 = getelementptr inbounds %struct.dev_pm_info, ptr %power2, i32 0, i32 6, !dbg !2662
  %4 = load ptr, ptr %wakeup3, align 8, !dbg !2662
  %active_count = getelementptr inbounds %struct.wakeup_source, ptr %4, i32 0, i32 13, !dbg !2663
  %5 = load i64, ptr %active_count, align 8, !dbg !2663
  store i64 %5, ptr %count, align 8, !dbg !2664
  store i8 1, ptr %enabled, align 1, !dbg !2665
  br label %if.end, !dbg !2666

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !2667
  %power4 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, !dbg !2668
  %lock5 = getelementptr inbounds %struct.dev_pm_info, ptr %power4, i32 0, i32 3, !dbg !2669
  call void @spin_unlock_irq(ptr noundef %lock5) #8, !dbg !2670
  %7 = load i8, ptr %enabled, align 1, !dbg !2671, !range !2604, !noundef !519
  %tobool6 = trunc i8 %7 to i1, !dbg !2671
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !2673

if.then7:                                         ; preds = %if.end
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !2674
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %8, ptr noundef @.str.17) #8, !dbg !2675
  %conv = sext i32 %call to i64, !dbg !2675
  store i64 %conv, ptr %retval, align 8, !dbg !2676
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2676

if.end8:                                          ; preds = %if.end
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !2677
  %10 = load i64, ptr %count, align 8, !dbg !2678
  %call9 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %9, ptr noundef @.str.18, i64 noundef %10) #8, !dbg !2679
  %conv10 = sext i32 %call9 to i64, !dbg !2679
  store i64 %conv10, ptr %retval, align 8, !dbg !2680
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2680

cleanup:                                          ; preds = %if.end8, %if.then7
  call void @llvm.lifetime.end.p0(i64 1, ptr %enabled) #7, !dbg !2681
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #7, !dbg !2681
  %11 = load i64, ptr %retval, align 8, !dbg !2681
  ret i64 %11, !dbg !2681
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @wakeup_abort_count_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2682 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count = alloca i64, align 8
  %enabled = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2684, metadata !DIExpression()), !dbg !2689
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2685, metadata !DIExpression()), !dbg !2690
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2686, metadata !DIExpression()), !dbg !2691
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #7, !dbg !2692
  call void @llvm.dbg.declare(metadata ptr %count, metadata !2687, metadata !DIExpression()), !dbg !2693
  call void @llvm.lifetime.start.p0(i64 1, ptr %enabled) #7, !dbg !2694
  call void @llvm.dbg.declare(metadata ptr %enabled, metadata !2688, metadata !DIExpression()), !dbg !2695
  store i8 0, ptr %enabled, align 1, !dbg !2695
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2696
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !2697
  %lock = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 3, !dbg !2698
  call void @spin_lock_irq(ptr noundef %lock) #8, !dbg !2699
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2700
  %power1 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, !dbg !2702
  %wakeup = getelementptr inbounds %struct.dev_pm_info, ptr %power1, i32 0, i32 6, !dbg !2703
  %2 = load ptr, ptr %wakeup, align 8, !dbg !2703
  %tobool = icmp ne ptr %2, null, !dbg !2700
  br i1 %tobool, label %if.then, label %if.end, !dbg !2704

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !2705
  %power2 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 11, !dbg !2707
  %wakeup3 = getelementptr inbounds %struct.dev_pm_info, ptr %power2, i32 0, i32 6, !dbg !2708
  %4 = load ptr, ptr %wakeup3, align 8, !dbg !2708
  %wakeup_count = getelementptr inbounds %struct.wakeup_source, ptr %4, i32 0, i32 16, !dbg !2709
  %5 = load i64, ptr %wakeup_count, align 8, !dbg !2709
  store i64 %5, ptr %count, align 8, !dbg !2710
  store i8 1, ptr %enabled, align 1, !dbg !2711
  br label %if.end, !dbg !2712

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !2713
  %power4 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, !dbg !2714
  %lock5 = getelementptr inbounds %struct.dev_pm_info, ptr %power4, i32 0, i32 3, !dbg !2715
  call void @spin_unlock_irq(ptr noundef %lock5) #8, !dbg !2716
  %7 = load i8, ptr %enabled, align 1, !dbg !2717, !range !2604, !noundef !519
  %tobool6 = trunc i8 %7 to i1, !dbg !2717
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !2719

if.then7:                                         ; preds = %if.end
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !2720
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %8, ptr noundef @.str.17) #8, !dbg !2721
  %conv = sext i32 %call to i64, !dbg !2721
  store i64 %conv, ptr %retval, align 8, !dbg !2722
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2722

if.end8:                                          ; preds = %if.end
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !2723
  %10 = load i64, ptr %count, align 8, !dbg !2724
  %call9 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %9, ptr noundef @.str.18, i64 noundef %10) #8, !dbg !2725
  %conv10 = sext i32 %call9 to i64, !dbg !2725
  store i64 %conv10, ptr %retval, align 8, !dbg !2726
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2726

cleanup:                                          ; preds = %if.end8, %if.then7
  call void @llvm.lifetime.end.p0(i64 1, ptr %enabled) #7, !dbg !2727
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #7, !dbg !2727
  %11 = load i64, ptr %retval, align 8, !dbg !2727
  ret i64 %11, !dbg !2727
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @wakeup_expire_count_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2728 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count = alloca i64, align 8
  %enabled = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2730, metadata !DIExpression()), !dbg !2735
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2731, metadata !DIExpression()), !dbg !2736
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2732, metadata !DIExpression()), !dbg !2737
  call void @llvm.lifetime.start.p0(i64 8, ptr %count) #7, !dbg !2738
  call void @llvm.dbg.declare(metadata ptr %count, metadata !2733, metadata !DIExpression()), !dbg !2739
  call void @llvm.lifetime.start.p0(i64 1, ptr %enabled) #7, !dbg !2740
  call void @llvm.dbg.declare(metadata ptr %enabled, metadata !2734, metadata !DIExpression()), !dbg !2741
  store i8 0, ptr %enabled, align 1, !dbg !2741
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2742
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !2743
  %lock = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 3, !dbg !2744
  call void @spin_lock_irq(ptr noundef %lock) #8, !dbg !2745
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2746
  %power1 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, !dbg !2748
  %wakeup = getelementptr inbounds %struct.dev_pm_info, ptr %power1, i32 0, i32 6, !dbg !2749
  %2 = load ptr, ptr %wakeup, align 8, !dbg !2749
  %tobool = icmp ne ptr %2, null, !dbg !2746
  br i1 %tobool, label %if.then, label %if.end, !dbg !2750

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !2751
  %power2 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 11, !dbg !2753
  %wakeup3 = getelementptr inbounds %struct.dev_pm_info, ptr %power2, i32 0, i32 6, !dbg !2754
  %4 = load ptr, ptr %wakeup3, align 8, !dbg !2754
  %expire_count = getelementptr inbounds %struct.wakeup_source, ptr %4, i32 0, i32 15, !dbg !2755
  %5 = load i64, ptr %expire_count, align 8, !dbg !2755
  store i64 %5, ptr %count, align 8, !dbg !2756
  store i8 1, ptr %enabled, align 1, !dbg !2757
  br label %if.end, !dbg !2758

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !2759
  %power4 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, !dbg !2760
  %lock5 = getelementptr inbounds %struct.dev_pm_info, ptr %power4, i32 0, i32 3, !dbg !2761
  call void @spin_unlock_irq(ptr noundef %lock5) #8, !dbg !2762
  %7 = load i8, ptr %enabled, align 1, !dbg !2763, !range !2604, !noundef !519
  %tobool6 = trunc i8 %7 to i1, !dbg !2763
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !2765

if.then7:                                         ; preds = %if.end
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !2766
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %8, ptr noundef @.str.17) #8, !dbg !2767
  %conv = sext i32 %call to i64, !dbg !2767
  store i64 %conv, ptr %retval, align 8, !dbg !2768
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2768

if.end8:                                          ; preds = %if.end
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !2769
  %10 = load i64, ptr %count, align 8, !dbg !2770
  %call9 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %9, ptr noundef @.str.18, i64 noundef %10) #8, !dbg !2771
  %conv10 = sext i32 %call9 to i64, !dbg !2771
  store i64 %conv10, ptr %retval, align 8, !dbg !2772
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2772

cleanup:                                          ; preds = %if.end8, %if.then7
  call void @llvm.lifetime.end.p0(i64 1, ptr %enabled) #7, !dbg !2773
  call void @llvm.lifetime.end.p0(i64 8, ptr %count) #7, !dbg !2773
  %11 = load i64, ptr %retval, align 8, !dbg !2773
  ret i64 %11, !dbg !2773
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @wakeup_active_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2774 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %active = alloca i32, align 4
  %enabled = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2776, metadata !DIExpression()), !dbg !2781
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2777, metadata !DIExpression()), !dbg !2782
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2778, metadata !DIExpression()), !dbg !2783
  call void @llvm.lifetime.start.p0(i64 4, ptr %active) #7, !dbg !2784
  call void @llvm.dbg.declare(metadata ptr %active, metadata !2779, metadata !DIExpression()), !dbg !2785
  call void @llvm.lifetime.start.p0(i64 1, ptr %enabled) #7, !dbg !2786
  call void @llvm.dbg.declare(metadata ptr %enabled, metadata !2780, metadata !DIExpression()), !dbg !2787
  store i8 0, ptr %enabled, align 1, !dbg !2787
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2788
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !2789
  %lock = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 3, !dbg !2790
  call void @spin_lock_irq(ptr noundef %lock) #8, !dbg !2791
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2792
  %power1 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, !dbg !2794
  %wakeup = getelementptr inbounds %struct.dev_pm_info, ptr %power1, i32 0, i32 6, !dbg !2795
  %2 = load ptr, ptr %wakeup, align 8, !dbg !2795
  %tobool = icmp ne ptr %2, null, !dbg !2792
  br i1 %tobool, label %if.then, label %if.end, !dbg !2796

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !2797
  %power2 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 11, !dbg !2799
  %wakeup3 = getelementptr inbounds %struct.dev_pm_info, ptr %power2, i32 0, i32 6, !dbg !2800
  %4 = load ptr, ptr %wakeup3, align 8, !dbg !2800
  %active4 = getelementptr inbounds %struct.wakeup_source, ptr %4, i32 0, i32 18, !dbg !2801
  %bf.load = load i8, ptr %active4, align 8, !dbg !2801
  %bf.clear = and i8 %bf.load, 1, !dbg !2801
  %bf.cast = trunc i8 %bf.clear to i1, !dbg !2801
  %conv = zext i1 %bf.cast to i32, !dbg !2797
  store i32 %conv, ptr %active, align 4, !dbg !2802
  store i8 1, ptr %enabled, align 1, !dbg !2803
  br label %if.end, !dbg !2804

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !2805
  %power5 = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 11, !dbg !2806
  %lock6 = getelementptr inbounds %struct.dev_pm_info, ptr %power5, i32 0, i32 3, !dbg !2807
  call void @spin_unlock_irq(ptr noundef %lock6) #8, !dbg !2808
  %6 = load i8, ptr %enabled, align 1, !dbg !2809, !range !2604, !noundef !519
  %tobool7 = trunc i8 %6 to i1, !dbg !2809
  br i1 %tobool7, label %if.end10, label %if.then8, !dbg !2811

if.then8:                                         ; preds = %if.end
  %7 = load ptr, ptr %buf.addr, align 8, !dbg !2812
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %7, ptr noundef @.str.17) #8, !dbg !2813
  %conv9 = sext i32 %call to i64, !dbg !2813
  store i64 %conv9, ptr %retval, align 8, !dbg !2814
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2814

if.end10:                                         ; preds = %if.end
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !2815
  %9 = load i32, ptr %active, align 4, !dbg !2816
  %call11 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %8, ptr noundef @.str.23, i32 noundef %9) #8, !dbg !2817
  %conv12 = sext i32 %call11 to i64, !dbg !2817
  store i64 %conv12, ptr %retval, align 8, !dbg !2818
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2818

cleanup:                                          ; preds = %if.end10, %if.then8
  call void @llvm.lifetime.end.p0(i64 1, ptr %enabled) #7, !dbg !2819
  call void @llvm.lifetime.end.p0(i64 4, ptr %active) #7, !dbg !2819
  %10 = load i64, ptr %retval, align 8, !dbg !2819
  ret i64 %10, !dbg !2819
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @wakeup_total_time_ms_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2820 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %msec = alloca i64, align 8
  %enabled = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2822, metadata !DIExpression()), !dbg !2827
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2823, metadata !DIExpression()), !dbg !2828
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2824, metadata !DIExpression()), !dbg !2829
  call void @llvm.lifetime.start.p0(i64 8, ptr %msec) #7, !dbg !2830
  call void @llvm.dbg.declare(metadata ptr %msec, metadata !2825, metadata !DIExpression()), !dbg !2831
  call void @llvm.lifetime.start.p0(i64 1, ptr %enabled) #7, !dbg !2832
  call void @llvm.dbg.declare(metadata ptr %enabled, metadata !2826, metadata !DIExpression()), !dbg !2833
  store i8 0, ptr %enabled, align 1, !dbg !2833
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2834
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !2835
  %lock = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 3, !dbg !2836
  call void @spin_lock_irq(ptr noundef %lock) #8, !dbg !2837
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2838
  %power1 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, !dbg !2840
  %wakeup = getelementptr inbounds %struct.dev_pm_info, ptr %power1, i32 0, i32 6, !dbg !2841
  %2 = load ptr, ptr %wakeup, align 8, !dbg !2841
  %tobool = icmp ne ptr %2, null, !dbg !2838
  br i1 %tobool, label %if.then, label %if.end, !dbg !2842

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !2843
  %power2 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 11, !dbg !2845
  %wakeup3 = getelementptr inbounds %struct.dev_pm_info, ptr %power2, i32 0, i32 6, !dbg !2846
  %4 = load ptr, ptr %wakeup3, align 8, !dbg !2846
  %total_time = getelementptr inbounds %struct.wakeup_source, ptr %4, i32 0, i32 7, !dbg !2847
  %5 = load i64, ptr %total_time, align 8, !dbg !2847
  %call = call i64 @ktime_to_ms(i64 noundef %5) #8, !dbg !2848
  store i64 %call, ptr %msec, align 8, !dbg !2849
  store i8 1, ptr %enabled, align 1, !dbg !2850
  br label %if.end, !dbg !2851

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !2852
  %power4 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, !dbg !2853
  %lock5 = getelementptr inbounds %struct.dev_pm_info, ptr %power4, i32 0, i32 3, !dbg !2854
  call void @spin_unlock_irq(ptr noundef %lock5) #8, !dbg !2855
  %7 = load i8, ptr %enabled, align 1, !dbg !2856, !range !2604, !noundef !519
  %tobool6 = trunc i8 %7 to i1, !dbg !2856
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !2858

if.then7:                                         ; preds = %if.end
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !2859
  %call8 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %8, ptr noundef @.str.17) #8, !dbg !2860
  %conv = sext i32 %call8 to i64, !dbg !2860
  store i64 %conv, ptr %retval, align 8, !dbg !2861
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2861

if.end9:                                          ; preds = %if.end
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !2862
  %10 = load i64, ptr %msec, align 8, !dbg !2863
  %call10 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %9, ptr noundef @.str.25, i64 noundef %10) #8, !dbg !2864
  %conv11 = sext i32 %call10 to i64, !dbg !2864
  store i64 %conv11, ptr %retval, align 8, !dbg !2865
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2865

cleanup:                                          ; preds = %if.end9, %if.then7
  call void @llvm.lifetime.end.p0(i64 1, ptr %enabled) #7, !dbg !2866
  call void @llvm.lifetime.end.p0(i64 8, ptr %msec) #7, !dbg !2866
  %11 = load i64, ptr %retval, align 8, !dbg !2866
  ret i64 %11, !dbg !2866
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ktime_to_ms(i64 noundef %kt) #3 align 16 !dbg !2867 {
entry:
  %kt.addr = alloca i64, align 8
  store i64 %kt, ptr %kt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kt.addr, metadata !2872, metadata !DIExpression()), !dbg !2873
  %0 = load i64, ptr %kt.addr, align 8, !dbg !2874
  %call = call i64 @ktime_divns(i64 noundef %0, i64 noundef 1000000) #8, !dbg !2875
  ret i64 %call, !dbg !2876
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @ktime_divns(i64 noundef %kt, i64 noundef %div) #3 align 16 !dbg !2877 {
entry:
  %kt.addr = alloca i64, align 8
  %div.addr = alloca i64, align 8
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp = alloca i64, align 8
  store i64 %kt, ptr %kt.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kt.addr, metadata !2881, metadata !DIExpression()), !dbg !2888
  store i64 %div, ptr %div.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %div.addr, metadata !2882, metadata !DIExpression()), !dbg !2889
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !2890
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2883, metadata !DIExpression()), !dbg !2890
  %0 = load i64, ptr %div.addr, align 8, !dbg !2890
  %cmp = icmp slt i64 %0, 0, !dbg !2890
  %lnot = xor i1 %cmp, true, !dbg !2890
  %lnot1 = xor i1 %lnot, true, !dbg !2890
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2890
  store i32 %lnot.ext, ptr %__ret_warn_on, align 4, !dbg !2890
  %1 = load i32, ptr %__ret_warn_on, align 4, !dbg !2891
  %tobool = icmp ne i32 %1, 0, !dbg !2891
  %lnot2 = xor i1 %tobool, true, !dbg !2891
  %lnot4 = xor i1 %lnot2, true, !dbg !2891
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !2891
  %conv = sext i32 %lnot.ext5 to i64, !dbg !2891
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2891
  %tobool6 = icmp ne i64 %expval, 0, !dbg !2891
  br i1 %tobool6, label %if.then, label %if.end, !dbg !2890

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2891

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #7, !dbg !2892
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2885, metadata !DIExpression()), !dbg !2892
  store i32 2305, ptr %__flags, align 4, !dbg !2892
  br label %do.body7, !dbg !2892

do.body7:                                         ; preds = %do.body
  br label %do.cond, !dbg !2893

do.cond:                                          ; preds = %do.body7
  br label %do.end, !dbg !2893

do.end:                                           ; preds = %do.cond
  br label %do.body8, !dbg !2892

do.body8:                                         ; preds = %do.end
  %2 = load i32, ptr %__flags, align 4, !dbg !2895
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.26, i32 154, i32 %2, i64 12) #7, !dbg !2895, !srcloc !2897
  br label %do.cond9, !dbg !2895

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !2895

do.end10:                                         ; preds = %do.cond9
  br label %do.body11, !dbg !2892

do.body11:                                        ; preds = %do.end10
  br label %do.cond12, !dbg !2898

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !2898

do.end13:                                         ; preds = %do.cond12
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #7, !dbg !2891
  br label %do.cond14, !dbg !2892

do.cond14:                                        ; preds = %do.end13
  br label %do.end15, !dbg !2892

do.end15:                                         ; preds = %do.cond14
  br label %if.end, !dbg !2892

if.end:                                           ; preds = %do.end15, %entry
  %3 = load i32, ptr %__ret_warn_on, align 4, !dbg !2890
  %tobool16 = icmp ne i32 %3, 0, !dbg !2890
  %lnot17 = xor i1 %tobool16, true, !dbg !2890
  %lnot19 = xor i1 %lnot17, true, !dbg !2890
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !2890
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !2890
  %expval22 = call i64 @llvm.expect.i64(i64 %conv21, i64 0), !dbg !2890
  store i64 %expval22, ptr %tmp, align 8, !dbg !2891
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #7, !dbg !2900
  %4 = load i64, ptr %tmp, align 8, !dbg !2890
  %5 = load i64, ptr %kt.addr, align 8, !dbg !2901
  %6 = load i64, ptr %div.addr, align 8, !dbg !2902
  %div23 = sdiv i64 %5, %6, !dbg !2903
  ret i64 %div23, !dbg !2904
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @wakeup_max_time_ms_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2905 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %msec = alloca i64, align 8
  %enabled = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2907, metadata !DIExpression()), !dbg !2912
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2908, metadata !DIExpression()), !dbg !2913
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2909, metadata !DIExpression()), !dbg !2914
  call void @llvm.lifetime.start.p0(i64 8, ptr %msec) #7, !dbg !2915
  call void @llvm.dbg.declare(metadata ptr %msec, metadata !2910, metadata !DIExpression()), !dbg !2916
  call void @llvm.lifetime.start.p0(i64 1, ptr %enabled) #7, !dbg !2917
  call void @llvm.dbg.declare(metadata ptr %enabled, metadata !2911, metadata !DIExpression()), !dbg !2918
  store i8 0, ptr %enabled, align 1, !dbg !2918
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2919
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !2920
  %lock = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 3, !dbg !2921
  call void @spin_lock_irq(ptr noundef %lock) #8, !dbg !2922
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2923
  %power1 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, !dbg !2925
  %wakeup = getelementptr inbounds %struct.dev_pm_info, ptr %power1, i32 0, i32 6, !dbg !2926
  %2 = load ptr, ptr %wakeup, align 8, !dbg !2926
  %tobool = icmp ne ptr %2, null, !dbg !2923
  br i1 %tobool, label %if.then, label %if.end, !dbg !2927

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !2928
  %power2 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 11, !dbg !2930
  %wakeup3 = getelementptr inbounds %struct.dev_pm_info, ptr %power2, i32 0, i32 6, !dbg !2931
  %4 = load ptr, ptr %wakeup3, align 8, !dbg !2931
  %max_time = getelementptr inbounds %struct.wakeup_source, ptr %4, i32 0, i32 8, !dbg !2932
  %5 = load i64, ptr %max_time, align 8, !dbg !2932
  %call = call i64 @ktime_to_ms(i64 noundef %5) #8, !dbg !2933
  store i64 %call, ptr %msec, align 8, !dbg !2934
  store i8 1, ptr %enabled, align 1, !dbg !2935
  br label %if.end, !dbg !2936

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !2937
  %power4 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, !dbg !2938
  %lock5 = getelementptr inbounds %struct.dev_pm_info, ptr %power4, i32 0, i32 3, !dbg !2939
  call void @spin_unlock_irq(ptr noundef %lock5) #8, !dbg !2940
  %7 = load i8, ptr %enabled, align 1, !dbg !2941, !range !2604, !noundef !519
  %tobool6 = trunc i8 %7 to i1, !dbg !2941
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !2943

if.then7:                                         ; preds = %if.end
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !2944
  %call8 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %8, ptr noundef @.str.17) #8, !dbg !2945
  %conv = sext i32 %call8 to i64, !dbg !2945
  store i64 %conv, ptr %retval, align 8, !dbg !2946
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2946

if.end9:                                          ; preds = %if.end
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !2947
  %10 = load i64, ptr %msec, align 8, !dbg !2948
  %call10 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %9, ptr noundef @.str.25, i64 noundef %10) #8, !dbg !2949
  %conv11 = sext i32 %call10 to i64, !dbg !2949
  store i64 %conv11, ptr %retval, align 8, !dbg !2950
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2950

cleanup:                                          ; preds = %if.end9, %if.then7
  call void @llvm.lifetime.end.p0(i64 1, ptr %enabled) #7, !dbg !2951
  call void @llvm.lifetime.end.p0(i64 8, ptr %msec) #7, !dbg !2951
  %11 = load i64, ptr %retval, align 8, !dbg !2951
  ret i64 %11, !dbg !2951
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @wakeup_last_time_ms_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2952 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %msec = alloca i64, align 8
  %enabled = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2954, metadata !DIExpression()), !dbg !2959
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2955, metadata !DIExpression()), !dbg !2960
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2956, metadata !DIExpression()), !dbg !2961
  call void @llvm.lifetime.start.p0(i64 8, ptr %msec) #7, !dbg !2962
  call void @llvm.dbg.declare(metadata ptr %msec, metadata !2957, metadata !DIExpression()), !dbg !2963
  call void @llvm.lifetime.start.p0(i64 1, ptr %enabled) #7, !dbg !2964
  call void @llvm.dbg.declare(metadata ptr %enabled, metadata !2958, metadata !DIExpression()), !dbg !2965
  store i8 0, ptr %enabled, align 1, !dbg !2965
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2966
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !2967
  %lock = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 3, !dbg !2968
  call void @spin_lock_irq(ptr noundef %lock) #8, !dbg !2969
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2970
  %power1 = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 11, !dbg !2972
  %wakeup = getelementptr inbounds %struct.dev_pm_info, ptr %power1, i32 0, i32 6, !dbg !2973
  %2 = load ptr, ptr %wakeup, align 8, !dbg !2973
  %tobool = icmp ne ptr %2, null, !dbg !2970
  br i1 %tobool, label %if.then, label %if.end, !dbg !2974

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !2975
  %power2 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 11, !dbg !2977
  %wakeup3 = getelementptr inbounds %struct.dev_pm_info, ptr %power2, i32 0, i32 6, !dbg !2978
  %4 = load ptr, ptr %wakeup3, align 8, !dbg !2978
  %last_time = getelementptr inbounds %struct.wakeup_source, ptr %4, i32 0, i32 9, !dbg !2979
  %5 = load i64, ptr %last_time, align 8, !dbg !2979
  %call = call i64 @ktime_to_ms(i64 noundef %5) #8, !dbg !2980
  store i64 %call, ptr %msec, align 8, !dbg !2981
  store i8 1, ptr %enabled, align 1, !dbg !2982
  br label %if.end, !dbg !2983

if.end:                                           ; preds = %if.then, %entry
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !2984
  %power4 = getelementptr inbounds %struct.device, ptr %6, i32 0, i32 11, !dbg !2985
  %lock5 = getelementptr inbounds %struct.dev_pm_info, ptr %power4, i32 0, i32 3, !dbg !2986
  call void @spin_unlock_irq(ptr noundef %lock5) #8, !dbg !2987
  %7 = load i8, ptr %enabled, align 1, !dbg !2988, !range !2604, !noundef !519
  %tobool6 = trunc i8 %7 to i1, !dbg !2988
  br i1 %tobool6, label %if.end9, label %if.then7, !dbg !2990

if.then7:                                         ; preds = %if.end
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !2991
  %call8 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %8, ptr noundef @.str.17) #8, !dbg !2992
  %conv = sext i32 %call8 to i64, !dbg !2992
  store i64 %conv, ptr %retval, align 8, !dbg !2993
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2993

if.end9:                                          ; preds = %if.end
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !2994
  %10 = load i64, ptr %msec, align 8, !dbg !2995
  %call10 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %9, ptr noundef @.str.25, i64 noundef %10) #8, !dbg !2996
  %conv11 = sext i32 %call10 to i64, !dbg !2996
  store i64 %conv11, ptr %retval, align 8, !dbg !2997
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2997

cleanup:                                          ; preds = %if.end9, %if.then7
  call void @llvm.lifetime.end.p0(i64 1, ptr %enabled) #7, !dbg !2998
  call void @llvm.lifetime.end.p0(i64 8, ptr %msec) #7, !dbg !2998
  %11 = load i64, ptr %retval, align 8, !dbg !2998
  ret i64 %11, !dbg !2998
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pm_qos_latency_tolerance_us_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2999 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %value = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3001, metadata !DIExpression()), !dbg !3005
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3002, metadata !DIExpression()), !dbg !3006
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3003, metadata !DIExpression()), !dbg !3007
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #7, !dbg !3008
  call void @llvm.dbg.declare(metadata ptr %value, metadata !3004, metadata !DIExpression()), !dbg !3009
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3010
  %call = call i32 @dev_pm_qos_get_user_latency_tolerance(ptr noundef %0) #8, !dbg !3011
  store i32 %call, ptr %value, align 4, !dbg !3009
  %1 = load i32, ptr %value, align 4, !dbg !3012
  %cmp = icmp slt i32 %1, 0, !dbg !3014
  br i1 %cmp, label %if.then, label %if.end, !dbg !3015

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !3016
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef @.str.7, ptr noundef @.str.30) #8, !dbg !3017
  %conv = sext i32 %call1 to i64, !dbg !3017
  store i64 %conv, ptr %retval, align 8, !dbg !3018
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3018

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %value, align 4, !dbg !3019
  %cmp2 = icmp eq i32 %3, 2147483647, !dbg !3021
  br i1 %cmp2, label %if.then4, label %if.end7, !dbg !3022

if.then4:                                         ; preds = %if.end
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !3023
  %call5 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %4, ptr noundef @.str.7, ptr noundef @.str.31) #8, !dbg !3024
  %conv6 = sext i32 %call5 to i64, !dbg !3024
  store i64 %conv6, ptr %retval, align 8, !dbg !3025
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3025

if.end7:                                          ; preds = %if.end
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !3026
  %6 = load i32, ptr %value, align 4, !dbg !3027
  %call8 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %5, ptr noundef @.str.13, i32 noundef %6) #8, !dbg !3028
  %conv9 = sext i32 %call8 to i64, !dbg !3028
  store i64 %conv9, ptr %retval, align 8, !dbg !3029
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3029

cleanup:                                          ; preds = %if.end7, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #7, !dbg !3030
  %7 = load i64, ptr %retval, align 8, !dbg !3030
  ret i64 %7, !dbg !3030
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pm_qos_latency_tolerance_us_store(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %n) #0 align 16 !dbg !3031 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %value = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3033, metadata !DIExpression()), !dbg !3039
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3034, metadata !DIExpression()), !dbg !3040
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3035, metadata !DIExpression()), !dbg !3041
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !3036, metadata !DIExpression()), !dbg !3042
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #7, !dbg !3043
  call void @llvm.dbg.declare(metadata ptr %value, metadata !3037, metadata !DIExpression()), !dbg !3044
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !3045
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3038, metadata !DIExpression()), !dbg !3046
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !3047
  %call = call i32 @kstrtos32(ptr noundef %0, i32 noundef 0, ptr noundef %value) #8, !dbg !3049
  %cmp = icmp eq i32 %call, 0, !dbg !3050
  br i1 %cmp, label %if.then, label %if.else, !dbg !3051

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %value, align 4, !dbg !3052
  %cmp1 = icmp slt i32 %1, 0, !dbg !3055
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !3056

if.then2:                                         ; preds = %if.then
  store i64 -22, ptr %retval, align 8, !dbg !3057
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3057

if.end:                                           ; preds = %if.then
  br label %if.end11, !dbg !3058

if.else:                                          ; preds = %entry
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !3059
  %call3 = call zeroext i1 @sysfs_streq(ptr noundef %2, ptr noundef @.str.30) #8, !dbg !3062
  br i1 %call3, label %if.then4, label %if.else5, !dbg !3063

if.then4:                                         ; preds = %if.else
  store i32 -1, ptr %value, align 4, !dbg !3064
  br label %if.end10, !dbg !3065

if.else5:                                         ; preds = %if.else
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !3066
  %call6 = call zeroext i1 @sysfs_streq(ptr noundef %3, ptr noundef @.str.31) #8, !dbg !3068
  br i1 %call6, label %if.then7, label %if.else8, !dbg !3069

if.then7:                                         ; preds = %if.else5
  store i32 2147483647, ptr %value, align 4, !dbg !3070
  br label %if.end9, !dbg !3071

if.else8:                                         ; preds = %if.else5
  store i64 -22, ptr %retval, align 8, !dbg !3072
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3072

if.end9:                                          ; preds = %if.then7
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.then4
  br label %if.end11

if.end11:                                         ; preds = %if.end10, %if.end
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !3073
  %5 = load i32, ptr %value, align 4, !dbg !3074
  %call12 = call i32 @dev_pm_qos_update_user_latency_tolerance(ptr noundef %4, i32 noundef %5) #8, !dbg !3075
  store i32 %call12, ptr %ret, align 4, !dbg !3076
  %6 = load i32, ptr %ret, align 4, !dbg !3077
  %cmp13 = icmp slt i32 %6, 0, !dbg !3078
  br i1 %cmp13, label %cond.true, label %cond.false, !dbg !3077

cond.true:                                        ; preds = %if.end11
  %7 = load i32, ptr %ret, align 4, !dbg !3079
  %conv = sext i32 %7 to i64, !dbg !3079
  br label %cond.end, !dbg !3077

cond.false:                                       ; preds = %if.end11
  %8 = load i64, ptr %n.addr, align 8, !dbg !3080
  br label %cond.end, !dbg !3077

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %8, %cond.false ], !dbg !3077
  store i64 %cond, ptr %retval, align 8, !dbg !3081
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3081

cleanup:                                          ; preds = %cond.end, %if.else8, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !3082
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #7, !dbg !3082
  %9 = load i64, ptr %retval, align 8, !dbg !3082
  ret i64 %9, !dbg !3082
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3083 dso_local i32 @dev_pm_qos_get_user_latency_tolerance(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kstrtos32(ptr noundef %s, i32 noundef %base, ptr noundef %res) #3 align 16 !dbg !3086 {
entry:
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3090, metadata !DIExpression()), !dbg !3093
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !3091, metadata !DIExpression()), !dbg !3094
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !3092, metadata !DIExpression()), !dbg !3095
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3096
  %1 = load i32, ptr %base.addr, align 4, !dbg !3097
  %2 = load ptr, ptr %res.addr, align 8, !dbg !3098
  %call = call i32 @kstrtoint(ptr noundef %0, i32 noundef %1, ptr noundef %2) #8, !dbg !3099
  ret i32 %call, !dbg !3100
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3101 dso_local i32 @dev_pm_qos_update_user_latency_tolerance(ptr noundef, i32 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3104 dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3107 dso_local i32 @device_change_owner(ptr noundef, i32, i32) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pm_qos_resume_latency_us_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !3108 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %value = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3110, metadata !DIExpression()), !dbg !3114
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3111, metadata !DIExpression()), !dbg !3115
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3112, metadata !DIExpression()), !dbg !3116
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #7, !dbg !3117
  call void @llvm.dbg.declare(metadata ptr %value, metadata !3113, metadata !DIExpression()), !dbg !3118
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3119
  %call = call i32 @dev_pm_qos_requested_resume_latency(ptr noundef %0) #8, !dbg !3120
  store i32 %call, ptr %value, align 4, !dbg !3118
  %1 = load i32, ptr %value, align 4, !dbg !3121
  %cmp = icmp eq i32 %1, 0, !dbg !3123
  br i1 %cmp, label %if.then, label %if.end, !dbg !3124

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !3125
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef @.str.33) #8, !dbg !3126
  %conv = sext i32 %call1 to i64, !dbg !3126
  store i64 %conv, ptr %retval, align 8, !dbg !3127
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3127

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %value, align 4, !dbg !3128
  %cmp2 = icmp eq i32 %3, 2147483647, !dbg !3130
  br i1 %cmp2, label %if.then4, label %if.end5, !dbg !3131

if.then4:                                         ; preds = %if.end
  store i32 0, ptr %value, align 4, !dbg !3132
  br label %if.end5, !dbg !3133

if.end5:                                          ; preds = %if.then4, %if.end
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !3134
  %5 = load i32, ptr %value, align 4, !dbg !3135
  %call6 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %4, ptr noundef @.str.13, i32 noundef %5) #8, !dbg !3136
  %conv7 = sext i32 %call6 to i64, !dbg !3136
  store i64 %conv7, ptr %retval, align 8, !dbg !3137
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3137

cleanup:                                          ; preds = %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #7, !dbg !3138
  %6 = load i64, ptr %retval, align 8, !dbg !3138
  ret i64 %6, !dbg !3138
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pm_qos_resume_latency_us_store(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %n) #0 align 16 !dbg !3139 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %value = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3141, metadata !DIExpression()), !dbg !3147
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3142, metadata !DIExpression()), !dbg !3148
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3143, metadata !DIExpression()), !dbg !3149
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !3144, metadata !DIExpression()), !dbg !3150
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #7, !dbg !3151
  call void @llvm.dbg.declare(metadata ptr %value, metadata !3145, metadata !DIExpression()), !dbg !3152
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !3153
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3146, metadata !DIExpression()), !dbg !3154
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !3155
  %call = call i32 @kstrtos32(ptr noundef %0, i32 noundef 0, ptr noundef %value) #8, !dbg !3157
  %tobool = icmp ne i32 %call, 0, !dbg !3157
  br i1 %tobool, label %if.else, label %if.then, !dbg !3158

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %value, align 4, !dbg !3159
  %cmp = icmp slt i32 %1, 0, !dbg !3162
  br i1 %cmp, label %if.then2, label %lor.lhs.false, !dbg !3163

lor.lhs.false:                                    ; preds = %if.then
  %2 = load i32, ptr %value, align 4, !dbg !3164
  %cmp1 = icmp eq i32 %2, 2147483647, !dbg !3165
  br i1 %cmp1, label %if.then2, label %if.end, !dbg !3166

if.then2:                                         ; preds = %lor.lhs.false, %if.then
  store i64 -22, ptr %retval, align 8, !dbg !3167
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3167

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, ptr %value, align 4, !dbg !3168
  %cmp3 = icmp eq i32 %3, 0, !dbg !3170
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !3171

if.then4:                                         ; preds = %if.end
  store i32 2147483647, ptr %value, align 4, !dbg !3172
  br label %if.end5, !dbg !3173

if.end5:                                          ; preds = %if.then4, %if.end
  br label %if.end10, !dbg !3174

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !3175
  %call6 = call zeroext i1 @sysfs_streq(ptr noundef %4, ptr noundef @.str.34) #8, !dbg !3177
  br i1 %call6, label %if.then7, label %if.else8, !dbg !3178

if.then7:                                         ; preds = %if.else
  store i32 0, ptr %value, align 4, !dbg !3179
  br label %if.end9, !dbg !3181

if.else8:                                         ; preds = %if.else
  store i64 -22, ptr %retval, align 8, !dbg !3182
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3182

if.end9:                                          ; preds = %if.then7
  br label %if.end10

if.end10:                                         ; preds = %if.end9, %if.end5
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !3184
  %power = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 11, !dbg !3185
  %qos = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 28, !dbg !3186
  %6 = load ptr, ptr %qos, align 8, !dbg !3186
  %resume_latency_req = getelementptr inbounds %struct.dev_pm_qos, ptr %6, i32 0, i32 4, !dbg !3187
  %7 = load ptr, ptr %resume_latency_req, align 8, !dbg !3187
  %8 = load i32, ptr %value, align 4, !dbg !3188
  %call11 = call i32 @dev_pm_qos_update_request(ptr noundef %7, i32 noundef %8) #8, !dbg !3189
  store i32 %call11, ptr %ret, align 4, !dbg !3190
  %9 = load i32, ptr %ret, align 4, !dbg !3191
  %cmp12 = icmp slt i32 %9, 0, !dbg !3192
  br i1 %cmp12, label %cond.true, label %cond.false, !dbg !3191

cond.true:                                        ; preds = %if.end10
  %10 = load i32, ptr %ret, align 4, !dbg !3193
  %conv = sext i32 %10 to i64, !dbg !3193
  br label %cond.end, !dbg !3191

cond.false:                                       ; preds = %if.end10
  %11 = load i64, ptr %n.addr, align 8, !dbg !3194
  br label %cond.end, !dbg !3191

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %11, %cond.false ], !dbg !3191
  store i64 %cond, ptr %retval, align 8, !dbg !3195
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3195

cleanup:                                          ; preds = %cond.end, %if.else8, %if.then2
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !3196
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #7, !dbg !3196
  %12 = load i64, ptr %retval, align 8, !dbg !3196
  ret i64 %12, !dbg !3196
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dev_pm_qos_requested_resume_latency(ptr noundef %dev) #3 align 16 !dbg !3197 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3199, metadata !DIExpression()), !dbg !3200
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3201
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !3202
  %qos = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 28, !dbg !3203
  %1 = load ptr, ptr %qos, align 8, !dbg !3203
  %resume_latency_req = getelementptr inbounds %struct.dev_pm_qos, ptr %1, i32 0, i32 4, !dbg !3204
  %2 = load ptr, ptr %resume_latency_req, align 8, !dbg !3204
  %data = getelementptr inbounds %struct.dev_pm_qos_request, ptr %2, i32 0, i32 1, !dbg !3205
  %prio = getelementptr inbounds %struct.plist_node, ptr %data, i32 0, i32 0, !dbg !3206
  %3 = load i32, ptr %prio, align 8, !dbg !3206
  ret i32 %3, !dbg !3207
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3208 dso_local i32 @dev_pm_qos_update_request(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pm_qos_no_power_off_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !3211 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3213, metadata !DIExpression()), !dbg !3216
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3214, metadata !DIExpression()), !dbg !3217
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3215, metadata !DIExpression()), !dbg !3218
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !3219
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !3220
  %call = call i32 @dev_pm_qos_requested_flags(ptr noundef %1) #8, !dbg !3221
  %and = and i32 %call, 1, !dbg !3222
  %tobool = icmp ne i32 %and, 0, !dbg !3223
  %lnot = xor i1 %tobool, true, !dbg !3223
  %lnot1 = xor i1 %lnot, true, !dbg !3224
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3224
  %call2 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %0, ptr noundef @.str.13, i32 noundef %lnot.ext) #8, !dbg !3225
  %conv = sext i32 %call2 to i64, !dbg !3225
  ret i64 %conv, !dbg !3226
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @pm_qos_no_power_off_store(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %n) #0 align 16 !dbg !3227 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3229, metadata !DIExpression()), !dbg !3234
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3230, metadata !DIExpression()), !dbg !3235
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3231, metadata !DIExpression()), !dbg !3236
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !3232, metadata !DIExpression()), !dbg !3237
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #7, !dbg !3238
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3233, metadata !DIExpression()), !dbg !3239
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !3240
  %call = call i32 @kstrtoint(ptr noundef %0, i32 noundef 0, ptr noundef %ret) #8, !dbg !3242
  %tobool = icmp ne i32 %call, 0, !dbg !3242
  br i1 %tobool, label %if.then, label %if.end, !dbg !3243

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !3244
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3244

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %ret, align 4, !dbg !3245
  %cmp = icmp ne i32 %1, 0, !dbg !3247
  br i1 %cmp, label %land.lhs.true, label %if.end3, !dbg !3248

land.lhs.true:                                    ; preds = %if.end
  %2 = load i32, ptr %ret, align 4, !dbg !3249
  %cmp1 = icmp ne i32 %2, 1, !dbg !3250
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !3251

if.then2:                                         ; preds = %land.lhs.true
  store i64 -22, ptr %retval, align 8, !dbg !3252
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3252

if.end3:                                          ; preds = %land.lhs.true, %if.end
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !3253
  %4 = load i32, ptr %ret, align 4, !dbg !3254
  %tobool4 = icmp ne i32 %4, 0, !dbg !3254
  %call5 = call i32 @dev_pm_qos_update_flags(ptr noundef %3, i32 noundef 1, i1 noundef zeroext %tobool4) #8, !dbg !3255
  store i32 %call5, ptr %ret, align 4, !dbg !3256
  %5 = load i32, ptr %ret, align 4, !dbg !3257
  %cmp6 = icmp slt i32 %5, 0, !dbg !3258
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !3257

cond.true:                                        ; preds = %if.end3
  %6 = load i32, ptr %ret, align 4, !dbg !3259
  %conv = sext i32 %6 to i64, !dbg !3259
  br label %cond.end, !dbg !3257

cond.false:                                       ; preds = %if.end3
  %7 = load i64, ptr %n.addr, align 8, !dbg !3260
  br label %cond.end, !dbg !3257

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %7, %cond.false ], !dbg !3257
  store i64 %cond, ptr %retval, align 8, !dbg !3261
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3261

cleanup:                                          ; preds = %cond.end, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #7, !dbg !3262
  %8 = load i64, ptr %retval, align 8, !dbg !3262
  ret i64 %8, !dbg !3262
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dev_pm_qos_requested_flags(ptr noundef %dev) #3 align 16 !dbg !3263 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3265, metadata !DIExpression()), !dbg !3266
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3267
  %power = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 11, !dbg !3268
  %qos = getelementptr inbounds %struct.dev_pm_info, ptr %power, i32 0, i32 28, !dbg !3269
  %1 = load ptr, ptr %qos, align 8, !dbg !3269
  %flags_req = getelementptr inbounds %struct.dev_pm_qos, ptr %1, i32 0, i32 6, !dbg !3270
  %2 = load ptr, ptr %flags_req, align 8, !dbg !3270
  %data = getelementptr inbounds %struct.dev_pm_qos_request, ptr %2, i32 0, i32 1, !dbg !3271
  %flags = getelementptr inbounds %struct.pm_qos_flags_request, ptr %data, i32 0, i32 1, !dbg !3272
  %3 = load i32, ptr %flags, align 8, !dbg !3272
  ret i32 %3, !dbg !3273
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3274 dso_local i32 @dev_pm_qos_update_flags(ptr noundef, i32 noundef, i1 noundef zeroext) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nounwind }
attributes #8 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889}
!llvm.ident = !{!1890}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "power_group_name", scope: !2, file: !3, line: 95, type: !1881, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/base/power/.sysfs.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/base/power/sysfs\22 -D KBUILD_BASENAME=\22sysfs\22 -D KBUILD_MODNAME=\22sysfs\22 -D __KBUILD_MODNAME=kmod_sysfs -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/base/power/sysfs.ll drivers/base/power/sysfs.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !111, globals: !126, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/base/power/sysfs.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "6aba4cfa8b4ee2fc55398d9afe52ea65")
!4 = !{!5, !12, !19, !25, !32, !37, !45, !53, !59, !66, !70, !79, !84, !89, !95, !106}
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
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobject_action", file: !96, line: 53, baseType: !7, size: 32, elements: !97)
!96 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!97 = !{!98, !99, !100, !101, !102, !103, !104, !105}
!98 = !DIEnumerator(name: "KOBJ_ADD", value: 0)
!99 = !DIEnumerator(name: "KOBJ_REMOVE", value: 1)
!100 = !DIEnumerator(name: "KOBJ_CHANGE", value: 2)
!101 = !DIEnumerator(name: "KOBJ_MOVE", value: 3)
!102 = !DIEnumerator(name: "KOBJ_ONLINE", value: 4)
!103 = !DIEnumerator(name: "KOBJ_OFFLINE", value: 5)
!104 = !DIEnumerator(name: "KOBJ_BIND", value: 6)
!105 = !DIEnumerator(name: "KOBJ_UNBIND", value: 7)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !107, line: 10, baseType: !7, size: 32, elements: !108)
!107 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!108 = !{!109, !110}
!109 = !DIEnumerator(name: "false", value: 0)
!110 = !DIEnumerator(name: "true", value: 1)
!111 = !{!112, !113, !46, !120, !122, !124}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !114, line: 113, baseType: !115)
!114 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!115 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !116, line: 23, baseType: !117)
!116 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!117 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !118, line: 31, baseType: !119)
!118 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!119 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!121 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !116, line: 20, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !118, line: 26, baseType: !46)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !116, line: 21, baseType: !125)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !118, line: 27, baseType: !7)
!126 = !{!0, !127, !129, !788, !793, !795, !800, !805, !1701, !1704, !1709, !1714, !1719, !1724, !1727, !1730, !1733, !1735, !1740, !1743, !1748, !1750, !1752, !1757, !1759, !1764, !1766, !1768, !1770, !1773, !1775, !1777, !1780, !1783, !1786, !1791, !1793, !1796, !1799, !1801, !1803, !1808, !1810, !1812, !1814, !1819, !1821, !1823, !1825, !1827, !1829, !1834, !1836, !1838, !1840, !1842, !1844, !1847, !1852, !1854, !1856, !1858, !1860, !1862, !1867, !1869, !1871, !1873, !1875, !1877, !1879}
!127 = !DIGlobalVariableExpression(var: !128, expr: !DIExpression())
!128 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_power_group_name204", scope: !2, file: !3, line: 96, type: !112, isLocal: true, isDefinition: true)
!129 = !DIGlobalVariableExpression(var: !130, expr: !DIExpression())
!130 = distinct !DIGlobalVariable(name: "pm_attr_group", scope: !2, file: !3, line: 625, type: !131, isLocal: true, isDefinition: true)
!131 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !132)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !133, line: 84, size: 320, elements: !134)
!133 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!134 = !{!135, !139, !759, !784, !786}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !132, file: !133, line: 85, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!138 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !132, file: !133, line: 86, baseType: !140, size: 64, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!143, !145, !265, !46}
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !114, line: 24, baseType: !144)
!144 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !96, line: 64, size: 512, elements: !147)
!147 = !{!148, !149, !155, !156, !242, !339, !744, !754, !755, !756, !757, !758}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !146, file: !96, line: 65, baseType: !136, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !146, file: !96, line: 66, baseType: !150, size: 128, offset: 64)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !114, line: 190, size: 128, elements: !151)
!151 = !{!152, !154}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !150, file: !114, line: 191, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !150, file: !114, line: 191, baseType: !153, size: 64, offset: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !146, file: !96, line: 67, baseType: !145, size: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !146, file: !96, line: 68, baseType: !157, size: 64, offset: 256)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !96, line: 168, size: 768, elements: !159)
!159 = !{!160, !161, !201, !202}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !158, file: !96, line: 169, baseType: !150, size: 128)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !158, file: !96, line: 170, baseType: !162, size: 32, offset: 128)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !163, line: 29, baseType: !164)
!163 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !163, line: 17, size: 32, elements: !165)
!165 = !{!166}
!166 = !DIDerivedType(tag: DW_TAG_member, scope: !164, file: !163, line: 18, baseType: !167, size: 32)
!167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !164, file: !163, line: 18, size: 32, elements: !168)
!168 = !{!169}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !167, file: !163, line: 19, baseType: !170, size: 32)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !171, line: 14, size: 32, elements: !172)
!171 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!172 = !{!173}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !170, file: !171, line: 15, baseType: !174, size: 32)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !175, line: 44, baseType: !176)
!175 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !175, line: 14, size: 32, elements: !177)
!177 = !{!178}
!178 = !DIDerivedType(tag: DW_TAG_member, scope: !176, file: !175, line: 15, baseType: !179, size: 32)
!179 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !176, file: !175, line: 15, size: 32, elements: !180)
!180 = !{!181, !186, !194}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !179, file: !175, line: 16, baseType: !182, size: 32)
!182 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !114, line: 174, baseType: !183)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 172, size: 32, elements: !184)
!184 = !{!185}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !183, file: !114, line: 173, baseType: !46, size: 32)
!186 = !DIDerivedType(tag: DW_TAG_member, scope: !179, file: !175, line: 24, baseType: !187, size: 16)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !179, file: !175, line: 24, size: 16, elements: !188)
!188 = !{!189, !193}
!189 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !187, file: !175, line: 25, baseType: !190, size: 8)
!190 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !116, line: 17, baseType: !191)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !118, line: 21, baseType: !192)
!192 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !187, file: !175, line: 26, baseType: !190, size: 8, offset: 8)
!194 = !DIDerivedType(tag: DW_TAG_member, scope: !179, file: !175, line: 28, baseType: !195, size: 32)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !179, file: !175, line: 28, size: 32, elements: !196)
!196 = !{!197, !200}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !195, file: !175, line: 29, baseType: !198, size: 16)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !116, line: 19, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !118, line: 24, baseType: !144)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !195, file: !175, line: 30, baseType: !198, size: 16, offset: 16)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !158, file: !96, line: 171, baseType: !146, size: 512, offset: 192)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !158, file: !96, line: 172, baseType: !203, size: 64, offset: 704)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !205)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !96, line: 133, size: 192, elements: !206)
!206 = !{!207, !214, !219}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !205, file: !96, line: 134, baseType: !208, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!46, !212}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !146)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !205, file: !96, line: 135, baseType: !215, size: 64, offset: 64)
!215 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!136, !212}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !205, file: !96, line: 136, baseType: !220, size: 64, offset: 128)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!46, !212, !224}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !96, line: 125, size: 20736, elements: !226)
!226 = !{!227, !232, !236, !237, !241}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !225, file: !96, line: 126, baseType: !228, size: 192)
!228 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 192, elements: !230)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!230 = !{!231}
!231 = !DISubrange(count: 3)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !225, file: !96, line: 127, baseType: !233, size: 4096, offset: 192)
!233 = !DICompositeType(tag: DW_TAG_array_type, baseType: !229, size: 4096, elements: !234)
!234 = !{!235}
!235 = !DISubrange(count: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !225, file: !96, line: 128, baseType: !46, size: 32, offset: 4288)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !225, file: !96, line: 129, baseType: !238, size: 16384, offset: 4320)
!238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 16384, elements: !239)
!239 = !{!240}
!240 = !DISubrange(count: 2048)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !225, file: !96, line: 130, baseType: !46, size: 32, offset: 20704)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !146, file: !96, line: 69, baseType: !243, size: 64, offset: 320)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !96, line: 116, size: 384, elements: !246)
!246 = !{!247, !251, !278, !281, !316, !320}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !245, file: !96, line: 117, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{null, !145}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !245, file: !96, line: 118, baseType: !252, size: 64, offset: 64)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !254)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !133, line: 254, size: 128, elements: !255)
!255 = !{!256, !270}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !254, file: !133, line: 255, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!260, !145, !265, !229}
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !114, line: 66, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !262, line: 73, baseType: !263)
!262 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !262, line: 15, baseType: !264)
!264 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !133, line: 30, size: 128, elements: !267)
!267 = !{!268, !269}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !266, file: !133, line: 31, baseType: !136, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !266, file: !133, line: 32, baseType: !143, size: 16, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !254, file: !133, line: 256, baseType: !271, size: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!260, !145, !265, !136, !274}
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !114, line: 61, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !262, line: 72, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !262, line: 16, baseType: !277)
!277 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !245, file: !96, line: 119, baseType: !279, size: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !245, file: !96, line: 120, baseType: !282, size: 64, offset: 192)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!285, !212}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !288)
!288 = !{!289, !290, !296, !300, !308, !312}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !287, file: !6, line: 40, baseType: !5, size: 32)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !287, file: !6, line: 41, baseType: !291, size: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!294}
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !114, line: 35, baseType: !295)
!295 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !287, file: !6, line: 42, baseType: !297, size: 64, offset: 128)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{!112}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !287, file: !6, line: 43, baseType: !301, size: 64, offset: 192)
!301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!302 = !DISubroutineType(types: !303)
!303 = !{!304, !306}
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !287, file: !6, line: 44, baseType: !309, size: 64, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!304}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !287, file: !6, line: 45, baseType: !313, size: 64, offset: 320)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !112}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !245, file: !96, line: 121, baseType: !317, size: 64, offset: 256)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DISubroutineType(types: !319)
!319 = !{!304, !212}
!320 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !245, file: !96, line: 122, baseType: !321, size: 64, offset: 320)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{null, !212, !324, !332}
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !326, line: 23, baseType: !327)
!326 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !326, line: 21, size: 32, elements: !328)
!328 = !{!329}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !327, file: !326, line: 22, baseType: !330, size: 32)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !114, line: 37, baseType: !331)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !262, line: 49, baseType: !7)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !326, line: 28, baseType: !334)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !326, line: 26, size: 32, elements: !335)
!335 = !{!336}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !334, file: !326, line: 27, baseType: !337, size: 32)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !114, line: 38, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !262, line: 50, baseType: !7)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !146, file: !96, line: 70, baseType: !340, size: 64, offset: 384)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !342, line: 190, size: 1152, elements: !343)
!342 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!343 = !{!344, !345, !346, !347, !348, !356, !357, !358, !736, !737, !738, !739, !740, !743}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !341, file: !342, line: 191, baseType: !182, size: 32)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !341, file: !342, line: 192, baseType: !182, size: 32, offset: 32)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !341, file: !342, line: 202, baseType: !340, size: 64, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !341, file: !342, line: 203, baseType: !136, size: 64, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !341, file: !342, line: 205, baseType: !349, size: 192, align: 64, offset: 192)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !350, line: 5, size: 192, align: 64, elements: !351)
!350 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!351 = !{!352, !353, !355}
!352 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !349, file: !350, line: 6, baseType: !277, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !349, file: !350, line: 7, baseType: !354, size: 64, offset: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !349, file: !350, line: 8, baseType: !354, size: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !341, file: !342, line: 207, baseType: !304, size: 64, offset: 384)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !341, file: !342, line: 208, baseType: !7, size: 32, offset: 448)
!358 = !DIDerivedType(tag: DW_TAG_member, scope: !341, file: !342, line: 209, baseType: !359, size: 256, offset: 512)
!359 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !341, file: !342, line: 209, size: 256, elements: !360)
!360 = !{!361, !373, !377}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !359, file: !342, line: 210, baseType: !362, size: 256)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !342, line: 153, size: 256, elements: !363)
!363 = !{!364, !365, !369, !372}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !362, file: !342, line: 154, baseType: !277, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !362, file: !342, line: 156, baseType: !366, size: 64, offset: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !350, line: 12, size: 64, elements: !367)
!367 = !{!368}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !366, file: !350, line: 13, baseType: !354, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !362, file: !342, line: 162, baseType: !370, size: 64, offset: 128)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !342, line: 162, flags: DIFlagFwdDecl)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !362, file: !342, line: 167, baseType: !277, size: 64, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !359, file: !342, line: 211, baseType: !374, size: 64)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !342, line: 170, size: 64, elements: !375)
!375 = !{!376}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !374, file: !342, line: 171, baseType: !340, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !359, file: !342, line: 212, baseType: !378, size: 256)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !342, line: 174, size: 256, elements: !379)
!379 = !{!380, !731, !734, !735}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !378, file: !342, line: 175, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !342, line: 271, size: 768, elements: !384)
!384 = !{!385, !435, !439, !443, !450, !454, !458, !462, !463, !464, !465, !473}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !383, file: !342, line: 276, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{!46, !389}
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !342, line: 251, size: 1216, elements: !391)
!391 = !{!392, !393, !397, !401, !402, !423, !424, !425, !426, !427, !428, !429, !430}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !390, file: !342, line: 253, baseType: !340, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !390, file: !342, line: 254, baseType: !394, size: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !396, line: 537, flags: DIFlagFwdDecl)
!396 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!397 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !390, file: !342, line: 255, baseType: !398, size: 64, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !399, size: 64)
!399 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !400, line: 66, flags: DIFlagFwdDecl)
!400 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!401 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !390, file: !342, line: 256, baseType: !112, size: 64, offset: 192)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !390, file: !342, line: 259, baseType: !403, size: 256, offset: 256)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !404, line: 66, size: 256, elements: !405)
!404 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!405 = !{!406, !415, !417, !422}
!406 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !403, file: !404, line: 67, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !408, line: 13, baseType: !409)
!408 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !114, line: 181, baseType: !410)
!410 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 179, size: 64, elements: !411)
!411 = !{!412}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !410, file: !114, line: 180, baseType: !413, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !116, line: 22, baseType: !414)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !118, line: 30, baseType: !121)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !403, file: !404, line: 68, baseType: !416, size: 32, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !171, line: 23, baseType: !170)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !403, file: !404, line: 70, baseType: !418, size: 32, offset: 96)
!418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !419, line: 15, size: 32, elements: !420)
!419 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!420 = !{!421}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !418, file: !419, line: 20, baseType: !182, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !403, file: !404, line: 72, baseType: !150, size: 128, offset: 128)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !390, file: !342, line: 260, baseType: !403, size: 256, offset: 512)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !390, file: !342, line: 261, baseType: !46, size: 32, offset: 768)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !390, file: !342, line: 262, baseType: !150, size: 128, offset: 832)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !390, file: !342, line: 263, baseType: !229, size: 64, offset: 960)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !390, file: !342, line: 265, baseType: !274, size: 64, offset: 1024)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !390, file: !342, line: 266, baseType: !294, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !390, file: !342, line: 267, baseType: !294, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !390, file: !342, line: 268, baseType: !431, size: 64, offset: 1152)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !433)
!433 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !434, line: 694, flags: DIFlagFwdDecl)
!434 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!435 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !383, file: !342, line: 277, baseType: !436, size: 64, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{null, !389}
!439 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !383, file: !342, line: 290, baseType: !440, size: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !441, size: 64)
!441 = !DISubroutineType(types: !442)
!442 = !{!46, !398, !112}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !383, file: !342, line: 292, baseType: !444, size: 64, offset: 192)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !445, size: 64)
!445 = !DISubroutineType(types: !446)
!446 = !{!112, !398, !447}
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !114, line: 52, baseType: !449)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !262, line: 88, baseType: !121)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !383, file: !342, line: 293, baseType: !451, size: 64, offset: 256)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!452 = !DISubroutineType(types: !453)
!453 = !{!112, !398, !112, !447}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !383, file: !342, line: 294, baseType: !455, size: 64, offset: 320)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DISubroutineType(types: !457)
!457 = !{null, !398, !112}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !383, file: !342, line: 296, baseType: !459, size: 64, offset: 384)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!260, !389, !229, !274, !448}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !383, file: !342, line: 306, baseType: !274, size: 64, offset: 448)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !383, file: !342, line: 313, baseType: !294, size: 8, offset: 512)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !383, file: !342, line: 314, baseType: !459, size: 64, offset: 576)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !383, file: !342, line: 317, baseType: !466, size: 64, offset: 640)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!469, !389, !471}
!469 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !470, line: 59, baseType: !7)
!470 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !342, line: 31, flags: DIFlagFwdDecl)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !383, file: !342, line: 320, baseType: !474, size: 64, offset: 704)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{!46, !389, !477}
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !434, line: 625, size: 1344, elements: !479)
!479 = !{!480, !497, !692, !698, !705, !706, !711, !712, !717, !718, !721, !722, !723, !724, !725, !726, !729}
!480 = !DIDerivedType(tag: DW_TAG_member, scope: !478, file: !434, line: 628, baseType: !481, size: 128)
!481 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !478, file: !434, line: 628, size: 128, elements: !482)
!482 = !{!483, !488}
!483 = !DIDerivedType(tag: DW_TAG_member, scope: !481, file: !434, line: 629, baseType: !484, size: 128)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !481, file: !434, line: 629, size: 128, elements: !485)
!485 = !{!486, !487}
!486 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !484, file: !434, line: 631, baseType: !277, size: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !484, file: !434, line: 632, baseType: !277, size: 64, offset: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !481, file: !434, line: 635, baseType: !489, size: 128, align: 64)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !114, line: 232, size: 128, align: 64, elements: !490)
!490 = !{!491, !493}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !489, file: !114, line: 233, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !489, file: !114, line: 234, baseType: !494, size: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DISubroutineType(types: !496)
!496 = !{null, !492}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !478, file: !434, line: 639, baseType: !498, size: 64, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !499, size: 64)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !434, line: 733, size: 10240, elements: !500)
!500 = !{!501, !688}
!501 = !DIDerivedType(tag: DW_TAG_member, scope: !499, file: !434, line: 734, baseType: !502, size: 10240)
!502 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !499, file: !434, line: 734, size: 10240, elements: !503)
!503 = !{!504, !508, !522, !526, !527, !528, !529, !530, !531, !539, !540, !541, !547, !548, !549, !550, !551, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !577, !578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !593, !605, !608, !654, !655, !656, !659, !662, !663, !666, !667, !668, !675, !676}
!504 = !DIDerivedType(tag: DW_TAG_member, scope: !502, file: !434, line: 739, baseType: !505, size: 512, align: 512)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !502, file: !434, line: 739, size: 512, align: 512, elements: !506)
!506 = !{!507}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !505, file: !434, line: 747, baseType: !182, size: 32)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !502, file: !434, line: 750, baseType: !509, size: 128, offset: 512)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !510, line: 218, size: 128, elements: !511)
!510 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!511 = !{!512, !520, !521}
!512 = !DIDerivedType(tag: DW_TAG_member, scope: !509, file: !510, line: 219, baseType: !513, size: 32)
!513 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !509, file: !510, line: 219, size: 32, elements: !514)
!514 = !{!515, !516}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !513, file: !510, line: 220, baseType: !162, size: 32)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !513, file: !510, line: 221, baseType: !517)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !510, line: 197, baseType: !518)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !510, line: 197, elements: !519)
!519 = !{}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !509, file: !510, line: 223, baseType: !7, size: 32, offset: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !509, file: !510, line: 224, baseType: !112, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !502, file: !434, line: 752, baseType: !523, size: 64, offset: 640)
!523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!524 = !DISubroutineType(types: !525)
!525 = !{!277, !394, !277, !277, !277, !277}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !502, file: !434, line: 756, baseType: !277, size: 64, offset: 704)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !502, file: !434, line: 757, baseType: !277, size: 64, offset: 768)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !502, file: !434, line: 760, baseType: !277, size: 64, offset: 832)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !502, file: !434, line: 761, baseType: !277, size: 64, offset: 896)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !502, file: !434, line: 763, baseType: !277, size: 64, offset: 960)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !502, file: !434, line: 764, baseType: !532, size: 64, offset: 1024)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !396, line: 299, baseType: !534)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !396, line: 299, size: 64, elements: !535)
!535 = !{!536}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !534, file: !396, line: 299, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !538, line: 18, baseType: !277)
!538 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!539 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !502, file: !434, line: 773, baseType: !182, size: 32, offset: 1088)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !502, file: !434, line: 785, baseType: !182, size: 32, offset: 1120)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !502, file: !434, line: 795, baseType: !542, size: 64, offset: 1152)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !434, line: 726, size: 128, elements: !544)
!544 = !{!545, !546}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !543, file: !434, line: 727, baseType: !115, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !543, file: !434, line: 728, baseType: !46, size: 32, offset: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !502, file: !434, line: 801, baseType: !277, size: 64, offset: 1216)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !502, file: !434, line: 804, baseType: !407, size: 64, offset: 1280)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !502, file: !434, line: 806, baseType: !46, size: 32, offset: 1344)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !502, file: !434, line: 808, baseType: !162, size: 32, offset: 1376)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !502, file: !434, line: 823, baseType: !552, size: 320, offset: 1408)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !553, line: 48, size: 320, elements: !554)
!553 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!554 = !{!555, !556, !557, !558, !559}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !552, file: !553, line: 49, baseType: !407, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !552, file: !553, line: 55, baseType: !407, size: 64, offset: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !552, file: !553, line: 57, baseType: !418, size: 32, offset: 128)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !552, file: !553, line: 59, baseType: !416, size: 32, offset: 160)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !552, file: !553, line: 60, baseType: !150, size: 128, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !502, file: !434, line: 825, baseType: !150, size: 128, offset: 1728)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !502, file: !434, line: 845, baseType: !46, size: 32, offset: 1856)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !502, file: !434, line: 849, baseType: !277, size: 64, offset: 1920)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !502, file: !434, line: 850, baseType: !277, size: 64, offset: 1984)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !502, file: !434, line: 852, baseType: !277, size: 64, offset: 2048)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !502, file: !434, line: 853, baseType: !277, size: 64, offset: 2112)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !502, file: !434, line: 854, baseType: !409, size: 64, offset: 2176)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !502, file: !434, line: 855, baseType: !277, size: 64, offset: 2240)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !502, file: !434, line: 856, baseType: !277, size: 64, offset: 2304)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !502, file: !434, line: 857, baseType: !277, size: 64, offset: 2368)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !502, file: !434, line: 858, baseType: !277, size: 64, offset: 2432)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !502, file: !434, line: 865, baseType: !572, size: 32, offset: 2496)
!572 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !573, line: 69, baseType: !574)
!573 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !573, line: 64, size: 32, elements: !575)
!575 = !{!576}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !574, file: !573, line: 65, baseType: !7, size: 32)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !502, file: !434, line: 867, baseType: !162, size: 32, offset: 2528)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !502, file: !434, line: 869, baseType: !277, size: 64, offset: 2560)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !502, file: !434, line: 869, baseType: !277, size: 64, offset: 2624)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !502, file: !434, line: 869, baseType: !277, size: 64, offset: 2688)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !502, file: !434, line: 869, baseType: !277, size: 64, offset: 2752)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !502, file: !434, line: 870, baseType: !277, size: 64, offset: 2816)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !502, file: !434, line: 870, baseType: !277, size: 64, offset: 2880)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !502, file: !434, line: 870, baseType: !277, size: 64, offset: 2944)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !502, file: !434, line: 871, baseType: !277, size: 64, offset: 3008)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !502, file: !434, line: 871, baseType: !277, size: 64, offset: 3072)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !502, file: !434, line: 871, baseType: !277, size: 64, offset: 3136)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !502, file: !434, line: 871, baseType: !277, size: 64, offset: 3200)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !502, file: !434, line: 873, baseType: !590, size: 3328, offset: 3264)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 3328, elements: !591)
!591 = !{!592}
!592 = !DISubrange(count: 52)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !502, file: !434, line: 875, baseType: !594, size: 1280, offset: 6592)
!594 = !DICompositeType(tag: DW_TAG_array_type, baseType: !595, size: 1280, elements: !603)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !596, line: 22, size: 320, elements: !597)
!596 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!597 = !{!598, !599, !600, !601}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !595, file: !596, line: 23, baseType: !416, size: 32)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !595, file: !596, line: 24, baseType: !413, size: 64, offset: 64)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !595, file: !596, line: 26, baseType: !150, size: 128, offset: 128)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !595, file: !596, line: 28, baseType: !602, size: 64, offset: 256)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!603 = !{!604}
!604 = !DISubrange(count: 4)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !502, file: !434, line: 877, baseType: !606, size: 64, offset: 7872)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !434, line: 877, flags: DIFlagFwdDecl)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !502, file: !434, line: 880, baseType: !609, size: 1088, offset: 7936)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !610, line: 72, baseType: !611)
!610 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !610, line: 23, size: 1088, elements: !612)
!612 = !{!613, !614, !615, !616, !617, !620, !621, !622, !623, !648, !649, !650}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !611, file: !610, line: 28, baseType: !115, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !611, file: !610, line: 38, baseType: !409, size: 64, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !611, file: !610, line: 40, baseType: !277, size: 64, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !611, file: !610, line: 43, baseType: !552, size: 320, offset: 192)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !611, file: !610, line: 44, baseType: !618, size: 64, offset: 512)
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !619, size: 64)
!619 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !610, line: 44, flags: DIFlagFwdDecl)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !611, file: !610, line: 48, baseType: !277, size: 64, offset: 576)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !611, file: !610, line: 59, baseType: !403, size: 256, offset: 640)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !611, file: !610, line: 60, baseType: !112, size: 64, offset: 896)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !611, file: !610, line: 61, baseType: !624, size: 64, offset: 960)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !626)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !627, line: 13, size: 1216, elements: !628)
!627 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!628 = !{!629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !626, file: !627, line: 14, baseType: !112, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !626, file: !627, line: 15, baseType: !277, size: 64, offset: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !626, file: !627, line: 17, baseType: !277, size: 64, offset: 128)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !626, file: !627, line: 17, baseType: !277, size: 64, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !626, file: !627, line: 18, baseType: !277, size: 64, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !626, file: !627, line: 18, baseType: !277, size: 64, offset: 320)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !626, file: !627, line: 19, baseType: !304, size: 64, offset: 384)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !626, file: !627, line: 21, baseType: !264, size: 64, offset: 448)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !626, file: !627, line: 23, baseType: !264, size: 64, offset: 512)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !626, file: !627, line: 24, baseType: !264, size: 64, offset: 576)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !626, file: !627, line: 25, baseType: !264, size: 64, offset: 640)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !626, file: !627, line: 26, baseType: !264, size: 64, offset: 704)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !626, file: !627, line: 27, baseType: !264, size: 64, offset: 768)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !626, file: !627, line: 28, baseType: !264, size: 64, offset: 832)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !626, file: !627, line: 29, baseType: !264, size: 64, offset: 896)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !626, file: !627, line: 30, baseType: !264, size: 64, offset: 960)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !626, file: !627, line: 31, baseType: !264, size: 64, offset: 1024)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !626, file: !627, line: 32, baseType: !264, size: 64, offset: 1088)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !626, file: !627, line: 33, baseType: !264, size: 64, offset: 1152)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !611, file: !610, line: 63, baseType: !182, size: 32, offset: 1024)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !611, file: !610, line: 69, baseType: !198, size: 16, offset: 1056)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !611, file: !610, line: 70, baseType: !651, size: 16, offset: 1072)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !116, line: 18, baseType: !652)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !118, line: 23, baseType: !653)
!653 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !502, file: !434, line: 882, baseType: !277, size: 64, offset: 9024)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !502, file: !434, line: 885, baseType: !162, size: 32, offset: 9088)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !502, file: !434, line: 886, baseType: !657, size: 64, offset: 9152)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !434, line: 732, flags: DIFlagFwdDecl)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !502, file: !434, line: 901, baseType: !660, size: 64, offset: 9216)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !326, line: 18, flags: DIFlagFwdDecl)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !502, file: !434, line: 904, baseType: !394, size: 64, offset: 9280)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !502, file: !434, line: 906, baseType: !664, size: 64, offset: 9344)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !434, line: 906, flags: DIFlagFwdDecl)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !502, file: !434, line: 930, baseType: !182, size: 32, offset: 9408)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !502, file: !434, line: 933, baseType: !182, size: 32, offset: 9440)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !502, file: !434, line: 935, baseType: !669, size: 64, offset: 9472)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !670, line: 103, size: 64, elements: !671)
!670 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!671 = !{!672}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !669, file: !670, line: 104, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !670, line: 101, flags: DIFlagFwdDecl)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !502, file: !434, line: 940, baseType: !407, size: 64, offset: 9536)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !502, file: !434, line: 942, baseType: !677, size: 256, offset: 9600)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !678, line: 98, size: 256, elements: !679)
!678 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!679 = !{!680, !681, !682}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !677, file: !678, line: 99, baseType: !407, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !677, file: !678, line: 100, baseType: !150, size: 128, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !677, file: !678, line: 101, baseType: !683, size: 64, offset: 192)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !678, line: 21, baseType: !684)
!684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!685 = !DISubroutineType(types: !686)
!686 = !{null, !687}
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !499, file: !434, line: 986, baseType: !689, offset: 10240)
!689 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, elements: !690)
!690 = !{!691}
!691 = !DISubrange(count: -1)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !478, file: !434, line: 640, baseType: !693, size: 64, offset: 192)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !396, line: 297, baseType: !694)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !396, line: 297, size: 64, elements: !695)
!695 = !{!696}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !694, file: !396, line: 297, baseType: !697, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !538, line: 19, baseType: !277)
!698 = !DIDerivedType(tag: DW_TAG_member, scope: !478, file: !434, line: 646, baseType: !699, size: 64, offset: 256)
!699 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !478, file: !434, line: 646, size: 64, elements: !700)
!700 = !{!701, !704}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !699, file: !434, line: 647, baseType: !702, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !703)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !434, line: 542, baseType: !277)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !699, file: !434, line: 648, baseType: !703, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !478, file: !434, line: 666, baseType: !46, size: 32, offset: 320)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !478, file: !434, line: 667, baseType: !707, size: 64, offset: 384)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !434, line: 579, size: 320, elements: !709)
!709 = !{!710}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !708, file: !434, line: 580, baseType: !552, size: 320)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !478, file: !434, line: 670, baseType: !294, size: 8, offset: 448)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !478, file: !434, line: 681, baseType: !713, size: 256, offset: 512)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !478, file: !434, line: 678, size: 256, elements: !714)
!714 = !{!715, !716}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !713, file: !434, line: 679, baseType: !349, size: 192, align: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !713, file: !434, line: 680, baseType: !277, size: 64, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !478, file: !434, line: 689, baseType: !150, size: 128, offset: 768)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !478, file: !434, line: 691, baseType: !719, size: 64, offset: 896)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !434, line: 691, flags: DIFlagFwdDecl)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !478, file: !434, line: 694, baseType: !431, size: 64, offset: 960)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !478, file: !434, line: 697, baseType: !277, size: 64, offset: 1024)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !478, file: !434, line: 699, baseType: !394, size: 64, offset: 1088)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !478, file: !434, line: 700, baseType: !112, size: 64, offset: 1152)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !478, file: !434, line: 711, baseType: !407, size: 64, offset: 1216)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !478, file: !434, line: 717, baseType: !727, size: 64, offset: 1280)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !400, line: 54, flags: DIFlagFwdDecl)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !478, file: !434, line: 722, baseType: !730, offset: 1344)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !434, line: 570, elements: !519)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !378, file: !342, line: 176, baseType: !732, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !342, line: 35, flags: DIFlagFwdDecl)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !378, file: !342, line: 177, baseType: !448, size: 64, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !378, file: !342, line: 178, baseType: !340, size: 64, offset: 192)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !341, file: !342, line: 215, baseType: !112, size: 64, offset: 768)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !341, file: !342, line: 221, baseType: !115, size: 64, offset: 832)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !341, file: !342, line: 223, baseType: !144, size: 16, offset: 896)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !341, file: !342, line: 224, baseType: !143, size: 16, offset: 912)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !341, file: !342, line: 225, baseType: !741, size: 64, offset: 960)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !342, line: 36, flags: DIFlagFwdDecl)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !341, file: !342, line: 227, baseType: !489, size: 128, align: 64, offset: 1024)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !146, file: !96, line: 71, baseType: !745, size: 32, offset: 448)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !746, line: 19, size: 32, elements: !747)
!746 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!747 = !{!748}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !745, file: !746, line: 20, baseType: !749, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !750, line: 113, baseType: !751)
!750 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !750, line: 111, size: 32, elements: !752)
!752 = !{!753}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !751, file: !750, line: 112, baseType: !182, size: 32)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !146, file: !96, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !146, file: !96, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !146, file: !96, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !146, file: !96, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !146, file: !96, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !132, file: !133, line: 88, baseType: !760, size: 64, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!143, !145, !763, !46}
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !133, line: 175, size: 512, elements: !765)
!765 = !{!766, !767, !768, !769, !775, !779, !780}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !764, file: !133, line: 176, baseType: !266, size: 128)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !764, file: !133, line: 177, baseType: !274, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !764, file: !133, line: 178, baseType: !112, size: 64, offset: 192)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !764, file: !133, line: 179, baseType: !770, size: 64, offset: 256)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!773}
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !434, line: 32, flags: DIFlagFwdDecl)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !764, file: !133, line: 180, baseType: !776, size: 64, offset: 320)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!260, !394, !145, !763, !229, !448, !274}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !764, file: !133, line: 182, baseType: !776, size: 64, offset: 384)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !764, file: !133, line: 184, baseType: !781, size: 64, offset: 448)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{!46, !394, !145, !763, !477}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !132, file: !133, line: 90, baseType: !785, size: 64, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !132, file: !133, line: 91, baseType: !787, size: 64, offset: 256)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!788 = !DIGlobalVariableExpression(var: !789, expr: !DIExpression())
!789 = distinct !DIGlobalVariable(name: "power_attrs", scope: !2, file: !3, line: 613, type: !790, isLocal: true, isDefinition: true)
!790 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 64, elements: !791)
!791 = !{!792}
!792 = !DISubrange(count: 1)
!793 = !DIGlobalVariableExpression(var: !794, expr: !DIExpression())
!794 = distinct !DIGlobalVariable(name: "pm_runtime_attr_group", scope: !2, file: !3, line: 662, type: !131, isLocal: true, isDefinition: true)
!795 = !DIGlobalVariableExpression(var: !796, expr: !DIExpression())
!796 = distinct !DIGlobalVariable(name: "runtime_attrs", scope: !2, file: !3, line: 652, type: !797, isLocal: true, isDefinition: true)
!797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 384, elements: !798)
!798 = !{!799}
!799 = !DISubrange(count: 6)
!800 = !DIGlobalVariableExpression(var: !801, expr: !DIExpression())
!801 = distinct !DIGlobalVariable(scope: null, file: !3, line: 180, type: !802, isLocal: true, isDefinition: true)
!802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 120, elements: !803)
!803 = !{!804}
!804 = !DISubrange(count: 15)
!805 = !DIGlobalVariableExpression(var: !806, expr: !DIExpression())
!806 = distinct !DIGlobalVariable(name: "dev_attr_runtime_status", scope: !2, file: !3, line: 180, type: !807, isLocal: true, isDefinition: true)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !26, line: 106, size: 256, elements: !808)
!808 = !{!809, !810, !1697}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !807, file: !26, line: 107, baseType: !266, size: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !807, file: !26, line: 108, baseType: !811, size: 64, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{!260, !814, !1696, !229}
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !816)
!816 = !{!817, !818, !819, !822, !823, !876, !1321, !1322, !1323, !1324, !1325, !1332, !1580, !1593, !1603, !1607, !1609, !1610, !1611, !1615, !1622, !1623, !1626, !1629, !1633, !1636, !1637, !1640, !1641, !1642, !1643, !1673, !1674, !1675, !1678, !1681, !1690, !1691, !1692, !1693, !1694, !1695}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !815, file: !26, line: 706, baseType: !146, size: 512)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !815, file: !26, line: 707, baseType: !814, size: 64, offset: 512)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !815, file: !26, line: 709, baseType: !820, size: 64, offset: 576)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !815, file: !26, line: 711, baseType: !136, size: 64, offset: 640)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !815, file: !26, line: 712, baseType: !824, size: 64, offset: 704)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !826)
!826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !827)
!827 = !{!828, !829, !830, !836, !841, !845}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !826, file: !26, line: 90, baseType: !136, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !826, file: !26, line: 91, baseType: !279, size: 64, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !826, file: !26, line: 92, baseType: !831, size: 64, offset: 128)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !832, size: 64)
!832 = !DISubroutineType(types: !833)
!833 = !{!46, !834, !224}
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !815)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !826, file: !26, line: 93, baseType: !837, size: 64, offset: 192)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!229, !834, !840, !324, !332}
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !826, file: !26, line: 95, baseType: !842, size: 64, offset: 256)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{null, !814}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !826, file: !26, line: 97, baseType: !846, size: 64, offset: 320)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !848)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !849)
!849 = !{!850, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !848, file: !38, line: 287, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{!46, !814}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !848, file: !38, line: 288, baseType: !842, size: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !848, file: !38, line: 289, baseType: !851, size: 64, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !848, file: !38, line: 290, baseType: !851, size: 64, offset: 192)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !848, file: !38, line: 291, baseType: !851, size: 64, offset: 256)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !848, file: !38, line: 292, baseType: !851, size: 64, offset: 320)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !848, file: !38, line: 293, baseType: !851, size: 64, offset: 384)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !848, file: !38, line: 294, baseType: !851, size: 64, offset: 448)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !848, file: !38, line: 295, baseType: !851, size: 64, offset: 512)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !848, file: !38, line: 296, baseType: !851, size: 64, offset: 576)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !848, file: !38, line: 297, baseType: !851, size: 64, offset: 640)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !848, file: !38, line: 298, baseType: !851, size: 64, offset: 704)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !848, file: !38, line: 299, baseType: !851, size: 64, offset: 768)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !848, file: !38, line: 300, baseType: !851, size: 64, offset: 832)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !848, file: !38, line: 301, baseType: !851, size: 64, offset: 896)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !848, file: !38, line: 302, baseType: !851, size: 64, offset: 960)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !848, file: !38, line: 303, baseType: !851, size: 64, offset: 1024)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !848, file: !38, line: 304, baseType: !851, size: 64, offset: 1088)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !848, file: !38, line: 305, baseType: !851, size: 64, offset: 1152)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !848, file: !38, line: 306, baseType: !851, size: 64, offset: 1216)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !848, file: !38, line: 307, baseType: !851, size: 64, offset: 1280)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !848, file: !38, line: 308, baseType: !851, size: 64, offset: 1344)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !848, file: !38, line: 309, baseType: !851, size: 64, offset: 1408)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !815, file: !26, line: 714, baseType: !877, size: 64, offset: 768)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !879)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !880, line: 80, size: 1344, elements: !881)
!880 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!881 = !{!882, !883, !884, !885, !886, !887, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1320}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !879, file: !880, line: 81, baseType: !136, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !879, file: !880, line: 82, baseType: !136, size: 64, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !879, file: !880, line: 83, baseType: !279, size: 64, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !879, file: !880, line: 84, baseType: !279, size: 64, offset: 192)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !879, file: !880, line: 85, baseType: !279, size: 64, offset: 256)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !879, file: !880, line: 87, baseType: !888, size: 64, offset: 320)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DISubroutineType(types: !890)
!890 = !{!46, !814, !891}
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !893)
!893 = !{!894, !895, !896, !1272, !1273, !1274, !1275, !1279, !1283, !1284, !1285, !1286, !1287, !1295, !1296, !1297, !1298, !1299, !1300}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !892, file: !20, line: 97, baseType: !136, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !892, file: !20, line: 98, baseType: !877, size: 64, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !892, file: !20, line: 100, baseType: !897, size: 64, offset: 128)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !899)
!899 = !{!900, !901, !902, !906, !927, !953, !954, !955, !956, !960, !963, !964, !965, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1028, !1032, !1052, !1070, !1071, !1072, !1073, !1082, !1105, !1106, !1109, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1123, !1124, !1230, !1238, !1239, !1240, !1242, !1246, !1247, !1251, !1252, !1253, !1254, !1256, !1257, !1258, !1265, !1266, !1267, !1271}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !898, file: !13, line: 403, baseType: !12, size: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !898, file: !13, line: 406, baseType: !150, size: 128, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !898, file: !13, line: 409, baseType: !903, size: 448, offset: 192)
!903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 448, elements: !904)
!904 = !{!905}
!905 = !DISubrange(count: 56)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !898, file: !13, line: 417, baseType: !907, size: 768, offset: 640)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !908)
!908 = !{!909, !910, !911, !912, !915}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !907, file: !13, line: 46, baseType: !146, size: 512)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !907, file: !13, line: 47, baseType: !897, size: 64, offset: 512)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !907, file: !13, line: 48, baseType: !145, size: 64, offset: 576)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !907, file: !13, line: 49, baseType: !913, size: 64, offset: 640)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !13, line: 49, flags: DIFlagFwdDecl)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !907, file: !13, line: 50, baseType: !916, size: 64, offset: 704)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !918, line: 26, size: 256, elements: !919)
!918 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!919 = !{!920, !921}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !917, file: !918, line: 27, baseType: !7, size: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !917, file: !918, line: 28, baseType: !922, size: 192, offset: 64)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !923, line: 43, size: 192, elements: !924)
!923 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!924 = !{!925, !926}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !922, file: !923, line: 44, baseType: !416, size: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !922, file: !923, line: 45, baseType: !150, size: 128, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !898, file: !13, line: 418, baseType: !928, size: 64, offset: 1408)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !930)
!930 = !{!931, !932, !937, !941, !945, !949}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !929, file: !13, line: 54, baseType: !266, size: 128)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !929, file: !13, line: 55, baseType: !933, size: 64, offset: 128)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DISubroutineType(types: !935)
!935 = !{!260, !928, !936, !229}
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !929, file: !13, line: 57, baseType: !938, size: 64, offset: 192)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!260, !928, !936, !136, !274}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !929, file: !13, line: 59, baseType: !942, size: 64, offset: 256)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{null, !897, !136}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !929, file: !13, line: 60, baseType: !946, size: 64, offset: 320)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{!46, !897}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !929, file: !13, line: 61, baseType: !950, size: 64, offset: 384)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DISubroutineType(types: !952)
!952 = !{null, !897}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !898, file: !13, line: 419, baseType: !136, size: 64, offset: 1472)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !898, file: !13, line: 420, baseType: !136, size: 64, offset: 1536)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !898, file: !13, line: 421, baseType: !145, size: 64, offset: 1600)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !898, file: !13, line: 424, baseType: !957, size: 64, offset: 1664)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !959)
!959 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !898, file: !13, line: 425, baseType: !961, size: 64, offset: 1728)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !122)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !898, file: !13, line: 426, baseType: !7, size: 32, offset: 1792)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !898, file: !13, line: 435, baseType: !403, size: 256, offset: 1856)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !898, file: !13, line: 437, baseType: !966, size: 64, offset: 2112)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !968, line: 69, size: 320, elements: !969)
!968 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!969 = !{!970, !971, !972, !989, !991, !995, !996}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !967, file: !968, line: 70, baseType: !136, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !967, file: !968, line: 71, baseType: !897, size: 64, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !967, file: !968, line: 72, baseType: !973, size: 64, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !975)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !968, line: 47, size: 256, elements: !976)
!976 = !{!977, !978, !984, !988}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !975, file: !968, line: 49, baseType: !7, size: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !975, file: !968, line: 51, baseType: !979, size: 64, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DISubroutineType(types: !981)
!981 = !{!46, !136, !982}
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !967)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !975, file: !968, line: 53, baseType: !985, size: 64, offset: 128)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{!46, !229, !982}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !975, file: !968, line: 55, baseType: !313, size: 64, offset: 192)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !967, file: !968, line: 73, baseType: !990, size: 16, offset: 192)
!990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !198)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !967, file: !968, line: 74, baseType: !992, size: 8, offset: 208)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !116, line: 16, baseType: !993)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !118, line: 20, baseType: !994)
!994 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !967, file: !968, line: 75, baseType: !190, size: 8, offset: 216)
!996 = !DIDerivedType(tag: DW_TAG_member, scope: !967, file: !968, line: 76, baseType: !997, size: 64, offset: 256)
!997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !967, file: !968, line: 76, size: 64, elements: !998)
!998 = !{!999, !1000, !1007}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !997, file: !968, line: 77, baseType: !112, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !997, file: !968, line: 78, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1003)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !968, line: 86, size: 128, elements: !1004)
!1004 = !{!1005, !1006}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1003, file: !968, line: 87, baseType: !7, size: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1003, file: !968, line: 88, baseType: !229, size: 64, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !997, file: !968, line: 79, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1010)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !968, line: 92, size: 256, elements: !1011)
!1011 = !{!1012, !1013, !1014, !1016, !1017}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1010, file: !968, line: 94, baseType: !7, size: 32)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1010, file: !968, line: 95, baseType: !7, size: 32, offset: 32)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1010, file: !968, line: 96, baseType: !1015, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1010, file: !968, line: 97, baseType: !973, size: 64, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1010, file: !968, line: 98, baseType: !112, size: 64, offset: 192)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !898, file: !13, line: 438, baseType: !7, size: 32, offset: 2176)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !898, file: !13, line: 441, baseType: !7, size: 32, offset: 2208)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !898, file: !13, line: 442, baseType: !957, size: 64, offset: 2240)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !898, file: !13, line: 443, baseType: !961, size: 64, offset: 2304)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !898, file: !13, line: 444, baseType: !294, size: 8, offset: 2368)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !898, file: !13, line: 451, baseType: !294, size: 8, offset: 2376)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !898, file: !13, line: 454, baseType: !7, size: 32, offset: 2400)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !898, file: !13, line: 455, baseType: !1026, size: 64, offset: 2432)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !13, line: 43, flags: DIFlagFwdDecl)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !898, file: !13, line: 458, baseType: !1029, size: 64, offset: 2496)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!46}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !898, file: !13, line: 460, baseType: !1033, size: 4032, align: 512, offset: 2560)
!1033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1034, size: 4032, elements: !1050)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !13, line: 362, size: 576, elements: !1035)
!1035 = !{!1036, !1037, !1038}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1034, file: !13, line: 363, baseType: !112, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1034, file: !13, line: 364, baseType: !7, size: 32, offset: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1034, file: !13, line: 367, baseType: !1039, size: 448, offset: 128)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !13, line: 319, size: 448, elements: !1040)
!1040 = !{!1041, !1042}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1039, file: !13, line: 320, baseType: !897, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1039, file: !13, line: 321, baseType: !1043, size: 384, offset: 64)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1044, line: 40, size: 384, elements: !1045)
!1044 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1045 = !{!1046}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1043, file: !1044, line: 41, baseType: !1047, size: 384, align: 64)
!1047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !349, size: 384, align: 64, elements: !1048)
!1048 = !{!1049}
!1049 = !DISubrange(count: 2)
!1050 = !{!1051}
!1051 = !DISubrange(count: 7)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !898, file: !13, line: 463, baseType: !1053, size: 192, offset: 6592)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1054, line: 8, size: 192, elements: !1055)
!1054 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1055 = !{!1056, !1057, !1059}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1053, file: !1054, line: 10, baseType: !7, size: 32)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1053, file: !1054, line: 11, baseType: !1058, size: 64, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1053, file: !1054, line: 12, baseType: !1060, size: 64, offset: 128)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1062, line: 59, size: 48, elements: !1063)
!1062 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1063 = !{!1064, !1065, !1066, !1067, !1068, !1069}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1061, file: !1062, line: 60, baseType: !651, size: 16)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1061, file: !1062, line: 61, baseType: !651, size: 16, offset: 16)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1061, file: !1062, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1061, file: !1062, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1061, file: !1062, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1061, file: !1062, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !898, file: !13, line: 465, baseType: !277, size: 64, offset: 6784)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !898, file: !13, line: 469, baseType: !7, size: 32, offset: 6848)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !898, file: !13, line: 470, baseType: !150, size: 128, offset: 6912)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !898, file: !13, line: 471, baseType: !1074, size: 64, offset: 7040)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1076, line: 33, size: 96, elements: !1077)
!1076 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1077 = !{!1078, !1079, !1080, !1081}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1075, file: !1076, line: 37, baseType: !46, size: 32)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1075, file: !1076, line: 43, baseType: !46, size: 32, offset: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1075, file: !1076, line: 45, baseType: !144, size: 16, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1075, file: !1076, line: 47, baseType: !144, size: 16, offset: 80)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !898, file: !13, line: 476, baseType: !1083, size: 64, offset: 7104)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !13, line: 378, size: 256, elements: !1085)
!1085 = !{!1086, !1102, !1103, !1104}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1084, file: !13, line: 379, baseType: !1087, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1089, line: 204, baseType: !1090)
!1089 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1089, line: 197, size: 192, elements: !1091)
!1091 = !{!1092, !1094, !1095, !1096, !1098, !1100}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1090, file: !1089, line: 198, baseType: !1093, size: 32)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1089, line: 21, baseType: !125)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1090, file: !1089, line: 199, baseType: !192, size: 8, offset: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1090, file: !1089, line: 200, baseType: !192, size: 8, offset: 40)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1090, file: !1089, line: 201, baseType: !1097, size: 16, offset: 48)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1089, line: 17, baseType: !199)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1090, file: !1089, line: 202, baseType: !1099, size: 64, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1089, line: 16, baseType: !117)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1090, file: !1089, line: 203, baseType: !1101, size: 64, offset: 128)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1089, line: 22, baseType: !117)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1084, file: !13, line: 380, baseType: !7, size: 32, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1084, file: !13, line: 381, baseType: !229, size: 64, offset: 128)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1084, file: !13, line: 382, baseType: !229, size: 64, offset: 192)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !898, file: !13, line: 477, baseType: !1084, size: 256, offset: 7168)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !898, file: !13, line: 480, baseType: !1107, size: 64, offset: 7424)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !898, file: !13, line: 483, baseType: !1110, size: 64, offset: 7488)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !898, file: !13, line: 488, baseType: !229, size: 64, offset: 7552)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !898, file: !13, line: 492, baseType: !112, size: 64, offset: 7616)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !898, file: !13, line: 493, baseType: !7, size: 32, offset: 7680)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !898, file: !13, line: 495, baseType: !112, size: 64, offset: 7744)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !898, file: !13, line: 496, baseType: !7, size: 32, offset: 7808)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !898, file: !13, line: 499, baseType: !7, size: 32, offset: 7840)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !898, file: !13, line: 500, baseType: !1119, size: 64, offset: 7872)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1121, line: 45, baseType: !1122)
!1121 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !898, file: !13, line: 503, baseType: !7, size: 32, offset: 7936)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !898, file: !13, line: 504, baseType: !1125, size: 64, offset: 8000)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1128, line: 96, size: 192, elements: !1129)
!1128 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1129 = !{!1130, !1131, !1191, !1194}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1127, file: !1128, line: 97, baseType: !7, size: 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1127, file: !1128, line: 98, baseType: !1132, size: 64, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1128, line: 24, size: 3072, elements: !1134)
!1134 = !{!1135, !1137, !1138, !1139, !1140, !1154, !1155, !1156, !1157, !1175, !1176, !1177, !1188, !1189, !1190}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1133, file: !1128, line: 26, baseType: !1136, size: 128)
!1136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 128, elements: !1048)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1133, file: !1128, line: 27, baseType: !1136, size: 128, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1133, file: !1128, line: 28, baseType: !46, size: 32, offset: 256)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1133, file: !1128, line: 31, baseType: !162, size: 32, align: 512, offset: 512)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1133, file: !1128, line: 32, baseType: !1141, size: 960, offset: 576)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1142, line: 206, size: 960, elements: !1143)
!1142 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1143 = !{!1144, !1145, !1148, !1150, !1151, !1153}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1141, file: !1142, line: 207, baseType: !492, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1141, file: !1142, line: 208, baseType: !1146, size: 256, offset: 64)
!1146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1147, size: 256, elements: !603)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1141, file: !1142, line: 209, baseType: !1149, size: 256, offset: 320)
!1149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 256, elements: !603)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1141, file: !1142, line: 213, baseType: !264, size: 64, offset: 576)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1141, file: !1142, line: 215, baseType: !1152, size: 256, offset: 640)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 256, elements: !603)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1141, file: !1142, line: 216, baseType: !190, size: 8, offset: 896)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1133, file: !1128, line: 33, baseType: !277, size: 64, offset: 1536)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1133, file: !1128, line: 34, baseType: !277, size: 64, offset: 1600)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1133, file: !1128, line: 35, baseType: !294, size: 8, offset: 1664)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1133, file: !1128, line: 36, baseType: !1158, size: 320, offset: 1728)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1159, line: 11, size: 320, elements: !1160)
!1159 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1160 = !{!1161, !1168, !1169, !1174}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1158, file: !1159, line: 16, baseType: !1162, size: 128)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !114, line: 198, size: 128, elements: !1163)
!1163 = !{!1164, !1166}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1162, file: !114, line: 199, baseType: !1165, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1162, file: !114, line: 199, baseType: !1167, size: 64, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1158, file: !1159, line: 17, baseType: !277, size: 64, offset: 128)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1158, file: !1159, line: 18, baseType: !1170, size: 64, offset: 192)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{null, !1173}
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1158, file: !1159, line: 19, baseType: !124, size: 32, offset: 256)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1133, file: !1128, line: 37, baseType: !677, size: 256, offset: 2048)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1133, file: !1128, line: 38, baseType: !489, size: 128, align: 64, offset: 2304)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1133, file: !1128, line: 39, baseType: !1178, size: 64, offset: 2432)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1128, line: 49, size: 768, elements: !1180)
!1180 = !{!1181, !1182, !1183, !1184, !1185, !1186, !1187}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1179, file: !1128, line: 50, baseType: !162, size: 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1179, file: !1128, line: 51, baseType: !1149, size: 256, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1179, file: !1128, line: 53, baseType: !1149, size: 256, offset: 320)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1179, file: !1128, line: 54, baseType: !277, size: 64, offset: 576)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1179, file: !1128, line: 55, baseType: !1178, size: 64, offset: 640)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1179, file: !1128, line: 56, baseType: !46, size: 32, offset: 704)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1179, file: !1128, line: 57, baseType: !46, size: 32, offset: 736)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1133, file: !1128, line: 40, baseType: !277, size: 64, offset: 2496)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1133, file: !1128, line: 42, baseType: !46, size: 32, offset: 2560)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1133, file: !1128, line: 43, baseType: !1126, size: 64, offset: 2624)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1127, file: !1128, line: 99, baseType: !1192, offset: 128)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1193, line: 211, elements: !519)
!1193 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1127, file: !1128, line: 100, baseType: !1195, size: 64, offset: 128)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1128, line: 63, size: 3008, elements: !1197)
!1197 = !{!1198, !1199, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1229}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1196, file: !1128, line: 64, baseType: !1178, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1196, file: !1128, line: 65, baseType: !1200, size: 192, offset: 64)
!1200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1178, size: 192, elements: !230)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1196, file: !1128, line: 67, baseType: !46, size: 32, offset: 256)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1196, file: !1128, line: 68, baseType: !403, size: 256, offset: 320)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1196, file: !1128, line: 69, baseType: !162, size: 32, offset: 576)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1196, file: !1128, line: 70, baseType: !403, size: 256, offset: 640)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1196, file: !1128, line: 71, baseType: !277, size: 64, offset: 896)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1196, file: !1128, line: 72, baseType: !277, size: 64, offset: 960)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1196, file: !1128, line: 73, baseType: !277, size: 64, offset: 1024)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1196, file: !1128, line: 74, baseType: !277, size: 64, offset: 1088)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1196, file: !1128, line: 75, baseType: !277, size: 64, offset: 1152)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1196, file: !1128, line: 76, baseType: !277, size: 64, offset: 1216)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1196, file: !1128, line: 77, baseType: !277, size: 64, offset: 1280)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1196, file: !1128, line: 78, baseType: !277, size: 64, offset: 1344)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1196, file: !1128, line: 79, baseType: !294, size: 8, offset: 1408)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1196, file: !1128, line: 80, baseType: !277, size: 64, offset: 1472)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1196, file: !1128, line: 81, baseType: !403, size: 256, offset: 1536)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1196, file: !1128, line: 82, baseType: !917, size: 256, offset: 1792)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1196, file: !1128, line: 84, baseType: !182, size: 32, offset: 2048)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1196, file: !1128, line: 87, baseType: !277, size: 64, offset: 2112)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1196, file: !1128, line: 88, baseType: !277, size: 64, offset: 2176)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1196, file: !1128, line: 89, baseType: !1221, size: 704, offset: 2240)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !678, line: 111, size: 704, elements: !1222)
!1222 = !{!1223, !1224, !1225, !1228}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1221, file: !678, line: 112, baseType: !677, size: 256)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1221, file: !678, line: 113, baseType: !1158, size: 320, offset: 256)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1221, file: !678, line: 116, baseType: !1226, size: 64, offset: 576)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !678, line: 18, flags: DIFlagFwdDecl)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1221, file: !678, line: 117, baseType: !46, size: 32, offset: 640)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1196, file: !1128, line: 90, baseType: !1126, size: 64, offset: 2944)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !898, file: !13, line: 515, baseType: !1231, size: 64, offset: 8064)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1233, line: 117, size: 128, elements: !1234)
!1233 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1234 = !{!1235, !1236, !1237}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1232, file: !1233, line: 118, baseType: !122, size: 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1232, file: !1233, line: 119, baseType: !122, size: 32, offset: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1232, file: !1233, line: 120, baseType: !264, size: 64, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !898, file: !13, line: 516, baseType: !7, size: 32, offset: 8128)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !898, file: !13, line: 519, baseType: !7, size: 32, offset: 8160)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !898, file: !13, line: 520, baseType: !1241, size: 64, offset: 8192)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !898, file: !13, line: 523, baseType: !1243, size: 64, offset: 8256)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !13, line: 523, flags: DIFlagFwdDecl)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !898, file: !13, line: 524, baseType: !7, size: 32, offset: 8320)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !898, file: !13, line: 525, baseType: !1248, size: 64, offset: 8384)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !13, line: 525, flags: DIFlagFwdDecl)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !898, file: !13, line: 526, baseType: !7, size: 32, offset: 8448)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !898, file: !13, line: 533, baseType: !112, size: 64, offset: 8512)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !898, file: !13, line: 534, baseType: !7, size: 32, offset: 8576)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !898, file: !13, line: 535, baseType: !1255, size: 64, offset: 8640)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !898, file: !13, line: 536, baseType: !7, size: 32, offset: 8704)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !898, file: !13, line: 539, baseType: !46, size: 32, offset: 8736)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !898, file: !13, line: 540, baseType: !1259, size: 64, offset: 8768)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1261, line: 32, size: 64, elements: !1262)
!1261 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1262 = !{!1263, !1264}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1260, file: !1261, line: 33, baseType: !122, size: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1260, file: !1261, line: 34, baseType: !122, size: 32, offset: 32)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !898, file: !13, line: 563, baseType: !150, size: 128, offset: 8832)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !898, file: !13, line: 565, baseType: !150, size: 128, offset: 8960)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !898, file: !13, line: 568, baseType: !1268, size: 64, offset: 9088)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{null}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !898, file: !13, line: 570, baseType: !182, size: 32, offset: 9152)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !892, file: !20, line: 101, baseType: !136, size: 64, offset: 192)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !892, file: !20, line: 103, baseType: !294, size: 8, offset: 256)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !892, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !892, file: !20, line: 106, baseType: !1276, size: 64, offset: 320)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1278)
!1278 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !20, line: 106, flags: DIFlagFwdDecl)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !892, file: !20, line: 107, baseType: !1280, size: 64, offset: 384)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1282)
!1282 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !20, line: 107, flags: DIFlagFwdDecl)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !892, file: !20, line: 109, baseType: !851, size: 64, offset: 448)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !892, file: !20, line: 110, baseType: !842, size: 64, offset: 512)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !892, file: !20, line: 111, baseType: !851, size: 64, offset: 576)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !892, file: !20, line: 112, baseType: !842, size: 64, offset: 640)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !892, file: !20, line: 113, baseType: !1288, size: 64, offset: 704)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!46, !814, !1291}
!1291 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1292)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1293)
!1293 = !{!1294}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1292, file: !38, line: 59, baseType: !46, size: 32)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !892, file: !20, line: 114, baseType: !851, size: 64, offset: 768)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !892, file: !20, line: 115, baseType: !279, size: 64, offset: 832)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !892, file: !20, line: 116, baseType: !279, size: 64, offset: 896)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !892, file: !20, line: 118, baseType: !846, size: 64, offset: 960)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !892, file: !20, line: 119, baseType: !842, size: 64, offset: 1024)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !892, file: !20, line: 121, baseType: !1301, size: 64, offset: 1088)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !879, file: !880, line: 88, baseType: !831, size: 64, offset: 384)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !879, file: !880, line: 89, baseType: !851, size: 64, offset: 448)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !879, file: !880, line: 90, baseType: !842, size: 64, offset: 512)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !879, file: !880, line: 91, baseType: !842, size: 64, offset: 576)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !879, file: !880, line: 92, baseType: !842, size: 64, offset: 640)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !879, file: !880, line: 94, baseType: !851, size: 64, offset: 704)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !879, file: !880, line: 95, baseType: !851, size: 64, offset: 768)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !879, file: !880, line: 97, baseType: !1288, size: 64, offset: 832)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !879, file: !880, line: 98, baseType: !851, size: 64, offset: 896)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !879, file: !880, line: 100, baseType: !851, size: 64, offset: 960)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !879, file: !880, line: 102, baseType: !851, size: 64, offset: 1024)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !879, file: !880, line: 103, baseType: !842, size: 64, offset: 1088)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !879, file: !880, line: 105, baseType: !846, size: 64, offset: 1152)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !879, file: !880, line: 107, baseType: !1317, size: 64, offset: 1216)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1319)
!1319 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !880, line: 107, flags: DIFlagFwdDecl)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !879, file: !880, line: 109, baseType: !294, size: 8, offset: 1280)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !815, file: !26, line: 715, baseType: !891, size: 64, offset: 832)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !815, file: !26, line: 717, baseType: !112, size: 64, offset: 896)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !815, file: !26, line: 719, baseType: !112, size: 64, offset: 960)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !815, file: !26, line: 721, baseType: !403, size: 256, offset: 1024)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !815, file: !26, line: 725, baseType: !1326, size: 448, offset: 1280)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1327)
!1327 = !{!1328, !1329, !1330, !1331}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1326, file: !26, line: 518, baseType: !150, size: 128)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1326, file: !26, line: 519, baseType: !150, size: 128, offset: 128)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1326, file: !26, line: 520, baseType: !150, size: 128, offset: 256)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1326, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !815, file: !26, line: 726, baseType: !1333, size: 2496, offset: 1728)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1334)
!1334 = !{!1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1385, !1386, !1387, !1388, !1389, !1390, !1461, !1462, !1463, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1501, !1505}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1333, file: !38, line: 664, baseType: !1291, size: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1333, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1333, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1333, file: !38, line: 667, baseType: !294, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1333, file: !38, line: 668, baseType: !294, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1333, file: !38, line: 669, baseType: !294, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1333, file: !38, line: 670, baseType: !294, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1333, file: !38, line: 671, baseType: !294, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1333, file: !38, line: 672, baseType: !294, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1333, file: !38, line: 673, baseType: !294, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1333, file: !38, line: 674, baseType: !294, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1333, file: !38, line: 675, baseType: !124, size: 32, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1333, file: !38, line: 676, baseType: !162, size: 32, offset: 96)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1333, file: !38, line: 678, baseType: !150, size: 128, offset: 128)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1333, file: !38, line: 679, baseType: !917, size: 256, offset: 256)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1333, file: !38, line: 680, baseType: !1351, size: 64, offset: 512)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1353, line: 43, size: 1536, elements: !1354)
!1353 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1354 = !{!1355, !1356, !1357, !1358, !1359, !1368, !1369, !1370, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1384}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1352, file: !1353, line: 44, baseType: !136, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1352, file: !1353, line: 45, baseType: !46, size: 32, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1352, file: !1353, line: 46, baseType: !150, size: 128, offset: 128)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1352, file: !1353, line: 47, baseType: !162, size: 32, offset: 256)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1352, file: !1353, line: 48, baseType: !1360, size: 64, offset: 320)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !1362, line: 34, size: 192, elements: !1363)
!1362 = !DIFile(filename: "drivers/base/power/power.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1327210c8ac5950226b4c5538c62ec75")
!1363 = !{!1364, !1365, !1366, !1367}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1361, file: !1362, line: 35, baseType: !814, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1361, file: !1362, line: 36, baseType: !7, size: 32, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !1361, file: !1362, line: 37, baseType: !46, size: 32, offset: 96)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1361, file: !1362, line: 38, baseType: !136, size: 64, offset: 128)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1352, file: !1353, line: 49, baseType: !1158, size: 320, offset: 384)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1352, file: !1353, line: 50, baseType: !277, size: 64, offset: 704)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1352, file: !1353, line: 51, baseType: !1371, size: 64, offset: 768)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1372, line: 29, baseType: !413)
!1372 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1352, file: !1353, line: 52, baseType: !1371, size: 64, offset: 832)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1352, file: !1353, line: 53, baseType: !1371, size: 64, offset: 896)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1352, file: !1353, line: 54, baseType: !1371, size: 64, offset: 960)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1352, file: !1353, line: 55, baseType: !1371, size: 64, offset: 1024)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1352, file: !1353, line: 56, baseType: !277, size: 64, offset: 1088)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1352, file: !1353, line: 57, baseType: !277, size: 64, offset: 1152)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1352, file: !1353, line: 58, baseType: !277, size: 64, offset: 1216)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1352, file: !1353, line: 59, baseType: !277, size: 64, offset: 1280)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1352, file: !1353, line: 60, baseType: !277, size: 64, offset: 1344)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1352, file: !1353, line: 61, baseType: !814, size: 64, offset: 1408)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1352, file: !1353, line: 62, baseType: !294, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1352, file: !1353, line: 63, baseType: !294, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1333, file: !38, line: 681, baseType: !294, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1333, file: !38, line: 682, baseType: !294, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1333, file: !38, line: 683, baseType: !294, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1333, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1333, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1333, file: !38, line: 690, baseType: !1391, size: 512, offset: 640)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1392)
!1392 = !{!1393, !1399, !1400, !1405, !1457, !1458, !1459, !1460}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1391, file: !33, line: 119, baseType: !1394, size: 256)
!1394 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1395, line: 9, size: 256, elements: !1396)
!1395 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1396 = !{!1397, !1398}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1394, file: !1395, line: 10, baseType: !349, size: 192, align: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1394, file: !1395, line: 11, baseType: !1371, size: 64, offset: 192)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1391, file: !33, line: 120, baseType: !1371, size: 64, offset: 256)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1391, file: !33, line: 121, baseType: !1401, size: 64, offset: 320)
!1401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1402 = !DISubroutineType(types: !1403)
!1403 = !{!32, !1404}
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1391, file: !33, line: 122, baseType: !1406, size: 64, offset: 384)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1408)
!1408 = !{!1409, !1434, !1435, !1438, !1443, !1444, !1452, !1456}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1407, file: !33, line: 160, baseType: !1410, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1412)
!1412 = !{!1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1430}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1411, file: !33, line: 216, baseType: !416, size: 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1411, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1411, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1411, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1411, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1411, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1411, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1411, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1411, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1411, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1411, file: !33, line: 227, baseType: !144, size: 16, offset: 192)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1411, file: !33, line: 228, baseType: !144, size: 16, offset: 208)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1411, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1411, file: !33, line: 235, baseType: !1371, size: 64, offset: 256)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1411, file: !33, line: 236, baseType: !1404, size: 64, offset: 320)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1411, file: !33, line: 237, baseType: !1371, size: 64, offset: 384)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1411, file: !33, line: 238, baseType: !1404, size: 64, offset: 448)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1411, file: !33, line: 239, baseType: !1431, size: 4096, align: 512, offset: 512)
!1431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1407, size: 4096, align: 512, elements: !1432)
!1432 = !{!1433}
!1433 = !DISubrange(count: 8)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1407, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1407, file: !33, line: 162, baseType: !1436, size: 32, offset: 96)
!1436 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !114, line: 32, baseType: !1437)
!1437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !262, line: 96, baseType: !46)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1407, file: !33, line: 163, baseType: !1439, size: 32, offset: 128)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !573, line: 274, baseType: !1440)
!1440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !573, line: 274, size: 32, elements: !1441)
!1441 = !{!1442}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1440, file: !573, line: 274, baseType: !572, size: 32)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1407, file: !33, line: 164, baseType: !1404, size: 64, offset: 192)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1407, file: !33, line: 165, baseType: !1445, size: 128, offset: 256)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1395, line: 14, size: 128, elements: !1446)
!1446 = !{!1447}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1445, file: !1395, line: 15, baseType: !1448, size: 128)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !350, line: 26, size: 128, elements: !1449)
!1449 = !{!1450, !1451}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1448, file: !350, line: 27, baseType: !366, size: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1448, file: !350, line: 28, baseType: !354, size: 64, offset: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1407, file: !33, line: 166, baseType: !1453, size: 64, offset: 384)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = !DISubroutineType(types: !1455)
!1455 = !{!1371}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1407, file: !33, line: 167, baseType: !1371, size: 64, offset: 448)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1391, file: !33, line: 123, baseType: !190, size: 8, offset: 448)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1391, file: !33, line: 124, baseType: !190, size: 8, offset: 456)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1391, file: !33, line: 125, baseType: !190, size: 8, offset: 464)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1391, file: !33, line: 126, baseType: !190, size: 8, offset: 472)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1333, file: !38, line: 691, baseType: !115, size: 64, offset: 1152)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1333, file: !38, line: 692, baseType: !677, size: 256, offset: 1216)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1333, file: !38, line: 693, baseType: !1464, size: 192, offset: 1472)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1465, line: 41, baseType: !1466)
!1465 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1465, line: 37, size: 192, elements: !1467)
!1467 = !{!1468, !1469}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1466, file: !1465, line: 38, baseType: !162, size: 32)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1466, file: !1465, line: 39, baseType: !150, size: 128, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1333, file: !38, line: 694, baseType: !1360, size: 64, offset: 1664)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1333, file: !38, line: 695, baseType: !182, size: 32, offset: 1728)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1333, file: !38, line: 696, baseType: !182, size: 32, offset: 1760)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1333, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1333, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1333, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1333, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1333, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1333, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1333, file: !38, line: 703, baseType: !294, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1333, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1333, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1333, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1333, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1333, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1333, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1333, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1333, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1333, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1333, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1333, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1333, file: !38, line: 715, baseType: !115, size: 64, offset: 2048)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1333, file: !38, line: 716, baseType: !115, size: 64, offset: 2112)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1333, file: !38, line: 717, baseType: !115, size: 64, offset: 2176)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1333, file: !38, line: 718, baseType: !115, size: 64, offset: 2240)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1333, file: !38, line: 720, baseType: !1496, size: 64, offset: 2304)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1498)
!1498 = !{!1499, !1500}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1497, file: !38, line: 633, baseType: !162, size: 32)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1497, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1333, file: !38, line: 721, baseType: !1502, size: 64, offset: 2368)
!1502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1503, size: 64)
!1503 = !DISubroutineType(types: !1504)
!1504 = !{null, !814, !122}
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1333, file: !38, line: 722, baseType: !1506, size: 64, offset: 2432)
!1506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1507, size: 64)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !54, line: 117, size: 2432, elements: !1508)
!1508 = !{!1509, !1538, !1539, !1546, !1551, !1578, !1579}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency", scope: !1507, file: !54, line: 118, baseType: !1510, size: 320)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !54, line: 52, size: 320, elements: !1511)
!1511 = !{!1512, !1517, !1518, !1519, !1520, !1521}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1510, file: !54, line: 53, baseType: !1513, size: 128)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !1514, line: 82, size: 128, elements: !1515)
!1514 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1515 = !{!1516}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1513, file: !1514, line: 83, baseType: !150, size: 128)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !1510, file: !54, line: 54, baseType: !122, size: 32, offset: 128)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !1510, file: !54, line: 55, baseType: !122, size: 32, offset: 160)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !1510, file: !54, line: 56, baseType: !122, size: 32, offset: 192)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1510, file: !54, line: 57, baseType: !53, size: 32, offset: 224)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !1510, file: !54, line: 58, baseType: !1522, size: 64, offset: 256)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !1524, line: 65, size: 384, elements: !1525)
!1524 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!1525 = !{!1526, !1527}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !1523, file: !1524, line: 66, baseType: !552, size: 320)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1523, file: !1524, line: 67, baseType: !1528, size: 64, offset: 320)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !1524, line: 54, size: 192, elements: !1530)
!1530 = !{!1531, !1536, !1537}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !1529, file: !1524, line: 55, baseType: !1532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !1524, line: 51, baseType: !1533)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!46, !1528, !277, !112}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1529, file: !1524, line: 56, baseType: !1528, size: 64, offset: 64)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1529, file: !1524, line: 57, baseType: !46, size: 32, offset: 128)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance", scope: !1507, file: !54, line: 119, baseType: !1510, size: 320, offset: 320)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1507, file: !54, line: 120, baseType: !1540, size: 1408, offset: 640)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !54, line: 85, size: 1408, elements: !1541)
!1541 = !{!1542, !1543, !1544, !1545}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !1540, file: !54, line: 86, baseType: !1510, size: 320)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !1540, file: !54, line: 87, baseType: !1523, size: 384, offset: 320)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !1540, file: !54, line: 88, baseType: !1510, size: 320, offset: 704)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !1540, file: !54, line: 89, baseType: !1523, size: 384, offset: 1024)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1507, file: !54, line: 121, baseType: !1547, size: 192, offset: 2048)
!1547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags", file: !54, line: 71, size: 192, elements: !1548)
!1548 = !{!1549, !1550}
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1547, file: !54, line: 72, baseType: !150, size: 128)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "effective_flags", scope: !1547, file: !54, line: 73, baseType: !122, size: 32, offset: 128)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency_req", scope: !1507, file: !54, line: 122, baseType: !1552, size: 64, offset: 2240)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos_request", file: !54, line: 107, size: 576, elements: !1554)
!1554 = !{!1555, !1556, !1577}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1553, file: !54, line: 108, baseType: !59, size: 32)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1553, file: !54, line: 113, baseType: !1557, size: 448, offset: 64)
!1557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1553, file: !54, line: 109, size: 448, elements: !1558)
!1558 = !{!1559, !1565, !1570}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !1557, file: !54, line: 110, baseType: !1560, size: 320)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1514, line: 86, size: 320, elements: !1561)
!1561 = !{!1562, !1563, !1564}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1560, file: !1514, line: 87, baseType: !46, size: 32)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1560, file: !1514, line: 88, baseType: !150, size: 128, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1560, file: !1514, line: 89, baseType: !150, size: 128, offset: 192)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "flr", scope: !1557, file: !54, line: 111, baseType: !1566, size: 192)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags_request", file: !54, line: 66, size: 192, elements: !1567)
!1567 = !{!1568, !1569}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1566, file: !54, line: 67, baseType: !150, size: 128)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1566, file: !54, line: 68, baseType: !122, size: 32, offset: 128)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1557, file: !54, line: 112, baseType: !1571, size: 448)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !54, line: 92, size: 448, elements: !1572)
!1572 = !{!1573, !1574, !1575}
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1571, file: !54, line: 93, baseType: !66, size: 32)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !1571, file: !54, line: 94, baseType: !1560, size: 320, offset: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1571, file: !54, line: 95, baseType: !1576, size: 64, offset: 384)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1553, file: !54, line: 114, baseType: !814, size: 64, offset: 512)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance_req", scope: !1507, file: !54, line: 123, baseType: !1552, size: 64, offset: 2304)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "flags_req", scope: !1507, file: !54, line: 124, baseType: !1552, size: 64, offset: 2368)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !815, file: !26, line: 727, baseType: !1581, size: 64, offset: 4224)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1583)
!1583 = !{!1584, !1585, !1586, !1590, !1591, !1592}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1582, file: !38, line: 743, baseType: !848, size: 1472)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1582, file: !38, line: 744, baseType: !851, size: 64, offset: 1472)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1582, file: !38, line: 745, baseType: !1587, size: 64, offset: 1536)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{null, !814, !294}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1582, file: !38, line: 746, baseType: !851, size: 64, offset: 1600)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1582, file: !38, line: 747, baseType: !842, size: 64, offset: 1664)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1582, file: !38, line: 748, baseType: !842, size: 64, offset: 1728)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !815, file: !26, line: 736, baseType: !1594, size: 128, offset: 4288)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1595)
!1595 = !{!1596, !1600}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1594, file: !26, line: 531, baseType: !1597, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1599, line: 13, flags: DIFlagFwdDecl)
!1599 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1594, file: !26, line: 532, baseType: !1601, size: 64, offset: 64)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !815, file: !26, line: 738, baseType: !1604, size: 64, offset: 4416)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1606)
!1606 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !815, file: !26, line: 740, baseType: !1608, size: 64, offset: 4480)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !815, file: !26, line: 741, baseType: !115, size: 64, offset: 4544)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !815, file: !26, line: 746, baseType: !115, size: 64, offset: 4608)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !815, file: !26, line: 747, baseType: !1612, size: 64, offset: 4672)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1614)
!1614 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !815, file: !26, line: 749, baseType: !1616, size: 64, offset: 4736)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1618)
!1618 = !{!1619, !1620, !1621}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1617, file: !26, line: 433, baseType: !7, size: 32)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1617, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1617, file: !26, line: 435, baseType: !277, size: 64, offset: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !815, file: !26, line: 751, baseType: !150, size: 128, offset: 4800)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !815, file: !26, line: 762, baseType: !1624, size: 64, offset: 4928)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !815, file: !26, line: 770, baseType: !1627, offset: 4992)
!1627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1628, line: 5, elements: !519)
!1628 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !815, file: !26, line: 772, baseType: !1630, size: 64, offset: 4992)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1632, line: 18, flags: DIFlagFwdDecl)
!1632 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !815, file: !26, line: 773, baseType: !1634, size: 64, offset: 5056)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !880, line: 22, flags: DIFlagFwdDecl)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !815, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !815, file: !26, line: 778, baseType: !1638, size: 32, offset: 5152)
!1638 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !114, line: 21, baseType: !1639)
!1639 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !114, line: 18, baseType: !124)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !815, file: !26, line: 779, baseType: !124, size: 32, offset: 5184)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !815, file: !26, line: 781, baseType: !162, size: 32, offset: 5216)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !815, file: !26, line: 782, baseType: !150, size: 128, offset: 5248)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !815, file: !26, line: 784, baseType: !1644, size: 64, offset: 5376)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1646)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1647, line: 52, size: 768, elements: !1648)
!1647 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1648 = !{!1649, !1650, !1651, !1652, !1653, !1657, !1661, !1662, !1663, !1664, !1668, !1672}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1646, file: !1647, line: 53, baseType: !136, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1646, file: !1647, line: 55, baseType: !279, size: 64, offset: 64)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1646, file: !1647, line: 56, baseType: !279, size: 64, offset: 128)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1646, file: !1647, line: 58, baseType: !831, size: 64, offset: 192)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1646, file: !1647, line: 59, baseType: !1654, size: 64, offset: 256)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!229, !834, !840}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1646, file: !1647, line: 61, baseType: !1658, size: 64, offset: 320)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{null, !1644}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1646, file: !1647, line: 62, baseType: !842, size: 64, offset: 384)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1646, file: !1647, line: 64, baseType: !851, size: 64, offset: 448)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1646, file: !1647, line: 66, baseType: !285, size: 64, offset: 512)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1646, file: !1647, line: 67, baseType: !1665, size: 64, offset: 576)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!304, !834}
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1646, file: !1647, line: 69, baseType: !1669, size: 64, offset: 640)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{null, !834, !324, !332}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1646, file: !1647, line: 71, baseType: !846, size: 64, offset: 704)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !815, file: !26, line: 785, baseType: !279, size: 64, offset: 5440)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !815, file: !26, line: 787, baseType: !842, size: 64, offset: 5504)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !815, file: !26, line: 788, baseType: !1676, size: 64, offset: 5568)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !815, file: !26, line: 789, baseType: !1679, size: 64, offset: 5632)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !815, file: !26, line: 791, baseType: !1682, size: 64, offset: 5696)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1684)
!1684 = !{!1685, !1686, !1687, !1688, !1689}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1683, file: !26, line: 598, baseType: !70, size: 32)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1683, file: !26, line: 599, baseType: !79, size: 32, offset: 32)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1683, file: !26, line: 600, baseType: !84, size: 32, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1683, file: !26, line: 601, baseType: !294, size: 8, offset: 96)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1683, file: !26, line: 602, baseType: !294, size: 8, offset: 104)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !815, file: !26, line: 793, baseType: !89, size: 32, offset: 5760)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !815, file: !26, line: 795, baseType: !294, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !815, file: !26, line: 796, baseType: !294, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !815, file: !26, line: 797, baseType: !294, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !815, file: !26, line: 798, baseType: !294, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !815, file: !26, line: 799, baseType: !294, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !807, file: !26, line: 110, baseType: !1698, size: 64, offset: 192)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!260, !814, !1696, !136, !274}
!1701 = !DIGlobalVariableExpression(var: !1702, expr: !DIExpression())
!1702 = distinct !DIGlobalVariable(scope: null, file: !3, line: 156, type: !1703, isLocal: true, isDefinition: true)
!1703 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 48, elements: !798)
!1704 = !DIGlobalVariableExpression(var: !1705, expr: !DIExpression())
!1705 = distinct !DIGlobalVariable(scope: null, file: !3, line: 158, type: !1706, isLocal: true, isDefinition: true)
!1706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 96, elements: !1707)
!1707 = !{!1708}
!1708 = !DISubrange(count: 12)
!1709 = !DIGlobalVariableExpression(var: !1710, expr: !DIExpression())
!1710 = distinct !DIGlobalVariable(scope: null, file: !3, line: 162, type: !1711, isLocal: true, isDefinition: true)
!1711 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 80, elements: !1712)
!1712 = !{!1713}
!1713 = !DISubrange(count: 10)
!1714 = !DIGlobalVariableExpression(var: !1715, expr: !DIExpression())
!1715 = distinct !DIGlobalVariable(scope: null, file: !3, line: 165, type: !1716, isLocal: true, isDefinition: true)
!1716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 88, elements: !1717)
!1717 = !{!1718}
!1718 = !DISubrange(count: 11)
!1719 = !DIGlobalVariableExpression(var: !1720, expr: !DIExpression())
!1720 = distinct !DIGlobalVariable(scope: null, file: !3, line: 168, type: !1721, isLocal: true, isDefinition: true)
!1721 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 72, elements: !1722)
!1722 = !{!1723}
!1723 = !DISubrange(count: 9)
!1724 = !DIGlobalVariableExpression(var: !1725, expr: !DIExpression())
!1725 = distinct !DIGlobalVariable(scope: null, file: !3, line: 171, type: !1726, isLocal: true, isDefinition: true)
!1726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 56, elements: !1050)
!1727 = !DIGlobalVariableExpression(var: !1728, expr: !DIExpression())
!1728 = distinct !DIGlobalVariable(scope: null, file: !3, line: 177, type: !1729, isLocal: true, isDefinition: true)
!1729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 32, elements: !603)
!1730 = !DIGlobalVariableExpression(var: !1731, expr: !DIExpression())
!1731 = distinct !DIGlobalVariable(scope: null, file: !3, line: 122, type: !1732, isLocal: true, isDefinition: true)
!1732 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 64, elements: !1432)
!1733 = !DIGlobalVariableExpression(var: !1734, expr: !DIExpression())
!1734 = distinct !DIGlobalVariable(name: "dev_attr_control", scope: !2, file: !3, line: 122, type: !807, isLocal: true, isDefinition: true)
!1735 = !DIGlobalVariableExpression(var: !1736, expr: !DIExpression())
!1736 = distinct !DIGlobalVariable(name: "ctrl_auto", scope: !2, file: !3, line: 98, type: !1737, isLocal: true, isDefinition: true)
!1737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 40, elements: !1738)
!1738 = !{!1739}
!1739 = !DISubrange(count: 5)
!1740 = !DIGlobalVariableExpression(var: !1741, expr: !DIExpression())
!1741 = distinct !DIGlobalVariable(name: "ctrl_on", scope: !2, file: !3, line: 99, type: !1742, isLocal: true, isDefinition: true)
!1742 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 24, elements: !230)
!1743 = !DIGlobalVariableExpression(var: !1744, expr: !DIExpression())
!1744 = distinct !DIGlobalVariable(scope: null, file: !3, line: 148, type: !1745, isLocal: true, isDefinition: true)
!1745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 184, elements: !1746)
!1746 = !{!1747}
!1747 = !DISubrange(count: 23)
!1748 = !DIGlobalVariableExpression(var: !1749, expr: !DIExpression())
!1749 = distinct !DIGlobalVariable(name: "dev_attr_runtime_suspended_time", scope: !2, file: !3, line: 148, type: !807, isLocal: true, isDefinition: true)
!1750 = !DIGlobalVariableExpression(var: !1751, expr: !DIExpression())
!1751 = distinct !DIGlobalVariable(scope: null, file: !3, line: 145, type: !1703, isLocal: true, isDefinition: true)
!1752 = !DIGlobalVariableExpression(var: !1753, expr: !DIExpression())
!1753 = distinct !DIGlobalVariable(scope: null, file: !3, line: 135, type: !1754, isLocal: true, isDefinition: true)
!1754 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 160, elements: !1755)
!1755 = !{!1756}
!1756 = !DISubrange(count: 20)
!1757 = !DIGlobalVariableExpression(var: !1758, expr: !DIExpression())
!1758 = distinct !DIGlobalVariable(name: "dev_attr_runtime_active_time", scope: !2, file: !3, line: 135, type: !807, isLocal: true, isDefinition: true)
!1759 = !DIGlobalVariableExpression(var: !1760, expr: !DIExpression())
!1760 = distinct !DIGlobalVariable(scope: null, file: !3, line: 209, type: !1761, isLocal: true, isDefinition: true)
!1761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 168, elements: !1762)
!1762 = !{!1763}
!1763 = !DISubrange(count: 21)
!1764 = !DIGlobalVariableExpression(var: !1765, expr: !DIExpression())
!1765 = distinct !DIGlobalVariable(name: "dev_attr_autosuspend_delay_ms", scope: !2, file: !3, line: 209, type: !807, isLocal: true, isDefinition: true)
!1766 = !DIGlobalVariableExpression(var: !1767, expr: !DIExpression())
!1767 = distinct !DIGlobalVariable(scope: null, file: !3, line: 189, type: !1729, isLocal: true, isDefinition: true)
!1768 = !DIGlobalVariableExpression(var: !1769, expr: !DIExpression())
!1769 = distinct !DIGlobalVariable(name: "pm_wakeup_attr_group", scope: !2, file: !3, line: 647, type: !131, isLocal: true, isDefinition: true)
!1770 = !DIGlobalVariableExpression(var: !1771, expr: !DIExpression())
!1771 = distinct !DIGlobalVariable(name: "wakeup_attrs", scope: !2, file: !3, line: 630, type: !1772, isLocal: true, isDefinition: true)
!1772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 640, elements: !1712)
!1773 = !DIGlobalVariableExpression(var: !1774, expr: !DIExpression())
!1774 = distinct !DIGlobalVariable(scope: null, file: !3, line: 347, type: !1726, isLocal: true, isDefinition: true)
!1775 = !DIGlobalVariableExpression(var: !1776, expr: !DIExpression())
!1776 = distinct !DIGlobalVariable(name: "dev_attr_wakeup", scope: !2, file: !3, line: 347, type: !807, isLocal: true, isDefinition: true)
!1777 = !DIGlobalVariableExpression(var: !1778, expr: !DIExpression())
!1778 = distinct !DIGlobalVariable(scope: null, file: !3, line: 329, type: !1779, isLocal: true, isDefinition: true)
!1779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 8, elements: !791)
!1780 = !DIGlobalVariableExpression(var: !1781, expr: !DIExpression())
!1781 = distinct !DIGlobalVariable(name: "_enabled", scope: !2, file: !3, line: 321, type: !1782, isLocal: true, isDefinition: true)
!1782 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 64, elements: !1432)
!1783 = !DIGlobalVariableExpression(var: !1784, expr: !DIExpression())
!1784 = distinct !DIGlobalVariable(name: "_disabled", scope: !2, file: !3, line: 322, type: !1785, isLocal: true, isDefinition: true)
!1785 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 72, elements: !1722)
!1786 = !DIGlobalVariableExpression(var: !1787, expr: !DIExpression())
!1787 = distinct !DIGlobalVariable(scope: null, file: !3, line: 367, type: !1788, isLocal: true, isDefinition: true)
!1788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 104, elements: !1789)
!1789 = !{!1790}
!1790 = !DISubrange(count: 13)
!1791 = !DIGlobalVariableExpression(var: !1792, expr: !DIExpression())
!1792 = distinct !DIGlobalVariable(name: "dev_attr_wakeup_count", scope: !2, file: !3, line: 367, type: !807, isLocal: true, isDefinition: true)
!1793 = !DIGlobalVariableExpression(var: !1794, expr: !DIExpression())
!1794 = distinct !DIGlobalVariable(scope: null, file: !3, line: 363, type: !1795, isLocal: true, isDefinition: true)
!1795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 16, elements: !1048)
!1796 = !DIGlobalVariableExpression(var: !1797, expr: !DIExpression())
!1797 = distinct !DIGlobalVariable(scope: null, file: !3, line: 364, type: !1798, isLocal: true, isDefinition: true)
!1798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 40, elements: !1738)
!1799 = !DIGlobalVariableExpression(var: !1800, expr: !DIExpression())
!1800 = distinct !DIGlobalVariable(scope: null, file: !3, line: 388, type: !1754, isLocal: true, isDefinition: true)
!1801 = !DIGlobalVariableExpression(var: !1802, expr: !DIExpression())
!1802 = distinct !DIGlobalVariable(name: "dev_attr_wakeup_active_count", scope: !2, file: !3, line: 388, type: !807, isLocal: true, isDefinition: true)
!1803 = !DIGlobalVariableExpression(var: !1804, expr: !DIExpression())
!1804 = distinct !DIGlobalVariable(scope: null, file: !3, line: 409, type: !1805, isLocal: true, isDefinition: true)
!1805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 152, elements: !1806)
!1806 = !{!1807}
!1807 = !DISubrange(count: 19)
!1808 = !DIGlobalVariableExpression(var: !1809, expr: !DIExpression())
!1809 = distinct !DIGlobalVariable(name: "dev_attr_wakeup_abort_count", scope: !2, file: !3, line: 409, type: !807, isLocal: true, isDefinition: true)
!1810 = !DIGlobalVariableExpression(var: !1811, expr: !DIExpression())
!1811 = distinct !DIGlobalVariable(scope: null, file: !3, line: 430, type: !1754, isLocal: true, isDefinition: true)
!1812 = !DIGlobalVariableExpression(var: !1813, expr: !DIExpression())
!1813 = distinct !DIGlobalVariable(name: "dev_attr_wakeup_expire_count", scope: !2, file: !3, line: 430, type: !807, isLocal: true, isDefinition: true)
!1814 = !DIGlobalVariableExpression(var: !1815, expr: !DIExpression())
!1815 = distinct !DIGlobalVariable(scope: null, file: !3, line: 450, type: !1816, isLocal: true, isDefinition: true)
!1816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 112, elements: !1817)
!1817 = !{!1818}
!1818 = !DISubrange(count: 14)
!1819 = !DIGlobalVariableExpression(var: !1820, expr: !DIExpression())
!1820 = distinct !DIGlobalVariable(name: "dev_attr_wakeup_active", scope: !2, file: !3, line: 450, type: !807, isLocal: true, isDefinition: true)
!1821 = !DIGlobalVariableExpression(var: !1822, expr: !DIExpression())
!1822 = distinct !DIGlobalVariable(scope: null, file: !3, line: 447, type: !1729, isLocal: true, isDefinition: true)
!1823 = !DIGlobalVariableExpression(var: !1824, expr: !DIExpression())
!1824 = distinct !DIGlobalVariable(scope: null, file: !3, line: 471, type: !1761, isLocal: true, isDefinition: true)
!1825 = !DIGlobalVariableExpression(var: !1826, expr: !DIExpression())
!1826 = distinct !DIGlobalVariable(name: "dev_attr_wakeup_total_time_ms", scope: !2, file: !3, line: 471, type: !807, isLocal: true, isDefinition: true)
!1827 = !DIGlobalVariableExpression(var: !1828, expr: !DIExpression())
!1828 = distinct !DIGlobalVariable(scope: null, file: !3, line: 468, type: !1703, isLocal: true, isDefinition: true)
!1829 = !DIGlobalVariableExpression(var: !1830, expr: !DIExpression())
!1830 = distinct !DIGlobalVariable(scope: null, file: !1372, line: 154, type: !1831, isLocal: true, isDefinition: true)
!1831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 176, elements: !1832)
!1832 = !{!1833}
!1833 = !DISubrange(count: 22)
!1834 = !DIGlobalVariableExpression(var: !1835, expr: !DIExpression())
!1835 = distinct !DIGlobalVariable(scope: null, file: !3, line: 491, type: !1805, isLocal: true, isDefinition: true)
!1836 = !DIGlobalVariableExpression(var: !1837, expr: !DIExpression())
!1837 = distinct !DIGlobalVariable(name: "dev_attr_wakeup_max_time_ms", scope: !2, file: !3, line: 491, type: !807, isLocal: true, isDefinition: true)
!1838 = !DIGlobalVariableExpression(var: !1839, expr: !DIExpression())
!1839 = distinct !DIGlobalVariable(scope: null, file: !3, line: 520, type: !1754, isLocal: true, isDefinition: true)
!1840 = !DIGlobalVariableExpression(var: !1841, expr: !DIExpression())
!1841 = distinct !DIGlobalVariable(name: "dev_attr_wakeup_last_time_ms", scope: !2, file: !3, line: 520, type: !807, isLocal: true, isDefinition: true)
!1842 = !DIGlobalVariableExpression(var: !1843, expr: !DIExpression())
!1843 = distinct !DIGlobalVariable(name: "pm_qos_latency_tolerance_attr_group", scope: !2, file: !3, line: 680, type: !131, isLocal: true, isDefinition: true)
!1844 = !DIGlobalVariableExpression(var: !1845, expr: !DIExpression())
!1845 = distinct !DIGlobalVariable(name: "pm_qos_latency_tolerance_attrs", scope: !2, file: !3, line: 676, type: !1846, isLocal: true, isDefinition: true)
!1846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 128, elements: !1048)
!1847 = !DIGlobalVariableExpression(var: !1848, expr: !DIExpression())
!1848 = distinct !DIGlobalVariable(scope: null, file: !3, line: 292, type: !1849, isLocal: true, isDefinition: true)
!1849 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 224, elements: !1850)
!1850 = !{!1851}
!1851 = !DISubrange(count: 28)
!1852 = !DIGlobalVariableExpression(var: !1853, expr: !DIExpression())
!1853 = distinct !DIGlobalVariable(name: "dev_attr_pm_qos_latency_tolerance_us", scope: !2, file: !3, line: 292, type: !807, isLocal: true, isDefinition: true)
!1854 = !DIGlobalVariableExpression(var: !1855, expr: !DIExpression())
!1855 = distinct !DIGlobalVariable(scope: null, file: !3, line: 262, type: !1798, isLocal: true, isDefinition: true)
!1856 = !DIGlobalVariableExpression(var: !1857, expr: !DIExpression())
!1857 = distinct !DIGlobalVariable(scope: null, file: !3, line: 264, type: !1729, isLocal: true, isDefinition: true)
!1858 = !DIGlobalVariableExpression(var: !1859, expr: !DIExpression())
!1859 = distinct !DIGlobalVariable(name: "pm_qos_resume_latency_attr_group", scope: !2, file: !3, line: 671, type: !131, isLocal: true, isDefinition: true)
!1860 = !DIGlobalVariableExpression(var: !1861, expr: !DIExpression())
!1861 = distinct !DIGlobalVariable(name: "pm_qos_resume_latency_attrs", scope: !2, file: !3, line: 667, type: !1846, isLocal: true, isDefinition: true)
!1862 = !DIGlobalVariableExpression(var: !1863, expr: !DIExpression())
!1863 = distinct !DIGlobalVariable(scope: null, file: !3, line: 253, type: !1864, isLocal: true, isDefinition: true)
!1864 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 200, elements: !1865)
!1865 = !{!1866}
!1866 = !DISubrange(count: 25)
!1867 = !DIGlobalVariableExpression(var: !1868, expr: !DIExpression())
!1868 = distinct !DIGlobalVariable(name: "dev_attr_pm_qos_resume_latency_us", scope: !2, file: !3, line: 253, type: !807, isLocal: true, isDefinition: true)
!1869 = !DIGlobalVariableExpression(var: !1870, expr: !DIExpression())
!1870 = distinct !DIGlobalVariable(scope: null, file: !3, line: 218, type: !1798, isLocal: true, isDefinition: true)
!1871 = !DIGlobalVariableExpression(var: !1872, expr: !DIExpression())
!1872 = distinct !DIGlobalVariable(scope: null, file: !3, line: 242, type: !1729, isLocal: true, isDefinition: true)
!1873 = !DIGlobalVariableExpression(var: !1874, expr: !DIExpression())
!1874 = distinct !DIGlobalVariable(name: "pm_qos_flags_attr_group", scope: !2, file: !3, line: 689, type: !131, isLocal: true, isDefinition: true)
!1875 = !DIGlobalVariableExpression(var: !1876, expr: !DIExpression())
!1876 = distinct !DIGlobalVariable(name: "pm_qos_flags_attrs", scope: !2, file: !3, line: 685, type: !1846, isLocal: true, isDefinition: true)
!1877 = !DIGlobalVariableExpression(var: !1878, expr: !DIExpression())
!1878 = distinct !DIGlobalVariable(scope: null, file: !3, line: 318, type: !1754, isLocal: true, isDefinition: true)
!1879 = !DIGlobalVariableExpression(var: !1880, expr: !DIExpression())
!1880 = distinct !DIGlobalVariable(name: "dev_attr_pm_qos_no_power_off", scope: !2, file: !3, line: 318, type: !807, isLocal: true, isDefinition: true)
!1881 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 48, elements: !798)
!1882 = !{i32 7, !"Dwarf Version", i32 5}
!1883 = !{i32 2, !"Debug Info Version", i32 3}
!1884 = !{i32 1, !"wchar_size", i32 2}
!1885 = !{i32 8, !"cf-protection-branch", i32 1}
!1886 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1887 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1888 = !{i32 1, !"Code Model", i32 2}
!1889 = !{i32 1, !"override-stack-alignment", i32 8}
!1890 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!1891 = distinct !DISubprogram(name: "dpm_sysfs_add", scope: !3, file: !3, line: 694, type: !852, scopeLine: 695, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1892)
!1892 = !{!1893, !1894, !1895, !1896, !1897, !1898}
!1893 = !DILocalVariable(name: "dev", arg: 1, scope: !1891, file: !3, line: 694, type: !814)
!1894 = !DILocalVariable(name: "rc", scope: !1891, file: !3, line: 696, type: !46)
!1895 = !DILabel(scope: !1891, name: "err_latency", file: !3, line: 727)
!1896 = !DILabel(scope: !1891, name: "err_wakeup", file: !3, line: 729)
!1897 = !DILabel(scope: !1891, name: "err_runtime", file: !3, line: 731)
!1898 = !DILabel(scope: !1891, name: "err_out", file: !3, line: 733)
!1899 = !DILocation(line: 694, column: 34, scope: !1891)
!1900 = !DILocation(line: 696, column: 2, scope: !1891)
!1901 = !DILocation(line: 696, column: 6, scope: !1891)
!1902 = !DILocation(line: 699, column: 29, scope: !1903)
!1903 = distinct !DILexicalBlock(scope: !1891, file: !3, line: 699, column: 6)
!1904 = !DILocation(line: 699, column: 6, scope: !1903)
!1905 = !DILocation(line: 699, column: 6, scope: !1891)
!1906 = !DILocation(line: 700, column: 3, scope: !1903)
!1907 = !DILocation(line: 702, column: 27, scope: !1891)
!1908 = !DILocation(line: 702, column: 32, scope: !1891)
!1909 = !DILocation(line: 702, column: 7, scope: !1891)
!1910 = !DILocation(line: 702, column: 5, scope: !1891)
!1911 = !DILocation(line: 703, column: 6, scope: !1912)
!1912 = distinct !DILexicalBlock(scope: !1891, file: !3, line: 703, column: 6)
!1913 = !DILocation(line: 703, column: 6, scope: !1891)
!1914 = !DILocation(line: 704, column: 10, scope: !1912)
!1915 = !DILocation(line: 704, column: 3, scope: !1912)
!1916 = !DILocation(line: 706, column: 35, scope: !1917)
!1917 = distinct !DILexicalBlock(scope: !1891, file: !3, line: 706, column: 6)
!1918 = !DILocation(line: 706, column: 7, scope: !1917)
!1919 = !DILocation(line: 706, column: 6, scope: !1891)
!1920 = !DILocation(line: 707, column: 27, scope: !1921)
!1921 = distinct !DILexicalBlock(scope: !1917, file: !3, line: 706, column: 41)
!1922 = !DILocation(line: 707, column: 32, scope: !1921)
!1923 = !DILocation(line: 707, column: 8, scope: !1921)
!1924 = !DILocation(line: 707, column: 6, scope: !1921)
!1925 = !DILocation(line: 708, column: 7, scope: !1926)
!1926 = distinct !DILexicalBlock(scope: !1921, file: !3, line: 708, column: 7)
!1927 = !DILocation(line: 708, column: 7, scope: !1921)
!1928 = !DILocation(line: 709, column: 4, scope: !1926)
!1929 = !DILocation(line: 710, column: 2, scope: !1921)
!1930 = !DILocation(line: 711, column: 24, scope: !1931)
!1931 = distinct !DILexicalBlock(scope: !1891, file: !3, line: 711, column: 6)
!1932 = !DILocation(line: 711, column: 6, scope: !1931)
!1933 = !DILocation(line: 711, column: 6, scope: !1891)
!1934 = !DILocation(line: 712, column: 27, scope: !1935)
!1935 = distinct !DILexicalBlock(scope: !1931, file: !3, line: 711, column: 30)
!1936 = !DILocation(line: 712, column: 32, scope: !1935)
!1937 = !DILocation(line: 712, column: 8, scope: !1935)
!1938 = !DILocation(line: 712, column: 6, scope: !1935)
!1939 = !DILocation(line: 713, column: 7, scope: !1940)
!1940 = distinct !DILexicalBlock(scope: !1935, file: !3, line: 713, column: 7)
!1941 = !DILocation(line: 713, column: 7, scope: !1935)
!1942 = !DILocation(line: 714, column: 4, scope: !1940)
!1943 = !DILocation(line: 715, column: 2, scope: !1935)
!1944 = !DILocation(line: 716, column: 6, scope: !1945)
!1945 = distinct !DILexicalBlock(scope: !1891, file: !3, line: 716, column: 6)
!1946 = !DILocation(line: 716, column: 11, scope: !1945)
!1947 = !DILocation(line: 716, column: 17, scope: !1945)
!1948 = !DILocation(line: 716, column: 6, scope: !1891)
!1949 = !DILocation(line: 717, column: 27, scope: !1950)
!1950 = distinct !DILexicalBlock(scope: !1945, file: !3, line: 716, column: 40)
!1951 = !DILocation(line: 717, column: 32, scope: !1950)
!1952 = !DILocation(line: 717, column: 8, scope: !1950)
!1953 = !DILocation(line: 717, column: 6, scope: !1950)
!1954 = !DILocation(line: 719, column: 7, scope: !1955)
!1955 = distinct !DILexicalBlock(scope: !1950, file: !3, line: 719, column: 7)
!1956 = !DILocation(line: 719, column: 7, scope: !1950)
!1957 = !DILocation(line: 720, column: 4, scope: !1955)
!1958 = !DILocation(line: 721, column: 2, scope: !1950)
!1959 = !DILocation(line: 722, column: 34, scope: !1891)
!1960 = !DILocation(line: 722, column: 7, scope: !1891)
!1961 = !DILocation(line: 722, column: 5, scope: !1891)
!1962 = !DILocation(line: 723, column: 6, scope: !1963)
!1963 = distinct !DILexicalBlock(scope: !1891, file: !3, line: 723, column: 6)
!1964 = !DILocation(line: 723, column: 6, scope: !1891)
!1965 = !DILocation(line: 724, column: 3, scope: !1963)
!1966 = !DILocation(line: 725, column: 2, scope: !1891)
!1967 = !DILocation(line: 727, column: 2, scope: !1891)
!1968 = !DILocation(line: 728, column: 23, scope: !1891)
!1969 = !DILocation(line: 728, column: 28, scope: !1891)
!1970 = !DILocation(line: 728, column: 2, scope: !1891)
!1971 = !DILocation(line: 729, column: 2, scope: !1891)
!1972 = !DILocation(line: 730, column: 23, scope: !1891)
!1973 = !DILocation(line: 730, column: 28, scope: !1891)
!1974 = !DILocation(line: 730, column: 2, scope: !1891)
!1975 = !DILocation(line: 731, column: 2, scope: !1891)
!1976 = !DILocation(line: 732, column: 23, scope: !1891)
!1977 = !DILocation(line: 732, column: 28, scope: !1891)
!1978 = !DILocation(line: 732, column: 2, scope: !1891)
!1979 = !DILocation(line: 733, column: 2, scope: !1891)
!1980 = !DILocation(line: 734, column: 22, scope: !1891)
!1981 = !DILocation(line: 734, column: 27, scope: !1891)
!1982 = !DILocation(line: 734, column: 2, scope: !1891)
!1983 = !DILocation(line: 735, column: 9, scope: !1891)
!1984 = !DILocation(line: 735, column: 2, scope: !1891)
!1985 = !DILocation(line: 736, column: 1, scope: !1891)
!1986 = distinct !DISubprogram(name: "device_pm_not_required", scope: !26, file: !26, line: 963, type: !1987, scopeLine: 964, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !1989)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!294, !814}
!1989 = !{!1990}
!1990 = !DILocalVariable(name: "dev", arg: 1, scope: !1986, file: !26, line: 963, type: !814)
!1991 = !DILocation(line: 963, column: 58, scope: !1986)
!1992 = !DILocation(line: 965, column: 9, scope: !1986)
!1993 = !DILocation(line: 965, column: 14, scope: !1986)
!1994 = !DILocation(line: 965, column: 20, scope: !1986)
!1995 = !DILocation(line: 965, column: 2, scope: !1986)
!1996 = !DISubprogram(name: "sysfs_create_group", scope: !133, file: !133, line: 307, type: !1997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!1997 = !DISubroutineType(types: !1998)
!1998 = !{!46, !145, !280}
!1999 = distinct !DISubprogram(name: "pm_runtime_has_no_callbacks", scope: !2000, file: !2000, line: 217, type: !1987, scopeLine: 218, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2001)
!2000 = !DIFile(filename: "./include/linux/pm_runtime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "95dc537c0e4be945b3dc143d0bbabcd4")
!2001 = !{!2002}
!2002 = !DILocalVariable(name: "dev", arg: 1, scope: !1999, file: !2000, line: 217, type: !814)
!2003 = !DILocation(line: 217, column: 63, scope: !1999)
!2004 = !DILocation(line: 219, column: 9, scope: !1999)
!2005 = !DILocation(line: 219, column: 14, scope: !1999)
!2006 = !DILocation(line: 219, column: 20, scope: !1999)
!2007 = !DILocation(line: 219, column: 2, scope: !1999)
!2008 = !DISubprogram(name: "sysfs_merge_group", scope: !133, file: !133, line: 323, type: !1997, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2009 = distinct !DISubprogram(name: "device_can_wakeup", scope: !1353, file: !1353, line: 77, type: !1987, scopeLine: 78, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2010)
!2010 = !{!2011}
!2011 = !DILocalVariable(name: "dev", arg: 1, scope: !2009, file: !1353, line: 77, type: !814)
!2012 = !DILocation(line: 77, column: 53, scope: !2009)
!2013 = !DILocation(line: 79, column: 9, scope: !2009)
!2014 = !DILocation(line: 79, column: 14, scope: !2009)
!2015 = !DILocation(line: 79, column: 20, scope: !2009)
!2016 = !DILocation(line: 79, column: 2, scope: !2009)
!2017 = !DISubprogram(name: "pm_wakeup_source_sysfs_add", scope: !1362, file: !1362, line: 132, type: !852, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2018 = !DISubprogram(name: "sysfs_unmerge_group", scope: !133, file: !133, line: 325, type: !2019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2019 = !DISubroutineType(types: !2020)
!2020 = !{null, !145, !280}
!2021 = !DISubprogram(name: "sysfs_remove_group", scope: !133, file: !133, line: 315, type: !2019, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2022 = distinct !DISubprogram(name: "dpm_sysfs_change_owner", scope: !3, file: !3, line: 738, type: !2023, scopeLine: 739, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2025)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!46, !814, !325, !333}
!2025 = !{!2026, !2027, !2028, !2029}
!2026 = !DILocalVariable(name: "dev", arg: 1, scope: !2022, file: !3, line: 738, type: !814)
!2027 = !DILocalVariable(name: "kuid", arg: 2, scope: !2022, file: !3, line: 738, type: !325)
!2028 = !DILocalVariable(name: "kgid", arg: 3, scope: !2022, file: !3, line: 738, type: !333)
!2029 = !DILocalVariable(name: "rc", scope: !2022, file: !3, line: 740, type: !46)
!2030 = !DILocation(line: 738, column: 43, scope: !2022)
!2031 = !DILocation(line: 738, column: 55, scope: !2022)
!2032 = !DILocation(line: 738, column: 68, scope: !2022)
!2033 = !DILocation(line: 740, column: 2, scope: !2022)
!2034 = !DILocation(line: 740, column: 6, scope: !2022)
!2035 = !DILocation(line: 742, column: 29, scope: !2036)
!2036 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 742, column: 6)
!2037 = !DILocation(line: 742, column: 6, scope: !2036)
!2038 = !DILocation(line: 742, column: 6, scope: !2022)
!2039 = !DILocation(line: 743, column: 3, scope: !2036)
!2040 = !DILocation(line: 745, column: 33, scope: !2022)
!2041 = !DILocation(line: 745, column: 38, scope: !2022)
!2042 = !DILocation(line: 745, column: 7, scope: !2022)
!2043 = !DILocation(line: 745, column: 5, scope: !2022)
!2044 = !DILocation(line: 746, column: 6, scope: !2045)
!2045 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 746, column: 6)
!2046 = !DILocation(line: 746, column: 6, scope: !2022)
!2047 = !DILocation(line: 747, column: 10, scope: !2045)
!2048 = !DILocation(line: 747, column: 3, scope: !2045)
!2049 = !DILocation(line: 749, column: 35, scope: !2050)
!2050 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 749, column: 6)
!2051 = !DILocation(line: 749, column: 7, scope: !2050)
!2052 = !DILocation(line: 749, column: 6, scope: !2022)
!2053 = !DILocation(line: 751, column: 5, scope: !2054)
!2054 = distinct !DILexicalBlock(scope: !2050, file: !3, line: 749, column: 41)
!2055 = !DILocation(line: 751, column: 10, scope: !2054)
!2056 = !DILocation(line: 750, column: 8, scope: !2054)
!2057 = !DILocation(line: 750, column: 6, scope: !2054)
!2058 = !DILocation(line: 752, column: 7, scope: !2059)
!2059 = distinct !DILexicalBlock(scope: !2054, file: !3, line: 752, column: 7)
!2060 = !DILocation(line: 752, column: 7, scope: !2054)
!2061 = !DILocation(line: 753, column: 11, scope: !2059)
!2062 = !DILocation(line: 753, column: 4, scope: !2059)
!2063 = !DILocation(line: 754, column: 2, scope: !2054)
!2064 = !DILocation(line: 756, column: 24, scope: !2065)
!2065 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 756, column: 6)
!2066 = !DILocation(line: 756, column: 6, scope: !2065)
!2067 = !DILocation(line: 756, column: 6, scope: !2022)
!2068 = !DILocation(line: 757, column: 34, scope: !2069)
!2069 = distinct !DILexicalBlock(scope: !2065, file: !3, line: 756, column: 30)
!2070 = !DILocation(line: 757, column: 39, scope: !2069)
!2071 = !DILocation(line: 757, column: 8, scope: !2069)
!2072 = !DILocation(line: 757, column: 6, scope: !2069)
!2073 = !DILocation(line: 759, column: 7, scope: !2074)
!2074 = distinct !DILexicalBlock(scope: !2069, file: !3, line: 759, column: 7)
!2075 = !DILocation(line: 759, column: 7, scope: !2069)
!2076 = !DILocation(line: 760, column: 11, scope: !2074)
!2077 = !DILocation(line: 760, column: 4, scope: !2074)
!2078 = !DILocation(line: 762, column: 38, scope: !2069)
!2079 = !DILocation(line: 762, column: 8, scope: !2069)
!2080 = !DILocation(line: 762, column: 6, scope: !2069)
!2081 = !DILocation(line: 763, column: 7, scope: !2082)
!2082 = distinct !DILexicalBlock(scope: !2069, file: !3, line: 763, column: 7)
!2083 = !DILocation(line: 763, column: 7, scope: !2069)
!2084 = !DILocation(line: 764, column: 11, scope: !2082)
!2085 = !DILocation(line: 764, column: 4, scope: !2082)
!2086 = !DILocation(line: 765, column: 2, scope: !2069)
!2087 = !DILocation(line: 767, column: 6, scope: !2088)
!2088 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 767, column: 6)
!2089 = !DILocation(line: 767, column: 11, scope: !2088)
!2090 = !DILocation(line: 767, column: 17, scope: !2088)
!2091 = !DILocation(line: 767, column: 6, scope: !2022)
!2092 = !DILocation(line: 769, column: 5, scope: !2093)
!2093 = distinct !DILexicalBlock(scope: !2088, file: !3, line: 767, column: 40)
!2094 = !DILocation(line: 769, column: 10, scope: !2093)
!2095 = !DILocation(line: 768, column: 8, scope: !2093)
!2096 = !DILocation(line: 768, column: 6, scope: !2093)
!2097 = !DILocation(line: 771, column: 7, scope: !2098)
!2098 = distinct !DILexicalBlock(scope: !2093, file: !3, line: 771, column: 7)
!2099 = !DILocation(line: 771, column: 7, scope: !2093)
!2100 = !DILocation(line: 772, column: 11, scope: !2098)
!2101 = !DILocation(line: 772, column: 4, scope: !2098)
!2102 = !DILocation(line: 773, column: 2, scope: !2093)
!2103 = !DILocation(line: 774, column: 2, scope: !2022)
!2104 = !DILocation(line: 775, column: 1, scope: !2022)
!2105 = !DISubprogram(name: "sysfs_group_change_owner", scope: !133, file: !133, line: 353, type: !2106, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!46, !145, !280, !325, !333}
!2108 = distinct !DISubprogram(name: "dpm_sysfs_wakeup_change_owner", scope: !3, file: !3, line: 512, type: !2023, scopeLine: 514, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2109)
!2109 = !{!2110, !2111, !2112}
!2110 = !DILocalVariable(name: "dev", arg: 1, scope: !2108, file: !3, line: 512, type: !814)
!2111 = !DILocalVariable(name: "kuid", arg: 2, scope: !2108, file: !3, line: 512, type: !325)
!2112 = !DILocalVariable(name: "kgid", arg: 3, scope: !2108, file: !3, line: 513, type: !333)
!2113 = !DILocation(line: 512, column: 64, scope: !2108)
!2114 = !DILocation(line: 512, column: 76, scope: !2108)
!2115 = !DILocation(line: 513, column: 14, scope: !2108)
!2116 = !DILocation(line: 515, column: 6, scope: !2117)
!2117 = distinct !DILexicalBlock(scope: !2108, file: !3, line: 515, column: 6)
!2118 = !DILocation(line: 515, column: 11, scope: !2117)
!2119 = !DILocation(line: 515, column: 17, scope: !2117)
!2120 = !DILocation(line: 515, column: 24, scope: !2117)
!2121 = !DILocation(line: 515, column: 27, scope: !2117)
!2122 = !DILocation(line: 515, column: 32, scope: !2117)
!2123 = !DILocation(line: 515, column: 38, scope: !2117)
!2124 = !DILocation(line: 515, column: 46, scope: !2117)
!2125 = !DILocation(line: 515, column: 6, scope: !2108)
!2126 = !DILocation(line: 516, column: 30, scope: !2117)
!2127 = !DILocation(line: 516, column: 35, scope: !2117)
!2128 = !DILocation(line: 516, column: 41, scope: !2117)
!2129 = !DILocation(line: 516, column: 49, scope: !2117)
!2130 = !DILocation(line: 516, column: 10, scope: !2117)
!2131 = !DILocation(line: 516, column: 3, scope: !2117)
!2132 = !DILocation(line: 517, column: 2, scope: !2108)
!2133 = !DILocation(line: 518, column: 1, scope: !2108)
!2134 = distinct !DISubprogram(name: "wakeup_sysfs_add", scope: !3, file: !3, line: 777, type: !852, scopeLine: 778, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2135)
!2135 = !{!2136, !2137}
!2136 = !DILocalVariable(name: "dev", arg: 1, scope: !2134, file: !3, line: 777, type: !814)
!2137 = !DILocalVariable(name: "ret", scope: !2134, file: !3, line: 779, type: !46)
!2138 = !DILocation(line: 777, column: 37, scope: !2134)
!2139 = !DILocation(line: 779, column: 2, scope: !2134)
!2140 = !DILocation(line: 779, column: 6, scope: !2134)
!2141 = !DILocation(line: 779, column: 31, scope: !2134)
!2142 = !DILocation(line: 779, column: 36, scope: !2134)
!2143 = !DILocation(line: 779, column: 12, scope: !2134)
!2144 = !DILocation(line: 781, column: 7, scope: !2145)
!2145 = distinct !DILexicalBlock(scope: !2134, file: !3, line: 781, column: 6)
!2146 = !DILocation(line: 781, column: 6, scope: !2134)
!2147 = !DILocation(line: 782, column: 19, scope: !2145)
!2148 = !DILocation(line: 782, column: 24, scope: !2145)
!2149 = !DILocation(line: 782, column: 3, scope: !2145)
!2150 = !DILocation(line: 784, column: 9, scope: !2134)
!2151 = !DILocation(line: 785, column: 1, scope: !2134)
!2152 = !DILocation(line: 784, column: 2, scope: !2134)
!2153 = !DISubprogram(name: "kobject_uevent", scope: !96, file: !96, line: 214, type: !2154, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!46, !145, !95}
!2156 = distinct !DISubprogram(name: "wakeup_sysfs_remove", scope: !3, file: !3, line: 787, type: !843, scopeLine: 788, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2157)
!2157 = !{!2158}
!2158 = !DILocalVariable(name: "dev", arg: 1, scope: !2156, file: !3, line: 787, type: !814)
!2159 = !DILocation(line: 787, column: 41, scope: !2156)
!2160 = !DILocation(line: 789, column: 23, scope: !2156)
!2161 = !DILocation(line: 789, column: 28, scope: !2156)
!2162 = !DILocation(line: 789, column: 2, scope: !2156)
!2163 = !DILocation(line: 790, column: 18, scope: !2156)
!2164 = !DILocation(line: 790, column: 23, scope: !2156)
!2165 = !DILocation(line: 790, column: 2, scope: !2156)
!2166 = !DILocation(line: 791, column: 1, scope: !2156)
!2167 = distinct !DISubprogram(name: "pm_qos_sysfs_add_resume_latency", scope: !3, file: !3, line: 793, type: !852, scopeLine: 794, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2168)
!2168 = !{!2169}
!2169 = !DILocalVariable(name: "dev", arg: 1, scope: !2167, file: !3, line: 793, type: !814)
!2170 = !DILocation(line: 793, column: 52, scope: !2167)
!2171 = !DILocation(line: 795, column: 28, scope: !2167)
!2172 = !DILocation(line: 795, column: 33, scope: !2167)
!2173 = !DILocation(line: 795, column: 9, scope: !2167)
!2174 = !DILocation(line: 795, column: 2, scope: !2167)
!2175 = distinct !DISubprogram(name: "pm_qos_sysfs_remove_resume_latency", scope: !3, file: !3, line: 798, type: !843, scopeLine: 799, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2176)
!2176 = !{!2177}
!2177 = !DILocalVariable(name: "dev", arg: 1, scope: !2175, file: !3, line: 798, type: !814)
!2178 = !DILocation(line: 798, column: 56, scope: !2175)
!2179 = !DILocation(line: 800, column: 23, scope: !2175)
!2180 = !DILocation(line: 800, column: 28, scope: !2175)
!2181 = !DILocation(line: 800, column: 2, scope: !2175)
!2182 = !DILocation(line: 801, column: 1, scope: !2175)
!2183 = distinct !DISubprogram(name: "pm_qos_sysfs_add_flags", scope: !3, file: !3, line: 803, type: !852, scopeLine: 804, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2184)
!2184 = !{!2185}
!2185 = !DILocalVariable(name: "dev", arg: 1, scope: !2183, file: !3, line: 803, type: !814)
!2186 = !DILocation(line: 803, column: 43, scope: !2183)
!2187 = !DILocation(line: 805, column: 28, scope: !2183)
!2188 = !DILocation(line: 805, column: 33, scope: !2183)
!2189 = !DILocation(line: 805, column: 9, scope: !2183)
!2190 = !DILocation(line: 805, column: 2, scope: !2183)
!2191 = distinct !DISubprogram(name: "pm_qos_sysfs_remove_flags", scope: !3, file: !3, line: 808, type: !843, scopeLine: 809, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2192)
!2192 = !{!2193}
!2193 = !DILocalVariable(name: "dev", arg: 1, scope: !2191, file: !3, line: 808, type: !814)
!2194 = !DILocation(line: 808, column: 47, scope: !2191)
!2195 = !DILocation(line: 810, column: 23, scope: !2191)
!2196 = !DILocation(line: 810, column: 28, scope: !2191)
!2197 = !DILocation(line: 810, column: 2, scope: !2191)
!2198 = !DILocation(line: 811, column: 1, scope: !2191)
!2199 = distinct !DISubprogram(name: "pm_qos_sysfs_add_latency_tolerance", scope: !3, file: !3, line: 813, type: !852, scopeLine: 814, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2200)
!2200 = !{!2201}
!2201 = !DILocalVariable(name: "dev", arg: 1, scope: !2199, file: !3, line: 813, type: !814)
!2202 = !DILocation(line: 813, column: 55, scope: !2199)
!2203 = !DILocation(line: 815, column: 28, scope: !2199)
!2204 = !DILocation(line: 815, column: 33, scope: !2199)
!2205 = !DILocation(line: 815, column: 9, scope: !2199)
!2206 = !DILocation(line: 815, column: 2, scope: !2199)
!2207 = distinct !DISubprogram(name: "pm_qos_sysfs_remove_latency_tolerance", scope: !3, file: !3, line: 819, type: !843, scopeLine: 820, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2208)
!2208 = !{!2209}
!2209 = !DILocalVariable(name: "dev", arg: 1, scope: !2207, file: !3, line: 819, type: !814)
!2210 = !DILocation(line: 819, column: 59, scope: !2207)
!2211 = !DILocation(line: 821, column: 23, scope: !2207)
!2212 = !DILocation(line: 821, column: 28, scope: !2207)
!2213 = !DILocation(line: 821, column: 2, scope: !2207)
!2214 = !DILocation(line: 822, column: 1, scope: !2207)
!2215 = distinct !DISubprogram(name: "rpm_sysfs_remove", scope: !3, file: !3, line: 824, type: !843, scopeLine: 825, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2216)
!2216 = !{!2217}
!2217 = !DILocalVariable(name: "dev", arg: 1, scope: !2215, file: !3, line: 824, type: !814)
!2218 = !DILocation(line: 824, column: 38, scope: !2215)
!2219 = !DILocation(line: 826, column: 23, scope: !2215)
!2220 = !DILocation(line: 826, column: 28, scope: !2215)
!2221 = !DILocation(line: 826, column: 2, scope: !2215)
!2222 = !DILocation(line: 827, column: 1, scope: !2215)
!2223 = distinct !DISubprogram(name: "dpm_sysfs_remove", scope: !3, file: !3, line: 829, type: !843, scopeLine: 830, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2224)
!2224 = !{!2225}
!2225 = !DILocalVariable(name: "dev", arg: 1, scope: !2223, file: !3, line: 829, type: !814)
!2226 = !DILocation(line: 829, column: 38, scope: !2223)
!2227 = !DILocation(line: 831, column: 29, scope: !2228)
!2228 = distinct !DILexicalBlock(scope: !2223, file: !3, line: 831, column: 6)
!2229 = !DILocation(line: 831, column: 6, scope: !2228)
!2230 = !DILocation(line: 831, column: 6, scope: !2223)
!2231 = !DILocation(line: 832, column: 3, scope: !2228)
!2232 = !DILocation(line: 833, column: 23, scope: !2223)
!2233 = !DILocation(line: 833, column: 28, scope: !2223)
!2234 = !DILocation(line: 833, column: 2, scope: !2223)
!2235 = !DILocation(line: 834, column: 33, scope: !2223)
!2236 = !DILocation(line: 834, column: 2, scope: !2223)
!2237 = !DILocation(line: 835, column: 19, scope: !2223)
!2238 = !DILocation(line: 835, column: 2, scope: !2223)
!2239 = !DILocation(line: 836, column: 23, scope: !2223)
!2240 = !DILocation(line: 836, column: 28, scope: !2223)
!2241 = !DILocation(line: 836, column: 2, scope: !2223)
!2242 = !DILocation(line: 837, column: 22, scope: !2223)
!2243 = !DILocation(line: 837, column: 27, scope: !2223)
!2244 = !DILocation(line: 837, column: 2, scope: !2223)
!2245 = !DILocation(line: 838, column: 1, scope: !2223)
!2246 = !DISubprogram(name: "dev_pm_qos_constraints_destroy", scope: !54, file: !54, line: 181, type: !843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2247 = distinct !DISubprogram(name: "runtime_status_show", scope: !3, file: !3, line: 150, type: !812, scopeLine: 152, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2248)
!2248 = !{!2249, !2250, !2251, !2252}
!2249 = !DILocalVariable(name: "dev", arg: 1, scope: !2247, file: !3, line: 150, type: !814)
!2250 = !DILocalVariable(name: "attr", arg: 2, scope: !2247, file: !3, line: 151, type: !1696)
!2251 = !DILocalVariable(name: "buf", arg: 3, scope: !2247, file: !3, line: 151, type: !229)
!2252 = !DILocalVariable(name: "output", scope: !2247, file: !3, line: 153, type: !136)
!2253 = !DILocation(line: 150, column: 51, scope: !2247)
!2254 = !DILocation(line: 151, column: 33, scope: !2247)
!2255 = !DILocation(line: 151, column: 45, scope: !2247)
!2256 = !DILocation(line: 153, column: 2, scope: !2247)
!2257 = !DILocation(line: 153, column: 14, scope: !2247)
!2258 = !DILocation(line: 155, column: 6, scope: !2259)
!2259 = distinct !DILexicalBlock(scope: !2247, file: !3, line: 155, column: 6)
!2260 = !DILocation(line: 155, column: 11, scope: !2259)
!2261 = !DILocation(line: 155, column: 17, scope: !2259)
!2262 = !DILocation(line: 155, column: 6, scope: !2247)
!2263 = !DILocation(line: 156, column: 10, scope: !2264)
!2264 = distinct !DILexicalBlock(scope: !2259, file: !3, line: 155, column: 32)
!2265 = !DILocation(line: 157, column: 2, scope: !2264)
!2266 = !DILocation(line: 157, column: 13, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2259, file: !3, line: 157, column: 13)
!2268 = !DILocation(line: 157, column: 18, scope: !2267)
!2269 = !DILocation(line: 157, column: 24, scope: !2267)
!2270 = !DILocation(line: 157, column: 13, scope: !2259)
!2271 = !DILocation(line: 158, column: 10, scope: !2272)
!2272 = distinct !DILexicalBlock(scope: !2267, file: !3, line: 157, column: 39)
!2273 = !DILocation(line: 159, column: 2, scope: !2272)
!2274 = !DILocation(line: 160, column: 11, scope: !2275)
!2275 = distinct !DILexicalBlock(scope: !2267, file: !3, line: 159, column: 9)
!2276 = !DILocation(line: 160, column: 16, scope: !2275)
!2277 = !DILocation(line: 160, column: 22, scope: !2275)
!2278 = !DILocation(line: 160, column: 3, scope: !2275)
!2279 = !DILocation(line: 162, column: 11, scope: !2280)
!2280 = distinct !DILexicalBlock(scope: !2275, file: !3, line: 160, column: 38)
!2281 = !DILocation(line: 163, column: 4, scope: !2280)
!2282 = !DILocation(line: 165, column: 11, scope: !2280)
!2283 = !DILocation(line: 166, column: 4, scope: !2280)
!2284 = !DILocation(line: 168, column: 11, scope: !2280)
!2285 = !DILocation(line: 169, column: 4, scope: !2280)
!2286 = !DILocation(line: 171, column: 11, scope: !2280)
!2287 = !DILocation(line: 172, column: 4, scope: !2280)
!2288 = !DILocation(line: 174, column: 4, scope: !2280)
!2289 = !DILocation(line: 177, column: 20, scope: !2247)
!2290 = !DILocation(line: 177, column: 33, scope: !2247)
!2291 = !DILocation(line: 177, column: 9, scope: !2247)
!2292 = !DILocation(line: 177, column: 2, scope: !2247)
!2293 = !DILocation(line: 178, column: 1, scope: !2247)
!2294 = !DISubprogram(name: "sysfs_emit", scope: !133, file: !133, line: 357, type: !2295, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!46, !229, !136, null}
!2297 = distinct !DISubprogram(name: "control_show", scope: !3, file: !3, line: 101, type: !812, scopeLine: 103, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2298)
!2298 = !{!2299, !2300, !2301}
!2299 = !DILocalVariable(name: "dev", arg: 1, scope: !2297, file: !3, line: 101, type: !814)
!2300 = !DILocalVariable(name: "attr", arg: 2, scope: !2297, file: !3, line: 101, type: !1696)
!2301 = !DILocalVariable(name: "buf", arg: 3, scope: !2297, file: !3, line: 102, type: !229)
!2302 = !DILocation(line: 101, column: 44, scope: !2297)
!2303 = !DILocation(line: 101, column: 74, scope: !2297)
!2304 = !DILocation(line: 102, column: 14, scope: !2297)
!2305 = !DILocation(line: 104, column: 20, scope: !2297)
!2306 = !DILocation(line: 105, column: 6, scope: !2297)
!2307 = !DILocation(line: 105, column: 11, scope: !2297)
!2308 = !DILocation(line: 105, column: 17, scope: !2297)
!2309 = !DILocation(line: 104, column: 9, scope: !2297)
!2310 = !DILocation(line: 104, column: 2, scope: !2297)
!2311 = distinct !DISubprogram(name: "control_store", scope: !3, file: !3, line: 108, type: !1699, scopeLine: 110, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2312)
!2312 = !{!2313, !2314, !2315, !2316}
!2313 = !DILocalVariable(name: "dev", arg: 1, scope: !2311, file: !3, line: 108, type: !814)
!2314 = !DILocalVariable(name: "attr", arg: 2, scope: !2311, file: !3, line: 108, type: !1696)
!2315 = !DILocalVariable(name: "buf", arg: 3, scope: !2311, file: !3, line: 109, type: !136)
!2316 = !DILocalVariable(name: "n", arg: 4, scope: !2311, file: !3, line: 109, type: !274)
!2317 = !DILocation(line: 108, column: 46, scope: !2311)
!2318 = !DILocation(line: 108, column: 76, scope: !2311)
!2319 = !DILocation(line: 109, column: 22, scope: !2311)
!2320 = !DILocation(line: 109, column: 34, scope: !2311)
!2321 = !DILocation(line: 111, column: 14, scope: !2311)
!2322 = !DILocation(line: 111, column: 2, scope: !2311)
!2323 = !DILocation(line: 112, column: 18, scope: !2324)
!2324 = distinct !DILexicalBlock(scope: !2311, file: !3, line: 112, column: 6)
!2325 = !DILocation(line: 112, column: 6, scope: !2324)
!2326 = !DILocation(line: 112, column: 6, scope: !2311)
!2327 = !DILocation(line: 113, column: 20, scope: !2324)
!2328 = !DILocation(line: 113, column: 3, scope: !2324)
!2329 = !DILocation(line: 114, column: 23, scope: !2330)
!2330 = distinct !DILexicalBlock(scope: !2324, file: !3, line: 114, column: 11)
!2331 = !DILocation(line: 114, column: 11, scope: !2330)
!2332 = !DILocation(line: 114, column: 11, scope: !2324)
!2333 = !DILocation(line: 115, column: 21, scope: !2330)
!2334 = !DILocation(line: 115, column: 3, scope: !2330)
!2335 = !DILocation(line: 117, column: 5, scope: !2330)
!2336 = !DILocation(line: 118, column: 16, scope: !2311)
!2337 = !DILocation(line: 118, column: 2, scope: !2311)
!2338 = !DILocation(line: 119, column: 9, scope: !2311)
!2339 = !DILocation(line: 119, column: 2, scope: !2311)
!2340 = distinct !DISubprogram(name: "device_lock", scope: !26, file: !26, line: 990, type: !843, scopeLine: 991, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2341)
!2341 = !{!2342}
!2342 = !DILocalVariable(name: "dev", arg: 1, scope: !2340, file: !26, line: 990, type: !814)
!2343 = !DILocation(line: 990, column: 47, scope: !2340)
!2344 = !DILocation(line: 992, column: 14, scope: !2340)
!2345 = !DILocation(line: 992, column: 19, scope: !2340)
!2346 = !DILocation(line: 992, column: 2, scope: !2340)
!2347 = !DILocation(line: 993, column: 1, scope: !2340)
!2348 = !DISubprogram(name: "sysfs_streq", scope: !2349, file: !2349, line: 226, type: !2350, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2349 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!2350 = !DISubroutineType(types: !2351)
!2351 = !{!294, !136, !136}
!2352 = !DISubprogram(name: "pm_runtime_allow", scope: !2000, file: !2000, line: 81, type: !843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2353 = !DISubprogram(name: "pm_runtime_forbid", scope: !2000, file: !2000, line: 82, type: !843, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2354 = distinct !DISubprogram(name: "device_unlock", scope: !26, file: !26, line: 1005, type: !843, scopeLine: 1006, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2355)
!2355 = !{!2356}
!2356 = !DILocalVariable(name: "dev", arg: 1, scope: !2354, file: !26, line: 1005, type: !814)
!2357 = !DILocation(line: 1005, column: 49, scope: !2354)
!2358 = !DILocation(line: 1007, column: 16, scope: !2354)
!2359 = !DILocation(line: 1007, column: 21, scope: !2354)
!2360 = !DILocation(line: 1007, column: 2, scope: !2354)
!2361 = !DILocation(line: 1008, column: 1, scope: !2354)
!2362 = !DISubprogram(name: "mutex_lock", scope: !404, file: !404, line: 227, type: !2363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2363 = !DISubroutineType(types: !2364)
!2364 = !{null, !2365}
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!2366 = !DISubprogram(name: "mutex_unlock", scope: !404, file: !404, line: 246, type: !2363, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2367 = distinct !DISubprogram(name: "runtime_suspended_time_show", scope: !3, file: !3, line: 137, type: !812, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2368)
!2368 = !{!2369, !2370, !2371, !2372, !2373, !2376}
!2369 = !DILocalVariable(name: "dev", arg: 1, scope: !2367, file: !3, line: 137, type: !814)
!2370 = !DILocalVariable(name: "attr", arg: 2, scope: !2367, file: !3, line: 138, type: !1696)
!2371 = !DILocalVariable(name: "buf", arg: 3, scope: !2367, file: !3, line: 139, type: !229)
!2372 = !DILocalVariable(name: "tmp", scope: !2367, file: !3, line: 141, type: !115)
!2373 = !DILocalVariable(name: "__base", scope: !2374, file: !3, line: 143, type: !2375)
!2374 = distinct !DILexicalBlock(scope: !2367, file: !3, line: 143, column: 2)
!2375 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !114, line: 110, baseType: !124)
!2376 = !DILocalVariable(name: "__rem", scope: !2374, file: !3, line: 143, type: !2375)
!2377 = !DILocation(line: 137, column: 59, scope: !2367)
!2378 = !DILocation(line: 138, column: 34, scope: !2367)
!2379 = !DILocation(line: 139, column: 15, scope: !2367)
!2380 = !DILocation(line: 141, column: 2, scope: !2367)
!2381 = !DILocation(line: 141, column: 6, scope: !2367)
!2382 = !DILocation(line: 141, column: 38, scope: !2367)
!2383 = !DILocation(line: 141, column: 12, scope: !2367)
!2384 = !DILocation(line: 143, column: 2, scope: !2374)
!2385 = !DILocation(line: 143, column: 2, scope: !2367)
!2386 = !DILocation(line: 145, column: 20, scope: !2367)
!2387 = !DILocation(line: 145, column: 35, scope: !2367)
!2388 = !DILocation(line: 145, column: 9, scope: !2367)
!2389 = !DILocation(line: 146, column: 1, scope: !2367)
!2390 = !DILocation(line: 145, column: 2, scope: !2367)
!2391 = !DISubprogram(name: "pm_runtime_suspended_time", scope: !2000, file: !2000, line: 247, type: !2392, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!115, !814}
!2394 = distinct !DISubprogram(name: "runtime_active_time_show", scope: !3, file: !3, line: 124, type: !812, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2395)
!2395 = !{!2396, !2397, !2398, !2399, !2400, !2402}
!2396 = !DILocalVariable(name: "dev", arg: 1, scope: !2394, file: !3, line: 124, type: !814)
!2397 = !DILocalVariable(name: "attr", arg: 2, scope: !2394, file: !3, line: 125, type: !1696)
!2398 = !DILocalVariable(name: "buf", arg: 3, scope: !2394, file: !3, line: 126, type: !229)
!2399 = !DILocalVariable(name: "tmp", scope: !2394, file: !3, line: 128, type: !115)
!2400 = !DILocalVariable(name: "__base", scope: !2401, file: !3, line: 130, type: !2375)
!2401 = distinct !DILexicalBlock(scope: !2394, file: !3, line: 130, column: 2)
!2402 = !DILocalVariable(name: "__rem", scope: !2401, file: !3, line: 130, type: !2375)
!2403 = !DILocation(line: 124, column: 56, scope: !2394)
!2404 = !DILocation(line: 125, column: 31, scope: !2394)
!2405 = !DILocation(line: 126, column: 12, scope: !2394)
!2406 = !DILocation(line: 128, column: 2, scope: !2394)
!2407 = !DILocation(line: 128, column: 6, scope: !2394)
!2408 = !DILocation(line: 128, column: 35, scope: !2394)
!2409 = !DILocation(line: 128, column: 12, scope: !2394)
!2410 = !DILocation(line: 130, column: 2, scope: !2401)
!2411 = !DILocation(line: 130, column: 2, scope: !2394)
!2412 = !DILocation(line: 132, column: 20, scope: !2394)
!2413 = !DILocation(line: 132, column: 35, scope: !2394)
!2414 = !DILocation(line: 132, column: 9, scope: !2394)
!2415 = !DILocation(line: 133, column: 1, scope: !2394)
!2416 = !DILocation(line: 132, column: 2, scope: !2394)
!2417 = !DISubprogram(name: "pm_runtime_active_time", scope: !1362, file: !1362, line: 24, type: !2392, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2418 = distinct !DISubprogram(name: "autosuspend_delay_ms_show", scope: !3, file: !3, line: 182, type: !812, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2419)
!2419 = !{!2420, !2421, !2422}
!2420 = !DILocalVariable(name: "dev", arg: 1, scope: !2418, file: !3, line: 182, type: !814)
!2421 = !DILocalVariable(name: "attr", arg: 2, scope: !2418, file: !3, line: 183, type: !1696)
!2422 = !DILocalVariable(name: "buf", arg: 3, scope: !2418, file: !3, line: 184, type: !229)
!2423 = !DILocation(line: 182, column: 57, scope: !2418)
!2424 = !DILocation(line: 183, column: 32, scope: !2418)
!2425 = !DILocation(line: 184, column: 13, scope: !2418)
!2426 = !DILocation(line: 186, column: 7, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2418, file: !3, line: 186, column: 6)
!2428 = !DILocation(line: 186, column: 12, scope: !2427)
!2429 = !DILocation(line: 186, column: 18, scope: !2427)
!2430 = !DILocation(line: 186, column: 6, scope: !2418)
!2431 = !DILocation(line: 187, column: 3, scope: !2427)
!2432 = !DILocation(line: 189, column: 20, scope: !2418)
!2433 = !DILocation(line: 189, column: 33, scope: !2418)
!2434 = !DILocation(line: 189, column: 38, scope: !2418)
!2435 = !DILocation(line: 189, column: 44, scope: !2418)
!2436 = !DILocation(line: 189, column: 9, scope: !2418)
!2437 = !DILocation(line: 189, column: 2, scope: !2418)
!2438 = !DILocation(line: 190, column: 1, scope: !2418)
!2439 = distinct !DISubprogram(name: "autosuspend_delay_ms_store", scope: !3, file: !3, line: 192, type: !1699, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2440)
!2440 = !{!2441, !2442, !2443, !2444, !2445}
!2441 = !DILocalVariable(name: "dev", arg: 1, scope: !2439, file: !3, line: 192, type: !814)
!2442 = !DILocalVariable(name: "attr", arg: 2, scope: !2439, file: !3, line: 193, type: !1696)
!2443 = !DILocalVariable(name: "buf", arg: 3, scope: !2439, file: !3, line: 193, type: !136)
!2444 = !DILocalVariable(name: "n", arg: 4, scope: !2439, file: !3, line: 193, type: !274)
!2445 = !DILocalVariable(name: "delay", scope: !2439, file: !3, line: 195, type: !264)
!2446 = !DILocation(line: 192, column: 58, scope: !2439)
!2447 = !DILocation(line: 193, column: 28, scope: !2439)
!2448 = !DILocation(line: 193, column: 46, scope: !2439)
!2449 = !DILocation(line: 193, column: 58, scope: !2439)
!2450 = !DILocation(line: 195, column: 2, scope: !2439)
!2451 = !DILocation(line: 195, column: 7, scope: !2439)
!2452 = !DILocation(line: 197, column: 7, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 197, column: 6)
!2454 = !DILocation(line: 197, column: 12, scope: !2453)
!2455 = !DILocation(line: 197, column: 18, scope: !2453)
!2456 = !DILocation(line: 197, column: 6, scope: !2439)
!2457 = !DILocation(line: 198, column: 3, scope: !2453)
!2458 = !DILocation(line: 200, column: 14, scope: !2459)
!2459 = distinct !DILexicalBlock(scope: !2439, file: !3, line: 200, column: 6)
!2460 = !DILocation(line: 200, column: 6, scope: !2459)
!2461 = !DILocation(line: 200, column: 31, scope: !2459)
!2462 = !DILocation(line: 200, column: 36, scope: !2459)
!2463 = !DILocation(line: 200, column: 39, scope: !2459)
!2464 = !DILocation(line: 200, column: 54, scope: !2459)
!2465 = !DILocation(line: 200, column: 48, scope: !2459)
!2466 = !DILocation(line: 200, column: 45, scope: !2459)
!2467 = !DILocation(line: 200, column: 6, scope: !2439)
!2468 = !DILocation(line: 201, column: 3, scope: !2459)
!2469 = !DILocation(line: 203, column: 14, scope: !2439)
!2470 = !DILocation(line: 203, column: 2, scope: !2439)
!2471 = !DILocation(line: 204, column: 35, scope: !2439)
!2472 = !DILocation(line: 204, column: 40, scope: !2439)
!2473 = !DILocation(line: 204, column: 2, scope: !2439)
!2474 = !DILocation(line: 205, column: 16, scope: !2439)
!2475 = !DILocation(line: 205, column: 2, scope: !2439)
!2476 = !DILocation(line: 206, column: 9, scope: !2439)
!2477 = !DILocation(line: 206, column: 2, scope: !2439)
!2478 = !DILocation(line: 207, column: 1, scope: !2439)
!2479 = distinct !DISubprogram(name: "kstrtol", scope: !2480, file: !2480, line: 58, type: !2481, scopeLine: 59, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2484)
!2480 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!46, !136, !7, !2483}
!2483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!2484 = !{!2485, !2486, !2487}
!2485 = !DILocalVariable(name: "s", arg: 1, scope: !2479, file: !2480, line: 58, type: !136)
!2486 = !DILocalVariable(name: "base", arg: 2, scope: !2479, file: !2480, line: 58, type: !7)
!2487 = !DILocalVariable(name: "res", arg: 3, scope: !2479, file: !2480, line: 58, type: !2483)
!2488 = !DILocation(line: 58, column: 52, scope: !2479)
!2489 = !DILocation(line: 58, column: 68, scope: !2479)
!2490 = !DILocation(line: 58, column: 80, scope: !2479)
!2491 = !DILocation(line: 66, column: 19, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2479, file: !2480, line: 64, column: 6)
!2493 = !DILocation(line: 66, column: 22, scope: !2492)
!2494 = !DILocation(line: 66, column: 41, scope: !2492)
!2495 = !DILocation(line: 66, column: 10, scope: !2492)
!2496 = !DILocation(line: 66, column: 3, scope: !2492)
!2497 = !DISubprogram(name: "pm_runtime_set_autosuspend_delay", scope: !2000, file: !2000, line: 86, type: !2498, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{null, !814, !46}
!2500 = !DISubprogram(name: "kstrtoll", scope: !2480, file: !2480, line: 13, type: !2501, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2501 = !DISubroutineType(types: !2502)
!2502 = !{!46, !136, !7, !120}
!2503 = distinct !DISubprogram(name: "wakeup_show", scope: !3, file: !3, line: 324, type: !812, scopeLine: 326, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2504)
!2504 = !{!2505, !2506, !2507}
!2505 = !DILocalVariable(name: "dev", arg: 1, scope: !2503, file: !3, line: 324, type: !814)
!2506 = !DILocalVariable(name: "attr", arg: 2, scope: !2503, file: !3, line: 324, type: !1696)
!2507 = !DILocalVariable(name: "buf", arg: 3, scope: !2503, file: !3, line: 325, type: !229)
!2508 = !DILocation(line: 324, column: 43, scope: !2503)
!2509 = !DILocation(line: 324, column: 73, scope: !2503)
!2510 = !DILocation(line: 325, column: 13, scope: !2503)
!2511 = !DILocation(line: 327, column: 20, scope: !2503)
!2512 = !DILocation(line: 327, column: 51, scope: !2503)
!2513 = !DILocation(line: 327, column: 33, scope: !2503)
!2514 = !DILocation(line: 328, column: 27, scope: !2503)
!2515 = !DILocation(line: 328, column: 9, scope: !2503)
!2516 = !DILocation(line: 327, column: 9, scope: !2503)
!2517 = !DILocation(line: 327, column: 2, scope: !2503)
!2518 = distinct !DISubprogram(name: "wakeup_store", scope: !3, file: !3, line: 332, type: !1699, scopeLine: 334, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2519)
!2519 = !{!2520, !2521, !2522, !2523}
!2520 = !DILocalVariable(name: "dev", arg: 1, scope: !2518, file: !3, line: 332, type: !814)
!2521 = !DILocalVariable(name: "attr", arg: 2, scope: !2518, file: !3, line: 332, type: !1696)
!2522 = !DILocalVariable(name: "buf", arg: 3, scope: !2518, file: !3, line: 333, type: !136)
!2523 = !DILocalVariable(name: "n", arg: 4, scope: !2518, file: !3, line: 333, type: !274)
!2524 = !DILocation(line: 332, column: 44, scope: !2518)
!2525 = !DILocation(line: 332, column: 74, scope: !2518)
!2526 = !DILocation(line: 333, column: 20, scope: !2518)
!2527 = !DILocation(line: 333, column: 32, scope: !2518)
!2528 = !DILocation(line: 335, column: 25, scope: !2529)
!2529 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 335, column: 6)
!2530 = !DILocation(line: 335, column: 7, scope: !2529)
!2531 = !DILocation(line: 335, column: 6, scope: !2518)
!2532 = !DILocation(line: 336, column: 3, scope: !2529)
!2533 = !DILocation(line: 338, column: 18, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2518, file: !3, line: 338, column: 6)
!2535 = !DILocation(line: 338, column: 6, scope: !2534)
!2536 = !DILocation(line: 338, column: 6, scope: !2518)
!2537 = !DILocation(line: 339, column: 28, scope: !2534)
!2538 = !DILocation(line: 339, column: 3, scope: !2534)
!2539 = !DILocation(line: 340, column: 23, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2534, file: !3, line: 340, column: 11)
!2541 = !DILocation(line: 340, column: 11, scope: !2540)
!2542 = !DILocation(line: 340, column: 11, scope: !2534)
!2543 = !DILocation(line: 341, column: 28, scope: !2540)
!2544 = !DILocation(line: 341, column: 3, scope: !2540)
!2545 = !DILocation(line: 343, column: 3, scope: !2540)
!2546 = !DILocation(line: 344, column: 9, scope: !2518)
!2547 = !DILocation(line: 344, column: 2, scope: !2518)
!2548 = !DILocation(line: 345, column: 1, scope: !2518)
!2549 = distinct !DISubprogram(name: "device_may_wakeup", scope: !1353, file: !1353, line: 82, type: !1987, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2550)
!2550 = !{!2551}
!2551 = !DILocalVariable(name: "dev", arg: 1, scope: !2549, file: !1353, line: 82, type: !814)
!2552 = !DILocation(line: 82, column: 53, scope: !2549)
!2553 = !DILocation(line: 84, column: 9, scope: !2549)
!2554 = !DILocation(line: 84, column: 14, scope: !2549)
!2555 = !DILocation(line: 84, column: 20, scope: !2549)
!2556 = !DILocation(line: 84, column: 31, scope: !2549)
!2557 = !DILocation(line: 84, column: 36, scope: !2549)
!2558 = !DILocation(line: 84, column: 41, scope: !2549)
!2559 = !DILocation(line: 84, column: 47, scope: !2549)
!2560 = !DILocation(line: 84, column: 35, scope: !2549)
!2561 = !DILocation(line: 84, column: 34, scope: !2549)
!2562 = !DILocation(line: 0, scope: !2549)
!2563 = !DILocation(line: 84, column: 2, scope: !2549)
!2564 = !DISubprogram(name: "device_set_wakeup_enable", scope: !1353, file: !1353, line: 112, type: !2565, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!46, !814, !294}
!2567 = distinct !DISubprogram(name: "wakeup_count_show", scope: !3, file: !3, line: 349, type: !812, scopeLine: 351, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2568)
!2568 = !{!2569, !2570, !2571, !2572, !2573}
!2569 = !DILocalVariable(name: "dev", arg: 1, scope: !2567, file: !3, line: 349, type: !814)
!2570 = !DILocalVariable(name: "attr", arg: 2, scope: !2567, file: !3, line: 350, type: !1696)
!2571 = !DILocalVariable(name: "buf", arg: 3, scope: !2567, file: !3, line: 350, type: !229)
!2572 = !DILocalVariable(name: "count", scope: !2567, file: !3, line: 352, type: !277)
!2573 = !DILocalVariable(name: "enabled", scope: !2567, file: !3, line: 353, type: !294)
!2574 = !DILocation(line: 349, column: 49, scope: !2567)
!2575 = !DILocation(line: 350, column: 31, scope: !2567)
!2576 = !DILocation(line: 350, column: 43, scope: !2567)
!2577 = !DILocation(line: 352, column: 2, scope: !2567)
!2578 = !DILocation(line: 352, column: 16, scope: !2567)
!2579 = !DILocation(line: 353, column: 2, scope: !2567)
!2580 = !DILocation(line: 353, column: 7, scope: !2567)
!2581 = !DILocation(line: 355, column: 17, scope: !2567)
!2582 = !DILocation(line: 355, column: 22, scope: !2567)
!2583 = !DILocation(line: 355, column: 28, scope: !2567)
!2584 = !DILocation(line: 355, column: 2, scope: !2567)
!2585 = !DILocation(line: 356, column: 6, scope: !2586)
!2586 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 356, column: 6)
!2587 = !DILocation(line: 356, column: 11, scope: !2586)
!2588 = !DILocation(line: 356, column: 17, scope: !2586)
!2589 = !DILocation(line: 356, column: 6, scope: !2567)
!2590 = !DILocation(line: 357, column: 11, scope: !2591)
!2591 = distinct !DILexicalBlock(scope: !2586, file: !3, line: 356, column: 25)
!2592 = !DILocation(line: 357, column: 16, scope: !2591)
!2593 = !DILocation(line: 357, column: 22, scope: !2591)
!2594 = !DILocation(line: 357, column: 30, scope: !2591)
!2595 = !DILocation(line: 357, column: 9, scope: !2591)
!2596 = !DILocation(line: 358, column: 11, scope: !2591)
!2597 = !DILocation(line: 359, column: 2, scope: !2591)
!2598 = !DILocation(line: 360, column: 19, scope: !2567)
!2599 = !DILocation(line: 360, column: 24, scope: !2567)
!2600 = !DILocation(line: 360, column: 30, scope: !2567)
!2601 = !DILocation(line: 360, column: 2, scope: !2567)
!2602 = !DILocation(line: 362, column: 7, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 362, column: 6)
!2604 = !{i8 0, i8 2}
!2605 = !DILocation(line: 362, column: 6, scope: !2567)
!2606 = !DILocation(line: 363, column: 21, scope: !2603)
!2607 = !DILocation(line: 363, column: 10, scope: !2603)
!2608 = !DILocation(line: 363, column: 3, scope: !2603)
!2609 = !DILocation(line: 364, column: 20, scope: !2567)
!2610 = !DILocation(line: 364, column: 34, scope: !2567)
!2611 = !DILocation(line: 364, column: 9, scope: !2567)
!2612 = !DILocation(line: 364, column: 2, scope: !2567)
!2613 = !DILocation(line: 365, column: 1, scope: !2567)
!2614 = distinct !DISubprogram(name: "spin_lock_irq", scope: !2615, file: !2615, line: 374, type: !2616, scopeLine: 375, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2619)
!2615 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9f843c9cb48d6467965c978c2db39580")
!2616 = !DISubroutineType(types: !2617)
!2617 = !{null, !2618}
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!2619 = !{!2620}
!2620 = !DILocalVariable(name: "lock", arg: 1, scope: !2614, file: !2615, line: 374, type: !2618)
!2621 = !DILocation(line: 374, column: 55, scope: !2614)
!2622 = !DILocation(line: 376, column: 2, scope: !2614)
!2623 = !DILocation(line: 377, column: 1, scope: !2614)
!2624 = distinct !DISubprogram(name: "spin_unlock_irq", scope: !2615, file: !2615, line: 399, type: !2616, scopeLine: 400, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2625)
!2625 = !{!2626}
!2626 = !DILocalVariable(name: "lock", arg: 1, scope: !2624, file: !2615, line: 399, type: !2618)
!2627 = !DILocation(line: 399, column: 57, scope: !2624)
!2628 = !DILocation(line: 401, column: 2, scope: !2624)
!2629 = !DILocation(line: 402, column: 1, scope: !2624)
!2630 = !DISubprogram(name: "_raw_spin_lock_irq", scope: !2631, file: !2631, line: 29, type: !2632, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2631 = !DIFile(filename: "./include/linux/spinlock_api_smp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c126a362806e9fbf82995d862da982c6")
!2632 = !DISubroutineType(types: !2633)
!2633 = !{null, !2634}
!2634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!2635 = !DISubprogram(name: "_raw_spin_unlock_irq", scope: !2631, file: !2631, line: 41, type: !2632, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2636 = distinct !DISubprogram(name: "wakeup_active_count_show", scope: !3, file: !3, line: 369, type: !812, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2637)
!2637 = !{!2638, !2639, !2640, !2641, !2642}
!2638 = !DILocalVariable(name: "dev", arg: 1, scope: !2636, file: !3, line: 369, type: !814)
!2639 = !DILocalVariable(name: "attr", arg: 2, scope: !2636, file: !3, line: 370, type: !1696)
!2640 = !DILocalVariable(name: "buf", arg: 3, scope: !2636, file: !3, line: 371, type: !229)
!2641 = !DILocalVariable(name: "count", scope: !2636, file: !3, line: 373, type: !277)
!2642 = !DILocalVariable(name: "enabled", scope: !2636, file: !3, line: 374, type: !294)
!2643 = !DILocation(line: 369, column: 56, scope: !2636)
!2644 = !DILocation(line: 370, column: 31, scope: !2636)
!2645 = !DILocation(line: 371, column: 12, scope: !2636)
!2646 = !DILocation(line: 373, column: 2, scope: !2636)
!2647 = !DILocation(line: 373, column: 16, scope: !2636)
!2648 = !DILocation(line: 374, column: 2, scope: !2636)
!2649 = !DILocation(line: 374, column: 7, scope: !2636)
!2650 = !DILocation(line: 376, column: 17, scope: !2636)
!2651 = !DILocation(line: 376, column: 22, scope: !2636)
!2652 = !DILocation(line: 376, column: 28, scope: !2636)
!2653 = !DILocation(line: 376, column: 2, scope: !2636)
!2654 = !DILocation(line: 377, column: 6, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 377, column: 6)
!2656 = !DILocation(line: 377, column: 11, scope: !2655)
!2657 = !DILocation(line: 377, column: 17, scope: !2655)
!2658 = !DILocation(line: 377, column: 6, scope: !2636)
!2659 = !DILocation(line: 378, column: 11, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2655, file: !3, line: 377, column: 25)
!2661 = !DILocation(line: 378, column: 16, scope: !2660)
!2662 = !DILocation(line: 378, column: 22, scope: !2660)
!2663 = !DILocation(line: 378, column: 30, scope: !2660)
!2664 = !DILocation(line: 378, column: 9, scope: !2660)
!2665 = !DILocation(line: 379, column: 11, scope: !2660)
!2666 = !DILocation(line: 380, column: 2, scope: !2660)
!2667 = !DILocation(line: 381, column: 19, scope: !2636)
!2668 = !DILocation(line: 381, column: 24, scope: !2636)
!2669 = !DILocation(line: 381, column: 30, scope: !2636)
!2670 = !DILocation(line: 381, column: 2, scope: !2636)
!2671 = !DILocation(line: 383, column: 7, scope: !2672)
!2672 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 383, column: 6)
!2673 = !DILocation(line: 383, column: 6, scope: !2636)
!2674 = !DILocation(line: 384, column: 21, scope: !2672)
!2675 = !DILocation(line: 384, column: 10, scope: !2672)
!2676 = !DILocation(line: 384, column: 3, scope: !2672)
!2677 = !DILocation(line: 385, column: 20, scope: !2636)
!2678 = !DILocation(line: 385, column: 34, scope: !2636)
!2679 = !DILocation(line: 385, column: 9, scope: !2636)
!2680 = !DILocation(line: 385, column: 2, scope: !2636)
!2681 = !DILocation(line: 386, column: 1, scope: !2636)
!2682 = distinct !DISubprogram(name: "wakeup_abort_count_show", scope: !3, file: !3, line: 390, type: !812, scopeLine: 393, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2683)
!2683 = !{!2684, !2685, !2686, !2687, !2688}
!2684 = !DILocalVariable(name: "dev", arg: 1, scope: !2682, file: !3, line: 390, type: !814)
!2685 = !DILocalVariable(name: "attr", arg: 2, scope: !2682, file: !3, line: 391, type: !1696)
!2686 = !DILocalVariable(name: "buf", arg: 3, scope: !2682, file: !3, line: 392, type: !229)
!2687 = !DILocalVariable(name: "count", scope: !2682, file: !3, line: 394, type: !277)
!2688 = !DILocalVariable(name: "enabled", scope: !2682, file: !3, line: 395, type: !294)
!2689 = !DILocation(line: 390, column: 55, scope: !2682)
!2690 = !DILocation(line: 391, column: 37, scope: !2682)
!2691 = !DILocation(line: 392, column: 18, scope: !2682)
!2692 = !DILocation(line: 394, column: 2, scope: !2682)
!2693 = !DILocation(line: 394, column: 16, scope: !2682)
!2694 = !DILocation(line: 395, column: 2, scope: !2682)
!2695 = !DILocation(line: 395, column: 7, scope: !2682)
!2696 = !DILocation(line: 397, column: 17, scope: !2682)
!2697 = !DILocation(line: 397, column: 22, scope: !2682)
!2698 = !DILocation(line: 397, column: 28, scope: !2682)
!2699 = !DILocation(line: 397, column: 2, scope: !2682)
!2700 = !DILocation(line: 398, column: 6, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2682, file: !3, line: 398, column: 6)
!2702 = !DILocation(line: 398, column: 11, scope: !2701)
!2703 = !DILocation(line: 398, column: 17, scope: !2701)
!2704 = !DILocation(line: 398, column: 6, scope: !2682)
!2705 = !DILocation(line: 399, column: 11, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2701, file: !3, line: 398, column: 25)
!2707 = !DILocation(line: 399, column: 16, scope: !2706)
!2708 = !DILocation(line: 399, column: 22, scope: !2706)
!2709 = !DILocation(line: 399, column: 30, scope: !2706)
!2710 = !DILocation(line: 399, column: 9, scope: !2706)
!2711 = !DILocation(line: 400, column: 11, scope: !2706)
!2712 = !DILocation(line: 401, column: 2, scope: !2706)
!2713 = !DILocation(line: 402, column: 19, scope: !2682)
!2714 = !DILocation(line: 402, column: 24, scope: !2682)
!2715 = !DILocation(line: 402, column: 30, scope: !2682)
!2716 = !DILocation(line: 402, column: 2, scope: !2682)
!2717 = !DILocation(line: 404, column: 7, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2682, file: !3, line: 404, column: 6)
!2719 = !DILocation(line: 404, column: 6, scope: !2682)
!2720 = !DILocation(line: 405, column: 21, scope: !2718)
!2721 = !DILocation(line: 405, column: 10, scope: !2718)
!2722 = !DILocation(line: 405, column: 3, scope: !2718)
!2723 = !DILocation(line: 406, column: 20, scope: !2682)
!2724 = !DILocation(line: 406, column: 34, scope: !2682)
!2725 = !DILocation(line: 406, column: 9, scope: !2682)
!2726 = !DILocation(line: 406, column: 2, scope: !2682)
!2727 = !DILocation(line: 407, column: 1, scope: !2682)
!2728 = distinct !DISubprogram(name: "wakeup_expire_count_show", scope: !3, file: !3, line: 411, type: !812, scopeLine: 414, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2729)
!2729 = !{!2730, !2731, !2732, !2733, !2734}
!2730 = !DILocalVariable(name: "dev", arg: 1, scope: !2728, file: !3, line: 411, type: !814)
!2731 = !DILocalVariable(name: "attr", arg: 2, scope: !2728, file: !3, line: 412, type: !1696)
!2732 = !DILocalVariable(name: "buf", arg: 3, scope: !2728, file: !3, line: 413, type: !229)
!2733 = !DILocalVariable(name: "count", scope: !2728, file: !3, line: 415, type: !277)
!2734 = !DILocalVariable(name: "enabled", scope: !2728, file: !3, line: 416, type: !294)
!2735 = !DILocation(line: 411, column: 56, scope: !2728)
!2736 = !DILocation(line: 412, column: 31, scope: !2728)
!2737 = !DILocation(line: 413, column: 12, scope: !2728)
!2738 = !DILocation(line: 415, column: 2, scope: !2728)
!2739 = !DILocation(line: 415, column: 16, scope: !2728)
!2740 = !DILocation(line: 416, column: 2, scope: !2728)
!2741 = !DILocation(line: 416, column: 7, scope: !2728)
!2742 = !DILocation(line: 418, column: 17, scope: !2728)
!2743 = !DILocation(line: 418, column: 22, scope: !2728)
!2744 = !DILocation(line: 418, column: 28, scope: !2728)
!2745 = !DILocation(line: 418, column: 2, scope: !2728)
!2746 = !DILocation(line: 419, column: 6, scope: !2747)
!2747 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 419, column: 6)
!2748 = !DILocation(line: 419, column: 11, scope: !2747)
!2749 = !DILocation(line: 419, column: 17, scope: !2747)
!2750 = !DILocation(line: 419, column: 6, scope: !2728)
!2751 = !DILocation(line: 420, column: 11, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2747, file: !3, line: 419, column: 25)
!2753 = !DILocation(line: 420, column: 16, scope: !2752)
!2754 = !DILocation(line: 420, column: 22, scope: !2752)
!2755 = !DILocation(line: 420, column: 30, scope: !2752)
!2756 = !DILocation(line: 420, column: 9, scope: !2752)
!2757 = !DILocation(line: 421, column: 11, scope: !2752)
!2758 = !DILocation(line: 422, column: 2, scope: !2752)
!2759 = !DILocation(line: 423, column: 19, scope: !2728)
!2760 = !DILocation(line: 423, column: 24, scope: !2728)
!2761 = !DILocation(line: 423, column: 30, scope: !2728)
!2762 = !DILocation(line: 423, column: 2, scope: !2728)
!2763 = !DILocation(line: 425, column: 7, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 425, column: 6)
!2765 = !DILocation(line: 425, column: 6, scope: !2728)
!2766 = !DILocation(line: 426, column: 21, scope: !2764)
!2767 = !DILocation(line: 426, column: 10, scope: !2764)
!2768 = !DILocation(line: 426, column: 3, scope: !2764)
!2769 = !DILocation(line: 427, column: 20, scope: !2728)
!2770 = !DILocation(line: 427, column: 34, scope: !2728)
!2771 = !DILocation(line: 427, column: 9, scope: !2728)
!2772 = !DILocation(line: 427, column: 2, scope: !2728)
!2773 = !DILocation(line: 428, column: 1, scope: !2728)
!2774 = distinct !DISubprogram(name: "wakeup_active_show", scope: !3, file: !3, line: 432, type: !812, scopeLine: 434, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2775)
!2775 = !{!2776, !2777, !2778, !2779, !2780}
!2776 = !DILocalVariable(name: "dev", arg: 1, scope: !2774, file: !3, line: 432, type: !814)
!2777 = !DILocalVariable(name: "attr", arg: 2, scope: !2774, file: !3, line: 433, type: !1696)
!2778 = !DILocalVariable(name: "buf", arg: 3, scope: !2774, file: !3, line: 433, type: !229)
!2779 = !DILocalVariable(name: "active", scope: !2774, file: !3, line: 435, type: !7)
!2780 = !DILocalVariable(name: "enabled", scope: !2774, file: !3, line: 436, type: !294)
!2781 = !DILocation(line: 432, column: 50, scope: !2774)
!2782 = !DILocation(line: 433, column: 32, scope: !2774)
!2783 = !DILocation(line: 433, column: 44, scope: !2774)
!2784 = !DILocation(line: 435, column: 2, scope: !2774)
!2785 = !DILocation(line: 435, column: 15, scope: !2774)
!2786 = !DILocation(line: 436, column: 2, scope: !2774)
!2787 = !DILocation(line: 436, column: 7, scope: !2774)
!2788 = !DILocation(line: 438, column: 17, scope: !2774)
!2789 = !DILocation(line: 438, column: 22, scope: !2774)
!2790 = !DILocation(line: 438, column: 28, scope: !2774)
!2791 = !DILocation(line: 438, column: 2, scope: !2774)
!2792 = !DILocation(line: 439, column: 6, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 439, column: 6)
!2794 = !DILocation(line: 439, column: 11, scope: !2793)
!2795 = !DILocation(line: 439, column: 17, scope: !2793)
!2796 = !DILocation(line: 439, column: 6, scope: !2774)
!2797 = !DILocation(line: 440, column: 12, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 439, column: 25)
!2799 = !DILocation(line: 440, column: 17, scope: !2798)
!2800 = !DILocation(line: 440, column: 23, scope: !2798)
!2801 = !DILocation(line: 440, column: 31, scope: !2798)
!2802 = !DILocation(line: 440, column: 10, scope: !2798)
!2803 = !DILocation(line: 441, column: 11, scope: !2798)
!2804 = !DILocation(line: 442, column: 2, scope: !2798)
!2805 = !DILocation(line: 443, column: 19, scope: !2774)
!2806 = !DILocation(line: 443, column: 24, scope: !2774)
!2807 = !DILocation(line: 443, column: 30, scope: !2774)
!2808 = !DILocation(line: 443, column: 2, scope: !2774)
!2809 = !DILocation(line: 445, column: 7, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 445, column: 6)
!2811 = !DILocation(line: 445, column: 6, scope: !2774)
!2812 = !DILocation(line: 446, column: 21, scope: !2810)
!2813 = !DILocation(line: 446, column: 10, scope: !2810)
!2814 = !DILocation(line: 446, column: 3, scope: !2810)
!2815 = !DILocation(line: 447, column: 20, scope: !2774)
!2816 = !DILocation(line: 447, column: 33, scope: !2774)
!2817 = !DILocation(line: 447, column: 9, scope: !2774)
!2818 = !DILocation(line: 447, column: 2, scope: !2774)
!2819 = !DILocation(line: 448, column: 1, scope: !2774)
!2820 = distinct !DISubprogram(name: "wakeup_total_time_ms_show", scope: !3, file: !3, line: 452, type: !812, scopeLine: 455, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2821)
!2821 = !{!2822, !2823, !2824, !2825, !2826}
!2822 = !DILocalVariable(name: "dev", arg: 1, scope: !2820, file: !3, line: 452, type: !814)
!2823 = !DILocalVariable(name: "attr", arg: 2, scope: !2820, file: !3, line: 453, type: !1696)
!2824 = !DILocalVariable(name: "buf", arg: 3, scope: !2820, file: !3, line: 454, type: !229)
!2825 = !DILocalVariable(name: "msec", scope: !2820, file: !3, line: 456, type: !413)
!2826 = !DILocalVariable(name: "enabled", scope: !2820, file: !3, line: 457, type: !294)
!2827 = !DILocation(line: 452, column: 57, scope: !2820)
!2828 = !DILocation(line: 453, column: 32, scope: !2820)
!2829 = !DILocation(line: 454, column: 13, scope: !2820)
!2830 = !DILocation(line: 456, column: 2, scope: !2820)
!2831 = !DILocation(line: 456, column: 6, scope: !2820)
!2832 = !DILocation(line: 457, column: 2, scope: !2820)
!2833 = !DILocation(line: 457, column: 7, scope: !2820)
!2834 = !DILocation(line: 459, column: 17, scope: !2820)
!2835 = !DILocation(line: 459, column: 22, scope: !2820)
!2836 = !DILocation(line: 459, column: 28, scope: !2820)
!2837 = !DILocation(line: 459, column: 2, scope: !2820)
!2838 = !DILocation(line: 460, column: 6, scope: !2839)
!2839 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 460, column: 6)
!2840 = !DILocation(line: 460, column: 11, scope: !2839)
!2841 = !DILocation(line: 460, column: 17, scope: !2839)
!2842 = !DILocation(line: 460, column: 6, scope: !2820)
!2843 = !DILocation(line: 461, column: 22, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2839, file: !3, line: 460, column: 25)
!2845 = !DILocation(line: 461, column: 27, scope: !2844)
!2846 = !DILocation(line: 461, column: 33, scope: !2844)
!2847 = !DILocation(line: 461, column: 41, scope: !2844)
!2848 = !DILocation(line: 461, column: 10, scope: !2844)
!2849 = !DILocation(line: 461, column: 8, scope: !2844)
!2850 = !DILocation(line: 462, column: 11, scope: !2844)
!2851 = !DILocation(line: 463, column: 2, scope: !2844)
!2852 = !DILocation(line: 464, column: 19, scope: !2820)
!2853 = !DILocation(line: 464, column: 24, scope: !2820)
!2854 = !DILocation(line: 464, column: 30, scope: !2820)
!2855 = !DILocation(line: 464, column: 2, scope: !2820)
!2856 = !DILocation(line: 466, column: 7, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2820, file: !3, line: 466, column: 6)
!2858 = !DILocation(line: 466, column: 6, scope: !2820)
!2859 = !DILocation(line: 467, column: 21, scope: !2857)
!2860 = !DILocation(line: 467, column: 10, scope: !2857)
!2861 = !DILocation(line: 467, column: 3, scope: !2857)
!2862 = !DILocation(line: 468, column: 20, scope: !2820)
!2863 = !DILocation(line: 468, column: 35, scope: !2820)
!2864 = !DILocation(line: 468, column: 9, scope: !2820)
!2865 = !DILocation(line: 468, column: 2, scope: !2820)
!2866 = !DILocation(line: 469, column: 1, scope: !2820)
!2867 = distinct !DISubprogram(name: "ktime_to_ms", scope: !1372, file: !1372, line: 164, type: !2868, scopeLine: 165, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2871)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!413, !2870}
!2870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1371)
!2871 = !{!2872}
!2872 = !DILocalVariable(name: "kt", arg: 1, scope: !2867, file: !1372, line: 164, type: !2870)
!2873 = !DILocation(line: 164, column: 45, scope: !2867)
!2874 = !DILocation(line: 166, column: 21, scope: !2867)
!2875 = !DILocation(line: 166, column: 9, scope: !2867)
!2876 = !DILocation(line: 166, column: 2, scope: !2867)
!2877 = distinct !DISubprogram(name: "ktime_divns", scope: !1372, file: !1372, line: 148, type: !2878, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2880)
!2878 = !DISubroutineType(types: !2879)
!2879 = !{!413, !2870, !413}
!2880 = !{!2881, !2882, !2883, !2885}
!2881 = !DILocalVariable(name: "kt", arg: 1, scope: !2877, file: !1372, line: 148, type: !2870)
!2882 = !DILocalVariable(name: "div", arg: 2, scope: !2877, file: !1372, line: 148, type: !413)
!2883 = !DILocalVariable(name: "__ret_warn_on", scope: !2884, file: !1372, line: 154, type: !46)
!2884 = distinct !DILexicalBlock(scope: !2877, file: !1372, line: 154, column: 2)
!2885 = !DILocalVariable(name: "__flags", scope: !2886, file: !1372, line: 154, type: !46)
!2886 = distinct !DILexicalBlock(scope: !2887, file: !1372, line: 154, column: 2)
!2887 = distinct !DILexicalBlock(scope: !2884, file: !1372, line: 154, column: 2)
!2888 = !DILocation(line: 148, column: 45, scope: !2877)
!2889 = !DILocation(line: 148, column: 53, scope: !2877)
!2890 = !DILocation(line: 154, column: 2, scope: !2884)
!2891 = !DILocation(line: 154, column: 2, scope: !2887)
!2892 = !DILocation(line: 154, column: 2, scope: !2886)
!2893 = !DILocation(line: 154, column: 2, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2886, file: !1372, line: 154, column: 2)
!2895 = !DILocation(line: 154, column: 2, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2886, file: !1372, line: 154, column: 2)
!2897 = !{i64 2150371777, i64 2150371806, i64 2150371852, i64 2150371910, i64 2150371964, i64 2150372018, i64 2150372073, i64 2150372104, i64 2150372412, i64 2150372418, i64 2150372465, i64 2150372488, i64 2150372514}
!2898 = !DILocation(line: 154, column: 2, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2886, file: !1372, line: 154, column: 2)
!2900 = !DILocation(line: 154, column: 2, scope: !2877)
!2901 = !DILocation(line: 155, column: 9, scope: !2877)
!2902 = !DILocation(line: 155, column: 14, scope: !2877)
!2903 = !DILocation(line: 155, column: 12, scope: !2877)
!2904 = !DILocation(line: 155, column: 2, scope: !2877)
!2905 = distinct !DISubprogram(name: "wakeup_max_time_ms_show", scope: !3, file: !3, line: 473, type: !812, scopeLine: 475, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2906)
!2906 = !{!2907, !2908, !2909, !2910, !2911}
!2907 = !DILocalVariable(name: "dev", arg: 1, scope: !2905, file: !3, line: 473, type: !814)
!2908 = !DILocalVariable(name: "attr", arg: 2, scope: !2905, file: !3, line: 474, type: !1696)
!2909 = !DILocalVariable(name: "buf", arg: 3, scope: !2905, file: !3, line: 474, type: !229)
!2910 = !DILocalVariable(name: "msec", scope: !2905, file: !3, line: 476, type: !413)
!2911 = !DILocalVariable(name: "enabled", scope: !2905, file: !3, line: 477, type: !294)
!2912 = !DILocation(line: 473, column: 55, scope: !2905)
!2913 = !DILocation(line: 474, column: 37, scope: !2905)
!2914 = !DILocation(line: 474, column: 49, scope: !2905)
!2915 = !DILocation(line: 476, column: 2, scope: !2905)
!2916 = !DILocation(line: 476, column: 6, scope: !2905)
!2917 = !DILocation(line: 477, column: 2, scope: !2905)
!2918 = !DILocation(line: 477, column: 7, scope: !2905)
!2919 = !DILocation(line: 479, column: 17, scope: !2905)
!2920 = !DILocation(line: 479, column: 22, scope: !2905)
!2921 = !DILocation(line: 479, column: 28, scope: !2905)
!2922 = !DILocation(line: 479, column: 2, scope: !2905)
!2923 = !DILocation(line: 480, column: 6, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2905, file: !3, line: 480, column: 6)
!2925 = !DILocation(line: 480, column: 11, scope: !2924)
!2926 = !DILocation(line: 480, column: 17, scope: !2924)
!2927 = !DILocation(line: 480, column: 6, scope: !2905)
!2928 = !DILocation(line: 481, column: 22, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2924, file: !3, line: 480, column: 25)
!2930 = !DILocation(line: 481, column: 27, scope: !2929)
!2931 = !DILocation(line: 481, column: 33, scope: !2929)
!2932 = !DILocation(line: 481, column: 41, scope: !2929)
!2933 = !DILocation(line: 481, column: 10, scope: !2929)
!2934 = !DILocation(line: 481, column: 8, scope: !2929)
!2935 = !DILocation(line: 482, column: 11, scope: !2929)
!2936 = !DILocation(line: 483, column: 2, scope: !2929)
!2937 = !DILocation(line: 484, column: 19, scope: !2905)
!2938 = !DILocation(line: 484, column: 24, scope: !2905)
!2939 = !DILocation(line: 484, column: 30, scope: !2905)
!2940 = !DILocation(line: 484, column: 2, scope: !2905)
!2941 = !DILocation(line: 486, column: 7, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2905, file: !3, line: 486, column: 6)
!2943 = !DILocation(line: 486, column: 6, scope: !2905)
!2944 = !DILocation(line: 487, column: 21, scope: !2942)
!2945 = !DILocation(line: 487, column: 10, scope: !2942)
!2946 = !DILocation(line: 487, column: 3, scope: !2942)
!2947 = !DILocation(line: 488, column: 20, scope: !2905)
!2948 = !DILocation(line: 488, column: 35, scope: !2905)
!2949 = !DILocation(line: 488, column: 9, scope: !2905)
!2950 = !DILocation(line: 488, column: 2, scope: !2905)
!2951 = !DILocation(line: 489, column: 1, scope: !2905)
!2952 = distinct !DISubprogram(name: "wakeup_last_time_ms_show", scope: !3, file: !3, line: 493, type: !812, scopeLine: 496, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2953)
!2953 = !{!2954, !2955, !2956, !2957, !2958}
!2954 = !DILocalVariable(name: "dev", arg: 1, scope: !2952, file: !3, line: 493, type: !814)
!2955 = !DILocalVariable(name: "attr", arg: 2, scope: !2952, file: !3, line: 494, type: !1696)
!2956 = !DILocalVariable(name: "buf", arg: 3, scope: !2952, file: !3, line: 495, type: !229)
!2957 = !DILocalVariable(name: "msec", scope: !2952, file: !3, line: 497, type: !413)
!2958 = !DILocalVariable(name: "enabled", scope: !2952, file: !3, line: 498, type: !294)
!2959 = !DILocation(line: 493, column: 56, scope: !2952)
!2960 = !DILocation(line: 494, column: 31, scope: !2952)
!2961 = !DILocation(line: 495, column: 12, scope: !2952)
!2962 = !DILocation(line: 497, column: 2, scope: !2952)
!2963 = !DILocation(line: 497, column: 6, scope: !2952)
!2964 = !DILocation(line: 498, column: 2, scope: !2952)
!2965 = !DILocation(line: 498, column: 7, scope: !2952)
!2966 = !DILocation(line: 500, column: 17, scope: !2952)
!2967 = !DILocation(line: 500, column: 22, scope: !2952)
!2968 = !DILocation(line: 500, column: 28, scope: !2952)
!2969 = !DILocation(line: 500, column: 2, scope: !2952)
!2970 = !DILocation(line: 501, column: 6, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 501, column: 6)
!2972 = !DILocation(line: 501, column: 11, scope: !2971)
!2973 = !DILocation(line: 501, column: 17, scope: !2971)
!2974 = !DILocation(line: 501, column: 6, scope: !2952)
!2975 = !DILocation(line: 502, column: 22, scope: !2976)
!2976 = distinct !DILexicalBlock(scope: !2971, file: !3, line: 501, column: 25)
!2977 = !DILocation(line: 502, column: 27, scope: !2976)
!2978 = !DILocation(line: 502, column: 33, scope: !2976)
!2979 = !DILocation(line: 502, column: 41, scope: !2976)
!2980 = !DILocation(line: 502, column: 10, scope: !2976)
!2981 = !DILocation(line: 502, column: 8, scope: !2976)
!2982 = !DILocation(line: 503, column: 11, scope: !2976)
!2983 = !DILocation(line: 504, column: 2, scope: !2976)
!2984 = !DILocation(line: 505, column: 19, scope: !2952)
!2985 = !DILocation(line: 505, column: 24, scope: !2952)
!2986 = !DILocation(line: 505, column: 30, scope: !2952)
!2987 = !DILocation(line: 505, column: 2, scope: !2952)
!2988 = !DILocation(line: 507, column: 7, scope: !2989)
!2989 = distinct !DILexicalBlock(scope: !2952, file: !3, line: 507, column: 6)
!2990 = !DILocation(line: 507, column: 6, scope: !2952)
!2991 = !DILocation(line: 508, column: 21, scope: !2989)
!2992 = !DILocation(line: 508, column: 10, scope: !2989)
!2993 = !DILocation(line: 508, column: 3, scope: !2989)
!2994 = !DILocation(line: 509, column: 20, scope: !2952)
!2995 = !DILocation(line: 509, column: 35, scope: !2952)
!2996 = !DILocation(line: 509, column: 9, scope: !2952)
!2997 = !DILocation(line: 509, column: 2, scope: !2952)
!2998 = !DILocation(line: 510, column: 1, scope: !2952)
!2999 = distinct !DISubprogram(name: "pm_qos_latency_tolerance_us_show", scope: !3, file: !3, line: 255, type: !812, scopeLine: 258, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3000)
!3000 = !{!3001, !3002, !3003, !3004}
!3001 = !DILocalVariable(name: "dev", arg: 1, scope: !2999, file: !3, line: 255, type: !814)
!3002 = !DILocalVariable(name: "attr", arg: 2, scope: !2999, file: !3, line: 256, type: !1696)
!3003 = !DILocalVariable(name: "buf", arg: 3, scope: !2999, file: !3, line: 257, type: !229)
!3004 = !DILocalVariable(name: "value", scope: !2999, file: !3, line: 259, type: !122)
!3005 = !DILocation(line: 255, column: 64, scope: !2999)
!3006 = !DILocation(line: 256, column: 32, scope: !2999)
!3007 = !DILocation(line: 257, column: 13, scope: !2999)
!3008 = !DILocation(line: 259, column: 2, scope: !2999)
!3009 = !DILocation(line: 259, column: 6, scope: !2999)
!3010 = !DILocation(line: 259, column: 52, scope: !2999)
!3011 = !DILocation(line: 259, column: 14, scope: !2999)
!3012 = !DILocation(line: 261, column: 6, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !2999, file: !3, line: 261, column: 6)
!3014 = !DILocation(line: 261, column: 12, scope: !3013)
!3015 = !DILocation(line: 261, column: 6, scope: !2999)
!3016 = !DILocation(line: 262, column: 21, scope: !3013)
!3017 = !DILocation(line: 262, column: 10, scope: !3013)
!3018 = !DILocation(line: 262, column: 3, scope: !3013)
!3019 = !DILocation(line: 263, column: 6, scope: !3020)
!3020 = distinct !DILexicalBlock(scope: !2999, file: !3, line: 263, column: 6)
!3021 = !DILocation(line: 263, column: 12, scope: !3020)
!3022 = !DILocation(line: 263, column: 6, scope: !2999)
!3023 = !DILocation(line: 264, column: 21, scope: !3020)
!3024 = !DILocation(line: 264, column: 10, scope: !3020)
!3025 = !DILocation(line: 264, column: 3, scope: !3020)
!3026 = !DILocation(line: 266, column: 20, scope: !2999)
!3027 = !DILocation(line: 266, column: 33, scope: !2999)
!3028 = !DILocation(line: 266, column: 9, scope: !2999)
!3029 = !DILocation(line: 266, column: 2, scope: !2999)
!3030 = !DILocation(line: 267, column: 1, scope: !2999)
!3031 = distinct !DISubprogram(name: "pm_qos_latency_tolerance_us_store", scope: !3, file: !3, line: 269, type: !1699, scopeLine: 272, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3032)
!3032 = !{!3033, !3034, !3035, !3036, !3037, !3038}
!3033 = !DILocalVariable(name: "dev", arg: 1, scope: !3031, file: !3, line: 269, type: !814)
!3034 = !DILocalVariable(name: "attr", arg: 2, scope: !3031, file: !3, line: 270, type: !1696)
!3035 = !DILocalVariable(name: "buf", arg: 3, scope: !3031, file: !3, line: 271, type: !136)
!3036 = !DILocalVariable(name: "n", arg: 4, scope: !3031, file: !3, line: 271, type: !274)
!3037 = !DILocalVariable(name: "value", scope: !3031, file: !3, line: 273, type: !122)
!3038 = !DILocalVariable(name: "ret", scope: !3031, file: !3, line: 274, type: !46)
!3039 = !DILocation(line: 269, column: 65, scope: !3031)
!3040 = !DILocation(line: 270, column: 33, scope: !3031)
!3041 = !DILocation(line: 271, column: 20, scope: !3031)
!3042 = !DILocation(line: 271, column: 32, scope: !3031)
!3043 = !DILocation(line: 273, column: 2, scope: !3031)
!3044 = !DILocation(line: 273, column: 6, scope: !3031)
!3045 = !DILocation(line: 274, column: 2, scope: !3031)
!3046 = !DILocation(line: 274, column: 6, scope: !3031)
!3047 = !DILocation(line: 276, column: 16, scope: !3048)
!3048 = distinct !DILexicalBlock(scope: !3031, file: !3, line: 276, column: 6)
!3049 = !DILocation(line: 276, column: 6, scope: !3048)
!3050 = !DILocation(line: 276, column: 32, scope: !3048)
!3051 = !DILocation(line: 276, column: 6, scope: !3031)
!3052 = !DILocation(line: 278, column: 7, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 278, column: 7)
!3054 = distinct !DILexicalBlock(scope: !3048, file: !3, line: 276, column: 38)
!3055 = !DILocation(line: 278, column: 13, scope: !3053)
!3056 = !DILocation(line: 278, column: 7, scope: !3054)
!3057 = !DILocation(line: 279, column: 4, scope: !3053)
!3058 = !DILocation(line: 280, column: 2, scope: !3054)
!3059 = !DILocation(line: 281, column: 19, scope: !3060)
!3060 = distinct !DILexicalBlock(scope: !3061, file: !3, line: 281, column: 7)
!3061 = distinct !DILexicalBlock(scope: !3048, file: !3, line: 280, column: 9)
!3062 = !DILocation(line: 281, column: 7, scope: !3060)
!3063 = !DILocation(line: 281, column: 7, scope: !3061)
!3064 = !DILocation(line: 282, column: 10, scope: !3060)
!3065 = !DILocation(line: 282, column: 4, scope: !3060)
!3066 = !DILocation(line: 283, column: 24, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3060, file: !3, line: 283, column: 12)
!3068 = !DILocation(line: 283, column: 12, scope: !3067)
!3069 = !DILocation(line: 283, column: 12, scope: !3060)
!3070 = !DILocation(line: 284, column: 10, scope: !3067)
!3071 = !DILocation(line: 284, column: 4, scope: !3067)
!3072 = !DILocation(line: 286, column: 4, scope: !3067)
!3073 = !DILocation(line: 288, column: 49, scope: !3031)
!3074 = !DILocation(line: 288, column: 54, scope: !3031)
!3075 = !DILocation(line: 288, column: 8, scope: !3031)
!3076 = !DILocation(line: 288, column: 6, scope: !3031)
!3077 = !DILocation(line: 289, column: 9, scope: !3031)
!3078 = !DILocation(line: 289, column: 13, scope: !3031)
!3079 = !DILocation(line: 289, column: 19, scope: !3031)
!3080 = !DILocation(line: 289, column: 25, scope: !3031)
!3081 = !DILocation(line: 289, column: 2, scope: !3031)
!3082 = !DILocation(line: 290, column: 1, scope: !3031)
!3083 = !DISubprogram(name: "dev_pm_qos_get_user_latency_tolerance", scope: !54, file: !54, line: 190, type: !3084, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3084 = !DISubroutineType(types: !3085)
!3085 = !{!122, !814}
!3086 = distinct !DISubprogram(name: "kstrtos32", scope: !2480, file: !2480, line: 89, type: !3087, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3089)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!46, !136, !7, !602}
!3089 = !{!3090, !3091, !3092}
!3090 = !DILocalVariable(name: "s", arg: 1, scope: !3086, file: !2480, line: 89, type: !136)
!3091 = !DILocalVariable(name: "base", arg: 2, scope: !3086, file: !2480, line: 89, type: !7)
!3092 = !DILocalVariable(name: "res", arg: 3, scope: !3086, file: !2480, line: 89, type: !602)
!3093 = !DILocation(line: 89, column: 54, scope: !3086)
!3094 = !DILocation(line: 89, column: 70, scope: !3086)
!3095 = !DILocation(line: 89, column: 81, scope: !3086)
!3096 = !DILocation(line: 91, column: 19, scope: !3086)
!3097 = !DILocation(line: 91, column: 22, scope: !3086)
!3098 = !DILocation(line: 91, column: 28, scope: !3086)
!3099 = !DILocation(line: 91, column: 9, scope: !3086)
!3100 = !DILocation(line: 91, column: 2, scope: !3086)
!3101 = !DISubprogram(name: "dev_pm_qos_update_user_latency_tolerance", scope: !54, file: !54, line: 191, type: !3102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3102 = !DISubroutineType(types: !3103)
!3103 = !{!46, !814, !122}
!3104 = !DISubprogram(name: "kstrtoint", scope: !2480, file: !2480, line: 72, type: !3105, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3105 = !DISubroutineType(types: !3106)
!3106 = !{!46, !136, !7, !1058}
!3107 = !DISubprogram(name: "device_change_owner", scope: !26, file: !26, line: 1078, type: !2023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3108 = distinct !DISubprogram(name: "pm_qos_resume_latency_us_show", scope: !3, file: !3, line: 211, type: !812, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3109)
!3109 = !{!3110, !3111, !3112, !3113}
!3110 = !DILocalVariable(name: "dev", arg: 1, scope: !3108, file: !3, line: 211, type: !814)
!3111 = !DILocalVariable(name: "attr", arg: 2, scope: !3108, file: !3, line: 212, type: !1696)
!3112 = !DILocalVariable(name: "buf", arg: 3, scope: !3108, file: !3, line: 213, type: !229)
!3113 = !DILocalVariable(name: "value", scope: !3108, file: !3, line: 215, type: !122)
!3114 = !DILocation(line: 211, column: 61, scope: !3108)
!3115 = !DILocation(line: 212, column: 36, scope: !3108)
!3116 = !DILocation(line: 213, column: 17, scope: !3108)
!3117 = !DILocation(line: 215, column: 2, scope: !3108)
!3118 = !DILocation(line: 215, column: 6, scope: !3108)
!3119 = !DILocation(line: 215, column: 50, scope: !3108)
!3120 = !DILocation(line: 215, column: 14, scope: !3108)
!3121 = !DILocation(line: 217, column: 6, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 217, column: 6)
!3123 = !DILocation(line: 217, column: 12, scope: !3122)
!3124 = !DILocation(line: 217, column: 6, scope: !3108)
!3125 = !DILocation(line: 218, column: 21, scope: !3122)
!3126 = !DILocation(line: 218, column: 10, scope: !3122)
!3127 = !DILocation(line: 218, column: 3, scope: !3122)
!3128 = !DILocation(line: 219, column: 6, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 219, column: 6)
!3130 = !DILocation(line: 219, column: 12, scope: !3129)
!3131 = !DILocation(line: 219, column: 6, scope: !3108)
!3132 = !DILocation(line: 220, column: 9, scope: !3129)
!3133 = !DILocation(line: 220, column: 3, scope: !3129)
!3134 = !DILocation(line: 222, column: 20, scope: !3108)
!3135 = !DILocation(line: 222, column: 33, scope: !3108)
!3136 = !DILocation(line: 222, column: 9, scope: !3108)
!3137 = !DILocation(line: 222, column: 2, scope: !3108)
!3138 = !DILocation(line: 223, column: 1, scope: !3108)
!3139 = distinct !DISubprogram(name: "pm_qos_resume_latency_us_store", scope: !3, file: !3, line: 225, type: !1699, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3140)
!3140 = !{!3141, !3142, !3143, !3144, !3145, !3146}
!3141 = !DILocalVariable(name: "dev", arg: 1, scope: !3139, file: !3, line: 225, type: !814)
!3142 = !DILocalVariable(name: "attr", arg: 2, scope: !3139, file: !3, line: 226, type: !1696)
!3143 = !DILocalVariable(name: "buf", arg: 3, scope: !3139, file: !3, line: 227, type: !136)
!3144 = !DILocalVariable(name: "n", arg: 4, scope: !3139, file: !3, line: 227, type: !274)
!3145 = !DILocalVariable(name: "value", scope: !3139, file: !3, line: 229, type: !122)
!3146 = !DILocalVariable(name: "ret", scope: !3139, file: !3, line: 230, type: !46)
!3147 = !DILocation(line: 225, column: 62, scope: !3139)
!3148 = !DILocation(line: 226, column: 37, scope: !3139)
!3149 = !DILocation(line: 227, column: 24, scope: !3139)
!3150 = !DILocation(line: 227, column: 36, scope: !3139)
!3151 = !DILocation(line: 229, column: 2, scope: !3139)
!3152 = !DILocation(line: 229, column: 6, scope: !3139)
!3153 = !DILocation(line: 230, column: 2, scope: !3139)
!3154 = !DILocation(line: 230, column: 6, scope: !3139)
!3155 = !DILocation(line: 232, column: 17, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 232, column: 6)
!3157 = !DILocation(line: 232, column: 7, scope: !3156)
!3158 = !DILocation(line: 232, column: 6, scope: !3139)
!3159 = !DILocation(line: 237, column: 7, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3161, file: !3, line: 237, column: 7)
!3161 = distinct !DILexicalBlock(scope: !3156, file: !3, line: 232, column: 34)
!3162 = !DILocation(line: 237, column: 13, scope: !3160)
!3163 = !DILocation(line: 237, column: 17, scope: !3160)
!3164 = !DILocation(line: 237, column: 20, scope: !3160)
!3165 = !DILocation(line: 237, column: 26, scope: !3160)
!3166 = !DILocation(line: 237, column: 7, scope: !3161)
!3167 = !DILocation(line: 238, column: 4, scope: !3160)
!3168 = !DILocation(line: 240, column: 7, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3161, file: !3, line: 240, column: 7)
!3170 = !DILocation(line: 240, column: 13, scope: !3169)
!3171 = !DILocation(line: 240, column: 7, scope: !3161)
!3172 = !DILocation(line: 241, column: 10, scope: !3169)
!3173 = !DILocation(line: 241, column: 4, scope: !3169)
!3174 = !DILocation(line: 242, column: 2, scope: !3161)
!3175 = !DILocation(line: 242, column: 25, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3156, file: !3, line: 242, column: 13)
!3177 = !DILocation(line: 242, column: 13, scope: !3176)
!3178 = !DILocation(line: 242, column: 13, scope: !3156)
!3179 = !DILocation(line: 243, column: 9, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3176, file: !3, line: 242, column: 38)
!3181 = !DILocation(line: 244, column: 2, scope: !3180)
!3182 = !DILocation(line: 245, column: 3, scope: !3183)
!3183 = distinct !DILexicalBlock(scope: !3176, file: !3, line: 244, column: 9)
!3184 = !DILocation(line: 248, column: 34, scope: !3139)
!3185 = !DILocation(line: 248, column: 39, scope: !3139)
!3186 = !DILocation(line: 248, column: 45, scope: !3139)
!3187 = !DILocation(line: 248, column: 50, scope: !3139)
!3188 = !DILocation(line: 249, column: 6, scope: !3139)
!3189 = !DILocation(line: 248, column: 8, scope: !3139)
!3190 = !DILocation(line: 248, column: 6, scope: !3139)
!3191 = !DILocation(line: 250, column: 9, scope: !3139)
!3192 = !DILocation(line: 250, column: 13, scope: !3139)
!3193 = !DILocation(line: 250, column: 19, scope: !3139)
!3194 = !DILocation(line: 250, column: 25, scope: !3139)
!3195 = !DILocation(line: 250, column: 2, scope: !3139)
!3196 = !DILocation(line: 251, column: 1, scope: !3139)
!3197 = distinct !DISubprogram(name: "dev_pm_qos_requested_resume_latency", scope: !54, file: !54, line: 195, type: !3084, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3198)
!3198 = !{!3199}
!3199 = !DILocalVariable(name: "dev", arg: 1, scope: !3197, file: !54, line: 195, type: !814)
!3200 = !DILocation(line: 195, column: 70, scope: !3197)
!3201 = !DILocation(line: 197, column: 9, scope: !3197)
!3202 = !DILocation(line: 197, column: 14, scope: !3197)
!3203 = !DILocation(line: 197, column: 20, scope: !3197)
!3204 = !DILocation(line: 197, column: 25, scope: !3197)
!3205 = !DILocation(line: 197, column: 45, scope: !3197)
!3206 = !DILocation(line: 197, column: 56, scope: !3197)
!3207 = !DILocation(line: 197, column: 2, scope: !3197)
!3208 = !DISubprogram(name: "dev_pm_qos_update_request", scope: !54, file: !54, line: 172, type: !3209, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3209 = !DISubroutineType(types: !3210)
!3210 = !{!46, !1552, !122}
!3211 = distinct !DISubprogram(name: "pm_qos_no_power_off_show", scope: !3, file: !3, line: 294, type: !812, scopeLine: 297, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3212)
!3212 = !{!3213, !3214, !3215}
!3213 = !DILocalVariable(name: "dev", arg: 1, scope: !3211, file: !3, line: 294, type: !814)
!3214 = !DILocalVariable(name: "attr", arg: 2, scope: !3211, file: !3, line: 295, type: !1696)
!3215 = !DILocalVariable(name: "buf", arg: 3, scope: !3211, file: !3, line: 296, type: !229)
!3216 = !DILocation(line: 294, column: 56, scope: !3211)
!3217 = !DILocation(line: 295, column: 31, scope: !3211)
!3218 = !DILocation(line: 296, column: 12, scope: !3211)
!3219 = !DILocation(line: 298, column: 20, scope: !3211)
!3220 = !DILocation(line: 298, column: 63, scope: !3211)
!3221 = !DILocation(line: 298, column: 36, scope: !3211)
!3222 = !DILocation(line: 299, column: 8, scope: !3211)
!3223 = !DILocation(line: 298, column: 34, scope: !3211)
!3224 = !DILocation(line: 298, column: 33, scope: !3211)
!3225 = !DILocation(line: 298, column: 9, scope: !3211)
!3226 = !DILocation(line: 298, column: 2, scope: !3211)
!3227 = distinct !DISubprogram(name: "pm_qos_no_power_off_store", scope: !3, file: !3, line: 302, type: !1699, scopeLine: 305, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3228)
!3228 = !{!3229, !3230, !3231, !3232, !3233}
!3229 = !DILocalVariable(name: "dev", arg: 1, scope: !3227, file: !3, line: 302, type: !814)
!3230 = !DILocalVariable(name: "attr", arg: 2, scope: !3227, file: !3, line: 303, type: !1696)
!3231 = !DILocalVariable(name: "buf", arg: 3, scope: !3227, file: !3, line: 304, type: !136)
!3232 = !DILocalVariable(name: "n", arg: 4, scope: !3227, file: !3, line: 304, type: !274)
!3233 = !DILocalVariable(name: "ret", scope: !3227, file: !3, line: 306, type: !46)
!3234 = !DILocation(line: 302, column: 57, scope: !3227)
!3235 = !DILocation(line: 303, column: 32, scope: !3227)
!3236 = !DILocation(line: 304, column: 19, scope: !3227)
!3237 = !DILocation(line: 304, column: 31, scope: !3227)
!3238 = !DILocation(line: 306, column: 2, scope: !3227)
!3239 = !DILocation(line: 306, column: 6, scope: !3227)
!3240 = !DILocation(line: 308, column: 16, scope: !3241)
!3241 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 308, column: 6)
!3242 = !DILocation(line: 308, column: 6, scope: !3241)
!3243 = !DILocation(line: 308, column: 6, scope: !3227)
!3244 = !DILocation(line: 309, column: 3, scope: !3241)
!3245 = !DILocation(line: 311, column: 6, scope: !3246)
!3246 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 311, column: 6)
!3247 = !DILocation(line: 311, column: 10, scope: !3246)
!3248 = !DILocation(line: 311, column: 15, scope: !3246)
!3249 = !DILocation(line: 311, column: 18, scope: !3246)
!3250 = !DILocation(line: 311, column: 22, scope: !3246)
!3251 = !DILocation(line: 311, column: 6, scope: !3227)
!3252 = !DILocation(line: 312, column: 3, scope: !3246)
!3253 = !DILocation(line: 314, column: 32, scope: !3227)
!3254 = !DILocation(line: 314, column: 63, scope: !3227)
!3255 = !DILocation(line: 314, column: 8, scope: !3227)
!3256 = !DILocation(line: 314, column: 6, scope: !3227)
!3257 = !DILocation(line: 315, column: 9, scope: !3227)
!3258 = !DILocation(line: 315, column: 13, scope: !3227)
!3259 = !DILocation(line: 315, column: 19, scope: !3227)
!3260 = !DILocation(line: 315, column: 25, scope: !3227)
!3261 = !DILocation(line: 315, column: 2, scope: !3227)
!3262 = !DILocation(line: 316, column: 1, scope: !3227)
!3263 = distinct !DISubprogram(name: "dev_pm_qos_requested_flags", scope: !54, file: !54, line: 200, type: !3084, scopeLine: 201, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3264)
!3264 = !{!3265}
!3265 = !DILocalVariable(name: "dev", arg: 1, scope: !3263, file: !54, line: 200, type: !814)
!3266 = !DILocation(line: 200, column: 61, scope: !3263)
!3267 = !DILocation(line: 202, column: 9, scope: !3263)
!3268 = !DILocation(line: 202, column: 14, scope: !3263)
!3269 = !DILocation(line: 202, column: 20, scope: !3263)
!3270 = !DILocation(line: 202, column: 25, scope: !3263)
!3271 = !DILocation(line: 202, column: 36, scope: !3263)
!3272 = !DILocation(line: 202, column: 45, scope: !3263)
!3273 = !DILocation(line: 202, column: 2, scope: !3263)
!3274 = !DISubprogram(name: "dev_pm_qos_update_flags", scope: !54, file: !54, line: 189, type: !3275, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3275 = !DISubroutineType(types: !3276)
!3276 = !{!46, !814, !122, !294}
