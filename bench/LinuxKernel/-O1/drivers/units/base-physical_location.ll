; ModuleID = 'drivers/base/physical_location.c'
source_filename = "drivers/base/physical_location.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

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
%struct.acpi_pld_info = type { i8, i8, i8, i8, i8, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16 }
%struct.device_physical_location = type { i32, i32, i32, i8, i8 }
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

@.str = private unnamed_addr constant [18 x i8] c"physical_location\00", align 1, !dbg !0
@dev_attr_physical_location = internal global [6 x ptr] [ptr @dev_attr_panel, ptr @dev_attr_vertical_position, ptr @dev_attr_horizontal_position, ptr @dev_attr_dock, ptr @dev_attr_lid, ptr null], align 16, !dbg !7
@dev_attr_physical_location_group = hidden constant %struct.attribute_group { ptr @.str, ptr null, ptr null, ptr @dev_attr_physical_location, ptr null }, align 8, !dbg !1968
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !1970
@dev_attr_panel = internal global %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292 }, ptr @panel_show, ptr null }, align 8, !dbg !1980
@dev_attr_vertical_position = internal global %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 292 }, ptr @vertical_position_show, ptr null }, align 8, !dbg !2015
@dev_attr_horizontal_position = internal global %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 292 }, ptr @horizontal_position_show, ptr null }, align 8, !dbg !2025
@dev_attr_dock = internal global %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292 }, ptr @dock_show, ptr null }, align 8, !dbg !2029
@dev_attr_lid = internal global %struct.device_attribute { %struct.attribute { ptr @.str.19, i16 292 }, ptr @lid_show, ptr null }, align 8, !dbg !2038
@.str.2 = private unnamed_addr constant [6 x i8] c"panel\00", align 1, !dbg !1975
@.str.3 = private unnamed_addr constant [4 x i8] c"top\00", align 1, !dbg !1994
@.str.4 = private unnamed_addr constant [7 x i8] c"bottom\00", align 1, !dbg !1997
@.str.5 = private unnamed_addr constant [5 x i8] c"left\00", align 1, !dbg !2000
@.str.6 = private unnamed_addr constant [6 x i8] c"right\00", align 1, !dbg !2003
@.str.7 = private unnamed_addr constant [6 x i8] c"front\00", align 1, !dbg !2005
@.str.8 = private unnamed_addr constant [5 x i8] c"back\00", align 1, !dbg !2007
@.str.9 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1, !dbg !2009
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !2011
@.str.11 = private unnamed_addr constant [18 x i8] c"vertical_position\00", align 1, !dbg !2013
@.str.12 = private unnamed_addr constant [6 x i8] c"upper\00", align 1, !dbg !2017
@.str.13 = private unnamed_addr constant [7 x i8] c"center\00", align 1, !dbg !2019
@.str.14 = private unnamed_addr constant [6 x i8] c"lower\00", align 1, !dbg !2021
@.str.15 = private unnamed_addr constant [20 x i8] c"horizontal_position\00", align 1, !dbg !2023
@.str.16 = private unnamed_addr constant [5 x i8] c"dock\00", align 1, !dbg !2027
@.str.17 = private unnamed_addr constant [4 x i8] c"yes\00", align 1, !dbg !2031
@.str.18 = private unnamed_addr constant [3 x i8] c"no\00", align 1, !dbg !2033
@.str.19 = private unnamed_addr constant [4 x i8] c"lid\00", align 1, !dbg !2036

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden zeroext i1 @dev_add_physical_location(ptr noundef %dev) #0 align 16 !dbg !2050 {
entry:
  %retval = alloca i1, align 1
  %dev.addr = alloca ptr, align 8
  %pld = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__to_acpi_device_node_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2054, metadata !DIExpression()), !dbg !2094
  call void @llvm.lifetime.start.p0(i64 8, ptr %pld) #13, !dbg !2095
  call void @llvm.dbg.declare(metadata ptr %pld, metadata !2055, metadata !DIExpression()), !dbg !2096
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #13, !dbg !2097
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2088, metadata !DIExpression()), !dbg !2098
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2099
  %call = call zeroext i1 @has_acpi_companion(ptr noundef %0) #14, !dbg !2101
  br i1 %call, label %if.end, label %if.then, !dbg !2102

if.then:                                          ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !2103
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2103

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #13, !dbg !2104
  call void @llvm.dbg.declare(metadata ptr %__to_acpi_device_node_fwnode, metadata !2090, metadata !DIExpression()), !dbg !2104
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2104
  %fwnode = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 24, !dbg !2104
  %2 = load ptr, ptr %fwnode, align 8, !dbg !2104
  store ptr %2, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !2104
  %3 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !2104
  %call1 = call zeroext i1 @is_acpi_device_node(ptr noundef %3) #14, !dbg !2104
  br i1 %call1, label %cond.true, label %cond.false, !dbg !2104

cond.true:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !2105
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2092, metadata !DIExpression()), !dbg !2105
  %4 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !2105
  store ptr %4, ptr %__mptr, align 8, !dbg !2105
  %5 = load ptr, ptr %__mptr, align 8, !dbg !2105
  %add.ptr = getelementptr i8, ptr %5, i64 -16, !dbg !2105
  store ptr %add.ptr, ptr %tmp2, align 8, !dbg !2105
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !2104
  %6 = load ptr, ptr %tmp2, align 8, !dbg !2105
  br label %cond.end, !dbg !2104

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !2104

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %6, %cond.true ], [ null, %cond.false ], !dbg !2104
  store ptr %cond, ptr %tmp, align 8, !dbg !2104
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #13, !dbg !2106
  %7 = load ptr, ptr %tmp, align 8, !dbg !2104
  %call3 = call ptr @acpi_device_handle(ptr noundef %7) #14, !dbg !2106
  %call4 = call i32 @acpi_get_physical_device_location(ptr noundef %call3, ptr noundef %pld) #14, !dbg !2107
  store i32 %call4, ptr %status, align 4, !dbg !2108
  %8 = load i32, ptr %status, align 4, !dbg !2109
  %tobool = icmp ne i32 %8, 0, !dbg !2109
  br i1 %tobool, label %if.then5, label %if.end6, !dbg !2111

if.then5:                                         ; preds = %cond.end
  store i1 false, ptr %retval, align 1, !dbg !2112
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2112

if.end6:                                          ; preds = %cond.end
  %call7 = call noalias ptr @kzalloc(i64 noundef 16, i32 noundef 3264) #15, !dbg !2113
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !2114
  %physical_location = getelementptr inbounds %struct.device, ptr %9, i32 0, i32 35, !dbg !2115
  store ptr %call7, ptr %physical_location, align 8, !dbg !2116
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !2117
  %physical_location8 = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 35, !dbg !2119
  %11 = load ptr, ptr %physical_location8, align 8, !dbg !2119
  %tobool9 = icmp ne ptr %11, null, !dbg !2117
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !2120

if.then10:                                        ; preds = %if.end6
  %12 = load ptr, ptr %pld, align 8, !dbg !2121
  call void @acpi_os_free(ptr noundef %12) #14, !dbg !2121
  store i1 false, ptr %retval, align 1, !dbg !2123
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2123

if.end11:                                         ; preds = %if.end6
  %13 = load ptr, ptr %pld, align 8, !dbg !2124
  %panel = getelementptr inbounds %struct.acpi_pld_info, ptr %13, i32 0, i32 10, !dbg !2125
  %14 = load i8, ptr %panel, align 1, !dbg !2125
  %conv = zext i8 %14 to i32, !dbg !2124
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !2126
  %physical_location12 = getelementptr inbounds %struct.device, ptr %15, i32 0, i32 35, !dbg !2127
  %16 = load ptr, ptr %physical_location12, align 8, !dbg !2127
  %panel13 = getelementptr inbounds %struct.device_physical_location, ptr %16, i32 0, i32 0, !dbg !2128
  store i32 %conv, ptr %panel13, align 4, !dbg !2129
  %17 = load ptr, ptr %pld, align 8, !dbg !2130
  %vertical_position = getelementptr inbounds %struct.acpi_pld_info, ptr %17, i32 0, i32 11, !dbg !2131
  %18 = load i8, ptr %vertical_position, align 2, !dbg !2131
  %conv14 = zext i8 %18 to i32, !dbg !2130
  %19 = load ptr, ptr %dev.addr, align 8, !dbg !2132
  %physical_location15 = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 35, !dbg !2133
  %20 = load ptr, ptr %physical_location15, align 8, !dbg !2133
  %vertical_position16 = getelementptr inbounds %struct.device_physical_location, ptr %20, i32 0, i32 1, !dbg !2134
  store i32 %conv14, ptr %vertical_position16, align 4, !dbg !2135
  %21 = load ptr, ptr %pld, align 8, !dbg !2136
  %horizontal_position = getelementptr inbounds %struct.acpi_pld_info, ptr %21, i32 0, i32 12, !dbg !2137
  %22 = load i8, ptr %horizontal_position, align 1, !dbg !2137
  %conv17 = zext i8 %22 to i32, !dbg !2136
  %23 = load ptr, ptr %dev.addr, align 8, !dbg !2138
  %physical_location18 = getelementptr inbounds %struct.device, ptr %23, i32 0, i32 35, !dbg !2139
  %24 = load ptr, ptr %physical_location18, align 8, !dbg !2139
  %horizontal_position19 = getelementptr inbounds %struct.device_physical_location, ptr %24, i32 0, i32 2, !dbg !2140
  store i32 %conv17, ptr %horizontal_position19, align 4, !dbg !2141
  %25 = load ptr, ptr %pld, align 8, !dbg !2142
  %dock = getelementptr inbounds %struct.acpi_pld_info, ptr %25, i32 0, i32 8, !dbg !2143
  %26 = load i8, ptr %dock, align 1, !dbg !2143
  %tobool20 = icmp ne i8 %26, 0, !dbg !2142
  %27 = load ptr, ptr %dev.addr, align 8, !dbg !2144
  %physical_location21 = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 35, !dbg !2145
  %28 = load ptr, ptr %physical_location21, align 8, !dbg !2145
  %dock22 = getelementptr inbounds %struct.device_physical_location, ptr %28, i32 0, i32 3, !dbg !2146
  %frombool = zext i1 %tobool20 to i8, !dbg !2147
  store i8 %frombool, ptr %dock22, align 4, !dbg !2147
  %29 = load ptr, ptr %pld, align 8, !dbg !2148
  %lid = getelementptr inbounds %struct.acpi_pld_info, ptr %29, i32 0, i32 9, !dbg !2149
  %30 = load i8, ptr %lid, align 2, !dbg !2149
  %tobool23 = icmp ne i8 %30, 0, !dbg !2148
  %31 = load ptr, ptr %dev.addr, align 8, !dbg !2150
  %physical_location24 = getelementptr inbounds %struct.device, ptr %31, i32 0, i32 35, !dbg !2151
  %32 = load ptr, ptr %physical_location24, align 8, !dbg !2151
  %lid25 = getelementptr inbounds %struct.device_physical_location, ptr %32, i32 0, i32 4, !dbg !2152
  %frombool26 = zext i1 %tobool23 to i8, !dbg !2153
  store i8 %frombool26, ptr %lid25, align 1, !dbg !2153
  %33 = load ptr, ptr %pld, align 8, !dbg !2154
  call void @acpi_os_free(ptr noundef %33) #14, !dbg !2154
  store i1 true, ptr %retval, align 1, !dbg !2155
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2155

cleanup:                                          ; preds = %if.end11, %if.then10, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #13, !dbg !2156
  call void @llvm.lifetime.end.p0(i64 8, ptr %pld) #13, !dbg !2156
  %34 = load i1, ptr %retval, align 1, !dbg !2156
  ret i1 %34, !dbg !2156
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @has_acpi_companion(ptr noundef %dev) #3 align 16 !dbg !2157 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2160, metadata !DIExpression()), !dbg !2161
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2162
  %fwnode = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 24, !dbg !2163
  %1 = load ptr, ptr %fwnode, align 8, !dbg !2163
  %call = call zeroext i1 @is_acpi_device_node(ptr noundef %1) #14, !dbg !2164
  ret i1 %call, !dbg !2165
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2166 dso_local i32 @acpi_get_physical_device_location(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_device_handle(ptr noundef %adev) #3 align 16 !dbg !2170 {
entry:
  %adev.addr = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !2174, metadata !DIExpression()), !dbg !2175
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !2176
  %tobool = icmp ne ptr %0, null, !dbg !2176
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2176

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %adev.addr, align 8, !dbg !2177
  %handle = getelementptr inbounds %struct.acpi_device, ptr %1, i32 0, i32 2, !dbg !2178
  %2 = load ptr, ptr %handle, align 8, !dbg !2178
  br label %cond.end, !dbg !2176

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2176

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %2, %cond.true ], [ null, %cond.false ], !dbg !2176
  ret ptr %cond, !dbg !2179
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2180 dso_local zeroext i1 @is_acpi_device_node(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #5 align 16 !dbg !2181 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2185, metadata !DIExpression()), !dbg !2187
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2186, metadata !DIExpression()), !dbg !2188
  %0 = load i64, ptr %size.addr, align 8, !dbg !2189
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2190
  %or = or i32 %1, 256, !dbg !2191
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #15, !dbg !2192
  ret ptr %call, !dbg !2193
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_os_free(ptr noundef %memory) #3 align 16 !dbg !2194 {
entry:
  %memory.addr = alloca ptr, align 8
  store ptr %memory, ptr %memory.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %memory.addr, metadata !2197, metadata !DIExpression()), !dbg !2198
  %0 = load ptr, ptr %memory.addr, align 8, !dbg !2199
  call void @kfree(ptr noundef %0) #14, !dbg !2200
  ret void, !dbg !2201
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !2202 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2204, metadata !DIExpression()), !dbg !2209
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2205, metadata !DIExpression()), !dbg !2210
  %0 = load i64, ptr %size.addr, align 8, !dbg !2211
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2212
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2213

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2214
  %tobool = icmp ne i64 %2, 0, !dbg !2214
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2215

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !2216
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2206, metadata !DIExpression()), !dbg !2217
  %3 = load i64, ptr %size.addr, align 8, !dbg !2218
  %cmp = icmp ugt i64 %3, 8192, !dbg !2220
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2221

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2222
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2223
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #15, !dbg !2224
  store ptr %call, ptr %retval, align 8, !dbg !2225
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2225

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2226
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !2226
  store i32 %call2, ptr %index, align 4, !dbg !2227
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2228
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2229
  %9 = ptrtoint ptr %8 to i64, !dbg !2229
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !2230
  %idxprom = zext i32 %call3 to i64, !dbg !2231
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2231
  %10 = load i32, ptr %index, align 4, !dbg !2232
  %idxprom4 = zext i32 %10 to i64, !dbg !2231
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2231
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2231
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2233
  %13 = load i64, ptr %size.addr, align 8, !dbg !2234
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #16, !dbg !2235
  store ptr %call6, ptr %retval, align 8, !dbg !2236
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2236

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !2237
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2238
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2239
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #15, !dbg !2240
  store ptr %call8, ptr %retval, align 8, !dbg !2241
  br label %return, !dbg !2241

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2242
  ret ptr %16, !dbg !2242
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2243 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #9 align 16 !dbg !2244 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2248, metadata !DIExpression()), !dbg !2250
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2249, metadata !DIExpression()), !dbg !2251
  %0 = load i64, ptr %size.addr, align 8, !dbg !2252
  %tobool = icmp ne i64 %0, 0, !dbg !2252
  br i1 %tobool, label %if.end, label %if.then, !dbg !2254

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2255
  br label %return, !dbg !2255

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2256
  %cmp = icmp ule i64 %1, 8, !dbg !2258
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2259

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2260
  br label %return, !dbg !2260

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2261
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2263
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2264

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2265
  %cmp4 = icmp ule i64 %3, 96, !dbg !2266
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2267

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2268
  br label %return, !dbg !2268

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2269
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2271
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2272

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2273
  %cmp9 = icmp ule i64 %5, 192, !dbg !2274
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2275

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2276
  br label %return, !dbg !2276

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2277
  %cmp12 = icmp ule i64 %6, 8, !dbg !2279
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2280

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2281
  br label %return, !dbg !2281

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2282
  %cmp15 = icmp ule i64 %7, 16, !dbg !2284
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2285

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2286
  br label %return, !dbg !2286

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2287
  %cmp18 = icmp ule i64 %8, 32, !dbg !2289
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2290

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2291
  br label %return, !dbg !2291

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2292
  %cmp21 = icmp ule i64 %9, 64, !dbg !2294
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2295

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2296
  br label %return, !dbg !2296

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2297
  %cmp24 = icmp ule i64 %10, 128, !dbg !2299
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2300

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2301
  br label %return, !dbg !2301

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2302
  %cmp27 = icmp ule i64 %11, 256, !dbg !2304
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2305

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2306
  br label %return, !dbg !2306

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2307
  %cmp30 = icmp ule i64 %12, 512, !dbg !2309
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2310

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2311
  br label %return, !dbg !2311

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2312
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2314
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2315

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2316
  br label %return, !dbg !2316

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2317
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2319
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2320

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2321
  br label %return, !dbg !2321

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2322
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2324
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2325

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2326
  br label %return, !dbg !2326

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2327
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2329
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2330

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2331
  br label %return, !dbg !2331

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2332
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2334
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2335

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2336
  br label %return, !dbg !2336

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2337
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2339
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2340

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2341
  br label %return, !dbg !2341

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2342
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2344
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2345

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2346
  br label %return, !dbg !2346

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2347
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2349
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2350

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2351
  br label %return, !dbg !2351

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2352
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2354
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2355

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2356
  br label %return, !dbg !2356

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2357
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2359
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2360

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2361
  br label %return, !dbg !2361

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2362
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2364
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2365

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2366
  br label %return, !dbg !2366

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2367
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2369
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2370

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2371
  br label %return, !dbg !2371

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2372, !range !2374, !noundef !384
  %tobool69 = trunc i8 %25 to i1, !dbg !2372
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2375

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2376

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_125() #17, !dbg !2377, !srcloc !2380
  unreachable, !dbg !2377

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2381

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2382

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2383

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2385

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2383

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #13, !dbg !2387, !srcloc !2389
  br label %do.end75, !dbg !2387

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2383

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2390
  br label %return, !dbg !2390

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2391
  ret i32 %26, !dbg !2391
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2392 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #9 align 16 !dbg !2398 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2402, metadata !DIExpression()), !dbg !2404
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2403, metadata !DIExpression()), !dbg !2405
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2406
  %and = and i32 %0, 17, !dbg !2406
  %cmp = icmp eq i32 %and, 0, !dbg !2406
  %lnot = xor i1 %cmp, true, !dbg !2406
  %lnot1 = xor i1 %lnot, true, !dbg !2406
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2406
  %conv = sext i32 %lnot.ext to i64, !dbg !2406
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2406
  %tobool = icmp ne i64 %expval, 0, !dbg !2406
  br i1 %tobool, label %if.then, label %if.end, !dbg !2408

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2409
  br label %return, !dbg !2409

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2410
  %and2 = and i32 %1, 1, !dbg !2412
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2412
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2413

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2414
  br label %return, !dbg !2414

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2415
  br label %return, !dbg !2415

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2417
  ret i32 %2, !dbg !2417
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #11

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2418 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #8

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2419 dso_local void @__compiletime_assert_125() #12

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #11

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2420 dso_local void @kfree(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @panel_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2423 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %panel = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2425, metadata !DIExpression()), !dbg !2429
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2426, metadata !DIExpression()), !dbg !2430
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2427, metadata !DIExpression()), !dbg !2431
  call void @llvm.lifetime.start.p0(i64 8, ptr %panel) #13, !dbg !2432
  call void @llvm.dbg.declare(metadata ptr %panel, metadata !2428, metadata !DIExpression()), !dbg !2433
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2434
  %physical_location = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 35, !dbg !2435
  %1 = load ptr, ptr %physical_location, align 8, !dbg !2435
  %panel1 = getelementptr inbounds %struct.device_physical_location, ptr %1, i32 0, i32 0, !dbg !2436
  %2 = load i32, ptr %panel1, align 4, !dbg !2436
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
    i32 3, label %sw.bb4
    i32 4, label %sw.bb5
    i32 5, label %sw.bb6
  ], !dbg !2437

sw.bb:                                            ; preds = %entry
  store ptr @.str.3, ptr %panel, align 8, !dbg !2438
  br label %sw.epilog, !dbg !2440

sw.bb2:                                           ; preds = %entry
  store ptr @.str.4, ptr %panel, align 8, !dbg !2441
  br label %sw.epilog, !dbg !2442

sw.bb3:                                           ; preds = %entry
  store ptr @.str.5, ptr %panel, align 8, !dbg !2443
  br label %sw.epilog, !dbg !2444

sw.bb4:                                           ; preds = %entry
  store ptr @.str.6, ptr %panel, align 8, !dbg !2445
  br label %sw.epilog, !dbg !2446

sw.bb5:                                           ; preds = %entry
  store ptr @.str.7, ptr %panel, align 8, !dbg !2447
  br label %sw.epilog, !dbg !2448

sw.bb6:                                           ; preds = %entry
  store ptr @.str.8, ptr %panel, align 8, !dbg !2449
  br label %sw.epilog, !dbg !2450

