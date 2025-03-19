; ModuleID = 'drivers/acpi/container.c'
source_filename = "drivers/acpi/container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_scan_handler = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, ptr, %struct.acpi_hotplug_profile }
%struct.list_head = type { ptr, ptr }
%struct.acpi_hotplug_profile = type { %struct.kobject, ptr, ptr, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.acpi_device_id = type { [16 x i8], i64, i32, i32 }
%struct.bus_type = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i8 }
%struct.acpi_device = type { i32, i32, ptr, %struct.fwnode_handle, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, ptr, ptr, ptr, ptr, %struct.device, i32, i32, %struct.list_head, %struct.mutex, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], i32, %struct.acpi_pnp_type, i64, ptr, %struct.list_head, [40 x i8], [20 x i8], ptr }
%struct.acpi_pnp_type = type { i32 }
%struct.acpi_device_power = type { i32, %struct.acpi_device_power_flags, [5 x %struct.acpi_device_power_state], i8 }
%struct.acpi_device_power_flags = type { i32 }
%struct.acpi_device_power_state = type { %struct.anon.2, i32, i32, %struct.list_head }
%struct.anon.2 = type { i8 }
%struct.acpi_device_wakeup = type { ptr, i64, i64, %struct.list_head, %struct.acpi_device_wakeup_flags, %struct.acpi_device_wakeup_context, ptr, i32, i32 }
%struct.acpi_device_wakeup_flags = type { i8 }
%struct.acpi_device_wakeup_context = type { ptr, ptr }
%struct.acpi_device_perf = type { i32, %struct.acpi_device_perf_flags, i32, ptr }
%struct.acpi_device_perf_flags = type { i8 }
%struct.acpi_device_dir = type { ptr }
%struct.acpi_device_data = type { ptr, %struct.list_head, ptr, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, ptr, ptr }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, ptr }
%struct.atomic64_t = type { i64 }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type {}
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.container_dev = type { %struct.device, ptr }

@container_handler = internal global %struct.acpi_scan_handler { ptr @container_device_ids, %struct.list_head zeroinitializer, ptr null, ptr @container_device_attach, ptr @container_device_detach, ptr null, ptr null, %struct.acpi_hotplug_profile { %struct.kobject zeroinitializer, ptr null, ptr @container_device_online, i8 3 } }, align 8, !dbg !0
@container_device_ids = internal constant [4 x %struct.acpi_device_id] [%struct.acpi_device_id { [16 x i8] c"ACPI0004\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"PNP0A05\00\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"PNP0A06\00\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 16, !dbg !1982
@container_subsys = external dso_local global %struct.bus_type, align 8
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !1985
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !1988

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @acpi_container_init() #0 section ".init.text" align 16 !dbg !2002 {
entry:
  %call = call i32 @acpi_scan_add_handler(ptr noundef @container_handler) #14, !dbg !2003
  ret void, !dbg !2004
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2005 dso_local i32 @acpi_scan_add_handler(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @container_device_attach(ptr noundef %adev, ptr noundef %not_used) #2 align 16 !dbg !2008 {
entry:
  %retval = alloca i32, align 4
  %adev.addr = alloca ptr, align 8
  %not_used.addr = alloca ptr, align 8
  %cdev = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !2010, metadata !DIExpression()), !dbg !2015
  store ptr %not_used, ptr %not_used.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %not_used.addr, metadata !2011, metadata !DIExpression()), !dbg !2016
  call void @llvm.lifetime.start.p0(i64 8, ptr %cdev) #15, !dbg !2017
  call void @llvm.dbg.declare(metadata ptr %cdev, metadata !2012, metadata !DIExpression()), !dbg !2018
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !2019
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !2013, metadata !DIExpression()), !dbg !2020
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !2021
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2014, metadata !DIExpression()), !dbg !2022
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !2023
  %flags = getelementptr inbounds %struct.acpi_device, ptr %0, i32 0, i32 7, !dbg !2025
  %bf.load = load i32, ptr %flags, align 4, !dbg !2026
  %bf.lshr = lshr i32 %bf.load, 8, !dbg !2026
  %bf.clear = and i32 %bf.lshr, 1, !dbg !2026
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !2023
  br i1 %tobool, label %if.then, label %if.end, !dbg !2027

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2028
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2028

if.end:                                           ; preds = %entry
  %call = call noalias ptr @kzalloc(i64 noundef 736, i32 noundef 3264) #16, !dbg !2029
  store ptr %call, ptr %cdev, align 8, !dbg !2030
  %1 = load ptr, ptr %cdev, align 8, !dbg !2031
  %tobool1 = icmp ne ptr %1, null, !dbg !2031
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !2033

if.then2:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !2034
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2034

if.end3:                                          ; preds = %if.end
  %2 = load ptr, ptr %cdev, align 8, !dbg !2035
  %offline = getelementptr inbounds %struct.container_dev, ptr %2, i32 0, i32 1, !dbg !2036
  store ptr @acpi_container_offline, ptr %offline, align 8, !dbg !2037
  %3 = load ptr, ptr %cdev, align 8, !dbg !2038
  %dev4 = getelementptr inbounds %struct.container_dev, ptr %3, i32 0, i32 0, !dbg !2039
  store ptr %dev4, ptr %dev, align 8, !dbg !2040
  %4 = load ptr, ptr %dev, align 8, !dbg !2041
  %bus = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 5, !dbg !2042
  store ptr @container_subsys, ptr %bus, align 8, !dbg !2043
  %5 = load ptr, ptr %dev, align 8, !dbg !2044
  %6 = load ptr, ptr %adev.addr, align 8, !dbg !2045
  %dev5 = getelementptr inbounds %struct.acpi_device, ptr %6, i32 0, i32 18, !dbg !2046
  %call6 = call ptr @dev_name(ptr noundef %dev5) #14, !dbg !2047
  %call7 = call i32 (ptr, ptr, ...) @dev_set_name(ptr noundef %5, ptr noundef @.str, ptr noundef %call6) #14, !dbg !2048
  %7 = load ptr, ptr %dev, align 8, !dbg !2049
  %8 = load ptr, ptr %adev.addr, align 8, !dbg !2049
  %tobool8 = icmp ne ptr %8, null, !dbg !2049
  br i1 %tobool8, label %cond.true, label %cond.false, !dbg !2049

cond.true:                                        ; preds = %if.end3
  %9 = load ptr, ptr %adev.addr, align 8, !dbg !2049
  %call9 = call ptr @acpi_fwnode_handle(ptr noundef %9) #14, !dbg !2049
  br label %cond.end, !dbg !2049

cond.false:                                       ; preds = %if.end3
  br label %cond.end, !dbg !2049

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %call9, %cond.true ], [ null, %cond.false ], !dbg !2049
  call void @set_primary_fwnode(ptr noundef %7, ptr noundef %cond) #14, !dbg !2049
  %10 = load ptr, ptr %dev, align 8, !dbg !2050
  %release = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 32, !dbg !2051
  store ptr @acpi_container_release, ptr %release, align 8, !dbg !2052
  %11 = load ptr, ptr %dev, align 8, !dbg !2053
  %call10 = call i32 @device_register(ptr noundef %11) #14, !dbg !2054
  store i32 %call10, ptr %ret, align 4, !dbg !2055
  %12 = load i32, ptr %ret, align 4, !dbg !2056
  %tobool11 = icmp ne i32 %12, 0, !dbg !2056
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !2058

if.then12:                                        ; preds = %cond.end
  %13 = load ptr, ptr %dev, align 8, !dbg !2059
  call void @put_device(ptr noundef %13) #14, !dbg !2061
  %14 = load i32, ptr %ret, align 4, !dbg !2062
  store i32 %14, ptr %retval, align 4, !dbg !2063
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2063

if.end13:                                         ; preds = %cond.end
  %15 = load ptr, ptr %dev, align 8, !dbg !2064
  %16 = load ptr, ptr %adev.addr, align 8, !dbg !2065
  %driver_data = getelementptr inbounds %struct.acpi_device, ptr %16, i32 0, i32 17, !dbg !2066
  store ptr %15, ptr %driver_data, align 8, !dbg !2067
  store i32 1, ptr %retval, align 4, !dbg !2068
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2068

cleanup:                                          ; preds = %if.end13, %if.then12, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !2069
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !2069
  call void @llvm.lifetime.end.p0(i64 8, ptr %cdev) #15, !dbg !2069
  %17 = load i32, ptr %retval, align 4, !dbg !2069
  ret i32 %17, !dbg !2069
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @container_device_detach(ptr noundef %adev) #2 align 16 !dbg !2070 {
entry:
  %adev.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !2072, metadata !DIExpression()), !dbg !2074
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !2075
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !2073, metadata !DIExpression()), !dbg !2076
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !2077
  %call = call ptr @acpi_driver_data(ptr noundef %0) #14, !dbg !2078
  store ptr %call, ptr %dev, align 8, !dbg !2076
  %1 = load ptr, ptr %adev.addr, align 8, !dbg !2079
  %driver_data = getelementptr inbounds %struct.acpi_device, ptr %1, i32 0, i32 17, !dbg !2080
  store ptr null, ptr %driver_data, align 8, !dbg !2081
  %2 = load ptr, ptr %dev, align 8, !dbg !2082
  %tobool = icmp ne ptr %2, null, !dbg !2082
  br i1 %tobool, label %if.then, label %if.end, !dbg !2084

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %dev, align 8, !dbg !2085
  call void @device_unregister(ptr noundef %3) #14, !dbg !2086
  br label %if.end, !dbg !2086

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !2087
  ret void, !dbg !2087
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @container_device_online(ptr noundef %adev) #2 align 16 !dbg !2088 {
entry:
  %adev.addr = alloca ptr, align 8
  %dev = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !2090, metadata !DIExpression()), !dbg !2092
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !2093
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !2091, metadata !DIExpression()), !dbg !2094
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !2095
  %call = call ptr @acpi_driver_data(ptr noundef %0) #14, !dbg !2096
  store ptr %call, ptr %dev, align 8, !dbg !2094
  %1 = load ptr, ptr %dev, align 8, !dbg !2097
  %kobj = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 0, !dbg !2098
  %call1 = call i32 @kobject_uevent(ptr noundef %kobj, i32 noundef 4) #14, !dbg !2099
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !2100
  ret void, !dbg !2100
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !2101 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2105, metadata !DIExpression()), !dbg !2107
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2106, metadata !DIExpression()), !dbg !2108
  %0 = load i64, ptr %size.addr, align 8, !dbg !2109
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2110
  %or = or i32 %1, 256, !dbg !2111
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !2112
  ret ptr %call, !dbg !2113
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_container_offline(ptr noundef %cdev) #2 align 16 !dbg !2114 {
entry:
  %cdev.addr = alloca ptr, align 8
  %__to_acpi_device_node_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  store ptr %cdev, ptr %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdev.addr, metadata !2116, metadata !DIExpression()), !dbg !2121
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #15, !dbg !2122
  call void @llvm.dbg.declare(metadata ptr %__to_acpi_device_node_fwnode, metadata !2117, metadata !DIExpression()), !dbg !2122
  %0 = load ptr, ptr %cdev.addr, align 8, !dbg !2122
  %dev = getelementptr inbounds %struct.container_dev, ptr %0, i32 0, i32 0, !dbg !2122
  %fwnode = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 24, !dbg !2122
  %1 = load ptr, ptr %fwnode, align 8, !dbg !2122
  store ptr %1, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !2122
  %2 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !2122
  %call = call zeroext i1 @is_acpi_device_node(ptr noundef %2) #14, !dbg !2122
  br i1 %call, label %cond.true, label %cond.false, !dbg !2122

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !2123
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2119, metadata !DIExpression()), !dbg !2123
  %3 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !2123
  store ptr %3, ptr %__mptr, align 8, !dbg !2123
  %4 = load ptr, ptr %__mptr, align 8, !dbg !2123
  %add.ptr = getelementptr i8, ptr %4, i64 -16, !dbg !2123
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !2123
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !2122
  %5 = load ptr, ptr %tmp1, align 8, !dbg !2123
  br label %cond.end, !dbg !2122

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2122

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %5, %cond.true ], [ null, %cond.false ], !dbg !2122
  store ptr %cond, ptr %tmp, align 8, !dbg !2122
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #15, !dbg !2124
  %6 = load ptr, ptr %tmp, align 8, !dbg !2122
  %call2 = call i32 @acpi_dev_for_each_child(ptr noundef %6, ptr noundef @check_offline, ptr noundef null) #14, !dbg !2125
  ret i32 %call2, !dbg !2126
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2127 dso_local i32 @dev_set_name(ptr noundef, ptr noundef, ...) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_name(ptr noundef %dev) #6 align 16 !dbg !2130 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2134, metadata !DIExpression()), !dbg !2135
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2136
  %init_name = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3, !dbg !2138
  %1 = load ptr, ptr %init_name, align 8, !dbg !2138
  %tobool = icmp ne ptr %1, null, !dbg !2136
  br i1 %tobool, label %if.then, label %if.end, !dbg !2139

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !2140
  %init_name1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3, !dbg !2141
  %3 = load ptr, ptr %init_name1, align 8, !dbg !2141
  store ptr %3, ptr %retval, align 8, !dbg !2142
  br label %return, !dbg !2142

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !2143
  %kobj = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !2144
  %call = call ptr @kobject_name(ptr noundef %kobj) #14, !dbg !2145
  store ptr %call, ptr %retval, align 8, !dbg !2146
  br label %return, !dbg !2146

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !2147
  ret ptr %5, !dbg !2147
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2148 dso_local void @set_primary_fwnode(ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_fwnode_handle(ptr noundef %adev) #6 align 16 !dbg !2151 {
entry:
  %adev.addr = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !2155, metadata !DIExpression()), !dbg !2156
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !2157
  %fwnode = getelementptr inbounds %struct.acpi_device, ptr %0, i32 0, i32 3, !dbg !2158
  ret ptr %fwnode, !dbg !2159
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_container_release(ptr noundef %dev) #2 align 16 !dbg !2160 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2162, metadata !DIExpression()), !dbg !2163
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2164
  %call = call ptr @to_container_dev(ptr noundef %0) #14, !dbg !2165
  call void @kfree(ptr noundef %call) #14, !dbg !2166
  ret void, !dbg !2167
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2168 dso_local i32 @device_register(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2169 dso_local void @put_device(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !2170 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2172, metadata !DIExpression()), !dbg !2177
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2173, metadata !DIExpression()), !dbg !2178
  %0 = load i64, ptr %size.addr, align 8, !dbg !2179
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2180
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2181

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2182
  %tobool = icmp ne i64 %2, 0, !dbg !2182
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2183

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !2184
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2174, metadata !DIExpression()), !dbg !2185
  %3 = load i64, ptr %size.addr, align 8, !dbg !2186
  %cmp = icmp ugt i64 %3, 8192, !dbg !2188
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2189

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2190
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2191
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !2192
  store ptr %call, ptr %retval, align 8, !dbg !2193
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2193

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2194
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !2194
  store i32 %call2, ptr %index, align 4, !dbg !2195
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2196
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2197
  %9 = ptrtoint ptr %8 to i64, !dbg !2197
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !2198
  %idxprom = zext i32 %call3 to i64, !dbg !2199
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2199
  %10 = load i32, ptr %index, align 4, !dbg !2200
  %idxprom4 = zext i32 %10 to i64, !dbg !2199
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2199
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2199
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2201
  %13 = load i64, ptr %size.addr, align 8, !dbg !2202
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !2203
  store ptr %call6, ptr %retval, align 8, !dbg !2204
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2204

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !2205
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2206
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2207
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !2208
  store ptr %call8, ptr %retval, align 8, !dbg !2209
  br label %return, !dbg !2209

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2210
  ret ptr %16, !dbg !2210
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2211 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #10 align 16 !dbg !2212 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2216, metadata !DIExpression()), !dbg !2218
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2217, metadata !DIExpression()), !dbg !2219
  %0 = load i64, ptr %size.addr, align 8, !dbg !2220
  %tobool = icmp ne i64 %0, 0, !dbg !2220
  br i1 %tobool, label %if.end, label %if.then, !dbg !2222

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2223
  br label %return, !dbg !2223

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2224
  %cmp = icmp ule i64 %1, 8, !dbg !2226
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2227

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2228
  br label %return, !dbg !2228

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2229
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2231
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2232

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2233
  %cmp4 = icmp ule i64 %3, 96, !dbg !2234
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2235

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2236
  br label %return, !dbg !2236

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2237
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2239
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2240

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2241
  %cmp9 = icmp ule i64 %5, 192, !dbg !2242
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2243

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2244
  br label %return, !dbg !2244

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2245
  %cmp12 = icmp ule i64 %6, 8, !dbg !2247
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2248

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2249
  br label %return, !dbg !2249

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2250
  %cmp15 = icmp ule i64 %7, 16, !dbg !2252
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2253

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2254
  br label %return, !dbg !2254

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2255
  %cmp18 = icmp ule i64 %8, 32, !dbg !2257
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2258

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2259
  br label %return, !dbg !2259

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2260
  %cmp21 = icmp ule i64 %9, 64, !dbg !2262
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2263

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2264
  br label %return, !dbg !2264

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2265
  %cmp24 = icmp ule i64 %10, 128, !dbg !2267
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2268

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2269
  br label %return, !dbg !2269

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2270
  %cmp27 = icmp ule i64 %11, 256, !dbg !2272
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2273

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2274
  br label %return, !dbg !2274

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2275
  %cmp30 = icmp ule i64 %12, 512, !dbg !2277
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2278

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2279
  br label %return, !dbg !2279

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2280
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2282
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2283

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2284
  br label %return, !dbg !2284

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2285
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2287
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2288

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2289
  br label %return, !dbg !2289

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2290
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2292
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2293

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2294
  br label %return, !dbg !2294

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2295
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2297
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2298

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2299
  br label %return, !dbg !2299

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2300
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2302
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2303

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2304
  br label %return, !dbg !2304

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2305
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2307
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2308

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2309
  br label %return, !dbg !2309

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2310
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2312
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2313

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2314
  br label %return, !dbg !2314

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2315
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2317
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2318

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2319
  br label %return, !dbg !2319

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2320
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2322
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2323

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2324
  br label %return, !dbg !2324

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2325
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2327
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2328

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2329
  br label %return, !dbg !2329

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2330
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2332
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2333

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2334
  br label %return, !dbg !2334

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2335
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2337
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2338

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2339
  br label %return, !dbg !2339

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2340, !range !2342, !noundef !390
  %tobool69 = trunc i8 %25 to i1, !dbg !2340
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2343

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2344

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_125() #18, !dbg !2345, !srcloc !2348
  unreachable, !dbg !2345

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2349

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2350

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2351

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2353

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2351

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #15, !dbg !2355, !srcloc !2357
  br label %do.end75, !dbg !2355

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2351

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2358
  br label %return, !dbg !2358

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2359
  ret i32 %26, !dbg !2359
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2360 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #10 align 16 !dbg !2366 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2370, metadata !DIExpression()), !dbg !2372
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2371, metadata !DIExpression()), !dbg !2373
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2374
  %and = and i32 %0, 17, !dbg !2374
  %cmp = icmp eq i32 %and, 0, !dbg !2374
  %lnot = xor i1 %cmp, true, !dbg !2374
  %lnot1 = xor i1 %lnot, true, !dbg !2374
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2374
  %conv = sext i32 %lnot.ext to i64, !dbg !2374
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2374
  %tobool = icmp ne i64 %expval, 0, !dbg !2374
  br i1 %tobool, label %if.then, label %if.end, !dbg !2376

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2377
  br label %return, !dbg !2377

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2378
  %and2 = and i32 %1, 1, !dbg !2380
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2380
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2381

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2382
  br label %return, !dbg !2382

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2383
  br label %return, !dbg !2383

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2385
  ret i32 %2, !dbg !2385
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2386 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2387 dso_local void @__compiletime_assert_125() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2388 dso_local i32 @acpi_dev_for_each_child(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2394 dso_local zeroext i1 @is_acpi_device_node(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @check_offline(ptr noundef %adev, ptr noundef %not_used) #2 align 16 !dbg !2395 {
entry:
  %retval = alloca i32, align 4
  %adev.addr = alloca ptr, align 8
  %not_used.addr = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !2397, metadata !DIExpression()), !dbg !2399
  store ptr %not_used, ptr %not_used.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %not_used.addr, metadata !2398, metadata !DIExpression()), !dbg !2400
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !2401
  %call = call zeroext i1 @acpi_scan_is_offline(ptr noundef %0, i1 noundef zeroext false) #14, !dbg !2403
  br i1 %call, label %if.then, label %if.end, !dbg !2404

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2405
  br label %return, !dbg !2405