sw.default:                                       ; preds = %entry
  store ptr @.str.9, ptr %panel, align 8, !dbg !2451
  br label %sw.epilog, !dbg !2452

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb5, %sw.bb4, %sw.bb3, %sw.bb2, %sw.bb
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !2453
  %4 = load ptr, ptr %panel, align 8, !dbg !2454
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %3, ptr noundef @.str.10, ptr noundef %4) #14, !dbg !2455
  %conv = sext i32 %call to i64, !dbg !2455
  call void @llvm.lifetime.end.p0(i64 8, ptr %panel) #13, !dbg !2456
  ret i64 %conv, !dbg !2457
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2458 dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @vertical_position_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2461 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %vertical_position = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2463, metadata !DIExpression()), !dbg !2467
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2464, metadata !DIExpression()), !dbg !2468
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2465, metadata !DIExpression()), !dbg !2469
  call void @llvm.lifetime.start.p0(i64 8, ptr %vertical_position) #13, !dbg !2470
  call void @llvm.dbg.declare(metadata ptr %vertical_position, metadata !2466, metadata !DIExpression()), !dbg !2471
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2472
  %physical_location = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 35, !dbg !2473
  %1 = load ptr, ptr %physical_location, align 8, !dbg !2473
  %vertical_position1 = getelementptr inbounds %struct.device_physical_location, ptr %1, i32 0, i32 1, !dbg !2474
  %2 = load i32, ptr %vertical_position1, align 4, !dbg !2474
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
  ], !dbg !2475

sw.bb:                                            ; preds = %entry
  store ptr @.str.12, ptr %vertical_position, align 8, !dbg !2476
  br label %sw.epilog, !dbg !2478

sw.bb2:                                           ; preds = %entry
  store ptr @.str.13, ptr %vertical_position, align 8, !dbg !2479
  br label %sw.epilog, !dbg !2480

sw.bb3:                                           ; preds = %entry
  store ptr @.str.14, ptr %vertical_position, align 8, !dbg !2481
  br label %sw.epilog, !dbg !2482

sw.default:                                       ; preds = %entry
  store ptr @.str.9, ptr %vertical_position, align 8, !dbg !2483
  br label %sw.epilog, !dbg !2484

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !2485
  %4 = load ptr, ptr %vertical_position, align 8, !dbg !2486
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %3, ptr noundef @.str.10, ptr noundef %4) #14, !dbg !2487
  %conv = sext i32 %call to i64, !dbg !2487
  call void @llvm.lifetime.end.p0(i64 8, ptr %vertical_position) #13, !dbg !2488
  ret i64 %conv, !dbg !2489
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @horizontal_position_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2490 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %horizontal_position = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2492, metadata !DIExpression()), !dbg !2496
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2493, metadata !DIExpression()), !dbg !2497
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2494, metadata !DIExpression()), !dbg !2498
  call void @llvm.lifetime.start.p0(i64 8, ptr %horizontal_position) #13, !dbg !2499
  call void @llvm.dbg.declare(metadata ptr %horizontal_position, metadata !2495, metadata !DIExpression()), !dbg !2500
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2501
  %physical_location = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 35, !dbg !2502
  %1 = load ptr, ptr %physical_location, align 8, !dbg !2502
  %horizontal_position1 = getelementptr inbounds %struct.device_physical_location, ptr %1, i32 0, i32 2, !dbg !2503
  %2 = load i32, ptr %horizontal_position1, align 4, !dbg !2503
  switch i32 %2, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb2
    i32 2, label %sw.bb3
  ], !dbg !2504

sw.bb:                                            ; preds = %entry
  store ptr @.str.5, ptr %horizontal_position, align 8, !dbg !2505
  br label %sw.epilog, !dbg !2507

sw.bb2:                                           ; preds = %entry
  store ptr @.str.13, ptr %horizontal_position, align 8, !dbg !2508
  br label %sw.epilog, !dbg !2509

sw.bb3:                                           ; preds = %entry
  store ptr @.str.6, ptr %horizontal_position, align 8, !dbg !2510
  br label %sw.epilog, !dbg !2511

sw.default:                                       ; preds = %entry
  store ptr @.str.9, ptr %horizontal_position, align 8, !dbg !2512
  br label %sw.epilog, !dbg !2513

sw.epilog:                                        ; preds = %sw.default, %sw.bb3, %sw.bb2, %sw.bb
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !2514
  %4 = load ptr, ptr %horizontal_position, align 8, !dbg !2515
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %3, ptr noundef @.str.10, ptr noundef %4) #14, !dbg !2516
  %conv = sext i32 %call to i64, !dbg !2516
  call void @llvm.lifetime.end.p0(i64 8, ptr %horizontal_position) #13, !dbg !2517
  ret i64 %conv, !dbg !2518
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @dock_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2519 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2521, metadata !DIExpression()), !dbg !2524
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2522, metadata !DIExpression()), !dbg !2525
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2523, metadata !DIExpression()), !dbg !2526
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !2527
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2528
  %physical_location = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 35, !dbg !2529
  %2 = load ptr, ptr %physical_location, align 8, !dbg !2529
  %dock = getelementptr inbounds %struct.device_physical_location, ptr %2, i32 0, i32 3, !dbg !2530
  %3 = load i8, ptr %dock, align 4, !dbg !2530, !range !2374, !noundef !384
  %tobool = trunc i8 %3 to i1, !dbg !2530
  %4 = zext i1 %tobool to i64, !dbg !2528
  %cond = select i1 %tobool, ptr @.str.17, ptr @.str.18, !dbg !2528
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %0, ptr noundef @.str.10, ptr noundef %cond) #14, !dbg !2531
  %conv = sext i32 %call to i64, !dbg !2531
  ret i64 %conv, !dbg !2532
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @lid_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2533 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2535, metadata !DIExpression()), !dbg !2538
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2536, metadata !DIExpression()), !dbg !2539
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2537, metadata !DIExpression()), !dbg !2540
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !2541
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2542
  %physical_location = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 35, !dbg !2543
  %2 = load ptr, ptr %physical_location, align 8, !dbg !2543
  %lid = getelementptr inbounds %struct.device_physical_location, ptr %2, i32 0, i32 4, !dbg !2544
  %3 = load i8, ptr %lid, align 1, !dbg !2544, !range !2374, !noundef !384
  %tobool = trunc i8 %3 to i1, !dbg !2544
  %4 = zext i1 %tobool to i64, !dbg !2542
  %cond = select i1 %tobool, ptr @.str.17, ptr @.str.18, !dbg !2542
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %0, ptr noundef @.str.10, ptr noundef %cond) #14, !dbg !2545
  %conv = sext i32 %call to i64, !dbg !2545
  ret i64 %conv, !dbg !2546
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noredzone }
attributes #15 = { noredzone allocsize(0) }
attributes #16 = { noredzone allocsize(2) }
attributes #17 = { noredzone noreturn }