if.end:                                           ; preds = %entry
  store i32 -16, ptr %retval, align 4, !dbg !2406
  br label %return, !dbg !2406

return:                                           ; preds = %if.end, %if.then
  %1 = load i32, ptr %retval, align 4, !dbg !2407
  ret i32 %1, !dbg !2407
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2408 dso_local zeroext i1 @acpi_scan_is_offline(ptr noundef, i1 noundef zeroext) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #6 align 16 !dbg !2412 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !2414, metadata !DIExpression()), !dbg !2415
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !2416
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !2417
  %1 = load ptr, ptr %name, align 8, !dbg !2417
  ret ptr %1, !dbg !2418
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2419 dso_local void @kfree(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_container_dev(ptr noundef %dev) #6 align 16 !dbg !2422 {
entry:
  %dev.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2426, metadata !DIExpression()), !dbg !2429
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !2430
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2427, metadata !DIExpression()), !dbg !2430
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2430
  store ptr %0, ptr %__mptr, align 8, !dbg !2430
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2430
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !2430
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2430
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !2431
  %2 = load ptr, ptr %tmp, align 8, !dbg !2430
  ret ptr %2, !dbg !2432
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_driver_data(ptr noundef %d) #6 align 16 !dbg !2433 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !2437, metadata !DIExpression()), !dbg !2438
  %0 = load ptr, ptr %d.addr, align 8, !dbg !2439
  %driver_data = getelementptr inbounds %struct.acpi_device, ptr %0, i32 0, i32 17, !dbg !2440
  %1 = load ptr, ptr %driver_data, align 8, !dbg !2440
  ret ptr %1, !dbg !2441
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2442 dso_local void @device_unregister(ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2443 dso_local i32 @kobject_uevent(ptr noundef, i32 noundef) #1

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone }
attributes #15 = { nounwind }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone allocsize(2) }
attributes #18 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000}
!llvm.ident = !{!2001}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "container_handler", scope: !2, file: !3, line: 90, type: !1917, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/.container.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/acpi/container\22 -D KBUILD_BASENAME=\22container\22 -D KBUILD_MODNAME=\22container\22 -D __KBUILD_MODNAME=kmod_container -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/container.ll drivers/acpi/container.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !110, globals: !1981, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/container.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a5947841ddaccb1cf1ca02b1c43e8265")
!4 = !{!5, !12, !19, !25, !32, !37, !45, !53, !62, !67, !72, !78, !84, !89, !99}
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
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !79, line: 30, baseType: !7, size: 32, elements: !80)
!79 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!80 = !{!81, !82, !83}
!81 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!82 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!83 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !85, line: 10, baseType: !7, size: 32, elements: !86)
!85 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!86 = !{!87, !88}
!87 = !DIEnumerator(name: "false", value: 0)
!88 = !DIEnumerator(name: "true", value: 1)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !90, line: 364, baseType: !7, size: 32, elements: !91)
!90 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!91 = !{!92, !93, !94, !95, !96, !97, !98}
!92 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!93 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!94 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!95 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!96 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!97 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!98 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!99 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobject_action", file: !100, line: 53, baseType: !7, size: 32, elements: !101)
!100 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!101 = !{!102, !103, !104, !105, !106, !107, !108, !109}
!102 = !DIEnumerator(name: "KOBJ_ADD", value: 0)
!103 = !DIEnumerator(name: "KOBJ_REMOVE", value: 1)
!104 = !DIEnumerator(name: "KOBJ_CHANGE", value: 2)
!105 = !DIEnumerator(name: "KOBJ_MOVE", value: 3)
!106 = !DIEnumerator(name: "KOBJ_ONLINE", value: 4)
!107 = !DIEnumerator(name: "KOBJ_OFFLINE", value: 5)
!108 = !DIEnumerator(name: "KOBJ_BIND", value: 6)
!109 = !DIEnumerator(name: "KOBJ_UNBIND", value: 7)
!110 = !{!111, !113, !114, !115, !1972}
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !112, line: 154, baseType: !7)
!112 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!113 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !117, line: 367, size: 11200, elements: !118)
!117 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "745f031e2ee183d2395bab1bfe3ce66b")
!118 = !{!119, !124, !125, !128, !1717, !1718, !1719, !1728, !1746, !1825, !1855, !1879, !1900, !1906, !1915, !1947, !1961, !1965, !1966, !1967, !1968, !1969, !1970, !1971}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "pld_crc", scope: !116, file: !117, line: 368, baseType: !120, size: 32)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !121, line: 21, baseType: !122)
!121 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !123, line: 27, baseType: !7)
!123 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!124 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !116, file: !117, line: 369, baseType: !46, size: 32, offset: 32)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !116, file: !117, line: 370, baseType: !126, size: 64, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !127, line: 424, baseType: !114)
!127 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!128 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !116, file: !117, line: 371, baseType: !129, size: 512, offset: 128)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !130, line: 41, size: 512, elements: !131)
!130 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!131 = !{!132, !134, !1713, !1714, !1715, !1716}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !129, file: !130, line: 42, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !129, file: !130, line: 43, baseType: !135, size: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !130, line: 125, size: 1408, elements: !138)
!138 = !{!139, !143, !147, !155, !1643, !1644, !1648, !1652, !1656, !1660, !1664, !1665, !1669, !1673, !1677, !1688, !1689, !1690, !1691, !1701, !1705, !1709}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !137, file: !130, line: 126, baseType: !140, size: 64)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!133, !133}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !137, file: !130, line: 127, baseType: !144, size: 64, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!145 = !DISubroutineType(types: !146)
!146 = !{null, !133}
!147 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !137, file: !130, line: 128, baseType: !148, size: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!149 = !DISubroutineType(types: !150)
!150 = !{!151, !153}
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !112, line: 35, baseType: !152)
!152 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !137, file: !130, line: 129, baseType: !156, size: 64, offset: 192)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!159, !153, !161}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !164)
!164 = !{!165, !825, !827, !830, !831, !882, !1348, !1349, !1350, !1351, !1352, !1359, !1529, !1542, !1552, !1556, !1558, !1559, !1560, !1564, !1571, !1572, !1575, !1578, !1582, !1583, !1584, !1587, !1588, !1589, !1590, !1620, !1621, !1622, !1625, !1628, !1637, !1638, !1639, !1640, !1641, !1642}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !163, file: !26, line: 706, baseType: !166, size: 512)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !100, line: 64, size: 512, elements: !167)
!167 = !{!168, !172, !178, !180, !267, !695, !810, !820, !821, !822, !823, !824}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !166, file: !100, line: 65, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !171)
!171 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !166, file: !100, line: 66, baseType: !173, size: 128, offset: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !112, line: 190, size: 128, elements: !174)
!174 = !{!175, !177}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !173, file: !112, line: 191, baseType: !176, size: 64)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !173, file: !112, line: 191, baseType: !176, size: 64, offset: 64)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !166, file: !100, line: 67, baseType: !179, size: 64, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !166, file: !100, line: 68, baseType: !181, size: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !100, line: 168, size: 768, elements: !183)
!183 = !{!184, !185, !226, !227}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !182, file: !100, line: 169, baseType: !173, size: 128)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !182, file: !100, line: 170, baseType: !186, size: 32, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !187, line: 29, baseType: !188)
!187 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !187, line: 17, size: 32, elements: !189)
!189 = !{!190}
!190 = !DIDerivedType(tag: DW_TAG_member, scope: !188, file: !187, line: 18, baseType: !191, size: 32)
!191 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !188, file: !187, line: 18, size: 32, elements: !192)
!192 = !{!193}
!193 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !191, file: !187, line: 19, baseType: !194, size: 32)
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !195, line: 14, size: 32, elements: !196)
!195 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!196 = !{!197}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !194, file: !195, line: 15, baseType: !198, size: 32)
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !199, line: 44, baseType: !200)
!199 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !199, line: 14, size: 32, elements: !201)
!201 = !{!202}
!202 = !DIDerivedType(tag: DW_TAG_member, scope: !200, file: !199, line: 15, baseType: !203, size: 32)
!203 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !200, file: !199, line: 15, size: 32, elements: !204)
!204 = !{!205, !210, !218}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !203, file: !199, line: 16, baseType: !206, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !112, line: 174, baseType: !207)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !112, line: 172, size: 32, elements: !208)
!208 = !{!209}
!209 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !207, file: !112, line: 173, baseType: !46, size: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, scope: !203, file: !199, line: 24, baseType: !211, size: 16)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !203, file: !199, line: 24, size: 16, elements: !212)
!212 = !{!213, !217}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !211, file: !199, line: 25, baseType: !214, size: 8)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !121, line: 17, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !123, line: 21, baseType: !216)
!216 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !211, file: !199, line: 26, baseType: !214, size: 8, offset: 8)
!218 = !DIDerivedType(tag: DW_TAG_member, scope: !203, file: !199, line: 28, baseType: !219, size: 32)
!219 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !203, file: !199, line: 28, size: 32, elements: !220)
!220 = !{!221, !225}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !219, file: !199, line: 29, baseType: !222, size: 16)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !121, line: 19, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !123, line: 24, baseType: !224)
!224 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !219, file: !199, line: 30, baseType: !222, size: 16, offset: 16)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !182, file: !100, line: 171, baseType: !166, size: 512, offset: 192)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !182, file: !100, line: 172, baseType: !228, size: 64, offset: 704)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !100, line: 133, size: 192, elements: !231)
!231 = !{!232, !239, !244}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !230, file: !100, line: 134, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!46, !237}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !166)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !230, file: !100, line: 135, baseType: !240, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DISubroutineType(types: !243)
!243 = !{!169, !237}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !230, file: !100, line: 136, baseType: !245, size: 64, offset: 128)
!245 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!46, !237, !249}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !100, line: 125, size: 20736, elements: !251)
!251 = !{!252, !257, !261, !262, !266}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !250, file: !100, line: 126, baseType: !253, size: 192)
!253 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 192, elements: !255)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!255 = !{!256}
!256 = !DISubrange(count: 3)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !250, file: !100, line: 127, baseType: !258, size: 4096, offset: 192)
!258 = !DICompositeType(tag: DW_TAG_array_type, baseType: !254, size: 4096, elements: !259)
!259 = !{!260}
!260 = !DISubrange(count: 64)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !250, file: !100, line: 128, baseType: !46, size: 32, offset: 4288)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !250, file: !100, line: 129, baseType: !263, size: 16384, offset: 4320)
!263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 16384, elements: !264)
!264 = !{!265}
!265 = !DISubrange(count: 2048)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !250, file: !100, line: 130, baseType: !46, size: 32, offset: 20704)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !166, file: !100, line: 69, baseType: !268, size: 64, offset: 320)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !100, line: 116, size: 384, elements: !271)
!271 = !{!272, !276, !304, !641, !672, !676}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !270, file: !100, line: 117, baseType: !273, size: 64)
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DISubroutineType(types: !275)
!275 = !{null, !179}
!276 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !270, file: !100, line: 118, baseType: !277, size: 64, offset: 64)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !279)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !280, line: 254, size: 128, elements: !281)
!280 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!281 = !{!282, !297}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !279, file: !280, line: 255, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DISubroutineType(types: !285)
!285 = !{!286, !179, !291, !254}
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !112, line: 66, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !288, line: 73, baseType: !289)
!288 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !288, line: 15, baseType: !290)
!290 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !280, line: 30, size: 128, elements: !293)
!293 = !{!294, !295}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !292, file: !280, line: 31, baseType: !169, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !292, file: !280, line: 32, baseType: !296, size: 16, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !112, line: 24, baseType: !224)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !279, file: !280, line: 256, baseType: !298, size: 64, offset: 64)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!286, !179, !291, !169, !301}
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !112, line: 61, baseType: !302)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !288, line: 72, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !288, line: 16, baseType: !113)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !270, file: !100, line: 119, baseType: !305, size: 64, offset: 128)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !280, line: 84, size: 320, elements: !309)
!309 = !{!310, !311, !315, !637, !639}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !308, file: !280, line: 85, baseType: !169, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !308, file: !280, line: 86, baseType: !312, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!296, !179, !291, !46}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !308, file: !280, line: 88, baseType: !316, size: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!296, !179, !319, !46}
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !280, line: 175, size: 512, elements: !321)
!321 = !{!322, !323, !324, !325, !332, !342, !343}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !320, file: !280, line: 176, baseType: !292, size: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !320, file: !280, line: 177, baseType: !301, size: 64, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !320, file: !280, line: 178, baseType: !114, size: 64, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !320, file: !280, line: 179, baseType: !326, size: 64, offset: 256)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!329}
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !331, line: 351, flags: DIFlagFwdDecl)
!331 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!332 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !320, file: !280, line: 180, baseType: !333, size: 64, offset: 320)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!286, !336, !179, !319, !254, !339, !301}
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !338, line: 537, flags: DIFlagFwdDecl)
!338 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !112, line: 52, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !288, line: 88, baseType: !341)
!341 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !320, file: !280, line: 182, baseType: !333, size: 64, offset: 384)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !320, file: !280, line: 184, baseType: !344, size: 64, offset: 448)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = !DISubroutineType(types: !346)
!346 = !{!46, !336, !179, !319, !347}
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !349, line: 625, size: 1344, elements: !350)
!349 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!350 = !{!351, !368, !588, !594, !601, !602, !607, !608, !620, !621, !624, !628, !629, !630, !631, !632, !635}
!351 = !DIDerivedType(tag: DW_TAG_member, scope: !348, file: !349, line: 628, baseType: !352, size: 128)
!352 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !348, file: !349, line: 628, size: 128, elements: !353)
!353 = !{!354, !359}
!354 = !DIDerivedType(tag: DW_TAG_member, scope: !352, file: !349, line: 629, baseType: !355, size: 128)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !352, file: !349, line: 629, size: 128, elements: !356)
!356 = !{!357, !358}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !355, file: !349, line: 631, baseType: !113, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !355, file: !349, line: 632, baseType: !113, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !352, file: !349, line: 635, baseType: !360, size: 128, align: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !112, line: 232, size: 128, align: 64, elements: !361)
!361 = !{!362, !364}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !360, file: !112, line: 233, baseType: !363, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !360, file: !112, line: 234, baseType: !365, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DISubroutineType(types: !367)
!367 = !{null, !363}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !348, file: !349, line: 639, baseType: !369, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !349, line: 733, size: 10240, elements: !371)
!371 = !{!372, !584}
!372 = !DIDerivedType(tag: DW_TAG_member, scope: !370, file: !349, line: 734, baseType: !373, size: 10240)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !370, file: !349, line: 734, size: 10240, elements: !374)
!374 = !{!375, !379, !393, !397, !398, !399, !400, !401, !402, !410, !411, !412, !421, !422, !431, !432, !433, !447, !448, !449, !450, !451, !452, !453, !454, !455, !456, !457, !458, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !480, !494, !497, !550, !551, !552, !555, !558, !559, !562, !563, !564, !571, !572}
!375 = !DIDerivedType(tag: DW_TAG_member, scope: !373, file: !349, line: 739, baseType: !376, size: 512, align: 512)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !373, file: !349, line: 739, size: 512, align: 512, elements: !377)
!377 = !{!378}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !376, file: !349, line: 747, baseType: !206, size: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !373, file: !349, line: 750, baseType: !380, size: 128, offset: 512)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !381, line: 218, size: 128, elements: !382)
!381 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!382 = !{!383, !391, !392}
!383 = !DIDerivedType(tag: DW_TAG_member, scope: !380, file: !381, line: 219, baseType: !384, size: 32)
!384 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !380, file: !381, line: 219, size: 32, elements: !385)
!385 = !{!386, !387}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !384, file: !381, line: 220, baseType: !186, size: 32)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !384, file: !381, line: 221, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !381, line: 197, baseType: !389)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !381, line: 197, elements: !390)
!390 = !{}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !380, file: !381, line: 223, baseType: !7, size: 32, offset: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !380, file: !381, line: 224, baseType: !114, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !373, file: !349, line: 752, baseType: !394, size: 64, offset: 640)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{!113, !336, !113, !113, !113, !113}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !373, file: !349, line: 756, baseType: !113, size: 64, offset: 704)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !373, file: !349, line: 757, baseType: !113, size: 64, offset: 768)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !373, file: !349, line: 760, baseType: !113, size: 64, offset: 832)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !373, file: !349, line: 761, baseType: !113, size: 64, offset: 896)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !373, file: !349, line: 763, baseType: !113, size: 64, offset: 960)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !373, file: !349, line: 764, baseType: !403, size: 64, offset: 1024)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !338, line: 299, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !338, line: 299, size: 64, elements: !406)
!406 = !{!407}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !405, file: !338, line: 299, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !409, line: 18, baseType: !113)
!409 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!410 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !373, file: !349, line: 773, baseType: !206, size: 32, offset: 1088)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !373, file: !349, line: 785, baseType: !206, size: 32, offset: 1120)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !373, file: !349, line: 795, baseType: !413, size: 64, offset: 1152)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !349, line: 726, size: 128, elements: !415)
!415 = !{!416, !420}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !414, file: !349, line: 727, baseType: !417, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !121, line: 23, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !123, line: 31, baseType: !419)
!419 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !414, file: !349, line: 728, baseType: !46, size: 32, offset: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !373, file: !349, line: 801, baseType: !113, size: 64, offset: 1216)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !373, file: !349, line: 804, baseType: !423, size: 64, offset: 1280)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !424, line: 13, baseType: !425)
!424 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!425 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !112, line: 181, baseType: !426)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !112, line: 179, size: 64, elements: !427)
!427 = !{!428}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !426, file: !112, line: 180, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !121, line: 22, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !123, line: 30, baseType: !341)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !373, file: !349, line: 806, baseType: !46, size: 32, offset: 1344)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !373, file: !349, line: 808, baseType: !186, size: 32, offset: 1376)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !373, file: !349, line: 823, baseType: !434, size: 320, offset: 1408)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !435, line: 48, size: 320, elements: !436)
!435 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!436 = !{!437, !438, !439, !444, !446}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !434, file: !435, line: 49, baseType: !423, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !434, file: !435, line: 55, baseType: !423, size: 64, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !434, file: !435, line: 57, baseType: !440, size: 32, offset: 128)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !441, line: 15, size: 32, elements: !442)
!441 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!442 = !{!443}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !440, file: !441, line: 20, baseType: !206, size: 32)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !434, file: !435, line: 59, baseType: !445, size: 32, offset: 160)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !195, line: 23, baseType: !194)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !434, file: !435, line: 60, baseType: !173, size: 128, offset: 192)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !373, file: !349, line: 825, baseType: !173, size: 128, offset: 1728)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !373, file: !349, line: 845, baseType: !46, size: 32, offset: 1856)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !373, file: !349, line: 849, baseType: !113, size: 64, offset: 1920)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !373, file: !349, line: 850, baseType: !113, size: 64, offset: 1984)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !373, file: !349, line: 852, baseType: !113, size: 64, offset: 2048)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !373, file: !349, line: 853, baseType: !113, size: 64, offset: 2112)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !373, file: !349, line: 854, baseType: !425, size: 64, offset: 2176)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !373, file: !349, line: 855, baseType: !113, size: 64, offset: 2240)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !373, file: !349, line: 856, baseType: !113, size: 64, offset: 2304)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !373, file: !349, line: 857, baseType: !113, size: 64, offset: 2368)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !373, file: !349, line: 858, baseType: !113, size: 64, offset: 2432)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !373, file: !349, line: 865, baseType: !459, size: 32, offset: 2496)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !460, line: 69, baseType: !461)
!460 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !460, line: 64, size: 32, elements: !462)
!462 = !{!463}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !461, file: !460, line: 65, baseType: !7, size: 32)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !373, file: !349, line: 867, baseType: !186, size: 32, offset: 2528)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !373, file: !349, line: 869, baseType: !113, size: 64, offset: 2560)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !373, file: !349, line: 869, baseType: !113, size: 64, offset: 2624)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !373, file: !349, line: 869, baseType: !113, size: 64, offset: 2688)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !373, file: !349, line: 869, baseType: !113, size: 64, offset: 2752)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !373, file: !349, line: 870, baseType: !113, size: 64, offset: 2816)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !373, file: !349, line: 870, baseType: !113, size: 64, offset: 2880)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !373, file: !349, line: 870, baseType: !113, size: 64, offset: 2944)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !373, file: !349, line: 871, baseType: !113, size: 64, offset: 3008)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !373, file: !349, line: 871, baseType: !113, size: 64, offset: 3072)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !373, file: !349, line: 871, baseType: !113, size: 64, offset: 3136)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !373, file: !349, line: 871, baseType: !113, size: 64, offset: 3200)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !373, file: !349, line: 873, baseType: !477, size: 3328, offset: 3264)
!477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 3328, elements: !478)
!478 = !{!479}
!479 = !DISubrange(count: 52)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !373, file: !349, line: 875, baseType: !481, size: 1280, offset: 6592)
!481 = !DICompositeType(tag: DW_TAG_array_type, baseType: !482, size: 1280, elements: !492)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !483, line: 22, size: 320, elements: !484)
!483 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!484 = !{!485, !486, !487, !488}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !482, file: !483, line: 23, baseType: !445, size: 32)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !482, file: !483, line: 24, baseType: !429, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !482, file: !483, line: 26, baseType: !173, size: 128, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !482, file: !483, line: 28, baseType: !489, size: 64, offset: 256)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !121, line: 20, baseType: !491)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !123, line: 26, baseType: !46)
!492 = !{!493}
!493 = !DISubrange(count: 4)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !373, file: !349, line: 877, baseType: !495, size: 64, offset: 7872)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !349, line: 877, flags: DIFlagFwdDecl)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !373, file: !349, line: 880, baseType: !498, size: 1088, offset: 7936)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !499, line: 72, baseType: !500)
!499 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !499, line: 23, size: 1088, elements: !501)
!501 = !{!502, !503, !504, !505, !506, !509, !510, !518, !519, !544, !545, !546}
!502 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !500, file: !499, line: 28, baseType: !417, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !500, file: !499, line: 38, baseType: !425, size: 64, offset: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !500, file: !499, line: 40, baseType: !113, size: 64, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !500, file: !499, line: 43, baseType: !434, size: 320, offset: 192)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !500, file: !499, line: 44, baseType: !507, size: 64, offset: 512)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !499, line: 44, flags: DIFlagFwdDecl)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !500, file: !499, line: 48, baseType: !113, size: 64, offset: 576)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !500, file: !499, line: 59, baseType: !511, size: 256, offset: 640)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !512, line: 66, size: 256, elements: !513)
!512 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!513 = !{!514, !515, !516, !517}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !511, file: !512, line: 67, baseType: !423, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !511, file: !512, line: 68, baseType: !445, size: 32, offset: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !511, file: !512, line: 70, baseType: !440, size: 32, offset: 96)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !511, file: !512, line: 72, baseType: !173, size: 128, offset: 128)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !500, file: !499, line: 60, baseType: !114, size: 64, offset: 896)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !500, file: !499, line: 61, baseType: !520, size: 64, offset: 960)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !522)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !523, line: 13, size: 1216, elements: !524)
!523 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!524 = !{!525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !522, file: !523, line: 14, baseType: !114, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !522, file: !523, line: 15, baseType: !113, size: 64, offset: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !522, file: !523, line: 17, baseType: !113, size: 64, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !522, file: !523, line: 17, baseType: !113, size: 64, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !522, file: !523, line: 18, baseType: !113, size: 64, offset: 256)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !522, file: !523, line: 18, baseType: !113, size: 64, offset: 320)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !522, file: !523, line: 19, baseType: !159, size: 64, offset: 384)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !522, file: !523, line: 21, baseType: !290, size: 64, offset: 448)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !522, file: !523, line: 23, baseType: !290, size: 64, offset: 512)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !522, file: !523, line: 24, baseType: !290, size: 64, offset: 576)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !522, file: !523, line: 25, baseType: !290, size: 64, offset: 640)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !522, file: !523, line: 26, baseType: !290, size: 64, offset: 704)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !522, file: !523, line: 27, baseType: !290, size: 64, offset: 768)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !522, file: !523, line: 28, baseType: !290, size: 64, offset: 832)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !522, file: !523, line: 29, baseType: !290, size: 64, offset: 896)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !522, file: !523, line: 30, baseType: !290, size: 64, offset: 960)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !522, file: !523, line: 31, baseType: !290, size: 64, offset: 1024)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !522, file: !523, line: 32, baseType: !290, size: 64, offset: 1088)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !522, file: !523, line: 33, baseType: !290, size: 64, offset: 1152)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !500, file: !499, line: 63, baseType: !206, size: 32, offset: 1024)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !500, file: !499, line: 69, baseType: !222, size: 16, offset: 1056)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !500, file: !499, line: 70, baseType: !547, size: 16, offset: 1072)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !121, line: 18, baseType: !548)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !123, line: 23, baseType: !549)
!549 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !373, file: !349, line: 882, baseType: !113, size: 64, offset: 9024)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !373, file: !349, line: 885, baseType: !186, size: 32, offset: 9088)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !373, file: !349, line: 886, baseType: !553, size: 64, offset: 9152)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !349, line: 732, flags: DIFlagFwdDecl)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !373, file: !349, line: 901, baseType: !556, size: 64, offset: 9216)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !349, line: 901, flags: DIFlagFwdDecl)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !373, file: !349, line: 904, baseType: !336, size: 64, offset: 9280)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !373, file: !349, line: 906, baseType: !560, size: 64, offset: 9344)
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !561, size: 64)
!561 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !349, line: 906, flags: DIFlagFwdDecl)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !373, file: !349, line: 930, baseType: !206, size: 32, offset: 9408)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !373, file: !349, line: 933, baseType: !206, size: 32, offset: 9440)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !373, file: !349, line: 935, baseType: !565, size: 64, offset: 9472)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !566, line: 103, size: 64, elements: !567)
!566 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!567 = !{!568}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !565, file: !566, line: 104, baseType: !569, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !566, line: 101, flags: DIFlagFwdDecl)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !373, file: !349, line: 940, baseType: !423, size: 64, offset: 9536)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !373, file: !349, line: 942, baseType: !573, size: 256, offset: 9600)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !574, line: 98, size: 256, elements: !575)
!574 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!575 = !{!576, !577, !578}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !573, file: !574, line: 99, baseType: !423, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !573, file: !574, line: 100, baseType: !173, size: 128, offset: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !573, file: !574, line: 101, baseType: !579, size: 64, offset: 192)
!579 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !574, line: 21, baseType: !580)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = !DISubroutineType(types: !582)
!582 = !{null, !583}
!583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !370, file: !349, line: 986, baseType: !585, offset: 10240)
!585 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, elements: !586)
!586 = !{!587}
!587 = !DISubrange(count: -1)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !348, file: !349, line: 640, baseType: !589, size: 64, offset: 192)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !338, line: 297, baseType: !590)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !338, line: 297, size: 64, elements: !591)
!591 = !{!592}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !590, file: !338, line: 297, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !409, line: 19, baseType: !113)
!594 = !DIDerivedType(tag: DW_TAG_member, scope: !348, file: !349, line: 646, baseType: !595, size: 64, offset: 256)
!595 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !348, file: !349, line: 646, size: 64, elements: !596)
!596 = !{!597, !600}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !595, file: !349, line: 647, baseType: !598, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !599)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !349, line: 542, baseType: !113)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !595, file: !349, line: 648, baseType: !599, size: 64)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !348, file: !349, line: 666, baseType: !46, size: 32, offset: 320)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !348, file: !349, line: 667, baseType: !603, size: 64, offset: 384)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !349, line: 579, size: 320, elements: !605)
!605 = !{!606}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !604, file: !349, line: 580, baseType: !434, size: 320)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !348, file: !349, line: 670, baseType: !151, size: 8, offset: 448)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !348, file: !349, line: 681, baseType: !609, size: 256, offset: 512)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !348, file: !349, line: 678, size: 256, elements: !610)
!610 = !{!611, !619}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !609, file: !349, line: 679, baseType: !612, size: 192, align: 64)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !613, line: 5, size: 192, align: 64, elements: !614)
!613 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!614 = !{!615, !616, !618}
!615 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !612, file: !613, line: 6, baseType: !113, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !612, file: !613, line: 7, baseType: !617, size: 64, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !612, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !612, file: !613, line: 8, baseType: !617, size: 64, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !609, file: !349, line: 680, baseType: !113, size: 64, offset: 192)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !348, file: !349, line: 689, baseType: !173, size: 128, offset: 768)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !348, file: !349, line: 691, baseType: !622, size: 64, offset: 896)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !349, line: 691, flags: DIFlagFwdDecl)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !348, file: !349, line: 694, baseType: !625, size: 64, offset: 960)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !627)
!627 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !349, line: 694, flags: DIFlagFwdDecl)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !348, file: !349, line: 697, baseType: !113, size: 64, offset: 1024)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !348, file: !349, line: 699, baseType: !336, size: 64, offset: 1088)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !348, file: !349, line: 700, baseType: !114, size: 64, offset: 1152)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !348, file: !349, line: 711, baseType: !423, size: 64, offset: 1216)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !348, file: !349, line: 717, baseType: !633, size: 64, offset: 1280)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !349, line: 717, flags: DIFlagFwdDecl)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !348, file: !349, line: 722, baseType: !636, offset: 1344)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !349, line: 570, elements: !390)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !308, file: !280, line: 90, baseType: !638, size: 64, offset: 192)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !308, file: !280, line: 91, baseType: !640, size: 64, offset: 256)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !270, file: !100, line: 120, baseType: !642, size: 64, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!645, !237}
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !647)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !648)
!648 = !{!649, !650, !654, !658, !664, !668}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !647, file: !6, line: 40, baseType: !5, size: 32)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !647, file: !6, line: 41, baseType: !651, size: 64, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{!151}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !647, file: !6, line: 42, baseType: !655, size: 64, offset: 128)
!655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !656, size: 64)
!656 = !DISubroutineType(types: !657)
!657 = !{!114}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !647, file: !6, line: 43, baseType: !659, size: 64, offset: 192)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!159, !662}
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !647, file: !6, line: 44, baseType: !665, size: 64, offset: 256)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!159}
!668 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !647, file: !6, line: 45, baseType: !669, size: 64, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = !DISubroutineType(types: !671)
!671 = !{null, !114}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !270, file: !100, line: 121, baseType: !673, size: 64, offset: 256)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = !DISubroutineType(types: !675)
!675 = !{!159, !237}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !270, file: !100, line: 122, baseType: !677, size: 64, offset: 320)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{null, !237, !680, !688}
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !682, line: 23, baseType: !683)
!682 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!683 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !682, line: 21, size: 32, elements: !684)
!684 = !{!685}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !683, file: !682, line: 22, baseType: !686, size: 32)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !112, line: 37, baseType: !687)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !288, line: 49, baseType: !7)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !682, line: 28, baseType: !690)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !682, line: 26, size: 32, elements: !691)
!691 = !{!692}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !690, file: !682, line: 27, baseType: !693, size: 32)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !112, line: 38, baseType: !694)
!694 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !288, line: 50, baseType: !7)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !166, file: !100, line: 70, baseType: !696, size: 64, offset: 384)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !698, line: 190, size: 1152, elements: !699)
!698 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!699 = !{!700, !701, !702, !703, !704, !705, !706, !707, !802, !803, !804, !805, !806, !809}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !697, file: !698, line: 191, baseType: !206, size: 32)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !697, file: !698, line: 192, baseType: !206, size: 32, offset: 32)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !697, file: !698, line: 202, baseType: !696, size: 64, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !697, file: !698, line: 203, baseType: !169, size: 64, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !697, file: !698, line: 205, baseType: !612, size: 192, align: 64, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !697, file: !698, line: 207, baseType: !159, size: 64, offset: 384)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !697, file: !698, line: 208, baseType: !7, size: 32, offset: 448)
!707 = !DIDerivedType(tag: DW_TAG_member, scope: !697, file: !698, line: 209, baseType: !708, size: 256, offset: 512)
!708 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !697, file: !698, line: 209, size: 256, elements: !709)
!709 = !{!710, !722, !726}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !708, file: !698, line: 210, baseType: !711, size: 256)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !698, line: 153, size: 256, elements: !712)
!712 = !{!713, !714, !718, !721}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !711, file: !698, line: 154, baseType: !113, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !711, file: !698, line: 156, baseType: !715, size: 64, offset: 64)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !613, line: 12, size: 64, elements: !716)
!716 = !{!717}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !715, file: !613, line: 13, baseType: !617, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !711, file: !698, line: 162, baseType: !719, size: 64, offset: 128)
!719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !720, size: 64)
!720 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !698, line: 162, flags: DIFlagFwdDecl)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !711, file: !698, line: 167, baseType: !113, size: 64, offset: 192)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !708, file: !698, line: 211, baseType: !723, size: 64)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !698, line: 170, size: 64, elements: !724)
!724 = !{!725}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !723, file: !698, line: 171, baseType: !696, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !708, file: !698, line: 212, baseType: !727, size: 256)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !698, line: 174, size: 256, elements: !728)
!728 = !{!729, !797, !800, !801}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !727, file: !698, line: 175, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !732)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !698, line: 271, size: 768, elements: !733)
!733 = !{!734, !757, !761, !765, !770, !774, !778, !782, !783, !784, !785, !793}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !732, file: !698, line: 276, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!46, !738}
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !698, line: 251, size: 1216, elements: !740)
!740 = !{!741, !742, !743, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !739, file: !698, line: 253, baseType: !696, size: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !739, file: !698, line: 254, baseType: !336, size: 64, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !739, file: !698, line: 255, baseType: !744, size: 64, offset: 128)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !746, line: 66, flags: DIFlagFwdDecl)
!746 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!747 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !739, file: !698, line: 256, baseType: !114, size: 64, offset: 192)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !739, file: !698, line: 259, baseType: !511, size: 256, offset: 256)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !739, file: !698, line: 260, baseType: !511, size: 256, offset: 512)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !739, file: !698, line: 261, baseType: !46, size: 32, offset: 768)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !739, file: !698, line: 262, baseType: !173, size: 128, offset: 832)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !739, file: !698, line: 263, baseType: !254, size: 64, offset: 960)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !739, file: !698, line: 265, baseType: !301, size: 64, offset: 1024)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !739, file: !698, line: 266, baseType: !151, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !739, file: !698, line: 267, baseType: !151, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !739, file: !698, line: 268, baseType: !625, size: 64, offset: 1152)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !732, file: !698, line: 277, baseType: !758, size: 64, offset: 64)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{null, !738}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !732, file: !698, line: 290, baseType: !762, size: 64, offset: 128)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{!46, !744, !114}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !732, file: !698, line: 292, baseType: !766, size: 64, offset: 192)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{!114, !744, !769}
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !732, file: !698, line: 293, baseType: !771, size: 64, offset: 256)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DISubroutineType(types: !773)
!773 = !{!114, !744, !114, !769}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !732, file: !698, line: 294, baseType: !775, size: 64, offset: 320)
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !776, size: 64)
!776 = !DISubroutineType(types: !777)
!777 = !{null, !744, !114}
!778 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !732, file: !698, line: 296, baseType: !779, size: 64, offset: 384)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{!286, !738, !254, !301, !339}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !732, file: !698, line: 306, baseType: !301, size: 64, offset: 448)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !732, file: !698, line: 313, baseType: !151, size: 8, offset: 512)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !732, file: !698, line: 314, baseType: !779, size: 64, offset: 576)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !732, file: !698, line: 317, baseType: !786, size: 64, offset: 640)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DISubroutineType(types: !788)
!788 = !{!789, !738, !791}
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !790, line: 59, baseType: !7)
!790 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !698, line: 31, flags: DIFlagFwdDecl)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !732, file: !698, line: 320, baseType: !794, size: 64, offset: 704)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = !DISubroutineType(types: !796)
!796 = !{!46, !738, !347}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !727, file: !698, line: 176, baseType: !798, size: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !698, line: 35, flags: DIFlagFwdDecl)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !727, file: !698, line: 177, baseType: !339, size: 64, offset: 128)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !727, file: !698, line: 178, baseType: !696, size: 64, offset: 192)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !697, file: !698, line: 215, baseType: !114, size: 64, offset: 768)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !697, file: !698, line: 221, baseType: !417, size: 64, offset: 832)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !697, file: !698, line: 223, baseType: !224, size: 16, offset: 896)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !697, file: !698, line: 224, baseType: !296, size: 16, offset: 912)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !697, file: !698, line: 225, baseType: !807, size: 64, offset: 960)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !698, line: 36, flags: DIFlagFwdDecl)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !697, file: !698, line: 227, baseType: !360, size: 128, align: 64, offset: 1024)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !166, file: !100, line: 71, baseType: !811, size: 32, offset: 448)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !812, line: 19, size: 32, elements: !813)
!812 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!813 = !{!814}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !811, file: !812, line: 20, baseType: !815, size: 32)
!815 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !816, line: 113, baseType: !817)
!816 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !816, line: 111, size: 32, elements: !818)
!818 = !{!819}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !817, file: !816, line: 112, baseType: !206, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !166, file: !100, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !166, file: !100, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !166, file: !100, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !166, file: !100, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !166, file: !100, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !163, file: !26, line: 707, baseType: !826, size: 64, offset: 512)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !163, file: !26, line: 709, baseType: !828, size: 64, offset: 576)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !163, file: !26, line: 711, baseType: !169, size: 64, offset: 640)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !163, file: !26, line: 712, baseType: !832, size: 64, offset: 704)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !834)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !835)
!835 = !{!836, !837, !838, !842, !847, !851}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !834, file: !26, line: 90, baseType: !169, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !834, file: !26, line: 91, baseType: !305, size: 64, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !834, file: !26, line: 92, baseType: !839, size: 64, offset: 128)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DISubroutineType(types: !841)
!841 = !{!46, !161, !249}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !834, file: !26, line: 93, baseType: !843, size: 64, offset: 192)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DISubroutineType(types: !845)
!845 = !{!254, !161, !846, !680, !688}
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !834, file: !26, line: 95, baseType: !848, size: 64, offset: 256)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = !DISubroutineType(types: !850)
!850 = !{null, !826}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !834, file: !26, line: 97, baseType: !852, size: 64, offset: 320)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !854)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !855)
!855 = !{!856, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !854, file: !38, line: 287, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!46, !826}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !854, file: !38, line: 288, baseType: !848, size: 64, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !854, file: !38, line: 289, baseType: !857, size: 64, offset: 128)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !854, file: !38, line: 290, baseType: !857, size: 64, offset: 192)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !854, file: !38, line: 291, baseType: !857, size: 64, offset: 256)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !854, file: !38, line: 292, baseType: !857, size: 64, offset: 320)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !854, file: !38, line: 293, baseType: !857, size: 64, offset: 384)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !854, file: !38, line: 294, baseType: !857, size: 64, offset: 448)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !854, file: !38, line: 295, baseType: !857, size: 64, offset: 512)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !854, file: !38, line: 296, baseType: !857, size: 64, offset: 576)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !854, file: !38, line: 297, baseType: !857, size: 64, offset: 640)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !854, file: !38, line: 298, baseType: !857, size: 64, offset: 704)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !854, file: !38, line: 299, baseType: !857, size: 64, offset: 768)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !854, file: !38, line: 300, baseType: !857, size: 64, offset: 832)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !854, file: !38, line: 301, baseType: !857, size: 64, offset: 896)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !854, file: !38, line: 302, baseType: !857, size: 64, offset: 960)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !854, file: !38, line: 303, baseType: !857, size: 64, offset: 1024)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !854, file: !38, line: 304, baseType: !857, size: 64, offset: 1088)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !854, file: !38, line: 305, baseType: !857, size: 64, offset: 1152)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !854, file: !38, line: 306, baseType: !857, size: 64, offset: 1216)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !854, file: !38, line: 307, baseType: !857, size: 64, offset: 1280)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !854, file: !38, line: 308, baseType: !857, size: 64, offset: 1344)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !854, file: !38, line: 309, baseType: !857, size: 64, offset: 1408)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !163, file: !26, line: 714, baseType: !883, size: 64, offset: 768)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !885)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !886, line: 80, size: 1344, elements: !887)
!886 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!887 = !{!888, !889, !890, !891, !892, !893, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1347}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !885, file: !886, line: 81, baseType: !169, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !885, file: !886, line: 82, baseType: !169, size: 64, offset: 64)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !885, file: !886, line: 83, baseType: !305, size: 64, offset: 128)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !885, file: !886, line: 84, baseType: !305, size: 64, offset: 192)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !885, file: !886, line: 85, baseType: !305, size: 64, offset: 256)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !885, file: !886, line: 87, baseType: !894, size: 64, offset: 320)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DISubroutineType(types: !896)
!896 = !{!46, !826, !897}
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !899)
!899 = !{!900, !901, !902, !1278, !1279, !1280, !1281, !1297, !1310, !1311, !1312, !1313, !1314, !1322, !1323, !1324, !1325, !1326, !1327}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !898, file: !20, line: 97, baseType: !169, size: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !898, file: !20, line: 98, baseType: !883, size: 64, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !898, file: !20, line: 100, baseType: !903, size: 64, offset: 128)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !905)
!905 = !{!906, !907, !908, !912, !933, !959, !960, !961, !962, !966, !969, !970, !971, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1031, !1034, !1038, !1058, !1076, !1077, !1078, !1079, !1088, !1111, !1112, !1115, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1129, !1130, !1236, !1244, !1245, !1246, !1248, !1252, !1253, !1257, !1258, !1259, !1260, !1262, !1263, !1264, !1271, !1272, !1273, !1277}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !904, file: !13, line: 403, baseType: !12, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !904, file: !13, line: 406, baseType: !173, size: 128, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !904, file: !13, line: 409, baseType: !909, size: 448, offset: 192)
!909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 448, elements: !910)
!910 = !{!911}
!911 = !DISubrange(count: 56)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !904, file: !13, line: 417, baseType: !913, size: 768, offset: 640)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !914)
!914 = !{!915, !916, !917, !918, !921}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !913, file: !13, line: 46, baseType: !166, size: 512)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !913, file: !13, line: 47, baseType: !903, size: 64, offset: 512)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !913, file: !13, line: 48, baseType: !179, size: 64, offset: 576)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !913, file: !13, line: 49, baseType: !919, size: 64, offset: 640)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !13, line: 49, flags: DIFlagFwdDecl)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !913, file: !13, line: 50, baseType: !922, size: 64, offset: 704)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !923, size: 64)
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !924, line: 26, size: 256, elements: !925)
!924 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!925 = !{!926, !927}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !923, file: !924, line: 27, baseType: !7, size: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !923, file: !924, line: 28, baseType: !928, size: 192, offset: 64)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !929, line: 43, size: 192, elements: !930)
!929 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!930 = !{!931, !932}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !928, file: !929, line: 44, baseType: !445, size: 32)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !928, file: !929, line: 45, baseType: !173, size: 128, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !904, file: !13, line: 418, baseType: !934, size: 64, offset: 1408)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !936)
!936 = !{!937, !938, !943, !947, !951, !955}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !935, file: !13, line: 54, baseType: !292, size: 128)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !935, file: !13, line: 55, baseType: !939, size: 64, offset: 128)
!939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !940, size: 64)
!940 = !DISubroutineType(types: !941)
!941 = !{!286, !934, !942, !254}
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !935, file: !13, line: 57, baseType: !944, size: 64, offset: 192)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DISubroutineType(types: !946)
!946 = !{!286, !934, !942, !169, !301}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !935, file: !13, line: 59, baseType: !948, size: 64, offset: 256)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DISubroutineType(types: !950)
!950 = !{null, !903, !169}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !935, file: !13, line: 60, baseType: !952, size: 64, offset: 320)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DISubroutineType(types: !954)
!954 = !{!46, !903}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !935, file: !13, line: 61, baseType: !956, size: 64, offset: 384)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DISubroutineType(types: !958)
!958 = !{null, !903}
!959 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !904, file: !13, line: 419, baseType: !169, size: 64, offset: 1472)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !904, file: !13, line: 420, baseType: !169, size: 64, offset: 1536)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !904, file: !13, line: 421, baseType: !179, size: 64, offset: 1600)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !904, file: !13, line: 424, baseType: !963, size: 64, offset: 1664)
!963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !965)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !904, file: !13, line: 425, baseType: !967, size: 64, offset: 1728)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !490)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !904, file: !13, line: 426, baseType: !7, size: 32, offset: 1792)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !904, file: !13, line: 435, baseType: !511, size: 256, offset: 1856)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !904, file: !13, line: 437, baseType: !972, size: 64, offset: 2112)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !974, line: 69, size: 320, elements: !975)
!974 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!975 = !{!976, !977, !978, !995, !997, !1001, !1002}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !973, file: !974, line: 70, baseType: !169, size: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !973, file: !974, line: 71, baseType: !903, size: 64, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !973, file: !974, line: 72, baseType: !979, size: 64, offset: 128)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !981)
!981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !974, line: 47, size: 256, elements: !982)
!982 = !{!983, !984, !990, !994}
!983 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !981, file: !974, line: 49, baseType: !7, size: 32)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !981, file: !974, line: 51, baseType: !985, size: 64, offset: 64)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{!46, !169, !988}
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !989, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !973)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !981, file: !974, line: 53, baseType: !991, size: 64, offset: 128)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{!46, !254, !988}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !981, file: !974, line: 55, baseType: !669, size: 64, offset: 192)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !973, file: !974, line: 73, baseType: !996, size: 16, offset: 192)
!996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !222)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !973, file: !974, line: 74, baseType: !998, size: 8, offset: 208)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !121, line: 16, baseType: !999)
!999 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !123, line: 20, baseType: !1000)
!1000 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !973, file: !974, line: 75, baseType: !214, size: 8, offset: 216)
!1002 = !DIDerivedType(tag: DW_TAG_member, scope: !973, file: !974, line: 76, baseType: !1003, size: 64, offset: 256)
!1003 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !973, file: !974, line: 76, size: 64, elements: !1004)
!1004 = !{!1005, !1006, !1013}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1003, file: !974, line: 77, baseType: !114, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1003, file: !974, line: 78, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1009)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !974, line: 86, size: 128, elements: !1010)
!1010 = !{!1011, !1012}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1009, file: !974, line: 87, baseType: !7, size: 32)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1009, file: !974, line: 88, baseType: !254, size: 64, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1003, file: !974, line: 79, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1016)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !974, line: 92, size: 256, elements: !1017)
!1017 = !{!1018, !1019, !1020, !1022, !1023}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1016, file: !974, line: 94, baseType: !7, size: 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1016, file: !974, line: 95, baseType: !7, size: 32, offset: 32)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1016, file: !974, line: 96, baseType: !1021, size: 64, offset: 64)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1016, file: !974, line: 97, baseType: !979, size: 64, offset: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1016, file: !974, line: 98, baseType: !114, size: 64, offset: 192)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !904, file: !13, line: 438, baseType: !7, size: 32, offset: 2176)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !904, file: !13, line: 441, baseType: !7, size: 32, offset: 2208)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !904, file: !13, line: 442, baseType: !963, size: 64, offset: 2240)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !904, file: !13, line: 443, baseType: !967, size: 64, offset: 2304)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !904, file: !13, line: 444, baseType: !151, size: 8, offset: 2368)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !904, file: !13, line: 451, baseType: !151, size: 8, offset: 2376)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !904, file: !13, line: 454, baseType: !7, size: 32, offset: 2400)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !904, file: !13, line: 455, baseType: !1032, size: 64, offset: 2432)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !13, line: 43, flags: DIFlagFwdDecl)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !904, file: !13, line: 458, baseType: !1035, size: 64, offset: 2496)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DISubroutineType(types: !1037)
!1037 = !{!46}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !904, file: !13, line: 460, baseType: !1039, size: 4032, align: 512, offset: 2560)
!1039 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1040, size: 4032, elements: !1056)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !13, line: 362, size: 576, elements: !1041)
!1041 = !{!1042, !1043, !1044}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1040, file: !13, line: 363, baseType: !114, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1040, file: !13, line: 364, baseType: !7, size: 32, offset: 64)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1040, file: !13, line: 367, baseType: !1045, size: 448, offset: 128)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !13, line: 319, size: 448, elements: !1046)
!1046 = !{!1047, !1048}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1045, file: !13, line: 320, baseType: !903, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1045, file: !13, line: 321, baseType: !1049, size: 384, offset: 64)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1050, line: 40, size: 384, elements: !1051)
!1050 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1051 = !{!1052}
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1049, file: !1050, line: 41, baseType: !1053, size: 384, align: 64)
!1053 = !DICompositeType(tag: DW_TAG_array_type, baseType: !612, size: 384, align: 64, elements: !1054)
!1054 = !{!1055}
!1055 = !DISubrange(count: 2)
!1056 = !{!1057}
!1057 = !DISubrange(count: 7)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !904, file: !13, line: 463, baseType: !1059, size: 192, offset: 6592)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1060, line: 8, size: 192, elements: !1061)
!1060 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1061 = !{!1062, !1063, !1065}
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1059, file: !1060, line: 10, baseType: !7, size: 32)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1059, file: !1060, line: 11, baseType: !1064, size: 64, offset: 64)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1059, file: !1060, line: 12, baseType: !1066, size: 64, offset: 128)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1068, line: 59, size: 48, elements: !1069)
!1068 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1069 = !{!1070, !1071, !1072, !1073, !1074, !1075}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1067, file: !1068, line: 60, baseType: !547, size: 16)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1067, file: !1068, line: 61, baseType: !547, size: 16, offset: 16)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1067, file: !1068, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1067, file: !1068, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1067, file: !1068, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1067, file: !1068, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !904, file: !13, line: 465, baseType: !113, size: 64, offset: 6784)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !904, file: !13, line: 469, baseType: !7, size: 32, offset: 6848)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !904, file: !13, line: 470, baseType: !173, size: 128, offset: 6912)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !904, file: !13, line: 471, baseType: !1080, size: 64, offset: 7040)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1082, line: 33, size: 96, elements: !1083)
!1082 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1083 = !{!1084, !1085, !1086, !1087}
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1081, file: !1082, line: 37, baseType: !46, size: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1081, file: !1082, line: 43, baseType: !46, size: 32, offset: 32)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1081, file: !1082, line: 45, baseType: !224, size: 16, offset: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1081, file: !1082, line: 47, baseType: !224, size: 16, offset: 80)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !904, file: !13, line: 476, baseType: !1089, size: 64, offset: 7104)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !13, line: 378, size: 256, elements: !1091)
!1091 = !{!1092, !1108, !1109, !1110}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1090, file: !13, line: 379, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1094, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1095, line: 204, baseType: !1096)
!1095 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1095, line: 197, size: 192, elements: !1097)
!1097 = !{!1098, !1100, !1101, !1102, !1104, !1106}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1096, file: !1095, line: 198, baseType: !1099, size: 32)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1095, line: 21, baseType: !122)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1096, file: !1095, line: 199, baseType: !216, size: 8, offset: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1096, file: !1095, line: 200, baseType: !216, size: 8, offset: 40)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1096, file: !1095, line: 201, baseType: !1103, size: 16, offset: 48)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1095, line: 17, baseType: !223)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1096, file: !1095, line: 202, baseType: !1105, size: 64, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1095, line: 16, baseType: !418)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1096, file: !1095, line: 203, baseType: !1107, size: 64, offset: 128)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1095, line: 22, baseType: !418)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1090, file: !13, line: 380, baseType: !7, size: 32, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1090, file: !13, line: 381, baseType: !254, size: 64, offset: 128)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1090, file: !13, line: 382, baseType: !254, size: 64, offset: 192)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !904, file: !13, line: 477, baseType: !1090, size: 256, offset: 7168)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !904, file: !13, line: 480, baseType: !1113, size: 64, offset: 7424)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !904, file: !13, line: 483, baseType: !1116, size: 64, offset: 7488)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !904, file: !13, line: 488, baseType: !254, size: 64, offset: 7552)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !904, file: !13, line: 492, baseType: !114, size: 64, offset: 7616)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !904, file: !13, line: 493, baseType: !7, size: 32, offset: 7680)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !904, file: !13, line: 495, baseType: !114, size: 64, offset: 7744)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !904, file: !13, line: 496, baseType: !7, size: 32, offset: 7808)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !904, file: !13, line: 499, baseType: !7, size: 32, offset: 7840)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !904, file: !13, line: 500, baseType: !1125, size: 64, offset: 7872)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1127, line: 45, baseType: !1128)
!1127 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !904, file: !13, line: 503, baseType: !7, size: 32, offset: 7936)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !904, file: !13, line: 504, baseType: !1131, size: 64, offset: 8000)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1134, line: 96, size: 192, elements: !1135)
!1134 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1135 = !{!1136, !1137, !1197, !1200}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1133, file: !1134, line: 97, baseType: !7, size: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1133, file: !1134, line: 98, baseType: !1138, size: 64, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1134, line: 24, size: 3072, elements: !1140)
!1140 = !{!1141, !1143, !1144, !1145, !1146, !1160, !1161, !1162, !1163, !1181, !1182, !1183, !1194, !1195, !1196}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1139, file: !1134, line: 26, baseType: !1142, size: 128)
!1142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 128, elements: !1054)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1139, file: !1134, line: 27, baseType: !1142, size: 128, offset: 128)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1139, file: !1134, line: 28, baseType: !46, size: 32, offset: 256)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1139, file: !1134, line: 31, baseType: !186, size: 32, align: 512, offset: 512)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1139, file: !1134, line: 32, baseType: !1147, size: 960, offset: 576)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1148, line: 206, size: 960, elements: !1149)
!1148 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1149 = !{!1150, !1151, !1154, !1156, !1157, !1159}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1147, file: !1148, line: 207, baseType: !363, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1147, file: !1148, line: 208, baseType: !1152, size: 256, offset: 64)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1153, size: 256, elements: !492)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1147, file: !1148, line: 209, baseType: !1155, size: 256, offset: 320)
!1155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 256, elements: !492)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1147, file: !1148, line: 213, baseType: !290, size: 64, offset: 576)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1147, file: !1148, line: 215, baseType: !1158, size: 256, offset: 640)
!1158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 256, elements: !492)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1147, file: !1148, line: 216, baseType: !214, size: 8, offset: 896)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1139, file: !1134, line: 33, baseType: !113, size: 64, offset: 1536)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1139, file: !1134, line: 34, baseType: !113, size: 64, offset: 1600)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1139, file: !1134, line: 35, baseType: !151, size: 8, offset: 1664)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1139, file: !1134, line: 36, baseType: !1164, size: 320, offset: 1728)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1165, line: 11, size: 320, elements: !1166)
!1165 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1166 = !{!1167, !1174, !1175, !1180}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1164, file: !1165, line: 16, baseType: !1168, size: 128)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !112, line: 198, size: 128, elements: !1169)
!1169 = !{!1170, !1172}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1168, file: !112, line: 199, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1168, file: !112, line: 199, baseType: !1173, size: 64, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1164, file: !1165, line: 17, baseType: !113, size: 64, offset: 128)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1164, file: !1165, line: 18, baseType: !1176, size: 64, offset: 192)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{null, !1179}
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1164, file: !1165, line: 19, baseType: !120, size: 32, offset: 256)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1139, file: !1134, line: 37, baseType: !573, size: 256, offset: 2048)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1139, file: !1134, line: 38, baseType: !360, size: 128, align: 64, offset: 2304)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1139, file: !1134, line: 39, baseType: !1184, size: 64, offset: 2432)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1134, line: 49, size: 768, elements: !1186)
!1186 = !{!1187, !1188, !1189, !1190, !1191, !1192, !1193}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1185, file: !1134, line: 50, baseType: !186, size: 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1185, file: !1134, line: 51, baseType: !1155, size: 256, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1185, file: !1134, line: 53, baseType: !1155, size: 256, offset: 320)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1185, file: !1134, line: 54, baseType: !113, size: 64, offset: 576)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1185, file: !1134, line: 55, baseType: !1184, size: 64, offset: 640)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1185, file: !1134, line: 56, baseType: !46, size: 32, offset: 704)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1185, file: !1134, line: 57, baseType: !46, size: 32, offset: 736)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1139, file: !1134, line: 40, baseType: !113, size: 64, offset: 2496)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1139, file: !1134, line: 42, baseType: !46, size: 32, offset: 2560)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1139, file: !1134, line: 43, baseType: !1132, size: 64, offset: 2624)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1133, file: !1134, line: 99, baseType: !1198, offset: 128)
!1198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1199, line: 211, elements: !390)
!1199 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1133, file: !1134, line: 100, baseType: !1201, size: 64, offset: 128)
!1201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1202, size: 64)
!1202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1134, line: 63, size: 3008, elements: !1203)
!1203 = !{!1204, !1205, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1235}
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1202, file: !1134, line: 64, baseType: !1184, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1202, file: !1134, line: 65, baseType: !1206, size: 192, offset: 64)
!1206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1184, size: 192, elements: !255)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1202, file: !1134, line: 67, baseType: !46, size: 32, offset: 256)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1202, file: !1134, line: 68, baseType: !511, size: 256, offset: 320)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1202, file: !1134, line: 69, baseType: !186, size: 32, offset: 576)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1202, file: !1134, line: 70, baseType: !511, size: 256, offset: 640)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1202, file: !1134, line: 71, baseType: !113, size: 64, offset: 896)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1202, file: !1134, line: 72, baseType: !113, size: 64, offset: 960)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1202, file: !1134, line: 73, baseType: !113, size: 64, offset: 1024)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1202, file: !1134, line: 74, baseType: !113, size: 64, offset: 1088)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1202, file: !1134, line: 75, baseType: !113, size: 64, offset: 1152)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1202, file: !1134, line: 76, baseType: !113, size: 64, offset: 1216)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1202, file: !1134, line: 77, baseType: !113, size: 64, offset: 1280)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1202, file: !1134, line: 78, baseType: !113, size: 64, offset: 1344)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1202, file: !1134, line: 79, baseType: !151, size: 8, offset: 1408)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1202, file: !1134, line: 80, baseType: !113, size: 64, offset: 1472)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1202, file: !1134, line: 81, baseType: !511, size: 256, offset: 1536)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1202, file: !1134, line: 82, baseType: !923, size: 256, offset: 1792)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1202, file: !1134, line: 84, baseType: !206, size: 32, offset: 2048)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1202, file: !1134, line: 87, baseType: !113, size: 64, offset: 2112)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1202, file: !1134, line: 88, baseType: !113, size: 64, offset: 2176)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1202, file: !1134, line: 89, baseType: !1227, size: 704, offset: 2240)
!1227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !574, line: 111, size: 704, elements: !1228)
!1228 = !{!1229, !1230, !1231, !1234}
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1227, file: !574, line: 112, baseType: !573, size: 256)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1227, file: !574, line: 113, baseType: !1164, size: 320, offset: 256)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1227, file: !574, line: 116, baseType: !1232, size: 64, offset: 576)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !574, line: 18, flags: DIFlagFwdDecl)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1227, file: !574, line: 117, baseType: !46, size: 32, offset: 640)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1202, file: !1134, line: 90, baseType: !1132, size: 64, offset: 2944)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !904, file: !13, line: 515, baseType: !1237, size: 64, offset: 8064)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1239, line: 117, size: 128, elements: !1240)
!1239 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1240 = !{!1241, !1242, !1243}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1238, file: !1239, line: 118, baseType: !490, size: 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1238, file: !1239, line: 119, baseType: !490, size: 32, offset: 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1238, file: !1239, line: 120, baseType: !290, size: 64, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !904, file: !13, line: 516, baseType: !7, size: 32, offset: 8128)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !904, file: !13, line: 519, baseType: !7, size: 32, offset: 8160)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !904, file: !13, line: 520, baseType: !1247, size: 64, offset: 8192)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !904, file: !13, line: 523, baseType: !1249, size: 64, offset: 8256)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !13, line: 523, flags: DIFlagFwdDecl)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !904, file: !13, line: 524, baseType: !7, size: 32, offset: 8320)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !904, file: !13, line: 525, baseType: !1254, size: 64, offset: 8384)
!1254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1255, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !13, line: 525, flags: DIFlagFwdDecl)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !904, file: !13, line: 526, baseType: !7, size: 32, offset: 8448)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !904, file: !13, line: 533, baseType: !114, size: 64, offset: 8512)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !904, file: !13, line: 534, baseType: !7, size: 32, offset: 8576)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !904, file: !13, line: 535, baseType: !1261, size: 64, offset: 8640)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !904, file: !13, line: 536, baseType: !7, size: 32, offset: 8704)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !904, file: !13, line: 539, baseType: !46, size: 32, offset: 8736)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !904, file: !13, line: 540, baseType: !1265, size: 64, offset: 8768)
!1265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1266, size: 64)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1267, line: 32, size: 64, elements: !1268)
!1267 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1268 = !{!1269, !1270}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1266, file: !1267, line: 33, baseType: !490, size: 32)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1266, file: !1267, line: 34, baseType: !490, size: 32, offset: 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !904, file: !13, line: 563, baseType: !173, size: 128, offset: 8832)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !904, file: !13, line: 565, baseType: !173, size: 128, offset: 8960)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !904, file: !13, line: 568, baseType: !1274, size: 64, offset: 9088)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DISubroutineType(types: !1276)
!1276 = !{null}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !904, file: !13, line: 570, baseType: !206, size: 32, offset: 9152)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !898, file: !20, line: 101, baseType: !169, size: 64, offset: 192)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !898, file: !20, line: 103, baseType: !151, size: 8, offset: 256)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !898, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !898, file: !20, line: 106, baseType: !1282, size: 64, offset: 320)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1284)
!1284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1285, line: 282, size: 1600, elements: !1286)
!1285 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1286 = !{!1287, !1291, !1292, !1296}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1284, file: !1285, line: 283, baseType: !1288, size: 256)
!1288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 256, elements: !1289)
!1289 = !{!1290}
!1290 = !DISubrange(count: 32)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1284, file: !1285, line: 284, baseType: !1288, size: 256, offset: 256)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1284, file: !1285, line: 285, baseType: !1293, size: 1024, offset: 512)
!1293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 1024, elements: !1294)
!1294 = !{!1295}
!1295 = !DISubrange(count: 128)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1284, file: !1285, line: 286, baseType: !159, size: 64, offset: 1536)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !898, file: !20, line: 107, baseType: !1298, size: 64, offset: 384)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1300)
!1300 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1285, line: 217, size: 256, elements: !1301)
!1301 = !{!1302, !1306, !1308, !1309}
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1300, file: !1285, line: 218, baseType: !1303, size: 128)
!1303 = !DICompositeType(tag: DW_TAG_array_type, baseType: !215, size: 128, elements: !1304)
!1304 = !{!1305}
!1305 = !DISubrange(count: 16)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1300, file: !1285, line: 219, baseType: !1307, size: 64, offset: 128)
!1307 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1285, line: 15, baseType: !113)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1300, file: !1285, line: 220, baseType: !122, size: 32, offset: 192)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1300, file: !1285, line: 221, baseType: !122, size: 32, offset: 224)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !898, file: !20, line: 109, baseType: !857, size: 64, offset: 448)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !898, file: !20, line: 110, baseType: !848, size: 64, offset: 512)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !898, file: !20, line: 111, baseType: !857, size: 64, offset: 576)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !898, file: !20, line: 112, baseType: !848, size: 64, offset: 640)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !898, file: !20, line: 113, baseType: !1315, size: 64, offset: 704)
!1315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1316, size: 64)
!1316 = !DISubroutineType(types: !1317)
!1317 = !{!46, !826, !1318}
!1318 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1319)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1320)
!1320 = !{!1321}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1319, file: !38, line: 59, baseType: !46, size: 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !898, file: !20, line: 114, baseType: !857, size: 64, offset: 768)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !898, file: !20, line: 115, baseType: !305, size: 64, offset: 832)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !898, file: !20, line: 116, baseType: !305, size: 64, offset: 896)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !898, file: !20, line: 118, baseType: !852, size: 64, offset: 960)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !898, file: !20, line: 119, baseType: !848, size: 64, offset: 1024)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !898, file: !20, line: 121, baseType: !1328, size: 64, offset: 1088)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !885, file: !886, line: 88, baseType: !839, size: 64, offset: 384)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !885, file: !886, line: 89, baseType: !857, size: 64, offset: 448)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !885, file: !886, line: 90, baseType: !848, size: 64, offset: 512)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !885, file: !886, line: 91, baseType: !848, size: 64, offset: 576)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !885, file: !886, line: 92, baseType: !848, size: 64, offset: 640)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !885, file: !886, line: 94, baseType: !857, size: 64, offset: 704)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !885, file: !886, line: 95, baseType: !857, size: 64, offset: 768)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !885, file: !886, line: 97, baseType: !1315, size: 64, offset: 832)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !885, file: !886, line: 98, baseType: !857, size: 64, offset: 896)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !885, file: !886, line: 100, baseType: !857, size: 64, offset: 960)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !885, file: !886, line: 102, baseType: !857, size: 64, offset: 1024)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !885, file: !886, line: 103, baseType: !848, size: 64, offset: 1088)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !885, file: !886, line: 105, baseType: !852, size: 64, offset: 1152)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !885, file: !886, line: 107, baseType: !1344, size: 64, offset: 1216)
!1344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1345, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1346)
!1346 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !886, line: 107, flags: DIFlagFwdDecl)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !885, file: !886, line: 109, baseType: !151, size: 8, offset: 1280)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !163, file: !26, line: 715, baseType: !897, size: 64, offset: 832)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !163, file: !26, line: 717, baseType: !114, size: 64, offset: 896)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !163, file: !26, line: 719, baseType: !114, size: 64, offset: 960)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !163, file: !26, line: 721, baseType: !511, size: 256, offset: 1024)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !163, file: !26, line: 725, baseType: !1353, size: 448, offset: 1280)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1354)
!1354 = !{!1355, !1356, !1357, !1358}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1353, file: !26, line: 518, baseType: !173, size: 128)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1353, file: !26, line: 519, baseType: !173, size: 128, offset: 128)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1353, file: !26, line: 520, baseType: !173, size: 128, offset: 256)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1353, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !163, file: !26, line: 726, baseType: !1360, size: 2496, offset: 1728)
!1360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1361)
!1361 = !{!1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1406, !1407, !1408, !1409, !1410, !1411, !1482, !1483, !1484, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1522, !1526}
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1360, file: !38, line: 664, baseType: !1318, size: 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1360, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1360, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1360, file: !38, line: 667, baseType: !151, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1360, file: !38, line: 668, baseType: !151, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1360, file: !38, line: 669, baseType: !151, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1360, file: !38, line: 670, baseType: !151, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1360, file: !38, line: 671, baseType: !151, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1360, file: !38, line: 672, baseType: !151, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1360, file: !38, line: 673, baseType: !151, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1360, file: !38, line: 674, baseType: !151, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1360, file: !38, line: 675, baseType: !120, size: 32, offset: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1360, file: !38, line: 676, baseType: !186, size: 32, offset: 96)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1360, file: !38, line: 678, baseType: !173, size: 128, offset: 128)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1360, file: !38, line: 679, baseType: !923, size: 256, offset: 256)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1360, file: !38, line: 680, baseType: !1378, size: 64, offset: 512)
!1378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1379, size: 64)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1380, line: 43, size: 1536, elements: !1381)
!1380 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1381 = !{!1382, !1383, !1384, !1385, !1386, !1389, !1390, !1391, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404, !1405}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1379, file: !1380, line: 44, baseType: !169, size: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1379, file: !1380, line: 45, baseType: !46, size: 32, offset: 64)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1379, file: !1380, line: 46, baseType: !173, size: 128, offset: 128)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1379, file: !1380, line: 47, baseType: !186, size: 32, offset: 256)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1379, file: !1380, line: 48, baseType: !1387, size: 64, offset: 320)
!1387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1388, size: 64)
!1388 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1379, file: !1380, line: 49, baseType: !1164, size: 320, offset: 384)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1379, file: !1380, line: 50, baseType: !113, size: 64, offset: 704)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1379, file: !1380, line: 51, baseType: !1392, size: 64, offset: 768)
!1392 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1393, line: 29, baseType: !429)
!1393 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1379, file: !1380, line: 52, baseType: !1392, size: 64, offset: 832)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1379, file: !1380, line: 53, baseType: !1392, size: 64, offset: 896)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1379, file: !1380, line: 54, baseType: !1392, size: 64, offset: 960)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1379, file: !1380, line: 55, baseType: !1392, size: 64, offset: 1024)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1379, file: !1380, line: 56, baseType: !113, size: 64, offset: 1088)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1379, file: !1380, line: 57, baseType: !113, size: 64, offset: 1152)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1379, file: !1380, line: 58, baseType: !113, size: 64, offset: 1216)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1379, file: !1380, line: 59, baseType: !113, size: 64, offset: 1280)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1379, file: !1380, line: 60, baseType: !113, size: 64, offset: 1344)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1379, file: !1380, line: 61, baseType: !826, size: 64, offset: 1408)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1379, file: !1380, line: 62, baseType: !151, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1379, file: !1380, line: 63, baseType: !151, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1360, file: !38, line: 681, baseType: !151, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1360, file: !38, line: 682, baseType: !151, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1360, file: !38, line: 683, baseType: !151, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1360, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1360, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1360, file: !38, line: 690, baseType: !1412, size: 512, offset: 640)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1413)
!1413 = !{!1414, !1420, !1421, !1426, !1478, !1479, !1480, !1481}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1412, file: !33, line: 119, baseType: !1415, size: 256)
!1415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1416, line: 9, size: 256, elements: !1417)
!1416 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1417 = !{!1418, !1419}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1415, file: !1416, line: 10, baseType: !612, size: 192, align: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1415, file: !1416, line: 11, baseType: !1392, size: 64, offset: 192)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1412, file: !33, line: 120, baseType: !1392, size: 64, offset: 256)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1412, file: !33, line: 121, baseType: !1422, size: 64, offset: 320)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = !DISubroutineType(types: !1424)
!1424 = !{!32, !1425}
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1412, file: !33, line: 122, baseType: !1427, size: 64, offset: 384)
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1429)
!1429 = !{!1430, !1455, !1456, !1459, !1464, !1465, !1473, !1477}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1428, file: !33, line: 160, baseType: !1431, size: 64)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1433)
!1433 = !{!1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1432, file: !33, line: 216, baseType: !445, size: 32)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1432, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1432, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1432, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1432, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1432, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1432, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1432, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1432, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1432, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1432, file: !33, line: 227, baseType: !224, size: 16, offset: 192)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1432, file: !33, line: 228, baseType: !224, size: 16, offset: 208)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1432, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1432, file: !33, line: 235, baseType: !1392, size: 64, offset: 256)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1432, file: !33, line: 236, baseType: !1425, size: 64, offset: 320)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1432, file: !33, line: 237, baseType: !1392, size: 64, offset: 384)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1432, file: !33, line: 238, baseType: !1425, size: 64, offset: 448)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1432, file: !33, line: 239, baseType: !1452, size: 4096, align: 512, offset: 512)
!1452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1428, size: 4096, align: 512, elements: !1453)
!1453 = !{!1454}
!1454 = !DISubrange(count: 8)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1428, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1428, file: !33, line: 162, baseType: !1457, size: 32, offset: 96)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !112, line: 32, baseType: !1458)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !288, line: 96, baseType: !46)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1428, file: !33, line: 163, baseType: !1460, size: 32, offset: 128)
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !460, line: 274, baseType: !1461)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !460, line: 274, size: 32, elements: !1462)
!1462 = !{!1463}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1461, file: !460, line: 274, baseType: !459, size: 32)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1428, file: !33, line: 164, baseType: !1425, size: 64, offset: 192)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1428, file: !33, line: 165, baseType: !1466, size: 128, offset: 256)
!1466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1416, line: 14, size: 128, elements: !1467)
!1467 = !{!1468}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1466, file: !1416, line: 15, baseType: !1469, size: 128)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !613, line: 26, size: 128, elements: !1470)
!1470 = !{!1471, !1472}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1469, file: !613, line: 27, baseType: !715, size: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1469, file: !613, line: 28, baseType: !617, size: 64, offset: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1428, file: !33, line: 166, baseType: !1474, size: 64, offset: 384)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!1392}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1428, file: !33, line: 167, baseType: !1392, size: 64, offset: 448)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1412, file: !33, line: 123, baseType: !214, size: 8, offset: 448)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1412, file: !33, line: 124, baseType: !214, size: 8, offset: 456)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1412, file: !33, line: 125, baseType: !214, size: 8, offset: 464)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1412, file: !33, line: 126, baseType: !214, size: 8, offset: 472)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1360, file: !38, line: 691, baseType: !417, size: 64, offset: 1152)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1360, file: !38, line: 692, baseType: !573, size: 256, offset: 1216)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1360, file: !38, line: 693, baseType: !1485, size: 192, offset: 1472)
!1485 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1486, line: 41, baseType: !1487)
!1486 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1486, line: 37, size: 192, elements: !1488)
!1488 = !{!1489, !1490}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1487, file: !1486, line: 38, baseType: !186, size: 32)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1487, file: !1486, line: 39, baseType: !173, size: 128, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1360, file: !38, line: 694, baseType: !1387, size: 64, offset: 1664)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1360, file: !38, line: 695, baseType: !206, size: 32, offset: 1728)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1360, file: !38, line: 696, baseType: !206, size: 32, offset: 1760)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1360, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1360, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1360, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1360, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1360, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1360, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1360, file: !38, line: 703, baseType: !151, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1360, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1360, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1360, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1360, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1360, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1360, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1360, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1360, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1360, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1360, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1360, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1360, file: !38, line: 715, baseType: !417, size: 64, offset: 2048)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1360, file: !38, line: 716, baseType: !417, size: 64, offset: 2112)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1360, file: !38, line: 717, baseType: !417, size: 64, offset: 2176)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1360, file: !38, line: 718, baseType: !417, size: 64, offset: 2240)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1360, file: !38, line: 720, baseType: !1517, size: 64, offset: 2304)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1519)
!1519 = !{!1520, !1521}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1518, file: !38, line: 633, baseType: !186, size: 32)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1518, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1360, file: !38, line: 721, baseType: !1523, size: 64, offset: 2368)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{null, !826, !490}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1360, file: !38, line: 722, baseType: !1527, size: 64, offset: 2432)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !38, line: 722, flags: DIFlagFwdDecl)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !163, file: !26, line: 727, baseType: !1530, size: 64, offset: 4224)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1532)
!1532 = !{!1533, !1534, !1535, !1539, !1540, !1541}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1531, file: !38, line: 743, baseType: !854, size: 1472)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1531, file: !38, line: 744, baseType: !857, size: 64, offset: 1472)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1531, file: !38, line: 745, baseType: !1536, size: 64, offset: 1536)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DISubroutineType(types: !1538)
!1538 = !{null, !826, !151}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1531, file: !38, line: 746, baseType: !857, size: 64, offset: 1600)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1531, file: !38, line: 747, baseType: !848, size: 64, offset: 1664)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1531, file: !38, line: 748, baseType: !848, size: 64, offset: 1728)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !163, file: !26, line: 736, baseType: !1543, size: 128, offset: 4288)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1544)
!1544 = !{!1545, !1549}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1543, file: !26, line: 531, baseType: !1546, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1548, line: 13, flags: DIFlagFwdDecl)
!1548 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1543, file: !26, line: 532, baseType: !1550, size: 64, offset: 64)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !163, file: !26, line: 738, baseType: !1553, size: 64, offset: 4416)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1555)
!1555 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !163, file: !26, line: 740, baseType: !1557, size: 64, offset: 4480)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !163, file: !26, line: 741, baseType: !417, size: 64, offset: 4544)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !163, file: !26, line: 746, baseType: !417, size: 64, offset: 4608)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !163, file: !26, line: 747, baseType: !1561, size: 64, offset: 4672)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1563)
!1563 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !163, file: !26, line: 749, baseType: !1565, size: 64, offset: 4736)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1567)
!1567 = !{!1568, !1569, !1570}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1566, file: !26, line: 433, baseType: !7, size: 32)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1566, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1566, file: !26, line: 435, baseType: !113, size: 64, offset: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !163, file: !26, line: 751, baseType: !173, size: 128, offset: 4800)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !163, file: !26, line: 762, baseType: !1573, size: 64, offset: 4928)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !163, file: !26, line: 770, baseType: !1576, offset: 4992)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1577, line: 5, elements: !390)
!1577 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !163, file: !26, line: 772, baseType: !1579, size: 64, offset: 4992)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1581, line: 18, flags: DIFlagFwdDecl)
!1581 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !163, file: !26, line: 773, baseType: !133, size: 64, offset: 5056)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !163, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !163, file: !26, line: 778, baseType: !1585, size: 32, offset: 5152)
!1585 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !112, line: 21, baseType: !1586)
!1586 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !112, line: 18, baseType: !120)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !163, file: !26, line: 779, baseType: !120, size: 32, offset: 5184)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !163, file: !26, line: 781, baseType: !186, size: 32, offset: 5216)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !163, file: !26, line: 782, baseType: !173, size: 128, offset: 5248)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !163, file: !26, line: 784, baseType: !1591, size: 64, offset: 5376)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1593)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1594, line: 52, size: 768, elements: !1595)
!1594 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1595 = !{!1596, !1597, !1598, !1599, !1600, !1604, !1608, !1609, !1610, !1611, !1615, !1619}
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1593, file: !1594, line: 53, baseType: !169, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1593, file: !1594, line: 55, baseType: !305, size: 64, offset: 64)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1593, file: !1594, line: 56, baseType: !305, size: 64, offset: 128)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1593, file: !1594, line: 58, baseType: !839, size: 64, offset: 192)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1593, file: !1594, line: 59, baseType: !1601, size: 64, offset: 256)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!254, !161, !846}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1593, file: !1594, line: 61, baseType: !1605, size: 64, offset: 320)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{null, !1591}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1593, file: !1594, line: 62, baseType: !848, size: 64, offset: 384)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1593, file: !1594, line: 64, baseType: !857, size: 64, offset: 448)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1593, file: !1594, line: 66, baseType: !645, size: 64, offset: 512)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1593, file: !1594, line: 67, baseType: !1612, size: 64, offset: 576)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!159, !161}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1593, file: !1594, line: 69, baseType: !1616, size: 64, offset: 640)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{null, !161, !680, !688}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1593, file: !1594, line: 71, baseType: !852, size: 64, offset: 704)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !163, file: !26, line: 785, baseType: !305, size: 64, offset: 5440)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !163, file: !26, line: 787, baseType: !848, size: 64, offset: 5504)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !163, file: !26, line: 788, baseType: !1623, size: 64, offset: 5568)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !163, file: !26, line: 789, baseType: !1626, size: 64, offset: 5632)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !163, file: !26, line: 791, baseType: !1629, size: 64, offset: 5696)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1631)
!1631 = !{!1632, !1633, !1634, !1635, !1636}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1630, file: !26, line: 598, baseType: !53, size: 32)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1630, file: !26, line: 599, baseType: !62, size: 32, offset: 32)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1630, file: !26, line: 600, baseType: !67, size: 32, offset: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1630, file: !26, line: 601, baseType: !151, size: 8, offset: 96)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1630, file: !26, line: 602, baseType: !151, size: 8, offset: 104)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !163, file: !26, line: 793, baseType: !72, size: 32, offset: 5760)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !163, file: !26, line: 795, baseType: !151, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !163, file: !26, line: 796, baseType: !151, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !163, file: !26, line: 797, baseType: !151, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !163, file: !26, line: 798, baseType: !151, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !163, file: !26, line: 799, baseType: !151, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !137, file: !130, line: 131, baseType: !148, size: 64, offset: 256)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !137, file: !130, line: 133, baseType: !1645, size: 64, offset: 320)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!78, !153}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !137, file: !130, line: 134, baseType: !1649, size: 64, offset: 384)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!151, !153, !169}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !137, file: !130, line: 136, baseType: !1653, size: 64, offset: 448)
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DISubroutineType(types: !1655)
!1655 = !{!46, !153, !169, !7, !114, !301}
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !137, file: !130, line: 141, baseType: !1657, size: 64, offset: 512)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DISubroutineType(types: !1659)
!1659 = !{!46, !153, !169, !1247, !301}
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !137, file: !130, line: 144, baseType: !1661, size: 64, offset: 576)
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DISubroutineType(types: !1663)
!1663 = !{!169, !153}
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !137, file: !130, line: 145, baseType: !1661, size: 64, offset: 640)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !137, file: !130, line: 146, baseType: !1666, size: 64, offset: 704)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!133, !153}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !137, file: !130, line: 148, baseType: !1670, size: 64, offset: 768)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!133, !153, !133}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !137, file: !130, line: 151, baseType: !1674, size: 64, offset: 832)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!133, !153, !169}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !137, file: !130, line: 153, baseType: !1678, size: 64, offset: 896)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!46, !153, !169, !169, !7, !7, !1681}
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !130, line: 94, size: 640, elements: !1683)
!1683 = !{!1684, !1685, !1686}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1682, file: !130, line: 95, baseType: !133, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1682, file: !130, line: 96, baseType: !7, size: 32, offset: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1682, file: !130, line: 97, baseType: !1687, size: 512, offset: 128)
!1687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 512, elements: !1453)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !137, file: !130, line: 158, baseType: !1670, size: 64, offset: 960)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !137, file: !130, line: 161, baseType: !1666, size: 64, offset: 1024)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !137, file: !130, line: 163, baseType: !140, size: 64, offset: 1088)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !137, file: !130, line: 164, baseType: !1692, size: 64, offset: 1152)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!46, !153, !1695}
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !130, line: 73, size: 128, elements: !1697)
!1697 = !{!1698, !1699, !1700}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1696, file: !130, line: 74, baseType: !7, size: 32)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1696, file: !130, line: 75, baseType: !7, size: 32, offset: 32)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1696, file: !130, line: 76, baseType: !153, size: 64, offset: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !137, file: !130, line: 166, baseType: !1702, size: 64, offset: 1216)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!114, !133, !46}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !137, file: !130, line: 167, baseType: !1706, size: 64, offset: 1280)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!46, !153, !7}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !137, file: !130, line: 168, baseType: !1710, size: 64, offset: 1344)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!46, !133}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !129, file: !130, line: 44, baseType: !826, size: 64, offset: 128)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !129, file: !130, line: 45, baseType: !173, size: 128, offset: 192)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !129, file: !130, line: 46, baseType: !173, size: 128, offset: 320)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !129, file: !130, line: 47, baseType: !214, size: 8, offset: 448)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !116, file: !117, line: 372, baseType: !173, size: 128, offset: 640)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !116, file: !117, line: 373, baseType: !173, size: 128, offset: 768)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !116, file: !117, line: 374, baseType: !1720, size: 32, offset: 896)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !117, line: 181, size: 32, elements: !1721)
!1721 = !{!1722, !1723, !1724, !1725, !1726, !1727}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !1720, file: !117, line: 182, baseType: !120, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1720, file: !117, line: 183, baseType: !120, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !1720, file: !117, line: 184, baseType: !120, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !1720, file: !117, line: 185, baseType: !120, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !1720, file: !117, line: 186, baseType: !120, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1720, file: !117, line: 187, baseType: !120, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !116, file: !117, line: 375, baseType: !1729, size: 32, offset: 928)
!1729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !117, line: 192, size: 32, elements: !1730)
!1730 = !{!1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745}
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !1729, file: !117, line: 193, baseType: !120, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1729, file: !117, line: 194, baseType: !120, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !1729, file: !117, line: 195, baseType: !120, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !1729, file: !117, line: 196, baseType: !120, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !1729, file: !117, line: 197, baseType: !120, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !1729, file: !117, line: 198, baseType: !120, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1729, file: !117, line: 199, baseType: !120, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !1729, file: !117, line: 200, baseType: !120, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !1729, file: !117, line: 201, baseType: !120, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !1729, file: !117, line: 202, baseType: !120, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !1729, file: !117, line: 203, baseType: !120, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !1729, file: !117, line: 204, baseType: !120, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !1729, file: !117, line: 205, baseType: !120, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "honor_deps", scope: !1729, file: !117, line: 206, baseType: !120, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1729, file: !117, line: 207, baseType: !120, size: 18, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !116, file: !117, line: 376, baseType: !1747, size: 960, offset: 960)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !117, line: 238, size: 960, elements: !1748)
!1748 = !{!1749, !1752, !1753, !1761, !1763, !1764, !1765, !1770, !1775}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !1747, file: !117, line: 239, baseType: !1750, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !117, line: 220, baseType: !1751)
!1751 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 64, elements: !1453)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "instance_no", scope: !1747, file: !117, line: 240, baseType: !46, size: 32, offset: 64)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1747, file: !117, line: 241, baseType: !1754, size: 32, offset: 96)
!1754 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !117, line: 230, size: 32, elements: !1755)
!1755 = !{!1756, !1757, !1758, !1759, !1760}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !1754, file: !117, line: 231, baseType: !120, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !1754, file: !117, line: 232, baseType: !120, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !1754, file: !117, line: 233, baseType: !120, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "backlight", scope: !1754, file: !117, line: 234, baseType: !120, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1754, file: !117, line: 235, baseType: !120, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !1747, file: !117, line: 242, baseType: !1762, size: 64, offset: 128)
!1762 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !117, line: 221, baseType: !417)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !1747, file: !117, line: 243, baseType: !254, size: 64, offset: 192)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1747, file: !117, line: 244, baseType: !173, size: 128, offset: 256)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !1747, file: !117, line: 245, baseType: !1766, size: 320, offset: 384)
!1766 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !117, line: 222, baseType: !1767)
!1767 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 320, elements: !1768)
!1768 = !{!1769}
!1769 = !DISubrange(count: 40)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !1747, file: !117, line: 246, baseType: !1771, size: 160, offset: 704)
!1771 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !117, line: 223, baseType: !1772)
!1772 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 160, elements: !1773)
!1773 = !{!1774}
!1774 = !DISubrange(count: 20)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !1747, file: !117, line: 247, baseType: !1776, size: 64, offset: 896)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !127, line: 908, size: 192, elements: !1778)
!1778 = !{!1779, !1781, !1786, !1792, !1799, !1805, !1811, !1819}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1777, file: !127, line: 909, baseType: !1780, size: 32)
!1780 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !127, line: 644, baseType: !120)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1777, file: !127, line: 913, baseType: !1782, size: 128)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1777, file: !127, line: 910, size: 128, elements: !1783)
!1783 = !{!1784, !1785}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1782, file: !127, line: 911, baseType: !1780, size: 32)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1782, file: !127, line: 912, baseType: !417, size: 64, offset: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1777, file: !127, line: 919, baseType: !1787, size: 128)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1777, file: !127, line: 915, size: 128, elements: !1788)
!1788 = !{!1789, !1790, !1791}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1787, file: !127, line: 916, baseType: !1780, size: 32)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1787, file: !127, line: 917, baseType: !120, size: 32, offset: 32)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1787, file: !127, line: 918, baseType: !254, size: 64, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1777, file: !127, line: 925, baseType: !1793, size: 128)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1777, file: !127, line: 921, size: 128, elements: !1794)
!1794 = !{!1795, !1796, !1797}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1793, file: !127, line: 922, baseType: !1780, size: 32)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1793, file: !127, line: 923, baseType: !120, size: 32, offset: 32)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1793, file: !127, line: 924, baseType: !1798, size: 64, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !1777, file: !127, line: 931, baseType: !1800, size: 128)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1777, file: !127, line: 927, size: 128, elements: !1801)
!1801 = !{!1802, !1803, !1804}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1800, file: !127, line: 928, baseType: !1780, size: 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1800, file: !127, line: 929, baseType: !120, size: 32, offset: 32)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1800, file: !127, line: 930, baseType: !1776, size: 64, offset: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !1777, file: !127, line: 937, baseType: !1806, size: 128)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1777, file: !127, line: 933, size: 128, elements: !1807)
!1807 = !{!1808, !1809, !1810}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1806, file: !127, line: 934, baseType: !1780, size: 32)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !1806, file: !127, line: 935, baseType: !1780, size: 32, offset: 32)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !1806, file: !127, line: 936, baseType: !126, size: 64, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !1777, file: !127, line: 944, baseType: !1812, size: 192)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1777, file: !127, line: 939, size: 192, elements: !1813)
!1813 = !{!1814, !1815, !1816, !1818}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1812, file: !127, line: 940, baseType: !1780, size: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !1812, file: !127, line: 941, baseType: !120, size: 32, offset: 32)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !1812, file: !127, line: 942, baseType: !1817, size: 64, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !127, line: 128, baseType: !417)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !1812, file: !127, line: 943, baseType: !120, size: 32, offset: 128)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !1777, file: !127, line: 950, baseType: !1820, size: 96)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1777, file: !127, line: 946, size: 96, elements: !1821)
!1821 = !{!1822, !1823, !1824}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1820, file: !127, line: 947, baseType: !1780, size: 32)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !1820, file: !127, line: 948, baseType: !120, size: 32, offset: 32)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !1820, file: !127, line: 949, baseType: !120, size: 32, offset: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !116, file: !117, line: 377, baseType: !1826, size: 1408, offset: 1920)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !117, line: 280, size: 1408, elements: !1827)
!1827 = !{!1828, !1829, !1839, !1854}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1826, file: !117, line: 281, baseType: !46, size: 32)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1826, file: !117, line: 282, baseType: !1830, size: 32, offset: 32)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !117, line: 259, size: 32, elements: !1831)
!1831 = !{!1832, !1833, !1834, !1835, !1836, !1837, !1838}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !1830, file: !117, line: 260, baseType: !120, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !1830, file: !117, line: 261, baseType: !120, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !1830, file: !117, line: 262, baseType: !120, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !1830, file: !117, line: 263, baseType: !120, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !1830, file: !117, line: 264, baseType: !120, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !1830, file: !117, line: 265, baseType: !120, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1830, file: !117, line: 266, baseType: !120, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1826, file: !117, line: 283, baseType: !1840, size: 1280, offset: 64)
!1840 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1841, size: 1280, elements: !1852)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !117, line: 269, size: 256, elements: !1842)
!1842 = !{!1843, !1849, !1850, !1851}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1841, file: !117, line: 274, baseType: !1844, size: 8)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1841, file: !117, line: 270, size: 8, elements: !1845)
!1845 = !{!1846, !1847, !1848}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1844, file: !117, line: 271, baseType: !214, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !1844, file: !117, line: 272, baseType: !214, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1844, file: !117, line: 273, baseType: !214, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1841, file: !117, line: 275, baseType: !46, size: 32, offset: 32)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1841, file: !117, line: 276, baseType: !46, size: 32, offset: 64)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !1841, file: !117, line: 277, baseType: !173, size: 128, offset: 128)
!1852 = !{!1853}
!1853 = !DISubrange(count: 5)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "state_for_enumeration", scope: !1826, file: !117, line: 284, baseType: !214, size: 8, offset: 1344)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !116, file: !117, line: 378, baseType: !1856, size: 640, offset: 3328)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !117, line: 330, size: 640, elements: !1857)
!1857 = !{!1858, !1859, !1860, !1861, !1862, !1867, !1876, !1877, !1878}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !1856, file: !117, line: 331, baseType: !126, size: 64)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !1856, file: !117, line: 332, baseType: !417, size: 64, offset: 64)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !1856, file: !117, line: 333, baseType: !417, size: 64, offset: 128)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !1856, file: !117, line: 334, baseType: !173, size: 128, offset: 192)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1856, file: !117, line: 335, baseType: !1863, size: 8, offset: 320)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !117, line: 320, size: 8, elements: !1864)
!1864 = !{!1865, !1866}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1863, file: !117, line: 321, baseType: !214, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !1863, file: !117, line: 322, baseType: !214, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1856, file: !117, line: 336, baseType: !1868, size: 128, offset: 384)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !117, line: 325, size: 128, elements: !1869)
!1869 = !{!1870, !1875}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1868, file: !117, line: 326, baseType: !1871, size: 64)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DISubroutineType(types: !1873)
!1873 = !{null, !1874}
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1868, file: !117, line: 327, baseType: !826, size: 64, offset: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !1856, file: !117, line: 337, baseType: !1378, size: 64, offset: 512)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !1856, file: !117, line: 338, baseType: !46, size: 32, offset: 576)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !1856, file: !117, line: 339, baseType: !46, size: 32, offset: 608)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !116, file: !117, line: 379, baseType: !1880, size: 192, offset: 3968)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !117, line: 312, size: 192, elements: !1881)
!1881 = !{!1882, !1883, !1887, !1888}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1880, file: !117, line: 313, baseType: !46, size: 32)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1880, file: !117, line: 314, baseType: !1884, size: 8, offset: 32)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !117, line: 298, size: 8, elements: !1885)
!1885 = !{!1886}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1884, file: !117, line: 299, baseType: !214, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !1880, file: !117, line: 315, baseType: !46, size: 32, offset: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1880, file: !117, line: 316, baseType: !1889, size: 64, offset: 128)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !117, line: 302, size: 64, elements: !1891)
!1891 = !{!1892, !1897, !1898, !1899}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1890, file: !117, line: 306, baseType: !1893, size: 8)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1890, file: !117, line: 303, size: 8, elements: !1894)
!1894 = !{!1895, !1896}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1893, file: !117, line: 304, baseType: !214, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1893, file: !117, line: 305, baseType: !214, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1890, file: !117, line: 307, baseType: !214, size: 8, offset: 8)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !1890, file: !117, line: 308, baseType: !214, size: 8, offset: 16)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1890, file: !117, line: 309, baseType: !46, size: 32, offset: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !116, file: !117, line: 380, baseType: !1901, size: 64, offset: 4160)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !117, line: 212, size: 64, elements: !1902)
!1902 = !{!1903}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1901, file: !117, line: 213, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !117, line: 86, flags: DIFlagFwdDecl)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !116, file: !117, line: 381, baseType: !1907, size: 384, offset: 4224)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !117, line: 357, size: 384, elements: !1908)
!1908 = !{!1909, !1912, !1913, !1914}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1907, file: !117, line: 358, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1777)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1907, file: !117, line: 359, baseType: !173, size: 128, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !1907, file: !117, line: 360, baseType: !1910, size: 64, offset: 192)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !1907, file: !117, line: 361, baseType: !173, size: 128, offset: 256)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !116, file: !117, line: 382, baseType: !1916, size: 64, offset: 4608)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !117, line: 124, size: 1216, elements: !1918)
!1918 = !{!1919, !1920, !1921, !1926, !1930, !1934, !1935, !1936}
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1917, file: !117, line: 125, baseType: !1298, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !1917, file: !117, line: 126, baseType: !173, size: 128, offset: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1917, file: !117, line: 127, baseType: !1922, size: 64, offset: 192)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{!151, !169, !1925}
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !1917, file: !117, line: 128, baseType: !1927, size: 64, offset: 256)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DISubroutineType(types: !1929)
!1929 = !{!46, !115, !1298}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1917, file: !117, line: 129, baseType: !1931, size: 64, offset: 320)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = !DISubroutineType(types: !1933)
!1933 = !{null, !115}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !1917, file: !117, line: 130, baseType: !848, size: 64, offset: 384)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !1917, file: !117, line: 131, baseType: !848, size: 64, offset: 448)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !1917, file: !117, line: 132, baseType: !1937, size: 704, offset: 512)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !117, line: 110, size: 704, elements: !1938)
!1938 = !{!1939, !1940, !1944, !1945, !1946}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1937, file: !117, line: 111, baseType: !166, size: 512)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !1937, file: !117, line: 112, baseType: !1941, size: 64, offset: 512)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!46, !115}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !1937, file: !117, line: 113, baseType: !1931, size: 64, offset: 576)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1937, file: !117, line: 114, baseType: !151, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !1937, file: !117, line: 115, baseType: !151, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !116, file: !117, line: 383, baseType: !1948, size: 64, offset: 4672)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !117, line: 140, size: 256, elements: !1950)
!1950 = !{!1951, !1952, !1956, !1960}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !1949, file: !117, line: 141, baseType: !115, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !1949, file: !117, line: 142, baseType: !1953, size: 64, offset: 64)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DISubroutineType(types: !1955)
!1955 = !{!46, !115, !120}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1949, file: !117, line: 143, baseType: !1957, size: 64, offset: 128)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{null, !115, !120}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1949, file: !117, line: 144, baseType: !1931, size: 64, offset: 192)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !116, file: !117, line: 384, baseType: !1962, size: 64, offset: 4736)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1964)
!1964 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !117, line: 364, flags: DIFlagFwdDecl)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !116, file: !117, line: 385, baseType: !114, size: 64, offset: 4800)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !116, file: !117, line: 386, baseType: !163, size: 5824, offset: 4864)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !116, file: !117, line: 387, baseType: !7, size: 32, offset: 10688)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !116, file: !117, line: 388, baseType: !7, size: 32, offset: 10720)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !116, file: !117, line: 389, baseType: !173, size: 128, offset: 10752)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !116, file: !117, line: 390, baseType: !511, size: 256, offset: 10880)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !116, file: !117, line: 391, baseType: !1931, size: 64, offset: 11136)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "container_dev", file: !1974, line: 17, size: 5888, elements: !1975)
!1974 = !DIFile(filename: "./include/linux/container.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ed4f64faedffb962ea68803d27639697")
!1975 = !{!1976, !1977}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1973, file: !1974, line: 18, baseType: !163, size: 5824)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1973, file: !1974, line: 19, baseType: !1978, size: 64, offset: 5824)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DISubroutineType(types: !1980)
!1980 = !{!46, !1972}
!1981 = !{!0, !1982, !1985, !1988}
!1982 = !DIGlobalVariableExpression(var: !1983, expr: !DIExpression())
!1983 = distinct !DIGlobalVariable(name: "container_device_ids", scope: !2, file: !3, line: 17, type: !1984, isLocal: true, isDefinition: true)
!1984 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1299, size: 1024, elements: !492)
!1985 = !DIGlobalVariableExpression(var: !1986, expr: !DIExpression())
!1986 = distinct !DIGlobalVariable(scope: null, file: !3, line: 62, type: !1987, isLocal: true, isDefinition: true)
!1987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 24, elements: !255)
!1988 = !DIGlobalVariableExpression(var: !1989, expr: !DIExpression())
!1989 = distinct !DIGlobalVariable(scope: null, file: !90, line: 480, type: !1990, isLocal: true, isDefinition: true)
!1990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !171, size: 168, elements: !1991)
!1991 = !{!1992}
!1992 = !DISubrange(count: 21)
!1993 = !{i32 7, !"Dwarf Version", i32 5}
!1994 = !{i32 2, !"Debug Info Version", i32 3}
!1995 = !{i32 1, !"wchar_size", i32 2}
!1996 = !{i32 8, !"cf-protection-branch", i32 1}
!1997 = !{i32 4, !"function_return_thunk_extern", i32 1}
!1998 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!1999 = !{i32 1, !"Code Model", i32 2}
!2000 = !{i32 1, !"override-stack-alignment", i32 8}
!2001 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2002 = distinct !DISubprogram(name: "acpi_container_init", scope: !3, file: !3, line: 101, type: !1275, scopeLine: 102, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2003 = !DILocation(line: 103, column: 2, scope: !2002)
!2004 = !DILocation(line: 104, column: 1, scope: !2002)
!2005 = !DISubprogram(name: "acpi_scan_add_handler", scope: !117, file: !117, line: 563, type: !2006, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!46, !1916}
!2008 = distinct !DISubprogram(name: "container_device_attach", scope: !3, file: !3, line: 45, type: !1928, scopeLine: 47, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2009)
!2009 = !{!2010, !2011, !2012, !2013, !2014}
!2010 = !DILocalVariable(name: "adev", arg: 1, scope: !2008, file: !3, line: 45, type: !115)
!2011 = !DILocalVariable(name: "not_used", arg: 2, scope: !2008, file: !3, line: 46, type: !1298)
!2012 = !DILocalVariable(name: "cdev", scope: !2008, file: !3, line: 48, type: !1972)
!2013 = !DILocalVariable(name: "dev", scope: !2008, file: !3, line: 49, type: !826)
!2014 = !DILocalVariable(name: "ret", scope: !2008, file: !3, line: 50, type: !46)
!2015 = !DILocation(line: 45, column: 56, scope: !2008)
!2016 = !DILocation(line: 46, column: 37, scope: !2008)
!2017 = !DILocation(line: 48, column: 2, scope: !2008)
!2018 = !DILocation(line: 48, column: 24, scope: !2008)
!2019 = !DILocation(line: 49, column: 2, scope: !2008)
!2020 = !DILocation(line: 49, column: 17, scope: !2008)
!2021 = !DILocation(line: 50, column: 2, scope: !2008)
!2022 = !DILocation(line: 50, column: 6, scope: !2008)
!2023 = !DILocation(line: 52, column: 6, scope: !2024)
!2024 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 52, column: 6)
!2025 = !DILocation(line: 52, column: 12, scope: !2024)
!2026 = !DILocation(line: 52, column: 18, scope: !2024)
!2027 = !DILocation(line: 52, column: 6, scope: !2008)
!2028 = !DILocation(line: 53, column: 3, scope: !2024)
!2029 = !DILocation(line: 55, column: 9, scope: !2008)
!2030 = !DILocation(line: 55, column: 7, scope: !2008)
!2031 = !DILocation(line: 56, column: 7, scope: !2032)
!2032 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 56, column: 6)
!2033 = !DILocation(line: 56, column: 6, scope: !2008)
!2034 = !DILocation(line: 57, column: 3, scope: !2032)
!2035 = !DILocation(line: 59, column: 2, scope: !2008)
!2036 = !DILocation(line: 59, column: 8, scope: !2008)
!2037 = !DILocation(line: 59, column: 16, scope: !2008)
!2038 = !DILocation(line: 60, column: 9, scope: !2008)
!2039 = !DILocation(line: 60, column: 15, scope: !2008)
!2040 = !DILocation(line: 60, column: 6, scope: !2008)
!2041 = !DILocation(line: 61, column: 2, scope: !2008)
!2042 = !DILocation(line: 61, column: 7, scope: !2008)
!2043 = !DILocation(line: 61, column: 11, scope: !2008)
!2044 = !DILocation(line: 62, column: 15, scope: !2008)
!2045 = !DILocation(line: 62, column: 36, scope: !2008)
!2046 = !DILocation(line: 62, column: 42, scope: !2008)
!2047 = !DILocation(line: 62, column: 26, scope: !2008)
!2048 = !DILocation(line: 62, column: 2, scope: !2008)
!2049 = !DILocation(line: 63, column: 2, scope: !2008)
!2050 = !DILocation(line: 64, column: 2, scope: !2008)
!2051 = !DILocation(line: 64, column: 7, scope: !2008)
!2052 = !DILocation(line: 64, column: 15, scope: !2008)
!2053 = !DILocation(line: 65, column: 24, scope: !2008)
!2054 = !DILocation(line: 65, column: 8, scope: !2008)
!2055 = !DILocation(line: 65, column: 6, scope: !2008)
!2056 = !DILocation(line: 66, column: 6, scope: !2057)
!2057 = distinct !DILexicalBlock(scope: !2008, file: !3, line: 66, column: 6)
!2058 = !DILocation(line: 66, column: 6, scope: !2008)
!2059 = !DILocation(line: 67, column: 14, scope: !2060)
!2060 = distinct !DILexicalBlock(scope: !2057, file: !3, line: 66, column: 11)
!2061 = !DILocation(line: 67, column: 3, scope: !2060)
!2062 = !DILocation(line: 68, column: 10, scope: !2060)
!2063 = !DILocation(line: 68, column: 3, scope: !2060)
!2064 = !DILocation(line: 70, column: 22, scope: !2008)
!2065 = !DILocation(line: 70, column: 2, scope: !2008)
!2066 = !DILocation(line: 70, column: 8, scope: !2008)
!2067 = !DILocation(line: 70, column: 20, scope: !2008)
!2068 = !DILocation(line: 71, column: 2, scope: !2008)
!2069 = !DILocation(line: 72, column: 1, scope: !2008)
!2070 = distinct !DISubprogram(name: "container_device_detach", scope: !3, file: !3, line: 74, type: !1932, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2071)
!2071 = !{!2072, !2073}
!2072 = !DILocalVariable(name: "adev", arg: 1, scope: !2070, file: !3, line: 74, type: !115)
!2073 = !DILocalVariable(name: "dev", scope: !2070, file: !3, line: 76, type: !826)
!2074 = !DILocation(line: 74, column: 57, scope: !2070)
!2075 = !DILocation(line: 76, column: 2, scope: !2070)
!2076 = !DILocation(line: 76, column: 17, scope: !2070)
!2077 = !DILocation(line: 76, column: 40, scope: !2070)
!2078 = !DILocation(line: 76, column: 23, scope: !2070)
!2079 = !DILocation(line: 78, column: 2, scope: !2070)
!2080 = !DILocation(line: 78, column: 8, scope: !2070)
!2081 = !DILocation(line: 78, column: 20, scope: !2070)
!2082 = !DILocation(line: 79, column: 6, scope: !2083)
!2083 = distinct !DILexicalBlock(scope: !2070, file: !3, line: 79, column: 6)
!2084 = !DILocation(line: 79, column: 6, scope: !2070)
!2085 = !DILocation(line: 80, column: 21, scope: !2083)
!2086 = !DILocation(line: 80, column: 3, scope: !2083)
!2087 = !DILocation(line: 81, column: 1, scope: !2070)
!2088 = distinct !DISubprogram(name: "container_device_online", scope: !3, file: !3, line: 83, type: !1932, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2089)
!2089 = !{!2090, !2091}
!2090 = !DILocalVariable(name: "adev", arg: 1, scope: !2088, file: !3, line: 83, type: !115)
!2091 = !DILocalVariable(name: "dev", scope: !2088, file: !3, line: 85, type: !826)
!2092 = !DILocation(line: 83, column: 57, scope: !2088)
!2093 = !DILocation(line: 85, column: 2, scope: !2088)
!2094 = !DILocation(line: 85, column: 17, scope: !2088)
!2095 = !DILocation(line: 85, column: 40, scope: !2088)
!2096 = !DILocation(line: 85, column: 23, scope: !2088)
!2097 = !DILocation(line: 87, column: 18, scope: !2088)
!2098 = !DILocation(line: 87, column: 23, scope: !2088)
!2099 = !DILocation(line: 87, column: 2, scope: !2088)
!2100 = !DILocation(line: 88, column: 1, scope: !2088)
!2101 = distinct !DISubprogram(name: "kzalloc", scope: !90, file: !90, line: 719, type: !2102, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2104)
!2102 = !DISubroutineType(types: !2103)
!2103 = !{!114, !301, !111}
!2104 = !{!2105, !2106}
!2105 = !DILocalVariable(name: "size", arg: 1, scope: !2101, file: !90, line: 719, type: !301)
!2106 = !DILocalVariable(name: "flags", arg: 2, scope: !2101, file: !90, line: 719, type: !111)
!2107 = !DILocation(line: 719, column: 52, scope: !2101)
!2108 = !DILocation(line: 719, column: 64, scope: !2101)
!2109 = !DILocation(line: 721, column: 17, scope: !2101)
!2110 = !DILocation(line: 721, column: 23, scope: !2101)
!2111 = !DILocation(line: 721, column: 29, scope: !2101)
!2112 = !DILocation(line: 721, column: 9, scope: !2101)
!2113 = !DILocation(line: 721, column: 2, scope: !2101)
!2114 = distinct !DISubprogram(name: "acpi_container_offline", scope: !3, file: !3, line: 34, type: !1979, scopeLine: 35, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2115)
!2115 = !{!2116, !2117, !2119}
!2116 = !DILocalVariable(name: "cdev", arg: 1, scope: !2114, file: !3, line: 34, type: !1972)
!2117 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !2118, file: !3, line: 37, type: !133)
!2118 = distinct !DILexicalBlock(scope: !2114, file: !3, line: 37, column: 33)
!2119 = !DILocalVariable(name: "__mptr", scope: !2120, file: !3, line: 37, type: !114)
!2120 = distinct !DILexicalBlock(scope: !2118, file: !3, line: 37, column: 33)
!2121 = !DILocation(line: 34, column: 57, scope: !2114)
!2122 = !DILocation(line: 37, column: 33, scope: !2118)
!2123 = !DILocation(line: 37, column: 33, scope: !2120)
!2124 = !DILocation(line: 37, column: 33, scope: !2114)
!2125 = !DILocation(line: 37, column: 9, scope: !2114)
!2126 = !DILocation(line: 37, column: 2, scope: !2114)
!2127 = !DISubprogram(name: "dev_set_name", scope: !26, file: !26, line: 879, type: !2128, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!46, !826, !169, null}
!2130 = distinct !DISubprogram(name: "dev_name", scope: !26, file: !26, line: 858, type: !2131, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2133)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!169, !161}
!2133 = !{!2134}
!2134 = !DILocalVariable(name: "dev", arg: 1, scope: !2130, file: !26, line: 858, type: !161)
!2135 = !DILocation(line: 858, column: 57, scope: !2130)
!2136 = !DILocation(line: 861, column: 6, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2130, file: !26, line: 861, column: 6)
!2138 = !DILocation(line: 861, column: 11, scope: !2137)
!2139 = !DILocation(line: 861, column: 6, scope: !2130)
!2140 = !DILocation(line: 862, column: 10, scope: !2137)
!2141 = !DILocation(line: 862, column: 15, scope: !2137)
!2142 = !DILocation(line: 862, column: 3, scope: !2137)
!2143 = !DILocation(line: 864, column: 23, scope: !2130)
!2144 = !DILocation(line: 864, column: 28, scope: !2130)
!2145 = !DILocation(line: 864, column: 9, scope: !2130)
!2146 = !DILocation(line: 864, column: 2, scope: !2130)
!2147 = !DILocation(line: 865, column: 1, scope: !2130)
!2148 = !DISubprogram(name: "set_primary_fwnode", scope: !26, file: !26, line: 1134, type: !2149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{null, !826, !133}
!2151 = distinct !DISubprogram(name: "acpi_fwnode_handle", scope: !117, file: !117, line: 451, type: !2152, scopeLine: 452, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2154)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!133, !115}
!2154 = !{!2155}
!2155 = !DILocalVariable(name: "adev", arg: 1, scope: !2151, file: !117, line: 451, type: !115)
!2156 = !DILocation(line: 451, column: 76, scope: !2151)
!2157 = !DILocation(line: 453, column: 10, scope: !2151)
!2158 = !DILocation(line: 453, column: 16, scope: !2151)
!2159 = !DILocation(line: 453, column: 2, scope: !2151)
!2160 = distinct !DISubprogram(name: "acpi_container_release", scope: !3, file: !3, line: 40, type: !849, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2161)
!2161 = !{!2162}
!2162 = !DILocalVariable(name: "dev", arg: 1, scope: !2160, file: !3, line: 40, type: !826)
!2163 = !DILocation(line: 40, column: 51, scope: !2160)
!2164 = !DILocation(line: 42, column: 25, scope: !2160)
!2165 = !DILocation(line: 42, column: 8, scope: !2160)
!2166 = !DILocation(line: 42, column: 2, scope: !2160)
!2167 = !DILocation(line: 43, column: 1, scope: !2160)
!2168 = !DISubprogram(name: "device_register", scope: !26, file: !26, line: 1054, type: !858, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2169 = !DISubprogram(name: "put_device", scope: !26, file: !26, line: 1231, type: !849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2170 = distinct !DISubprogram(name: "kmalloc", scope: !90, file: !90, line: 591, type: !2102, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2171)
!2171 = !{!2172, !2173, !2174}
!2172 = !DILocalVariable(name: "size", arg: 1, scope: !2170, file: !90, line: 591, type: !301)
!2173 = !DILocalVariable(name: "flags", arg: 2, scope: !2170, file: !90, line: 591, type: !111)
!2174 = !DILocalVariable(name: "index", scope: !2175, file: !90, line: 594, type: !7)
!2175 = distinct !DILexicalBlock(scope: !2176, file: !90, line: 593, column: 42)
!2176 = distinct !DILexicalBlock(scope: !2170, file: !90, line: 593, column: 6)
!2177 = !DILocation(line: 591, column: 61, scope: !2170)
!2178 = !DILocation(line: 591, column: 73, scope: !2170)
!2179 = !DILocation(line: 593, column: 27, scope: !2176)
!2180 = !DILocation(line: 593, column: 6, scope: !2176)
!2181 = !DILocation(line: 593, column: 33, scope: !2176)
!2182 = !DILocation(line: 593, column: 36, scope: !2176)
!2183 = !DILocation(line: 593, column: 6, scope: !2170)
!2184 = !DILocation(line: 594, column: 3, scope: !2175)
!2185 = !DILocation(line: 594, column: 16, scope: !2175)
!2186 = !DILocation(line: 596, column: 7, scope: !2187)
!2187 = distinct !DILexicalBlock(scope: !2175, file: !90, line: 596, column: 7)
!2188 = !DILocation(line: 596, column: 12, scope: !2187)
!2189 = !DILocation(line: 596, column: 7, scope: !2175)
!2190 = !DILocation(line: 597, column: 25, scope: !2187)
!2191 = !DILocation(line: 597, column: 31, scope: !2187)
!2192 = !DILocation(line: 597, column: 11, scope: !2187)
!2193 = !DILocation(line: 597, column: 4, scope: !2187)
!2194 = !DILocation(line: 599, column: 11, scope: !2175)
!2195 = !DILocation(line: 599, column: 9, scope: !2175)
!2196 = !DILocation(line: 601, column: 33, scope: !2175)
!2197 = !DILocation(line: 601, column: 40, scope: !2175)
!2198 = !DILocation(line: 601, column: 20, scope: !2175)
!2199 = !DILocation(line: 601, column: 5, scope: !2175)
!2200 = !DILocation(line: 601, column: 51, scope: !2175)
!2201 = !DILocation(line: 602, column: 5, scope: !2175)
!2202 = !DILocation(line: 602, column: 12, scope: !2175)
!2203 = !DILocation(line: 600, column: 10, scope: !2175)
!2204 = !DILocation(line: 600, column: 3, scope: !2175)
!2205 = !DILocation(line: 603, column: 2, scope: !2176)
!2206 = !DILocation(line: 604, column: 19, scope: !2170)
!2207 = !DILocation(line: 604, column: 25, scope: !2170)
!2208 = !DILocation(line: 604, column: 9, scope: !2170)
!2209 = !DILocation(line: 604, column: 2, scope: !2170)
!2210 = !DILocation(line: 605, column: 1, scope: !2170)
!2211 = !DISubprogram(name: "kmalloc_large", scope: !90, file: !90, line: 531, type: !2102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2212 = distinct !DISubprogram(name: "__kmalloc_index", scope: !90, file: !90, line: 444, type: !2213, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2215)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!7, !301, !151}
!2215 = !{!2216, !2217}
!2216 = !DILocalVariable(name: "size", arg: 1, scope: !2212, file: !90, line: 444, type: !301)
!2217 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2212, file: !90, line: 445, type: !151)
!2218 = !DILocation(line: 444, column: 60, scope: !2212)
!2219 = !DILocation(line: 445, column: 16, scope: !2212)
!2220 = !DILocation(line: 447, column: 7, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2212, file: !90, line: 447, column: 6)
!2222 = !DILocation(line: 447, column: 6, scope: !2212)
!2223 = !DILocation(line: 448, column: 3, scope: !2221)
!2224 = !DILocation(line: 450, column: 6, scope: !2225)
!2225 = distinct !DILexicalBlock(scope: !2212, file: !90, line: 450, column: 6)
!2226 = !DILocation(line: 450, column: 11, scope: !2225)
!2227 = !DILocation(line: 450, column: 6, scope: !2212)
!2228 = !DILocation(line: 451, column: 3, scope: !2225)
!2229 = !DILocation(line: 453, column: 32, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2212, file: !90, line: 453, column: 6)
!2231 = !DILocation(line: 453, column: 37, scope: !2230)
!2232 = !DILocation(line: 453, column: 42, scope: !2230)
!2233 = !DILocation(line: 453, column: 45, scope: !2230)
!2234 = !DILocation(line: 453, column: 50, scope: !2230)
!2235 = !DILocation(line: 453, column: 6, scope: !2212)
!2236 = !DILocation(line: 454, column: 3, scope: !2230)
!2237 = !DILocation(line: 455, column: 32, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2212, file: !90, line: 455, column: 6)
!2239 = !DILocation(line: 455, column: 37, scope: !2238)
!2240 = !DILocation(line: 455, column: 43, scope: !2238)
!2241 = !DILocation(line: 455, column: 46, scope: !2238)
!2242 = !DILocation(line: 455, column: 51, scope: !2238)
!2243 = !DILocation(line: 455, column: 6, scope: !2212)
!2244 = !DILocation(line: 456, column: 3, scope: !2238)
!2245 = !DILocation(line: 457, column: 6, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2212, file: !90, line: 457, column: 6)
!2247 = !DILocation(line: 457, column: 11, scope: !2246)
!2248 = !DILocation(line: 457, column: 6, scope: !2212)
!2249 = !DILocation(line: 457, column: 26, scope: !2246)
!2250 = !DILocation(line: 458, column: 6, scope: !2251)
!2251 = distinct !DILexicalBlock(scope: !2212, file: !90, line: 458, column: 6)
!2252 = !DILocation(line: 458, column: 11, scope: !2251)
!2253 = !DILocation(line: 458, column: 6, scope: !2212)
!2254 = !DILocation(line: 458, column: 26, scope: !2251)
!2255 = !DILocation(line: 459, column: 6, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2212, file: !90, line: 459, column: 6)
!2257 = !DILocation(line: 459, column: 11, scope: !2256)
!2258 = !DILocation(line: 459, column: 6, scope: !2212)
!2259 = !DILocation(line: 459, column: 26, scope: !2256)
!2260 = !DILocation(line: 460, column: 6, scope: !2261)
!2261 = distinct !DILexicalBlock(scope: !2212, file: !90, line: 460, column: 6)
!2262 = !DILocation(line: 460, column: 11, scope: !2261)
!2263 = !DILocation(line: 460, column: 6, scope: !2212)
!2264 = !DILocation(line: 460, column: 26, scope: !2261)
!2265 = !DILocation(line: 461, column: 6, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2212, file: !90, line: 461, column: 6)
!2267 = !DILocation(line: 461, column: 11, scope: !2266)
!2268 = !DILocation(line: 461, column: 6, scope: !2212)
!2269 = !DILocation(line: 461, column: 26, scope: !2266)
!2270 = !DILocation(line: 462, column: 6, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2212, file: !90, line: 462, column: 6)
!2272 = !DILocation(line: 462, column: 11, scope: !2271)
!2273 = !DILocation(line: 462, column: 6, scope: !2212)
!2274 = !DILocation(line: 462, column: 26, scope: !2271)
!2275 = !DILocation(line: 463, column: 6, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2212, file: !90, line: 463, column: 6)
!2277 = !DILocation(line: 463, column: 11, scope: !2276)
!2278 = !DILocation(line: 463, column: 6, scope: !2212)
!2279 = !DILocation(line: 463, column: 26, scope: !2276)
!2280 = !DILocation(line: 464, column: 6, scope: !2281)
!2281 = distinct !DILexicalBlock(scope: !2212, file: !90, line: 464, column: 6)
!2282 = !DILocation(line: 464, column: 11, scope: !2281)
!2283 = !DILocation(line: 464, column: 6, scope: !2212)
!2284 = !DILocation(line: 464, column: 26, scope: !2281)
!2285 = !DILocation(line: 465, column: 6, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2212, file: !90, line: 465, column: 6)
!2287 = !DILocation(line: 465, column: 11, scope: !2286)
!2288 = !DILocation(line: 465, column: 6, scope: !2212)
!2289 = !DILocation(line: 465, column: 26, scope: !2286)
!2290 = !DILocation(line: 466, column: 6, scope: !2291)
!2291 = distinct !DILexicalBlock(scope: !2212, file: !90, line: 466, column: 6)
!2292 = !DILocation(line: 466, column: 11, scope: !2291)
!2293 = !DILocation(line: 466, column: 6, scope: !2212)
!2294 = !DILocation(line: 466, column: 26, scope: !2291)
!2295 = !DILocation(line: 467, column: 6, scope: !2296)
!2296 = distinct !DILexicalBlock(scope: !2212, file: !90, line: 467, column: 6)
!2297 = !DILocation(line: 467, column: 11, scope: !2296)
!2298 = !DILocation(line: 467, column: 6, scope: !2212)
!2299 = !DILocation(line: 467, column: 26, scope: !2296)
!2300 = !DILocation(line: 468, column: 6, scope: !2301)
!2301 = distinct !DILexicalBlock(scope: !2212, file: !90, line: 468, column: 6)
!2302 = !DILocation(line: 468, column: 11, scope: !2301)
!2303 = !DILocation(line: 468, column: 6, scope: !2212)
!2304 = !DILocation(line: 468, column: 26, scope: !2301)
!2305 = !DILocation(line: 469, column: 6, scope: !2306)
!2306 = distinct !DILexicalBlock(scope: !2212, file: !90, line: 469, column: 6)
!2307 = !DILocation(line: 469, column: 11, scope: !2306)
!2308 = !DILocation(line: 469, column: 6, scope: !2212)
!2309 = !DILocation(line: 469, column: 26, scope: !2306)
!2310 = !DILocation(line: 470, column: 6, scope: !2311)
!2311 = distinct !DILexicalBlock(scope: !2212, file: !90, line: 470, column: 6)
!2312 = !DILocation(line: 470, column: 11, scope: !2311)
!2313 = !DILocation(line: 470, column: 6, scope: !2212)
!2314 = !DILocation(line: 470, column: 26, scope: !2311)
!2315 = !DILocation(line: 471, column: 6, scope: !2316)
!2316 = distinct !DILexicalBlock(scope: !2212, file: !90, line: 471, column: 6)
!2317 = !DILocation(line: 471, column: 11, scope: !2316)
!2318 = !DILocation(line: 471, column: 6, scope: !2212)
!2319 = !DILocation(line: 471, column: 26, scope: !2316)
!2320 = !DILocation(line: 472, column: 6, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2212, file: !90, line: 472, column: 6)
!2322 = !DILocation(line: 472, column: 11, scope: !2321)
!2323 = !DILocation(line: 472, column: 6, scope: !2212)
!2324 = !DILocation(line: 472, column: 26, scope: !2321)
!2325 = !DILocation(line: 473, column: 6, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2212, file: !90, line: 473, column: 6)
!2327 = !DILocation(line: 473, column: 11, scope: !2326)
!2328 = !DILocation(line: 473, column: 6, scope: !2212)
!2329 = !DILocation(line: 473, column: 26, scope: !2326)
!2330 = !DILocation(line: 474, column: 6, scope: !2331)
!2331 = distinct !DILexicalBlock(scope: !2212, file: !90, line: 474, column: 6)
!2332 = !DILocation(line: 474, column: 11, scope: !2331)
!2333 = !DILocation(line: 474, column: 6, scope: !2212)
!2334 = !DILocation(line: 474, column: 27, scope: !2331)
!2335 = !DILocation(line: 475, column: 6, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2212, file: !90, line: 475, column: 6)
!2337 = !DILocation(line: 475, column: 11, scope: !2336)
!2338 = !DILocation(line: 475, column: 6, scope: !2212)
!2339 = !DILocation(line: 475, column: 32, scope: !2336)
!2340 = !DILocation(line: 477, column: 50, scope: !2341)
!2341 = distinct !DILexicalBlock(scope: !2212, file: !90, line: 477, column: 6)
!2342 = !{i8 0, i8 2}
!2343 = !DILocation(line: 477, column: 6, scope: !2212)
!2344 = !DILocation(line: 478, column: 3, scope: !2341)
!2345 = !DILocation(line: 478, column: 3, scope: !2346)
!2346 = distinct !DILexicalBlock(scope: !2347, file: !90, line: 478, column: 3)
!2347 = distinct !DILexicalBlock(scope: !2341, file: !90, line: 478, column: 3)
!2348 = !{i32 -2143467208}
!2349 = !DILocation(line: 478, column: 3, scope: !2347)
!2350 = !DILocation(line: 480, column: 3, scope: !2341)
!2351 = !DILocation(line: 480, column: 3, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2341, file: !90, line: 480, column: 3)
!2353 = !DILocation(line: 480, column: 3, scope: !2354)
!2354 = distinct !DILexicalBlock(scope: !2352, file: !90, line: 480, column: 3)
!2355 = !DILocation(line: 480, column: 3, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2352, file: !90, line: 480, column: 3)
!2357 = !{i64 2151500291, i64 2151500320, i64 2151500366, i64 2151500424, i64 2151500478, i64 2151500532, i64 2151500587, i64 2151500618}
!2358 = !DILocation(line: 483, column: 2, scope: !2212)
!2359 = !DILocation(line: 484, column: 1, scope: !2212)
!2360 = !DISubprogram(name: "kmalloc_trace", scope: !90, file: !90, line: 525, type: !2361, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2361 = !DISubroutineType(types: !2362)
!2362 = !{!114, !2363, !111, !301}
!2363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2364, size: 64)
!2364 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2365, line: 11, flags: DIFlagFwdDecl)
!2365 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2366 = distinct !DISubprogram(name: "kmalloc_type", scope: !90, file: !90, line: 401, type: !2367, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2369)
!2367 = !DISubroutineType(types: !2368)
!2368 = !{!89, !111, !113}
!2369 = !{!2370, !2371}
!2370 = !DILocalVariable(name: "flags", arg: 1, scope: !2366, file: !90, line: 401, type: !111)
!2371 = !DILocalVariable(name: "caller", arg: 2, scope: !2366, file: !90, line: 401, type: !113)
!2372 = !DILocation(line: 401, column: 67, scope: !2366)
!2373 = !DILocation(line: 401, column: 88, scope: !2366)
!2374 = !DILocation(line: 407, column: 6, scope: !2375)
!2375 = distinct !DILexicalBlock(scope: !2366, file: !90, line: 407, column: 6)
!2376 = !DILocation(line: 407, column: 6, scope: !2366)
!2377 = !DILocation(line: 413, column: 3, scope: !2375)
!2378 = !DILocation(line: 423, column: 38, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2366, file: !90, line: 423, column: 6)
!2380 = !DILocation(line: 423, column: 44, scope: !2379)
!2381 = !DILocation(line: 423, column: 6, scope: !2366)
!2382 = !DILocation(line: 424, column: 3, scope: !2379)
!2383 = !DILocation(line: 426, column: 3, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2366, file: !90, line: 425, column: 6)
!2385 = !DILocation(line: 429, column: 1, scope: !2366)
!2386 = !DISubprogram(name: "__kmalloc", scope: !90, file: !90, line: 488, type: !2102, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2387 = !DISubprogram(name: "__compiletime_assert_125", scope: !90, file: !90, line: 478, type: !1275, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2388 = !DISubprogram(name: "acpi_dev_for_each_child", scope: !117, file: !117, line: 493, type: !2389, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2389 = !DISubroutineType(types: !2390)
!2390 = !{!46, !115, !2391, !114}
!2391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2392, size: 64)
!2392 = !DISubroutineType(types: !2393)
!2393 = !{!46, !115, !114}
!2394 = !DISubprogram(name: "is_acpi_device_node", scope: !117, file: !117, line: 410, type: !149, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2395 = distinct !DISubprogram(name: "check_offline", scope: !3, file: !3, line: 26, type: !2392, scopeLine: 27, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2396)
!2396 = !{!2397, !2398}
!2397 = !DILocalVariable(name: "adev", arg: 1, scope: !2395, file: !3, line: 26, type: !115)
!2398 = !DILocalVariable(name: "not_used", arg: 2, scope: !2395, file: !3, line: 26, type: !114)
!2399 = !DILocation(line: 26, column: 46, scope: !2395)
!2400 = !DILocation(line: 26, column: 58, scope: !2395)
!2401 = !DILocation(line: 28, column: 27, scope: !2402)
!2402 = distinct !DILexicalBlock(scope: !2395, file: !3, line: 28, column: 6)
!2403 = !DILocation(line: 28, column: 6, scope: !2402)
!2404 = !DILocation(line: 28, column: 6, scope: !2395)
!2405 = !DILocation(line: 29, column: 3, scope: !2402)
!2406 = !DILocation(line: 31, column: 2, scope: !2395)
!2407 = !DILocation(line: 32, column: 1, scope: !2395)
!2408 = !DISubprogram(name: "acpi_scan_is_offline", scope: !2409, file: !2409, line: 83, type: !2410, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2409 = !DIFile(filename: "drivers/acpi/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5cf5cbbce8a2c7457da3066f6da7b3bd")
!2410 = !DISubroutineType(types: !2411)
!2411 = !{!151, !115, !151}
!2412 = distinct !DISubprogram(name: "kobject_name", scope: !100, file: !100, line: 87, type: !242, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2413)
!2413 = !{!2414}
!2414 = !DILocalVariable(name: "kobj", arg: 1, scope: !2412, file: !100, line: 87, type: !237)
!2415 = !DILocation(line: 87, column: 62, scope: !2412)
!2416 = !DILocation(line: 89, column: 9, scope: !2412)
!2417 = !DILocation(line: 89, column: 15, scope: !2412)
!2418 = !DILocation(line: 89, column: 2, scope: !2412)
!2419 = !DISubprogram(name: "kfree", scope: !90, file: !90, line: 227, type: !2420, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2420 = !DISubroutineType(types: !2421)
!2421 = !{null, !159}
!2422 = distinct !DISubprogram(name: "to_container_dev", scope: !1974, file: !1974, line: 22, type: !2423, scopeLine: 23, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2425)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!1972, !826}
!2425 = !{!2426, !2427}
!2426 = !DILocalVariable(name: "dev", arg: 1, scope: !2422, file: !1974, line: 22, type: !826)
!2427 = !DILocalVariable(name: "__mptr", scope: !2428, file: !1974, line: 24, type: !114)
!2428 = distinct !DILexicalBlock(scope: !2422, file: !1974, line: 24, column: 9)
!2429 = !DILocation(line: 22, column: 69, scope: !2422)
!2430 = !DILocation(line: 24, column: 9, scope: !2428)
!2431 = !DILocation(line: 24, column: 9, scope: !2422)
!2432 = !DILocation(line: 24, column: 2, scope: !2422)
!2433 = distinct !DISubprogram(name: "acpi_driver_data", scope: !117, file: !117, line: 456, type: !2434, scopeLine: 457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2436)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{!114, !115}
!2436 = !{!2437}
!2437 = !DILocalVariable(name: "d", arg: 1, scope: !2433, file: !117, line: 456, type: !115)
!2438 = !DILocation(line: 456, column: 58, scope: !2433)
!2439 = !DILocation(line: 458, column: 9, scope: !2433)
!2440 = !DILocation(line: 458, column: 12, scope: !2433)
!2441 = !DILocation(line: 458, column: 2, scope: !2433)
!2442 = !DISubprogram(name: "device_unregister", scope: !26, file: !26, line: 1055, type: !849, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2443 = !DISubprogram(name: "kobject_uevent", scope: !100, file: !100, line: 214, type: !2444, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2444 = !DISubroutineType(types: !2445)
!2445 = !{!46, !179, !99}