!llvm.dbg.cu = !{!9}
!llvm.module.flags = !{!2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048}
!llvm.ident = !{!2049}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 143, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/base/physical_location.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "ae758f67ed1097cdea9ab688798d29ee")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 144, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 18)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(name: "dev_attr_physical_location", scope: !9, file: !2, line: 133, type: !2040, isLocal: true, isDefinition: true)
!9 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/base/.physical_location.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/base/physical_location\22 -D KBUILD_BASENAME=\22physical_location\22 -D KBUILD_MODNAME=\22physical_location\22 -D __KBUILD_MODNAME=kmod_physical_location -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/base/physical_location.ll drivers/base/physical_location.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !10, retainedTypes: !105, globals: !1967, splitDebugInlining: false, nameTableKind: None)
!10 = !{!11, !18, !25, !31, !38, !43, !51, !59, !65, !74, !79, !84, !90, !95}
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
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !60, line: 30, baseType: !13, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!61 = !{!62, !63, !64}
!62 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!63 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!64 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!65 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !32, line: 547, baseType: !13, size: 32, elements: !66)
!66 = !{!67, !68, !69, !70, !71, !72, !73}
!67 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!68 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!69 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!70 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!71 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!72 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!73 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!74 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !32, line: 564, baseType: !13, size: 32, elements: !75)
!75 = !{!76, !77, !78}
!76 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!77 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!78 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!79 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !32, line: 577, baseType: !13, size: 32, elements: !80)
!80 = !{!81, !82, !83}
!81 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!82 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!83 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !32, line: 503, baseType: !13, size: 32, elements: !85)
!85 = !{!86, !87, !88, !89}
!86 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!87 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!88 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!89 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !91, line: 10, baseType: !13, size: 32, elements: !92)
!91 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!92 = !{!93, !94}
!93 = !DIEnumerator(name: "false", value: 0)
!94 = !DIEnumerator(name: "true", value: 1)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !96, line: 364, baseType: !13, size: 32, elements: !97)
!96 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!97 = !{!98, !99, !100, !101, !102, !103, !104}
!98 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!99 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!100 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!101 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!102 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!103 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!104 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!105 = !{!106, !107, !1966, !297}
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !109, line: 367, size: 11200, elements: !110)
!109 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "745f031e2ee183d2395bab1bfe3ce66b")
!110 = !{!111, !116, !117, !120, !1711, !1712, !1713, !1722, !1740, !1819, !1849, !1873, !1894, !1900, !1909, !1941, !1955, !1959, !1960, !1961, !1962, !1963, !1964, !1965}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "pld_crc", scope: !108, file: !109, line: 368, baseType: !112, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !113, line: 21, baseType: !114)
!113 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!114 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !115, line: 27, baseType: !13)
!115 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!116 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !108, file: !109, line: 369, baseType: !52, size: 32, offset: 32)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !108, file: !109, line: 370, baseType: !118, size: 64, offset: 64)
!118 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !119, line: 424, baseType: !106)
!119 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!120 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !108, file: !109, line: 371, baseType: !121, size: 512, offset: 128)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !122, line: 41, size: 512, elements: !123)
!122 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!123 = !{!124, !126, !1707, !1708, !1709, !1710}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !121, file: !122, line: 42, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !121, file: !122, line: 43, baseType: !127, size: 64, offset: 64)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !129)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !122, line: 125, size: 1408, elements: !130)
!130 = !{!131, !135, !139, !148, !1637, !1638, !1642, !1646, !1650, !1654, !1658, !1659, !1663, !1667, !1671, !1682, !1683, !1684, !1685, !1695, !1699, !1703}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !129, file: !122, line: 126, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!125, !125}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !129, file: !122, line: 127, baseType: !136, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DISubroutineType(types: !138)
!138 = !{null, !125}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !129, file: !122, line: 128, baseType: !140, size: 64, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!141 = !DISubroutineType(types: !142)
!142 = !{!143, !146}
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !144, line: 35, baseType: !145)
!144 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!145 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !129, file: !122, line: 129, baseType: !149, size: 64, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!152, !146, !154}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !32, line: 705, size: 5824, elements: !157)
!157 = !{!158, !819, !821, !824, !825, !876, !1342, !1343, !1344, !1345, !1346, !1353, !1523, !1536, !1546, !1550, !1552, !1553, !1554, !1558, !1565, !1566, !1569, !1572, !1576, !1577, !1578, !1581, !1582, !1583, !1584, !1614, !1615, !1616, !1619, !1622, !1631, !1632, !1633, !1634, !1635, !1636}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !156, file: !32, line: 706, baseType: !159, size: 512)
!159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !160, line: 64, size: 512, elements: !161)
!160 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!161 = !{!162, !165, !171, !173, !260, !689, !804, !814, !815, !816, !817, !818}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !159, file: !160, line: 65, baseType: !163, size: 64)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !159, file: !160, line: 66, baseType: !166, size: 128, offset: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !144, line: 190, size: 128, elements: !167)
!167 = !{!168, !170}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !166, file: !144, line: 191, baseType: !169, size: 64)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !166, file: !144, line: 191, baseType: !169, size: 64, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !159, file: !160, line: 67, baseType: !172, size: 64, offset: 192)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !159, file: !160, line: 68, baseType: !174, size: 64, offset: 256)
!174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !160, line: 168, size: 768, elements: !176)
!176 = !{!177, !178, !219, !220}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !175, file: !160, line: 169, baseType: !166, size: 128)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !175, file: !160, line: 170, baseType: !179, size: 32, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !180, line: 29, baseType: !181)
!180 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !180, line: 17, size: 32, elements: !182)
!182 = !{!183}
!183 = !DIDerivedType(tag: DW_TAG_member, scope: !181, file: !180, line: 18, baseType: !184, size: 32)
!184 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !181, file: !180, line: 18, size: 32, elements: !185)
!185 = !{!186}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !184, file: !180, line: 19, baseType: !187, size: 32)
!187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !188, line: 14, size: 32, elements: !189)
!188 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!189 = !{!190}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !187, file: !188, line: 15, baseType: !191, size: 32)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !192, line: 44, baseType: !193)
!192 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !192, line: 14, size: 32, elements: !194)
!194 = !{!195}
!195 = !DIDerivedType(tag: DW_TAG_member, scope: !193, file: !192, line: 15, baseType: !196, size: 32)
!196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !193, file: !192, line: 15, size: 32, elements: !197)
!197 = !{!198, !203, !211}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !196, file: !192, line: 16, baseType: !199, size: 32)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !144, line: 174, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !144, line: 172, size: 32, elements: !201)
!201 = !{!202}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !200, file: !144, line: 173, baseType: !52, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, scope: !196, file: !192, line: 24, baseType: !204, size: 16)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !196, file: !192, line: 24, size: 16, elements: !205)
!205 = !{!206, !210}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !204, file: !192, line: 25, baseType: !207, size: 8)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !113, line: 17, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !115, line: 21, baseType: !209)
!209 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !204, file: !192, line: 26, baseType: !207, size: 8, offset: 8)
!211 = !DIDerivedType(tag: DW_TAG_member, scope: !196, file: !192, line: 28, baseType: !212, size: 32)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !196, file: !192, line: 28, size: 32, elements: !213)
!213 = !{!214, !218}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !212, file: !192, line: 29, baseType: !215, size: 16)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !113, line: 19, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !115, line: 24, baseType: !217)
!217 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !212, file: !192, line: 30, baseType: !215, size: 16, offset: 16)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !175, file: !160, line: 171, baseType: !159, size: 512, offset: 192)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !175, file: !160, line: 172, baseType: !221, size: 64, offset: 704)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !160, line: 133, size: 192, elements: !224)
!224 = !{!225, !232, !237}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !223, file: !160, line: 134, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!52, !230}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !159)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !223, file: !160, line: 135, baseType: !233, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!163, !230}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !223, file: !160, line: 136, baseType: !238, size: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!52, !230, !242}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !160, line: 125, size: 20736, elements: !244)
!244 = !{!245, !250, !254, !255, !259}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !243, file: !160, line: 126, baseType: !246, size: 192)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 192, elements: !248)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!248 = !{!249}
!249 = !DISubrange(count: 3)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !243, file: !160, line: 127, baseType: !251, size: 4096, offset: 192)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 4096, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !243, file: !160, line: 128, baseType: !52, size: 32, offset: 4288)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !243, file: !160, line: 129, baseType: !256, size: 16384, offset: 4320)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 2048)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !243, file: !160, line: 130, baseType: !52, size: 32, offset: 20704)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !159, file: !160, line: 69, baseType: !261, size: 64, offset: 320)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !160, line: 116, size: 384, elements: !264)
!264 = !{!265, !269, !298, !635, !666, !670}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !263, file: !160, line: 117, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{null, !172}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !263, file: !160, line: 118, baseType: !270, size: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !273, line: 254, size: 128, elements: !274)
!273 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!274 = !{!275, !290}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !272, file: !273, line: 255, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!279, !172, !284, !247}
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !144, line: 66, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !281, line: 73, baseType: !282)
!281 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !281, line: 15, baseType: !283)
!283 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !273, line: 30, size: 128, elements: !286)
!286 = !{!287, !288}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !285, file: !273, line: 31, baseType: !163, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !285, file: !273, line: 32, baseType: !289, size: 16, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !144, line: 24, baseType: !217)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !272, file: !273, line: 256, baseType: !291, size: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!279, !172, !284, !163, !294}
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !144, line: 61, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !281, line: 72, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !281, line: 16, baseType: !297)
!297 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !263, file: !160, line: 119, baseType: !299, size: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !273, line: 84, size: 320, elements: !303)
!303 = !{!304, !305, !309, !631, !633}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !302, file: !273, line: 85, baseType: !163, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !302, file: !273, line: 86, baseType: !306, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!289, !172, !284, !52}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !302, file: !273, line: 88, baseType: !310, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!289, !172, !313, !52}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !273, line: 175, size: 512, elements: !315)
!315 = !{!316, !317, !318, !319, !326, !336, !337}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !314, file: !273, line: 176, baseType: !285, size: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !314, file: !273, line: 177, baseType: !294, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !314, file: !273, line: 178, baseType: !106, size: 64, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !314, file: !273, line: 179, baseType: !320, size: 64, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!323}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !325, line: 351, flags: DIFlagFwdDecl)
!325 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!326 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !314, file: !273, line: 180, baseType: !327, size: 64, offset: 320)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!279, !330, !172, !313, !247, !333, !294}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !332, line: 537, flags: DIFlagFwdDecl)
!332 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !144, line: 52, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !281, line: 88, baseType: !335)
!335 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !314, file: !273, line: 182, baseType: !327, size: 64, offset: 384)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !314, file: !273, line: 184, baseType: !338, size: 64, offset: 448)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!52, !330, !172, !313, !341}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !343, line: 625, size: 1344, elements: !344)
!343 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!344 = !{!345, !362, !582, !588, !595, !596, !601, !602, !614, !615, !618, !622, !623, !624, !625, !626, !629}
!345 = !DIDerivedType(tag: DW_TAG_member, scope: !342, file: !343, line: 628, baseType: !346, size: 128)
!346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !342, file: !343, line: 628, size: 128, elements: !347)
!347 = !{!348, !353}
!348 = !DIDerivedType(tag: DW_TAG_member, scope: !346, file: !343, line: 629, baseType: !349, size: 128)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !346, file: !343, line: 629, size: 128, elements: !350)
!350 = !{!351, !352}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !349, file: !343, line: 631, baseType: !297, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !349, file: !343, line: 632, baseType: !297, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !346, file: !343, line: 635, baseType: !354, size: 128, align: 64)
!354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !144, line: 232, size: 128, align: 64, elements: !355)
!355 = !{!356, !358}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !354, file: !144, line: 233, baseType: !357, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !354, file: !144, line: 234, baseType: !359, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{null, !357}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !342, file: !343, line: 639, baseType: !363, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !343, line: 733, size: 10240, elements: !365)
!365 = !{!366, !578}
!366 = !DIDerivedType(tag: DW_TAG_member, scope: !364, file: !343, line: 734, baseType: !367, size: 10240)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !364, file: !343, line: 734, size: 10240, elements: !368)
!368 = !{!369, !373, !387, !391, !392, !393, !394, !395, !396, !404, !405, !406, !415, !416, !425, !426, !427, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !452, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !470, !474, !488, !491, !544, !545, !546, !549, !552, !553, !556, !557, !558, !565, !566}
!369 = !DIDerivedType(tag: DW_TAG_member, scope: !367, file: !343, line: 739, baseType: !370, size: 512, align: 512)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !367, file: !343, line: 739, size: 512, align: 512, elements: !371)
!371 = !{!372}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !370, file: !343, line: 747, baseType: !199, size: 32)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !367, file: !343, line: 750, baseType: !374, size: 128, offset: 512)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !375, line: 218, size: 128, elements: !376)
!375 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!376 = !{!377, !385, !386}
!377 = !DIDerivedType(tag: DW_TAG_member, scope: !374, file: !375, line: 219, baseType: !378, size: 32)
!378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !374, file: !375, line: 219, size: 32, elements: !379)
!379 = !{!380, !381}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !378, file: !375, line: 220, baseType: !179, size: 32)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !378, file: !375, line: 221, baseType: !382)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !375, line: 197, baseType: !383)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !375, line: 197, elements: !384)
!384 = !{}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !374, file: !375, line: 223, baseType: !13, size: 32, offset: 32)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !374, file: !375, line: 224, baseType: !106, size: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !367, file: !343, line: 752, baseType: !388, size: 64, offset: 640)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{!297, !330, !297, !297, !297, !297}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !367, file: !343, line: 756, baseType: !297, size: 64, offset: 704)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !367, file: !343, line: 757, baseType: !297, size: 64, offset: 768)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !367, file: !343, line: 760, baseType: !297, size: 64, offset: 832)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !367, file: !343, line: 761, baseType: !297, size: 64, offset: 896)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !367, file: !343, line: 763, baseType: !297, size: 64, offset: 960)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !367, file: !343, line: 764, baseType: !397, size: 64, offset: 1024)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !332, line: 299, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !332, line: 299, size: 64, elements: !400)
!400 = !{!401}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !399, file: !332, line: 299, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !403, line: 18, baseType: !297)
!403 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!404 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !367, file: !343, line: 773, baseType: !199, size: 32, offset: 1088)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !367, file: !343, line: 785, baseType: !199, size: 32, offset: 1120)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !367, file: !343, line: 795, baseType: !407, size: 64, offset: 1152)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !343, line: 726, size: 128, elements: !409)
!409 = !{!410, !414}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !408, file: !343, line: 727, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !113, line: 23, baseType: !412)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !115, line: 31, baseType: !413)
!413 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !408, file: !343, line: 728, baseType: !52, size: 32, offset: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !367, file: !343, line: 801, baseType: !297, size: 64, offset: 1216)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !367, file: !343, line: 804, baseType: !417, size: 64, offset: 1280)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !418, line: 13, baseType: !419)
!418 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !144, line: 181, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !144, line: 179, size: 64, elements: !421)
!421 = !{!422}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !420, file: !144, line: 180, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !113, line: 22, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !115, line: 30, baseType: !335)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !367, file: !343, line: 806, baseType: !52, size: 32, offset: 1344)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !367, file: !343, line: 808, baseType: !179, size: 32, offset: 1376)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !367, file: !343, line: 823, baseType: !428, size: 320, offset: 1408)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !429, line: 48, size: 320, elements: !430)
!429 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!430 = !{!431, !432, !433, !438, !440}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !428, file: !429, line: 49, baseType: !417, size: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !428, file: !429, line: 55, baseType: !417, size: 64, offset: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !428, file: !429, line: 57, baseType: !434, size: 32, offset: 128)
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !435, line: 15, size: 32, elements: !436)
!435 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!436 = !{!437}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !434, file: !435, line: 20, baseType: !199, size: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !428, file: !429, line: 59, baseType: !439, size: 32, offset: 160)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !188, line: 23, baseType: !187)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !428, file: !429, line: 60, baseType: !166, size: 128, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !367, file: !343, line: 825, baseType: !166, size: 128, offset: 1728)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !367, file: !343, line: 845, baseType: !52, size: 32, offset: 1856)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !367, file: !343, line: 849, baseType: !297, size: 64, offset: 1920)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !367, file: !343, line: 850, baseType: !297, size: 64, offset: 1984)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !367, file: !343, line: 852, baseType: !297, size: 64, offset: 2048)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !367, file: !343, line: 853, baseType: !297, size: 64, offset: 2112)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !367, file: !343, line: 854, baseType: !419, size: 64, offset: 2176)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !367, file: !343, line: 855, baseType: !297, size: 64, offset: 2240)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !367, file: !343, line: 856, baseType: !297, size: 64, offset: 2304)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !367, file: !343, line: 857, baseType: !297, size: 64, offset: 2368)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !367, file: !343, line: 858, baseType: !297, size: 64, offset: 2432)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !367, file: !343, line: 865, baseType: !453, size: 32, offset: 2496)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !454, line: 69, baseType: !455)
!454 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !454, line: 64, size: 32, elements: !456)
!456 = !{!457}
!457 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !455, file: !454, line: 65, baseType: !13, size: 32)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !367, file: !343, line: 867, baseType: !179, size: 32, offset: 2528)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !367, file: !343, line: 869, baseType: !297, size: 64, offset: 2560)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !367, file: !343, line: 869, baseType: !297, size: 64, offset: 2624)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !367, file: !343, line: 869, baseType: !297, size: 64, offset: 2688)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !367, file: !343, line: 869, baseType: !297, size: 64, offset: 2752)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !367, file: !343, line: 870, baseType: !297, size: 64, offset: 2816)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !367, file: !343, line: 870, baseType: !297, size: 64, offset: 2880)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !367, file: !343, line: 870, baseType: !297, size: 64, offset: 2944)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !367, file: !343, line: 871, baseType: !297, size: 64, offset: 3008)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !367, file: !343, line: 871, baseType: !297, size: 64, offset: 3072)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !367, file: !343, line: 871, baseType: !297, size: 64, offset: 3136)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !367, file: !343, line: 871, baseType: !297, size: 64, offset: 3200)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !367, file: !343, line: 873, baseType: !471, size: 3328, offset: 3264)
!471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 3328, elements: !472)
!472 = !{!473}
!473 = !DISubrange(count: 52)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !367, file: !343, line: 875, baseType: !475, size: 1280, offset: 6592)
!475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !476, size: 1280, elements: !486)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !477, line: 22, size: 320, elements: !478)
!477 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!478 = !{!479, !480, !481, !482}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !476, file: !477, line: 23, baseType: !439, size: 32)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !476, file: !477, line: 24, baseType: !423, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !476, file: !477, line: 26, baseType: !166, size: 128, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !476, file: !477, line: 28, baseType: !483, size: 64, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !113, line: 20, baseType: !485)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !115, line: 26, baseType: !52)
!486 = !{!487}
!487 = !DISubrange(count: 4)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !367, file: !343, line: 877, baseType: !489, size: 64, offset: 7872)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !343, line: 877, flags: DIFlagFwdDecl)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !367, file: !343, line: 880, baseType: !492, size: 1088, offset: 7936)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !493, line: 72, baseType: !494)
!493 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !493, line: 23, size: 1088, elements: !495)
!495 = !{!496, !497, !498, !499, !500, !503, !504, !512, !513, !538, !539, !540}
!496 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !494, file: !493, line: 28, baseType: !411, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !494, file: !493, line: 38, baseType: !419, size: 64, offset: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !494, file: !493, line: 40, baseType: !297, size: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !494, file: !493, line: 43, baseType: !428, size: 320, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !494, file: !493, line: 44, baseType: !501, size: 64, offset: 512)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !493, line: 44, flags: DIFlagFwdDecl)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !494, file: !493, line: 48, baseType: !297, size: 64, offset: 576)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !494, file: !493, line: 59, baseType: !505, size: 256, offset: 640)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !506, line: 66, size: 256, elements: !507)
!506 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!507 = !{!508, !509, !510, !511}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !505, file: !506, line: 67, baseType: !417, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !505, file: !506, line: 68, baseType: !439, size: 32, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !505, file: !506, line: 70, baseType: !434, size: 32, offset: 96)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !505, file: !506, line: 72, baseType: !166, size: 128, offset: 128)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !494, file: !493, line: 60, baseType: !106, size: 64, offset: 896)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !494, file: !493, line: 61, baseType: !514, size: 64, offset: 960)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !516)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !517, line: 13, size: 1216, elements: !518)
!517 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!518 = !{!519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !516, file: !517, line: 14, baseType: !106, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !516, file: !517, line: 15, baseType: !297, size: 64, offset: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !516, file: !517, line: 17, baseType: !297, size: 64, offset: 128)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !516, file: !517, line: 17, baseType: !297, size: 64, offset: 192)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !516, file: !517, line: 18, baseType: !297, size: 64, offset: 256)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !516, file: !517, line: 18, baseType: !297, size: 64, offset: 320)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !516, file: !517, line: 19, baseType: !152, size: 64, offset: 384)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !516, file: !517, line: 21, baseType: !283, size: 64, offset: 448)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !516, file: !517, line: 23, baseType: !283, size: 64, offset: 512)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !516, file: !517, line: 24, baseType: !283, size: 64, offset: 576)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !516, file: !517, line: 25, baseType: !283, size: 64, offset: 640)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !516, file: !517, line: 26, baseType: !283, size: 64, offset: 704)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !516, file: !517, line: 27, baseType: !283, size: 64, offset: 768)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !516, file: !517, line: 28, baseType: !283, size: 64, offset: 832)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !516, file: !517, line: 29, baseType: !283, size: 64, offset: 896)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !516, file: !517, line: 30, baseType: !283, size: 64, offset: 960)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !516, file: !517, line: 31, baseType: !283, size: 64, offset: 1024)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !516, file: !517, line: 32, baseType: !283, size: 64, offset: 1088)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !516, file: !517, line: 33, baseType: !283, size: 64, offset: 1152)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !494, file: !493, line: 63, baseType: !199, size: 32, offset: 1024)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !494, file: !493, line: 69, baseType: !215, size: 16, offset: 1056)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !494, file: !493, line: 70, baseType: !541, size: 16, offset: 1072)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !113, line: 18, baseType: !542)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !115, line: 23, baseType: !543)
!543 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !367, file: !343, line: 882, baseType: !297, size: 64, offset: 9024)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !367, file: !343, line: 885, baseType: !179, size: 32, offset: 9088)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !367, file: !343, line: 886, baseType: !547, size: 64, offset: 9152)
!547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !548, size: 64)
!548 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !343, line: 732, flags: DIFlagFwdDecl)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !367, file: !343, line: 901, baseType: !550, size: 64, offset: 9216)
!550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !551, size: 64)
!551 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !343, line: 901, flags: DIFlagFwdDecl)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !367, file: !343, line: 904, baseType: !330, size: 64, offset: 9280)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !367, file: !343, line: 906, baseType: !554, size: 64, offset: 9344)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !343, line: 906, flags: DIFlagFwdDecl)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !367, file: !343, line: 930, baseType: !199, size: 32, offset: 9408)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !367, file: !343, line: 933, baseType: !199, size: 32, offset: 9440)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !367, file: !343, line: 935, baseType: !559, size: 64, offset: 9472)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !560, line: 103, size: 64, elements: !561)
!560 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!561 = !{!562}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !559, file: !560, line: 104, baseType: !563, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !564, size: 64)
!564 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !560, line: 101, flags: DIFlagFwdDecl)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !367, file: !343, line: 940, baseType: !417, size: 64, offset: 9536)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !367, file: !343, line: 942, baseType: !567, size: 256, offset: 9600)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !568, line: 98, size: 256, elements: !569)
!568 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!569 = !{!570, !571, !572}
!570 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !567, file: !568, line: 99, baseType: !417, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !567, file: !568, line: 100, baseType: !166, size: 128, offset: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !567, file: !568, line: 101, baseType: !573, size: 64, offset: 192)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !568, line: 21, baseType: !574)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!575 = !DISubroutineType(types: !576)
!576 = !{null, !577}
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !364, file: !343, line: 986, baseType: !579, offset: 10240)
!579 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, elements: !580)
!580 = !{!581}
!581 = !DISubrange(count: -1)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !342, file: !343, line: 640, baseType: !583, size: 64, offset: 192)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !332, line: 297, baseType: !584)
!584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !332, line: 297, size: 64, elements: !585)
!585 = !{!586}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !584, file: !332, line: 297, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !403, line: 19, baseType: !297)
!588 = !DIDerivedType(tag: DW_TAG_member, scope: !342, file: !343, line: 646, baseType: !589, size: 64, offset: 256)
!589 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !342, file: !343, line: 646, size: 64, elements: !590)
!590 = !{!591, !594}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !589, file: !343, line: 647, baseType: !592, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !593)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !343, line: 542, baseType: !297)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !589, file: !343, line: 648, baseType: !593, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !342, file: !343, line: 666, baseType: !52, size: 32, offset: 320)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !342, file: !343, line: 667, baseType: !597, size: 64, offset: 384)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !343, line: 579, size: 320, elements: !599)
!599 = !{!600}
!600 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !598, file: !343, line: 580, baseType: !428, size: 320)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !342, file: !343, line: 670, baseType: !143, size: 8, offset: 448)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !342, file: !343, line: 681, baseType: !603, size: 256, offset: 512)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !342, file: !343, line: 678, size: 256, elements: !604)
!604 = !{!605, !613}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !603, file: !343, line: 679, baseType: !606, size: 192, align: 64)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !607, line: 5, size: 192, align: 64, elements: !608)
!607 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!608 = !{!609, !610, !612}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !606, file: !607, line: 6, baseType: !297, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !606, file: !607, line: 7, baseType: !611, size: 64, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !606, file: !607, line: 8, baseType: !611, size: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !603, file: !343, line: 680, baseType: !297, size: 64, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !342, file: !343, line: 689, baseType: !166, size: 128, offset: 768)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !342, file: !343, line: 691, baseType: !616, size: 64, offset: 896)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !343, line: 691, flags: DIFlagFwdDecl)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !342, file: !343, line: 694, baseType: !619, size: 64, offset: 960)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !621)
!621 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !343, line: 694, flags: DIFlagFwdDecl)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !342, file: !343, line: 697, baseType: !297, size: 64, offset: 1024)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !342, file: !343, line: 699, baseType: !330, size: 64, offset: 1088)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !342, file: !343, line: 700, baseType: !106, size: 64, offset: 1152)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !342, file: !343, line: 711, baseType: !417, size: 64, offset: 1216)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !342, file: !343, line: 717, baseType: !627, size: 64, offset: 1280)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !343, line: 717, flags: DIFlagFwdDecl)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !342, file: !343, line: 722, baseType: !630, offset: 1344)
!630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !343, line: 570, elements: !384)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !302, file: !273, line: 90, baseType: !632, size: 64, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !302, file: !273, line: 91, baseType: !634, size: 64, offset: 256)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !263, file: !160, line: 120, baseType: !636, size: 64, offset: 192)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DISubroutineType(types: !638)
!638 = !{!639, !230}
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !641)
!641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !12, line: 39, size: 384, elements: !642)
!642 = !{!643, !644, !648, !652, !658, !662}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !641, file: !12, line: 40, baseType: !11, size: 32)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !641, file: !12, line: 41, baseType: !645, size: 64, offset: 64)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DISubroutineType(types: !647)
!647 = !{!143}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !641, file: !12, line: 42, baseType: !649, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!106}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !641, file: !12, line: 43, baseType: !653, size: 64, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DISubroutineType(types: !655)
!655 = !{!152, !656}
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !12, line: 19, flags: DIFlagFwdDecl)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !641, file: !12, line: 44, baseType: !659, size: 64, offset: 256)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DISubroutineType(types: !661)
!661 = !{!152}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !641, file: !12, line: 45, baseType: !663, size: 64, offset: 320)
!663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !664, size: 64)
!664 = !DISubroutineType(types: !665)
!665 = !{null, !106}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !263, file: !160, line: 121, baseType: !667, size: 64, offset: 256)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DISubroutineType(types: !669)
!669 = !{!152, !230}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !263, file: !160, line: 122, baseType: !671, size: 64, offset: 320)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{null, !230, !674, !682}
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !676, line: 23, baseType: !677)
!676 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !676, line: 21, size: 32, elements: !678)
!678 = !{!679}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !677, file: !676, line: 22, baseType: !680, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !144, line: 37, baseType: !681)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !281, line: 49, baseType: !13)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !676, line: 28, baseType: !684)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !676, line: 26, size: 32, elements: !685)
!685 = !{!686}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !684, file: !676, line: 27, baseType: !687, size: 32)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !144, line: 38, baseType: !688)
!688 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !281, line: 50, baseType: !13)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !159, file: !160, line: 70, baseType: !690, size: 64, offset: 384)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !692, line: 190, size: 1152, elements: !693)
!692 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!693 = !{!694, !695, !696, !697, !698, !699, !700, !701, !796, !797, !798, !799, !800, !803}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !691, file: !692, line: 191, baseType: !199, size: 32)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !691, file: !692, line: 192, baseType: !199, size: 32, offset: 32)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !691, file: !692, line: 202, baseType: !690, size: 64, offset: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !691, file: !692, line: 203, baseType: !163, size: 64, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !691, file: !692, line: 205, baseType: !606, size: 192, align: 64, offset: 192)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !691, file: !692, line: 207, baseType: !152, size: 64, offset: 384)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !691, file: !692, line: 208, baseType: !13, size: 32, offset: 448)
!701 = !DIDerivedType(tag: DW_TAG_member, scope: !691, file: !692, line: 209, baseType: !702, size: 256, offset: 512)
!702 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !691, file: !692, line: 209, size: 256, elements: !703)
!703 = !{!704, !716, !720}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !702, file: !692, line: 210, baseType: !705, size: 256)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !692, line: 153, size: 256, elements: !706)
!706 = !{!707, !708, !712, !715}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !705, file: !692, line: 154, baseType: !297, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !705, file: !692, line: 156, baseType: !709, size: 64, offset: 64)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !607, line: 12, size: 64, elements: !710)
!710 = !{!711}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !709, file: !607, line: 13, baseType: !611, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !705, file: !692, line: 162, baseType: !713, size: 64, offset: 128)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !692, line: 162, flags: DIFlagFwdDecl)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !705, file: !692, line: 167, baseType: !297, size: 64, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !702, file: !692, line: 211, baseType: !717, size: 64)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !692, line: 170, size: 64, elements: !718)
!718 = !{!719}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !717, file: !692, line: 171, baseType: !690, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !702, file: !692, line: 212, baseType: !721, size: 256)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !692, line: 174, size: 256, elements: !722)
!722 = !{!723, !791, !794, !795}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !721, file: !692, line: 175, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !726)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !692, line: 271, size: 768, elements: !727)
!727 = !{!728, !751, !755, !759, !764, !768, !772, !776, !777, !778, !779, !787}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !726, file: !692, line: 276, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!52, !732}
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !692, line: 251, size: 1216, elements: !734)
!734 = !{!735, !736, !737, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !733, file: !692, line: 253, baseType: !690, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !733, file: !692, line: 254, baseType: !330, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !733, file: !692, line: 255, baseType: !738, size: 64, offset: 128)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !740, line: 66, flags: DIFlagFwdDecl)
!740 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!741 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !733, file: !692, line: 256, baseType: !106, size: 64, offset: 192)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !733, file: !692, line: 259, baseType: !505, size: 256, offset: 256)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !733, file: !692, line: 260, baseType: !505, size: 256, offset: 512)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !733, file: !692, line: 261, baseType: !52, size: 32, offset: 768)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !733, file: !692, line: 262, baseType: !166, size: 128, offset: 832)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !733, file: !692, line: 263, baseType: !247, size: 64, offset: 960)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !733, file: !692, line: 265, baseType: !294, size: 64, offset: 1024)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !733, file: !692, line: 266, baseType: !143, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !733, file: !692, line: 267, baseType: !143, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !733, file: !692, line: 268, baseType: !619, size: 64, offset: 1152)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !726, file: !692, line: 277, baseType: !752, size: 64, offset: 64)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{null, !732}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !726, file: !692, line: 290, baseType: !756, size: 64, offset: 128)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!52, !738, !106}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !726, file: !692, line: 292, baseType: !760, size: 64, offset: 192)
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !761, size: 64)
!761 = !DISubroutineType(types: !762)
!762 = !{!106, !738, !763}
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !726, file: !692, line: 293, baseType: !765, size: 64, offset: 256)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!106, !738, !106, !763}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !726, file: !692, line: 294, baseType: !769, size: 64, offset: 320)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{null, !738, !106}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !726, file: !692, line: 296, baseType: !773, size: 64, offset: 384)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!279, !732, !247, !294, !333}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !726, file: !692, line: 306, baseType: !294, size: 64, offset: 448)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !726, file: !692, line: 313, baseType: !143, size: 8, offset: 512)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !726, file: !692, line: 314, baseType: !773, size: 64, offset: 576)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !726, file: !692, line: 317, baseType: !780, size: 64, offset: 640)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DISubroutineType(types: !782)
!782 = !{!783, !732, !785}
!783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !784, line: 59, baseType: !13)
!784 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !692, line: 31, flags: DIFlagFwdDecl)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !726, file: !692, line: 320, baseType: !788, size: 64, offset: 704)
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DISubroutineType(types: !790)
!790 = !{!52, !732, !341}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !721, file: !692, line: 176, baseType: !792, size: 64, offset: 64)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !692, line: 35, flags: DIFlagFwdDecl)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !721, file: !692, line: 177, baseType: !333, size: 64, offset: 128)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !721, file: !692, line: 178, baseType: !690, size: 64, offset: 192)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !691, file: !692, line: 215, baseType: !106, size: 64, offset: 768)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !691, file: !692, line: 221, baseType: !411, size: 64, offset: 832)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !691, file: !692, line: 223, baseType: !217, size: 16, offset: 896)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !691, file: !692, line: 224, baseType: !289, size: 16, offset: 912)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !691, file: !692, line: 225, baseType: !801, size: 64, offset: 960)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !692, line: 36, flags: DIFlagFwdDecl)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !691, file: !692, line: 227, baseType: !354, size: 128, align: 64, offset: 1024)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !159, file: !160, line: 71, baseType: !805, size: 32, offset: 448)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !806, line: 19, size: 32, elements: !807)
!806 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!807 = !{!808}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !805, file: !806, line: 20, baseType: !809, size: 32)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !810, line: 113, baseType: !811)
!810 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !810, line: 111, size: 32, elements: !812)
!812 = !{!813}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !811, file: !810, line: 112, baseType: !199, size: 32)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !159, file: !160, line: 73, baseType: !13, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !159, file: !160, line: 74, baseType: !13, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !159, file: !160, line: 75, baseType: !13, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !159, file: !160, line: 76, baseType: !13, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !159, file: !160, line: 77, baseType: !13, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !156, file: !32, line: 707, baseType: !820, size: 64, offset: 512)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !156, file: !32, line: 709, baseType: !822, size: 64, offset: 576)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !32, line: 37, flags: DIFlagFwdDecl)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !156, file: !32, line: 711, baseType: !163, size: 64, offset: 640)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !156, file: !32, line: 712, baseType: !826, size: 64, offset: 704)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !828)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !32, line: 89, size: 384, elements: !829)
!829 = !{!830, !831, !832, !836, !841, !845}
!830 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !828, file: !32, line: 90, baseType: !163, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !828, file: !32, line: 91, baseType: !299, size: 64, offset: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !828, file: !32, line: 92, baseType: !833, size: 64, offset: 128)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DISubroutineType(types: !835)
!835 = !{!52, !154, !242}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !828, file: !32, line: 93, baseType: !837, size: 64, offset: 192)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DISubroutineType(types: !839)
!839 = !{!247, !154, !840, !674, !682}
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !828, file: !32, line: 95, baseType: !842, size: 64, offset: 256)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{null, !820}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !828, file: !32, line: 97, baseType: !846, size: 64, offset: 320)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !848)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !44, line: 286, size: 1472, elements: !849)
!849 = !{!850, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !848, file: !44, line: 287, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DISubroutineType(types: !853)
!853 = !{!52, !820}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !848, file: !44, line: 288, baseType: !842, size: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !848, file: !44, line: 289, baseType: !851, size: 64, offset: 128)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !848, file: !44, line: 290, baseType: !851, size: 64, offset: 192)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !848, file: !44, line: 291, baseType: !851, size: 64, offset: 256)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !848, file: !44, line: 292, baseType: !851, size: 64, offset: 320)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !848, file: !44, line: 293, baseType: !851, size: 64, offset: 384)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !848, file: !44, line: 294, baseType: !851, size: 64, offset: 448)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !848, file: !44, line: 295, baseType: !851, size: 64, offset: 512)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !848, file: !44, line: 296, baseType: !851, size: 64, offset: 576)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !848, file: !44, line: 297, baseType: !851, size: 64, offset: 640)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !848, file: !44, line: 298, baseType: !851, size: 64, offset: 704)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !848, file: !44, line: 299, baseType: !851, size: 64, offset: 768)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !848, file: !44, line: 300, baseType: !851, size: 64, offset: 832)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !848, file: !44, line: 301, baseType: !851, size: 64, offset: 896)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !848, file: !44, line: 302, baseType: !851, size: 64, offset: 960)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !848, file: !44, line: 303, baseType: !851, size: 64, offset: 1024)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !848, file: !44, line: 304, baseType: !851, size: 64, offset: 1088)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !848, file: !44, line: 305, baseType: !851, size: 64, offset: 1152)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !848, file: !44, line: 306, baseType: !851, size: 64, offset: 1216)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !848, file: !44, line: 307, baseType: !851, size: 64, offset: 1280)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !848, file: !44, line: 308, baseType: !851, size: 64, offset: 1344)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !848, file: !44, line: 309, baseType: !851, size: 64, offset: 1408)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !156, file: !32, line: 714, baseType: !877, size: 64, offset: 768)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !879)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !880, line: 80, size: 1344, elements: !881)
!880 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!881 = !{!882, !883, !884, !885, !886, !887, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1341}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !879, file: !880, line: 81, baseType: !163, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !879, file: !880, line: 82, baseType: !163, size: 64, offset: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !879, file: !880, line: 83, baseType: !299, size: 64, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !879, file: !880, line: 84, baseType: !299, size: 64, offset: 192)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !879, file: !880, line: 85, baseType: !299, size: 64, offset: 256)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !879, file: !880, line: 87, baseType: !888, size: 64, offset: 320)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DISubroutineType(types: !890)
!890 = !{!52, !820, !891}
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !26, line: 96, size: 1152, elements: !893)
!893 = !{!894, !895, !896, !1272, !1273, !1274, !1275, !1291, !1304, !1305, !1306, !1307, !1308, !1316, !1317, !1318, !1319, !1320, !1321}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !892, file: !26, line: 97, baseType: !163, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !892, file: !26, line: 98, baseType: !877, size: 64, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !892, file: !26, line: 100, baseType: !897, size: 64, offset: 128)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !19, line: 402, size: 9216, align: 512, elements: !899)
!899 = !{!900, !901, !902, !906, !927, !953, !954, !955, !956, !960, !963, !964, !965, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1025, !1028, !1032, !1052, !1070, !1071, !1072, !1073, !1082, !1105, !1106, !1109, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1123, !1124, !1230, !1238, !1239, !1240, !1242, !1246, !1247, !1251, !1252, !1253, !1254, !1256, !1257, !1258, !1265, !1266, !1267, !1271}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !898, file: !19, line: 403, baseType: !18, size: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !898, file: !19, line: 406, baseType: !166, size: 128, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !898, file: !19, line: 409, baseType: !903, size: 448, offset: 192)
!903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !904)
!904 = !{!905}
!905 = !DISubrange(count: 56)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !898, file: !19, line: 417, baseType: !907, size: 768, offset: 640)
!907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !19, line: 45, size: 768, elements: !908)
!908 = !{!909, !910, !911, !912, !915}
!909 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !907, file: !19, line: 46, baseType: !159, size: 512)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !907, file: !19, line: 47, baseType: !897, size: 64, offset: 512)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !907, file: !19, line: 48, baseType: !172, size: 64, offset: 576)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !907, file: !19, line: 49, baseType: !913, size: 64, offset: 640)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !19, line: 49, flags: DIFlagFwdDecl)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !907, file: !19, line: 50, baseType: !916, size: 64, offset: 704)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !917, size: 64)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !918, line: 26, size: 256, elements: !919)
!918 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!919 = !{!920, !921}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !917, file: !918, line: 27, baseType: !13, size: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !917, file: !918, line: 28, baseType: !922, size: 192, offset: 64)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !923, line: 43, size: 192, elements: !924)
!923 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!924 = !{!925, !926}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !922, file: !923, line: 44, baseType: !439, size: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !922, file: !923, line: 45, baseType: !166, size: 128, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !898, file: !19, line: 418, baseType: !928, size: 64, offset: 1408)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !19, line: 53, size: 448, elements: !930)
!930 = !{!931, !932, !937, !941, !945, !949}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !929, file: !19, line: 54, baseType: !285, size: 128)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !929, file: !19, line: 55, baseType: !933, size: 64, offset: 128)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DISubroutineType(types: !935)
!935 = !{!279, !928, !936, !247}
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !929, file: !19, line: 57, baseType: !938, size: 64, offset: 192)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!279, !928, !936, !163, !294}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !929, file: !19, line: 59, baseType: !942, size: 64, offset: 256)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DISubroutineType(types: !944)
!944 = !{null, !897, !163}
!945 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !929, file: !19, line: 60, baseType: !946, size: 64, offset: 320)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DISubroutineType(types: !948)
!948 = !{!52, !897}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !929, file: !19, line: 61, baseType: !950, size: 64, offset: 384)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DISubroutineType(types: !952)
!952 = !{null, !897}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !898, file: !19, line: 419, baseType: !163, size: 64, offset: 1472)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !898, file: !19, line: 420, baseType: !163, size: 64, offset: 1536)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !898, file: !19, line: 421, baseType: !172, size: 64, offset: 1600)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !898, file: !19, line: 424, baseType: !957, size: 64, offset: 1664)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !959)
!959 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !19, line: 424, flags: DIFlagFwdDecl)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !898, file: !19, line: 425, baseType: !961, size: 64, offset: 1728)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !484)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !898, file: !19, line: 426, baseType: !13, size: 32, offset: 1792)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !898, file: !19, line: 435, baseType: !505, size: 256, offset: 1856)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !898, file: !19, line: 437, baseType: !966, size: 64, offset: 2112)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !968, line: 69, size: 320, elements: !969)
!968 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!969 = !{!970, !971, !972, !989, !991, !995, !996}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !967, file: !968, line: 70, baseType: !163, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !967, file: !968, line: 71, baseType: !897, size: 64, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !967, file: !968, line: 72, baseType: !973, size: 64, offset: 128)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !975)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !968, line: 47, size: 256, elements: !976)
!976 = !{!977, !978, !984, !988}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !975, file: !968, line: 49, baseType: !13, size: 32)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !975, file: !968, line: 51, baseType: !979, size: 64, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DISubroutineType(types: !981)
!981 = !{!52, !163, !982}
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !967)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !975, file: !968, line: 53, baseType: !985, size: 64, offset: 128)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DISubroutineType(types: !987)
!987 = !{!52, !247, !982}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !975, file: !968, line: 55, baseType: !663, size: 64, offset: 192)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !967, file: !968, line: 73, baseType: !990, size: 16, offset: 192)
!990 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !967, file: !968, line: 74, baseType: !992, size: 8, offset: 208)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !113, line: 16, baseType: !993)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !115, line: 20, baseType: !994)
!994 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !967, file: !968, line: 75, baseType: !207, size: 8, offset: 216)
!996 = !DIDerivedType(tag: DW_TAG_member, scope: !967, file: !968, line: 76, baseType: !997, size: 64, offset: 256)
!997 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !967, file: !968, line: 76, size: 64, elements: !998)
!998 = !{!999, !1000, !1007}
!999 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !997, file: !968, line: 77, baseType: !106, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !997, file: !968, line: 78, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1002, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1003)
!1003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !968, line: 86, size: 128, elements: !1004)
!1004 = !{!1005, !1006}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1003, file: !968, line: 87, baseType: !13, size: 32)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1003, file: !968, line: 88, baseType: !247, size: 64, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !997, file: !968, line: 79, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1010)
!1010 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !968, line: 92, size: 256, elements: !1011)
!1011 = !{!1012, !1013, !1014, !1016, !1017}
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1010, file: !968, line: 94, baseType: !13, size: 32)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1010, file: !968, line: 95, baseType: !13, size: 32, offset: 32)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1010, file: !968, line: 96, baseType: !1015, size: 64, offset: 64)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !13, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1010, file: !968, line: 97, baseType: !973, size: 64, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1010, file: !968, line: 98, baseType: !106, size: 64, offset: 192)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !898, file: !19, line: 438, baseType: !13, size: 32, offset: 2176)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !898, file: !19, line: 441, baseType: !13, size: 32, offset: 2208)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !898, file: !19, line: 442, baseType: !957, size: 64, offset: 2240)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !898, file: !19, line: 443, baseType: !961, size: 64, offset: 2304)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !898, file: !19, line: 444, baseType: !143, size: 8, offset: 2368)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !898, file: !19, line: 451, baseType: !143, size: 8, offset: 2376)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !898, file: !19, line: 454, baseType: !13, size: 32, offset: 2400)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !898, file: !19, line: 455, baseType: !1026, size: 64, offset: 2432)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !19, line: 43, flags: DIFlagFwdDecl)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !898, file: !19, line: 458, baseType: !1029, size: 64, offset: 2496)
!1029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1030, size: 64)
!1030 = !DISubroutineType(types: !1031)
!1031 = !{!52}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !898, file: !19, line: 460, baseType: !1033, size: 4032, align: 512, offset: 2560)
!1033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1034, size: 4032, elements: !1050)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !19, line: 362, size: 576, elements: !1035)
!1035 = !{!1036, !1037, !1038}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1034, file: !19, line: 363, baseType: !106, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1034, file: !19, line: 364, baseType: !13, size: 32, offset: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1034, file: !19, line: 367, baseType: !1039, size: 448, offset: 128)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !19, line: 319, size: 448, elements: !1040)
!1040 = !{!1041, !1042}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1039, file: !19, line: 320, baseType: !897, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1039, file: !19, line: 321, baseType: !1043, size: 384, offset: 64)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1044, line: 40, size: 384, elements: !1045)
!1044 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1045 = !{!1046}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1043, file: !1044, line: 41, baseType: !1047, size: 384, align: 64)
!1047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !606, size: 384, align: 64, elements: !1048)
!1048 = !{!1049}
!1049 = !DISubrange(count: 2)
!1050 = !{!1051}
!1051 = !DISubrange(count: 7)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !898, file: !19, line: 463, baseType: !1053, size: 192, offset: 6592)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1054, line: 8, size: 192, elements: !1055)
!1054 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1055 = !{!1056, !1057, !1059}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1053, file: !1054, line: 10, baseType: !13, size: 32)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1053, file: !1054, line: 11, baseType: !1058, size: 64, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !52, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1053, file: !1054, line: 12, baseType: !1060, size: 64, offset: 128)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1062, line: 59, size: 48, elements: !1063)
!1062 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1063 = !{!1064, !1065, !1066, !1067, !1068, !1069}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1061, file: !1062, line: 60, baseType: !541, size: 16)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1061, file: !1062, line: 61, baseType: !541, size: 16, offset: 16)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1061, file: !1062, line: 63, baseType: !13, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1061, file: !1062, line: 64, baseType: !13, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1061, file: !1062, line: 65, baseType: !13, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1061, file: !1062, line: 66, baseType: !13, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !898, file: !19, line: 465, baseType: !297, size: 64, offset: 6784)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !898, file: !19, line: 469, baseType: !13, size: 32, offset: 6848)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !898, file: !19, line: 470, baseType: !166, size: 128, offset: 6912)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !898, file: !19, line: 471, baseType: !1074, size: 64, offset: 7040)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1076, line: 33, size: 96, elements: !1077)
!1076 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1077 = !{!1078, !1079, !1080, !1081}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1075, file: !1076, line: 37, baseType: !52, size: 32)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1075, file: !1076, line: 43, baseType: !52, size: 32, offset: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1075, file: !1076, line: 45, baseType: !217, size: 16, offset: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1075, file: !1076, line: 47, baseType: !217, size: 16, offset: 80)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !898, file: !19, line: 476, baseType: !1083, size: 64, offset: 7104)
!1083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1084, size: 64)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !19, line: 378, size: 256, elements: !1085)
!1085 = !{!1086, !1102, !1103, !1104}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1084, file: !19, line: 379, baseType: !1087, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1089, line: 204, baseType: !1090)
!1089 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1089, line: 197, size: 192, elements: !1091)
!1091 = !{!1092, !1094, !1095, !1096, !1098, !1100}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1090, file: !1089, line: 198, baseType: !1093, size: 32)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1089, line: 21, baseType: !114)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1090, file: !1089, line: 199, baseType: !209, size: 8, offset: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1090, file: !1089, line: 200, baseType: !209, size: 8, offset: 40)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1090, file: !1089, line: 201, baseType: !1097, size: 16, offset: 48)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1089, line: 17, baseType: !216)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1090, file: !1089, line: 202, baseType: !1099, size: 64, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1089, line: 16, baseType: !412)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1090, file: !1089, line: 203, baseType: !1101, size: 64, offset: 128)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1089, line: 22, baseType: !412)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1084, file: !19, line: 380, baseType: !13, size: 32, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1084, file: !19, line: 381, baseType: !247, size: 64, offset: 128)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1084, file: !19, line: 382, baseType: !247, size: 64, offset: 192)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !898, file: !19, line: 477, baseType: !1084, size: 256, offset: 7168)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !898, file: !19, line: 480, baseType: !1107, size: 64, offset: 7424)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !19, line: 480, flags: DIFlagFwdDecl)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !898, file: !19, line: 483, baseType: !1110, size: 64, offset: 7488)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !19, line: 483, flags: DIFlagFwdDecl)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !898, file: !19, line: 488, baseType: !247, size: 64, offset: 7552)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !898, file: !19, line: 492, baseType: !106, size: 64, offset: 7616)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !898, file: !19, line: 493, baseType: !13, size: 32, offset: 7680)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !898, file: !19, line: 495, baseType: !106, size: 64, offset: 7744)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !898, file: !19, line: 496, baseType: !13, size: 32, offset: 7808)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !898, file: !19, line: 499, baseType: !13, size: 32, offset: 7840)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !898, file: !19, line: 500, baseType: !1119, size: 64, offset: 7872)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1121, line: 45, baseType: !1122)
!1121 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !52)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !898, file: !19, line: 503, baseType: !13, size: 32, offset: 7936)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !898, file: !19, line: 504, baseType: !1125, size: 64, offset: 8000)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1128, line: 96, size: 192, elements: !1129)
!1128 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1129 = !{!1130, !1131, !1191, !1194}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1127, file: !1128, line: 97, baseType: !13, size: 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1127, file: !1128, line: 98, baseType: !1132, size: 64, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1128, line: 24, size: 3072, elements: !1134)
!1134 = !{!1135, !1137, !1138, !1139, !1140, !1154, !1155, !1156, !1157, !1175, !1176, !1177, !1188, !1189, !1190}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1133, file: !1128, line: 26, baseType: !1136, size: 128)
!1136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 128, elements: !1048)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1133, file: !1128, line: 27, baseType: !1136, size: 128, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1133, file: !1128, line: 28, baseType: !52, size: 32, offset: 256)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1133, file: !1128, line: 31, baseType: !179, size: 32, align: 512, offset: 512)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1133, file: !1128, line: 32, baseType: !1141, size: 960, offset: 576)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1142, line: 206, size: 960, elements: !1143)
!1142 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1143 = !{!1144, !1145, !1148, !1150, !1151, !1153}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1141, file: !1142, line: 207, baseType: !357, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1141, file: !1142, line: 208, baseType: !1146, size: 256, offset: 64)
!1146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1147, size: 256, elements: !486)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1141, file: !1142, line: 209, baseType: !1149, size: 256, offset: 320)
!1149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 256, elements: !486)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1141, file: !1142, line: 213, baseType: !283, size: 64, offset: 576)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1141, file: !1142, line: 215, baseType: !1152, size: 256, offset: 640)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 256, elements: !486)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1141, file: !1142, line: 216, baseType: !207, size: 8, offset: 896)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1133, file: !1128, line: 33, baseType: !297, size: 64, offset: 1536)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1133, file: !1128, line: 34, baseType: !297, size: 64, offset: 1600)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1133, file: !1128, line: 35, baseType: !143, size: 8, offset: 1664)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1133, file: !1128, line: 36, baseType: !1158, size: 320, offset: 1728)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1159, line: 11, size: 320, elements: !1160)
!1159 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1160 = !{!1161, !1168, !1169, !1174}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1158, file: !1159, line: 16, baseType: !1162, size: 128)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !144, line: 198, size: 128, elements: !1163)
!1163 = !{!1164, !1166}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1162, file: !144, line: 199, baseType: !1165, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1162, file: !144, line: 199, baseType: !1167, size: 64, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1158, file: !1159, line: 17, baseType: !297, size: 64, offset: 128)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1158, file: !1159, line: 18, baseType: !1170, size: 64, offset: 192)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{null, !1173}
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1158, file: !1159, line: 19, baseType: !112, size: 32, offset: 256)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1133, file: !1128, line: 37, baseType: !567, size: 256, offset: 2048)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1133, file: !1128, line: 38, baseType: !354, size: 128, align: 64, offset: 2304)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1133, file: !1128, line: 39, baseType: !1178, size: 64, offset: 2432)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1128, line: 49, size: 768, elements: !1180)
!1180 = !{!1181, !1182, !1183, !1184, !1185, !1186, !1187}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1179, file: !1128, line: 50, baseType: !179, size: 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1179, file: !1128, line: 51, baseType: !1149, size: 256, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1179, file: !1128, line: 53, baseType: !1149, size: 256, offset: 320)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1179, file: !1128, line: 54, baseType: !297, size: 64, offset: 576)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1179, file: !1128, line: 55, baseType: !1178, size: 64, offset: 640)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1179, file: !1128, line: 56, baseType: !52, size: 32, offset: 704)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1179, file: !1128, line: 57, baseType: !52, size: 32, offset: 736)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1133, file: !1128, line: 40, baseType: !297, size: 64, offset: 2496)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1133, file: !1128, line: 42, baseType: !52, size: 32, offset: 2560)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1133, file: !1128, line: 43, baseType: !1126, size: 64, offset: 2624)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1127, file: !1128, line: 99, baseType: !1192, offset: 128)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1193, line: 211, elements: !384)
!1193 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1127, file: !1128, line: 100, baseType: !1195, size: 64, offset: 128)
!1195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1128, line: 63, size: 3008, elements: !1197)
!1197 = !{!1198, !1199, !1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1229}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1196, file: !1128, line: 64, baseType: !1178, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1196, file: !1128, line: 65, baseType: !1200, size: 192, offset: 64)
!1200 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1178, size: 192, elements: !248)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1196, file: !1128, line: 67, baseType: !52, size: 32, offset: 256)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1196, file: !1128, line: 68, baseType: !505, size: 256, offset: 320)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1196, file: !1128, line: 69, baseType: !179, size: 32, offset: 576)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1196, file: !1128, line: 70, baseType: !505, size: 256, offset: 640)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1196, file: !1128, line: 71, baseType: !297, size: 64, offset: 896)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1196, file: !1128, line: 72, baseType: !297, size: 64, offset: 960)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1196, file: !1128, line: 73, baseType: !297, size: 64, offset: 1024)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1196, file: !1128, line: 74, baseType: !297, size: 64, offset: 1088)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1196, file: !1128, line: 75, baseType: !297, size: 64, offset: 1152)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1196, file: !1128, line: 76, baseType: !297, size: 64, offset: 1216)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1196, file: !1128, line: 77, baseType: !297, size: 64, offset: 1280)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1196, file: !1128, line: 78, baseType: !297, size: 64, offset: 1344)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1196, file: !1128, line: 79, baseType: !143, size: 8, offset: 1408)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1196, file: !1128, line: 80, baseType: !297, size: 64, offset: 1472)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1196, file: !1128, line: 81, baseType: !505, size: 256, offset: 1536)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1196, file: !1128, line: 82, baseType: !917, size: 256, offset: 1792)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1196, file: !1128, line: 84, baseType: !199, size: 32, offset: 2048)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1196, file: !1128, line: 87, baseType: !297, size: 64, offset: 2112)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1196, file: !1128, line: 88, baseType: !297, size: 64, offset: 2176)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1196, file: !1128, line: 89, baseType: !1221, size: 704, offset: 2240)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !568, line: 111, size: 704, elements: !1222)
!1222 = !{!1223, !1224, !1225, !1228}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1221, file: !568, line: 112, baseType: !567, size: 256)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1221, file: !568, line: 113, baseType: !1158, size: 320, offset: 256)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1221, file: !568, line: 116, baseType: !1226, size: 64, offset: 576)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !568, line: 18, flags: DIFlagFwdDecl)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1221, file: !568, line: 117, baseType: !52, size: 32, offset: 640)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1196, file: !1128, line: 90, baseType: !1126, size: 64, offset: 2944)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !898, file: !19, line: 515, baseType: !1231, size: 64, offset: 8064)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1233, line: 117, size: 128, elements: !1234)
!1233 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1234 = !{!1235, !1236, !1237}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1232, file: !1233, line: 118, baseType: !484, size: 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1232, file: !1233, line: 119, baseType: !484, size: 32, offset: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1232, file: !1233, line: 120, baseType: !283, size: 64, offset: 64)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !898, file: !19, line: 516, baseType: !13, size: 32, offset: 8128)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !898, file: !19, line: 519, baseType: !13, size: 32, offset: 8160)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !898, file: !19, line: 520, baseType: !1241, size: 64, offset: 8192)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !898, file: !19, line: 523, baseType: !1243, size: 64, offset: 8256)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !19, line: 523, flags: DIFlagFwdDecl)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !898, file: !19, line: 524, baseType: !13, size: 32, offset: 8320)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !898, file: !19, line: 525, baseType: !1248, size: 64, offset: 8384)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !19, line: 525, flags: DIFlagFwdDecl)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !898, file: !19, line: 526, baseType: !13, size: 32, offset: 8448)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !898, file: !19, line: 533, baseType: !106, size: 64, offset: 8512)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !898, file: !19, line: 534, baseType: !13, size: 32, offset: 8576)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !898, file: !19, line: 535, baseType: !1255, size: 64, offset: 8640)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !898, file: !19, line: 536, baseType: !13, size: 32, offset: 8704)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !898, file: !19, line: 539, baseType: !52, size: 32, offset: 8736)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !898, file: !19, line: 540, baseType: !1259, size: 64, offset: 8768)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1261, line: 32, size: 64, elements: !1262)
!1261 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1262 = !{!1263, !1264}
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1260, file: !1261, line: 33, baseType: !484, size: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1260, file: !1261, line: 34, baseType: !484, size: 32, offset: 32)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !898, file: !19, line: 563, baseType: !166, size: 128, offset: 8832)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !898, file: !19, line: 565, baseType: !166, size: 128, offset: 8960)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !898, file: !19, line: 568, baseType: !1268, size: 64, offset: 9088)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{null}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !898, file: !19, line: 570, baseType: !199, size: 32, offset: 9152)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !892, file: !26, line: 101, baseType: !163, size: 64, offset: 192)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !892, file: !26, line: 103, baseType: !143, size: 8, offset: 256)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !892, file: !26, line: 104, baseType: !25, size: 32, offset: 288)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !892, file: !26, line: 106, baseType: !1276, size: 64, offset: 320)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1278)
!1278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1279, line: 282, size: 1600, elements: !1280)
!1279 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1280 = !{!1281, !1285, !1286, !1290}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1278, file: !1279, line: 283, baseType: !1282, size: 256)
!1282 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !1283)
!1283 = !{!1284}
!1284 = !DISubrange(count: 32)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1278, file: !1279, line: 284, baseType: !1282, size: 256, offset: 256)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1278, file: !1279, line: 285, baseType: !1287, size: 1024, offset: 512)
!1287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !1288)
!1288 = !{!1289}
!1289 = !DISubrange(count: 128)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1278, file: !1279, line: 286, baseType: !152, size: 64, offset: 1536)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !892, file: !26, line: 107, baseType: !1292, size: 64, offset: 384)
!1292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1293, size: 64)
!1293 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1294)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1279, line: 217, size: 256, elements: !1295)
!1295 = !{!1296, !1300, !1302, !1303}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1294, file: !1279, line: 218, baseType: !1297, size: 128)
!1297 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 128, elements: !1298)
!1298 = !{!1299}
!1299 = !DISubrange(count: 16)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1294, file: !1279, line: 219, baseType: !1301, size: 64, offset: 128)
!1301 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1279, line: 15, baseType: !297)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1294, file: !1279, line: 220, baseType: !114, size: 32, offset: 192)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1294, file: !1279, line: 221, baseType: !114, size: 32, offset: 224)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !892, file: !26, line: 109, baseType: !851, size: 64, offset: 448)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !892, file: !26, line: 110, baseType: !842, size: 64, offset: 512)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !892, file: !26, line: 111, baseType: !851, size: 64, offset: 576)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !892, file: !26, line: 112, baseType: !842, size: 64, offset: 640)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !892, file: !26, line: 113, baseType: !1309, size: 64, offset: 704)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{!52, !820, !1312}
!1312 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !44, line: 60, baseType: !1313)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !44, line: 58, size: 32, elements: !1314)
!1314 = !{!1315}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1313, file: !44, line: 59, baseType: !52, size: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !892, file: !26, line: 114, baseType: !851, size: 64, offset: 768)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !892, file: !26, line: 115, baseType: !299, size: 64, offset: 832)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !892, file: !26, line: 116, baseType: !299, size: 64, offset: 896)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !892, file: !26, line: 118, baseType: !846, size: 64, offset: 960)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !892, file: !26, line: 119, baseType: !842, size: 64, offset: 1024)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !892, file: !26, line: 121, baseType: !1322, size: 64, offset: 1088)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !26, line: 121, flags: DIFlagFwdDecl)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !879, file: !880, line: 88, baseType: !833, size: 64, offset: 384)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !879, file: !880, line: 89, baseType: !851, size: 64, offset: 448)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !879, file: !880, line: 90, baseType: !842, size: 64, offset: 512)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !879, file: !880, line: 91, baseType: !842, size: 64, offset: 576)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !879, file: !880, line: 92, baseType: !842, size: 64, offset: 640)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !879, file: !880, line: 94, baseType: !851, size: 64, offset: 704)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !879, file: !880, line: 95, baseType: !851, size: 64, offset: 768)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !879, file: !880, line: 97, baseType: !1309, size: 64, offset: 832)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !879, file: !880, line: 98, baseType: !851, size: 64, offset: 896)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !879, file: !880, line: 100, baseType: !851, size: 64, offset: 960)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !879, file: !880, line: 102, baseType: !851, size: 64, offset: 1024)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !879, file: !880, line: 103, baseType: !842, size: 64, offset: 1088)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !879, file: !880, line: 105, baseType: !846, size: 64, offset: 1152)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !879, file: !880, line: 107, baseType: !1338, size: 64, offset: 1216)
!1338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1339, size: 64)
!1339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1340)
!1340 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !880, line: 107, flags: DIFlagFwdDecl)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !879, file: !880, line: 109, baseType: !143, size: 8, offset: 1280)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !156, file: !32, line: 715, baseType: !891, size: 64, offset: 832)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !156, file: !32, line: 717, baseType: !106, size: 64, offset: 896)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !156, file: !32, line: 719, baseType: !106, size: 64, offset: 960)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !156, file: !32, line: 721, baseType: !505, size: 256, offset: 1024)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !156, file: !32, line: 725, baseType: !1347, size: 448, offset: 1280)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !32, line: 517, size: 448, elements: !1348)
!1348 = !{!1349, !1350, !1351, !1352}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1347, file: !32, line: 518, baseType: !166, size: 128)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1347, file: !32, line: 519, baseType: !166, size: 128, offset: 128)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1347, file: !32, line: 520, baseType: !166, size: 128, offset: 256)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1347, file: !32, line: 521, baseType: !31, size: 32, offset: 384)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !156, file: !32, line: 726, baseType: !1354, size: 2496, offset: 1728)
!1354 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !44, line: 663, size: 2496, elements: !1355)
!1355 = !{!1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1400, !1401, !1402, !1403, !1404, !1405, !1476, !1477, !1478, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1516, !1520}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1354, file: !44, line: 664, baseType: !1312, size: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1354, file: !44, line: 665, baseType: !13, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1354, file: !44, line: 666, baseType: !13, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1354, file: !44, line: 667, baseType: !143, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1354, file: !44, line: 668, baseType: !143, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1354, file: !44, line: 669, baseType: !143, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1354, file: !44, line: 670, baseType: !143, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1354, file: !44, line: 671, baseType: !143, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1354, file: !44, line: 672, baseType: !143, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1354, file: !44, line: 673, baseType: !143, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1354, file: !44, line: 674, baseType: !143, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1354, file: !44, line: 675, baseType: !112, size: 32, offset: 64)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1354, file: !44, line: 676, baseType: !179, size: 32, offset: 96)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1354, file: !44, line: 678, baseType: !166, size: 128, offset: 128)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1354, file: !44, line: 679, baseType: !917, size: 256, offset: 256)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1354, file: !44, line: 680, baseType: !1372, size: 64, offset: 512)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1374, line: 43, size: 1536, elements: !1375)
!1374 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1375 = !{!1376, !1377, !1378, !1379, !1380, !1383, !1384, !1385, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1373, file: !1374, line: 44, baseType: !163, size: 64)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1373, file: !1374, line: 45, baseType: !52, size: 32, offset: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1373, file: !1374, line: 46, baseType: !166, size: 128, offset: 128)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1373, file: !1374, line: 47, baseType: !179, size: 32, offset: 256)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1373, file: !1374, line: 48, baseType: !1381, size: 64, offset: 320)
!1381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1382, size: 64)
!1382 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !44, line: 629, flags: DIFlagFwdDecl)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1373, file: !1374, line: 49, baseType: !1158, size: 320, offset: 384)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1373, file: !1374, line: 50, baseType: !297, size: 64, offset: 704)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1373, file: !1374, line: 51, baseType: !1386, size: 64, offset: 768)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1387, line: 29, baseType: !423)
!1387 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1373, file: !1374, line: 52, baseType: !1386, size: 64, offset: 832)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1373, file: !1374, line: 53, baseType: !1386, size: 64, offset: 896)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1373, file: !1374, line: 54, baseType: !1386, size: 64, offset: 960)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1373, file: !1374, line: 55, baseType: !1386, size: 64, offset: 1024)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1373, file: !1374, line: 56, baseType: !297, size: 64, offset: 1088)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1373, file: !1374, line: 57, baseType: !297, size: 64, offset: 1152)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1373, file: !1374, line: 58, baseType: !297, size: 64, offset: 1216)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1373, file: !1374, line: 59, baseType: !297, size: 64, offset: 1280)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1373, file: !1374, line: 60, baseType: !297, size: 64, offset: 1344)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1373, file: !1374, line: 61, baseType: !820, size: 64, offset: 1408)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1373, file: !1374, line: 62, baseType: !143, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1373, file: !1374, line: 63, baseType: !143, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1354, file: !44, line: 681, baseType: !143, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1354, file: !44, line: 682, baseType: !143, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1354, file: !44, line: 683, baseType: !143, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1354, file: !44, line: 684, baseType: !13, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1354, file: !44, line: 685, baseType: !13, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1354, file: !44, line: 690, baseType: !1406, size: 512, offset: 640)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !39, line: 118, size: 512, elements: !1407)
!1407 = !{!1408, !1414, !1415, !1420, !1472, !1473, !1474, !1475}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1406, file: !39, line: 119, baseType: !1409, size: 256)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1410, line: 9, size: 256, elements: !1411)
!1410 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1411 = !{!1412, !1413}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1409, file: !1410, line: 10, baseType: !606, size: 192, align: 64)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1409, file: !1410, line: 11, baseType: !1386, size: 64, offset: 192)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1406, file: !39, line: 120, baseType: !1386, size: 64, offset: 256)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1406, file: !39, line: 121, baseType: !1416, size: 64, offset: 320)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!38, !1419}
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1406, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1406, file: !39, line: 122, baseType: !1421, size: 64, offset: 384)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !39, line: 159, size: 512, align: 512, elements: !1423)
!1423 = !{!1424, !1449, !1450, !1453, !1458, !1459, !1467, !1471}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1422, file: !39, line: 160, baseType: !1425, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !39, line: 215, size: 4608, align: 512, elements: !1427)
!1427 = !{!1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1426, file: !39, line: 216, baseType: !439, size: 32)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1426, file: !39, line: 217, baseType: !13, size: 32, offset: 32)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1426, file: !39, line: 218, baseType: !13, size: 32, offset: 64)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1426, file: !39, line: 219, baseType: !13, size: 32, offset: 96)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1426, file: !39, line: 220, baseType: !13, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1426, file: !39, line: 221, baseType: !13, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1426, file: !39, line: 222, baseType: !13, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1426, file: !39, line: 223, baseType: !13, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1426, file: !39, line: 224, baseType: !13, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1426, file: !39, line: 226, baseType: !13, size: 32, offset: 160)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1426, file: !39, line: 227, baseType: !217, size: 16, offset: 192)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1426, file: !39, line: 228, baseType: !217, size: 16, offset: 208)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1426, file: !39, line: 229, baseType: !13, size: 32, offset: 224)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1426, file: !39, line: 235, baseType: !1386, size: 64, offset: 256)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1426, file: !39, line: 236, baseType: !1419, size: 64, offset: 320)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1426, file: !39, line: 237, baseType: !1386, size: 64, offset: 384)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1426, file: !39, line: 238, baseType: !1419, size: 64, offset: 448)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1426, file: !39, line: 239, baseType: !1446, size: 4096, align: 512, offset: 512)
!1446 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1422, size: 4096, align: 512, elements: !1447)
!1447 = !{!1448}
!1448 = !DISubrange(count: 8)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1422, file: !39, line: 161, baseType: !13, size: 32, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1422, file: !39, line: 162, baseType: !1451, size: 32, offset: 96)
!1451 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !144, line: 32, baseType: !1452)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !281, line: 96, baseType: !52)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1422, file: !39, line: 163, baseType: !1454, size: 32, offset: 128)
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !454, line: 274, baseType: !1455)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !454, line: 274, size: 32, elements: !1456)
!1456 = !{!1457}
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1455, file: !454, line: 274, baseType: !453, size: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1422, file: !39, line: 164, baseType: !1419, size: 64, offset: 192)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1422, file: !39, line: 165, baseType: !1460, size: 128, offset: 256)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1410, line: 14, size: 128, elements: !1461)
!1461 = !{!1462}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1460, file: !1410, line: 15, baseType: !1463, size: 128)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !607, line: 26, size: 128, elements: !1464)
!1464 = !{!1465, !1466}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1463, file: !607, line: 27, baseType: !709, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1463, file: !607, line: 28, baseType: !611, size: 64, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1422, file: !39, line: 166, baseType: !1468, size: 64, offset: 384)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = !DISubroutineType(types: !1470)
!1470 = !{!1386}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1422, file: !39, line: 167, baseType: !1386, size: 64, offset: 448)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1406, file: !39, line: 123, baseType: !207, size: 8, offset: 448)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1406, file: !39, line: 124, baseType: !207, size: 8, offset: 456)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1406, file: !39, line: 125, baseType: !207, size: 8, offset: 464)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1406, file: !39, line: 126, baseType: !207, size: 8, offset: 472)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1354, file: !44, line: 691, baseType: !411, size: 64, offset: 1152)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1354, file: !44, line: 692, baseType: !567, size: 256, offset: 1216)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1354, file: !44, line: 693, baseType: !1479, size: 192, offset: 1472)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1480, line: 41, baseType: !1481)
!1480 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1480, line: 37, size: 192, elements: !1482)
!1482 = !{!1483, !1484}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1481, file: !1480, line: 38, baseType: !179, size: 32)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1481, file: !1480, line: 39, baseType: !166, size: 128, offset: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1354, file: !44, line: 694, baseType: !1381, size: 64, offset: 1664)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1354, file: !44, line: 695, baseType: !199, size: 32, offset: 1728)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1354, file: !44, line: 696, baseType: !199, size: 32, offset: 1760)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1354, file: !44, line: 697, baseType: !13, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1354, file: !44, line: 698, baseType: !13, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1354, file: !44, line: 699, baseType: !13, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1354, file: !44, line: 700, baseType: !13, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1354, file: !44, line: 701, baseType: !13, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1354, file: !44, line: 702, baseType: !13, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1354, file: !44, line: 703, baseType: !143, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1354, file: !44, line: 704, baseType: !13, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1354, file: !44, line: 705, baseType: !13, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1354, file: !44, line: 706, baseType: !13, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1354, file: !44, line: 707, baseType: !13, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1354, file: !44, line: 708, baseType: !13, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1354, file: !44, line: 709, baseType: !13, size: 32, offset: 1824)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1354, file: !44, line: 710, baseType: !43, size: 32, offset: 1856)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1354, file: !44, line: 711, baseType: !51, size: 32, offset: 1888)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1354, file: !44, line: 712, baseType: !51, size: 32, offset: 1920)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1354, file: !44, line: 713, baseType: !52, size: 32, offset: 1952)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1354, file: !44, line: 714, baseType: !52, size: 32, offset: 1984)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1354, file: !44, line: 715, baseType: !411, size: 64, offset: 2048)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1354, file: !44, line: 716, baseType: !411, size: 64, offset: 2112)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1354, file: !44, line: 717, baseType: !411, size: 64, offset: 2176)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1354, file: !44, line: 718, baseType: !411, size: 64, offset: 2240)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1354, file: !44, line: 720, baseType: !1511, size: 64, offset: 2304)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !44, line: 632, size: 64, elements: !1513)
!1513 = !{!1514, !1515}
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1512, file: !44, line: 633, baseType: !179, size: 32)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1512, file: !44, line: 634, baseType: !13, size: 32, offset: 32)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1354, file: !44, line: 721, baseType: !1517, size: 64, offset: 2368)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{null, !820, !484}
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1354, file: !44, line: 722, baseType: !1521, size: 64, offset: 2432)
!1521 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1522, size: 64)
!1522 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !44, line: 722, flags: DIFlagFwdDecl)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !156, file: !32, line: 727, baseType: !1524, size: 64, offset: 4224)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !44, line: 742, size: 1792, elements: !1526)
!1526 = !{!1527, !1528, !1529, !1533, !1534, !1535}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1525, file: !44, line: 743, baseType: !848, size: 1472)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1525, file: !44, line: 744, baseType: !851, size: 64, offset: 1472)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1525, file: !44, line: 745, baseType: !1530, size: 64, offset: 1536)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{null, !820, !143}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1525, file: !44, line: 746, baseType: !851, size: 64, offset: 1600)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1525, file: !44, line: 747, baseType: !842, size: 64, offset: 1664)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1525, file: !44, line: 748, baseType: !842, size: 64, offset: 1728)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !156, file: !32, line: 736, baseType: !1537, size: 128, offset: 4288)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !32, line: 529, size: 128, elements: !1538)
!1538 = !{!1539, !1543}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1537, file: !32, line: 531, baseType: !1540, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1542, line: 13, flags: DIFlagFwdDecl)
!1542 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1537, file: !32, line: 532, baseType: !1544, size: 64, offset: 64)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !32, line: 49, flags: DIFlagFwdDecl)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !156, file: !32, line: 738, baseType: !1547, size: 64, offset: 4416)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1549)
!1549 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !32, line: 738, flags: DIFlagFwdDecl)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !156, file: !32, line: 740, baseType: !1551, size: 64, offset: 4480)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !156, file: !32, line: 741, baseType: !411, size: 64, offset: 4544)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !156, file: !32, line: 746, baseType: !411, size: 64, offset: 4608)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !156, file: !32, line: 747, baseType: !1555, size: 64, offset: 4672)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1557)
!1557 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !32, line: 747, flags: DIFlagFwdDecl)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !156, file: !32, line: 749, baseType: !1559, size: 64, offset: 4736)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !32, line: 428, size: 128, elements: !1561)
!1561 = !{!1562, !1563, !1564}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1560, file: !32, line: 433, baseType: !13, size: 32)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1560, file: !32, line: 434, baseType: !13, size: 32, offset: 32)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1560, file: !32, line: 435, baseType: !297, size: 64, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !156, file: !32, line: 751, baseType: !166, size: 128, offset: 4800)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !156, file: !32, line: 762, baseType: !1567, size: 64, offset: 4928)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !32, line: 762, flags: DIFlagFwdDecl)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !156, file: !32, line: 770, baseType: !1570, offset: 4992)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1571, line: 5, elements: !384)
!1571 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !156, file: !32, line: 772, baseType: !1573, size: 64, offset: 4992)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1575, line: 18, flags: DIFlagFwdDecl)
!1575 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !156, file: !32, line: 773, baseType: !125, size: 64, offset: 5056)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !156, file: !32, line: 776, baseType: !52, size: 32, offset: 5120)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !156, file: !32, line: 778, baseType: !1579, size: 32, offset: 5152)
!1579 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !144, line: 21, baseType: !1580)
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !144, line: 18, baseType: !112)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !156, file: !32, line: 779, baseType: !112, size: 32, offset: 5184)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !156, file: !32, line: 781, baseType: !179, size: 32, offset: 5216)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !156, file: !32, line: 782, baseType: !166, size: 128, offset: 5248)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !156, file: !32, line: 784, baseType: !1585, size: 64, offset: 5376)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1587)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1588, line: 52, size: 768, elements: !1589)
!1588 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1589 = !{!1590, !1591, !1592, !1593, !1594, !1598, !1602, !1603, !1604, !1605, !1609, !1613}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1587, file: !1588, line: 53, baseType: !163, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1587, file: !1588, line: 55, baseType: !299, size: 64, offset: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1587, file: !1588, line: 56, baseType: !299, size: 64, offset: 128)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1587, file: !1588, line: 58, baseType: !833, size: 64, offset: 192)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1587, file: !1588, line: 59, baseType: !1595, size: 64, offset: 256)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{!247, !154, !840}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1587, file: !1588, line: 61, baseType: !1599, size: 64, offset: 320)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{null, !1585}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1587, file: !1588, line: 62, baseType: !842, size: 64, offset: 384)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1587, file: !1588, line: 64, baseType: !851, size: 64, offset: 448)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1587, file: !1588, line: 66, baseType: !639, size: 64, offset: 512)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1587, file: !1588, line: 67, baseType: !1606, size: 64, offset: 576)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!152, !154}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1587, file: !1588, line: 69, baseType: !1610, size: 64, offset: 640)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{null, !154, !674, !682}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1587, file: !1588, line: 71, baseType: !846, size: 64, offset: 704)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !156, file: !32, line: 785, baseType: !299, size: 64, offset: 5440)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !156, file: !32, line: 787, baseType: !842, size: 64, offset: 5504)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !156, file: !32, line: 788, baseType: !1617, size: 64, offset: 5568)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !32, line: 46, flags: DIFlagFwdDecl)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !156, file: !32, line: 789, baseType: !1620, size: 64, offset: 5632)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !32, line: 48, flags: DIFlagFwdDecl)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !156, file: !32, line: 791, baseType: !1623, size: 64, offset: 5696)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !32, line: 597, size: 128, elements: !1625)
!1625 = !{!1626, !1627, !1628, !1629, !1630}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1624, file: !32, line: 598, baseType: !65, size: 32)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1624, file: !32, line: 599, baseType: !74, size: 32, offset: 32)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1624, file: !32, line: 600, baseType: !79, size: 32, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1624, file: !32, line: 601, baseType: !143, size: 8, offset: 96)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1624, file: !32, line: 602, baseType: !143, size: 8, offset: 104)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !156, file: !32, line: 793, baseType: !84, size: 32, offset: 5760)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !156, file: !32, line: 795, baseType: !143, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !156, file: !32, line: 796, baseType: !143, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !156, file: !32, line: 797, baseType: !143, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !156, file: !32, line: 798, baseType: !143, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !156, file: !32, line: 799, baseType: !143, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !129, file: !122, line: 131, baseType: !140, size: 64, offset: 256)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !129, file: !122, line: 133, baseType: !1639, size: 64, offset: 320)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!59, !146}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !129, file: !122, line: 134, baseType: !1643, size: 64, offset: 384)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!143, !146, !163}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !129, file: !122, line: 136, baseType: !1647, size: 64, offset: 448)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!52, !146, !163, !13, !106, !294}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !129, file: !122, line: 141, baseType: !1651, size: 64, offset: 512)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!52, !146, !163, !1241, !294}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !129, file: !122, line: 144, baseType: !1655, size: 64, offset: 576)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!163, !146}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !129, file: !122, line: 145, baseType: !1655, size: 64, offset: 640)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !129, file: !122, line: 146, baseType: !1660, size: 64, offset: 704)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!125, !146}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !129, file: !122, line: 148, baseType: !1664, size: 64, offset: 768)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!125, !146, !125}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !129, file: !122, line: 151, baseType: !1668, size: 64, offset: 832)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!125, !146, !163}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !129, file: !122, line: 153, baseType: !1672, size: 64, offset: 896)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!52, !146, !163, !163, !13, !13, !1675}
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !122, line: 94, size: 640, elements: !1677)
!1677 = !{!1678, !1679, !1680}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1676, file: !122, line: 95, baseType: !125, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1676, file: !122, line: 96, baseType: !13, size: 32, offset: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1676, file: !122, line: 97, baseType: !1681, size: 512, offset: 128)
!1681 = !DICompositeType(tag: DW_TAG_array_type, baseType: !411, size: 512, elements: !1447)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !129, file: !122, line: 158, baseType: !1664, size: 64, offset: 960)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !129, file: !122, line: 161, baseType: !1660, size: 64, offset: 1024)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !129, file: !122, line: 163, baseType: !132, size: 64, offset: 1088)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !129, file: !122, line: 164, baseType: !1686, size: 64, offset: 1152)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!52, !146, !1689}
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !122, line: 73, size: 128, elements: !1691)
!1691 = !{!1692, !1693, !1694}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1690, file: !122, line: 74, baseType: !13, size: 32)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1690, file: !122, line: 75, baseType: !13, size: 32, offset: 32)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1690, file: !122, line: 76, baseType: !146, size: 64, offset: 64)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !129, file: !122, line: 166, baseType: !1696, size: 64, offset: 1216)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!106, !125, !52}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !129, file: !122, line: 167, baseType: !1700, size: 64, offset: 1280)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!52, !146, !13}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !129, file: !122, line: 168, baseType: !1704, size: 64, offset: 1344)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!52, !125}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !121, file: !122, line: 44, baseType: !820, size: 64, offset: 128)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !121, file: !122, line: 45, baseType: !166, size: 128, offset: 192)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !121, file: !122, line: 46, baseType: !166, size: 128, offset: 320)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !121, file: !122, line: 47, baseType: !207, size: 8, offset: 448)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !108, file: !109, line: 372, baseType: !166, size: 128, offset: 640)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !108, file: !109, line: 373, baseType: !166, size: 128, offset: 768)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !108, file: !109, line: 374, baseType: !1714, size: 32, offset: 896)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !109, line: 181, size: 32, elements: !1715)
!1715 = !{!1716, !1717, !1718, !1719, !1720, !1721}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !1714, file: !109, line: 182, baseType: !112, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1714, file: !109, line: 183, baseType: !112, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !1714, file: !109, line: 184, baseType: !112, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !1714, file: !109, line: 185, baseType: !112, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !1714, file: !109, line: 186, baseType: !112, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1714, file: !109, line: 187, baseType: !112, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !108, file: !109, line: 375, baseType: !1723, size: 32, offset: 928)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !109, line: 192, size: 32, elements: !1724)
!1724 = !{!1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !1723, file: !109, line: 193, baseType: !112, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1723, file: !109, line: 194, baseType: !112, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !1723, file: !109, line: 195, baseType: !112, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !1723, file: !109, line: 196, baseType: !112, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !1723, file: !109, line: 197, baseType: !112, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !1723, file: !109, line: 198, baseType: !112, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1723, file: !109, line: 199, baseType: !112, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !1723, file: !109, line: 200, baseType: !112, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !1723, file: !109, line: 201, baseType: !112, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !1723, file: !109, line: 202, baseType: !112, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !1723, file: !109, line: 203, baseType: !112, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !1723, file: !109, line: 204, baseType: !112, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !1723, file: !109, line: 205, baseType: !112, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "honor_deps", scope: !1723, file: !109, line: 206, baseType: !112, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1723, file: !109, line: 207, baseType: !112, size: 18, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !108, file: !109, line: 376, baseType: !1741, size: 960, offset: 960)
!1741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !109, line: 238, size: 960, elements: !1742)
!1742 = !{!1743, !1746, !1747, !1755, !1757, !1758, !1759, !1764, !1769}
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !1741, file: !109, line: 239, baseType: !1744, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !109, line: 220, baseType: !1745)
!1745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !1447)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "instance_no", scope: !1741, file: !109, line: 240, baseType: !52, size: 32, offset: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1741, file: !109, line: 241, baseType: !1748, size: 32, offset: 96)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !109, line: 230, size: 32, elements: !1749)
!1749 = !{!1750, !1751, !1752, !1753, !1754}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !1748, file: !109, line: 231, baseType: !112, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !1748, file: !109, line: 232, baseType: !112, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !1748, file: !109, line: 233, baseType: !112, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "backlight", scope: !1748, file: !109, line: 234, baseType: !112, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1748, file: !109, line: 235, baseType: !112, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !1741, file: !109, line: 242, baseType: !1756, size: 64, offset: 128)
!1756 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !109, line: 221, baseType: !411)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !1741, file: !109, line: 243, baseType: !247, size: 64, offset: 192)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1741, file: !109, line: 244, baseType: !166, size: 128, offset: 256)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !1741, file: !109, line: 245, baseType: !1760, size: 320, offset: 384)
!1760 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !109, line: 222, baseType: !1761)
!1761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !1762)
!1762 = !{!1763}
!1763 = !DISubrange(count: 40)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !1741, file: !109, line: 246, baseType: !1765, size: 160, offset: 704)
!1765 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !109, line: 223, baseType: !1766)
!1766 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !1767)
!1767 = !{!1768}
!1768 = !DISubrange(count: 20)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !1741, file: !109, line: 247, baseType: !1770, size: 64, offset: 896)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !119, line: 908, size: 192, elements: !1772)
!1772 = !{!1773, !1775, !1780, !1786, !1793, !1799, !1805, !1813}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1771, file: !119, line: 909, baseType: !1774, size: 32)
!1774 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !119, line: 644, baseType: !112)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1771, file: !119, line: 913, baseType: !1776, size: 128)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1771, file: !119, line: 910, size: 128, elements: !1777)
!1777 = !{!1778, !1779}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1776, file: !119, line: 911, baseType: !1774, size: 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1776, file: !119, line: 912, baseType: !411, size: 64, offset: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1771, file: !119, line: 919, baseType: !1781, size: 128)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1771, file: !119, line: 915, size: 128, elements: !1782)
!1782 = !{!1783, !1784, !1785}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1781, file: !119, line: 916, baseType: !1774, size: 32)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1781, file: !119, line: 917, baseType: !112, size: 32, offset: 32)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1781, file: !119, line: 918, baseType: !247, size: 64, offset: 64)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1771, file: !119, line: 925, baseType: !1787, size: 128)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1771, file: !119, line: 921, size: 128, elements: !1788)
!1788 = !{!1789, !1790, !1791}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1787, file: !119, line: 922, baseType: !1774, size: 32)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1787, file: !119, line: 923, baseType: !112, size: 32, offset: 32)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1787, file: !119, line: 924, baseType: !1792, size: 64, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !1771, file: !119, line: 931, baseType: !1794, size: 128)
!1794 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1771, file: !119, line: 927, size: 128, elements: !1795)
!1795 = !{!1796, !1797, !1798}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1794, file: !119, line: 928, baseType: !1774, size: 32)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1794, file: !119, line: 929, baseType: !112, size: 32, offset: 32)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1794, file: !119, line: 930, baseType: !1770, size: 64, offset: 64)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !1771, file: !119, line: 937, baseType: !1800, size: 128)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1771, file: !119, line: 933, size: 128, elements: !1801)
!1801 = !{!1802, !1803, !1804}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1800, file: !119, line: 934, baseType: !1774, size: 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !1800, file: !119, line: 935, baseType: !1774, size: 32, offset: 32)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !1800, file: !119, line: 936, baseType: !118, size: 64, offset: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !1771, file: !119, line: 944, baseType: !1806, size: 192)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1771, file: !119, line: 939, size: 192, elements: !1807)
!1807 = !{!1808, !1809, !1810, !1812}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1806, file: !119, line: 940, baseType: !1774, size: 32)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !1806, file: !119, line: 941, baseType: !112, size: 32, offset: 32)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !1806, file: !119, line: 942, baseType: !1811, size: 64, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !119, line: 128, baseType: !411)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !1806, file: !119, line: 943, baseType: !112, size: 32, offset: 128)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !1771, file: !119, line: 950, baseType: !1814, size: 96)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1771, file: !119, line: 946, size: 96, elements: !1815)
!1815 = !{!1816, !1817, !1818}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1814, file: !119, line: 947, baseType: !1774, size: 32)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !1814, file: !119, line: 948, baseType: !112, size: 32, offset: 32)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !1814, file: !119, line: 949, baseType: !112, size: 32, offset: 64)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !108, file: !109, line: 377, baseType: !1820, size: 1408, offset: 1920)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !109, line: 280, size: 1408, elements: !1821)
!1821 = !{!1822, !1823, !1833, !1848}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1820, file: !109, line: 281, baseType: !52, size: 32)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1820, file: !109, line: 282, baseType: !1824, size: 32, offset: 32)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !109, line: 259, size: 32, elements: !1825)
!1825 = !{!1826, !1827, !1828, !1829, !1830, !1831, !1832}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !1824, file: !109, line: 260, baseType: !112, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !1824, file: !109, line: 261, baseType: !112, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !1824, file: !109, line: 262, baseType: !112, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !1824, file: !109, line: 263, baseType: !112, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !1824, file: !109, line: 264, baseType: !112, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !1824, file: !109, line: 265, baseType: !112, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1824, file: !109, line: 266, baseType: !112, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1820, file: !109, line: 283, baseType: !1834, size: 1280, offset: 64)
!1834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1835, size: 1280, elements: !1846)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !109, line: 269, size: 256, elements: !1836)
!1836 = !{!1837, !1843, !1844, !1845}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1835, file: !109, line: 274, baseType: !1838, size: 8)
!1838 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1835, file: !109, line: 270, size: 8, elements: !1839)
!1839 = !{!1840, !1841, !1842}
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1838, file: !109, line: 271, baseType: !207, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !1838, file: !109, line: 272, baseType: !207, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1838, file: !109, line: 273, baseType: !207, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1835, file: !109, line: 275, baseType: !52, size: 32, offset: 32)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1835, file: !109, line: 276, baseType: !52, size: 32, offset: 64)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !1835, file: !109, line: 277, baseType: !166, size: 128, offset: 128)
!1846 = !{!1847}
!1847 = !DISubrange(count: 5)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "state_for_enumeration", scope: !1820, file: !109, line: 284, baseType: !207, size: 8, offset: 1344)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !108, file: !109, line: 378, baseType: !1850, size: 640, offset: 3328)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !109, line: 330, size: 640, elements: !1851)
!1851 = !{!1852, !1853, !1854, !1855, !1856, !1861, !1870, !1871, !1872}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !1850, file: !109, line: 331, baseType: !118, size: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !1850, file: !109, line: 332, baseType: !411, size: 64, offset: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !1850, file: !109, line: 333, baseType: !411, size: 64, offset: 128)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !1850, file: !109, line: 334, baseType: !166, size: 128, offset: 192)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1850, file: !109, line: 335, baseType: !1857, size: 8, offset: 320)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !109, line: 320, size: 8, elements: !1858)
!1858 = !{!1859, !1860}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1857, file: !109, line: 321, baseType: !207, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !1857, file: !109, line: 322, baseType: !207, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1850, file: !109, line: 336, baseType: !1862, size: 128, offset: 384)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !109, line: 325, size: 128, elements: !1863)
!1863 = !{!1864, !1869}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1862, file: !109, line: 326, baseType: !1865, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1866, size: 64)
!1866 = !DISubroutineType(types: !1867)
!1867 = !{null, !1868}
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1862, file: !109, line: 327, baseType: !820, size: 64, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !1850, file: !109, line: 337, baseType: !1372, size: 64, offset: 512)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !1850, file: !109, line: 338, baseType: !52, size: 32, offset: 576)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !1850, file: !109, line: 339, baseType: !52, size: 32, offset: 608)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !108, file: !109, line: 379, baseType: !1874, size: 192, offset: 3968)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !109, line: 312, size: 192, elements: !1875)
!1875 = !{!1876, !1877, !1881, !1882}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1874, file: !109, line: 313, baseType: !52, size: 32)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1874, file: !109, line: 314, baseType: !1878, size: 8, offset: 32)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !109, line: 298, size: 8, elements: !1879)
!1879 = !{!1880}
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1878, file: !109, line: 299, baseType: !207, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !1874, file: !109, line: 315, baseType: !52, size: 32, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1874, file: !109, line: 316, baseType: !1883, size: 64, offset: 128)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !109, line: 302, size: 64, elements: !1885)
!1885 = !{!1886, !1891, !1892, !1893}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1884, file: !109, line: 306, baseType: !1887, size: 8)
!1887 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1884, file: !109, line: 303, size: 8, elements: !1888)
!1888 = !{!1889, !1890}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1887, file: !109, line: 304, baseType: !207, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1887, file: !109, line: 305, baseType: !207, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1884, file: !109, line: 307, baseType: !207, size: 8, offset: 8)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !1884, file: !109, line: 308, baseType: !207, size: 8, offset: 16)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1884, file: !109, line: 309, baseType: !52, size: 32, offset: 32)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !108, file: !109, line: 380, baseType: !1895, size: 64, offset: 4160)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !109, line: 212, size: 64, elements: !1896)
!1896 = !{!1897}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1895, file: !109, line: 213, baseType: !1898, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !109, line: 86, flags: DIFlagFwdDecl)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !108, file: !109, line: 381, baseType: !1901, size: 384, offset: 4224)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !109, line: 357, size: 384, elements: !1902)
!1902 = !{!1903, !1906, !1907, !1908}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1901, file: !109, line: 358, baseType: !1904, size: 64)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1771)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1901, file: !109, line: 359, baseType: !166, size: 128, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !1901, file: !109, line: 360, baseType: !1904, size: 64, offset: 192)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !1901, file: !109, line: 361, baseType: !166, size: 128, offset: 256)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !108, file: !109, line: 382, baseType: !1910, size: 64, offset: 4608)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !109, line: 124, size: 1216, elements: !1912)
!1912 = !{!1913, !1914, !1915, !1920, !1924, !1928, !1929, !1930}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1911, file: !109, line: 125, baseType: !1292, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !1911, file: !109, line: 126, baseType: !166, size: 128, offset: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1911, file: !109, line: 127, baseType: !1916, size: 64, offset: 192)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DISubroutineType(types: !1918)
!1918 = !{!143, !163, !1919}
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !1911, file: !109, line: 128, baseType: !1921, size: 64, offset: 256)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!52, !107, !1292}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1911, file: !109, line: 129, baseType: !1925, size: 64, offset: 320)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{null, !107}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !1911, file: !109, line: 130, baseType: !842, size: 64, offset: 384)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !1911, file: !109, line: 131, baseType: !842, size: 64, offset: 448)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !1911, file: !109, line: 132, baseType: !1931, size: 704, offset: 512)
!1931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !109, line: 110, size: 704, elements: !1932)
!1932 = !{!1933, !1934, !1938, !1939, !1940}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1931, file: !109, line: 111, baseType: !159, size: 512)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !1931, file: !109, line: 112, baseType: !1935, size: 64, offset: 512)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!52, !107}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !1931, file: !109, line: 113, baseType: !1925, size: 64, offset: 576)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1931, file: !109, line: 114, baseType: !143, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !1931, file: !109, line: 115, baseType: !143, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !108, file: !109, line: 383, baseType: !1942, size: 64, offset: 4672)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !109, line: 140, size: 256, elements: !1944)
!1944 = !{!1945, !1946, !1950, !1954}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !1943, file: !109, line: 141, baseType: !107, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !1943, file: !109, line: 142, baseType: !1947, size: 64, offset: 64)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!52, !107, !112}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1943, file: !109, line: 143, baseType: !1951, size: 64, offset: 128)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{null, !107, !112}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1943, file: !109, line: 144, baseType: !1925, size: 64, offset: 192)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !108, file: !109, line: 384, baseType: !1956, size: 64, offset: 4736)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1958)
!1958 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !109, line: 364, flags: DIFlagFwdDecl)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !108, file: !109, line: 385, baseType: !106, size: 64, offset: 4800)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !108, file: !109, line: 386, baseType: !156, size: 5824, offset: 4864)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !108, file: !109, line: 387, baseType: !13, size: 32, offset: 10688)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !108, file: !109, line: 388, baseType: !13, size: 32, offset: 10720)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !108, file: !109, line: 389, baseType: !166, size: 128, offset: 10752)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !108, file: !109, line: 390, baseType: !505, size: 256, offset: 10880)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !108, file: !109, line: 391, baseType: !1925, size: 64, offset: 11136)
!1966 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !144, line: 154, baseType: !13)
!1967 = !{!0, !1968, !1970, !7, !1975, !1980, !1994, !1997, !2000, !2003, !2005, !2007, !2009, !2011, !2013, !2015, !2017, !2019, !2021, !2023, !2025, !2027, !2029, !2031, !2033, !2036, !2038}
!1968 = !DIGlobalVariableExpression(var: !1969, expr: !DIExpression())
!1969 = distinct !DIGlobalVariable(name: "dev_attr_physical_location_group", scope: !9, file: !2, line: 142, type: !301, isLocal: false, isDefinition: true)
!1970 = !DIGlobalVariableExpression(var: !1971, expr: !DIExpression())
!1971 = distinct !DIGlobalVariable(scope: null, file: !96, line: 480, type: !1972, isLocal: true, isDefinition: true)
!1972 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 168, elements: !1973)
!1973 = !{!1974}
!1974 = !DISubrange(count: 21)
!1975 = !DIGlobalVariableExpression(var: !1976, expr: !DIExpression())
!1976 = distinct !DIGlobalVariable(scope: null, file: !2, line: 71, type: !1977, isLocal: true, isDefinition: true)
!1977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !1978)
!1978 = !{!1979}
!1979 = !DISubrange(count: 6)
!1980 = !DIGlobalVariableExpression(var: !1981, expr: !DIExpression())
!1981 = distinct !DIGlobalVariable(name: "dev_attr_panel", scope: !9, file: !2, line: 71, type: !1982, isLocal: true, isDefinition: true)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !32, line: 106, size: 256, elements: !1983)
!1983 = !{!1984, !1985, !1990}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1982, file: !32, line: 107, baseType: !285, size: 128)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1982, file: !32, line: 108, baseType: !1986, size: 64, offset: 128)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!279, !820, !1989, !247}
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1982, file: !32, line: 110, baseType: !1991, size: 64, offset: 192)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!279, !820, !1989, !163, !294}
!1994 = !DIGlobalVariableExpression(var: !1995, expr: !DIExpression())
!1995 = distinct !DIGlobalVariable(scope: null, file: !2, line: 49, type: !1996, isLocal: true, isDefinition: true)
!1996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !486)
!1997 = !DIGlobalVariableExpression(var: !1998, expr: !DIExpression())
!1998 = distinct !DIGlobalVariable(scope: null, file: !2, line: 52, type: !1999, isLocal: true, isDefinition: true)
!1999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !1050)
!2000 = !DIGlobalVariableExpression(var: !2001, expr: !DIExpression())
!2001 = distinct !DIGlobalVariable(scope: null, file: !2, line: 55, type: !2002, isLocal: true, isDefinition: true)
!2002 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !1846)
!2003 = !DIGlobalVariableExpression(var: !2004, expr: !DIExpression())
!2004 = distinct !DIGlobalVariable(scope: null, file: !2, line: 58, type: !1977, isLocal: true, isDefinition: true)
!2005 = !DIGlobalVariableExpression(var: !2006, expr: !DIExpression())
!2006 = distinct !DIGlobalVariable(scope: null, file: !2, line: 61, type: !1977, isLocal: true, isDefinition: true)
!2007 = !DIGlobalVariableExpression(var: !2008, expr: !DIExpression())
!2008 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !2002, isLocal: true, isDefinition: true)
!2009 = !DIGlobalVariableExpression(var: !2010, expr: !DIExpression())
!2010 = distinct !DIGlobalVariable(scope: null, file: !2, line: 67, type: !1745, isLocal: true, isDefinition: true)
!2011 = !DIGlobalVariableExpression(var: !2012, expr: !DIExpression())
!2012 = distinct !DIGlobalVariable(scope: null, file: !2, line: 69, type: !1996, isLocal: true, isDefinition: true)
!2013 = !DIGlobalVariableExpression(var: !2014, expr: !DIExpression())
!2014 = distinct !DIGlobalVariable(scope: null, file: !2, line: 93, type: !3, isLocal: true, isDefinition: true)
!2015 = !DIGlobalVariableExpression(var: !2016, expr: !DIExpression())
!2016 = distinct !DIGlobalVariable(name: "dev_attr_vertical_position", scope: !9, file: !2, line: 93, type: !1982, isLocal: true, isDefinition: true)
!2017 = !DIGlobalVariableExpression(var: !2018, expr: !DIExpression())
!2018 = distinct !DIGlobalVariable(scope: null, file: !2, line: 80, type: !1977, isLocal: true, isDefinition: true)
!2019 = !DIGlobalVariableExpression(var: !2020, expr: !DIExpression())
!2020 = distinct !DIGlobalVariable(scope: null, file: !2, line: 83, type: !1999, isLocal: true, isDefinition: true)
!2021 = !DIGlobalVariableExpression(var: !2022, expr: !DIExpression())
!2022 = distinct !DIGlobalVariable(scope: null, file: !2, line: 86, type: !1977, isLocal: true, isDefinition: true)
!2023 = !DIGlobalVariableExpression(var: !2024, expr: !DIExpression())
!2024 = distinct !DIGlobalVariable(scope: null, file: !2, line: 115, type: !1766, isLocal: true, isDefinition: true)
!2025 = !DIGlobalVariableExpression(var: !2026, expr: !DIExpression())
!2026 = distinct !DIGlobalVariable(name: "dev_attr_horizontal_position", scope: !9, file: !2, line: 115, type: !1982, isLocal: true, isDefinition: true)
!2027 = !DIGlobalVariableExpression(var: !2028, expr: !DIExpression())
!2028 = distinct !DIGlobalVariable(scope: null, file: !2, line: 123, type: !2002, isLocal: true, isDefinition: true)
!2029 = !DIGlobalVariableExpression(var: !2030, expr: !DIExpression())
!2030 = distinct !DIGlobalVariable(name: "dev_attr_dock", scope: !9, file: !2, line: 123, type: !1982, isLocal: true, isDefinition: true)
!2031 = !DIGlobalVariableExpression(var: !2032, expr: !DIExpression())
!2032 = distinct !DIGlobalVariable(scope: null, file: !2, line: 121, type: !1996, isLocal: true, isDefinition: true)
!2033 = !DIGlobalVariableExpression(var: !2034, expr: !DIExpression())
!2034 = distinct !DIGlobalVariable(scope: null, file: !2, line: 121, type: !2035, isLocal: true, isDefinition: true)
!2035 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 24, elements: !248)
!2036 = !DIGlobalVariableExpression(var: !2037, expr: !DIExpression())
!2037 = distinct !DIGlobalVariable(scope: null, file: !2, line: 131, type: !1996, isLocal: true, isDefinition: true)
!2038 = !DIGlobalVariableExpression(var: !2039, expr: !DIExpression())
!2039 = distinct !DIGlobalVariable(name: "dev_attr_lid", scope: !9, file: !2, line: 131, type: !1982, isLocal: true, isDefinition: true)
!2040 = !DICompositeType(tag: DW_TAG_array_type, baseType: !284, size: 384, elements: !1978)
!2041 = !{i32 7, !"Dwarf Version", i32 5}
!2042 = !{i32 2, !"Debug Info Version", i32 3}
!2043 = !{i32 1, !"wchar_size", i32 2}
!2044 = !{i32 8, !"cf-protection-branch", i32 1}
!2045 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2046 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2047 = !{i32 1, !"Code Model", i32 2}
!2048 = !{i32 1, !"override-stack-alignment", i32 8}
!2049 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2050 = distinct !DISubprogram(name: "dev_add_physical_location", scope: !2, file: !2, line: 13, type: !2051, scopeLine: 14, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2053)
!2051 = !DISubroutineType(types: !2052)
!2052 = !{!143, !820}
!2053 = !{!2054, !2055, !2088, !2090, !2092}
!2054 = !DILocalVariable(name: "dev", arg: 1, scope: !2050, file: !2, line: 13, type: !820)
!2055 = !DILocalVariable(name: "pld", scope: !2050, file: !2, line: 15, type: !2056)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pld_info", file: !2058, line: 77, size: 272, elements: !2059)
!2058 = !DIFile(filename: "./include/acpi/acbuffer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "65439b7b1669741c8cb9b42802ea004c")
!2059 = !{!2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !2057, file: !2058, line: 78, baseType: !207, size: 8)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_color", scope: !2057, file: !2058, line: 79, baseType: !207, size: 8, offset: 8)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "red", scope: !2057, file: !2058, line: 80, baseType: !207, size: 8, offset: 16)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "green", scope: !2057, file: !2058, line: 81, baseType: !207, size: 8, offset: 24)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "blue", scope: !2057, file: !2058, line: 82, baseType: !207, size: 8, offset: 32)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !2057, file: !2058, line: 83, baseType: !215, size: 16, offset: 48)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "height", scope: !2057, file: !2058, line: 84, baseType: !215, size: 16, offset: 64)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "user_visible", scope: !2057, file: !2058, line: 85, baseType: !207, size: 8, offset: 80)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !2057, file: !2058, line: 86, baseType: !207, size: 8, offset: 88)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !2057, file: !2058, line: 87, baseType: !207, size: 8, offset: 96)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !2057, file: !2058, line: 88, baseType: !207, size: 8, offset: 104)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !2057, file: !2058, line: 89, baseType: !207, size: 8, offset: 112)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !2057, file: !2058, line: 90, baseType: !207, size: 8, offset: 120)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "shape", scope: !2057, file: !2058, line: 91, baseType: !207, size: 8, offset: 128)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "group_orientation", scope: !2057, file: !2058, line: 92, baseType: !207, size: 8, offset: 136)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "group_token", scope: !2057, file: !2058, line: 93, baseType: !207, size: 8, offset: 144)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "group_position", scope: !2057, file: !2058, line: 94, baseType: !207, size: 8, offset: 152)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "bay", scope: !2057, file: !2058, line: 95, baseType: !207, size: 8, offset: 160)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !2057, file: !2058, line: 96, baseType: !207, size: 8, offset: 168)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "ospm_eject_required", scope: !2057, file: !2058, line: 97, baseType: !207, size: 8, offset: 176)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "cabinet_number", scope: !2057, file: !2058, line: 98, baseType: !207, size: 8, offset: 184)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "card_cage_number", scope: !2057, file: !2058, line: 99, baseType: !207, size: 8, offset: 192)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !2057, file: !2058, line: 100, baseType: !207, size: 8, offset: 200)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "rotation", scope: !2057, file: !2058, line: 101, baseType: !207, size: 8, offset: 208)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !2057, file: !2058, line: 102, baseType: !207, size: 8, offset: 216)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2057, file: !2058, line: 103, baseType: !207, size: 8, offset: 224)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_offset", scope: !2057, file: !2058, line: 104, baseType: !215, size: 16, offset: 240)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_offset", scope: !2057, file: !2058, line: 105, baseType: !215, size: 16, offset: 256)
!2088 = !DILocalVariable(name: "status", scope: !2050, file: !2, line: 16, type: !2089)
!2089 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !119, line: 421, baseType: !112)
!2090 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !2091, file: !2, line: 21, type: !125)
!2091 = distinct !DILexicalBlock(scope: !2050, file: !2, line: 21, column: 45)
!2092 = !DILocalVariable(name: "__mptr", scope: !2093, file: !2, line: 21, type: !106)
!2093 = distinct !DILexicalBlock(scope: !2091, file: !2, line: 21, column: 45)
!2094 = !DILocation(line: 13, column: 47, scope: !2050)
!2095 = !DILocation(line: 15, column: 2, scope: !2050)
!2096 = !DILocation(line: 15, column: 24, scope: !2050)
!2097 = !DILocation(line: 16, column: 2, scope: !2050)
!2098 = !DILocation(line: 16, column: 14, scope: !2050)
!2099 = !DILocation(line: 18, column: 26, scope: !2100)
!2100 = distinct !DILexicalBlock(scope: !2050, file: !2, line: 18, column: 6)
!2101 = !DILocation(line: 18, column: 7, scope: !2100)
!2102 = !DILocation(line: 18, column: 6, scope: !2050)
!2103 = !DILocation(line: 19, column: 3, scope: !2100)
!2104 = !DILocation(line: 21, column: 45, scope: !2091)
!2105 = !DILocation(line: 21, column: 45, scope: !2093)
!2106 = !DILocation(line: 21, column: 45, scope: !2050)
!2107 = !DILocation(line: 21, column: 11, scope: !2050)
!2108 = !DILocation(line: 21, column: 9, scope: !2050)
!2109 = !DILocation(line: 22, column: 6, scope: !2110)
!2110 = distinct !DILexicalBlock(scope: !2050, file: !2, line: 22, column: 6)
!2111 = !DILocation(line: 22, column: 6, scope: !2050)
!2112 = !DILocation(line: 23, column: 3, scope: !2110)
!2113 = !DILocation(line: 26, column: 3, scope: !2050)
!2114 = !DILocation(line: 25, column: 2, scope: !2050)
!2115 = !DILocation(line: 25, column: 7, scope: !2050)
!2116 = !DILocation(line: 25, column: 25, scope: !2050)
!2117 = !DILocation(line: 27, column: 7, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2050, file: !2, line: 27, column: 6)
!2119 = !DILocation(line: 27, column: 12, scope: !2118)
!2120 = !DILocation(line: 27, column: 6, scope: !2050)
!2121 = !DILocation(line: 28, column: 3, scope: !2122)
!2122 = distinct !DILexicalBlock(scope: !2118, file: !2, line: 27, column: 31)
!2123 = !DILocation(line: 29, column: 3, scope: !2122)
!2124 = !DILocation(line: 32, column: 34, scope: !2050)
!2125 = !DILocation(line: 32, column: 39, scope: !2050)
!2126 = !DILocation(line: 32, column: 2, scope: !2050)
!2127 = !DILocation(line: 32, column: 7, scope: !2050)
!2128 = !DILocation(line: 32, column: 26, scope: !2050)
!2129 = !DILocation(line: 32, column: 32, scope: !2050)
!2130 = !DILocation(line: 33, column: 46, scope: !2050)
!2131 = !DILocation(line: 33, column: 51, scope: !2050)
!2132 = !DILocation(line: 33, column: 2, scope: !2050)
!2133 = !DILocation(line: 33, column: 7, scope: !2050)
!2134 = !DILocation(line: 33, column: 26, scope: !2050)
!2135 = !DILocation(line: 33, column: 44, scope: !2050)
!2136 = !DILocation(line: 34, column: 48, scope: !2050)
!2137 = !DILocation(line: 34, column: 53, scope: !2050)
!2138 = !DILocation(line: 34, column: 2, scope: !2050)
!2139 = !DILocation(line: 34, column: 7, scope: !2050)
!2140 = !DILocation(line: 34, column: 26, scope: !2050)
!2141 = !DILocation(line: 34, column: 46, scope: !2050)
!2142 = !DILocation(line: 35, column: 33, scope: !2050)
!2143 = !DILocation(line: 35, column: 38, scope: !2050)
!2144 = !DILocation(line: 35, column: 2, scope: !2050)
!2145 = !DILocation(line: 35, column: 7, scope: !2050)
!2146 = !DILocation(line: 35, column: 26, scope: !2050)
!2147 = !DILocation(line: 35, column: 31, scope: !2050)
!2148 = !DILocation(line: 36, column: 32, scope: !2050)
!2149 = !DILocation(line: 36, column: 37, scope: !2050)
!2150 = !DILocation(line: 36, column: 2, scope: !2050)
!2151 = !DILocation(line: 36, column: 7, scope: !2050)
!2152 = !DILocation(line: 36, column: 26, scope: !2050)
!2153 = !DILocation(line: 36, column: 30, scope: !2050)
!2154 = !DILocation(line: 38, column: 2, scope: !2050)
!2155 = !DILocation(line: 39, column: 2, scope: !2050)
!2156 = !DILocation(line: 40, column: 1, scope: !2050)
!2157 = distinct !DISubprogram(name: "has_acpi_companion", scope: !2158, file: !2158, line: 73, type: !2051, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2159)
!2158 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "087557429ebf4c5c9ef14f260264aa7b")
!2159 = !{!2160}
!2160 = !DILocalVariable(name: "dev", arg: 1, scope: !2157, file: !2158, line: 73, type: !820)
!2161 = !DILocation(line: 73, column: 54, scope: !2157)
!2162 = !DILocation(line: 75, column: 29, scope: !2157)
!2163 = !DILocation(line: 75, column: 34, scope: !2157)
!2164 = !DILocation(line: 75, column: 9, scope: !2157)
!2165 = !DILocation(line: 75, column: 2, scope: !2157)
!2166 = !DISubprogram(name: "acpi_get_physical_device_location", scope: !109, file: !109, line: 40, type: !2167, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!2089, !118, !2169}
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2170 = distinct !DISubprogram(name: "acpi_device_handle", scope: !2158, file: !2158, line: 40, type: !2171, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2173)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!118, !107}
!2173 = !{!2174}
!2174 = !DILocalVariable(name: "adev", arg: 1, scope: !2170, file: !2158, line: 40, type: !107)
!2175 = !DILocation(line: 40, column: 66, scope: !2170)
!2176 = !DILocation(line: 42, column: 9, scope: !2170)
!2177 = !DILocation(line: 42, column: 16, scope: !2170)
!2178 = !DILocation(line: 42, column: 22, scope: !2170)
!2179 = !DILocation(line: 42, column: 2, scope: !2170)
!2180 = !DISubprogram(name: "is_acpi_device_node", scope: !109, file: !109, line: 410, type: !141, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2181 = distinct !DISubprogram(name: "kzalloc", scope: !96, file: !96, line: 719, type: !2182, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2184)
!2182 = !DISubroutineType(types: !2183)
!2183 = !{!106, !294, !1966}
!2184 = !{!2185, !2186}
!2185 = !DILocalVariable(name: "size", arg: 1, scope: !2181, file: !96, line: 719, type: !294)
!2186 = !DILocalVariable(name: "flags", arg: 2, scope: !2181, file: !96, line: 719, type: !1966)
!2187 = !DILocation(line: 719, column: 52, scope: !2181)
!2188 = !DILocation(line: 719, column: 64, scope: !2181)
!2189 = !DILocation(line: 721, column: 17, scope: !2181)
!2190 = !DILocation(line: 721, column: 23, scope: !2181)
!2191 = !DILocation(line: 721, column: 29, scope: !2181)
!2192 = !DILocation(line: 721, column: 9, scope: !2181)
!2193 = !DILocation(line: 721, column: 2, scope: !2181)
!2194 = distinct !DISubprogram(name: "acpi_os_free", scope: !2195, file: !2195, line: 60, type: !664, scopeLine: 61, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2196)
!2195 = !DIFile(filename: "./include/acpi/platform/aclinuxex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7b06d020b8e3e9917b26208d66500bfd")
!2196 = !{!2197}
!2197 = !DILocalVariable(name: "memory", arg: 1, scope: !2194, file: !2195, line: 60, type: !106)
!2198 = !DILocation(line: 60, column: 39, scope: !2194)
!2199 = !DILocation(line: 62, column: 8, scope: !2194)
!2200 = !DILocation(line: 62, column: 2, scope: !2194)
!2201 = !DILocation(line: 63, column: 1, scope: !2194)
!2202 = distinct !DISubprogram(name: "kmalloc", scope: !96, file: !96, line: 591, type: !2182, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2203)
!2203 = !{!2204, !2205, !2206}
!2204 = !DILocalVariable(name: "size", arg: 1, scope: !2202, file: !96, line: 591, type: !294)
!2205 = !DILocalVariable(name: "flags", arg: 2, scope: !2202, file: !96, line: 591, type: !1966)
!2206 = !DILocalVariable(name: "index", scope: !2207, file: !96, line: 594, type: !13)
!2207 = distinct !DILexicalBlock(scope: !2208, file: !96, line: 593, column: 42)
!2208 = distinct !DILexicalBlock(scope: !2202, file: !96, line: 593, column: 6)
!2209 = !DILocation(line: 591, column: 61, scope: !2202)
!2210 = !DILocation(line: 591, column: 73, scope: !2202)
!2211 = !DILocation(line: 593, column: 27, scope: !2208)
!2212 = !DILocation(line: 593, column: 6, scope: !2208)
!2213 = !DILocation(line: 593, column: 33, scope: !2208)
!2214 = !DILocation(line: 593, column: 36, scope: !2208)
!2215 = !DILocation(line: 593, column: 6, scope: !2202)
!2216 = !DILocation(line: 594, column: 3, scope: !2207)
!2217 = !DILocation(line: 594, column: 16, scope: !2207)
!2218 = !DILocation(line: 596, column: 7, scope: !2219)
!2219 = distinct !DILexicalBlock(scope: !2207, file: !96, line: 596, column: 7)
!2220 = !DILocation(line: 596, column: 12, scope: !2219)
!2221 = !DILocation(line: 596, column: 7, scope: !2207)
!2222 = !DILocation(line: 597, column: 25, scope: !2219)
!2223 = !DILocation(line: 597, column: 31, scope: !2219)
!2224 = !DILocation(line: 597, column: 11, scope: !2219)
!2225 = !DILocation(line: 597, column: 4, scope: !2219)
!2226 = !DILocation(line: 599, column: 11, scope: !2207)
!2227 = !DILocation(line: 599, column: 9, scope: !2207)
!2228 = !DILocation(line: 601, column: 33, scope: !2207)
!2229 = !DILocation(line: 601, column: 40, scope: !2207)
!2230 = !DILocation(line: 601, column: 20, scope: !2207)
!2231 = !DILocation(line: 601, column: 5, scope: !2207)
!2232 = !DILocation(line: 601, column: 51, scope: !2207)
!2233 = !DILocation(line: 602, column: 5, scope: !2207)
!2234 = !DILocation(line: 602, column: 12, scope: !2207)
!2235 = !DILocation(line: 600, column: 10, scope: !2207)
!2236 = !DILocation(line: 600, column: 3, scope: !2207)
!2237 = !DILocation(line: 603, column: 2, scope: !2208)
!2238 = !DILocation(line: 604, column: 19, scope: !2202)
!2239 = !DILocation(line: 604, column: 25, scope: !2202)
!2240 = !DILocation(line: 604, column: 9, scope: !2202)
!2241 = !DILocation(line: 604, column: 2, scope: !2202)
!2242 = !DILocation(line: 605, column: 1, scope: !2202)
!2243 = !DISubprogram(name: "kmalloc_large", scope: !96, file: !96, line: 531, type: !2182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2244 = distinct !DISubprogram(name: "__kmalloc_index", scope: !96, file: !96, line: 444, type: !2245, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2247)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!13, !294, !143}
!2247 = !{!2248, !2249}
!2248 = !DILocalVariable(name: "size", arg: 1, scope: !2244, file: !96, line: 444, type: !294)
!2249 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2244, file: !96, line: 445, type: !143)
!2250 = !DILocation(line: 444, column: 60, scope: !2244)
!2251 = !DILocation(line: 445, column: 16, scope: !2244)
!2252 = !DILocation(line: 447, column: 7, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2244, file: !96, line: 447, column: 6)
!2254 = !DILocation(line: 447, column: 6, scope: !2244)
!2255 = !DILocation(line: 448, column: 3, scope: !2253)
!2256 = !DILocation(line: 450, column: 6, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2244, file: !96, line: 450, column: 6)
!2258 = !DILocation(line: 450, column: 11, scope: !2257)
!2259 = !DILocation(line: 450, column: 6, scope: !2244)
!2260 = !DILocation(line: 451, column: 3, scope: !2257)
!2261 = !DILocation(line: 453, column: 32, scope: !2262)
!2262 = distinct !DILexicalBlock(scope: !2244, file: !96, line: 453, column: 6)
!2263 = !DILocation(line: 453, column: 37, scope: !2262)
!2264 = !DILocation(line: 453, column: 42, scope: !2262)
!2265 = !DILocation(line: 453, column: 45, scope: !2262)
!2266 = !DILocation(line: 453, column: 50, scope: !2262)
!2267 = !DILocation(line: 453, column: 6, scope: !2244)
!2268 = !DILocation(line: 454, column: 3, scope: !2262)
!2269 = !DILocation(line: 455, column: 32, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2244, file: !96, line: 455, column: 6)
!2271 = !DILocation(line: 455, column: 37, scope: !2270)
!2272 = !DILocation(line: 455, column: 43, scope: !2270)
!2273 = !DILocation(line: 455, column: 46, scope: !2270)
!2274 = !DILocation(line: 455, column: 51, scope: !2270)
!2275 = !DILocation(line: 455, column: 6, scope: !2244)
!2276 = !DILocation(line: 456, column: 3, scope: !2270)
!2277 = !DILocation(line: 457, column: 6, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2244, file: !96, line: 457, column: 6)
!2279 = !DILocation(line: 457, column: 11, scope: !2278)
!2280 = !DILocation(line: 457, column: 6, scope: !2244)
!2281 = !DILocation(line: 457, column: 26, scope: !2278)
!2282 = !DILocation(line: 458, column: 6, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2244, file: !96, line: 458, column: 6)
!2284 = !DILocation(line: 458, column: 11, scope: !2283)
!2285 = !DILocation(line: 458, column: 6, scope: !2244)
!2286 = !DILocation(line: 458, column: 26, scope: !2283)
!2287 = !DILocation(line: 459, column: 6, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2244, file: !96, line: 459, column: 6)
!2289 = !DILocation(line: 459, column: 11, scope: !2288)
!2290 = !DILocation(line: 459, column: 6, scope: !2244)
!2291 = !DILocation(line: 459, column: 26, scope: !2288)
!2292 = !DILocation(line: 460, column: 6, scope: !2293)
!2293 = distinct !DILexicalBlock(scope: !2244, file: !96, line: 460, column: 6)
!2294 = !DILocation(line: 460, column: 11, scope: !2293)
!2295 = !DILocation(line: 460, column: 6, scope: !2244)
!2296 = !DILocation(line: 460, column: 26, scope: !2293)
!2297 = !DILocation(line: 461, column: 6, scope: !2298)
!2298 = distinct !DILexicalBlock(scope: !2244, file: !96, line: 461, column: 6)
!2299 = !DILocation(line: 461, column: 11, scope: !2298)
!2300 = !DILocation(line: 461, column: 6, scope: !2244)
!2301 = !DILocation(line: 461, column: 26, scope: !2298)
!2302 = !DILocation(line: 462, column: 6, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2244, file: !96, line: 462, column: 6)
!2304 = !DILocation(line: 462, column: 11, scope: !2303)
!2305 = !DILocation(line: 462, column: 6, scope: !2244)
!2306 = !DILocation(line: 462, column: 26, scope: !2303)
!2307 = !DILocation(line: 463, column: 6, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2244, file: !96, line: 463, column: 6)
!2309 = !DILocation(line: 463, column: 11, scope: !2308)
!2310 = !DILocation(line: 463, column: 6, scope: !2244)
!2311 = !DILocation(line: 463, column: 26, scope: !2308)
!2312 = !DILocation(line: 464, column: 6, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2244, file: !96, line: 464, column: 6)
!2314 = !DILocation(line: 464, column: 11, scope: !2313)
!2315 = !DILocation(line: 464, column: 6, scope: !2244)
!2316 = !DILocation(line: 464, column: 26, scope: !2313)
!2317 = !DILocation(line: 465, column: 6, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2244, file: !96, line: 465, column: 6)
!2319 = !DILocation(line: 465, column: 11, scope: !2318)
!2320 = !DILocation(line: 465, column: 6, scope: !2244)
!2321 = !DILocation(line: 465, column: 26, scope: !2318)
!2322 = !DILocation(line: 466, column: 6, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2244, file: !96, line: 466, column: 6)
!2324 = !DILocation(line: 466, column: 11, scope: !2323)
!2325 = !DILocation(line: 466, column: 6, scope: !2244)
!2326 = !DILocation(line: 466, column: 26, scope: !2323)
!2327 = !DILocation(line: 467, column: 6, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2244, file: !96, line: 467, column: 6)
!2329 = !DILocation(line: 467, column: 11, scope: !2328)
!2330 = !DILocation(line: 467, column: 6, scope: !2244)
!2331 = !DILocation(line: 467, column: 26, scope: !2328)
!2332 = !DILocation(line: 468, column: 6, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2244, file: !96, line: 468, column: 6)
!2334 = !DILocation(line: 468, column: 11, scope: !2333)
!2335 = !DILocation(line: 468, column: 6, scope: !2244)
!2336 = !DILocation(line: 468, column: 26, scope: !2333)
!2337 = !DILocation(line: 469, column: 6, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2244, file: !96, line: 469, column: 6)
!2339 = !DILocation(line: 469, column: 11, scope: !2338)
!2340 = !DILocation(line: 469, column: 6, scope: !2244)
!2341 = !DILocation(line: 469, column: 26, scope: !2338)
!2342 = !DILocation(line: 470, column: 6, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2244, file: !96, line: 470, column: 6)
!2344 = !DILocation(line: 470, column: 11, scope: !2343)
!2345 = !DILocation(line: 470, column: 6, scope: !2244)
!2346 = !DILocation(line: 470, column: 26, scope: !2343)
!2347 = !DILocation(line: 471, column: 6, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2244, file: !96, line: 471, column: 6)
!2349 = !DILocation(line: 471, column: 11, scope: !2348)
!2350 = !DILocation(line: 471, column: 6, scope: !2244)
!2351 = !DILocation(line: 471, column: 26, scope: !2348)
!2352 = !DILocation(line: 472, column: 6, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2244, file: !96, line: 472, column: 6)
!2354 = !DILocation(line: 472, column: 11, scope: !2353)
!2355 = !DILocation(line: 472, column: 6, scope: !2244)
!2356 = !DILocation(line: 472, column: 26, scope: !2353)
!2357 = !DILocation(line: 473, column: 6, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2244, file: !96, line: 473, column: 6)
!2359 = !DILocation(line: 473, column: 11, scope: !2358)
!2360 = !DILocation(line: 473, column: 6, scope: !2244)
!2361 = !DILocation(line: 473, column: 26, scope: !2358)
!2362 = !DILocation(line: 474, column: 6, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2244, file: !96, line: 474, column: 6)
!2364 = !DILocation(line: 474, column: 11, scope: !2363)
!2365 = !DILocation(line: 474, column: 6, scope: !2244)
!2366 = !DILocation(line: 474, column: 27, scope: !2363)
!2367 = !DILocation(line: 475, column: 6, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2244, file: !96, line: 475, column: 6)
!2369 = !DILocation(line: 475, column: 11, scope: !2368)
!2370 = !DILocation(line: 475, column: 6, scope: !2244)
!2371 = !DILocation(line: 475, column: 32, scope: !2368)
!2372 = !DILocation(line: 477, column: 50, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2244, file: !96, line: 477, column: 6)
!2374 = !{i8 0, i8 2}
!2375 = !DILocation(line: 477, column: 6, scope: !2244)
!2376 = !DILocation(line: 478, column: 3, scope: !2373)
!2377 = !DILocation(line: 478, column: 3, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2379, file: !96, line: 478, column: 3)
!2379 = distinct !DILexicalBlock(scope: !2373, file: !96, line: 478, column: 3)
!2380 = !{i32 -2143466503}
!2381 = !DILocation(line: 478, column: 3, scope: !2379)
!2382 = !DILocation(line: 480, column: 3, scope: !2373)
!2383 = !DILocation(line: 480, column: 3, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2373, file: !96, line: 480, column: 3)
!2385 = !DILocation(line: 480, column: 3, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2384, file: !96, line: 480, column: 3)
!2387 = !DILocation(line: 480, column: 3, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2384, file: !96, line: 480, column: 3)
!2389 = !{i64 2151500996, i64 2151501025, i64 2151501071, i64 2151501129, i64 2151501183, i64 2151501237, i64 2151501292, i64 2151501323}
!2390 = !DILocation(line: 483, column: 2, scope: !2244)
!2391 = !DILocation(line: 484, column: 1, scope: !2244)
!2392 = !DISubprogram(name: "kmalloc_trace", scope: !96, file: !96, line: 525, type: !2393, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!106, !2395, !1966, !294}
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2397, line: 11, flags: DIFlagFwdDecl)
!2397 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2398 = distinct !DISubprogram(name: "kmalloc_type", scope: !96, file: !96, line: 401, type: !2399, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2401)
!2399 = !DISubroutineType(types: !2400)
!2400 = !{!95, !1966, !297}
!2401 = !{!2402, !2403}
!2402 = !DILocalVariable(name: "flags", arg: 1, scope: !2398, file: !96, line: 401, type: !1966)
!2403 = !DILocalVariable(name: "caller", arg: 2, scope: !2398, file: !96, line: 401, type: !297)
!2404 = !DILocation(line: 401, column: 67, scope: !2398)
!2405 = !DILocation(line: 401, column: 88, scope: !2398)
!2406 = !DILocation(line: 407, column: 6, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2398, file: !96, line: 407, column: 6)
!2408 = !DILocation(line: 407, column: 6, scope: !2398)
!2409 = !DILocation(line: 413, column: 3, scope: !2407)
!2410 = !DILocation(line: 423, column: 38, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2398, file: !96, line: 423, column: 6)
!2412 = !DILocation(line: 423, column: 44, scope: !2411)
!2413 = !DILocation(line: 423, column: 6, scope: !2398)
!2414 = !DILocation(line: 424, column: 3, scope: !2411)
!2415 = !DILocation(line: 426, column: 3, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2398, file: !96, line: 425, column: 6)
!2417 = !DILocation(line: 429, column: 1, scope: !2398)
!2418 = !DISubprogram(name: "__kmalloc", scope: !96, file: !96, line: 488, type: !2182, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2419 = !DISubprogram(name: "__compiletime_assert_125", scope: !96, file: !96, line: 478, type: !1269, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2420 = !DISubprogram(name: "kfree", scope: !96, file: !96, line: 227, type: !2421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{null, !152}
!2423 = distinct !DISubprogram(name: "panel_show", scope: !2, file: !2, line: 42, type: !1987, scopeLine: 44, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2424)
!2424 = !{!2425, !2426, !2427, !2428}
!2425 = !DILocalVariable(name: "dev", arg: 1, scope: !2423, file: !2, line: 42, type: !820)
!2426 = !DILocalVariable(name: "attr", arg: 2, scope: !2423, file: !2, line: 42, type: !1989)
!2427 = !DILocalVariable(name: "buf", arg: 3, scope: !2423, file: !2, line: 43, type: !247)
!2428 = !DILocalVariable(name: "panel", scope: !2423, file: !2, line: 45, type: !163)
!2429 = !DILocation(line: 42, column: 42, scope: !2423)
!2430 = !DILocation(line: 42, column: 72, scope: !2423)
!2431 = !DILocation(line: 43, column: 8, scope: !2423)
!2432 = !DILocation(line: 45, column: 2, scope: !2423)
!2433 = !DILocation(line: 45, column: 14, scope: !2423)
!2434 = !DILocation(line: 47, column: 10, scope: !2423)
!2435 = !DILocation(line: 47, column: 15, scope: !2423)
!2436 = !DILocation(line: 47, column: 34, scope: !2423)
!2437 = !DILocation(line: 47, column: 2, scope: !2423)
!2438 = !DILocation(line: 49, column: 9, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2423, file: !2, line: 47, column: 41)
!2440 = !DILocation(line: 50, column: 3, scope: !2439)
!2441 = !DILocation(line: 52, column: 9, scope: !2439)
!2442 = !DILocation(line: 53, column: 3, scope: !2439)
!2443 = !DILocation(line: 55, column: 9, scope: !2439)
!2444 = !DILocation(line: 56, column: 3, scope: !2439)
!2445 = !DILocation(line: 58, column: 9, scope: !2439)
!2446 = !DILocation(line: 59, column: 3, scope: !2439)
!2447 = !DILocation(line: 61, column: 9, scope: !2439)
!2448 = !DILocation(line: 62, column: 3, scope: !2439)
!2449 = !DILocation(line: 64, column: 9, scope: !2439)
!2450 = !DILocation(line: 65, column: 3, scope: !2439)
!2451 = !DILocation(line: 67, column: 9, scope: !2439)
!2452 = !DILocation(line: 68, column: 2, scope: !2439)
!2453 = !DILocation(line: 69, column: 20, scope: !2423)
!2454 = !DILocation(line: 69, column: 33, scope: !2423)
!2455 = !DILocation(line: 69, column: 9, scope: !2423)
!2456 = !DILocation(line: 70, column: 1, scope: !2423)
!2457 = !DILocation(line: 69, column: 2, scope: !2423)
!2458 = !DISubprogram(name: "sysfs_emit", scope: !273, file: !273, line: 357, type: !2459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!52, !247, !163, null}
!2461 = distinct !DISubprogram(name: "vertical_position_show", scope: !2, file: !2, line: 73, type: !1987, scopeLine: 75, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2462)
!2462 = !{!2463, !2464, !2465, !2466}
!2463 = !DILocalVariable(name: "dev", arg: 1, scope: !2461, file: !2, line: 73, type: !820)
!2464 = !DILocalVariable(name: "attr", arg: 2, scope: !2461, file: !2, line: 74, type: !1989)
!2465 = !DILocalVariable(name: "buf", arg: 3, scope: !2461, file: !2, line: 74, type: !247)
!2466 = !DILocalVariable(name: "vertical_position", scope: !2461, file: !2, line: 76, type: !163)
!2467 = !DILocation(line: 73, column: 54, scope: !2461)
!2468 = !DILocation(line: 74, column: 27, scope: !2461)
!2469 = !DILocation(line: 74, column: 39, scope: !2461)
!2470 = !DILocation(line: 76, column: 2, scope: !2461)
!2471 = !DILocation(line: 76, column: 14, scope: !2461)
!2472 = !DILocation(line: 78, column: 10, scope: !2461)
!2473 = !DILocation(line: 78, column: 15, scope: !2461)
!2474 = !DILocation(line: 78, column: 34, scope: !2461)
!2475 = !DILocation(line: 78, column: 2, scope: !2461)
!2476 = !DILocation(line: 80, column: 21, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2461, file: !2, line: 78, column: 53)
!2478 = !DILocation(line: 81, column: 3, scope: !2477)
!2479 = !DILocation(line: 83, column: 21, scope: !2477)
!2480 = !DILocation(line: 84, column: 3, scope: !2477)
!2481 = !DILocation(line: 86, column: 21, scope: !2477)
!2482 = !DILocation(line: 87, column: 3, scope: !2477)
!2483 = !DILocation(line: 89, column: 21, scope: !2477)
!2484 = !DILocation(line: 90, column: 2, scope: !2477)
!2485 = !DILocation(line: 91, column: 20, scope: !2461)
!2486 = !DILocation(line: 91, column: 33, scope: !2461)
!2487 = !DILocation(line: 91, column: 9, scope: !2461)
!2488 = !DILocation(line: 92, column: 1, scope: !2461)
!2489 = !DILocation(line: 91, column: 2, scope: !2461)
!2490 = distinct !DISubprogram(name: "horizontal_position_show", scope: !2, file: !2, line: 95, type: !1987, scopeLine: 97, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2491)
!2491 = !{!2492, !2493, !2494, !2495}
!2492 = !DILocalVariable(name: "dev", arg: 1, scope: !2490, file: !2, line: 95, type: !820)
!2493 = !DILocalVariable(name: "attr", arg: 2, scope: !2490, file: !2, line: 96, type: !1989)
!2494 = !DILocalVariable(name: "buf", arg: 3, scope: !2490, file: !2, line: 96, type: !247)
!2495 = !DILocalVariable(name: "horizontal_position", scope: !2490, file: !2, line: 98, type: !163)
!2496 = !DILocation(line: 95, column: 56, scope: !2490)
!2497 = !DILocation(line: 96, column: 27, scope: !2490)
!2498 = !DILocation(line: 96, column: 39, scope: !2490)
!2499 = !DILocation(line: 98, column: 2, scope: !2490)
!2500 = !DILocation(line: 98, column: 14, scope: !2490)
!2501 = !DILocation(line: 100, column: 10, scope: !2490)
!2502 = !DILocation(line: 100, column: 15, scope: !2490)
!2503 = !DILocation(line: 100, column: 34, scope: !2490)
!2504 = !DILocation(line: 100, column: 2, scope: !2490)
!2505 = !DILocation(line: 102, column: 23, scope: !2506)
!2506 = distinct !DILexicalBlock(scope: !2490, file: !2, line: 100, column: 55)
!2507 = !DILocation(line: 103, column: 3, scope: !2506)
!2508 = !DILocation(line: 105, column: 23, scope: !2506)
!2509 = !DILocation(line: 106, column: 3, scope: !2506)
!2510 = !DILocation(line: 108, column: 23, scope: !2506)
!2511 = !DILocation(line: 109, column: 3, scope: !2506)
!2512 = !DILocation(line: 111, column: 23, scope: !2506)
!2513 = !DILocation(line: 112, column: 2, scope: !2506)
!2514 = !DILocation(line: 113, column: 20, scope: !2490)
!2515 = !DILocation(line: 113, column: 33, scope: !2490)
!2516 = !DILocation(line: 113, column: 9, scope: !2490)
!2517 = !DILocation(line: 114, column: 1, scope: !2490)
!2518 = !DILocation(line: 113, column: 2, scope: !2490)
!2519 = distinct !DISubprogram(name: "dock_show", scope: !2, file: !2, line: 117, type: !1987, scopeLine: 119, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2520)
!2520 = !{!2521, !2522, !2523}
!2521 = !DILocalVariable(name: "dev", arg: 1, scope: !2519, file: !2, line: 117, type: !820)
!2522 = !DILocalVariable(name: "attr", arg: 2, scope: !2519, file: !2, line: 117, type: !1989)
!2523 = !DILocalVariable(name: "buf", arg: 3, scope: !2519, file: !2, line: 118, type: !247)
!2524 = !DILocation(line: 117, column: 41, scope: !2519)
!2525 = !DILocation(line: 117, column: 71, scope: !2519)
!2526 = !DILocation(line: 118, column: 8, scope: !2519)
!2527 = !DILocation(line: 120, column: 20, scope: !2519)
!2528 = !DILocation(line: 121, column: 3, scope: !2519)
!2529 = !DILocation(line: 121, column: 8, scope: !2519)
!2530 = !DILocation(line: 121, column: 27, scope: !2519)
!2531 = !DILocation(line: 120, column: 9, scope: !2519)
!2532 = !DILocation(line: 120, column: 2, scope: !2519)
!2533 = distinct !DISubprogram(name: "lid_show", scope: !2, file: !2, line: 125, type: !1987, scopeLine: 127, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !9, retainedNodes: !2534)
!2534 = !{!2535, !2536, !2537}
!2535 = !DILocalVariable(name: "dev", arg: 1, scope: !2533, file: !2, line: 125, type: !820)
!2536 = !DILocalVariable(name: "attr", arg: 2, scope: !2533, file: !2, line: 125, type: !1989)
!2537 = !DILocalVariable(name: "buf", arg: 3, scope: !2533, file: !2, line: 126, type: !247)
!2538 = !DILocation(line: 125, column: 40, scope: !2533)
!2539 = !DILocation(line: 125, column: 70, scope: !2533)
!2540 = !DILocation(line: 126, column: 8, scope: !2533)
!2541 = !DILocation(line: 128, column: 20, scope: !2533)
!2542 = !DILocation(line: 129, column: 3, scope: !2533)
!2543 = !DILocation(line: 129, column: 8, scope: !2533)
!2544 = !DILocation(line: 129, column: 27, scope: !2533)
!2545 = !DILocation(line: 128, column: 9, scope: !2533)
!2546 = !DILocation(line: 128, column: 2, scope: !2533)
