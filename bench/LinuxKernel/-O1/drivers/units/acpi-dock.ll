; ModuleID = 'drivers/acpi/dock.c'
source_filename = "drivers/acpi/dock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_is_dock_device: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad is_dock_device ; .previous"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.1 }
%union.anon.1 = type { ptr }
%struct.list_head = type { ptr, ptr }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.dock_station = type { ptr, i64, i32, %struct.list_head, %struct.list_head, ptr }
%struct.dock_dependent_device = type { %struct.list_head, ptr }
%struct.acpi_device = type { i32, i32, ptr, %struct.fwnode_handle, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, ptr, ptr, ptr, ptr, %struct.device, i32, i32, %struct.list_head, %struct.mutex, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], i32, %struct.acpi_pnp_type, i64, ptr, %struct.list_head, [40 x i8], [20 x i8], ptr }
%struct.acpi_pnp_type = type { i32 }
%struct.acpi_device_power = type { i32, %struct.acpi_device_power_flags, [5 x %struct.acpi_device_power_state], i8 }
%struct.acpi_device_power_flags = type { i32 }
%struct.acpi_device_power_state = type { %struct.anon.3, i32, i32, %struct.list_head }
%struct.anon.3 = type { i8 }
%struct.acpi_device_wakeup = type { ptr, i64, i64, %struct.list_head, %struct.acpi_device_wakeup_flags, %struct.acpi_device_wakeup_context, ptr, i32, i32 }
%struct.acpi_device_wakeup_flags = type { i8 }
%struct.acpi_device_wakeup_context = type { ptr, ptr }
%struct.acpi_device_perf = type { i32, %struct.acpi_device_perf_flags, i32, ptr }
%struct.acpi_device_perf_flags = type { i8 }
%struct.acpi_device_dir = type { ptr }
%struct.acpi_device_data = type { ptr, %struct.list_head, ptr, %struct.list_head }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.pdev_archdata = type {}
%struct.platform_device_info = type { ptr, ptr, i8, ptr, i32, ptr, i32, ptr, i64, i64, ptr }
%struct.acpi_object_list = type { i32, ptr }
%union.acpi_object = type { %struct.anon.10 }
%struct.anon.10 = type { i32, i32, i64, i32 }
%struct.anon.5 = type { i32, i64 }
%struct.acpi_hotplug_context = type { ptr, ptr, ptr, ptr }

@__param_str_immediate_undock = internal constant [22 x i8] c"acpi.immediate_undock\00", align 16, !dbg !0
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 8
@immediate_undock = internal global i8 1, align 1, !dbg !2083
@__param_immediate_undock = internal constant %struct.kernel_param { ptr @__param_str_immediate_undock, ptr null, ptr @param_ops_bool, i16 420, i8 -1, i8 0, %union.anon.1 { ptr @immediate_undock } }, section "__param", align 8, !dbg !2041
@__UNIQUE_ID_immediate_undocktype206 = internal constant [36 x i8] c"acpi.parmtype=immediate_undock:bool\00", section ".modinfo", align 1, !dbg !2043
@__UNIQUE_ID_immediate_undock207 = internal constant [213 x i8] c"acpi.parm=immediate_undock:1 (default) will cause the driver to undock immediately when the undock button is pressed, 0 will cause the driver to wait for userspace to write the undock sysfs file  before undocking\00", section ".modinfo", align 1, !dbg !2048
@dock_station_count = internal global i32 0, align 4, !dbg !2081
@dock_stations = internal global %struct.list_head { ptr @dock_stations, ptr @dock_stations }, align 8, !dbg !2090
@__UNIQUE_ID___addressable_is_dock_device208 = internal global ptr @is_dock_device, section ".discard.addressable", align 8, !dbg !2053
@.str = private unnamed_addr constant [3 x i8] c"\013\00", align 1, !dbg !2055
@.str.1 = private unnamed_addr constant [17 x i8] c"Unable to dock!\0A\00", align 1, !dbg !2058
@.str.2 = private unnamed_addr constant [5 x i8] c"dock\00", align 1, !dbg !2063
@jiffies = external dso_local global i64, section ".data..cacheline_aligned", align 64
@dock_attribute_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @dock_attributes, ptr null }, align 8, !dbg !2128
@.str.3 = private unnamed_addr constant [42 x i8] c"ACPI dock station (docks/bays count: %d)\0A\00", align 1, !dbg !2066
@.str.4 = private unnamed_addr constant [25 x i8] c"%s encountered error %d\0A\00", align 1, !dbg !2071
@__func__.acpi_dock_add = private unnamed_addr constant [14 x i8] c"acpi_dock_add\00", align 1, !dbg !2076
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.5 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !2085
@.str.6 = private unnamed_addr constant [3 x i8] c"\016\00", align 1, !dbg !2092
@.str.7 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !2094
@.str.8 = private unnamed_addr constant [8 x i8] c"docking\00", align 1, !dbg !2097
@.str.9 = private unnamed_addr constant [10 x i8] c"undocking\00", align 1, !dbg !2099
@.str.10 = private unnamed_addr constant [5 x i8] c"_DCK\00", align 1, !dbg !2104
@.str.11 = private unnamed_addr constant [31 x i8] c"Failed to execute _DCK (0x%x)\0A\00", align 1, !dbg !2106
@.str.12 = private unnamed_addr constant [5 x i8] c"_STA\00", align 1, !dbg !2111
@.str.13 = private unnamed_addr constant [13 x i8] c"EVENT=undock\00", align 1, !dbg !2113
@.str.14 = private unnamed_addr constant [11 x i8] c"EVENT=dock\00", align 1, !dbg !2118
@.str.15 = private unnamed_addr constant [19 x i8] c"Unable to undock!\0A\00", align 1, !dbg !2123
@dock_attributes = internal global [6 x ptr] [ptr @dev_attr_docked, ptr @dev_attr_flags, ptr @dev_attr_undock, ptr @dev_attr_uid, ptr @dev_attr_type, ptr null], align 16, !dbg !2130
@dev_attr_docked = internal global %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 292 }, ptr @docked_show, ptr null }, align 8, !dbg !2138
@dev_attr_flags = internal global %struct.device_attribute { %struct.attribute { ptr @.str.18, i16 292 }, ptr @flags_show, ptr null }, align 8, !dbg !2157
@dev_attr_undock = internal global %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 128 }, ptr null, ptr @undock_store }, align 8, !dbg !2163
@dev_attr_uid = internal global %struct.device_attribute { %struct.attribute { ptr @.str.21, i16 292 }, ptr @uid_show, ptr null }, align 8, !dbg !2167
@dev_attr_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str.24, i16 292 }, ptr @type_show, ptr null }, align 8, !dbg !2175
@.str.16 = private unnamed_addr constant [7 x i8] c"docked\00", align 1, !dbg !2135
@.str.17 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1, !dbg !2152
@.str.18 = private unnamed_addr constant [6 x i8] c"flags\00", align 1, !dbg !2154
@.str.19 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1, !dbg !2159
@.str.20 = private unnamed_addr constant [7 x i8] c"undock\00", align 1, !dbg !2161
@.str.21 = private unnamed_addr constant [4 x i8] c"uid\00", align 1, !dbg !2165
@.str.22 = private unnamed_addr constant [5 x i8] c"_UID\00", align 1, !dbg !2169
@.str.23 = private unnamed_addr constant [6 x i8] c"%llx\0A\00", align 1, !dbg !2171
@.str.24 = private unnamed_addr constant [5 x i8] c"type\00", align 1, !dbg !2173
@.str.25 = private unnamed_addr constant [13 x i8] c"dock_station\00", align 1, !dbg !2177
@.str.26 = private unnamed_addr constant [8 x i8] c"ata_bay\00", align 1, !dbg !2179
@.str.27 = private unnamed_addr constant [12 x i8] c"battery_bay\00", align 1, !dbg !2181
@.str.28 = private unnamed_addr constant [8 x i8] c"unknown\00", align 1, !dbg !2186
@llvm.compiler.used = appending global [4 x ptr] [ptr @__param_immediate_undock, ptr @__UNIQUE_ID_immediate_undocktype206, ptr @__UNIQUE_ID_immediate_undock207, ptr @__UNIQUE_ID___addressable_is_dock_device208], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @register_dock_dependent_device(ptr noundef %adev, ptr noundef %dshandle) #0 align 16 !dbg !2200 {
entry:
  %adev.addr = alloca ptr, align 8
  %dshandle.addr = alloca ptr, align 8
  %ds = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !2204, metadata !DIExpression()), !dbg !2207
  store ptr %dshandle, ptr %dshandle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dshandle.addr, metadata !2205, metadata !DIExpression()), !dbg !2208
  call void @llvm.lifetime.start.p0(i64 8, ptr %ds) #15, !dbg !2209
  call void @llvm.dbg.declare(metadata ptr %ds, metadata !2206, metadata !DIExpression()), !dbg !2210
  %0 = load ptr, ptr %dshandle.addr, align 8, !dbg !2211
  %call = call ptr @find_dock_station(ptr noundef %0) #16, !dbg !2212
  store ptr %call, ptr %ds, align 8, !dbg !2210
  %1 = load ptr, ptr %ds, align 8, !dbg !2213
  %tobool = icmp ne ptr %1, null, !dbg !2213
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2215

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %ds, align 8, !dbg !2216
  %3 = load ptr, ptr %adev.addr, align 8, !dbg !2217
  %call1 = call ptr @find_dock_dependent_device(ptr noundef %2, ptr noundef %3) #16, !dbg !2218
  %tobool2 = icmp ne ptr %call1, null, !dbg !2218
  br i1 %tobool2, label %if.end, label %if.then, !dbg !2219

if.then:                                          ; preds = %land.lhs.true
  %4 = load ptr, ptr %ds, align 8, !dbg !2220
  %5 = load ptr, ptr %adev.addr, align 8, !dbg !2221
  %call3 = call i32 @add_dock_dependent_device(ptr noundef %4, ptr noundef %5) #16, !dbg !2222
  br label %if.end, !dbg !2222

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %ds) #15, !dbg !2223
  ret void, !dbg !2223
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @find_dock_station(ptr noundef %handle) #0 align 16 !dbg !2224 {
entry:
  %retval = alloca ptr, align 8
  %handle.addr = alloca ptr, align 8
  %ds = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr3 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !2228, metadata !DIExpression()), !dbg !2236
  call void @llvm.lifetime.start.p0(i64 8, ptr %ds) #15, !dbg !2237
  call void @llvm.dbg.declare(metadata ptr %ds, metadata !2229, metadata !DIExpression()), !dbg !2238
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !2239
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2230, metadata !DIExpression()), !dbg !2239
  %0 = load ptr, ptr @dock_stations, align 8, !dbg !2239
  store ptr %0, ptr %__mptr, align 8, !dbg !2239
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2239
  %add.ptr = getelementptr i8, ptr %1, i64 -40, !dbg !2239
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2239
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !2240
  %2 = load ptr, ptr %tmp, align 8, !dbg !2239
  store ptr %2, ptr %ds, align 8, !dbg !2240
  br label %for.cond, !dbg !2240

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %ds, align 8, !dbg !2241
  %sibling = getelementptr inbounds %struct.dock_station, ptr %3, i32 0, i32 4, !dbg !2241
  %cmp = icmp eq ptr %sibling, @dock_stations, !dbg !2241
  %lnot = xor i1 %cmp, true, !dbg !2241
  br i1 %lnot, label %for.body, label %for.end, !dbg !2240

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %ds, align 8, !dbg !2242
  %handle1 = getelementptr inbounds %struct.dock_station, ptr %4, i32 0, i32 0, !dbg !2244
  %5 = load ptr, ptr %handle1, align 8, !dbg !2244
  %6 = load ptr, ptr %handle.addr, align 8, !dbg !2245
  %cmp2 = icmp eq ptr %5, %6, !dbg !2246
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2247

if.then:                                          ; preds = %for.body
  %7 = load ptr, ptr %ds, align 8, !dbg !2248
  store ptr %7, ptr %retval, align 8, !dbg !2249
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2249

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2245

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr3) #15, !dbg !2250
  call void @llvm.dbg.declare(metadata ptr %__mptr3, metadata !2233, metadata !DIExpression()), !dbg !2250
  %8 = load ptr, ptr %ds, align 8, !dbg !2250
  %sibling4 = getelementptr inbounds %struct.dock_station, ptr %8, i32 0, i32 4, !dbg !2250
  %next = getelementptr inbounds %struct.list_head, ptr %sibling4, i32 0, i32 0, !dbg !2250
  %9 = load ptr, ptr %next, align 8, !dbg !2250
  store ptr %9, ptr %__mptr3, align 8, !dbg !2250
  %10 = load ptr, ptr %__mptr3, align 8, !dbg !2250
  %add.ptr6 = getelementptr i8, ptr %10, i64 -40, !dbg !2250
  store ptr %add.ptr6, ptr %tmp5, align 8, !dbg !2250
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr3) #15, !dbg !2241
  %11 = load ptr, ptr %tmp5, align 8, !dbg !2250
  store ptr %11, ptr %ds, align 8, !dbg !2241
  br label %for.cond, !dbg !2241, !llvm.loop !2251

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !2255
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2255

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %ds) #15, !dbg !2256
  %12 = load ptr, ptr %retval, align 8, !dbg !2256
  ret ptr %12, !dbg !2256
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @find_dock_dependent_device(ptr noundef %ds, ptr noundef %adev) #0 align 16 !dbg !2257 {
entry:
  %retval = alloca ptr, align 8
  %ds.addr = alloca ptr, align 8
  %adev.addr = alloca ptr, align 8
  %dd = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr4 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  store ptr %ds, ptr %ds.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ds.addr, metadata !2261, metadata !DIExpression()), !dbg !2270
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !2262, metadata !DIExpression()), !dbg !2271
  call void @llvm.lifetime.start.p0(i64 8, ptr %dd) #15, !dbg !2272
  call void @llvm.dbg.declare(metadata ptr %dd, metadata !2263, metadata !DIExpression()), !dbg !2273
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !2274
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2264, metadata !DIExpression()), !dbg !2274
  %0 = load ptr, ptr %ds.addr, align 8, !dbg !2274
  %dependent_devices = getelementptr inbounds %struct.dock_station, ptr %0, i32 0, i32 3, !dbg !2274
  %next = getelementptr inbounds %struct.list_head, ptr %dependent_devices, i32 0, i32 0, !dbg !2274
  %1 = load ptr, ptr %next, align 8, !dbg !2274
  store ptr %1, ptr %__mptr, align 8, !dbg !2274
  %2 = load ptr, ptr %__mptr, align 8, !dbg !2274
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !2274
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2274
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !2275
  %3 = load ptr, ptr %tmp, align 8, !dbg !2274
  store ptr %3, ptr %dd, align 8, !dbg !2275
  br label %for.cond, !dbg !2275

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %dd, align 8, !dbg !2276
  %list = getelementptr inbounds %struct.dock_dependent_device, ptr %4, i32 0, i32 0, !dbg !2276
  %5 = load ptr, ptr %ds.addr, align 8, !dbg !2276
  %dependent_devices1 = getelementptr inbounds %struct.dock_station, ptr %5, i32 0, i32 3, !dbg !2276
  %cmp = icmp eq ptr %list, %dependent_devices1, !dbg !2276
  %lnot = xor i1 %cmp, true, !dbg !2276
  br i1 %lnot, label %for.body, label %for.end, !dbg !2275

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %adev.addr, align 8, !dbg !2277
  %7 = load ptr, ptr %dd, align 8, !dbg !2279
  %adev2 = getelementptr inbounds %struct.dock_dependent_device, ptr %7, i32 0, i32 1, !dbg !2280
  %8 = load ptr, ptr %adev2, align 8, !dbg !2280
  %cmp3 = icmp eq ptr %6, %8, !dbg !2281
  br i1 %cmp3, label %if.then, label %if.end, !dbg !2282

if.then:                                          ; preds = %for.body
  %9 = load ptr, ptr %dd, align 8, !dbg !2283
  store ptr %9, ptr %retval, align 8, !dbg !2284
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2284

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2280

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr4) #15, !dbg !2285
  call void @llvm.dbg.declare(metadata ptr %__mptr4, metadata !2267, metadata !DIExpression()), !dbg !2285
  %10 = load ptr, ptr %dd, align 8, !dbg !2285
  %list5 = getelementptr inbounds %struct.dock_dependent_device, ptr %10, i32 0, i32 0, !dbg !2285
  %next6 = getelementptr inbounds %struct.list_head, ptr %list5, i32 0, i32 0, !dbg !2285
  %11 = load ptr, ptr %next6, align 8, !dbg !2285
  store ptr %11, ptr %__mptr4, align 8, !dbg !2285
  %12 = load ptr, ptr %__mptr4, align 8, !dbg !2285
  %add.ptr8 = getelementptr i8, ptr %12, i64 0, !dbg !2285
  store ptr %add.ptr8, ptr %tmp7, align 8, !dbg !2285
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr4) #15, !dbg !2276
  %13 = load ptr, ptr %tmp7, align 8, !dbg !2285
  store ptr %13, ptr %dd, align 8, !dbg !2276
  br label %for.cond, !dbg !2276, !llvm.loop !2286

for.end:                                          ; preds = %for.cond
  store ptr null, ptr %retval, align 8, !dbg !2288
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2288

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dd) #15, !dbg !2289
  %14 = load ptr, ptr %retval, align 8, !dbg !2289
  ret ptr %14, !dbg !2289
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @add_dock_dependent_device(ptr noundef %ds, ptr noundef %adev) #0 align 16 !dbg !2290 {
entry:
  %retval = alloca i32, align 4
  %ds.addr = alloca ptr, align 8
  %adev.addr = alloca ptr, align 8
  %dd = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ds, ptr %ds.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ds.addr, metadata !2294, metadata !DIExpression()), !dbg !2297
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !2295, metadata !DIExpression()), !dbg !2298
  call void @llvm.lifetime.start.p0(i64 8, ptr %dd) #15, !dbg !2299
  call void @llvm.dbg.declare(metadata ptr %dd, metadata !2296, metadata !DIExpression()), !dbg !2300
  %call = call noalias ptr @kzalloc(i64 noundef 24, i32 noundef 3264) #17, !dbg !2301
  store ptr %call, ptr %dd, align 8, !dbg !2302
  %0 = load ptr, ptr %dd, align 8, !dbg !2303
  %tobool = icmp ne ptr %0, null, !dbg !2303
  br i1 %tobool, label %if.end, label %if.then, !dbg !2305

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !2306
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2306

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %adev.addr, align 8, !dbg !2307
  %2 = load ptr, ptr %dd, align 8, !dbg !2308
  %adev1 = getelementptr inbounds %struct.dock_dependent_device, ptr %2, i32 0, i32 1, !dbg !2309
  store ptr %1, ptr %adev1, align 8, !dbg !2310
  %3 = load ptr, ptr %dd, align 8, !dbg !2311
  %list = getelementptr inbounds %struct.dock_dependent_device, ptr %3, i32 0, i32 0, !dbg !2312
  call void @INIT_LIST_HEAD(ptr noundef %list) #16, !dbg !2313
  %4 = load ptr, ptr %dd, align 8, !dbg !2314
  %list2 = getelementptr inbounds %struct.dock_dependent_device, ptr %4, i32 0, i32 0, !dbg !2315
  %5 = load ptr, ptr %ds.addr, align 8, !dbg !2316
  %dependent_devices = getelementptr inbounds %struct.dock_station, ptr %5, i32 0, i32 3, !dbg !2317
  call void @list_add_tail(ptr noundef %list2, ptr noundef %dependent_devices) #16, !dbg !2318
  store i32 0, ptr %retval, align 4, !dbg !2319
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2319

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dd) #15, !dbg !2320
  %6 = load i32, ptr %retval, align 4, !dbg !2320
  ret i32 %6, !dbg !2320
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @is_dock_device(ptr noundef %adev) #0 align 16 !dbg !2321 {
entry:
  %retval = alloca i32, align 4
  %adev.addr = alloca ptr, align 8
  %dock_station = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr7 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !2323, metadata !DIExpression()), !dbg !2331
  call void @llvm.lifetime.start.p0(i64 8, ptr %dock_station) #15, !dbg !2332
  call void @llvm.dbg.declare(metadata ptr %dock_station, metadata !2324, metadata !DIExpression()), !dbg !2333
  %0 = load i32, ptr @dock_station_count, align 4, !dbg !2334
  %tobool = icmp ne i32 %0, 0, !dbg !2334
  br i1 %tobool, label %if.end, label %if.then, !dbg !2336

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2337
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2337

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %adev.addr, align 8, !dbg !2338
  %handle = getelementptr inbounds %struct.acpi_device, ptr %1, i32 0, i32 2, !dbg !2340
  %2 = load ptr, ptr %handle, align 8, !dbg !2340
  %call = call zeroext i1 @acpi_dock_match(ptr noundef %2) #16, !dbg !2341
  br i1 %call, label %if.then1, label %if.end2, !dbg !2342

if.then1:                                         ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2343
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2343

if.end2:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !2344
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2325, metadata !DIExpression()), !dbg !2344
  %3 = load ptr, ptr @dock_stations, align 8, !dbg !2344
  store ptr %3, ptr %__mptr, align 8, !dbg !2344
  %4 = load ptr, ptr %__mptr, align 8, !dbg !2344
  %add.ptr = getelementptr i8, ptr %4, i64 -40, !dbg !2344
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2344
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !2345
  %5 = load ptr, ptr %tmp, align 8, !dbg !2344
  store ptr %5, ptr %dock_station, align 8, !dbg !2345
  br label %for.cond, !dbg !2345

for.cond:                                         ; preds = %for.inc, %if.end2
  %6 = load ptr, ptr %dock_station, align 8, !dbg !2346
  %sibling = getelementptr inbounds %struct.dock_station, ptr %6, i32 0, i32 4, !dbg !2346
  %cmp = icmp eq ptr %sibling, @dock_stations, !dbg !2346
  %lnot = xor i1 %cmp, true, !dbg !2346
  br i1 %lnot, label %for.body, label %for.end, !dbg !2345

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %dock_station, align 8, !dbg !2347
  %8 = load ptr, ptr %adev.addr, align 8, !dbg !2349
  %call3 = call ptr @find_dock_dependent_device(ptr noundef %7, ptr noundef %8) #16, !dbg !2350
  %tobool4 = icmp ne ptr %call3, null, !dbg !2350
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !2351

if.then5:                                         ; preds = %for.body
  store i32 1, ptr %retval, align 4, !dbg !2352
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2352

if.end6:                                          ; preds = %for.body
  br label %for.inc, !dbg !2353

for.inc:                                          ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr7) #15, !dbg !2354
  call void @llvm.dbg.declare(metadata ptr %__mptr7, metadata !2328, metadata !DIExpression()), !dbg !2354
  %9 = load ptr, ptr %dock_station, align 8, !dbg !2354
  %sibling8 = getelementptr inbounds %struct.dock_station, ptr %9, i32 0, i32 4, !dbg !2354
  %next = getelementptr inbounds %struct.list_head, ptr %sibling8, i32 0, i32 0, !dbg !2354
  %10 = load ptr, ptr %next, align 8, !dbg !2354
  store ptr %10, ptr %__mptr7, align 8, !dbg !2354
  %11 = load ptr, ptr %__mptr7, align 8, !dbg !2354
  %add.ptr10 = getelementptr i8, ptr %11, i64 -40, !dbg !2354
  store ptr %add.ptr10, ptr %tmp9, align 8, !dbg !2354
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr7) #15, !dbg !2346
  %12 = load ptr, ptr %tmp9, align 8, !dbg !2354
  store ptr %12, ptr %dock_station, align 8, !dbg !2346
  br label %for.cond, !dbg !2346, !llvm.loop !2355

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !2357
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2357

cleanup:                                          ; preds = %for.end, %if.then5, %if.then1, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dock_station) #15, !dbg !2358
  %13 = load i32, ptr %retval, align 4, !dbg !2358
  ret i32 %13, !dbg !2358
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2359 dso_local zeroext i1 @acpi_dock_match(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @dock_notify(ptr noundef %adev, i32 noundef %event) #0 align 16 !dbg !2362 {
entry:
  %retval = alloca i32, align 4
  %adev.addr = alloca ptr, align 8
  %event.addr = alloca i32, align 4
  %handle = alloca ptr, align 8
  %ds = alloca ptr, align 8
  %surprise_removal = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !2364, metadata !DIExpression()), !dbg !2369
  store i32 %event, ptr %event.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !2365, metadata !DIExpression()), !dbg !2370
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #15, !dbg !2371
  call void @llvm.dbg.declare(metadata ptr %handle, metadata !2366, metadata !DIExpression()), !dbg !2372
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !2373
  %handle1 = getelementptr inbounds %struct.acpi_device, ptr %0, i32 0, i32 2, !dbg !2374
  %1 = load ptr, ptr %handle1, align 8, !dbg !2374
  store ptr %1, ptr %handle, align 8, !dbg !2372
  call void @llvm.lifetime.start.p0(i64 8, ptr %ds) #15, !dbg !2375
  call void @llvm.dbg.declare(metadata ptr %ds, metadata !2367, metadata !DIExpression()), !dbg !2376
  %2 = load ptr, ptr %handle, align 8, !dbg !2377
  %call = call ptr @find_dock_station(ptr noundef %2) #16, !dbg !2378
  store ptr %call, ptr %ds, align 8, !dbg !2376
  call void @llvm.lifetime.start.p0(i64 4, ptr %surprise_removal) #15, !dbg !2379
  call void @llvm.dbg.declare(metadata ptr %surprise_removal, metadata !2368, metadata !DIExpression()), !dbg !2380
  store i32 0, ptr %surprise_removal, align 4, !dbg !2380
  %3 = load ptr, ptr %ds, align 8, !dbg !2381
  %tobool = icmp ne ptr %3, null, !dbg !2381
  br i1 %tobool, label %if.end, label %if.then, !dbg !2383

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !2384
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2384

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %ds, align 8, !dbg !2385
  %flags = getelementptr inbounds %struct.dock_station, ptr %4, i32 0, i32 2, !dbg !2387
  %5 = load i32, ptr %flags, align 8, !dbg !2387
  %and = and i32 %5, 16, !dbg !2388
  %tobool2 = icmp ne i32 %and, 0, !dbg !2388
  br i1 %tobool2, label %land.lhs.true, label %if.end4, !dbg !2389

land.lhs.true:                                    ; preds = %if.end
  %6 = load i32, ptr %event.addr, align 4, !dbg !2390
  %cmp = icmp eq i32 %6, 1, !dbg !2391
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !2392

if.then3:                                         ; preds = %land.lhs.true
  store i32 3, ptr %event.addr, align 4, !dbg !2393
  br label %if.end4, !dbg !2394

if.end4:                                          ; preds = %if.then3, %land.lhs.true, %if.end
  %7 = load i32, ptr %event.addr, align 4, !dbg !2395
  switch i32 %7, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb
    i32 3, label %sw.bb24
  ], !dbg !2396

sw.bb:                                            ; preds = %if.end4, %if.end4
  %8 = load ptr, ptr %ds, align 8, !dbg !2397
  %call5 = call i32 @dock_in_progress(ptr noundef %8) #16, !dbg !2400
  %tobool6 = icmp ne i32 %call5, 0, !dbg !2400
  br i1 %tobool6, label %if.end17, label %land.lhs.true7, !dbg !2401

land.lhs.true7:                                   ; preds = %sw.bb
  %9 = load ptr, ptr %adev.addr, align 8, !dbg !2402
  %call8 = call zeroext i1 @acpi_device_enumerated(ptr noundef %9) #16, !dbg !2403
  br i1 %call8, label %if.end17, label %if.then9, !dbg !2404

if.then9:                                         ; preds = %land.lhs.true7
  %10 = load ptr, ptr %ds, align 8, !dbg !2405
  call void @begin_dock(ptr noundef %10) #16, !dbg !2407
  %11 = load ptr, ptr %ds, align 8, !dbg !2408
  call void @dock(ptr noundef %11) #16, !dbg !2409
  %12 = load ptr, ptr %ds, align 8, !dbg !2410
  %call10 = call i32 @dock_present(ptr noundef %12) #16, !dbg !2412
  %tobool11 = icmp ne i32 %call10, 0, !dbg !2412
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !2413

if.then12:                                        ; preds = %if.then9
  %13 = load ptr, ptr %handle, align 8, !dbg !2414
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str, ptr noundef %13, ptr noundef @.str.1) #16, !dbg !2414
  %14 = load ptr, ptr %ds, align 8, !dbg !2416
  call void @complete_dock(ptr noundef %14) #16, !dbg !2417
  br label %sw.epilog, !dbg !2418

if.end13:                                         ; preds = %if.then9
  %15 = load ptr, ptr %ds, align 8, !dbg !2419
  %16 = load i32, ptr %event.addr, align 4, !dbg !2420
  call void @hotplug_dock_devices(ptr noundef %15, i32 noundef %16) #16, !dbg !2421
  %17 = load ptr, ptr %ds, align 8, !dbg !2422
  call void @complete_dock(ptr noundef %17) #16, !dbg !2423
  %18 = load ptr, ptr %ds, align 8, !dbg !2424
  %19 = load i32, ptr %event.addr, align 4, !dbg !2425
  call void @dock_event(ptr noundef %18, i32 noundef %19, i32 noundef 3) #16, !dbg !2426
  %20 = load ptr, ptr %ds, align 8, !dbg !2427
  %handle14 = getelementptr inbounds %struct.dock_station, ptr %20, i32 0, i32 0, !dbg !2428
  %21 = load ptr, ptr %handle14, align 8, !dbg !2428
  %call15 = call i32 @acpi_evaluate_lck(ptr noundef %21, i32 noundef 1) #16, !dbg !2429
  %call16 = call i32 @acpi_update_all_gpes() #16, !dbg !2430
  br label %sw.epilog, !dbg !2431

if.end17:                                         ; preds = %land.lhs.true7, %sw.bb
  %22 = load ptr, ptr %ds, align 8, !dbg !2432
  %call18 = call i32 @dock_present(ptr noundef %22) #16, !dbg !2434
  %tobool19 = icmp ne i32 %call18, 0, !dbg !2434
  br i1 %tobool19, label %if.then22, label %lor.lhs.false, !dbg !2435

lor.lhs.false:                                    ; preds = %if.end17
  %23 = load ptr, ptr %ds, align 8, !dbg !2436
  %call20 = call i32 @dock_in_progress(ptr noundef %23) #16, !dbg !2437
  %tobool21 = icmp ne i32 %call20, 0, !dbg !2437
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !2438

if.then22:                                        ; preds = %lor.lhs.false, %if.end17
  br label %sw.epilog, !dbg !2439

if.end23:                                         ; preds = %lor.lhs.false
  store i32 1, ptr %surprise_removal, align 4, !dbg !2440
  store i32 3, ptr %event.addr, align 4, !dbg !2441
  br label %sw.bb24, !dbg !2442

sw.bb24:                                          ; preds = %if.end4, %if.end23
  %24 = load ptr, ptr %ds, align 8, !dbg !2443
  call void @begin_undock(ptr noundef %24) #16, !dbg !2444
  %25 = load i8, ptr @immediate_undock, align 1, !dbg !2445, !range !2447, !noundef !365
  %tobool25 = trunc i8 %25 to i1, !dbg !2445
  br i1 %tobool25, label %land.lhs.true26, label %lor.lhs.false30, !dbg !2448

land.lhs.true26:                                  ; preds = %sw.bb24
  %26 = load ptr, ptr %ds, align 8, !dbg !2449
  %flags27 = getelementptr inbounds %struct.dock_station, ptr %26, i32 0, i32 2, !dbg !2450
  %27 = load i32, ptr %flags27, align 8, !dbg !2450
  %and28 = and i32 %27, 32, !dbg !2451
  %tobool29 = icmp ne i32 %and28, 0, !dbg !2451
  br i1 %tobool29, label %lor.lhs.false30, label %if.then32, !dbg !2452

lor.lhs.false30:                                  ; preds = %land.lhs.true26, %sw.bb24
  %28 = load i32, ptr %surprise_removal, align 4, !dbg !2453
  %tobool31 = icmp ne i32 %28, 0, !dbg !2453
  br i1 %tobool31, label %if.then32, label %if.else, !dbg !2454

if.then32:                                        ; preds = %lor.lhs.false30, %land.lhs.true26
  %29 = load ptr, ptr %ds, align 8, !dbg !2455
  %30 = load i32, ptr %event.addr, align 4, !dbg !2456
  %call33 = call i32 @handle_eject_request(ptr noundef %29, i32 noundef %30) #16, !dbg !2457
  br label %if.end34, !dbg !2457

if.else:                                          ; preds = %lor.lhs.false30
  %31 = load ptr, ptr %ds, align 8, !dbg !2458
  %32 = load i32, ptr %event.addr, align 4, !dbg !2459
  call void @dock_event(ptr noundef %31, i32 noundef %32, i32 noundef 2) #16, !dbg !2460
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.then32
  br label %sw.epilog, !dbg !2461

sw.epilog:                                        ; preds = %if.end4, %if.end34, %if.then22, %if.end13, %if.then12
  store i32 0, ptr %retval, align 4, !dbg !2462
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2462

cleanup:                                          ; preds = %sw.epilog, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %surprise_removal) #15, !dbg !2463
  call void @llvm.lifetime.end.p0(i64 8, ptr %ds) #15, !dbg !2463
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #15, !dbg !2463
  %33 = load i32, ptr %retval, align 4, !dbg !2463
  ret i32 %33, !dbg !2463
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dock_in_progress(ptr noundef %ds) #0 align 16 !dbg !2464 {
entry:
  %retval = alloca i32, align 4
  %ds.addr = alloca ptr, align 8
  store ptr %ds, ptr %ds.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ds.addr, metadata !2468, metadata !DIExpression()), !dbg !2469
  %0 = load ptr, ptr %ds.addr, align 8, !dbg !2470
  %flags = getelementptr inbounds %struct.dock_station, ptr %0, i32 0, i32 2, !dbg !2472
  %1 = load i32, ptr %flags, align 8, !dbg !2472
  %and = and i32 %1, 1, !dbg !2473
  %tobool = icmp ne i32 %and, 0, !dbg !2473
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !2474

lor.lhs.false:                                    ; preds = %entry
  %2 = load volatile i64, ptr @jiffies, align 64, !dbg !2475
  %3 = load ptr, ptr %ds.addr, align 8, !dbg !2475
  %last_dock_time = getelementptr inbounds %struct.dock_station, ptr %3, i32 0, i32 1, !dbg !2475
  %4 = load i64, ptr %last_dock_time, align 8, !dbg !2475
  %add = add i64 %4, 1000, !dbg !2475
  %sub = sub i64 %2, %add, !dbg !2475
  %cmp = icmp slt i64 %sub, 0, !dbg !2475
  br i1 %cmp, label %if.then, label %if.end, !dbg !2476

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 1, ptr %retval, align 4, !dbg !2477
  br label %return, !dbg !2477

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %retval, align 4, !dbg !2478
  br label %return, !dbg !2478

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !2479
  ret i32 %5, !dbg !2479
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @acpi_device_enumerated(ptr noundef %adev) #4 align 16 !dbg !2480 {
entry:
  %adev.addr = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !2484, metadata !DIExpression()), !dbg !2485
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !2486
  %tobool = icmp ne ptr %0, null, !dbg !2486
  br i1 %tobool, label %land.lhs.true, label %land.end, !dbg !2487

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %adev.addr, align 8, !dbg !2488
  %flags = getelementptr inbounds %struct.acpi_device, ptr %1, i32 0, i32 7, !dbg !2489
  %bf.load = load i32, ptr %flags, align 4, !dbg !2490
  %bf.lshr = lshr i32 %bf.load, 5, !dbg !2490
  %bf.clear = and i32 %bf.lshr, 1, !dbg !2490
  %tobool1 = icmp ne i32 %bf.clear, 0, !dbg !2488
  br i1 %tobool1, label %land.rhs, label %land.end, !dbg !2491

land.rhs:                                         ; preds = %land.lhs.true
  %2 = load ptr, ptr %adev.addr, align 8, !dbg !2492
  %flags2 = getelementptr inbounds %struct.acpi_device, ptr %2, i32 0, i32 7, !dbg !2493
  %bf.load3 = load i32, ptr %flags2, align 4, !dbg !2494
  %bf.lshr4 = lshr i32 %bf.load3, 6, !dbg !2494
  %bf.clear5 = and i32 %bf.lshr4, 1, !dbg !2494
  %tobool6 = icmp ne i32 %bf.clear5, 0, !dbg !2491
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true, %entry
  %3 = phi i1 [ false, %land.lhs.true ], [ false, %entry ], [ %tobool6, %land.rhs ], !dbg !2495
  ret i1 %3, !dbg !2496
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @begin_dock(ptr noundef %ds) #4 align 16 !dbg !2497 {
entry:
  %ds.addr = alloca ptr, align 8
  store ptr %ds, ptr %ds.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ds.addr, metadata !2501, metadata !DIExpression()), !dbg !2502
  %0 = load ptr, ptr %ds.addr, align 8, !dbg !2503
  %flags = getelementptr inbounds %struct.dock_station, ptr %0, i32 0, i32 2, !dbg !2504
  %1 = load i32, ptr %flags, align 8, !dbg !2505
  %or = or i32 %1, 1, !dbg !2505
  store i32 %or, ptr %flags, align 8, !dbg !2505
  ret void, !dbg !2506
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dock(ptr noundef %ds) #4 align 16 !dbg !2507 {
entry:
  %ds.addr = alloca ptr, align 8
  store ptr %ds, ptr %ds.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ds.addr, metadata !2509, metadata !DIExpression()), !dbg !2510
  %0 = load ptr, ptr %ds.addr, align 8, !dbg !2511
  call void @handle_dock(ptr noundef %0, i32 noundef 1) #16, !dbg !2512
  ret void, !dbg !2513
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @dock_present(ptr noundef %ds) #0 align 16 !dbg !2514 {
entry:
  %retval = alloca i32, align 4
  %ds.addr = alloca ptr, align 8
  %sta = alloca i64, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ds, ptr %ds.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ds.addr, metadata !2516, metadata !DIExpression()), !dbg !2519
  call void @llvm.lifetime.start.p0(i64 8, ptr %sta) #15, !dbg !2520
  call void @llvm.dbg.declare(metadata ptr %sta, metadata !2517, metadata !DIExpression()), !dbg !2521
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !2522
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2518, metadata !DIExpression()), !dbg !2523
  %0 = load ptr, ptr %ds.addr, align 8, !dbg !2524
  %tobool = icmp ne ptr %0, null, !dbg !2524
  br i1 %tobool, label %if.then, label %if.end4, !dbg !2526

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %ds.addr, align 8, !dbg !2527
  %handle = getelementptr inbounds %struct.dock_station, ptr %1, i32 0, i32 0, !dbg !2529
  %2 = load ptr, ptr %handle, align 8, !dbg !2529
  %call = call i32 @acpi_evaluate_integer(ptr noundef %2, ptr noundef @.str.12, ptr noundef null, ptr noundef %sta) #16, !dbg !2530
  store i32 %call, ptr %status, align 4, !dbg !2531
  %3 = load i32, ptr %status, align 4, !dbg !2532
  %tobool1 = icmp ne i32 %3, 0, !dbg !2532
  br i1 %tobool1, label %if.end, label %land.lhs.true, !dbg !2534

land.lhs.true:                                    ; preds = %if.then
  %4 = load i64, ptr %sta, align 8, !dbg !2535
  %tobool2 = icmp ne i64 %4, 0, !dbg !2535
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !2536

if.then3:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2537
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2537

if.end:                                           ; preds = %land.lhs.true, %if.then
  br label %if.end4, !dbg !2538

if.end4:                                          ; preds = %if.end, %entry
  store i32 0, ptr %retval, align 4, !dbg !2539
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2539

cleanup:                                          ; preds = %if.end4, %if.then3
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !2540
  call void @llvm.lifetime.end.p0(i64 8, ptr %sta) #15, !dbg !2540
  %5 = load i32, ptr %retval, align 4, !dbg !2540
  ret i32 %5, !dbg !2540
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2541 dso_local void @acpi_handle_printk(ptr noundef, ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @complete_dock(ptr noundef %ds) #4 align 16 !dbg !2545 {
entry:
  %ds.addr = alloca ptr, align 8
  store ptr %ds, ptr %ds.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ds.addr, metadata !2547, metadata !DIExpression()), !dbg !2548
  %0 = load ptr, ptr %ds.addr, align 8, !dbg !2549
  %flags = getelementptr inbounds %struct.dock_station, ptr %0, i32 0, i32 2, !dbg !2550
  %1 = load i32, ptr %flags, align 8, !dbg !2551
  %and = and i32 %1, -2, !dbg !2551
  store i32 %and, ptr %flags, align 8, !dbg !2551
  %2 = load volatile i64, ptr @jiffies, align 64, !dbg !2552
  %3 = load ptr, ptr %ds.addr, align 8, !dbg !2553
  %last_dock_time = getelementptr inbounds %struct.dock_station, ptr %3, i32 0, i32 1, !dbg !2554
  store i64 %2, ptr %last_dock_time, align 8, !dbg !2555
  ret void, !dbg !2556
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hotplug_dock_devices(ptr noundef %ds, i32 noundef %event) #0 align 16 !dbg !2557 {
entry:
  %ds.addr = alloca ptr, align 8
  %event.addr = alloca i32, align 4
  %dd = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %__mptr7 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  %__mptr19 = alloca ptr, align 8
  %tmp22 = alloca ptr, align 8
  %__mptr25 = alloca ptr, align 8
  %tmp28 = alloca ptr, align 8
  %adev = alloca ptr, align 8
  %ret = alloca i32, align 4
  %__mptr41 = alloca ptr, align 8
  %tmp44 = alloca ptr, align 8
  store ptr %ds, ptr %ds.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ds.addr, metadata !2561, metadata !DIExpression()), !dbg !2587
  store i32 %event, ptr %event.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !2562, metadata !DIExpression()), !dbg !2588
  call void @llvm.lifetime.start.p0(i64 8, ptr %dd) #15, !dbg !2589
  call void @llvm.dbg.declare(metadata ptr %dd, metadata !2563, metadata !DIExpression()), !dbg !2590
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !2591
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2564, metadata !DIExpression()), !dbg !2591
  %0 = load ptr, ptr %ds.addr, align 8, !dbg !2591
  %dependent_devices = getelementptr inbounds %struct.dock_station, ptr %0, i32 0, i32 3, !dbg !2591
  %next = getelementptr inbounds %struct.list_head, ptr %dependent_devices, i32 0, i32 0, !dbg !2591
  %1 = load ptr, ptr %next, align 8, !dbg !2591
  store ptr %1, ptr %__mptr, align 8, !dbg !2591
  %2 = load ptr, ptr %__mptr, align 8, !dbg !2591
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !2591
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2591
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !2592
  %3 = load ptr, ptr %tmp, align 8, !dbg !2591
  store ptr %3, ptr %dd, align 8, !dbg !2592
  br label %for.cond, !dbg !2592

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %dd, align 8, !dbg !2593
  %list = getelementptr inbounds %struct.dock_dependent_device, ptr %4, i32 0, i32 0, !dbg !2593
  %5 = load ptr, ptr %ds.addr, align 8, !dbg !2593
  %dependent_devices1 = getelementptr inbounds %struct.dock_station, ptr %5, i32 0, i32 3, !dbg !2593
  %cmp = icmp eq ptr %list, %dependent_devices1, !dbg !2593
  %lnot = xor i1 %cmp, true, !dbg !2593
  br i1 %lnot, label %for.body, label %for.end, !dbg !2592

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %dd, align 8, !dbg !2594
  %7 = load i32, ptr %event.addr, align 4, !dbg !2595
  call void @dock_hotplug_event(ptr noundef %6, i32 noundef %7, i32 noundef 1) #16, !dbg !2596
  br label %for.inc, !dbg !2596

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #15, !dbg !2597
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !2567, metadata !DIExpression()), !dbg !2597
  %8 = load ptr, ptr %dd, align 8, !dbg !2597
  %list3 = getelementptr inbounds %struct.dock_dependent_device, ptr %8, i32 0, i32 0, !dbg !2597
  %next4 = getelementptr inbounds %struct.list_head, ptr %list3, i32 0, i32 0, !dbg !2597
  %9 = load ptr, ptr %next4, align 8, !dbg !2597
  store ptr %9, ptr %__mptr2, align 8, !dbg !2597
  %10 = load ptr, ptr %__mptr2, align 8, !dbg !2597
  %add.ptr6 = getelementptr i8, ptr %10, i64 0, !dbg !2597
  store ptr %add.ptr6, ptr %tmp5, align 8, !dbg !2597
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #15, !dbg !2593
  %11 = load ptr, ptr %tmp5, align 8, !dbg !2597
  store ptr %11, ptr %dd, align 8, !dbg !2593
  br label %for.cond, !dbg !2593, !llvm.loop !2598

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr7) #15, !dbg !2600
  call void @llvm.dbg.declare(metadata ptr %__mptr7, metadata !2570, metadata !DIExpression()), !dbg !2600
  %12 = load ptr, ptr %ds.addr, align 8, !dbg !2600
  %dependent_devices8 = getelementptr inbounds %struct.dock_station, ptr %12, i32 0, i32 3, !dbg !2600
  %next9 = getelementptr inbounds %struct.list_head, ptr %dependent_devices8, i32 0, i32 0, !dbg !2600
  %13 = load ptr, ptr %next9, align 8, !dbg !2600
  store ptr %13, ptr %__mptr7, align 8, !dbg !2600
  %14 = load ptr, ptr %__mptr7, align 8, !dbg !2600
  %add.ptr11 = getelementptr i8, ptr %14, i64 0, !dbg !2600
  store ptr %add.ptr11, ptr %tmp10, align 8, !dbg !2600
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr7) #15, !dbg !2601
  %15 = load ptr, ptr %tmp10, align 8, !dbg !2600
  store ptr %15, ptr %dd, align 8, !dbg !2601
  br label %for.cond12, !dbg !2601

for.cond12:                                       ; preds = %for.inc18, %for.end
  %16 = load ptr, ptr %dd, align 8, !dbg !2602
  %list13 = getelementptr inbounds %struct.dock_dependent_device, ptr %16, i32 0, i32 0, !dbg !2602
  %17 = load ptr, ptr %ds.addr, align 8, !dbg !2602
  %dependent_devices14 = getelementptr inbounds %struct.dock_station, ptr %17, i32 0, i32 3, !dbg !2602
  %cmp15 = icmp eq ptr %list13, %dependent_devices14, !dbg !2602
  %lnot16 = xor i1 %cmp15, true, !dbg !2602
  br i1 %lnot16, label %for.body17, label %for.end24, !dbg !2601

for.body17:                                       ; preds = %for.cond12
  %18 = load ptr, ptr %dd, align 8, !dbg !2603
  %19 = load i32, ptr %event.addr, align 4, !dbg !2604
  call void @dock_hotplug_event(ptr noundef %18, i32 noundef %19, i32 noundef 0) #16, !dbg !2605
  br label %for.inc18, !dbg !2605

for.inc18:                                        ; preds = %for.body17
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr19) #15, !dbg !2606
  call void @llvm.dbg.declare(metadata ptr %__mptr19, metadata !2573, metadata !DIExpression()), !dbg !2606
  %20 = load ptr, ptr %dd, align 8, !dbg !2606
  %list20 = getelementptr inbounds %struct.dock_dependent_device, ptr %20, i32 0, i32 0, !dbg !2606
  %next21 = getelementptr inbounds %struct.list_head, ptr %list20, i32 0, i32 0, !dbg !2606
  %21 = load ptr, ptr %next21, align 8, !dbg !2606
  store ptr %21, ptr %__mptr19, align 8, !dbg !2606
  %22 = load ptr, ptr %__mptr19, align 8, !dbg !2606
  %add.ptr23 = getelementptr i8, ptr %22, i64 0, !dbg !2606
  store ptr %add.ptr23, ptr %tmp22, align 8, !dbg !2606
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr19) #15, !dbg !2602
  %23 = load ptr, ptr %tmp22, align 8, !dbg !2606
  store ptr %23, ptr %dd, align 8, !dbg !2602
  br label %for.cond12, !dbg !2602, !llvm.loop !2607

for.end24:                                        ; preds = %for.cond12
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr25) #15, !dbg !2609
  call void @llvm.dbg.declare(metadata ptr %__mptr25, metadata !2576, metadata !DIExpression()), !dbg !2609
  %24 = load ptr, ptr %ds.addr, align 8, !dbg !2609
  %dependent_devices26 = getelementptr inbounds %struct.dock_station, ptr %24, i32 0, i32 3, !dbg !2609
  %next27 = getelementptr inbounds %struct.list_head, ptr %dependent_devices26, i32 0, i32 0, !dbg !2609
  %25 = load ptr, ptr %next27, align 8, !dbg !2609
  store ptr %25, ptr %__mptr25, align 8, !dbg !2609
  %26 = load ptr, ptr %__mptr25, align 8, !dbg !2609
  %add.ptr29 = getelementptr i8, ptr %26, i64 0, !dbg !2609
  store ptr %add.ptr29, ptr %tmp28, align 8, !dbg !2609
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr25) #15, !dbg !2610
  %27 = load ptr, ptr %tmp28, align 8, !dbg !2609
  store ptr %27, ptr %dd, align 8, !dbg !2610
  br label %for.cond30, !dbg !2610

for.cond30:                                       ; preds = %for.inc40, %for.end24
  %28 = load ptr, ptr %dd, align 8, !dbg !2611
  %list31 = getelementptr inbounds %struct.dock_dependent_device, ptr %28, i32 0, i32 0, !dbg !2611
  %29 = load ptr, ptr %ds.addr, align 8, !dbg !2611
  %dependent_devices32 = getelementptr inbounds %struct.dock_station, ptr %29, i32 0, i32 3, !dbg !2611
  %cmp33 = icmp eq ptr %list31, %dependent_devices32, !dbg !2611
  %lnot34 = xor i1 %cmp33, true, !dbg !2611
  br i1 %lnot34, label %for.body35, label %for.end46, !dbg !2610

for.body35:                                       ; preds = %for.cond30
  call void @llvm.lifetime.start.p0(i64 8, ptr %adev) #15, !dbg !2612
  call void @llvm.dbg.declare(metadata ptr %adev, metadata !2579, metadata !DIExpression()), !dbg !2613
  %30 = load ptr, ptr %dd, align 8, !dbg !2614
  %adev36 = getelementptr inbounds %struct.dock_dependent_device, ptr %30, i32 0, i32 1, !dbg !2615
  %31 = load ptr, ptr %adev36, align 8, !dbg !2615
  store ptr %31, ptr %adev, align 8, !dbg !2613
  %32 = load ptr, ptr %adev, align 8, !dbg !2616
  %call = call zeroext i1 @acpi_device_enumerated(ptr noundef %32) #16, !dbg !2617
  br i1 %call, label %if.end39, label %if.then, !dbg !2618

if.then:                                          ; preds = %for.body35
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !2619
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2582, metadata !DIExpression()), !dbg !2620
  %33 = load ptr, ptr %adev, align 8, !dbg !2621
  %handle = getelementptr inbounds %struct.acpi_device, ptr %33, i32 0, i32 2, !dbg !2622
  %34 = load ptr, ptr %handle, align 8, !dbg !2622
  %call37 = call i32 @acpi_bus_scan(ptr noundef %34) #16, !dbg !2623
  store i32 %call37, ptr %ret, align 4, !dbg !2620
  %35 = load i32, ptr %ret, align 4, !dbg !2624
  %tobool = icmp ne i32 %35, 0, !dbg !2624
  br i1 %tobool, label %if.then38, label %if.end, !dbg !2626

if.then38:                                        ; preds = %if.then
  br label %if.end, !dbg !2627

if.end:                                           ; preds = %if.then38, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !2628
  br label %if.end39, !dbg !2629

if.end39:                                         ; preds = %if.end, %for.body35
  call void @llvm.lifetime.end.p0(i64 8, ptr %adev) #15, !dbg !2630
  br label %for.inc40, !dbg !2631

for.inc40:                                        ; preds = %if.end39
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr41) #15, !dbg !2632
  call void @llvm.dbg.declare(metadata ptr %__mptr41, metadata !2585, metadata !DIExpression()), !dbg !2632
  %36 = load ptr, ptr %dd, align 8, !dbg !2632
  %list42 = getelementptr inbounds %struct.dock_dependent_device, ptr %36, i32 0, i32 0, !dbg !2632
  %next43 = getelementptr inbounds %struct.list_head, ptr %list42, i32 0, i32 0, !dbg !2632
  %37 = load ptr, ptr %next43, align 8, !dbg !2632
  store ptr %37, ptr %__mptr41, align 8, !dbg !2632
  %38 = load ptr, ptr %__mptr41, align 8, !dbg !2632
  %add.ptr45 = getelementptr i8, ptr %38, i64 0, !dbg !2632
  store ptr %add.ptr45, ptr %tmp44, align 8, !dbg !2632
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr41) #15, !dbg !2611
  %39 = load ptr, ptr %tmp44, align 8, !dbg !2632
  store ptr %39, ptr %dd, align 8, !dbg !2611
  br label %for.cond30, !dbg !2611, !llvm.loop !2633

for.end46:                                        ; preds = %for.cond30
  call void @llvm.lifetime.end.p0(i64 8, ptr %dd) #15, !dbg !2635
  ret void, !dbg !2635
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dock_event(ptr noundef %ds, i32 noundef %event, i32 noundef %num) #0 align 16 !dbg !2636 {
entry:
  %ds.addr = alloca ptr, align 8
  %event.addr = alloca i32, align 4
  %num.addr = alloca i32, align 4
  %dev = alloca ptr, align 8
  %event_string = alloca [13 x i8], align 1
  %envp = alloca [2 x ptr], align 16
  %dd = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr12 = alloca ptr, align 8
  %tmp15 = alloca ptr, align 8
  store ptr %ds, ptr %ds.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ds.addr, metadata !2640, metadata !DIExpression()), !dbg !2654
  store i32 %event, ptr %event.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !2641, metadata !DIExpression()), !dbg !2655
  store i32 %num, ptr %num.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %num.addr, metadata !2642, metadata !DIExpression()), !dbg !2656
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #15, !dbg !2657
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !2643, metadata !DIExpression()), !dbg !2658
  %0 = load ptr, ptr %ds.addr, align 8, !dbg !2659
  %dock_device = getelementptr inbounds %struct.dock_station, ptr %0, i32 0, i32 5, !dbg !2660
  %1 = load ptr, ptr %dock_device, align 8, !dbg !2660
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3, !dbg !2661
  store ptr %dev1, ptr %dev, align 8, !dbg !2658
  call void @llvm.lifetime.start.p0(i64 13, ptr %event_string) #15, !dbg !2662
  call void @llvm.dbg.declare(metadata ptr %event_string, metadata !2644, metadata !DIExpression()), !dbg !2663
  call void @llvm.lifetime.start.p0(i64 16, ptr %envp) #15, !dbg !2664
  call void @llvm.dbg.declare(metadata ptr %envp, metadata !2645, metadata !DIExpression()), !dbg !2665
  %arrayinit.begin = getelementptr inbounds [2 x ptr], ptr %envp, i64 0, i64 0, !dbg !2666
  %arraydecay = getelementptr inbounds [13 x i8], ptr %event_string, i64 0, i64 0, !dbg !2667
  store ptr %arraydecay, ptr %arrayinit.begin, align 8, !dbg !2666
  %arrayinit.element = getelementptr inbounds ptr, ptr %arrayinit.begin, i64 1, !dbg !2666
  store ptr null, ptr %arrayinit.element, align 8, !dbg !2666
  call void @llvm.lifetime.start.p0(i64 8, ptr %dd) #15, !dbg !2668
  call void @llvm.dbg.declare(metadata ptr %dd, metadata !2647, metadata !DIExpression()), !dbg !2669
  %2 = load i32, ptr %num.addr, align 4, !dbg !2670
  %cmp = icmp eq i32 %2, 2, !dbg !2672
  br i1 %cmp, label %if.then, label %if.else, !dbg !2673

if.then:                                          ; preds = %entry
  %arraydecay2 = getelementptr inbounds [13 x i8], ptr %event_string, i64 0, i64 0, !dbg !2674
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay2, ptr noundef @.str.13) #16, !dbg !2675
  br label %if.end, !dbg !2675

if.else:                                          ; preds = %entry
  %arraydecay3 = getelementptr inbounds [13 x i8], ptr %event_string, i64 0, i64 0, !dbg !2676
  %call4 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay3, ptr noundef @.str.14) #16, !dbg !2677
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %3 = load i32, ptr %num.addr, align 4, !dbg !2678
  %cmp5 = icmp eq i32 %3, 3, !dbg !2680
  br i1 %cmp5, label %if.then6, label %if.end9, !dbg !2681

if.then6:                                         ; preds = %if.end
  %4 = load ptr, ptr %dev, align 8, !dbg !2682
  %kobj = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !2683
  %arraydecay7 = getelementptr inbounds [2 x ptr], ptr %envp, i64 0, i64 0, !dbg !2684
  %call8 = call i32 @kobject_uevent_env(ptr noundef %kobj, i32 noundef 2, ptr noundef %arraydecay7) #16, !dbg !2685
  br label %if.end9, !dbg !2685

if.end9:                                          ; preds = %if.then6, %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !2686
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2648, metadata !DIExpression()), !dbg !2686
  %5 = load ptr, ptr %ds.addr, align 8, !dbg !2686
  %dependent_devices = getelementptr inbounds %struct.dock_station, ptr %5, i32 0, i32 3, !dbg !2686
  %next = getelementptr inbounds %struct.list_head, ptr %dependent_devices, i32 0, i32 0, !dbg !2686
  %6 = load ptr, ptr %next, align 8, !dbg !2686
  store ptr %6, ptr %__mptr, align 8, !dbg !2686
  %7 = load ptr, ptr %__mptr, align 8, !dbg !2686
  %add.ptr = getelementptr i8, ptr %7, i64 0, !dbg !2686
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2686
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !2687
  %8 = load ptr, ptr %tmp, align 8, !dbg !2686
  store ptr %8, ptr %dd, align 8, !dbg !2687
  br label %for.cond, !dbg !2687

for.cond:                                         ; preds = %for.inc, %if.end9
  %9 = load ptr, ptr %dd, align 8, !dbg !2688
  %list = getelementptr inbounds %struct.dock_dependent_device, ptr %9, i32 0, i32 0, !dbg !2688
  %10 = load ptr, ptr %ds.addr, align 8, !dbg !2688
  %dependent_devices10 = getelementptr inbounds %struct.dock_station, ptr %10, i32 0, i32 3, !dbg !2688
  %cmp11 = icmp eq ptr %list, %dependent_devices10, !dbg !2688
  %lnot = xor i1 %cmp11, true, !dbg !2688
  br i1 %lnot, label %for.body, label %for.end, !dbg !2687

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %dd, align 8, !dbg !2689
  %12 = load i32, ptr %event.addr, align 4, !dbg !2690
  call void @dock_hotplug_event(ptr noundef %11, i32 noundef %12, i32 noundef 2) #16, !dbg !2691
  br label %for.inc, !dbg !2691

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr12) #15, !dbg !2692
  call void @llvm.dbg.declare(metadata ptr %__mptr12, metadata !2651, metadata !DIExpression()), !dbg !2692
  %13 = load ptr, ptr %dd, align 8, !dbg !2692
  %list13 = getelementptr inbounds %struct.dock_dependent_device, ptr %13, i32 0, i32 0, !dbg !2692
  %next14 = getelementptr inbounds %struct.list_head, ptr %list13, i32 0, i32 0, !dbg !2692
  %14 = load ptr, ptr %next14, align 8, !dbg !2692
  store ptr %14, ptr %__mptr12, align 8, !dbg !2692
  %15 = load ptr, ptr %__mptr12, align 8, !dbg !2692
  %add.ptr16 = getelementptr i8, ptr %15, i64 0, !dbg !2692
  store ptr %add.ptr16, ptr %tmp15, align 8, !dbg !2692
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr12) #15, !dbg !2688
  %16 = load ptr, ptr %tmp15, align 8, !dbg !2692
  store ptr %16, ptr %dd, align 8, !dbg !2688
  br label %for.cond, !dbg !2688, !llvm.loop !2693

for.end:                                          ; preds = %for.cond
  %17 = load i32, ptr %num.addr, align 4, !dbg !2695
  %cmp17 = icmp ne i32 %17, 3, !dbg !2697
  br i1 %cmp17, label %if.then18, label %if.end22, !dbg !2698

if.then18:                                        ; preds = %for.end
  %18 = load ptr, ptr %dev, align 8, !dbg !2699
  %kobj19 = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 0, !dbg !2700
  %arraydecay20 = getelementptr inbounds [2 x ptr], ptr %envp, i64 0, i64 0, !dbg !2701
  %call21 = call i32 @kobject_uevent_env(ptr noundef %kobj19, i32 noundef 2, ptr noundef %arraydecay20) #16, !dbg !2702
  br label %if.end22, !dbg !2702

if.end22:                                         ; preds = %if.then18, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %dd) #15, !dbg !2703
  call void @llvm.lifetime.end.p0(i64 16, ptr %envp) #15, !dbg !2703
  call void @llvm.lifetime.end.p0(i64 13, ptr %event_string) #15, !dbg !2703
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #15, !dbg !2703
  ret void, !dbg !2703
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2704 dso_local i32 @acpi_evaluate_lck(ptr noundef, i32 noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2707 dso_local i32 @acpi_update_all_gpes() #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @begin_undock(ptr noundef %ds) #4 align 16 !dbg !2711 {
entry:
  %ds.addr = alloca ptr, align 8
  store ptr %ds, ptr %ds.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ds.addr, metadata !2713, metadata !DIExpression()), !dbg !2714
  %0 = load ptr, ptr %ds.addr, align 8, !dbg !2715
  %flags = getelementptr inbounds %struct.dock_station, ptr %0, i32 0, i32 2, !dbg !2716
  %1 = load i32, ptr %flags, align 8, !dbg !2717
  %or = or i32 %1, 2, !dbg !2717
  store i32 %or, ptr %flags, align 8, !dbg !2717
  ret void, !dbg !2718
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @handle_eject_request(ptr noundef %ds, i32 noundef %event) #0 align 16 !dbg !2719 {
entry:
  %retval = alloca i32, align 4
  %ds.addr = alloca ptr, align 8
  %event.addr = alloca i32, align 4
  store ptr %ds, ptr %ds.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ds.addr, metadata !2723, metadata !DIExpression()), !dbg !2725
  store i32 %event, ptr %event.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !2724, metadata !DIExpression()), !dbg !2726
  %0 = load ptr, ptr %ds.addr, align 8, !dbg !2727
  %call = call i32 @dock_in_progress(ptr noundef %0) #16, !dbg !2729
  %tobool = icmp ne i32 %call, 0, !dbg !2729
  br i1 %tobool, label %if.then, label %if.end, !dbg !2730

if.then:                                          ; preds = %entry
  store i32 -16, ptr %retval, align 4, !dbg !2731
  br label %return, !dbg !2731

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %ds.addr, align 8, !dbg !2732
  %2 = load i32, ptr %event.addr, align 4, !dbg !2733
  call void @dock_event(ptr noundef %1, i32 noundef %2, i32 noundef 2) #16, !dbg !2734
  %3 = load ptr, ptr %ds.addr, align 8, !dbg !2735
  call void @hot_remove_dock_devices(ptr noundef %3) #16, !dbg !2736
  %4 = load ptr, ptr %ds.addr, align 8, !dbg !2737
  call void @undock(ptr noundef %4) #16, !dbg !2738
  %5 = load ptr, ptr %ds.addr, align 8, !dbg !2739
  %handle = getelementptr inbounds %struct.dock_station, ptr %5, i32 0, i32 0, !dbg !2740
  %6 = load ptr, ptr %handle, align 8, !dbg !2740
  %call1 = call i32 @acpi_evaluate_lck(ptr noundef %6, i32 noundef 0) #16, !dbg !2741
  %7 = load ptr, ptr %ds.addr, align 8, !dbg !2742
  %handle2 = getelementptr inbounds %struct.dock_station, ptr %7, i32 0, i32 0, !dbg !2743
  %8 = load ptr, ptr %handle2, align 8, !dbg !2743
  %call3 = call i32 @acpi_evaluate_ej0(ptr noundef %8) #16, !dbg !2744
  %9 = load ptr, ptr %ds.addr, align 8, !dbg !2745
  %call4 = call i32 @dock_present(ptr noundef %9) #16, !dbg !2747
  %tobool5 = icmp ne i32 %call4, 0, !dbg !2747
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !2748

if.then6:                                         ; preds = %if.end
  %10 = load ptr, ptr %ds.addr, align 8, !dbg !2749
  %handle7 = getelementptr inbounds %struct.dock_station, ptr %10, i32 0, i32 0, !dbg !2749
  %11 = load ptr, ptr %handle7, align 8, !dbg !2749
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str, ptr noundef %11, ptr noundef @.str.15) #16, !dbg !2749
  store i32 -16, ptr %retval, align 4, !dbg !2751
  br label %return, !dbg !2751

if.end8:                                          ; preds = %if.end
  %12 = load ptr, ptr %ds.addr, align 8, !dbg !2752
  call void @complete_undock(ptr noundef %12) #16, !dbg !2753
  store i32 0, ptr %retval, align 4, !dbg !2754
  br label %return, !dbg !2754

return:                                           ; preds = %if.end8, %if.then6, %if.then
  %13 = load i32, ptr %retval, align 4, !dbg !2755
  ret i32 %13, !dbg !2755
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_dock_add(ptr noundef %adev) #0 align 16 !dbg !2756 {
entry:
  %adev.addr = alloca ptr, align 8
  %dock_station = alloca ptr, align 8
  %ds = alloca %struct.dock_station, align 8
  %pdevinfo = alloca %struct.platform_device_info, align 8
  %handle = alloca ptr, align 8
  %dd = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !2758, metadata !DIExpression()), !dbg !2809
  call void @llvm.lifetime.start.p0(i64 8, ptr %dock_station) #15, !dbg !2810
  call void @llvm.dbg.declare(metadata ptr %dock_station, metadata !2759, metadata !DIExpression()), !dbg !2811
  call void @llvm.lifetime.start.p0(i64 64, ptr %ds) #15, !dbg !2810
  call void @llvm.dbg.declare(metadata ptr %ds, metadata !2760, metadata !DIExpression()), !dbg !2812
  call void @llvm.memset.p0.i64(ptr align 8 %ds, i8 0, i64 64, i1 false), !dbg !2812
  call void @llvm.lifetime.start.p0(i64 88, ptr %pdevinfo) #15, !dbg !2813
  call void @llvm.dbg.declare(metadata ptr %pdevinfo, metadata !2761, metadata !DIExpression()), !dbg !2814
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #15, !dbg !2815
  call void @llvm.dbg.declare(metadata ptr %handle, metadata !2804, metadata !DIExpression()), !dbg !2816
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !2817
  %handle1 = getelementptr inbounds %struct.acpi_device, ptr %0, i32 0, i32 2, !dbg !2818
  %1 = load ptr, ptr %handle1, align 8, !dbg !2818
  store ptr %1, ptr %handle, align 8, !dbg !2816
  call void @llvm.lifetime.start.p0(i64 8, ptr %dd) #15, !dbg !2819
  call void @llvm.dbg.declare(metadata ptr %dd, metadata !2805, metadata !DIExpression()), !dbg !2820
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !2821
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2806, metadata !DIExpression()), !dbg !2822
  call void @llvm.memset.p0.i64(ptr align 8 %pdevinfo, i8 0, i64 88, i1 false), !dbg !2823
  %name = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 3, !dbg !2824
  store ptr @.str.2, ptr %name, align 8, !dbg !2825
  %2 = load i32, ptr @dock_station_count, align 4, !dbg !2826
  %id = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 4, !dbg !2827
  store i32 %2, ptr %id, align 8, !dbg !2828
  %3 = load ptr, ptr %adev.addr, align 8, !dbg !2829
  %call = call ptr @acpi_fwnode_handle(ptr noundef %3) #16, !dbg !2830
  %fwnode = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 1, !dbg !2831
  store ptr %call, ptr %fwnode, align 8, !dbg !2832
  %data = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 7, !dbg !2833
  store ptr %ds, ptr %data, align 8, !dbg !2834
  %size_data = getelementptr inbounds %struct.platform_device_info, ptr %pdevinfo, i32 0, i32 8, !dbg !2835
  store i64 64, ptr %size_data, align 8, !dbg !2836
  %call2 = call ptr @platform_device_register_full(ptr noundef %pdevinfo) #16, !dbg !2837
  store ptr %call2, ptr %dd, align 8, !dbg !2838
  %4 = load ptr, ptr %dd, align 8, !dbg !2839
  %call3 = call zeroext i1 @IS_ERR(ptr noundef %4) #16, !dbg !2841
  br i1 %call3, label %if.then, label %if.end, !dbg !2842

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2843

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %dd, align 8, !dbg !2844
  %dev = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, !dbg !2845
  %platform_data = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 7, !dbg !2846
  %6 = load ptr, ptr %platform_data, align 8, !dbg !2846
  store ptr %6, ptr %dock_station, align 8, !dbg !2847
  %7 = load ptr, ptr %handle, align 8, !dbg !2848
  %8 = load ptr, ptr %dock_station, align 8, !dbg !2849
  %handle4 = getelementptr inbounds %struct.dock_station, ptr %8, i32 0, i32 0, !dbg !2850
  store ptr %7, ptr %handle4, align 8, !dbg !2851
  %9 = load ptr, ptr %dd, align 8, !dbg !2852
  %10 = load ptr, ptr %dock_station, align 8, !dbg !2853
  %dock_device = getelementptr inbounds %struct.dock_station, ptr %10, i32 0, i32 5, !dbg !2854
  store ptr %9, ptr %dock_device, align 8, !dbg !2855
  %11 = load volatile i64, ptr @jiffies, align 64, !dbg !2856
  %sub = sub i64 %11, 1000, !dbg !2857
  %12 = load ptr, ptr %dock_station, align 8, !dbg !2858
  %last_dock_time = getelementptr inbounds %struct.dock_station, ptr %12, i32 0, i32 1, !dbg !2859
  store i64 %sub, ptr %last_dock_time, align 8, !dbg !2860
  %13 = load ptr, ptr %dock_station, align 8, !dbg !2861
  %sibling = getelementptr inbounds %struct.dock_station, ptr %13, i32 0, i32 4, !dbg !2862
  call void @INIT_LIST_HEAD(ptr noundef %sibling) #16, !dbg !2863
  %14 = load ptr, ptr %dock_station, align 8, !dbg !2864
  %dependent_devices = getelementptr inbounds %struct.dock_station, ptr %14, i32 0, i32 3, !dbg !2865
  call void @INIT_LIST_HEAD(ptr noundef %dependent_devices) #16, !dbg !2866
  %15 = load ptr, ptr %dd, align 8, !dbg !2867
  %dev5 = getelementptr inbounds %struct.platform_device, ptr %15, i32 0, i32 3, !dbg !2868
  call void @dev_set_uevent_suppress(ptr noundef %dev5, i32 noundef 0) #16, !dbg !2869
  %16 = load ptr, ptr %handle, align 8, !dbg !2870
  %call6 = call zeroext i1 @acpi_dock_match(ptr noundef %16) #16, !dbg !2872
  br i1 %call6, label %if.then7, label %if.end8, !dbg !2873

if.then7:                                         ; preds = %if.end
  %17 = load ptr, ptr %dock_station, align 8, !dbg !2874
  %flags = getelementptr inbounds %struct.dock_station, ptr %17, i32 0, i32 2, !dbg !2875
  %18 = load i32, ptr %flags, align 8, !dbg !2876
  %or = or i32 %18, 16, !dbg !2876
  store i32 %or, ptr %flags, align 8, !dbg !2876
  br label %if.end8, !dbg !2874

if.end8:                                          ; preds = %if.then7, %if.end
  %19 = load ptr, ptr %handle, align 8, !dbg !2877
  %call9 = call zeroext i1 @acpi_ata_match(ptr noundef %19) #16, !dbg !2879
  br i1 %call9, label %if.then10, label %if.end13, !dbg !2880

if.then10:                                        ; preds = %if.end8
  %20 = load ptr, ptr %dock_station, align 8, !dbg !2881
  %flags11 = getelementptr inbounds %struct.dock_station, ptr %20, i32 0, i32 2, !dbg !2882
  %21 = load i32, ptr %flags11, align 8, !dbg !2883
  %or12 = or i32 %21, 32, !dbg !2883
  store i32 %or12, ptr %flags11, align 8, !dbg !2883
  br label %if.end13, !dbg !2881

if.end13:                                         ; preds = %if.then10, %if.end8
  %22 = load ptr, ptr %adev.addr, align 8, !dbg !2884
  %call14 = call zeroext i1 @acpi_device_is_battery(ptr noundef %22) #16, !dbg !2886
  br i1 %call14, label %if.then15, label %if.end18, !dbg !2887

if.then15:                                        ; preds = %if.end13
  %23 = load ptr, ptr %dock_station, align 8, !dbg !2888
  %flags16 = getelementptr inbounds %struct.dock_station, ptr %23, i32 0, i32 2, !dbg !2889
  %24 = load i32, ptr %flags16, align 8, !dbg !2890
  %or17 = or i32 %24, 64, !dbg !2890
  store i32 %or17, ptr %flags16, align 8, !dbg !2890
  br label %if.end18, !dbg !2888

if.end18:                                         ; preds = %if.then15, %if.end13
  %25 = load ptr, ptr %dd, align 8, !dbg !2891
  %dev19 = getelementptr inbounds %struct.platform_device, ptr %25, i32 0, i32 3, !dbg !2892
  %kobj = getelementptr inbounds %struct.device, ptr %dev19, i32 0, i32 0, !dbg !2893
  %call20 = call i32 @sysfs_create_group(ptr noundef %kobj, ptr noundef @dock_attribute_group) #16, !dbg !2894
  store i32 %call20, ptr %ret, align 4, !dbg !2895
  %26 = load i32, ptr %ret, align 4, !dbg !2896
  %tobool = icmp ne i32 %26, 0, !dbg !2896
  br i1 %tobool, label %if.then21, label %if.end22, !dbg !2898

if.then21:                                        ; preds = %if.end18
  br label %err_unregister, !dbg !2899

if.end22:                                         ; preds = %if.end18
  %27 = load ptr, ptr %dock_station, align 8, !dbg !2900
  %28 = load ptr, ptr %adev.addr, align 8, !dbg !2901
  %call23 = call i32 @add_dock_dependent_device(ptr noundef %27, ptr noundef %28) #16, !dbg !2902
  store i32 %call23, ptr %ret, align 4, !dbg !2903
  %29 = load i32, ptr %ret, align 4, !dbg !2904
  %tobool24 = icmp ne i32 %29, 0, !dbg !2904
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !2906

if.then25:                                        ; preds = %if.end22
  br label %err_rmgroup, !dbg !2907

if.end26:                                         ; preds = %if.end22
  %30 = load i32, ptr @dock_station_count, align 4, !dbg !2908
  %inc = add i32 %30, 1, !dbg !2908
  store i32 %inc, ptr @dock_station_count, align 4, !dbg !2908
  %31 = load ptr, ptr %dock_station, align 8, !dbg !2909
  %sibling27 = getelementptr inbounds %struct.dock_station, ptr %31, i32 0, i32 4, !dbg !2910
  call void @list_add(ptr noundef %sibling27, ptr noundef @dock_stations) #16, !dbg !2911
  %32 = load ptr, ptr %adev.addr, align 8, !dbg !2912
  %flags28 = getelementptr inbounds %struct.acpi_device, ptr %32, i32 0, i32 7, !dbg !2913
  %bf.load = load i32, ptr %flags28, align 4, !dbg !2914
  %bf.clear = and i32 %bf.load, -257, !dbg !2914
  %bf.set = or i32 %bf.clear, 256, !dbg !2914
  store i32 %bf.set, ptr %flags28, align 4, !dbg !2914
  br label %do.body, !dbg !2915

do.body:                                          ; preds = %if.end26
  br label %do.cond, !dbg !2917

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2917

do.end:                                           ; preds = %do.cond
  %33 = load ptr, ptr %adev.addr, align 8, !dbg !2915
  %dev29 = getelementptr inbounds %struct.acpi_device, ptr %33, i32 0, i32 18, !dbg !2915
  %34 = load i32, ptr @dock_station_count, align 4, !dbg !2915
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev29, ptr noundef @.str.3, i32 noundef %34) #18, !dbg !2915
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2919

err_rmgroup:                                      ; preds = %if.then25
  call void @llvm.dbg.label(metadata !2807), !dbg !2920
  %35 = load ptr, ptr %dd, align 8, !dbg !2921
  %dev30 = getelementptr inbounds %struct.platform_device, ptr %35, i32 0, i32 3, !dbg !2922
  %kobj31 = getelementptr inbounds %struct.device, ptr %dev30, i32 0, i32 0, !dbg !2923
  call void @sysfs_remove_group(ptr noundef %kobj31, ptr noundef @dock_attribute_group) #16, !dbg !2924
  br label %err_unregister, !dbg !2924

err_unregister:                                   ; preds = %err_rmgroup, %if.then21
  call void @llvm.dbg.label(metadata !2808), !dbg !2925
  %36 = load ptr, ptr %dd, align 8, !dbg !2926
  call void @platform_device_unregister(ptr noundef %36) #16, !dbg !2927
  %37 = load ptr, ptr %handle, align 8, !dbg !2928
  %38 = load i32, ptr %ret, align 4, !dbg !2928
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str, ptr noundef %37, ptr noundef @.str.4, ptr noundef @__func__.acpi_dock_add, i32 noundef %38) #16, !dbg !2928
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2929
  br label %cleanup, !dbg !2929

cleanup:                                          ; preds = %err_unregister, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !2929
  call void @llvm.lifetime.end.p0(i64 8, ptr %dd) #15, !dbg !2929
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #15, !dbg !2929
  call void @llvm.lifetime.end.p0(i64 88, ptr %pdevinfo) #15, !dbg !2929
  call void @llvm.lifetime.end.p0(i64 64, ptr %ds) #15, !dbg !2929
  call void @llvm.lifetime.end.p0(i64 8, ptr %dock_station) #15, !dbg !2929
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2929

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_fwnode_handle(ptr noundef %adev) #4 align 16 !dbg !2930 {
entry:
  %adev.addr = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !2934, metadata !DIExpression()), !dbg !2935
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !2936
  %fwnode = getelementptr inbounds %struct.acpi_device, ptr %0, i32 0, i32 3, !dbg !2937
  ret ptr %fwnode, !dbg !2938
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2939 dso_local ptr @platform_device_register_full(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #4 align 16 !dbg !2944 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2949, metadata !DIExpression()), !dbg !2950
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2951
  %1 = ptrtoint ptr %0 to i64, !dbg !2951
  %2 = inttoptr i64 %1 to ptr, !dbg !2951
  %3 = ptrtoint ptr %2 to i64, !dbg !2951
  %cmp = icmp uge i64 %3, -4095, !dbg !2951
  %lnot = xor i1 %cmp, true, !dbg !2951
  %lnot1 = xor i1 %lnot, true, !dbg !2951
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2951
  %conv = sext i32 %lnot.ext to i64, !dbg !2951
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2951
  %tobool = icmp ne i64 %expval, 0, !dbg !2951
  ret i1 %tobool, !dbg !2952
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #4 align 16 !dbg !2953 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !2958, metadata !DIExpression()), !dbg !2959
  br label %do.body, !dbg !2960

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2961

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !2963

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !2961

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !2965
  %1 = load ptr, ptr %list.addr, align 8, !dbg !2965
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !2965
  store volatile ptr %0, ptr %next, align 8, !dbg !2965
  br label %do.end3, !dbg !2965

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !2961

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !2967

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !2968

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !2970

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !2968

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !2972
  %3 = load ptr, ptr %list.addr, align 8, !dbg !2972
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !2972
  store volatile ptr %2, ptr %prev, align 8, !dbg !2972
  br label %do.end9, !dbg !2972

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !2968

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !2974
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dev_set_uevent_suppress(ptr noundef %dev, i32 noundef %val) #4 align 16 !dbg !2975 {
entry:
  %dev.addr = alloca ptr, align 8
  %val.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2979, metadata !DIExpression()), !dbg !2981
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !2980, metadata !DIExpression()), !dbg !2982
  %0 = load i32, ptr %val.addr, align 4, !dbg !2983
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2984
  %kobj = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 0, !dbg !2985
  %uevent_suppress = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 7, !dbg !2986
  %2 = trunc i32 %0 to i8, !dbg !2987
  %bf.load = load i8, ptr %uevent_suppress, align 4, !dbg !2987
  %bf.value = and i8 %2, 1, !dbg !2987
  %bf.shl = shl i8 %bf.value, 4, !dbg !2987
  %bf.clear = and i8 %bf.load, -17, !dbg !2987
  %bf.set = or i8 %bf.clear, %bf.shl, !dbg !2987
  store i8 %bf.set, ptr %uevent_suppress, align 4, !dbg !2987
  %bf.result.cast = zext i8 %bf.value to i32, !dbg !2987
  ret void, !dbg !2988
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2989 dso_local zeroext i1 @acpi_ata_match(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2990 dso_local zeroext i1 @acpi_device_is_battery(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2992 dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add(ptr noundef %new, ptr noundef %head) #4 align 16 !dbg !2995 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2999, metadata !DIExpression()), !dbg !3001
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !3000, metadata !DIExpression()), !dbg !3002
  %0 = load ptr, ptr %new.addr, align 8, !dbg !3003
  %1 = load ptr, ptr %head.addr, align 8, !dbg !3004
  %2 = load ptr, ptr %head.addr, align 8, !dbg !3005
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !3006
  %3 = load ptr, ptr %next, align 8, !dbg !3006
  call void @__list_add(ptr noundef %0, ptr noundef %1, ptr noundef %3) #16, !dbg !3007
  ret void, !dbg !3008
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !3009 dso_local void @_dev_info(ptr noundef, ptr noundef, ...) #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3013 dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3016 dso_local void @platform_device_unregister(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !3019 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3023, metadata !DIExpression()), !dbg !3025
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3024, metadata !DIExpression()), !dbg !3026
  %0 = load i64, ptr %size.addr, align 8, !dbg !3027
  %1 = load i32, ptr %flags.addr, align 4, !dbg !3028
  %or = or i32 %1, 256, !dbg !3029
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #17, !dbg !3030
  ret ptr %call, !dbg !3031
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #4 align 16 !dbg !3032 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3034, metadata !DIExpression()), !dbg !3036
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !3035, metadata !DIExpression()), !dbg !3037
  %0 = load ptr, ptr %new.addr, align 8, !dbg !3038
  %1 = load ptr, ptr %head.addr, align 8, !dbg !3039
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3040
  %2 = load ptr, ptr %prev, align 8, !dbg !3040
  %3 = load ptr, ptr %head.addr, align 8, !dbg !3041
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #16, !dbg !3042
  ret void, !dbg !3043
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !3044 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3046, metadata !DIExpression()), !dbg !3051
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3047, metadata !DIExpression()), !dbg !3052
  %0 = load i64, ptr %size.addr, align 8, !dbg !3053
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3054
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !3055

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !3056
  %tobool = icmp ne i64 %2, 0, !dbg !3056
  br i1 %tobool, label %if.then, label %if.end7, !dbg !3057

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !3058
  call void @llvm.dbg.declare(metadata ptr %index, metadata !3048, metadata !DIExpression()), !dbg !3059
  %3 = load i64, ptr %size.addr, align 8, !dbg !3060
  %cmp = icmp ugt i64 %3, 8192, !dbg !3062
  br i1 %cmp, label %if.then1, label %if.end, !dbg !3063

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !3064
  %5 = load i32, ptr %flags.addr, align 4, !dbg !3065
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #17, !dbg !3066
  store ptr %call, ptr %retval, align 8, !dbg !3067
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3067

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !3068
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #16, !dbg !3068
  store i32 %call2, ptr %index, align 4, !dbg !3069
  %7 = load i32, ptr %flags.addr, align 4, !dbg !3070
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !3071
  %9 = ptrtoint ptr %8 to i64, !dbg !3071
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #16, !dbg !3072
  %idxprom = zext i32 %call3 to i64, !dbg !3073
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !3073
  %10 = load i32, ptr %index, align 4, !dbg !3074
  %idxprom4 = zext i32 %10 to i64, !dbg !3073
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !3073
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !3073
  %12 = load i32, ptr %flags.addr, align 4, !dbg !3075
  %13 = load i64, ptr %size.addr, align 8, !dbg !3076
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #19, !dbg !3077
  store ptr %call6, ptr %retval, align 8, !dbg !3078
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3078

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !3079
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !3080
  %15 = load i32, ptr %flags.addr, align 4, !dbg !3081
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #17, !dbg !3082
  store ptr %call8, ptr %retval, align 8, !dbg !3083
  br label %return, !dbg !3083

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !3084
  ret ptr %16, !dbg !3084
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3085 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #11 align 16 !dbg !3086 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3090, metadata !DIExpression()), !dbg !3092
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !3091, metadata !DIExpression()), !dbg !3093
  %0 = load i64, ptr %size.addr, align 8, !dbg !3094
  %tobool = icmp ne i64 %0, 0, !dbg !3094
  br i1 %tobool, label %if.end, label %if.then, !dbg !3096

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3097
  br label %return, !dbg !3097

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !3098
  %cmp = icmp ule i64 %1, 8, !dbg !3100
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !3101

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !3102
  br label %return, !dbg !3102

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !3103
  %cmp3 = icmp ugt i64 %2, 64, !dbg !3105
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !3106

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !3107
  %cmp4 = icmp ule i64 %3, 96, !dbg !3108
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3109

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !3110
  br label %return, !dbg !3110

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !3111
  %cmp7 = icmp ugt i64 %4, 128, !dbg !3113
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !3114

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !3115
  %cmp9 = icmp ule i64 %5, 192, !dbg !3116
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !3117

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !3118
  br label %return, !dbg !3118

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !3119
  %cmp12 = icmp ule i64 %6, 8, !dbg !3121
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !3122

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !3123
  br label %return, !dbg !3123

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !3124
  %cmp15 = icmp ule i64 %7, 16, !dbg !3126
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !3127

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !3128
  br label %return, !dbg !3128

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !3129
  %cmp18 = icmp ule i64 %8, 32, !dbg !3131
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !3132

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !3133
  br label %return, !dbg !3133

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !3134
  %cmp21 = icmp ule i64 %9, 64, !dbg !3136
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !3137

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !3138
  br label %return, !dbg !3138

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !3139
  %cmp24 = icmp ule i64 %10, 128, !dbg !3141
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !3142

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !3143
  br label %return, !dbg !3143

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !3144
  %cmp27 = icmp ule i64 %11, 256, !dbg !3146
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !3147

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !3148
  br label %return, !dbg !3148

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !3149
  %cmp30 = icmp ule i64 %12, 512, !dbg !3151
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !3152

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !3153
  br label %return, !dbg !3153

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !3154
  %cmp33 = icmp ule i64 %13, 1024, !dbg !3156
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !3157

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !3158
  br label %return, !dbg !3158

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !3159
  %cmp36 = icmp ule i64 %14, 2048, !dbg !3161
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !3162

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !3163
  br label %return, !dbg !3163

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !3164
  %cmp39 = icmp ule i64 %15, 4096, !dbg !3166
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !3167

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !3168
  br label %return, !dbg !3168

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !3169
  %cmp42 = icmp ule i64 %16, 8192, !dbg !3171
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !3172

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !3173
  br label %return, !dbg !3173

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !3174
  %cmp45 = icmp ule i64 %17, 16384, !dbg !3176
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !3177

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !3178
  br label %return, !dbg !3178

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !3179
  %cmp48 = icmp ule i64 %18, 32768, !dbg !3181
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !3182

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !3183
  br label %return, !dbg !3183

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !3184
  %cmp51 = icmp ule i64 %19, 65536, !dbg !3186
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !3187

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !3188
  br label %return, !dbg !3188

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !3189
  %cmp54 = icmp ule i64 %20, 131072, !dbg !3191
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !3192

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !3193
  br label %return, !dbg !3193

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !3194
  %cmp57 = icmp ule i64 %21, 262144, !dbg !3196
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !3197

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !3198
  br label %return, !dbg !3198

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !3199
  %cmp60 = icmp ule i64 %22, 524288, !dbg !3201
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !3202

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !3203
  br label %return, !dbg !3203

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !3204
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !3206
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !3207

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !3208
  br label %return, !dbg !3208

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !3209
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !3211
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !3212

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !3213
  br label %return, !dbg !3213

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !3214, !range !2447, !noundef !365
  %tobool69 = trunc i8 %25 to i1, !dbg !3214
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !3216

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !3217

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_117() #20, !dbg !3218, !srcloc !3221
  unreachable, !dbg !3218

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !3222

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !3223

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !3224

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !3226

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !3224

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.5, i32 480, i32 0, i64 12) #15, !dbg !3228, !srcloc !3230
  br label %do.end75, !dbg !3228

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !3224

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !3231
  br label %return, !dbg !3231

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !3232
  ret i32 %26, !dbg !3232
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !3233 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #11 align 16 !dbg !3239 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3243, metadata !DIExpression()), !dbg !3245
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !3244, metadata !DIExpression()), !dbg !3246
  %0 = load i32, ptr %flags.addr, align 4, !dbg !3247
  %and = and i32 %0, 17, !dbg !3247
  %cmp = icmp eq i32 %and, 0, !dbg !3247
  %lnot = xor i1 %cmp, true, !dbg !3247
  %lnot1 = xor i1 %lnot, true, !dbg !3247
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3247
  %conv = sext i32 %lnot.ext to i64, !dbg !3247
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !3247
  %tobool = icmp ne i64 %expval, 0, !dbg !3247
  br i1 %tobool, label %if.then, label %if.end, !dbg !3249

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3250
  br label %return, !dbg !3250

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !3251
  %and2 = and i32 %1, 1, !dbg !3253
  %tobool3 = icmp ne i32 %and2, 0, !dbg !3253
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !3254

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !3255
  br label %return, !dbg !3255

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !3256
  br label %return, !dbg !3256

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !3258
  ret i32 %2, !dbg !3258
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #13

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !3259 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !3260 dso_local void @__compiletime_assert_117() #14

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #13

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !3261 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3265, metadata !DIExpression()), !dbg !3268
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3266, metadata !DIExpression()), !dbg !3269
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3267, metadata !DIExpression()), !dbg !3270
  %0 = load ptr, ptr %new.addr, align 8, !dbg !3271
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !3273
  %2 = load ptr, ptr %next.addr, align 8, !dbg !3274
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #16, !dbg !3275
  br i1 %call, label %if.end, label %if.then, !dbg !3276

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !3277

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !3278
  %4 = load ptr, ptr %next.addr, align 8, !dbg !3279
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !3280
  store ptr %3, ptr %prev1, align 8, !dbg !3281
  %5 = load ptr, ptr %next.addr, align 8, !dbg !3282
  %6 = load ptr, ptr %new.addr, align 8, !dbg !3283
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !3284
  store ptr %5, ptr %next2, align 8, !dbg !3285
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !3286
  %8 = load ptr, ptr %new.addr, align 8, !dbg !3287
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !3288
  store ptr %7, ptr %prev3, align 8, !dbg !3289
  br label %do.body, !dbg !3290

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !3291

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !3293

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !3291

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !3295
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !3295
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !3295
  store volatile ptr %9, ptr %next6, align 8, !dbg !3295
  br label %do.end7, !dbg !3295

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !3291

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !3297
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #4 align 16 !dbg !3298 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !3302, metadata !DIExpression()), !dbg !3305
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3303, metadata !DIExpression()), !dbg !3306
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3304, metadata !DIExpression()), !dbg !3307
  ret i1 true, !dbg !3308
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @handle_dock(ptr noundef %ds, i32 noundef %dock) #0 align 16 !dbg !3309 {
entry:
  %ds.addr = alloca ptr, align 8
  %dock.addr = alloca i32, align 4
  %status = alloca i32, align 4
  %arg_list = alloca %struct.acpi_object_list, align 8
  %arg = alloca %union.acpi_object, align 8
  %value = alloca i64, align 8
  store ptr %ds, ptr %ds.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ds.addr, metadata !3313, metadata !DIExpression()), !dbg !3323
  store i32 %dock, ptr %dock.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dock.addr, metadata !3314, metadata !DIExpression()), !dbg !3324
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !3325
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3315, metadata !DIExpression()), !dbg !3326
  call void @llvm.lifetime.start.p0(i64 16, ptr %arg_list) #15, !dbg !3327
  call void @llvm.dbg.declare(metadata ptr %arg_list, metadata !3316, metadata !DIExpression()), !dbg !3328
  call void @llvm.lifetime.start.p0(i64 24, ptr %arg) #15, !dbg !3329
  call void @llvm.dbg.declare(metadata ptr %arg, metadata !3321, metadata !DIExpression()), !dbg !3330
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #15, !dbg !3331
  call void @llvm.dbg.declare(metadata ptr %value, metadata !3322, metadata !DIExpression()), !dbg !3332
  %0 = load ptr, ptr %ds.addr, align 8, !dbg !3333
  %handle = getelementptr inbounds %struct.dock_station, ptr %0, i32 0, i32 0, !dbg !3333
  %1 = load ptr, ptr %handle, align 8, !dbg !3333
  %2 = load i32, ptr %dock.addr, align 4, !dbg !3333
  %tobool = icmp ne i32 %2, 0, !dbg !3333
  %3 = zext i1 %tobool to i64, !dbg !3333
  %cond = select i1 %tobool, ptr @.str.8, ptr @.str.9, !dbg !3333
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.6, ptr noundef %1, ptr noundef @.str.7, ptr noundef %cond) #16, !dbg !3333
  %count = getelementptr inbounds %struct.acpi_object_list, ptr %arg_list, i32 0, i32 0, !dbg !3334
  store i32 1, ptr %count, align 8, !dbg !3335
  %pointer = getelementptr inbounds %struct.acpi_object_list, ptr %arg_list, i32 0, i32 1, !dbg !3336
  store ptr %arg, ptr %pointer, align 8, !dbg !3337
  store i32 1, ptr %arg, align 8, !dbg !3338
  %4 = load i32, ptr %dock.addr, align 4, !dbg !3339
  %conv = sext i32 %4 to i64, !dbg !3339
  %value1 = getelementptr inbounds %struct.anon.5, ptr %arg, i32 0, i32 1, !dbg !3340
  store i64 %conv, ptr %value1, align 8, !dbg !3341
  %5 = load ptr, ptr %ds.addr, align 8, !dbg !3342
  %handle2 = getelementptr inbounds %struct.dock_station, ptr %5, i32 0, i32 0, !dbg !3343
  %6 = load ptr, ptr %handle2, align 8, !dbg !3343
  %call = call i32 @acpi_evaluate_integer(ptr noundef %6, ptr noundef @.str.10, ptr noundef %arg_list, ptr noundef %value) #16, !dbg !3344
  store i32 %call, ptr %status, align 4, !dbg !3345
  %7 = load i32, ptr %status, align 4, !dbg !3346
  %tobool3 = icmp ne i32 %7, 0, !dbg !3346
  br i1 %tobool3, label %land.lhs.true, label %if.end, !dbg !3348

land.lhs.true:                                    ; preds = %entry
  %8 = load i32, ptr %status, align 4, !dbg !3349
  %cmp = icmp ne i32 %8, 5, !dbg !3350
  br i1 %cmp, label %if.then, label %if.end, !dbg !3351

if.then:                                          ; preds = %land.lhs.true
  %9 = load ptr, ptr %ds.addr, align 8, !dbg !3352
  %handle5 = getelementptr inbounds %struct.dock_station, ptr %9, i32 0, i32 0, !dbg !3352
  %10 = load ptr, ptr %handle5, align 8, !dbg !3352
  %11 = load i32, ptr %status, align 4, !dbg !3352
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str, ptr noundef %10, ptr noundef @.str.11, i32 noundef %11) #16, !dbg !3352
  br label %if.end, !dbg !3352

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #15, !dbg !3353
  call void @llvm.lifetime.end.p0(i64 24, ptr %arg) #15, !dbg !3353
  call void @llvm.lifetime.end.p0(i64 16, ptr %arg_list) #15, !dbg !3353
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !3353
  ret void, !dbg !3353
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3354 dso_local i32 @acpi_evaluate_integer(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dock_hotplug_event(ptr noundef %dd, i32 noundef %event, i32 noundef %cb_type) #0 align 16 !dbg !3360 {
entry:
  %dd.addr = alloca ptr, align 8
  %event.addr = alloca i32, align 4
  %cb_type.addr = alloca i32, align 4
  %adev = alloca ptr, align 8
  %fixup = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %uevent = alloca ptr, align 8
  %notify = alloca ptr, align 8
  store ptr %dd, ptr %dd.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dd.addr, metadata !3364, metadata !DIExpression()), !dbg !3377
  store i32 %event, ptr %event.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %event.addr, metadata !3365, metadata !DIExpression()), !dbg !3378
  store i32 %cb_type, ptr %cb_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cb_type.addr, metadata !3366, metadata !DIExpression()), !dbg !3379
  call void @llvm.lifetime.start.p0(i64 8, ptr %adev) #15, !dbg !3380
  call void @llvm.dbg.declare(metadata ptr %adev, metadata !3367, metadata !DIExpression()), !dbg !3381
  %0 = load ptr, ptr %dd.addr, align 8, !dbg !3382
  %adev1 = getelementptr inbounds %struct.dock_dependent_device, ptr %0, i32 0, i32 1, !dbg !3383
  %1 = load ptr, ptr %adev1, align 8, !dbg !3383
  store ptr %1, ptr %adev, align 8, !dbg !3381
  call void @acpi_lock_hp_context() #16, !dbg !3384
  %2 = load ptr, ptr %adev, align 8, !dbg !3385
  %hp = getelementptr inbounds %struct.acpi_device, ptr %2, i32 0, i32 15, !dbg !3387
  %3 = load ptr, ptr %hp, align 8, !dbg !3387
  %tobool = icmp ne ptr %3, null, !dbg !3385
  br i1 %tobool, label %if.end, label %if.then, !dbg !3388

if.then:                                          ; preds = %entry
  br label %out, !dbg !3389

if.end:                                           ; preds = %entry
  %4 = load i32, ptr %cb_type.addr, align 4, !dbg !3390
  %cmp = icmp eq i32 %4, 1, !dbg !3391
  br i1 %cmp, label %if.then2, label %if.else, !dbg !3392

if.then2:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %fixup) #15, !dbg !3393
  call void @llvm.dbg.declare(metadata ptr %fixup, metadata !3368, metadata !DIExpression()), !dbg !3394
  %5 = load ptr, ptr %adev, align 8, !dbg !3395
  %hp3 = getelementptr inbounds %struct.acpi_device, ptr %5, i32 0, i32 15, !dbg !3396
  %6 = load ptr, ptr %hp3, align 8, !dbg !3396
  %fixup4 = getelementptr inbounds %struct.acpi_hotplug_context, ptr %6, i32 0, i32 3, !dbg !3397
  %7 = load ptr, ptr %fixup4, align 8, !dbg !3397
  store ptr %7, ptr %fixup, align 8, !dbg !3398
  %8 = load ptr, ptr %fixup, align 8, !dbg !3399
  %tobool5 = icmp ne ptr %8, null, !dbg !3399
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !3401

if.then6:                                         ; preds = %if.then2
  call void @acpi_unlock_hp_context() #16, !dbg !3402
  %9 = load ptr, ptr %fixup, align 8, !dbg !3404
  %10 = load ptr, ptr %adev, align 8, !dbg !3405
  call void %9(ptr noundef %10) #16, !dbg !3404
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3406

if.end7:                                          ; preds = %if.then2
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3407
  br label %cleanup, !dbg !3407

cleanup:                                          ; preds = %if.end7, %if.then6
  call void @llvm.lifetime.end.p0(i64 8, ptr %fixup) #15, !dbg !3407
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup29 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end28, !dbg !3408

if.else:                                          ; preds = %if.end
  %11 = load i32, ptr %cb_type.addr, align 4, !dbg !3409
  %cmp8 = icmp eq i32 %11, 2, !dbg !3410
  br i1 %cmp8, label %if.then9, label %if.else18, !dbg !3411

if.then9:                                         ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %uevent) #15, !dbg !3412
  call void @llvm.dbg.declare(metadata ptr %uevent, metadata !3371, metadata !DIExpression()), !dbg !3413
  %12 = load ptr, ptr %adev, align 8, !dbg !3414
  %hp10 = getelementptr inbounds %struct.acpi_device, ptr %12, i32 0, i32 15, !dbg !3415
  %13 = load ptr, ptr %hp10, align 8, !dbg !3415
  %uevent11 = getelementptr inbounds %struct.acpi_hotplug_context, ptr %13, i32 0, i32 2, !dbg !3416
  %14 = load ptr, ptr %uevent11, align 8, !dbg !3416
  store ptr %14, ptr %uevent, align 8, !dbg !3417
  %15 = load ptr, ptr %uevent, align 8, !dbg !3418
  %tobool12 = icmp ne ptr %15, null, !dbg !3418
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !3420

if.then13:                                        ; preds = %if.then9
  call void @acpi_unlock_hp_context() #16, !dbg !3421
  %16 = load ptr, ptr %uevent, align 8, !dbg !3423
  %17 = load ptr, ptr %adev, align 8, !dbg !3424
  %18 = load i32, ptr %event.addr, align 4, !dbg !3425
  call void %16(ptr noundef %17, i32 noundef %18) #16, !dbg !3423
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup15, !dbg !3426

if.end14:                                         ; preds = %if.then9
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3427
  br label %cleanup15, !dbg !3427

cleanup15:                                        ; preds = %if.end14, %if.then13
  call void @llvm.lifetime.end.p0(i64 8, ptr %uevent) #15, !dbg !3427
  %cleanup.dest16 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest16, label %cleanup29 [
    i32 0, label %cleanup.cont17
  ]

cleanup.cont17:                                   ; preds = %cleanup15
  br label %if.end27, !dbg !3428

if.else18:                                        ; preds = %if.else
  call void @llvm.lifetime.start.p0(i64 8, ptr %notify) #15, !dbg !3429
  call void @llvm.dbg.declare(metadata ptr %notify, metadata !3374, metadata !DIExpression()), !dbg !3430
  %19 = load ptr, ptr %adev, align 8, !dbg !3431
  %hp19 = getelementptr inbounds %struct.acpi_device, ptr %19, i32 0, i32 15, !dbg !3432
  %20 = load ptr, ptr %hp19, align 8, !dbg !3432
  %notify20 = getelementptr inbounds %struct.acpi_hotplug_context, ptr %20, i32 0, i32 1, !dbg !3433
  %21 = load ptr, ptr %notify20, align 8, !dbg !3433
  store ptr %21, ptr %notify, align 8, !dbg !3434
  %22 = load ptr, ptr %notify, align 8, !dbg !3435
  %tobool21 = icmp ne ptr %22, null, !dbg !3435
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !3437

if.then22:                                        ; preds = %if.else18
  call void @acpi_unlock_hp_context() #16, !dbg !3438
  %23 = load ptr, ptr %notify, align 8, !dbg !3440
  %24 = load ptr, ptr %adev, align 8, !dbg !3441
  %25 = load i32, ptr %event.addr, align 4, !dbg !3442
  %call = call i32 %23(ptr noundef %24, i32 noundef %25) #16, !dbg !3440
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup24, !dbg !3443

if.end23:                                         ; preds = %if.else18
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3444
  br label %cleanup24, !dbg !3444

cleanup24:                                        ; preds = %if.end23, %if.then22
  call void @llvm.lifetime.end.p0(i64 8, ptr %notify) #15, !dbg !3444
  %cleanup.dest25 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest25, label %cleanup29 [
    i32 0, label %cleanup.cont26
  ]

cleanup.cont26:                                   ; preds = %cleanup24
  br label %if.end27

if.end27:                                         ; preds = %cleanup.cont26, %cleanup.cont17
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %cleanup.cont
  br label %out, !dbg !3445

out:                                              ; preds = %if.end28, %if.then
  call void @llvm.dbg.label(metadata !3376), !dbg !3446
  call void @acpi_unlock_hp_context() #16, !dbg !3447
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3448
  br label %cleanup29, !dbg !3448

cleanup29:                                        ; preds = %out, %cleanup24, %cleanup15, %cleanup
  call void @llvm.lifetime.end.p0(i64 8, ptr %adev) #15, !dbg !3448
  %cleanup.dest30 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest30, label %unreachable [
    i32 0, label %cleanup.cont31
    i32 1, label %cleanup.cont31
  ]

cleanup.cont31:                                   ; preds = %cleanup29, %cleanup29
  ret void, !dbg !3448

unreachable:                                      ; preds = %cleanup29
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3449 dso_local i32 @acpi_bus_scan(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3452 dso_local void @acpi_lock_hp_context() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3453 dso_local void @acpi_unlock_hp_context() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3454 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3458 dso_local i32 @kobject_uevent_env(ptr noundef, i32 noundef, ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @hot_remove_dock_devices(ptr noundef %ds) #0 align 16 !dbg !3462 {
entry:
  %ds.addr = alloca ptr, align 8
  %dd = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %__mptr7 = alloca ptr, align 8
  %tmp10 = alloca ptr, align 8
  %__mptr19 = alloca ptr, align 8
  %tmp22 = alloca ptr, align 8
  store ptr %ds, ptr %ds.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ds.addr, metadata !3464, metadata !DIExpression()), !dbg !3478
  call void @llvm.lifetime.start.p0(i64 8, ptr %dd) #15, !dbg !3479
  call void @llvm.dbg.declare(metadata ptr %dd, metadata !3465, metadata !DIExpression()), !dbg !3480
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #15, !dbg !3481
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3466, metadata !DIExpression()), !dbg !3481
  %0 = load ptr, ptr %ds.addr, align 8, !dbg !3481
  %dependent_devices = getelementptr inbounds %struct.dock_station, ptr %0, i32 0, i32 3, !dbg !3481
  %prev = getelementptr inbounds %struct.list_head, ptr %dependent_devices, i32 0, i32 1, !dbg !3481
  %1 = load ptr, ptr %prev, align 8, !dbg !3481
  store ptr %1, ptr %__mptr, align 8, !dbg !3481
  %2 = load ptr, ptr %__mptr, align 8, !dbg !3481
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !3481
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3481
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #15, !dbg !3482
  %3 = load ptr, ptr %tmp, align 8, !dbg !3481
  store ptr %3, ptr %dd, align 8, !dbg !3482
  br label %for.cond, !dbg !3482

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %dd, align 8, !dbg !3483
  %list = getelementptr inbounds %struct.dock_dependent_device, ptr %4, i32 0, i32 0, !dbg !3483
  %5 = load ptr, ptr %ds.addr, align 8, !dbg !3483
  %dependent_devices1 = getelementptr inbounds %struct.dock_station, ptr %5, i32 0, i32 3, !dbg !3483
  %cmp = icmp eq ptr %list, %dependent_devices1, !dbg !3483
  %lnot = xor i1 %cmp, true, !dbg !3483
  br i1 %lnot, label %for.body, label %for.end, !dbg !3482

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %dd, align 8, !dbg !3484
  call void @dock_hotplug_event(ptr noundef %6, i32 noundef 3, i32 noundef 0) #16, !dbg !3485
  br label %for.inc, !dbg !3485

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #15, !dbg !3486
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !3469, metadata !DIExpression()), !dbg !3486
  %7 = load ptr, ptr %dd, align 8, !dbg !3486
  %list3 = getelementptr inbounds %struct.dock_dependent_device, ptr %7, i32 0, i32 0, !dbg !3486
  %prev4 = getelementptr inbounds %struct.list_head, ptr %list3, i32 0, i32 1, !dbg !3486
  %8 = load ptr, ptr %prev4, align 8, !dbg !3486
  store ptr %8, ptr %__mptr2, align 8, !dbg !3486
  %9 = load ptr, ptr %__mptr2, align 8, !dbg !3486
  %add.ptr6 = getelementptr i8, ptr %9, i64 0, !dbg !3486
  store ptr %add.ptr6, ptr %tmp5, align 8, !dbg !3486
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #15, !dbg !3483
  %10 = load ptr, ptr %tmp5, align 8, !dbg !3486
  store ptr %10, ptr %dd, align 8, !dbg !3483
  br label %for.cond, !dbg !3483, !llvm.loop !3487

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr7) #15, !dbg !3489
  call void @llvm.dbg.declare(metadata ptr %__mptr7, metadata !3472, metadata !DIExpression()), !dbg !3489
  %11 = load ptr, ptr %ds.addr, align 8, !dbg !3489
  %dependent_devices8 = getelementptr inbounds %struct.dock_station, ptr %11, i32 0, i32 3, !dbg !3489
  %prev9 = getelementptr inbounds %struct.list_head, ptr %dependent_devices8, i32 0, i32 1, !dbg !3489
  %12 = load ptr, ptr %prev9, align 8, !dbg !3489
  store ptr %12, ptr %__mptr7, align 8, !dbg !3489
  %13 = load ptr, ptr %__mptr7, align 8, !dbg !3489
  %add.ptr11 = getelementptr i8, ptr %13, i64 0, !dbg !3489
  store ptr %add.ptr11, ptr %tmp10, align 8, !dbg !3489
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr7) #15, !dbg !3490
  %14 = load ptr, ptr %tmp10, align 8, !dbg !3489
  store ptr %14, ptr %dd, align 8, !dbg !3490
  br label %for.cond12, !dbg !3490

for.cond12:                                       ; preds = %for.inc18, %for.end
  %15 = load ptr, ptr %dd, align 8, !dbg !3491
  %list13 = getelementptr inbounds %struct.dock_dependent_device, ptr %15, i32 0, i32 0, !dbg !3491
  %16 = load ptr, ptr %ds.addr, align 8, !dbg !3491
  %dependent_devices14 = getelementptr inbounds %struct.dock_station, ptr %16, i32 0, i32 3, !dbg !3491
  %cmp15 = icmp eq ptr %list13, %dependent_devices14, !dbg !3491
  %lnot16 = xor i1 %cmp15, true, !dbg !3491
  br i1 %lnot16, label %for.body17, label %for.end24, !dbg !3490

for.body17:                                       ; preds = %for.cond12
  %17 = load ptr, ptr %dd, align 8, !dbg !3492
  %adev = getelementptr inbounds %struct.dock_dependent_device, ptr %17, i32 0, i32 1, !dbg !3493
  %18 = load ptr, ptr %adev, align 8, !dbg !3493
  call void @acpi_bus_trim(ptr noundef %18) #16, !dbg !3494
  br label %for.inc18, !dbg !3494

for.inc18:                                        ; preds = %for.body17
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr19) #15, !dbg !3495
  call void @llvm.dbg.declare(metadata ptr %__mptr19, metadata !3475, metadata !DIExpression()), !dbg !3495
  %19 = load ptr, ptr %dd, align 8, !dbg !3495
  %list20 = getelementptr inbounds %struct.dock_dependent_device, ptr %19, i32 0, i32 0, !dbg !3495
  %prev21 = getelementptr inbounds %struct.list_head, ptr %list20, i32 0, i32 1, !dbg !3495
  %20 = load ptr, ptr %prev21, align 8, !dbg !3495
  store ptr %20, ptr %__mptr19, align 8, !dbg !3495
  %21 = load ptr, ptr %__mptr19, align 8, !dbg !3495
  %add.ptr23 = getelementptr i8, ptr %21, i64 0, !dbg !3495
  store ptr %add.ptr23, ptr %tmp22, align 8, !dbg !3495
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr19) #15, !dbg !3491
  %22 = load ptr, ptr %tmp22, align 8, !dbg !3495
  store ptr %22, ptr %dd, align 8, !dbg !3491
  br label %for.cond12, !dbg !3491, !llvm.loop !3496

for.end24:                                        ; preds = %for.cond12
  call void @llvm.lifetime.end.p0(i64 8, ptr %dd) #15, !dbg !3498
  ret void, !dbg !3498
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @undock(ptr noundef %ds) #4 align 16 !dbg !3499 {
entry:
  %ds.addr = alloca ptr, align 8
  store ptr %ds, ptr %ds.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ds.addr, metadata !3501, metadata !DIExpression()), !dbg !3502
  %0 = load ptr, ptr %ds.addr, align 8, !dbg !3503
  call void @handle_dock(ptr noundef %0, i32 noundef 0) #16, !dbg !3504
  ret void, !dbg !3505
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3506 dso_local i32 @acpi_evaluate_ej0(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @complete_undock(ptr noundef %ds) #4 align 16 !dbg !3509 {
entry:
  %ds.addr = alloca ptr, align 8
  store ptr %ds, ptr %ds.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ds.addr, metadata !3511, metadata !DIExpression()), !dbg !3512
  %0 = load ptr, ptr %ds.addr, align 8, !dbg !3513
  %flags = getelementptr inbounds %struct.dock_station, ptr %0, i32 0, i32 2, !dbg !3514
  %1 = load i32, ptr %flags, align 8, !dbg !3515
  %and = and i32 %1, -3, !dbg !3515
  store i32 %and, ptr %flags, align 8, !dbg !3515
  ret void, !dbg !3516
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3517 dso_local void @acpi_bus_trim(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @docked_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !3518 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %dock_station = alloca ptr, align 8
  %adev = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3520, metadata !DIExpression()), !dbg !3525
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3521, metadata !DIExpression()), !dbg !3526
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3522, metadata !DIExpression()), !dbg !3527
  call void @llvm.lifetime.start.p0(i64 8, ptr %dock_station) #15, !dbg !3528
  call void @llvm.dbg.declare(metadata ptr %dock_station, metadata !3523, metadata !DIExpression()), !dbg !3529
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3530
  %platform_data = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 7, !dbg !3531
  %1 = load ptr, ptr %platform_data, align 8, !dbg !3531
  store ptr %1, ptr %dock_station, align 8, !dbg !3529
  call void @llvm.lifetime.start.p0(i64 8, ptr %adev) #15, !dbg !3532
  call void @llvm.dbg.declare(metadata ptr %adev, metadata !3524, metadata !DIExpression()), !dbg !3533
  %2 = load ptr, ptr %dock_station, align 8, !dbg !3534
  %handle = getelementptr inbounds %struct.dock_station, ptr %2, i32 0, i32 0, !dbg !3535
  %3 = load ptr, ptr %handle, align 8, !dbg !3535
  %call = call ptr @acpi_fetch_acpi_dev(ptr noundef %3) #16, !dbg !3536
  store ptr %call, ptr %adev, align 8, !dbg !3533
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !3537
  %5 = load ptr, ptr %adev, align 8, !dbg !3538
  %call1 = call zeroext i1 @acpi_device_enumerated(ptr noundef %5) #16, !dbg !3539
  %conv = zext i1 %call1 to i32, !dbg !3539
  %call2 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %4, ptr noundef @.str.17, i32 noundef %conv) #16, !dbg !3540
  %conv3 = sext i32 %call2 to i64, !dbg !3540
  call void @llvm.lifetime.end.p0(i64 8, ptr %adev) #15, !dbg !3541
  call void @llvm.lifetime.end.p0(i64 8, ptr %dock_station) #15, !dbg !3541
  ret i64 %conv3, !dbg !3542
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3543 dso_local ptr @acpi_fetch_acpi_dev(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3546 dso_local i32 @sysfs_emit(ptr noundef, ptr noundef, ...) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @flags_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !3547 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %dock_station = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3549, metadata !DIExpression()), !dbg !3553
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3550, metadata !DIExpression()), !dbg !3554
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3551, metadata !DIExpression()), !dbg !3555
  call void @llvm.lifetime.start.p0(i64 8, ptr %dock_station) #15, !dbg !3556
  call void @llvm.dbg.declare(metadata ptr %dock_station, metadata !3552, metadata !DIExpression()), !dbg !3557
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3558
  %platform_data = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 7, !dbg !3559
  %1 = load ptr, ptr %platform_data, align 8, !dbg !3559
  store ptr %1, ptr %dock_station, align 8, !dbg !3557
  %2 = load ptr, ptr %buf.addr, align 8, !dbg !3560
  %3 = load ptr, ptr %dock_station, align 8, !dbg !3561
  %flags = getelementptr inbounds %struct.dock_station, ptr %3, i32 0, i32 2, !dbg !3562
  %4 = load i32, ptr %flags, align 8, !dbg !3562
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %2, ptr noundef @.str.19, i32 noundef %4) #16, !dbg !3563
  %conv = sext i32 %call to i64, !dbg !3563
  call void @llvm.lifetime.end.p0(i64 8, ptr %dock_station) #15, !dbg !3564
  ret i64 %conv, !dbg !3565
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @undock_store(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !3566 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  %dock_station = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3568, metadata !DIExpression()), !dbg !3574
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3569, metadata !DIExpression()), !dbg !3575
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3570, metadata !DIExpression()), !dbg !3576
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !3571, metadata !DIExpression()), !dbg !3577
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !3578
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3572, metadata !DIExpression()), !dbg !3579
  call void @llvm.lifetime.start.p0(i64 8, ptr %dock_station) #15, !dbg !3580
  call void @llvm.dbg.declare(metadata ptr %dock_station, metadata !3573, metadata !DIExpression()), !dbg !3581
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3582
  %platform_data = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 7, !dbg !3583
  %1 = load ptr, ptr %platform_data, align 8, !dbg !3583
  store ptr %1, ptr %dock_station, align 8, !dbg !3581
  %2 = load i64, ptr %count.addr, align 8, !dbg !3584
  %tobool = icmp ne i64 %2, 0, !dbg !3584
  br i1 %tobool, label %if.end, label %if.then, !dbg !3586

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !3587
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3587

if.end:                                           ; preds = %entry
  call void @acpi_scan_lock_acquire() #16, !dbg !3588
  %3 = load ptr, ptr %dock_station, align 8, !dbg !3589
  call void @begin_undock(ptr noundef %3) #16, !dbg !3590
  %4 = load ptr, ptr %dock_station, align 8, !dbg !3591
  %call = call i32 @handle_eject_request(ptr noundef %4, i32 noundef 3) #16, !dbg !3592
  store i32 %call, ptr %ret, align 4, !dbg !3593
  call void @acpi_scan_lock_release() #16, !dbg !3594
  %5 = load i32, ptr %ret, align 4, !dbg !3595
  %tobool1 = icmp ne i32 %5, 0, !dbg !3595
  br i1 %tobool1, label %cond.true, label %cond.false, !dbg !3595

cond.true:                                        ; preds = %if.end
  %6 = load i32, ptr %ret, align 4, !dbg !3596
  %conv = sext i32 %6 to i64, !dbg !3596
  br label %cond.end, !dbg !3595

cond.false:                                       ; preds = %if.end
  %7 = load i64, ptr %count.addr, align 8, !dbg !3597
  br label %cond.end, !dbg !3595

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %7, %cond.false ], !dbg !3595
  store i64 %cond, ptr %retval, align 8, !dbg !3598
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3598

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %dock_station) #15, !dbg !3599
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !3599
  %8 = load i64, ptr %retval, align 8, !dbg !3599
  ret i64 %8, !dbg !3599
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3600 dso_local void @acpi_scan_lock_acquire() #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3601 dso_local void @acpi_scan_lock_release() #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @uid_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !3602 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %lbuf = alloca i64, align 8
  %dock_station = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3604, metadata !DIExpression()), !dbg !3610
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3605, metadata !DIExpression()), !dbg !3611
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3606, metadata !DIExpression()), !dbg !3612
  call void @llvm.lifetime.start.p0(i64 8, ptr %lbuf) #15, !dbg !3613
  call void @llvm.dbg.declare(metadata ptr %lbuf, metadata !3607, metadata !DIExpression()), !dbg !3614
  call void @llvm.lifetime.start.p0(i64 8, ptr %dock_station) #15, !dbg !3615
  call void @llvm.dbg.declare(metadata ptr %dock_station, metadata !3608, metadata !DIExpression()), !dbg !3616
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3617
  %platform_data = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 7, !dbg !3618
  %1 = load ptr, ptr %platform_data, align 8, !dbg !3618
  store ptr %1, ptr %dock_station, align 8, !dbg !3616
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #15, !dbg !3619
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3609, metadata !DIExpression()), !dbg !3620
  %2 = load ptr, ptr %dock_station, align 8, !dbg !3621
  %handle = getelementptr inbounds %struct.dock_station, ptr %2, i32 0, i32 0, !dbg !3622
  %3 = load ptr, ptr %handle, align 8, !dbg !3622
  %call = call i32 @acpi_evaluate_integer(ptr noundef %3, ptr noundef @.str.22, ptr noundef null, ptr noundef %lbuf) #16, !dbg !3623
  store i32 %call, ptr %status, align 4, !dbg !3620
  %4 = load i32, ptr %status, align 4, !dbg !3624
  %tobool = icmp ne i32 %4, 0, !dbg !3624
  br i1 %tobool, label %if.then, label %if.end, !dbg !3626

if.then:                                          ; preds = %entry
  store i64 0, ptr %retval, align 8, !dbg !3627
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3627

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !3628
  %6 = load i64, ptr %lbuf, align 8, !dbg !3629
  %call1 = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %5, ptr noundef @.str.23, i64 noundef %6) #16, !dbg !3630
  %conv = sext i32 %call1 to i64, !dbg !3630
  store i64 %conv, ptr %retval, align 8, !dbg !3631
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3631

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #15, !dbg !3632
  call void @llvm.lifetime.end.p0(i64 8, ptr %dock_station) #15, !dbg !3632
  call void @llvm.lifetime.end.p0(i64 8, ptr %lbuf) #15, !dbg !3632
  %7 = load i64, ptr %retval, align 8, !dbg !3632
  ret i64 %7, !dbg !3632
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @type_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !3633 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %dock_station = alloca ptr, align 8
  %type = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3635, metadata !DIExpression()), !dbg !3640
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3636, metadata !DIExpression()), !dbg !3641
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3637, metadata !DIExpression()), !dbg !3642
  call void @llvm.lifetime.start.p0(i64 8, ptr %dock_station) #15, !dbg !3643
  call void @llvm.dbg.declare(metadata ptr %dock_station, metadata !3638, metadata !DIExpression()), !dbg !3644
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3645
  %platform_data = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 7, !dbg !3646
  %1 = load ptr, ptr %platform_data, align 8, !dbg !3646
  store ptr %1, ptr %dock_station, align 8, !dbg !3644
  call void @llvm.lifetime.start.p0(i64 8, ptr %type) #15, !dbg !3647
  call void @llvm.dbg.declare(metadata ptr %type, metadata !3639, metadata !DIExpression()), !dbg !3648
  %2 = load ptr, ptr %dock_station, align 8, !dbg !3649
  %flags = getelementptr inbounds %struct.dock_station, ptr %2, i32 0, i32 2, !dbg !3651
  %3 = load i32, ptr %flags, align 8, !dbg !3651
  %and = and i32 %3, 16, !dbg !3652
  %tobool = icmp ne i32 %and, 0, !dbg !3652
  br i1 %tobool, label %if.then, label %if.else, !dbg !3653

if.then:                                          ; preds = %entry
  store ptr @.str.25, ptr %type, align 8, !dbg !3654
  br label %if.end12, !dbg !3655

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %dock_station, align 8, !dbg !3656
  %flags1 = getelementptr inbounds %struct.dock_station, ptr %4, i32 0, i32 2, !dbg !3658
  %5 = load i32, ptr %flags1, align 8, !dbg !3658
  %and2 = and i32 %5, 32, !dbg !3659
  %tobool3 = icmp ne i32 %and2, 0, !dbg !3659
  br i1 %tobool3, label %if.then4, label %if.else5, !dbg !3660

if.then4:                                         ; preds = %if.else
  store ptr @.str.26, ptr %type, align 8, !dbg !3661
  br label %if.end11, !dbg !3662

if.else5:                                         ; preds = %if.else
  %6 = load ptr, ptr %dock_station, align 8, !dbg !3663
  %flags6 = getelementptr inbounds %struct.dock_station, ptr %6, i32 0, i32 2, !dbg !3665
  %7 = load i32, ptr %flags6, align 8, !dbg !3665
  %and7 = and i32 %7, 64, !dbg !3666
  %tobool8 = icmp ne i32 %and7, 0, !dbg !3666
  br i1 %tobool8, label %if.then9, label %if.else10, !dbg !3667

if.then9:                                         ; preds = %if.else5
  store ptr @.str.27, ptr %type, align 8, !dbg !3668
  br label %if.end, !dbg !3669

if.else10:                                        ; preds = %if.else5
  store ptr @.str.28, ptr %type, align 8, !dbg !3670
  br label %if.end

if.end:                                           ; preds = %if.else10, %if.then9
  br label %if.end11

if.end11:                                         ; preds = %if.end, %if.then4
  br label %if.end12

if.end12:                                         ; preds = %if.end11, %if.then
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !3671
  %9 = load ptr, ptr %type, align 8, !dbg !3672
  %call = call i32 (ptr, ptr, ...) @sysfs_emit(ptr noundef %8, ptr noundef @.str.7, ptr noundef %9) #16, !dbg !3673
  %conv = sext i32 %call to i64, !dbg !3673
  call void @llvm.lifetime.end.p0(i64 8, ptr %type) #15, !dbg !3674
  call void @llvm.lifetime.end.p0(i64 8, ptr %dock_station) #15, !dbg !3674
  ret i64 %conv, !dbg !3675
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #14 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #15 = { nounwind }
attributes #16 = { noredzone }
attributes #17 = { noredzone allocsize(0) }
attributes #18 = { cold noredzone }
attributes #19 = { noredzone allocsize(2) }
attributes #20 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2191, !2192, !2193, !2194, !2195, !2196, !2197, !2198}
!llvm.ident = !{!2199}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_immediate_undock", scope: !2, file: !3, line: 24, type: !2188, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/.dock.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/acpi/acpi\22 -D KBUILD_BASENAME=\22dock\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/dock.ll drivers/acpi/dock.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !123, globals: !2040, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/dock.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c220105b4fbdc12fda645bcf39e79c47")
!4 = !{!5, !13, !19, !25, !32, !37, !45, !53, !62, !67, !72, !78, !84, !92, !97, !107, !112}
!5 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !6, line: 312, baseType: !7, size: 32, elements: !8)
!6 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!7 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!8 = !{!9, !10, !11, !12}
!9 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!10 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!11 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!12 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!13 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !14, line: 26, baseType: !7, size: 32, elements: !15)
!14 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!15 = !{!16, !17, !18}
!16 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!17 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!18 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
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
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_prop_type", file: !79, line: 21, baseType: !7, size: 32, elements: !85)
!85 = !{!86, !87, !88, !89, !90, !91}
!86 = !DIEnumerator(name: "DEV_PROP_U8", value: 0)
!87 = !DIEnumerator(name: "DEV_PROP_U16", value: 1)
!88 = !DIEnumerator(name: "DEV_PROP_U32", value: 2)
!89 = !DIEnumerator(name: "DEV_PROP_U64", value: 3)
!90 = !DIEnumerator(name: "DEV_PROP_STRING", value: 4)
!91 = !DIEnumerator(name: "DEV_PROP_REF", value: 5)
!92 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !93, line: 10, baseType: !7, size: 32, elements: !94)
!93 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!94 = !{!95, !96}
!95 = !DIEnumerator(name: "false", value: 0)
!96 = !DIEnumerator(name: "true", value: 1)
!97 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !98, line: 364, baseType: !7, size: 32, elements: !99)
!98 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!99 = !{!100, !101, !102, !103, !104, !105, !106}
!100 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!101 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!102 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!103 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!104 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!105 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!106 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!107 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dock_callback_type", file: !3, line: 55, baseType: !7, size: 32, elements: !108)
!108 = !{!109, !110, !111}
!109 = !DIEnumerator(name: "DOCK_CALL_HANDLER", value: 0)
!110 = !DIEnumerator(name: "DOCK_CALL_FIXUP", value: 1)
!111 = !DIEnumerator(name: "DOCK_CALL_UEVENT", value: 2)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobject_action", file: !113, line: 53, baseType: !7, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!114 = !{!115, !116, !117, !118, !119, !120, !121, !122}
!115 = !DIEnumerator(name: "KOBJ_ADD", value: 0)
!116 = !DIEnumerator(name: "KOBJ_REMOVE", value: 1)
!117 = !DIEnumerator(name: "KOBJ_CHANGE", value: 2)
!118 = !DIEnumerator(name: "KOBJ_MOVE", value: 3)
!119 = !DIEnumerator(name: "KOBJ_ONLINE", value: 4)
!120 = !DIEnumerator(name: "KOBJ_OFFLINE", value: 5)
!121 = !DIEnumerator(name: "KOBJ_BIND", value: 6)
!122 = !DIEnumerator(name: "KOBJ_UNBIND", value: 7)
!123 = !{!124, !300, !1168, !186, !1771, !2036, !278, !2037, !264, !2039}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !126)
!126 = !{!127, !128, !135, !140, !821, !847, !848, !849, !850, !854, !857, !858, !859, !912, !913, !914, !915, !916, !917, !918, !919, !922, !926, !946, !964, !965, !966, !967, !976, !1000, !1001, !1004, !1007, !1008, !1009, !1010, !1011, !1012, !1013, !1018, !1019, !1126, !1134, !1135, !1136, !1138, !1142, !1143, !1147, !1148, !1149, !1150, !1152, !1153, !1154, !1161, !1162, !1163, !1167}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !125, file: !6, line: 403, baseType: !5, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !125, file: !6, line: 406, baseType: !129, size: 128, offset: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !130, line: 190, size: 128, elements: !131)
!130 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!131 = !{!132, !134}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !129, file: !130, line: 191, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !129, file: !130, line: 191, baseType: !133, size: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !125, file: !6, line: 409, baseType: !136, size: 448, offset: 192)
!136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 448, elements: !138)
!137 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!138 = !{!139}
!139 = !DISubrange(count: 56)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !125, file: !6, line: 417, baseType: !141, size: 768, offset: 640)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !142)
!142 = !{!143, !804, !805, !806, !809}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !141, file: !6, line: 46, baseType: !144, size: 512)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !113, line: 64, size: 512, elements: !145)
!145 = !{!146, !149, !150, !152, !241, !674, !789, !799, !800, !801, !802, !803}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !144, file: !113, line: 65, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !137)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !144, file: !113, line: 66, baseType: !129, size: 128, offset: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !144, file: !113, line: 67, baseType: !151, size: 64, offset: 192)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !144, file: !113, line: 68, baseType: !153, size: 64, offset: 256)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !113, line: 168, size: 768, elements: !155)
!155 = !{!156, !157, !200, !201}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !154, file: !113, line: 169, baseType: !129, size: 128)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !154, file: !113, line: 170, baseType: !158, size: 32, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !159, line: 29, baseType: !160)
!159 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !159, line: 17, size: 32, elements: !161)
!161 = !{!162}
!162 = !DIDerivedType(tag: DW_TAG_member, scope: !160, file: !159, line: 18, baseType: !163, size: 32)
!163 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !160, file: !159, line: 18, size: 32, elements: !164)
!164 = !{!165}
!165 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !163, file: !159, line: 19, baseType: !166, size: 32)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !167, line: 14, size: 32, elements: !168)
!167 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!168 = !{!169}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !166, file: !167, line: 15, baseType: !170, size: 32)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !171, line: 44, baseType: !172)
!171 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !171, line: 14, size: 32, elements: !173)
!173 = !{!174}
!174 = !DIDerivedType(tag: DW_TAG_member, scope: !172, file: !171, line: 15, baseType: !175, size: 32)
!175 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !172, file: !171, line: 15, size: 32, elements: !176)
!176 = !{!177, !182, !192}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !175, file: !171, line: 16, baseType: !178, size: 32)
!178 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !130, line: 174, baseType: !179)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !130, line: 172, size: 32, elements: !180)
!180 = !{!181}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !179, file: !130, line: 173, baseType: !46, size: 32)
!182 = !DIDerivedType(tag: DW_TAG_member, scope: !175, file: !171, line: 24, baseType: !183, size: 16)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !175, file: !171, line: 24, size: 16, elements: !184)
!184 = !{!185, !191}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !183, file: !171, line: 25, baseType: !186, size: 8)
!186 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !187, line: 17, baseType: !188)
!187 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !189, line: 21, baseType: !190)
!189 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!190 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !183, file: !171, line: 26, baseType: !186, size: 8, offset: 8)
!192 = !DIDerivedType(tag: DW_TAG_member, scope: !175, file: !171, line: 28, baseType: !193, size: 32)
!193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !175, file: !171, line: 28, size: 32, elements: !194)
!194 = !{!195, !199}
!195 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !193, file: !171, line: 29, baseType: !196, size: 16)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !187, line: 19, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !189, line: 24, baseType: !198)
!198 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !193, file: !171, line: 30, baseType: !196, size: 16, offset: 16)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !154, file: !113, line: 171, baseType: !144, size: 512, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !154, file: !113, line: 172, baseType: !202, size: 64, offset: 704)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !204)
!204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !113, line: 133, size: 192, elements: !205)
!205 = !{!206, !213, !218}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !204, file: !113, line: 134, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!46, !211}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !204, file: !113, line: 135, baseType: !214, size: 64, offset: 64)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!147, !211}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !204, file: !113, line: 136, baseType: !219, size: 64, offset: 128)
!219 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DISubroutineType(types: !222)
!222 = !{!46, !211, !223}
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !113, line: 125, size: 20736, elements: !225)
!225 = !{!226, !231, !235, !236, !240}
!226 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !224, file: !113, line: 126, baseType: !227, size: 192)
!227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 192, elements: !229)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!229 = !{!230}
!230 = !DISubrange(count: 3)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !224, file: !113, line: 127, baseType: !232, size: 4096, offset: 192)
!232 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 4096, elements: !233)
!233 = !{!234}
!234 = !DISubrange(count: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !224, file: !113, line: 128, baseType: !46, size: 32, offset: 4288)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !224, file: !113, line: 129, baseType: !237, size: 16384, offset: 4320)
!237 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 16384, elements: !238)
!238 = !{!239}
!239 = !DISubrange(count: 2048)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !224, file: !113, line: 130, baseType: !46, size: 32, offset: 20704)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !144, file: !113, line: 69, baseType: !242, size: 64, offset: 320)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !113, line: 116, size: 384, elements: !245)
!245 = !{!246, !250, !279, !620, !651, !655}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !244, file: !113, line: 117, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{null, !151}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !244, file: !113, line: 118, baseType: !251, size: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!252 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !253)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !254, line: 254, size: 128, elements: !255)
!254 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!255 = !{!256, !271}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !253, file: !254, line: 255, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DISubroutineType(types: !259)
!259 = !{!260, !151, !265, !228}
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !130, line: 66, baseType: !261)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !262, line: 73, baseType: !263)
!262 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !262, line: 15, baseType: !264)
!264 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !254, line: 30, size: 128, elements: !267)
!267 = !{!268, !269}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !266, file: !254, line: 31, baseType: !147, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !266, file: !254, line: 32, baseType: !270, size: 16, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !130, line: 24, baseType: !198)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !253, file: !254, line: 256, baseType: !272, size: 64, offset: 64)
!272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !273, size: 64)
!273 = !DISubroutineType(types: !274)
!274 = !{!260, !151, !265, !147, !275}
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !130, line: 61, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !262, line: 72, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !262, line: 16, baseType: !278)
!278 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !244, file: !113, line: 119, baseType: !280, size: 64, offset: 128)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !283)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !254, line: 84, size: 320, elements: !284)
!284 = !{!285, !286, !290, !616, !618}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !283, file: !254, line: 85, baseType: !147, size: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !283, file: !254, line: 86, baseType: !287, size: 64, offset: 64)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!270, !151, !265, !46}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !283, file: !254, line: 88, baseType: !291, size: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!270, !151, !294, !46}
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !254, line: 175, size: 512, elements: !296)
!296 = !{!297, !298, !299, !301, !308, !318, !319}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !295, file: !254, line: 176, baseType: !266, size: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !295, file: !254, line: 177, baseType: !275, size: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !295, file: !254, line: 178, baseType: !300, size: 64, offset: 192)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !295, file: !254, line: 179, baseType: !302, size: 64, offset: 256)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!305}
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !307, line: 32, flags: DIFlagFwdDecl)
!307 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!308 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !295, file: !254, line: 180, baseType: !309, size: 64, offset: 320)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!260, !312, !151, !294, !228, !315, !275}
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !314, line: 537, flags: DIFlagFwdDecl)
!314 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !130, line: 52, baseType: !316)
!316 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !262, line: 88, baseType: !317)
!317 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !295, file: !254, line: 182, baseType: !309, size: 64, offset: 384)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !295, file: !254, line: 184, baseType: !320, size: 64, offset: 448)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!46, !312, !151, !294, !323}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !307, line: 625, size: 1344, elements: !325)
!325 = !{!326, !343, !565, !571, !578, !579, !584, !587, !599, !600, !603, !607, !608, !609, !610, !611, !614}
!326 = !DIDerivedType(tag: DW_TAG_member, scope: !324, file: !307, line: 628, baseType: !327, size: 128)
!327 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !324, file: !307, line: 628, size: 128, elements: !328)
!328 = !{!329, !334}
!329 = !DIDerivedType(tag: DW_TAG_member, scope: !327, file: !307, line: 629, baseType: !330, size: 128)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !327, file: !307, line: 629, size: 128, elements: !331)
!331 = !{!332, !333}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !330, file: !307, line: 631, baseType: !278, size: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !330, file: !307, line: 632, baseType: !278, size: 64, offset: 64)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !327, file: !307, line: 635, baseType: !335, size: 128, align: 64)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !130, line: 232, size: 128, align: 64, elements: !336)
!336 = !{!337, !339}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !335, file: !130, line: 233, baseType: !338, size: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !335, file: !130, line: 234, baseType: !340, size: 64, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{null, !338}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !324, file: !307, line: 639, baseType: !344, size: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !307, line: 733, size: 10240, elements: !346)
!346 = !{!347, !561}
!347 = !DIDerivedType(tag: DW_TAG_member, scope: !345, file: !307, line: 734, baseType: !348, size: 10240)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !345, file: !307, line: 734, size: 10240, elements: !349)
!349 = !{!350, !354, !368, !372, !373, !374, !375, !376, !377, !385, !386, !387, !396, !397, !406, !407, !408, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !455, !469, !472, !527, !528, !529, !532, !535, !536, !539, !540, !541, !548, !549}
!350 = !DIDerivedType(tag: DW_TAG_member, scope: !348, file: !307, line: 739, baseType: !351, size: 512, align: 512)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !348, file: !307, line: 739, size: 512, align: 512, elements: !352)
!352 = !{!353}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !351, file: !307, line: 747, baseType: !178, size: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !348, file: !307, line: 750, baseType: !355, size: 128, offset: 512)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !356, line: 218, size: 128, elements: !357)
!356 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!357 = !{!358, !366, !367}
!358 = !DIDerivedType(tag: DW_TAG_member, scope: !355, file: !356, line: 219, baseType: !359, size: 32)
!359 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !355, file: !356, line: 219, size: 32, elements: !360)
!360 = !{!361, !362}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !359, file: !356, line: 220, baseType: !158, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !359, file: !356, line: 221, baseType: !363)
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !356, line: 197, baseType: !364)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !356, line: 197, elements: !365)
!365 = !{}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !355, file: !356, line: 223, baseType: !7, size: 32, offset: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !355, file: !356, line: 224, baseType: !300, size: 64, offset: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !348, file: !307, line: 752, baseType: !369, size: 64, offset: 640)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DISubroutineType(types: !371)
!371 = !{!278, !312, !278, !278, !278, !278}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !348, file: !307, line: 756, baseType: !278, size: 64, offset: 704)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !348, file: !307, line: 757, baseType: !278, size: 64, offset: 768)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !348, file: !307, line: 760, baseType: !278, size: 64, offset: 832)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !348, file: !307, line: 761, baseType: !278, size: 64, offset: 896)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !348, file: !307, line: 763, baseType: !278, size: 64, offset: 960)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !348, file: !307, line: 764, baseType: !378, size: 64, offset: 1024)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !314, line: 299, baseType: !380)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !314, line: 299, size: 64, elements: !381)
!381 = !{!382}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !380, file: !314, line: 299, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !384, line: 18, baseType: !278)
!384 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!385 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !348, file: !307, line: 773, baseType: !178, size: 32, offset: 1088)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !348, file: !307, line: 785, baseType: !178, size: 32, offset: 1120)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !348, file: !307, line: 795, baseType: !388, size: 64, offset: 1152)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !307, line: 726, size: 128, elements: !390)
!390 = !{!391, !395}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !389, file: !307, line: 727, baseType: !392, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !187, line: 23, baseType: !393)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !189, line: 31, baseType: !394)
!394 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !389, file: !307, line: 728, baseType: !46, size: 32, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !348, file: !307, line: 801, baseType: !278, size: 64, offset: 1216)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !348, file: !307, line: 804, baseType: !398, size: 64, offset: 1280)
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !399, line: 13, baseType: !400)
!399 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !130, line: 181, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !130, line: 179, size: 64, elements: !402)
!402 = !{!403}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !401, file: !130, line: 180, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !187, line: 22, baseType: !405)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !189, line: 30, baseType: !317)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !348, file: !307, line: 806, baseType: !46, size: 32, offset: 1344)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !348, file: !307, line: 808, baseType: !158, size: 32, offset: 1376)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !348, file: !307, line: 823, baseType: !409, size: 320, offset: 1408)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !410, line: 48, size: 320, elements: !411)
!410 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!411 = !{!412, !413, !414, !419, !421}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !409, file: !410, line: 49, baseType: !398, size: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !409, file: !410, line: 55, baseType: !398, size: 64, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !409, file: !410, line: 57, baseType: !415, size: 32, offset: 128)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !416, line: 15, size: 32, elements: !417)
!416 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!417 = !{!418}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !415, file: !416, line: 20, baseType: !178, size: 32)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !409, file: !410, line: 59, baseType: !420, size: 32, offset: 160)
!420 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !167, line: 23, baseType: !166)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !409, file: !410, line: 60, baseType: !129, size: 128, offset: 192)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !348, file: !307, line: 825, baseType: !129, size: 128, offset: 1728)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !348, file: !307, line: 845, baseType: !46, size: 32, offset: 1856)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !348, file: !307, line: 849, baseType: !278, size: 64, offset: 1920)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !348, file: !307, line: 850, baseType: !278, size: 64, offset: 1984)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !348, file: !307, line: 852, baseType: !278, size: 64, offset: 2048)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !348, file: !307, line: 853, baseType: !278, size: 64, offset: 2112)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !348, file: !307, line: 854, baseType: !400, size: 64, offset: 2176)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !348, file: !307, line: 855, baseType: !278, size: 64, offset: 2240)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !348, file: !307, line: 856, baseType: !278, size: 64, offset: 2304)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !348, file: !307, line: 857, baseType: !278, size: 64, offset: 2368)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !348, file: !307, line: 858, baseType: !278, size: 64, offset: 2432)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !348, file: !307, line: 865, baseType: !434, size: 32, offset: 2496)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !435, line: 69, baseType: !436)
!435 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !435, line: 64, size: 32, elements: !437)
!437 = !{!438}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !436, file: !435, line: 65, baseType: !7, size: 32)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !348, file: !307, line: 867, baseType: !158, size: 32, offset: 2528)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !348, file: !307, line: 869, baseType: !278, size: 64, offset: 2560)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !348, file: !307, line: 869, baseType: !278, size: 64, offset: 2624)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !348, file: !307, line: 869, baseType: !278, size: 64, offset: 2688)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !348, file: !307, line: 869, baseType: !278, size: 64, offset: 2752)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !348, file: !307, line: 870, baseType: !278, size: 64, offset: 2816)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !348, file: !307, line: 870, baseType: !278, size: 64, offset: 2880)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !348, file: !307, line: 870, baseType: !278, size: 64, offset: 2944)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !348, file: !307, line: 871, baseType: !278, size: 64, offset: 3008)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !348, file: !307, line: 871, baseType: !278, size: 64, offset: 3072)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !348, file: !307, line: 871, baseType: !278, size: 64, offset: 3136)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !348, file: !307, line: 871, baseType: !278, size: 64, offset: 3200)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !348, file: !307, line: 873, baseType: !452, size: 3328, offset: 3264)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 3328, elements: !453)
!453 = !{!454}
!454 = !DISubrange(count: 52)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !348, file: !307, line: 875, baseType: !456, size: 1280, offset: 6592)
!456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !457, size: 1280, elements: !467)
!457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !458, line: 22, size: 320, elements: !459)
!458 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!459 = !{!460, !461, !462, !463}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !457, file: !458, line: 23, baseType: !420, size: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !457, file: !458, line: 24, baseType: !404, size: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !457, file: !458, line: 26, baseType: !129, size: 128, offset: 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !457, file: !458, line: 28, baseType: !464, size: 64, offset: 256)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !187, line: 20, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !189, line: 26, baseType: !46)
!467 = !{!468}
!468 = !DISubrange(count: 4)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !348, file: !307, line: 877, baseType: !470, size: 64, offset: 7872)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !307, line: 877, flags: DIFlagFwdDecl)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !348, file: !307, line: 880, baseType: !473, size: 1088, offset: 7936)
!473 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !474, line: 72, baseType: !475)
!474 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !474, line: 23, size: 1088, elements: !476)
!476 = !{!477, !478, !479, !480, !481, !484, !485, !493, !494, !521, !522, !523}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !475, file: !474, line: 28, baseType: !392, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !475, file: !474, line: 38, baseType: !400, size: 64, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !475, file: !474, line: 40, baseType: !278, size: 64, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !475, file: !474, line: 43, baseType: !409, size: 320, offset: 192)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !475, file: !474, line: 44, baseType: !482, size: 64, offset: 512)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !474, line: 44, flags: DIFlagFwdDecl)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !475, file: !474, line: 48, baseType: !278, size: 64, offset: 576)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !475, file: !474, line: 59, baseType: !486, size: 256, offset: 640)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !487, line: 66, size: 256, elements: !488)
!487 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!488 = !{!489, !490, !491, !492}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !486, file: !487, line: 67, baseType: !398, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !486, file: !487, line: 68, baseType: !420, size: 32, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !486, file: !487, line: 70, baseType: !415, size: 32, offset: 96)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !486, file: !487, line: 72, baseType: !129, size: 128, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !475, file: !474, line: 60, baseType: !300, size: 64, offset: 896)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !475, file: !474, line: 61, baseType: !495, size: 64, offset: 960)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !497)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !498, line: 13, size: 1216, elements: !499)
!498 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!499 = !{!500, !501, !502, !503, !504, !505, !506, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !497, file: !498, line: 14, baseType: !300, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !497, file: !498, line: 15, baseType: !278, size: 64, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !497, file: !498, line: 17, baseType: !278, size: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !497, file: !498, line: 17, baseType: !278, size: 64, offset: 192)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !497, file: !498, line: 18, baseType: !278, size: 64, offset: 256)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !497, file: !498, line: 18, baseType: !278, size: 64, offset: 320)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !497, file: !498, line: 19, baseType: !507, size: 64, offset: 384)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !497, file: !498, line: 21, baseType: !264, size: 64, offset: 448)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !497, file: !498, line: 23, baseType: !264, size: 64, offset: 512)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !497, file: !498, line: 24, baseType: !264, size: 64, offset: 576)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !497, file: !498, line: 25, baseType: !264, size: 64, offset: 640)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !497, file: !498, line: 26, baseType: !264, size: 64, offset: 704)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !497, file: !498, line: 27, baseType: !264, size: 64, offset: 768)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !497, file: !498, line: 28, baseType: !264, size: 64, offset: 832)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !497, file: !498, line: 29, baseType: !264, size: 64, offset: 896)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !497, file: !498, line: 30, baseType: !264, size: 64, offset: 960)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !497, file: !498, line: 31, baseType: !264, size: 64, offset: 1024)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !497, file: !498, line: 32, baseType: !264, size: 64, offset: 1088)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !497, file: !498, line: 33, baseType: !264, size: 64, offset: 1152)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !475, file: !474, line: 63, baseType: !178, size: 32, offset: 1024)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !475, file: !474, line: 69, baseType: !196, size: 16, offset: 1056)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !475, file: !474, line: 70, baseType: !524, size: 16, offset: 1072)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !187, line: 18, baseType: !525)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !189, line: 23, baseType: !526)
!526 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !348, file: !307, line: 882, baseType: !278, size: 64, offset: 9024)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !348, file: !307, line: 885, baseType: !158, size: 32, offset: 9088)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !348, file: !307, line: 886, baseType: !530, size: 64, offset: 9152)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !307, line: 732, flags: DIFlagFwdDecl)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !348, file: !307, line: 901, baseType: !533, size: 64, offset: 9216)
!533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !534, size: 64)
!534 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !307, line: 901, flags: DIFlagFwdDecl)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !348, file: !307, line: 904, baseType: !312, size: 64, offset: 9280)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !348, file: !307, line: 906, baseType: !537, size: 64, offset: 9344)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !307, line: 906, flags: DIFlagFwdDecl)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !348, file: !307, line: 930, baseType: !178, size: 32, offset: 9408)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !348, file: !307, line: 933, baseType: !178, size: 32, offset: 9440)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !348, file: !307, line: 935, baseType: !542, size: 64, offset: 9472)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !543, line: 103, size: 64, elements: !544)
!543 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!544 = !{!545}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !542, file: !543, line: 104, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!547 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !543, line: 101, flags: DIFlagFwdDecl)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !348, file: !307, line: 940, baseType: !398, size: 64, offset: 9536)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !348, file: !307, line: 942, baseType: !550, size: 256, offset: 9600)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !551, line: 98, size: 256, elements: !552)
!551 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!552 = !{!553, !554, !555}
!553 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !550, file: !551, line: 99, baseType: !398, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !550, file: !551, line: 100, baseType: !129, size: 128, offset: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !550, file: !551, line: 101, baseType: !556, size: 64, offset: 192)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !551, line: 21, baseType: !557)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = !DISubroutineType(types: !559)
!559 = !{null, !560}
!560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !345, file: !307, line: 986, baseType: !562, offset: 10240)
!562 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, elements: !563)
!563 = !{!564}
!564 = !DISubrange(count: -1)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !324, file: !307, line: 640, baseType: !566, size: 64, offset: 192)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !314, line: 297, baseType: !567)
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !314, line: 297, size: 64, elements: !568)
!568 = !{!569}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !567, file: !314, line: 297, baseType: !570, size: 64)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !384, line: 19, baseType: !278)
!571 = !DIDerivedType(tag: DW_TAG_member, scope: !324, file: !307, line: 646, baseType: !572, size: 64, offset: 256)
!572 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !324, file: !307, line: 646, size: 64, elements: !573)
!573 = !{!574, !577}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !572, file: !307, line: 647, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !307, line: 542, baseType: !278)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !572, file: !307, line: 648, baseType: !576, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !324, file: !307, line: 666, baseType: !46, size: 32, offset: 320)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !324, file: !307, line: 667, baseType: !580, size: 64, offset: 384)
!580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !581, size: 64)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !307, line: 579, size: 320, elements: !582)
!582 = !{!583}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !581, file: !307, line: 580, baseType: !409, size: 320)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !324, file: !307, line: 670, baseType: !585, size: 8, offset: 448)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !130, line: 35, baseType: !586)
!586 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !324, file: !307, line: 681, baseType: !588, size: 256, offset: 512)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !324, file: !307, line: 678, size: 256, elements: !589)
!589 = !{!590, !598}
!590 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !588, file: !307, line: 679, baseType: !591, size: 192, align: 64)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !592, line: 5, size: 192, align: 64, elements: !593)
!592 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!593 = !{!594, !595, !597}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !591, file: !592, line: 6, baseType: !278, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !591, file: !592, line: 7, baseType: !596, size: 64, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !591, file: !592, line: 8, baseType: !596, size: 64, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !588, file: !307, line: 680, baseType: !278, size: 64, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !324, file: !307, line: 689, baseType: !129, size: 128, offset: 768)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !324, file: !307, line: 691, baseType: !601, size: 64, offset: 896)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !307, line: 691, flags: DIFlagFwdDecl)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !324, file: !307, line: 694, baseType: !604, size: 64, offset: 960)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !606)
!606 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !307, line: 694, flags: DIFlagFwdDecl)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !324, file: !307, line: 697, baseType: !278, size: 64, offset: 1024)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !324, file: !307, line: 699, baseType: !312, size: 64, offset: 1088)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !324, file: !307, line: 700, baseType: !300, size: 64, offset: 1152)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !324, file: !307, line: 711, baseType: !398, size: 64, offset: 1216)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !324, file: !307, line: 717, baseType: !612, size: 64, offset: 1280)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !613, size: 64)
!613 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !307, line: 717, flags: DIFlagFwdDecl)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !324, file: !307, line: 722, baseType: !615, offset: 1344)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !307, line: 570, elements: !365)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !283, file: !254, line: 90, baseType: !617, size: 64, offset: 192)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !283, file: !254, line: 91, baseType: !619, size: 64, offset: 256)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !244, file: !113, line: 120, baseType: !621, size: 64, offset: 192)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DISubroutineType(types: !623)
!623 = !{!624, !211}
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !626)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !14, line: 39, size: 384, elements: !627)
!627 = !{!628, !629, !633, !637, !643, !647}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !626, file: !14, line: 40, baseType: !13, size: 32)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !626, file: !14, line: 41, baseType: !630, size: 64, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DISubroutineType(types: !632)
!632 = !{!585}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !626, file: !14, line: 42, baseType: !634, size: 64, offset: 128)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DISubroutineType(types: !636)
!636 = !{!300}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !626, file: !14, line: 43, baseType: !638, size: 64, offset: 192)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = !DISubroutineType(types: !640)
!640 = !{!507, !641}
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !14, line: 19, flags: DIFlagFwdDecl)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !626, file: !14, line: 44, baseType: !644, size: 64, offset: 256)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DISubroutineType(types: !646)
!646 = !{!507}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !626, file: !14, line: 45, baseType: !648, size: 64, offset: 320)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{null, !300}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !244, file: !113, line: 121, baseType: !652, size: 64, offset: 256)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{!507, !211}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !244, file: !113, line: 122, baseType: !656, size: 64, offset: 320)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{null, !211, !659, !667}
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !661, line: 23, baseType: !662)
!661 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !661, line: 21, size: 32, elements: !663)
!663 = !{!664}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !662, file: !661, line: 22, baseType: !665, size: 32)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !130, line: 37, baseType: !666)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !262, line: 49, baseType: !7)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !661, line: 28, baseType: !669)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !661, line: 26, size: 32, elements: !670)
!670 = !{!671}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !669, file: !661, line: 27, baseType: !672, size: 32)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !130, line: 38, baseType: !673)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !262, line: 50, baseType: !7)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !144, file: !113, line: 70, baseType: !675, size: 64, offset: 384)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !677, line: 190, size: 1152, elements: !678)
!677 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!678 = !{!679, !680, !681, !682, !683, !684, !685, !686, !781, !782, !783, !784, !785, !788}
!679 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !676, file: !677, line: 191, baseType: !178, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !676, file: !677, line: 192, baseType: !178, size: 32, offset: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !676, file: !677, line: 202, baseType: !675, size: 64, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !676, file: !677, line: 203, baseType: !147, size: 64, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !676, file: !677, line: 205, baseType: !591, size: 192, align: 64, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !676, file: !677, line: 207, baseType: !507, size: 64, offset: 384)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !676, file: !677, line: 208, baseType: !7, size: 32, offset: 448)
!686 = !DIDerivedType(tag: DW_TAG_member, scope: !676, file: !677, line: 209, baseType: !687, size: 256, offset: 512)
!687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !676, file: !677, line: 209, size: 256, elements: !688)
!688 = !{!689, !701, !705}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !687, file: !677, line: 210, baseType: !690, size: 256)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !677, line: 153, size: 256, elements: !691)
!691 = !{!692, !693, !697, !700}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !690, file: !677, line: 154, baseType: !278, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !690, file: !677, line: 156, baseType: !694, size: 64, offset: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !592, line: 12, size: 64, elements: !695)
!695 = !{!696}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !694, file: !592, line: 13, baseType: !596, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !690, file: !677, line: 162, baseType: !698, size: 64, offset: 128)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !677, line: 162, flags: DIFlagFwdDecl)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !690, file: !677, line: 167, baseType: !278, size: 64, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !687, file: !677, line: 211, baseType: !702, size: 64)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !677, line: 170, size: 64, elements: !703)
!703 = !{!704}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !702, file: !677, line: 171, baseType: !675, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !687, file: !677, line: 212, baseType: !706, size: 256)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !677, line: 174, size: 256, elements: !707)
!707 = !{!708, !776, !779, !780}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !706, file: !677, line: 175, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !711)
!711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !677, line: 271, size: 768, elements: !712)
!712 = !{!713, !736, !740, !744, !749, !753, !757, !761, !762, !763, !764, !772}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !711, file: !677, line: 276, baseType: !714, size: 64)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!46, !717}
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !677, line: 251, size: 1216, elements: !719)
!719 = !{!720, !721, !722, !726, !727, !728, !729, !730, !731, !732, !733, !734, !735}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !718, file: !677, line: 253, baseType: !675, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !718, file: !677, line: 254, baseType: !312, size: 64, offset: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !718, file: !677, line: 255, baseType: !723, size: 64, offset: 128)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !725, line: 66, flags: DIFlagFwdDecl)
!725 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!726 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !718, file: !677, line: 256, baseType: !300, size: 64, offset: 192)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !718, file: !677, line: 259, baseType: !486, size: 256, offset: 256)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !718, file: !677, line: 260, baseType: !486, size: 256, offset: 512)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !718, file: !677, line: 261, baseType: !46, size: 32, offset: 768)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !718, file: !677, line: 262, baseType: !129, size: 128, offset: 832)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !718, file: !677, line: 263, baseType: !228, size: 64, offset: 960)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !718, file: !677, line: 265, baseType: !275, size: 64, offset: 1024)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !718, file: !677, line: 266, baseType: !585, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !718, file: !677, line: 267, baseType: !585, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !718, file: !677, line: 268, baseType: !604, size: 64, offset: 1152)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !711, file: !677, line: 277, baseType: !737, size: 64, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !738, size: 64)
!738 = !DISubroutineType(types: !739)
!739 = !{null, !717}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !711, file: !677, line: 290, baseType: !741, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!46, !723, !300}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !711, file: !677, line: 292, baseType: !745, size: 64, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !746, size: 64)
!746 = !DISubroutineType(types: !747)
!747 = !{!300, !723, !748}
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !711, file: !677, line: 293, baseType: !750, size: 64, offset: 256)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DISubroutineType(types: !752)
!752 = !{!300, !723, !300, !748}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !711, file: !677, line: 294, baseType: !754, size: 64, offset: 320)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DISubroutineType(types: !756)
!756 = !{null, !723, !300}
!757 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !711, file: !677, line: 296, baseType: !758, size: 64, offset: 384)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = !DISubroutineType(types: !760)
!760 = !{!260, !717, !228, !275, !315}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !711, file: !677, line: 306, baseType: !275, size: 64, offset: 448)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !711, file: !677, line: 313, baseType: !585, size: 8, offset: 512)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !711, file: !677, line: 314, baseType: !758, size: 64, offset: 576)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !711, file: !677, line: 317, baseType: !765, size: 64, offset: 640)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DISubroutineType(types: !767)
!767 = !{!768, !717, !770}
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !769, line: 59, baseType: !7)
!769 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !677, line: 31, flags: DIFlagFwdDecl)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !711, file: !677, line: 320, baseType: !773, size: 64, offset: 704)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!46, !717, !323}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !706, file: !677, line: 176, baseType: !777, size: 64, offset: 64)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !677, line: 35, flags: DIFlagFwdDecl)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !706, file: !677, line: 177, baseType: !315, size: 64, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !706, file: !677, line: 178, baseType: !675, size: 64, offset: 192)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !676, file: !677, line: 215, baseType: !300, size: 64, offset: 768)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !676, file: !677, line: 221, baseType: !392, size: 64, offset: 832)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !676, file: !677, line: 223, baseType: !198, size: 16, offset: 896)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !676, file: !677, line: 224, baseType: !270, size: 16, offset: 912)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !676, file: !677, line: 225, baseType: !786, size: 64, offset: 960)
!786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !787, size: 64)
!787 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !677, line: 36, flags: DIFlagFwdDecl)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !676, file: !677, line: 227, baseType: !335, size: 128, align: 64, offset: 1024)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !144, file: !113, line: 71, baseType: !790, size: 32, offset: 448)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !791, line: 19, size: 32, elements: !792)
!791 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!792 = !{!793}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !790, file: !791, line: 20, baseType: !794, size: 32)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !795, line: 113, baseType: !796)
!795 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !795, line: 111, size: 32, elements: !797)
!797 = !{!798}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !796, file: !795, line: 112, baseType: !178, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !144, file: !113, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !144, file: !113, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !144, file: !113, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !144, file: !113, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !144, file: !113, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !141, file: !6, line: 47, baseType: !124, size: 64, offset: 512)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !141, file: !6, line: 48, baseType: !151, size: 64, offset: 576)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !141, file: !6, line: 49, baseType: !807, size: 64, offset: 640)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !141, file: !6, line: 50, baseType: !810, size: 64, offset: 704)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !812, line: 26, size: 256, elements: !813)
!812 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!813 = !{!814, !815}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !811, file: !812, line: 27, baseType: !7, size: 32)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !811, file: !812, line: 28, baseType: !816, size: 192, offset: 64)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !817, line: 43, size: 192, elements: !818)
!817 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!818 = !{!819, !820}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !816, file: !817, line: 44, baseType: !420, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !816, file: !817, line: 45, baseType: !129, size: 128, offset: 64)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !125, file: !6, line: 418, baseType: !822, size: 64, offset: 1408)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !824)
!824 = !{!825, !826, !831, !835, !839, !843}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !823, file: !6, line: 54, baseType: !266, size: 128)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !823, file: !6, line: 55, baseType: !827, size: 64, offset: 128)
!827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !828, size: 64)
!828 = !DISubroutineType(types: !829)
!829 = !{!260, !822, !830, !228}
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !823, file: !6, line: 57, baseType: !832, size: 64, offset: 192)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{!260, !822, !830, !147, !275}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !823, file: !6, line: 59, baseType: !836, size: 64, offset: 256)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{null, !124, !147}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !823, file: !6, line: 60, baseType: !840, size: 64, offset: 320)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DISubroutineType(types: !842)
!842 = !{!46, !124}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !823, file: !6, line: 61, baseType: !844, size: 64, offset: 384)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DISubroutineType(types: !846)
!846 = !{null, !124}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !125, file: !6, line: 419, baseType: !147, size: 64, offset: 1472)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !125, file: !6, line: 420, baseType: !147, size: 64, offset: 1536)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !125, file: !6, line: 421, baseType: !151, size: 64, offset: 1600)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !125, file: !6, line: 424, baseType: !851, size: 64, offset: 1664)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !853)
!853 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !125, file: !6, line: 425, baseType: !855, size: 64, offset: 1728)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !465)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !125, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !125, file: !6, line: 435, baseType: !486, size: 256, offset: 1856)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !125, file: !6, line: 437, baseType: !860, size: 64, offset: 2112)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !862, line: 69, size: 320, elements: !863)
!862 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!863 = !{!864, !865, !866, !883, !885, !889, !890}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !861, file: !862, line: 70, baseType: !147, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !861, file: !862, line: 71, baseType: !124, size: 64, offset: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !861, file: !862, line: 72, baseType: !867, size: 64, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !869)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !862, line: 47, size: 256, elements: !870)
!870 = !{!871, !872, !878, !882}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !869, file: !862, line: 49, baseType: !7, size: 32)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !869, file: !862, line: 51, baseType: !873, size: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DISubroutineType(types: !875)
!875 = !{!46, !147, !876}
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !861)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !869, file: !862, line: 53, baseType: !879, size: 64, offset: 128)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DISubroutineType(types: !881)
!881 = !{!46, !228, !876}
!882 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !869, file: !862, line: 55, baseType: !648, size: 64, offset: 192)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !861, file: !862, line: 73, baseType: !884, size: 16, offset: 192)
!884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !861, file: !862, line: 74, baseType: !886, size: 8, offset: 208)
!886 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !187, line: 16, baseType: !887)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !189, line: 20, baseType: !888)
!888 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !861, file: !862, line: 75, baseType: !186, size: 8, offset: 216)
!890 = !DIDerivedType(tag: DW_TAG_member, scope: !861, file: !862, line: 76, baseType: !891, size: 64, offset: 256)
!891 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !861, file: !862, line: 76, size: 64, elements: !892)
!892 = !{!893, !894, !901}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !891, file: !862, line: 77, baseType: !300, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !891, file: !862, line: 78, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !897)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !862, line: 86, size: 128, elements: !898)
!898 = !{!899, !900}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !897, file: !862, line: 87, baseType: !7, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !897, file: !862, line: 88, baseType: !228, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !891, file: !862, line: 79, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !904)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !862, line: 92, size: 256, elements: !905)
!905 = !{!906, !907, !908, !910, !911}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !904, file: !862, line: 94, baseType: !7, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !904, file: !862, line: 95, baseType: !7, size: 32, offset: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !904, file: !862, line: 96, baseType: !909, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !904, file: !862, line: 97, baseType: !867, size: 64, offset: 128)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !904, file: !862, line: 98, baseType: !300, size: 64, offset: 192)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !125, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !125, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !125, file: !6, line: 442, baseType: !851, size: 64, offset: 2240)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !125, file: !6, line: 443, baseType: !855, size: 64, offset: 2304)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !125, file: !6, line: 444, baseType: !585, size: 8, offset: 2368)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !125, file: !6, line: 451, baseType: !585, size: 8, offset: 2376)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !125, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !125, file: !6, line: 455, baseType: !920, size: 64, offset: 2432)
!920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!921 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !6, line: 43, flags: DIFlagFwdDecl)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !125, file: !6, line: 458, baseType: !923, size: 64, offset: 2496)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = !DISubroutineType(types: !925)
!925 = !{!46}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !125, file: !6, line: 460, baseType: !927, size: 4032, align: 512, offset: 2560)
!927 = !DICompositeType(tag: DW_TAG_array_type, baseType: !928, size: 4032, elements: !944)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !929)
!929 = !{!930, !931, !932}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !928, file: !6, line: 363, baseType: !300, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !928, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !928, file: !6, line: 367, baseType: !933, size: 448, offset: 128)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !934)
!934 = !{!935, !936}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !933, file: !6, line: 320, baseType: !124, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !933, file: !6, line: 321, baseType: !937, size: 384, offset: 64)
!937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !938, line: 40, size: 384, elements: !939)
!938 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!939 = !{!940}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !937, file: !938, line: 41, baseType: !941, size: 384, align: 64)
!941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !591, size: 384, align: 64, elements: !942)
!942 = !{!943}
!943 = !DISubrange(count: 2)
!944 = !{!945}
!945 = !DISubrange(count: 7)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !125, file: !6, line: 463, baseType: !947, size: 192, offset: 6592)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !948, line: 8, size: 192, elements: !949)
!948 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!949 = !{!950, !951, !953}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !947, file: !948, line: 10, baseType: !7, size: 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !947, file: !948, line: 11, baseType: !952, size: 64, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !947, file: !948, line: 12, baseType: !954, size: 64, offset: 128)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !956, line: 59, size: 48, elements: !957)
!956 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!957 = !{!958, !959, !960, !961, !962, !963}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !955, file: !956, line: 60, baseType: !524, size: 16)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !955, file: !956, line: 61, baseType: !524, size: 16, offset: 16)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !955, file: !956, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !955, file: !956, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !955, file: !956, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !955, file: !956, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !125, file: !6, line: 465, baseType: !278, size: 64, offset: 6784)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !125, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !125, file: !6, line: 470, baseType: !129, size: 128, offset: 6912)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !125, file: !6, line: 471, baseType: !968, size: 64, offset: 7040)
!968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !969, size: 64)
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !970, line: 33, size: 96, elements: !971)
!970 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!971 = !{!972, !973, !974, !975}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !969, file: !970, line: 37, baseType: !46, size: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !969, file: !970, line: 43, baseType: !46, size: 32, offset: 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !969, file: !970, line: 45, baseType: !198, size: 16, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !969, file: !970, line: 47, baseType: !198, size: 16, offset: 80)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !125, file: !6, line: 476, baseType: !977, size: 64, offset: 7104)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !979)
!979 = !{!980, !997, !998, !999}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !978, file: !6, line: 379, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !983, line: 204, baseType: !984)
!983 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !983, line: 197, size: 192, elements: !985)
!985 = !{!986, !989, !990, !991, !993, !995}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !984, file: !983, line: 198, baseType: !987, size: 32)
!987 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !983, line: 21, baseType: !988)
!988 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !189, line: 27, baseType: !7)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !984, file: !983, line: 199, baseType: !190, size: 8, offset: 32)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !984, file: !983, line: 200, baseType: !190, size: 8, offset: 40)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !984, file: !983, line: 201, baseType: !992, size: 16, offset: 48)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !983, line: 17, baseType: !197)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !984, file: !983, line: 202, baseType: !994, size: 64, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !983, line: 16, baseType: !393)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !984, file: !983, line: 203, baseType: !996, size: 64, offset: 128)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !983, line: 22, baseType: !393)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !978, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !978, file: !6, line: 381, baseType: !228, size: 64, offset: 128)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !978, file: !6, line: 382, baseType: !228, size: 64, offset: 192)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !125, file: !6, line: 477, baseType: !978, size: 256, offset: 7168)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !125, file: !6, line: 480, baseType: !1002, size: 64, offset: 7424)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !125, file: !6, line: 483, baseType: !1005, size: 64, offset: 7488)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !125, file: !6, line: 488, baseType: !228, size: 64, offset: 7552)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !125, file: !6, line: 492, baseType: !300, size: 64, offset: 7616)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !125, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !125, file: !6, line: 495, baseType: !300, size: 64, offset: 7744)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !125, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !125, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !125, file: !6, line: 500, baseType: !1014, size: 64, offset: 7872)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1016, line: 45, baseType: !1017)
!1016 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1017 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !125, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !125, file: !6, line: 504, baseType: !1020, size: 64, offset: 8000)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1023, line: 96, size: 192, elements: !1024)
!1023 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1024 = !{!1025, !1026, !1087, !1090}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1022, file: !1023, line: 97, baseType: !7, size: 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1022, file: !1023, line: 98, baseType: !1027, size: 64, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1023, line: 24, size: 3072, elements: !1029)
!1029 = !{!1030, !1032, !1033, !1034, !1035, !1049, !1050, !1051, !1052, !1071, !1072, !1073, !1084, !1085, !1086}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1028, file: !1023, line: 26, baseType: !1031, size: 128)
!1031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !398, size: 128, elements: !942)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1028, file: !1023, line: 27, baseType: !1031, size: 128, offset: 128)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1028, file: !1023, line: 28, baseType: !46, size: 32, offset: 256)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1028, file: !1023, line: 31, baseType: !158, size: 32, align: 512, offset: 512)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1028, file: !1023, line: 32, baseType: !1036, size: 960, offset: 576)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1037, line: 206, size: 960, elements: !1038)
!1037 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1038 = !{!1039, !1040, !1043, !1045, !1046, !1048}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1036, file: !1037, line: 207, baseType: !338, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1036, file: !1037, line: 208, baseType: !1041, size: 256, offset: 64)
!1041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1042, size: 256, elements: !467)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !338, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1036, file: !1037, line: 209, baseType: !1044, size: 256, offset: 320)
!1044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 256, elements: !467)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1036, file: !1037, line: 213, baseType: !264, size: 64, offset: 576)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1036, file: !1037, line: 215, baseType: !1047, size: 256, offset: 640)
!1047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !264, size: 256, elements: !467)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1036, file: !1037, line: 216, baseType: !186, size: 8, offset: 896)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1028, file: !1023, line: 33, baseType: !278, size: 64, offset: 1536)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1028, file: !1023, line: 34, baseType: !278, size: 64, offset: 1600)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1028, file: !1023, line: 35, baseType: !585, size: 8, offset: 1664)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1028, file: !1023, line: 36, baseType: !1053, size: 320, offset: 1728)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1054, line: 11, size: 320, elements: !1055)
!1054 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1055 = !{!1056, !1063, !1064, !1069}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1053, file: !1054, line: 16, baseType: !1057, size: 128)
!1057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !130, line: 198, size: 128, elements: !1058)
!1058 = !{!1059, !1061}
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1057, file: !130, line: 199, baseType: !1060, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1057, size: 64)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1057, file: !130, line: 199, baseType: !1062, size: 64, offset: 64)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1053, file: !1054, line: 17, baseType: !278, size: 64, offset: 128)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1053, file: !1054, line: 18, baseType: !1065, size: 64, offset: 192)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = !DISubroutineType(types: !1067)
!1067 = !{null, !1068}
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1053, file: !1054, line: 19, baseType: !1070, size: 32, offset: 256)
!1070 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !187, line: 21, baseType: !988)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1028, file: !1023, line: 37, baseType: !550, size: 256, offset: 2048)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1028, file: !1023, line: 38, baseType: !335, size: 128, align: 64, offset: 2304)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1028, file: !1023, line: 39, baseType: !1074, size: 64, offset: 2432)
!1074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1075, size: 64)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1023, line: 49, size: 768, elements: !1076)
!1076 = !{!1077, !1078, !1079, !1080, !1081, !1082, !1083}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1075, file: !1023, line: 50, baseType: !158, size: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1075, file: !1023, line: 51, baseType: !1044, size: 256, offset: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1075, file: !1023, line: 53, baseType: !1044, size: 256, offset: 320)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1075, file: !1023, line: 54, baseType: !278, size: 64, offset: 576)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1075, file: !1023, line: 55, baseType: !1074, size: 64, offset: 640)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1075, file: !1023, line: 56, baseType: !46, size: 32, offset: 704)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1075, file: !1023, line: 57, baseType: !46, size: 32, offset: 736)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1028, file: !1023, line: 40, baseType: !278, size: 64, offset: 2496)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1028, file: !1023, line: 42, baseType: !46, size: 32, offset: 2560)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1028, file: !1023, line: 43, baseType: !1021, size: 64, offset: 2624)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1022, file: !1023, line: 99, baseType: !1088, offset: 128)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1089, line: 211, elements: !365)
!1089 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1022, file: !1023, line: 100, baseType: !1091, size: 64, offset: 128)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1023, line: 63, size: 3008, elements: !1093)
!1093 = !{!1094, !1095, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1106, !1107, !1108, !1109, !1110, !1111, !1112, !1113, !1114, !1115, !1116, !1125}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1092, file: !1023, line: 64, baseType: !1074, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1092, file: !1023, line: 65, baseType: !1096, size: 192, offset: 64)
!1096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1074, size: 192, elements: !229)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1092, file: !1023, line: 67, baseType: !46, size: 32, offset: 256)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1092, file: !1023, line: 68, baseType: !486, size: 256, offset: 320)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1092, file: !1023, line: 69, baseType: !158, size: 32, offset: 576)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1092, file: !1023, line: 70, baseType: !486, size: 256, offset: 640)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1092, file: !1023, line: 71, baseType: !278, size: 64, offset: 896)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1092, file: !1023, line: 72, baseType: !278, size: 64, offset: 960)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1092, file: !1023, line: 73, baseType: !278, size: 64, offset: 1024)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1092, file: !1023, line: 74, baseType: !278, size: 64, offset: 1088)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1092, file: !1023, line: 75, baseType: !278, size: 64, offset: 1152)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1092, file: !1023, line: 76, baseType: !278, size: 64, offset: 1216)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1092, file: !1023, line: 77, baseType: !278, size: 64, offset: 1280)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1092, file: !1023, line: 78, baseType: !278, size: 64, offset: 1344)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1092, file: !1023, line: 79, baseType: !585, size: 8, offset: 1408)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1092, file: !1023, line: 80, baseType: !278, size: 64, offset: 1472)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1092, file: !1023, line: 81, baseType: !486, size: 256, offset: 1536)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1092, file: !1023, line: 82, baseType: !811, size: 256, offset: 1792)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1092, file: !1023, line: 84, baseType: !178, size: 32, offset: 2048)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1092, file: !1023, line: 87, baseType: !278, size: 64, offset: 2112)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1092, file: !1023, line: 88, baseType: !278, size: 64, offset: 2176)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1092, file: !1023, line: 89, baseType: !1117, size: 704, offset: 2240)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !551, line: 111, size: 704, elements: !1118)
!1118 = !{!1119, !1120, !1121, !1124}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1117, file: !551, line: 112, baseType: !550, size: 256)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1117, file: !551, line: 113, baseType: !1053, size: 320, offset: 256)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1117, file: !551, line: 116, baseType: !1122, size: 64, offset: 576)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !551, line: 18, flags: DIFlagFwdDecl)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1117, file: !551, line: 117, baseType: !46, size: 32, offset: 640)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1092, file: !1023, line: 90, baseType: !1021, size: 64, offset: 2944)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !125, file: !6, line: 515, baseType: !1127, size: 64, offset: 8064)
!1127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1128, size: 64)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1129, line: 117, size: 128, elements: !1130)
!1129 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1130 = !{!1131, !1132, !1133}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1128, file: !1129, line: 118, baseType: !465, size: 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1128, file: !1129, line: 119, baseType: !465, size: 32, offset: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1128, file: !1129, line: 120, baseType: !264, size: 64, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !125, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !125, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !125, file: !6, line: 520, baseType: !1137, size: 64, offset: 8192)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !125, file: !6, line: 523, baseType: !1139, size: 64, offset: 8256)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !125, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !125, file: !6, line: 525, baseType: !1144, size: 64, offset: 8384)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !125, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !125, file: !6, line: 533, baseType: !300, size: 64, offset: 8512)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !125, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !125, file: !6, line: 535, baseType: !1151, size: 64, offset: 8640)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !125, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !125, file: !6, line: 539, baseType: !46, size: 32, offset: 8736)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !125, file: !6, line: 540, baseType: !1155, size: 64, offset: 8768)
!1155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1156, size: 64)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1157, line: 32, size: 64, elements: !1158)
!1157 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1158 = !{!1159, !1160}
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1156, file: !1157, line: 33, baseType: !465, size: 32)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1156, file: !1157, line: 34, baseType: !465, size: 32, offset: 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !125, file: !6, line: 563, baseType: !129, size: 128, offset: 8832)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !125, file: !6, line: 565, baseType: !129, size: 128, offset: 8960)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !125, file: !6, line: 568, baseType: !1164, size: 64, offset: 9088)
!1164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1165 = !DISubroutineType(types: !1166)
!1166 = !{null}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !125, file: !6, line: 570, baseType: !178, size: 32, offset: 9152)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dock_station", file: !3, line: 30, size: 512, elements: !1170)
!1170 = !{!1171, !1174, !1175, !1176, !1177, !1178}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !1169, file: !3, line: 31, baseType: !1172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !1173, line: 424, baseType: !300)
!1173 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "last_dock_time", scope: !1169, file: !3, line: 32, baseType: !278, size: 64, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1169, file: !3, line: 33, baseType: !1070, size: 32, offset: 128)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "dependent_devices", scope: !1169, file: !3, line: 34, baseType: !129, size: 128, offset: 192)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1169, file: !3, line: 36, baseType: !129, size: 128, offset: 320)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "dock_device", scope: !1169, file: !3, line: 37, baseType: !1179, size: 64, offset: 448)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !1181, line: 23, size: 6464, elements: !1182)
!1181 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1dac52bf003d860ac3c23951fd976693")
!1182 = !{!1183, !1184, !1185, !1186, !1737, !1738, !1739, !1740, !1755, !1765, !1766, !1769}
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1180, file: !1181, line: 24, baseType: !147, size: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1180, file: !1181, line: 25, baseType: !46, size: 32, offset: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !1180, file: !1181, line: 26, baseType: !585, size: 8, offset: 96)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1180, file: !1181, line: 27, baseType: !1187, size: 5824, offset: 128)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !1188)
!1188 = !{!1189, !1190, !1192, !1195, !1196, !1249, !1340, !1341, !1342, !1343, !1344, !1351, !1521, !1534, !1544, !1548, !1550, !1551, !1552, !1556, !1563, !1564, !1567, !1570, !1574, !1677, !1678, !1681, !1682, !1683, !1684, !1714, !1715, !1716, !1719, !1722, !1731, !1732, !1733, !1734, !1735, !1736}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1187, file: !26, line: 706, baseType: !144, size: 512)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1187, file: !26, line: 707, baseType: !1191, size: 64, offset: 512)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1187, file: !26, line: 709, baseType: !1193, size: 64, offset: 576)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1187, file: !26, line: 711, baseType: !147, size: 64, offset: 640)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1187, file: !26, line: 712, baseType: !1197, size: 64, offset: 704)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1199)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !1200)
!1200 = !{!1201, !1202, !1203, !1209, !1214, !1218}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1199, file: !26, line: 90, baseType: !147, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1199, file: !26, line: 91, baseType: !280, size: 64, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1199, file: !26, line: 92, baseType: !1204, size: 64, offset: 128)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!46, !1207, !223}
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1187)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1199, file: !26, line: 93, baseType: !1210, size: 64, offset: 192)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = !DISubroutineType(types: !1212)
!1212 = !{!228, !1207, !1213, !659, !667}
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1199, file: !26, line: 95, baseType: !1215, size: 64, offset: 256)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DISubroutineType(types: !1217)
!1217 = !{null, !1191}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1199, file: !26, line: 97, baseType: !1219, size: 64, offset: 320)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1221)
!1221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !1222)
!1222 = !{!1223, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1221, file: !38, line: 287, baseType: !1224, size: 64)
!1224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1225, size: 64)
!1225 = !DISubroutineType(types: !1226)
!1226 = !{!46, !1191}
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1221, file: !38, line: 288, baseType: !1215, size: 64, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1221, file: !38, line: 289, baseType: !1224, size: 64, offset: 128)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1221, file: !38, line: 290, baseType: !1224, size: 64, offset: 192)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1221, file: !38, line: 291, baseType: !1224, size: 64, offset: 256)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1221, file: !38, line: 292, baseType: !1224, size: 64, offset: 320)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1221, file: !38, line: 293, baseType: !1224, size: 64, offset: 384)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1221, file: !38, line: 294, baseType: !1224, size: 64, offset: 448)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1221, file: !38, line: 295, baseType: !1224, size: 64, offset: 512)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1221, file: !38, line: 296, baseType: !1224, size: 64, offset: 576)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1221, file: !38, line: 297, baseType: !1224, size: 64, offset: 640)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1221, file: !38, line: 298, baseType: !1224, size: 64, offset: 704)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1221, file: !38, line: 299, baseType: !1224, size: 64, offset: 768)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1221, file: !38, line: 300, baseType: !1224, size: 64, offset: 832)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1221, file: !38, line: 301, baseType: !1224, size: 64, offset: 896)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1221, file: !38, line: 302, baseType: !1224, size: 64, offset: 960)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1221, file: !38, line: 303, baseType: !1224, size: 64, offset: 1024)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1221, file: !38, line: 304, baseType: !1224, size: 64, offset: 1088)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1221, file: !38, line: 305, baseType: !1224, size: 64, offset: 1152)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1221, file: !38, line: 306, baseType: !1224, size: 64, offset: 1216)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1221, file: !38, line: 307, baseType: !1224, size: 64, offset: 1280)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1221, file: !38, line: 308, baseType: !1224, size: 64, offset: 1344)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1221, file: !38, line: 309, baseType: !1224, size: 64, offset: 1408)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1187, file: !26, line: 714, baseType: !1250, size: 64, offset: 768)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1252)
!1252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1253, line: 80, size: 1344, elements: !1254)
!1253 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!1254 = !{!1255, !1256, !1257, !1258, !1259, !1260, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1339}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1252, file: !1253, line: 81, baseType: !147, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1252, file: !1253, line: 82, baseType: !147, size: 64, offset: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1252, file: !1253, line: 83, baseType: !280, size: 64, offset: 128)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1252, file: !1253, line: 84, baseType: !280, size: 64, offset: 192)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1252, file: !1253, line: 85, baseType: !280, size: 64, offset: 256)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1252, file: !1253, line: 87, baseType: !1261, size: 64, offset: 320)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DISubroutineType(types: !1263)
!1263 = !{!46, !1191, !1264}
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !1266)
!1266 = !{!1267, !1268, !1269, !1270, !1271, !1272, !1273, !1289, !1302, !1303, !1304, !1305, !1306, !1314, !1315, !1316, !1317, !1318, !1319}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1265, file: !20, line: 97, baseType: !147, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1265, file: !20, line: 98, baseType: !1250, size: 64, offset: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1265, file: !20, line: 100, baseType: !124, size: 64, offset: 128)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1265, file: !20, line: 101, baseType: !147, size: 64, offset: 192)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1265, file: !20, line: 103, baseType: !585, size: 8, offset: 256)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1265, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1265, file: !20, line: 106, baseType: !1274, size: 64, offset: 320)
!1274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1275, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1276)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1277, line: 282, size: 1600, elements: !1278)
!1277 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1278 = !{!1279, !1283, !1284, !1288}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1276, file: !1277, line: 283, baseType: !1280, size: 256)
!1280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 256, elements: !1281)
!1281 = !{!1282}
!1282 = !DISubrange(count: 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1276, file: !1277, line: 284, baseType: !1280, size: 256, offset: 256)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1276, file: !1277, line: 285, baseType: !1285, size: 1024, offset: 512)
!1285 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 1024, elements: !1286)
!1286 = !{!1287}
!1287 = !DISubrange(count: 128)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1276, file: !1277, line: 286, baseType: !507, size: 64, offset: 1536)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1265, file: !20, line: 107, baseType: !1290, size: 64, offset: 384)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1292)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1277, line: 217, size: 256, elements: !1293)
!1293 = !{!1294, !1298, !1300, !1301}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1292, file: !1277, line: 218, baseType: !1295, size: 128)
!1295 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 128, elements: !1296)
!1296 = !{!1297}
!1297 = !DISubrange(count: 16)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1292, file: !1277, line: 219, baseType: !1299, size: 64, offset: 128)
!1299 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1277, line: 15, baseType: !278)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1292, file: !1277, line: 220, baseType: !988, size: 32, offset: 192)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1292, file: !1277, line: 221, baseType: !988, size: 32, offset: 224)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1265, file: !20, line: 109, baseType: !1224, size: 64, offset: 448)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1265, file: !20, line: 110, baseType: !1215, size: 64, offset: 512)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1265, file: !20, line: 111, baseType: !1224, size: 64, offset: 576)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1265, file: !20, line: 112, baseType: !1215, size: 64, offset: 640)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1265, file: !20, line: 113, baseType: !1307, size: 64, offset: 704)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DISubroutineType(types: !1309)
!1309 = !{!46, !1191, !1310}
!1310 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1311)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1312)
!1312 = !{!1313}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1311, file: !38, line: 59, baseType: !46, size: 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1265, file: !20, line: 114, baseType: !1224, size: 64, offset: 768)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1265, file: !20, line: 115, baseType: !280, size: 64, offset: 832)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1265, file: !20, line: 116, baseType: !280, size: 64, offset: 896)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1265, file: !20, line: 118, baseType: !1219, size: 64, offset: 960)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1265, file: !20, line: 119, baseType: !1215, size: 64, offset: 1024)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1265, file: !20, line: 121, baseType: !1320, size: 64, offset: 1088)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1252, file: !1253, line: 88, baseType: !1204, size: 64, offset: 384)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1252, file: !1253, line: 89, baseType: !1224, size: 64, offset: 448)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1252, file: !1253, line: 90, baseType: !1215, size: 64, offset: 512)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1252, file: !1253, line: 91, baseType: !1215, size: 64, offset: 576)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1252, file: !1253, line: 92, baseType: !1215, size: 64, offset: 640)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1252, file: !1253, line: 94, baseType: !1224, size: 64, offset: 704)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1252, file: !1253, line: 95, baseType: !1224, size: 64, offset: 768)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1252, file: !1253, line: 97, baseType: !1307, size: 64, offset: 832)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1252, file: !1253, line: 98, baseType: !1224, size: 64, offset: 896)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1252, file: !1253, line: 100, baseType: !1224, size: 64, offset: 960)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1252, file: !1253, line: 102, baseType: !1224, size: 64, offset: 1024)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !1252, file: !1253, line: 103, baseType: !1215, size: 64, offset: 1088)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1252, file: !1253, line: 105, baseType: !1219, size: 64, offset: 1152)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1252, file: !1253, line: 107, baseType: !1336, size: 64, offset: 1216)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1338)
!1338 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1253, line: 107, flags: DIFlagFwdDecl)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1252, file: !1253, line: 109, baseType: !585, size: 8, offset: 1280)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1187, file: !26, line: 715, baseType: !1264, size: 64, offset: 832)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1187, file: !26, line: 717, baseType: !300, size: 64, offset: 896)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1187, file: !26, line: 719, baseType: !300, size: 64, offset: 960)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1187, file: !26, line: 721, baseType: !486, size: 256, offset: 1024)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1187, file: !26, line: 725, baseType: !1345, size: 448, offset: 1280)
!1345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1346)
!1346 = !{!1347, !1348, !1349, !1350}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1345, file: !26, line: 518, baseType: !129, size: 128)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1345, file: !26, line: 519, baseType: !129, size: 128, offset: 128)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1345, file: !26, line: 520, baseType: !129, size: 128, offset: 256)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1345, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1187, file: !26, line: 726, baseType: !1352, size: 2496, offset: 1728)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1353)
!1353 = !{!1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1398, !1399, !1400, !1401, !1402, !1403, !1474, !1475, !1476, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1514, !1518}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1352, file: !38, line: 664, baseType: !1310, size: 32)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1352, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1352, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1352, file: !38, line: 667, baseType: !585, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1352, file: !38, line: 668, baseType: !585, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1352, file: !38, line: 669, baseType: !585, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1352, file: !38, line: 670, baseType: !585, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1352, file: !38, line: 671, baseType: !585, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1352, file: !38, line: 672, baseType: !585, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1352, file: !38, line: 673, baseType: !585, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1352, file: !38, line: 674, baseType: !585, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1352, file: !38, line: 675, baseType: !1070, size: 32, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1352, file: !38, line: 676, baseType: !158, size: 32, offset: 96)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1352, file: !38, line: 678, baseType: !129, size: 128, offset: 128)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1352, file: !38, line: 679, baseType: !811, size: 256, offset: 256)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1352, file: !38, line: 680, baseType: !1370, size: 64, offset: 512)
!1370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1371, size: 64)
!1371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1372, line: 43, size: 1536, elements: !1373)
!1372 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1373 = !{!1374, !1375, !1376, !1377, !1378, !1381, !1382, !1383, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397}
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1371, file: !1372, line: 44, baseType: !147, size: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1371, file: !1372, line: 45, baseType: !46, size: 32, offset: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1371, file: !1372, line: 46, baseType: !129, size: 128, offset: 128)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1371, file: !1372, line: 47, baseType: !158, size: 32, offset: 256)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1371, file: !1372, line: 48, baseType: !1379, size: 64, offset: 320)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1371, file: !1372, line: 49, baseType: !1053, size: 320, offset: 384)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1371, file: !1372, line: 50, baseType: !278, size: 64, offset: 704)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1371, file: !1372, line: 51, baseType: !1384, size: 64, offset: 768)
!1384 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1385, line: 29, baseType: !404)
!1385 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1371, file: !1372, line: 52, baseType: !1384, size: 64, offset: 832)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1371, file: !1372, line: 53, baseType: !1384, size: 64, offset: 896)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1371, file: !1372, line: 54, baseType: !1384, size: 64, offset: 960)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1371, file: !1372, line: 55, baseType: !1384, size: 64, offset: 1024)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1371, file: !1372, line: 56, baseType: !278, size: 64, offset: 1088)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1371, file: !1372, line: 57, baseType: !278, size: 64, offset: 1152)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1371, file: !1372, line: 58, baseType: !278, size: 64, offset: 1216)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1371, file: !1372, line: 59, baseType: !278, size: 64, offset: 1280)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1371, file: !1372, line: 60, baseType: !278, size: 64, offset: 1344)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1371, file: !1372, line: 61, baseType: !1191, size: 64, offset: 1408)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1371, file: !1372, line: 62, baseType: !585, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1371, file: !1372, line: 63, baseType: !585, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1352, file: !38, line: 681, baseType: !585, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1352, file: !38, line: 682, baseType: !585, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1352, file: !38, line: 683, baseType: !585, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1352, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1352, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1352, file: !38, line: 690, baseType: !1404, size: 512, offset: 640)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1405)
!1405 = !{!1406, !1412, !1413, !1418, !1470, !1471, !1472, !1473}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1404, file: !33, line: 119, baseType: !1407, size: 256)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1408, line: 9, size: 256, elements: !1409)
!1408 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1409 = !{!1410, !1411}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1407, file: !1408, line: 10, baseType: !591, size: 192, align: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1407, file: !1408, line: 11, baseType: !1384, size: 64, offset: 192)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1404, file: !33, line: 120, baseType: !1384, size: 64, offset: 256)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1404, file: !33, line: 121, baseType: !1414, size: 64, offset: 320)
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DISubroutineType(types: !1416)
!1416 = !{!32, !1417}
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1404, file: !33, line: 122, baseType: !1419, size: 64, offset: 384)
!1419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1420, size: 64)
!1420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1421)
!1421 = !{!1422, !1447, !1448, !1451, !1456, !1457, !1465, !1469}
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1420, file: !33, line: 160, baseType: !1423, size: 64)
!1423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1424, size: 64)
!1424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1425)
!1425 = !{!1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443}
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1424, file: !33, line: 216, baseType: !420, size: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1424, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1424, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1424, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1424, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1424, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1424, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1424, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1424, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1424, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1424, file: !33, line: 227, baseType: !198, size: 16, offset: 192)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1424, file: !33, line: 228, baseType: !198, size: 16, offset: 208)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1424, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1424, file: !33, line: 235, baseType: !1384, size: 64, offset: 256)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1424, file: !33, line: 236, baseType: !1417, size: 64, offset: 320)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1424, file: !33, line: 237, baseType: !1384, size: 64, offset: 384)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1424, file: !33, line: 238, baseType: !1417, size: 64, offset: 448)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1424, file: !33, line: 239, baseType: !1444, size: 4096, align: 512, offset: 512)
!1444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1420, size: 4096, align: 512, elements: !1445)
!1445 = !{!1446}
!1446 = !DISubrange(count: 8)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1420, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1420, file: !33, line: 162, baseType: !1449, size: 32, offset: 96)
!1449 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !130, line: 32, baseType: !1450)
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !262, line: 96, baseType: !46)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1420, file: !33, line: 163, baseType: !1452, size: 32, offset: 128)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !435, line: 274, baseType: !1453)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !435, line: 274, size: 32, elements: !1454)
!1454 = !{!1455}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1453, file: !435, line: 274, baseType: !434, size: 32)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1420, file: !33, line: 164, baseType: !1417, size: 64, offset: 192)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1420, file: !33, line: 165, baseType: !1458, size: 128, offset: 256)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1408, line: 14, size: 128, elements: !1459)
!1459 = !{!1460}
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1458, file: !1408, line: 15, baseType: !1461, size: 128)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !592, line: 26, size: 128, elements: !1462)
!1462 = !{!1463, !1464}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1461, file: !592, line: 27, baseType: !694, size: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1461, file: !592, line: 28, baseType: !596, size: 64, offset: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1420, file: !33, line: 166, baseType: !1466, size: 64, offset: 384)
!1466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1467 = !DISubroutineType(types: !1468)
!1468 = !{!1384}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1420, file: !33, line: 167, baseType: !1384, size: 64, offset: 448)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1404, file: !33, line: 123, baseType: !186, size: 8, offset: 448)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1404, file: !33, line: 124, baseType: !186, size: 8, offset: 456)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1404, file: !33, line: 125, baseType: !186, size: 8, offset: 464)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1404, file: !33, line: 126, baseType: !186, size: 8, offset: 472)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1352, file: !38, line: 691, baseType: !392, size: 64, offset: 1152)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1352, file: !38, line: 692, baseType: !550, size: 256, offset: 1216)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1352, file: !38, line: 693, baseType: !1477, size: 192, offset: 1472)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1478, line: 41, baseType: !1479)
!1478 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1479 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1478, line: 37, size: 192, elements: !1480)
!1480 = !{!1481, !1482}
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1479, file: !1478, line: 38, baseType: !158, size: 32)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1479, file: !1478, line: 39, baseType: !129, size: 128, offset: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1352, file: !38, line: 694, baseType: !1379, size: 64, offset: 1664)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1352, file: !38, line: 695, baseType: !178, size: 32, offset: 1728)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1352, file: !38, line: 696, baseType: !178, size: 32, offset: 1760)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1352, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1352, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1352, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1352, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1352, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1352, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1352, file: !38, line: 703, baseType: !585, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1352, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1352, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1352, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1352, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1352, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1352, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1352, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1352, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1352, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1352, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1352, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1352, file: !38, line: 715, baseType: !392, size: 64, offset: 2048)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1352, file: !38, line: 716, baseType: !392, size: 64, offset: 2112)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1352, file: !38, line: 717, baseType: !392, size: 64, offset: 2176)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1352, file: !38, line: 718, baseType: !392, size: 64, offset: 2240)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1352, file: !38, line: 720, baseType: !1509, size: 64, offset: 2304)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1511)
!1511 = !{!1512, !1513}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1510, file: !38, line: 633, baseType: !158, size: 32)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1510, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1352, file: !38, line: 721, baseType: !1515, size: 64, offset: 2368)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{null, !1191, !465}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1352, file: !38, line: 722, baseType: !1519, size: 64, offset: 2432)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !38, line: 722, flags: DIFlagFwdDecl)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1187, file: !26, line: 727, baseType: !1522, size: 64, offset: 4224)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1524)
!1524 = !{!1525, !1526, !1527, !1531, !1532, !1533}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1523, file: !38, line: 743, baseType: !1221, size: 1472)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1523, file: !38, line: 744, baseType: !1224, size: 64, offset: 1472)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1523, file: !38, line: 745, baseType: !1528, size: 64, offset: 1536)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{null, !1191, !585}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1523, file: !38, line: 746, baseType: !1224, size: 64, offset: 1600)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1523, file: !38, line: 747, baseType: !1215, size: 64, offset: 1664)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1523, file: !38, line: 748, baseType: !1215, size: 64, offset: 1728)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !1187, file: !26, line: 736, baseType: !1535, size: 128, offset: 4288)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1536)
!1536 = !{!1537, !1541}
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1535, file: !26, line: 531, baseType: !1538, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1540, line: 13, flags: DIFlagFwdDecl)
!1540 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1535, file: !26, line: 532, baseType: !1542, size: 64, offset: 64)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1187, file: !26, line: 738, baseType: !1545, size: 64, offset: 4416)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1547)
!1547 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1187, file: !26, line: 740, baseType: !1549, size: 64, offset: 4480)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1187, file: !26, line: 741, baseType: !392, size: 64, offset: 4544)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1187, file: !26, line: 746, baseType: !392, size: 64, offset: 4608)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1187, file: !26, line: 747, baseType: !1553, size: 64, offset: 4672)
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1555)
!1555 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1187, file: !26, line: 749, baseType: !1557, size: 64, offset: 4736)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1559)
!1559 = !{!1560, !1561, !1562}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1558, file: !26, line: 433, baseType: !7, size: 32)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1558, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1558, file: !26, line: 435, baseType: !278, size: 64, offset: 64)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1187, file: !26, line: 751, baseType: !129, size: 128, offset: 4800)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !1187, file: !26, line: 762, baseType: !1565, size: 64, offset: 4928)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1187, file: !26, line: 770, baseType: !1568, offset: 4992)
!1568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1569, line: 5, elements: !365)
!1569 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1187, file: !26, line: 772, baseType: !1571, size: 64, offset: 4992)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1573, line: 18, flags: DIFlagFwdDecl)
!1573 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1187, file: !26, line: 773, baseType: !1575, size: 64, offset: 5056)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1577, line: 41, size: 512, elements: !1578)
!1577 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!1578 = !{!1579, !1580, !1673, !1674, !1675, !1676}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1576, file: !1577, line: 42, baseType: !1575, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1576, file: !1577, line: 43, baseType: !1581, size: 64, offset: 64)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1583)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1577, line: 125, size: 1408, elements: !1584)
!1584 = !{!1585, !1589, !1593, !1599, !1603, !1604, !1608, !1612, !1616, !1620, !1624, !1625, !1629, !1633, !1637, !1648, !1649, !1650, !1651, !1661, !1665, !1669}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1583, file: !1577, line: 126, baseType: !1586, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!1575, !1575}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1583, file: !1577, line: 127, baseType: !1590, size: 64, offset: 64)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{null, !1575}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1583, file: !1577, line: 128, baseType: !1594, size: 64, offset: 128)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!585, !1597}
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1576)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1583, file: !1577, line: 129, baseType: !1600, size: 64, offset: 192)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!507, !1597, !1207}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !1583, file: !1577, line: 131, baseType: !1594, size: 64, offset: 256)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !1583, file: !1577, line: 133, baseType: !1605, size: 64, offset: 320)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DISubroutineType(types: !1607)
!1607 = !{!78, !1597}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1583, file: !1577, line: 134, baseType: !1609, size: 64, offset: 384)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DISubroutineType(types: !1611)
!1611 = !{!585, !1597, !147}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1583, file: !1577, line: 136, baseType: !1613, size: 64, offset: 448)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!46, !1597, !147, !7, !300, !275}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1583, file: !1577, line: 141, baseType: !1617, size: 64, offset: 512)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!46, !1597, !147, !1137, !275}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1583, file: !1577, line: 144, baseType: !1621, size: 64, offset: 576)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!147, !1597}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1583, file: !1577, line: 145, baseType: !1621, size: 64, offset: 640)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1583, file: !1577, line: 146, baseType: !1626, size: 64, offset: 704)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!1575, !1597}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1583, file: !1577, line: 148, baseType: !1630, size: 64, offset: 768)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!1575, !1597, !1575}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1583, file: !1577, line: 151, baseType: !1634, size: 64, offset: 832)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!1575, !1597, !147}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1583, file: !1577, line: 153, baseType: !1638, size: 64, offset: 896)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!46, !1597, !147, !147, !7, !7, !1641}
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1577, line: 94, size: 640, elements: !1643)
!1643 = !{!1644, !1645, !1646}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1642, file: !1577, line: 95, baseType: !1575, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1642, file: !1577, line: 96, baseType: !7, size: 32, offset: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1642, file: !1577, line: 97, baseType: !1647, size: 512, offset: 128)
!1647 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 512, elements: !1445)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1583, file: !1577, line: 158, baseType: !1630, size: 64, offset: 960)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1583, file: !1577, line: 161, baseType: !1626, size: 64, offset: 1024)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1583, file: !1577, line: 163, baseType: !1586, size: 64, offset: 1088)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1583, file: !1577, line: 164, baseType: !1652, size: 64, offset: 1152)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!46, !1597, !1655}
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1577, line: 73, size: 128, elements: !1657)
!1657 = !{!1658, !1659, !1660}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1656, file: !1577, line: 74, baseType: !7, size: 32)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1656, file: !1577, line: 75, baseType: !7, size: 32, offset: 32)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1656, file: !1577, line: 76, baseType: !1597, size: 64, offset: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !1583, file: !1577, line: 166, baseType: !1662, size: 64, offset: 1216)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = !DISubroutineType(types: !1664)
!1664 = !{!300, !1575, !46}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !1583, file: !1577, line: 167, baseType: !1666, size: 64, offset: 1280)
!1666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1667, size: 64)
!1667 = !DISubroutineType(types: !1668)
!1668 = !{!46, !1597, !7}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1583, file: !1577, line: 168, baseType: !1670, size: 64, offset: 1344)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!46, !1575}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1576, file: !1577, line: 44, baseType: !1191, size: 64, offset: 128)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1576, file: !1577, line: 45, baseType: !129, size: 128, offset: 192)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1576, file: !1577, line: 46, baseType: !129, size: 128, offset: 320)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1576, file: !1577, line: 47, baseType: !186, size: 8, offset: 448)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !1187, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1187, file: !26, line: 778, baseType: !1679, size: 32, offset: 5152)
!1679 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !130, line: 21, baseType: !1680)
!1680 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !130, line: 18, baseType: !1070)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1187, file: !26, line: 779, baseType: !1070, size: 32, offset: 5184)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1187, file: !26, line: 781, baseType: !158, size: 32, offset: 5216)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1187, file: !26, line: 782, baseType: !129, size: 128, offset: 5248)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1187, file: !26, line: 784, baseType: !1685, size: 64, offset: 5376)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1687)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1688, line: 52, size: 768, elements: !1689)
!1688 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1689 = !{!1690, !1691, !1692, !1693, !1694, !1698, !1702, !1703, !1704, !1705, !1709, !1713}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1687, file: !1688, line: 53, baseType: !147, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1687, file: !1688, line: 55, baseType: !280, size: 64, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1687, file: !1688, line: 56, baseType: !280, size: 64, offset: 128)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1687, file: !1688, line: 58, baseType: !1204, size: 64, offset: 192)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1687, file: !1688, line: 59, baseType: !1695, size: 64, offset: 256)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!228, !1207, !1213}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1687, file: !1688, line: 61, baseType: !1699, size: 64, offset: 320)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{null, !1685}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1687, file: !1688, line: 62, baseType: !1215, size: 64, offset: 384)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1687, file: !1688, line: 64, baseType: !1224, size: 64, offset: 448)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1687, file: !1688, line: 66, baseType: !624, size: 64, offset: 512)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1687, file: !1688, line: 67, baseType: !1706, size: 64, offset: 576)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{!507, !1207}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1687, file: !1688, line: 69, baseType: !1710, size: 64, offset: 640)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{null, !1207, !659, !667}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1687, file: !1688, line: 71, baseType: !1219, size: 64, offset: 704)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1187, file: !26, line: 785, baseType: !280, size: 64, offset: 5440)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1187, file: !26, line: 787, baseType: !1215, size: 64, offset: 5504)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1187, file: !26, line: 788, baseType: !1717, size: 64, offset: 5568)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1187, file: !26, line: 789, baseType: !1720, size: 64, offset: 5632)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !1187, file: !26, line: 791, baseType: !1723, size: 64, offset: 5696)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1725)
!1725 = !{!1726, !1727, !1728, !1729, !1730}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1724, file: !26, line: 598, baseType: !53, size: 32)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1724, file: !26, line: 599, baseType: !62, size: 32, offset: 32)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1724, file: !26, line: 600, baseType: !67, size: 32, offset: 64)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1724, file: !26, line: 601, baseType: !585, size: 8, offset: 96)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1724, file: !26, line: 602, baseType: !585, size: 8, offset: 104)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1187, file: !26, line: 793, baseType: !72, size: 32, offset: 5760)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1187, file: !26, line: 795, baseType: !585, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1187, file: !26, line: 796, baseType: !585, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1187, file: !26, line: 797, baseType: !585, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1187, file: !26, line: 798, baseType: !585, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !1187, file: !26, line: 799, baseType: !585, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !1180, file: !1181, line: 28, baseType: !392, size: 64, offset: 5952)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1180, file: !1181, line: 29, baseType: !1558, size: 128, offset: 6016)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !1180, file: !1181, line: 30, baseType: !1070, size: 32, offset: 6144)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !1180, file: !1181, line: 31, baseType: !1741, size: 64, offset: 6208)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !1743, line: 21, size: 512, elements: !1744)
!1743 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!1744 = !{!1745, !1748, !1749, !1750, !1751, !1752, !1753, !1754}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1742, file: !1743, line: 22, baseType: !1746, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !130, line: 164, baseType: !1747)
!1747 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !130, line: 159, baseType: !392)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !1742, file: !1743, line: 23, baseType: !1746, size: 64, offset: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1742, file: !1743, line: 24, baseType: !147, size: 64, offset: 128)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1742, file: !1743, line: 25, baseType: !278, size: 64, offset: 192)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !1742, file: !1743, line: 26, baseType: !278, size: 64, offset: 256)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1742, file: !1743, line: 27, baseType: !1741, size: 64, offset: 320)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1742, file: !1743, line: 27, baseType: !1741, size: 64, offset: 384)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1742, file: !1743, line: 27, baseType: !1741, size: 64, offset: 448)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !1180, file: !1181, line: 33, baseType: !1756, size: 64, offset: 6272)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1758)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !1277, line: 607, size: 256, elements: !1759)
!1759 = !{!1760, !1764}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1758, file: !1277, line: 608, baseType: !1761, size: 160)
!1761 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 160, elements: !1762)
!1762 = !{!1763}
!1763 = !DISubrange(count: 20)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1758, file: !1277, line: 609, baseType: !1299, size: 64, offset: 192)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !1180, file: !1181, line: 38, baseType: !147, size: 64, offset: 6336)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !1180, file: !1181, line: 41, baseType: !1767, size: 64, offset: 6400)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !1181, line: 19, flags: DIFlagFwdDecl)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1180, file: !1181, line: 44, baseType: !1770, offset: 6464)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !1569, line: 8, elements: !365)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dock_dependent_device", file: !3, line: 42, size: 192, elements: !1773)
!1773 = !{!1774, !1775}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1772, file: !3, line: 43, baseType: !129, size: 128)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "adev", scope: !1772, file: !3, line: 44, baseType: !1776, size: 64, offset: 128)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !1778, line: 367, size: 11200, elements: !1779)
!1778 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "745f031e2ee183d2395bab1bfe3ce66b")
!1779 = !{!1780, !1781, !1782, !1783, !1784, !1785, !1786, !1795, !1813, !1889, !1919, !1943, !1964, !1970, !1979, !2011, !2025, !2029, !2030, !2031, !2032, !2033, !2034, !2035}
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "pld_crc", scope: !1777, file: !1778, line: 368, baseType: !1070, size: 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !1777, file: !1778, line: 369, baseType: !46, size: 32, offset: 32)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !1777, file: !1778, line: 370, baseType: !1172, size: 64, offset: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1777, file: !1778, line: 371, baseType: !1576, size: 512, offset: 128)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !1777, file: !1778, line: 372, baseType: !129, size: 128, offset: 640)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !1777, file: !1778, line: 373, baseType: !129, size: 128, offset: 768)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1777, file: !1778, line: 374, baseType: !1787, size: 32, offset: 896)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !1778, line: 181, size: 32, elements: !1788)
!1788 = !{!1789, !1790, !1791, !1792, !1793, !1794}
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !1787, file: !1778, line: 182, baseType: !1070, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1787, file: !1778, line: 183, baseType: !1070, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !1787, file: !1778, line: 184, baseType: !1070, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !1787, file: !1778, line: 185, baseType: !1070, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !1787, file: !1778, line: 186, baseType: !1070, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1787, file: !1778, line: 187, baseType: !1070, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1777, file: !1778, line: 375, baseType: !1796, size: 32, offset: 928)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !1778, line: 192, size: 32, elements: !1797)
!1797 = !{!1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !1796, file: !1778, line: 193, baseType: !1070, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1796, file: !1778, line: 194, baseType: !1070, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !1796, file: !1778, line: 195, baseType: !1070, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !1796, file: !1778, line: 196, baseType: !1070, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !1796, file: !1778, line: 197, baseType: !1070, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !1796, file: !1778, line: 198, baseType: !1070, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1796, file: !1778, line: 199, baseType: !1070, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !1796, file: !1778, line: 200, baseType: !1070, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !1796, file: !1778, line: 201, baseType: !1070, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !1796, file: !1778, line: 202, baseType: !1070, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !1796, file: !1778, line: 203, baseType: !1070, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !1796, file: !1778, line: 204, baseType: !1070, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !1796, file: !1778, line: 205, baseType: !1070, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "honor_deps", scope: !1796, file: !1778, line: 206, baseType: !1070, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1796, file: !1778, line: 207, baseType: !1070, size: 18, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !1777, file: !1778, line: 376, baseType: !1814, size: 960, offset: 960)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !1778, line: 238, size: 960, elements: !1815)
!1815 = !{!1816, !1819, !1820, !1828, !1830, !1831, !1832, !1837, !1839}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !1814, file: !1778, line: 239, baseType: !1817, size: 64)
!1817 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !1778, line: 220, baseType: !1818)
!1818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 64, elements: !1445)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "instance_no", scope: !1814, file: !1778, line: 240, baseType: !46, size: 32, offset: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1814, file: !1778, line: 241, baseType: !1821, size: 32, offset: 96)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !1778, line: 230, size: 32, elements: !1822)
!1822 = !{!1823, !1824, !1825, !1826, !1827}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !1821, file: !1778, line: 231, baseType: !1070, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !1821, file: !1778, line: 232, baseType: !1070, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !1821, file: !1778, line: 233, baseType: !1070, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "backlight", scope: !1821, file: !1778, line: 234, baseType: !1070, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1821, file: !1778, line: 235, baseType: !1070, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !1814, file: !1778, line: 242, baseType: !1829, size: 64, offset: 128)
!1829 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !1778, line: 221, baseType: !392)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !1814, file: !1778, line: 243, baseType: !228, size: 64, offset: 192)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1814, file: !1778, line: 244, baseType: !129, size: 128, offset: 256)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !1814, file: !1778, line: 245, baseType: !1833, size: 320, offset: 384)
!1833 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !1778, line: 222, baseType: !1834)
!1834 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 320, elements: !1835)
!1835 = !{!1836}
!1836 = !DISubrange(count: 40)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !1814, file: !1778, line: 246, baseType: !1838, size: 160, offset: 704)
!1838 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !1778, line: 223, baseType: !1761)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !1814, file: !1778, line: 247, baseType: !1840, size: 64, offset: 896)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1841 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !1173, line: 908, size: 192, elements: !1842)
!1842 = !{!1843, !1845, !1850, !1856, !1863, !1869, !1875, !1883}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1841, file: !1173, line: 909, baseType: !1844, size: 32)
!1844 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !1173, line: 644, baseType: !1070)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1841, file: !1173, line: 913, baseType: !1846, size: 128)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1841, file: !1173, line: 910, size: 128, elements: !1847)
!1847 = !{!1848, !1849}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1846, file: !1173, line: 911, baseType: !1844, size: 32)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1846, file: !1173, line: 912, baseType: !392, size: 64, offset: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1841, file: !1173, line: 919, baseType: !1851, size: 128)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1841, file: !1173, line: 915, size: 128, elements: !1852)
!1852 = !{!1853, !1854, !1855}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1851, file: !1173, line: 916, baseType: !1844, size: 32)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1851, file: !1173, line: 917, baseType: !1070, size: 32, offset: 32)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1851, file: !1173, line: 918, baseType: !228, size: 64, offset: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1841, file: !1173, line: 925, baseType: !1857, size: 128)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1841, file: !1173, line: 921, size: 128, elements: !1858)
!1858 = !{!1859, !1860, !1861}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1857, file: !1173, line: 922, baseType: !1844, size: 32)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1857, file: !1173, line: 923, baseType: !1070, size: 32, offset: 32)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1857, file: !1173, line: 924, baseType: !1862, size: 64, offset: 64)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !1841, file: !1173, line: 931, baseType: !1864, size: 128)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1841, file: !1173, line: 927, size: 128, elements: !1865)
!1865 = !{!1866, !1867, !1868}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1864, file: !1173, line: 928, baseType: !1844, size: 32)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1864, file: !1173, line: 929, baseType: !1070, size: 32, offset: 32)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1864, file: !1173, line: 930, baseType: !1840, size: 64, offset: 64)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !1841, file: !1173, line: 937, baseType: !1870, size: 128)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1841, file: !1173, line: 933, size: 128, elements: !1871)
!1871 = !{!1872, !1873, !1874}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1870, file: !1173, line: 934, baseType: !1844, size: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !1870, file: !1173, line: 935, baseType: !1844, size: 32, offset: 32)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !1870, file: !1173, line: 936, baseType: !1172, size: 64, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !1841, file: !1173, line: 944, baseType: !1876, size: 192)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1841, file: !1173, line: 939, size: 192, elements: !1877)
!1877 = !{!1878, !1879, !1880, !1882}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1876, file: !1173, line: 940, baseType: !1844, size: 32)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !1876, file: !1173, line: 941, baseType: !1070, size: 32, offset: 32)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !1876, file: !1173, line: 942, baseType: !1881, size: 64, offset: 64)
!1881 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !1173, line: 128, baseType: !392)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !1876, file: !1173, line: 943, baseType: !1070, size: 32, offset: 128)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !1841, file: !1173, line: 950, baseType: !1884, size: 96)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1841, file: !1173, line: 946, size: 96, elements: !1885)
!1885 = !{!1886, !1887, !1888}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1884, file: !1173, line: 947, baseType: !1844, size: 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !1884, file: !1173, line: 948, baseType: !1070, size: 32, offset: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !1884, file: !1173, line: 949, baseType: !1070, size: 32, offset: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1777, file: !1778, line: 377, baseType: !1890, size: 1408, offset: 1920)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !1778, line: 280, size: 1408, elements: !1891)
!1891 = !{!1892, !1893, !1903, !1918}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1890, file: !1778, line: 281, baseType: !46, size: 32)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1890, file: !1778, line: 282, baseType: !1894, size: 32, offset: 32)
!1894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !1778, line: 259, size: 32, elements: !1895)
!1895 = !{!1896, !1897, !1898, !1899, !1900, !1901, !1902}
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !1894, file: !1778, line: 260, baseType: !1070, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !1894, file: !1778, line: 261, baseType: !1070, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !1894, file: !1778, line: 262, baseType: !1070, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !1894, file: !1778, line: 263, baseType: !1070, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !1894, file: !1778, line: 264, baseType: !1070, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !1894, file: !1778, line: 265, baseType: !1070, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1894, file: !1778, line: 266, baseType: !1070, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1890, file: !1778, line: 283, baseType: !1904, size: 1280, offset: 64)
!1904 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1905, size: 1280, elements: !1916)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !1778, line: 269, size: 256, elements: !1906)
!1906 = !{!1907, !1913, !1914, !1915}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1905, file: !1778, line: 274, baseType: !1908, size: 8)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1905, file: !1778, line: 270, size: 8, elements: !1909)
!1909 = !{!1910, !1911, !1912}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1908, file: !1778, line: 271, baseType: !186, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !1908, file: !1778, line: 272, baseType: !186, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1908, file: !1778, line: 273, baseType: !186, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1905, file: !1778, line: 275, baseType: !46, size: 32, offset: 32)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1905, file: !1778, line: 276, baseType: !46, size: 32, offset: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !1905, file: !1778, line: 277, baseType: !129, size: 128, offset: 128)
!1916 = !{!1917}
!1917 = !DISubrange(count: 5)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "state_for_enumeration", scope: !1890, file: !1778, line: 284, baseType: !186, size: 8, offset: 1344)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1777, file: !1778, line: 378, baseType: !1920, size: 640, offset: 3328)
!1920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !1778, line: 330, size: 640, elements: !1921)
!1921 = !{!1922, !1923, !1924, !1925, !1926, !1931, !1940, !1941, !1942}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !1920, file: !1778, line: 331, baseType: !1172, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !1920, file: !1778, line: 332, baseType: !392, size: 64, offset: 64)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !1920, file: !1778, line: 333, baseType: !392, size: 64, offset: 128)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !1920, file: !1778, line: 334, baseType: !129, size: 128, offset: 192)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1920, file: !1778, line: 335, baseType: !1927, size: 8, offset: 320)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !1778, line: 320, size: 8, elements: !1928)
!1928 = !{!1929, !1930}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1927, file: !1778, line: 321, baseType: !186, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !1927, file: !1778, line: 322, baseType: !186, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1920, file: !1778, line: 336, baseType: !1932, size: 128, offset: 384)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !1778, line: 325, size: 128, elements: !1933)
!1933 = !{!1934, !1939}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1932, file: !1778, line: 326, baseType: !1935, size: 64)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{null, !1938}
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1932, file: !1778, line: 327, baseType: !1191, size: 64, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !1920, file: !1778, line: 337, baseType: !1370, size: 64, offset: 512)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !1920, file: !1778, line: 338, baseType: !46, size: 32, offset: 576)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !1920, file: !1778, line: 339, baseType: !46, size: 32, offset: 608)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !1777, file: !1778, line: 379, baseType: !1944, size: 192, offset: 3968)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !1778, line: 312, size: 192, elements: !1945)
!1945 = !{!1946, !1947, !1951, !1952}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1944, file: !1778, line: 313, baseType: !46, size: 32)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1944, file: !1778, line: 314, baseType: !1948, size: 8, offset: 32)
!1948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !1778, line: 298, size: 8, elements: !1949)
!1949 = !{!1950}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1948, file: !1778, line: 299, baseType: !186, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !1944, file: !1778, line: 315, baseType: !46, size: 32, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1944, file: !1778, line: 316, baseType: !1953, size: 64, offset: 128)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !1778, line: 302, size: 64, elements: !1955)
!1955 = !{!1956, !1961, !1962, !1963}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1954, file: !1778, line: 306, baseType: !1957, size: 8)
!1957 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1954, file: !1778, line: 303, size: 8, elements: !1958)
!1958 = !{!1959, !1960}
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1957, file: !1778, line: 304, baseType: !186, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1957, file: !1778, line: 305, baseType: !186, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1954, file: !1778, line: 307, baseType: !186, size: 8, offset: 8)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !1954, file: !1778, line: 308, baseType: !186, size: 8, offset: 16)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1954, file: !1778, line: 309, baseType: !46, size: 32, offset: 32)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1777, file: !1778, line: 380, baseType: !1965, size: 64, offset: 4160)
!1965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !1778, line: 212, size: 64, elements: !1966)
!1966 = !{!1967}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1965, file: !1778, line: 213, baseType: !1968, size: 64)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !1778, line: 86, flags: DIFlagFwdDecl)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1777, file: !1778, line: 381, baseType: !1971, size: 384, offset: 4224)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !1778, line: 357, size: 384, elements: !1972)
!1972 = !{!1973, !1976, !1977, !1978}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1971, file: !1778, line: 358, baseType: !1974, size: 64)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1841)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1971, file: !1778, line: 359, baseType: !129, size: 128, offset: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !1971, file: !1778, line: 360, baseType: !1974, size: 64, offset: 192)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !1971, file: !1778, line: 361, baseType: !129, size: 128, offset: 256)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1777, file: !1778, line: 382, baseType: !1980, size: 64, offset: 4608)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !1778, line: 124, size: 1216, elements: !1982)
!1982 = !{!1983, !1984, !1985, !1990, !1994, !1998, !1999, !2000}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1981, file: !1778, line: 125, baseType: !1290, size: 64)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !1981, file: !1778, line: 126, baseType: !129, size: 128, offset: 64)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1981, file: !1778, line: 127, baseType: !1986, size: 64, offset: 192)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!585, !147, !1989}
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !1981, file: !1778, line: 128, baseType: !1991, size: 64, offset: 256)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{!46, !1776, !1290}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1981, file: !1778, line: 129, baseType: !1995, size: 64, offset: 320)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{null, !1776}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !1981, file: !1778, line: 130, baseType: !1215, size: 64, offset: 384)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !1981, file: !1778, line: 131, baseType: !1215, size: 64, offset: 448)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !1981, file: !1778, line: 132, baseType: !2001, size: 704, offset: 512)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !1778, line: 110, size: 704, elements: !2002)
!2002 = !{!2003, !2004, !2008, !2009, !2010}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2001, file: !1778, line: 111, baseType: !144, size: 512)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !2001, file: !1778, line: 112, baseType: !2005, size: 64, offset: 512)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DISubroutineType(types: !2007)
!2007 = !{!46, !1776}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !2001, file: !1778, line: 113, baseType: !1995, size: 64, offset: 576)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2001, file: !1778, line: 114, baseType: !585, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !2001, file: !1778, line: 115, baseType: !585, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !1777, file: !1778, line: 383, baseType: !2012, size: 64, offset: 4672)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !1778, line: 140, size: 256, elements: !2014)
!2014 = !{!2015, !2016, !2020, !2024}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !2013, file: !1778, line: 141, baseType: !1776, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2013, file: !1778, line: 142, baseType: !2017, size: 64, offset: 64)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DISubroutineType(types: !2019)
!2019 = !{!46, !1776, !1070}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2013, file: !1778, line: 143, baseType: !2021, size: 64, offset: 128)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{null, !1776, !1070}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2013, file: !1778, line: 144, baseType: !1995, size: 64, offset: 192)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !1777, file: !1778, line: 384, baseType: !2026, size: 64, offset: 4736)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2028)
!2028 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !1778, line: 364, flags: DIFlagFwdDecl)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1777, file: !1778, line: 385, baseType: !300, size: 64, offset: 4800)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1777, file: !1778, line: 386, baseType: !1187, size: 5824, offset: 4864)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !1777, file: !1778, line: 387, baseType: !7, size: 32, offset: 10688)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !1777, file: !1778, line: 388, baseType: !7, size: 32, offset: 10720)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !1777, file: !1778, line: 389, baseType: !129, size: 128, offset: 10752)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !1777, file: !1778, line: 390, baseType: !486, size: 256, offset: 10880)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1777, file: !1778, line: 391, baseType: !1995, size: 64, offset: 11136)
!2036 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !130, line: 154, baseType: !7)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !133)
!2039 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !1173, line: 421, baseType: !1070)
!2040 = !{!2041, !2043, !2048, !2053, !2055, !2058, !2063, !2066, !2071, !2076, !2081, !0, !2083, !2085, !2090, !2092, !2094, !2097, !2099, !2104, !2106, !2111, !2113, !2118, !2123, !2128, !2130, !2135, !2138, !2152, !2154, !2157, !2159, !2161, !2163, !2165, !2167, !2169, !2171, !2173, !2175, !2177, !2179, !2181, !2186}
!2041 = !DIGlobalVariableExpression(var: !2042, expr: !DIExpression())
!2042 = distinct !DIGlobalVariable(name: "__param_immediate_undock", scope: !2, file: !3, line: 24, type: !877, isLocal: true, isDefinition: true, align: 64)
!2043 = !DIGlobalVariableExpression(var: !2044, expr: !DIExpression())
!2044 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_immediate_undocktype206", scope: !2, file: !3, line: 24, type: !2045, isLocal: true, isDefinition: true, align: 8)
!2045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 288, elements: !2046)
!2046 = !{!2047}
!2047 = !DISubrange(count: 36)
!2048 = !DIGlobalVariableExpression(var: !2049, expr: !DIExpression())
!2049 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_immediate_undock207", scope: !2, file: !3, line: 25, type: !2050, isLocal: true, isDefinition: true, align: 8)
!2050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 1704, elements: !2051)
!2051 = !{!2052}
!2052 = !DISubrange(count: 213)
!2053 = !DIGlobalVariableExpression(var: !2054, expr: !DIExpression())
!2054 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_is_dock_device208", scope: !2, file: !3, line: 198, type: !300, isLocal: true, isDefinition: true)
!2055 = !DIGlobalVariableExpression(var: !2056, expr: !DIExpression())
!2056 = distinct !DIGlobalVariable(scope: null, file: !3, line: 455, type: !2057, isLocal: true, isDefinition: true)
!2057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 24, elements: !229)
!2058 = !DIGlobalVariableExpression(var: !2059, expr: !DIExpression())
!2059 = distinct !DIGlobalVariable(scope: null, file: !3, line: 455, type: !2060, isLocal: true, isDefinition: true)
!2060 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 136, elements: !2061)
!2061 = !{!2062}
!2062 = !DISubrange(count: 17)
!2063 = !DIGlobalVariableExpression(var: !2064, expr: !DIExpression())
!2064 = distinct !DIGlobalVariable(scope: null, file: !3, line: 596, type: !2065, isLocal: true, isDefinition: true)
!2065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 40, elements: !1916)
!2066 = !DIGlobalVariableExpression(var: !2067, expr: !DIExpression())
!2067 = distinct !DIGlobalVariable(scope: null, file: !3, line: 636, type: !2068, isLocal: true, isDefinition: true)
!2068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 336, elements: !2069)
!2069 = !{!2070}
!2070 = !DISubrange(count: 42)
!2071 = !DIGlobalVariableExpression(var: !2072, expr: !DIExpression())
!2072 = distinct !DIGlobalVariable(scope: null, file: !3, line: 645, type: !2073, isLocal: true, isDefinition: true)
!2073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 200, elements: !2074)
!2074 = !{!2075}
!2075 = !DISubrange(count: 25)
!2076 = !DIGlobalVariableExpression(var: !2077, expr: !DIExpression())
!2077 = distinct !DIGlobalVariable(scope: null, file: !3, line: 645, type: !2078, isLocal: true, isDefinition: true)
!2078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 112, elements: !2079)
!2079 = !{!2080}
!2080 = !DISubrange(count: 14)
!2081 = !DIGlobalVariableExpression(var: !2082, expr: !DIExpression())
!2082 = distinct !DIGlobalVariable(name: "dock_station_count", scope: !2, file: !3, line: 40, type: !46, isLocal: true, isDefinition: true)
!2083 = !DIGlobalVariableExpression(var: !2084, expr: !DIExpression())
!2084 = distinct !DIGlobalVariable(name: "immediate_undock", scope: !2, file: !3, line: 23, type: !585, isLocal: true, isDefinition: true)
!2085 = !DIGlobalVariableExpression(var: !2086, expr: !DIExpression())
!2086 = distinct !DIGlobalVariable(scope: null, file: !98, line: 480, type: !2087, isLocal: true, isDefinition: true)
!2087 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 168, elements: !2088)
!2088 = !{!2089}
!2089 = !DISubrange(count: 21)
!2090 = !DIGlobalVariableExpression(var: !2091, expr: !DIExpression())
!2091 = distinct !DIGlobalVariable(name: "dock_stations", scope: !2, file: !3, line: 39, type: !129, isLocal: true, isDefinition: true)
!2092 = !DIGlobalVariableExpression(var: !2093, expr: !DIExpression())
!2093 = distinct !DIGlobalVariable(scope: null, file: !3, line: 321, type: !2057, isLocal: true, isDefinition: true)
!2094 = !DIGlobalVariableExpression(var: !2095, expr: !DIExpression())
!2095 = distinct !DIGlobalVariable(scope: null, file: !3, line: 321, type: !2096, isLocal: true, isDefinition: true)
!2096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 32, elements: !467)
!2097 = !DIGlobalVariableExpression(var: !2098, expr: !DIExpression())
!2098 = distinct !DIGlobalVariable(scope: null, file: !3, line: 321, type: !1818, isLocal: true, isDefinition: true)
!2099 = !DIGlobalVariableExpression(var: !2100, expr: !DIExpression())
!2100 = distinct !DIGlobalVariable(scope: null, file: !3, line: 321, type: !2101, isLocal: true, isDefinition: true)
!2101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 80, elements: !2102)
!2102 = !{!2103}
!2103 = !DISubrange(count: 10)
!2104 = !DIGlobalVariableExpression(var: !2105, expr: !DIExpression())
!2105 = distinct !DIGlobalVariable(scope: null, file: !3, line: 328, type: !2065, isLocal: true, isDefinition: true)
!2106 = !DIGlobalVariableExpression(var: !2107, expr: !DIExpression())
!2107 = distinct !DIGlobalVariable(scope: null, file: !3, line: 330, type: !2108, isLocal: true, isDefinition: true)
!2108 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 248, elements: !2109)
!2109 = !{!2110}
!2110 = !DISubrange(count: 31)
!2111 = !DIGlobalVariableExpression(var: !2112, expr: !DIExpression())
!2112 = distinct !DIGlobalVariable(scope: null, file: !3, line: 213, type: !2065, isLocal: true, isDefinition: true)
!2113 = !DIGlobalVariableExpression(var: !2114, expr: !DIExpression())
!2114 = distinct !DIGlobalVariable(scope: null, file: !3, line: 289, type: !2115, isLocal: true, isDefinition: true)
!2115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 104, elements: !2116)
!2116 = !{!2117}
!2117 = !DISubrange(count: 13)
!2118 = !DIGlobalVariableExpression(var: !2119, expr: !DIExpression())
!2119 = distinct !DIGlobalVariable(scope: null, file: !3, line: 291, type: !2120, isLocal: true, isDefinition: true)
!2120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 88, elements: !2121)
!2121 = !{!2122}
!2122 = !DISubrange(count: 11)
!2123 = !DIGlobalVariableExpression(var: !2124, expr: !DIExpression())
!2124 = distinct !DIGlobalVariable(scope: null, file: !3, line: 406, type: !2125, isLocal: true, isDefinition: true)
!2125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 152, elements: !2126)
!2126 = !{!2127}
!2127 = !DISubrange(count: 19)
!2128 = !DIGlobalVariableExpression(var: !2129, expr: !DIExpression())
!2129 = distinct !DIGlobalVariable(name: "dock_attribute_group", scope: !2, file: !3, line: 577, type: !282, isLocal: true, isDefinition: true)
!2130 = !DIGlobalVariableExpression(var: !2131, expr: !DIExpression())
!2131 = distinct !DIGlobalVariable(name: "dock_attributes", scope: !2, file: !3, line: 568, type: !2132, isLocal: true, isDefinition: true)
!2132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !265, size: 384, elements: !2133)
!2133 = !{!2134}
!2134 = !DISubrange(count: 6)
!2135 = !DIGlobalVariableExpression(var: !2136, expr: !DIExpression())
!2136 = distinct !DIGlobalVariable(scope: null, file: !3, line: 496, type: !2137, isLocal: true, isDefinition: true)
!2137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 56, elements: !944)
!2138 = !DIGlobalVariableExpression(var: !2139, expr: !DIExpression())
!2139 = distinct !DIGlobalVariable(name: "dev_attr_docked", scope: !2, file: !3, line: 496, type: !2140, isLocal: true, isDefinition: true)
!2140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !26, line: 106, size: 256, elements: !2141)
!2141 = !{!2142, !2143, !2148}
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2140, file: !26, line: 107, baseType: !266, size: 128)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2140, file: !26, line: 108, baseType: !2144, size: 64, offset: 128)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!260, !1191, !2147, !228}
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2140, file: !26, line: 110, baseType: !2149, size: 64, offset: 192)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!260, !1191, !2147, !147, !275}
!2152 = !DIGlobalVariableExpression(var: !2153, expr: !DIExpression())
!2153 = distinct !DIGlobalVariable(scope: null, file: !3, line: 494, type: !2096, isLocal: true, isDefinition: true)
!2154 = !DIGlobalVariableExpression(var: !2155, expr: !DIExpression())
!2155 = distinct !DIGlobalVariable(scope: null, file: !3, line: 509, type: !2156, isLocal: true, isDefinition: true)
!2156 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 48, elements: !2133)
!2157 = !DIGlobalVariableExpression(var: !2158, expr: !DIExpression())
!2158 = distinct !DIGlobalVariable(name: "dev_attr_flags", scope: !2, file: !3, line: 509, type: !2140, isLocal: true, isDefinition: true)
!2159 = !DIGlobalVariableExpression(var: !2160, expr: !DIExpression())
!2160 = distinct !DIGlobalVariable(scope: null, file: !3, line: 506, type: !2096, isLocal: true, isDefinition: true)
!2161 = !DIGlobalVariableExpression(var: !2162, expr: !DIExpression())
!2162 = distinct !DIGlobalVariable(scope: null, file: !3, line: 529, type: !2137, isLocal: true, isDefinition: true)
!2163 = !DIGlobalVariableExpression(var: !2164, expr: !DIExpression())
!2164 = distinct !DIGlobalVariable(name: "dev_attr_undock", scope: !2, file: !3, line: 529, type: !2140, isLocal: true, isDefinition: true)
!2165 = !DIGlobalVariableExpression(var: !2166, expr: !DIExpression())
!2166 = distinct !DIGlobalVariable(scope: null, file: !3, line: 547, type: !2096, isLocal: true, isDefinition: true)
!2167 = !DIGlobalVariableExpression(var: !2168, expr: !DIExpression())
!2168 = distinct !DIGlobalVariable(name: "dev_attr_uid", scope: !2, file: !3, line: 547, type: !2140, isLocal: true, isDefinition: true)
!2169 = !DIGlobalVariableExpression(var: !2170, expr: !DIExpression())
!2170 = distinct !DIGlobalVariable(scope: null, file: !3, line: 541, type: !2065, isLocal: true, isDefinition: true)
!2171 = !DIGlobalVariableExpression(var: !2172, expr: !DIExpression())
!2172 = distinct !DIGlobalVariable(scope: null, file: !3, line: 545, type: !2156, isLocal: true, isDefinition: true)
!2173 = !DIGlobalVariableExpression(var: !2174, expr: !DIExpression())
!2174 = distinct !DIGlobalVariable(scope: null, file: !3, line: 566, type: !2065, isLocal: true, isDefinition: true)
!2175 = !DIGlobalVariableExpression(var: !2176, expr: !DIExpression())
!2176 = distinct !DIGlobalVariable(name: "dev_attr_type", scope: !2, file: !3, line: 566, type: !2140, isLocal: true, isDefinition: true)
!2177 = !DIGlobalVariableExpression(var: !2178, expr: !DIExpression())
!2178 = distinct !DIGlobalVariable(scope: null, file: !3, line: 556, type: !2115, isLocal: true, isDefinition: true)
!2179 = !DIGlobalVariableExpression(var: !2180, expr: !DIExpression())
!2180 = distinct !DIGlobalVariable(scope: null, file: !3, line: 558, type: !1818, isLocal: true, isDefinition: true)
!2181 = !DIGlobalVariableExpression(var: !2182, expr: !DIExpression())
!2182 = distinct !DIGlobalVariable(scope: null, file: !3, line: 560, type: !2183, isLocal: true, isDefinition: true)
!2183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !137, size: 96, elements: !2184)
!2184 = !{!2185}
!2185 = !DISubrange(count: 12)
!2186 = !DIGlobalVariableExpression(var: !2187, expr: !DIExpression())
!2187 = distinct !DIGlobalVariable(scope: null, file: !3, line: 562, type: !1818, isLocal: true, isDefinition: true)
!2188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !148, size: 176, elements: !2189)
!2189 = !{!2190}
!2190 = !DISubrange(count: 22)
!2191 = !{i32 7, !"Dwarf Version", i32 5}
!2192 = !{i32 2, !"Debug Info Version", i32 3}
!2193 = !{i32 1, !"wchar_size", i32 2}
!2194 = !{i32 8, !"cf-protection-branch", i32 1}
!2195 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2196 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2197 = !{i32 1, !"Code Model", i32 2}
!2198 = !{i32 1, !"override-stack-alignment", i32 8}
!2199 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2200 = distinct !DISubprogram(name: "register_dock_dependent_device", scope: !3, file: !3, line: 161, type: !2201, scopeLine: 163, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2203)
!2201 = !DISubroutineType(types: !2202)
!2202 = !{null, !1776, !1172}
!2203 = !{!2204, !2205, !2206}
!2204 = !DILocalVariable(name: "adev", arg: 1, scope: !2200, file: !3, line: 161, type: !1776)
!2205 = !DILocalVariable(name: "dshandle", arg: 2, scope: !2200, file: !3, line: 162, type: !1172)
!2206 = !DILocalVariable(name: "ds", scope: !2200, file: !3, line: 164, type: !1168)
!2207 = !DILocation(line: 161, column: 57, scope: !2200)
!2208 = !DILocation(line: 162, column: 21, scope: !2200)
!2209 = !DILocation(line: 164, column: 2, scope: !2200)
!2210 = !DILocation(line: 164, column: 23, scope: !2200)
!2211 = !DILocation(line: 164, column: 46, scope: !2200)
!2212 = !DILocation(line: 164, column: 28, scope: !2200)
!2213 = !DILocation(line: 166, column: 6, scope: !2214)
!2214 = distinct !DILexicalBlock(scope: !2200, file: !3, line: 166, column: 6)
!2215 = !DILocation(line: 166, column: 9, scope: !2214)
!2216 = !DILocation(line: 166, column: 40, scope: !2214)
!2217 = !DILocation(line: 166, column: 44, scope: !2214)
!2218 = !DILocation(line: 166, column: 13, scope: !2214)
!2219 = !DILocation(line: 166, column: 6, scope: !2200)
!2220 = !DILocation(line: 167, column: 29, scope: !2214)
!2221 = !DILocation(line: 167, column: 33, scope: !2214)
!2222 = !DILocation(line: 167, column: 3, scope: !2214)
!2223 = !DILocation(line: 168, column: 1, scope: !2200)
!2224 = distinct !DISubprogram(name: "find_dock_station", scope: !3, file: !3, line: 130, type: !2225, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2227)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{!1168, !1172}
!2227 = !{!2228, !2229, !2230, !2233}
!2228 = !DILocalVariable(name: "handle", arg: 1, scope: !2224, file: !3, line: 130, type: !1172)
!2229 = !DILocalVariable(name: "ds", scope: !2224, file: !3, line: 132, type: !1168)
!2230 = !DILocalVariable(name: "__mptr", scope: !2231, file: !3, line: 134, type: !300)
!2231 = distinct !DILexicalBlock(scope: !2232, file: !3, line: 134, column: 2)
!2232 = distinct !DILexicalBlock(scope: !2224, file: !3, line: 134, column: 2)
!2233 = !DILocalVariable(name: "__mptr", scope: !2234, file: !3, line: 134, type: !300)
!2234 = distinct !DILexicalBlock(scope: !2235, file: !3, line: 134, column: 2)
!2235 = distinct !DILexicalBlock(scope: !2232, file: !3, line: 134, column: 2)
!2236 = !DILocation(line: 130, column: 59, scope: !2224)
!2237 = !DILocation(line: 132, column: 2, scope: !2224)
!2238 = !DILocation(line: 132, column: 23, scope: !2224)
!2239 = !DILocation(line: 134, column: 2, scope: !2231)
!2240 = !DILocation(line: 134, column: 2, scope: !2232)
!2241 = !DILocation(line: 134, column: 2, scope: !2235)
!2242 = !DILocation(line: 135, column: 7, scope: !2243)
!2243 = distinct !DILexicalBlock(scope: !2235, file: !3, line: 135, column: 7)
!2244 = !DILocation(line: 135, column: 11, scope: !2243)
!2245 = !DILocation(line: 135, column: 21, scope: !2243)
!2246 = !DILocation(line: 135, column: 18, scope: !2243)
!2247 = !DILocation(line: 135, column: 7, scope: !2235)
!2248 = !DILocation(line: 136, column: 11, scope: !2243)
!2249 = !DILocation(line: 136, column: 4, scope: !2243)
!2250 = !DILocation(line: 134, column: 2, scope: !2234)
!2251 = distinct !{!2251, !2240, !2252, !2253, !2254}
!2252 = !DILocation(line: 136, column: 11, scope: !2232)
!2253 = !{!"llvm.loop.mustprogress"}
!2254 = !{!"llvm.loop.unroll.disable"}
!2255 = !DILocation(line: 138, column: 2, scope: !2224)
!2256 = !DILocation(line: 139, column: 1, scope: !2224)
!2257 = distinct !DISubprogram(name: "find_dock_dependent_device", scope: !3, file: !3, line: 150, type: !2258, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2260)
!2258 = !DISubroutineType(types: !2259)
!2259 = !{!1771, !1168, !1776}
!2260 = !{!2261, !2262, !2263, !2264, !2267}
!2261 = !DILocalVariable(name: "ds", arg: 1, scope: !2257, file: !3, line: 150, type: !1168)
!2262 = !DILocalVariable(name: "adev", arg: 2, scope: !2257, file: !3, line: 150, type: !1776)
!2263 = !DILocalVariable(name: "dd", scope: !2257, file: !3, line: 152, type: !1771)
!2264 = !DILocalVariable(name: "__mptr", scope: !2265, file: !3, line: 154, type: !300)
!2265 = distinct !DILexicalBlock(scope: !2266, file: !3, line: 154, column: 2)
!2266 = distinct !DILexicalBlock(scope: !2257, file: !3, line: 154, column: 2)
!2267 = !DILocalVariable(name: "__mptr", scope: !2268, file: !3, line: 154, type: !300)
!2268 = distinct !DILexicalBlock(scope: !2269, file: !3, line: 154, column: 2)
!2269 = distinct !DILexicalBlock(scope: !2266, file: !3, line: 154, column: 2)
!2270 = !DILocation(line: 150, column: 49, scope: !2257)
!2271 = !DILocation(line: 150, column: 73, scope: !2257)
!2272 = !DILocation(line: 152, column: 2, scope: !2257)
!2273 = !DILocation(line: 152, column: 32, scope: !2257)
!2274 = !DILocation(line: 154, column: 2, scope: !2265)
!2275 = !DILocation(line: 154, column: 2, scope: !2266)
!2276 = !DILocation(line: 154, column: 2, scope: !2269)
!2277 = !DILocation(line: 155, column: 7, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2269, file: !3, line: 155, column: 7)
!2279 = !DILocation(line: 155, column: 15, scope: !2278)
!2280 = !DILocation(line: 155, column: 19, scope: !2278)
!2281 = !DILocation(line: 155, column: 12, scope: !2278)
!2282 = !DILocation(line: 155, column: 7, scope: !2269)
!2283 = !DILocation(line: 156, column: 11, scope: !2278)
!2284 = !DILocation(line: 156, column: 4, scope: !2278)
!2285 = !DILocation(line: 154, column: 2, scope: !2268)
!2286 = distinct !{!2286, !2275, !2287, !2253, !2254}
!2287 = !DILocation(line: 156, column: 11, scope: !2266)
!2288 = !DILocation(line: 158, column: 2, scope: !2257)
!2289 = !DILocation(line: 159, column: 1, scope: !2257)
!2290 = distinct !DISubprogram(name: "add_dock_dependent_device", scope: !3, file: !3, line: 71, type: !2291, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2293)
!2291 = !DISubroutineType(types: !2292)
!2292 = !{!46, !1168, !1776}
!2293 = !{!2294, !2295, !2296}
!2294 = !DILocalVariable(name: "ds", arg: 1, scope: !2290, file: !3, line: 71, type: !1168)
!2295 = !DILocalVariable(name: "adev", arg: 2, scope: !2290, file: !3, line: 72, type: !1776)
!2296 = !DILocalVariable(name: "dd", scope: !2290, file: !3, line: 74, type: !1771)
!2297 = !DILocation(line: 71, column: 59, scope: !2290)
!2298 = !DILocation(line: 72, column: 30, scope: !2290)
!2299 = !DILocation(line: 74, column: 2, scope: !2290)
!2300 = !DILocation(line: 74, column: 32, scope: !2290)
!2301 = !DILocation(line: 76, column: 7, scope: !2290)
!2302 = !DILocation(line: 76, column: 5, scope: !2290)
!2303 = !DILocation(line: 77, column: 7, scope: !2304)
!2304 = distinct !DILexicalBlock(scope: !2290, file: !3, line: 77, column: 6)
!2305 = !DILocation(line: 77, column: 6, scope: !2290)
!2306 = !DILocation(line: 78, column: 3, scope: !2304)
!2307 = !DILocation(line: 80, column: 13, scope: !2290)
!2308 = !DILocation(line: 80, column: 2, scope: !2290)
!2309 = !DILocation(line: 80, column: 6, scope: !2290)
!2310 = !DILocation(line: 80, column: 11, scope: !2290)
!2311 = !DILocation(line: 81, column: 18, scope: !2290)
!2312 = !DILocation(line: 81, column: 22, scope: !2290)
!2313 = !DILocation(line: 81, column: 2, scope: !2290)
!2314 = !DILocation(line: 82, column: 17, scope: !2290)
!2315 = !DILocation(line: 82, column: 21, scope: !2290)
!2316 = !DILocation(line: 82, column: 28, scope: !2290)
!2317 = !DILocation(line: 82, column: 32, scope: !2290)
!2318 = !DILocation(line: 82, column: 2, scope: !2290)
!2319 = !DILocation(line: 84, column: 2, scope: !2290)
!2320 = !DILocation(line: 85, column: 1, scope: !2290)
!2321 = distinct !DISubprogram(name: "is_dock_device", scope: !3, file: !3, line: 182, type: !2006, scopeLine: 183, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2322)
!2322 = !{!2323, !2324, !2325, !2328}
!2323 = !DILocalVariable(name: "adev", arg: 1, scope: !2321, file: !3, line: 182, type: !1776)
!2324 = !DILocalVariable(name: "dock_station", scope: !2321, file: !3, line: 184, type: !1168)
!2325 = !DILocalVariable(name: "__mptr", scope: !2326, file: !3, line: 192, type: !300)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !3, line: 192, column: 2)
!2327 = distinct !DILexicalBlock(scope: !2321, file: !3, line: 192, column: 2)
!2328 = !DILocalVariable(name: "__mptr", scope: !2329, file: !3, line: 192, type: !300)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !3, line: 192, column: 2)
!2330 = distinct !DILexicalBlock(scope: !2327, file: !3, line: 192, column: 2)
!2331 = !DILocation(line: 182, column: 40, scope: !2321)
!2332 = !DILocation(line: 184, column: 2, scope: !2321)
!2333 = !DILocation(line: 184, column: 23, scope: !2321)
!2334 = !DILocation(line: 186, column: 7, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2321, file: !3, line: 186, column: 6)
!2336 = !DILocation(line: 186, column: 6, scope: !2321)
!2337 = !DILocation(line: 187, column: 3, scope: !2335)
!2338 = !DILocation(line: 189, column: 22, scope: !2339)
!2339 = distinct !DILexicalBlock(scope: !2321, file: !3, line: 189, column: 6)
!2340 = !DILocation(line: 189, column: 28, scope: !2339)
!2341 = !DILocation(line: 189, column: 6, scope: !2339)
!2342 = !DILocation(line: 189, column: 6, scope: !2321)
!2343 = !DILocation(line: 190, column: 3, scope: !2339)
!2344 = !DILocation(line: 192, column: 2, scope: !2326)
!2345 = !DILocation(line: 192, column: 2, scope: !2327)
!2346 = !DILocation(line: 192, column: 2, scope: !2330)
!2347 = !DILocation(line: 193, column: 34, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2330, file: !3, line: 193, column: 7)
!2349 = !DILocation(line: 193, column: 48, scope: !2348)
!2350 = !DILocation(line: 193, column: 7, scope: !2348)
!2351 = !DILocation(line: 193, column: 7, scope: !2330)
!2352 = !DILocation(line: 194, column: 4, scope: !2348)
!2353 = !DILocation(line: 193, column: 52, scope: !2348)
!2354 = !DILocation(line: 192, column: 2, scope: !2329)
!2355 = distinct !{!2355, !2345, !2356, !2253, !2254}
!2356 = !DILocation(line: 194, column: 11, scope: !2327)
!2357 = !DILocation(line: 196, column: 2, scope: !2321)
!2358 = !DILocation(line: 197, column: 1, scope: !2321)
!2359 = !DISubprogram(name: "acpi_dock_match", scope: !1778, file: !1778, line: 50, type: !2360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!585, !1172}
!2362 = distinct !DISubprogram(name: "dock_notify", scope: !3, file: !3, line: 422, type: !2018, scopeLine: 423, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2363)
!2363 = !{!2364, !2365, !2366, !2367, !2368}
!2364 = !DILocalVariable(name: "adev", arg: 1, scope: !2362, file: !3, line: 422, type: !1776)
!2365 = !DILocalVariable(name: "event", arg: 2, scope: !2362, file: !3, line: 422, type: !1070)
!2366 = !DILocalVariable(name: "handle", scope: !2362, file: !3, line: 424, type: !1172)
!2367 = !DILocalVariable(name: "ds", scope: !2362, file: !3, line: 425, type: !1168)
!2368 = !DILocalVariable(name: "surprise_removal", scope: !2362, file: !3, line: 426, type: !46)
!2369 = !DILocation(line: 422, column: 37, scope: !2362)
!2370 = !DILocation(line: 422, column: 47, scope: !2362)
!2371 = !DILocation(line: 424, column: 2, scope: !2362)
!2372 = !DILocation(line: 424, column: 14, scope: !2362)
!2373 = !DILocation(line: 424, column: 23, scope: !2362)
!2374 = !DILocation(line: 424, column: 29, scope: !2362)
!2375 = !DILocation(line: 425, column: 2, scope: !2362)
!2376 = !DILocation(line: 425, column: 23, scope: !2362)
!2377 = !DILocation(line: 425, column: 46, scope: !2362)
!2378 = !DILocation(line: 425, column: 28, scope: !2362)
!2379 = !DILocation(line: 426, column: 2, scope: !2362)
!2380 = !DILocation(line: 426, column: 6, scope: !2362)
!2381 = !DILocation(line: 428, column: 7, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2362, file: !3, line: 428, column: 6)
!2383 = !DILocation(line: 428, column: 6, scope: !2362)
!2384 = !DILocation(line: 429, column: 3, scope: !2382)
!2385 = !DILocation(line: 436, column: 7, scope: !2386)
!2386 = distinct !DILexicalBlock(scope: !2362, file: !3, line: 436, column: 6)
!2387 = !DILocation(line: 436, column: 11, scope: !2386)
!2388 = !DILocation(line: 436, column: 17, scope: !2386)
!2389 = !DILocation(line: 436, column: 33, scope: !2386)
!2390 = !DILocation(line: 436, column: 36, scope: !2386)
!2391 = !DILocation(line: 436, column: 42, scope: !2386)
!2392 = !DILocation(line: 436, column: 6, scope: !2362)
!2393 = !DILocation(line: 437, column: 9, scope: !2386)
!2394 = !DILocation(line: 437, column: 3, scope: !2386)
!2395 = !DILocation(line: 448, column: 10, scope: !2362)
!2396 = !DILocation(line: 448, column: 2, scope: !2362)
!2397 = !DILocation(line: 451, column: 25, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2399, file: !3, line: 451, column: 7)
!2399 = distinct !DILexicalBlock(scope: !2362, file: !3, line: 448, column: 17)
!2400 = !DILocation(line: 451, column: 8, scope: !2398)
!2401 = !DILocation(line: 451, column: 29, scope: !2398)
!2402 = !DILocation(line: 451, column: 56, scope: !2398)
!2403 = !DILocation(line: 451, column: 33, scope: !2398)
!2404 = !DILocation(line: 451, column: 7, scope: !2399)
!2405 = !DILocation(line: 452, column: 15, scope: !2406)
!2406 = distinct !DILexicalBlock(scope: !2398, file: !3, line: 451, column: 63)
!2407 = !DILocation(line: 452, column: 4, scope: !2406)
!2408 = !DILocation(line: 453, column: 9, scope: !2406)
!2409 = !DILocation(line: 453, column: 4, scope: !2406)
!2410 = !DILocation(line: 454, column: 22, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2406, file: !3, line: 454, column: 8)
!2412 = !DILocation(line: 454, column: 9, scope: !2411)
!2413 = !DILocation(line: 454, column: 8, scope: !2406)
!2414 = !DILocation(line: 455, column: 5, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2411, file: !3, line: 454, column: 27)
!2416 = !DILocation(line: 456, column: 19, scope: !2415)
!2417 = !DILocation(line: 456, column: 5, scope: !2415)
!2418 = !DILocation(line: 457, column: 5, scope: !2415)
!2419 = !DILocation(line: 459, column: 25, scope: !2406)
!2420 = !DILocation(line: 459, column: 29, scope: !2406)
!2421 = !DILocation(line: 459, column: 4, scope: !2406)
!2422 = !DILocation(line: 460, column: 18, scope: !2406)
!2423 = !DILocation(line: 460, column: 4, scope: !2406)
!2424 = !DILocation(line: 461, column: 15, scope: !2406)
!2425 = !DILocation(line: 461, column: 19, scope: !2406)
!2426 = !DILocation(line: 461, column: 4, scope: !2406)
!2427 = !DILocation(line: 462, column: 22, scope: !2406)
!2428 = !DILocation(line: 462, column: 26, scope: !2406)
!2429 = !DILocation(line: 462, column: 4, scope: !2406)
!2430 = !DILocation(line: 463, column: 4, scope: !2406)
!2431 = !DILocation(line: 464, column: 4, scope: !2406)
!2432 = !DILocation(line: 466, column: 20, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2399, file: !3, line: 466, column: 7)
!2434 = !DILocation(line: 466, column: 7, scope: !2433)
!2435 = !DILocation(line: 466, column: 24, scope: !2433)
!2436 = !DILocation(line: 466, column: 44, scope: !2433)
!2437 = !DILocation(line: 466, column: 27, scope: !2433)
!2438 = !DILocation(line: 466, column: 7, scope: !2399)
!2439 = !DILocation(line: 467, column: 4, scope: !2433)
!2440 = !DILocation(line: 469, column: 20, scope: !2399)
!2441 = !DILocation(line: 470, column: 9, scope: !2399)
!2442 = !DILocation(line: 470, column: 3, scope: !2399)
!2443 = !DILocation(line: 474, column: 16, scope: !2399)
!2444 = !DILocation(line: 474, column: 3, scope: !2399)
!2445 = !DILocation(line: 475, column: 8, scope: !2446)
!2446 = distinct !DILexicalBlock(scope: !2399, file: !3, line: 475, column: 7)
!2447 = !{i8 0, i8 2}
!2448 = !DILocation(line: 475, column: 25, scope: !2446)
!2449 = !DILocation(line: 475, column: 30, scope: !2446)
!2450 = !DILocation(line: 475, column: 34, scope: !2446)
!2451 = !DILocation(line: 475, column: 40, scope: !2446)
!2452 = !DILocation(line: 476, column: 6, scope: !2446)
!2453 = !DILocation(line: 476, column: 9, scope: !2446)
!2454 = !DILocation(line: 475, column: 7, scope: !2399)
!2455 = !DILocation(line: 477, column: 25, scope: !2446)
!2456 = !DILocation(line: 477, column: 29, scope: !2446)
!2457 = !DILocation(line: 477, column: 4, scope: !2446)
!2458 = !DILocation(line: 479, column: 15, scope: !2446)
!2459 = !DILocation(line: 479, column: 19, scope: !2446)
!2460 = !DILocation(line: 479, column: 4, scope: !2446)
!2461 = !DILocation(line: 480, column: 3, scope: !2399)
!2462 = !DILocation(line: 482, column: 2, scope: !2362)
!2463 = !DILocation(line: 483, column: 1, scope: !2362)
!2464 = distinct !DISubprogram(name: "dock_in_progress", scope: !3, file: !3, line: 373, type: !2465, scopeLine: 374, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2467)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{!46, !1168}
!2467 = !{!2468}
!2468 = !DILocalVariable(name: "ds", arg: 1, scope: !2464, file: !3, line: 373, type: !1168)
!2469 = !DILocation(line: 373, column: 50, scope: !2464)
!2470 = !DILocation(line: 375, column: 7, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2464, file: !3, line: 375, column: 6)
!2472 = !DILocation(line: 375, column: 11, scope: !2471)
!2473 = !DILocation(line: 375, column: 17, scope: !2471)
!2474 = !DILocation(line: 375, column: 33, scope: !2471)
!2475 = !DILocation(line: 376, column: 6, scope: !2471)
!2476 = !DILocation(line: 375, column: 6, scope: !2464)
!2477 = !DILocation(line: 377, column: 3, scope: !2471)
!2478 = !DILocation(line: 378, column: 2, scope: !2464)
!2479 = !DILocation(line: 379, column: 1, scope: !2464)
!2480 = distinct !DISubprogram(name: "acpi_device_enumerated", scope: !1778, file: !1778, line: 574, type: !2481, scopeLine: 575, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2483)
!2481 = !DISubroutineType(types: !2482)
!2482 = !{!585, !1776}
!2483 = !{!2484}
!2484 = !DILocalVariable(name: "adev", arg: 1, scope: !2480, file: !1778, line: 574, type: !1776)
!2485 = !DILocation(line: 574, column: 63, scope: !2480)
!2486 = !DILocation(line: 576, column: 9, scope: !2480)
!2487 = !DILocation(line: 576, column: 14, scope: !2480)
!2488 = !DILocation(line: 576, column: 17, scope: !2480)
!2489 = !DILocation(line: 576, column: 23, scope: !2480)
!2490 = !DILocation(line: 576, column: 29, scope: !2480)
!2491 = !DILocation(line: 576, column: 41, scope: !2480)
!2492 = !DILocation(line: 576, column: 44, scope: !2480)
!2493 = !DILocation(line: 576, column: 50, scope: !2480)
!2494 = !DILocation(line: 576, column: 56, scope: !2480)
!2495 = !DILocation(line: 0, scope: !2480)
!2496 = !DILocation(line: 576, column: 2, scope: !2480)
!2497 = distinct !DISubprogram(name: "begin_dock", scope: !3, file: !3, line: 344, type: !2498, scopeLine: 345, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2500)
!2498 = !DISubroutineType(types: !2499)
!2499 = !{null, !1168}
!2500 = !{!2501}
!2501 = !DILocalVariable(name: "ds", arg: 1, scope: !2497, file: !3, line: 344, type: !1168)
!2502 = !DILocation(line: 344, column: 52, scope: !2497)
!2503 = !DILocation(line: 346, column: 2, scope: !2497)
!2504 = !DILocation(line: 346, column: 6, scope: !2497)
!2505 = !DILocation(line: 346, column: 12, scope: !2497)
!2506 = !DILocation(line: 347, column: 1, scope: !2497)
!2507 = distinct !DISubprogram(name: "dock", scope: !3, file: !3, line: 334, type: !2498, scopeLine: 335, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2508)
!2508 = !{!2509}
!2509 = !DILocalVariable(name: "ds", arg: 1, scope: !2507, file: !3, line: 334, type: !1168)
!2510 = !DILocation(line: 334, column: 46, scope: !2507)
!2511 = !DILocation(line: 336, column: 14, scope: !2507)
!2512 = !DILocation(line: 336, column: 2, scope: !2507)
!2513 = !DILocation(line: 337, column: 1, scope: !2507)
!2514 = distinct !DISubprogram(name: "dock_present", scope: !3, file: !3, line: 207, type: !2465, scopeLine: 208, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2515)
!2515 = !{!2516, !2517, !2518}
!2516 = !DILocalVariable(name: "ds", arg: 1, scope: !2514, file: !3, line: 207, type: !1168)
!2517 = !DILocalVariable(name: "sta", scope: !2514, file: !3, line: 209, type: !394)
!2518 = !DILocalVariable(name: "status", scope: !2514, file: !3, line: 210, type: !2039)
!2519 = !DILocation(line: 207, column: 46, scope: !2514)
!2520 = !DILocation(line: 209, column: 2, scope: !2514)
!2521 = !DILocation(line: 209, column: 21, scope: !2514)
!2522 = !DILocation(line: 210, column: 2, scope: !2514)
!2523 = !DILocation(line: 210, column: 14, scope: !2514)
!2524 = !DILocation(line: 212, column: 6, scope: !2525)
!2525 = distinct !DILexicalBlock(scope: !2514, file: !3, line: 212, column: 6)
!2526 = !DILocation(line: 212, column: 6, scope: !2514)
!2527 = !DILocation(line: 213, column: 34, scope: !2528)
!2528 = distinct !DILexicalBlock(scope: !2525, file: !3, line: 212, column: 10)
!2529 = !DILocation(line: 213, column: 38, scope: !2528)
!2530 = !DILocation(line: 213, column: 12, scope: !2528)
!2531 = !DILocation(line: 213, column: 10, scope: !2528)
!2532 = !DILocation(line: 214, column: 7, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2528, file: !3, line: 214, column: 7)
!2534 = !DILocation(line: 214, column: 28, scope: !2533)
!2535 = !DILocation(line: 214, column: 31, scope: !2533)
!2536 = !DILocation(line: 214, column: 7, scope: !2528)
!2537 = !DILocation(line: 215, column: 4, scope: !2533)
!2538 = !DILocation(line: 216, column: 2, scope: !2528)
!2539 = !DILocation(line: 217, column: 2, scope: !2514)
!2540 = !DILocation(line: 218, column: 1, scope: !2514)
!2541 = !DISubprogram(name: "acpi_handle_printk", scope: !2542, file: !2542, line: 1180, type: !2543, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2542 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "087557429ebf4c5c9ef14f260264aa7b")
!2543 = !DISubroutineType(types: !2544)
!2544 = !{null, !147, !1172, !147, null}
!2545 = distinct !DISubprogram(name: "complete_dock", scope: !3, file: !3, line: 349, type: !2498, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2546)
!2546 = !{!2547}
!2547 = !DILocalVariable(name: "ds", arg: 1, scope: !2545, file: !3, line: 349, type: !1168)
!2548 = !DILocation(line: 349, column: 55, scope: !2545)
!2549 = !DILocation(line: 351, column: 2, scope: !2545)
!2550 = !DILocation(line: 351, column: 6, scope: !2545)
!2551 = !DILocation(line: 351, column: 12, scope: !2545)
!2552 = !DILocation(line: 352, column: 23, scope: !2545)
!2553 = !DILocation(line: 352, column: 2, scope: !2545)
!2554 = !DILocation(line: 352, column: 6, scope: !2545)
!2555 = !DILocation(line: 352, column: 21, scope: !2545)
!2556 = !DILocation(line: 353, column: 1, scope: !2545)
!2557 = distinct !DISubprogram(name: "hotplug_dock_devices", scope: !3, file: !3, line: 251, type: !2558, scopeLine: 252, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2560)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{null, !1168, !1070}
!2560 = !{!2561, !2562, !2563, !2564, !2567, !2570, !2573, !2576, !2579, !2582, !2585}
!2561 = !DILocalVariable(name: "ds", arg: 1, scope: !2557, file: !3, line: 251, type: !1168)
!2562 = !DILocalVariable(name: "event", arg: 2, scope: !2557, file: !3, line: 251, type: !1070)
!2563 = !DILocalVariable(name: "dd", scope: !2557, file: !3, line: 253, type: !1771)
!2564 = !DILocalVariable(name: "__mptr", scope: !2565, file: !3, line: 256, type: !300)
!2565 = distinct !DILexicalBlock(scope: !2566, file: !3, line: 256, column: 2)
!2566 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 256, column: 2)
!2567 = !DILocalVariable(name: "__mptr", scope: !2568, file: !3, line: 256, type: !300)
!2568 = distinct !DILexicalBlock(scope: !2569, file: !3, line: 256, column: 2)
!2569 = distinct !DILexicalBlock(scope: !2566, file: !3, line: 256, column: 2)
!2570 = !DILocalVariable(name: "__mptr", scope: !2571, file: !3, line: 260, type: !300)
!2571 = distinct !DILexicalBlock(scope: !2572, file: !3, line: 260, column: 2)
!2572 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 260, column: 2)
!2573 = !DILocalVariable(name: "__mptr", scope: !2574, file: !3, line: 260, type: !300)
!2574 = distinct !DILexicalBlock(scope: !2575, file: !3, line: 260, column: 2)
!2575 = distinct !DILexicalBlock(scope: !2572, file: !3, line: 260, column: 2)
!2576 = !DILocalVariable(name: "__mptr", scope: !2577, file: !3, line: 269, type: !300)
!2577 = distinct !DILexicalBlock(scope: !2578, file: !3, line: 269, column: 2)
!2578 = distinct !DILexicalBlock(scope: !2557, file: !3, line: 269, column: 2)
!2579 = !DILocalVariable(name: "adev", scope: !2580, file: !3, line: 270, type: !1776)
!2580 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 269, column: 56)
!2581 = distinct !DILexicalBlock(scope: !2578, file: !3, line: 269, column: 2)
!2582 = !DILocalVariable(name: "ret", scope: !2583, file: !3, line: 273, type: !46)
!2583 = distinct !DILexicalBlock(scope: !2584, file: !3, line: 272, column: 38)
!2584 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 272, column: 7)
!2585 = !DILocalVariable(name: "__mptr", scope: !2586, file: !3, line: 269, type: !300)
!2586 = distinct !DILexicalBlock(scope: !2581, file: !3, line: 269, column: 2)
!2587 = !DILocation(line: 251, column: 55, scope: !2557)
!2588 = !DILocation(line: 251, column: 63, scope: !2557)
!2589 = !DILocation(line: 253, column: 2, scope: !2557)
!2590 = !DILocation(line: 253, column: 32, scope: !2557)
!2591 = !DILocation(line: 256, column: 2, scope: !2565)
!2592 = !DILocation(line: 256, column: 2, scope: !2566)
!2593 = !DILocation(line: 256, column: 2, scope: !2569)
!2594 = !DILocation(line: 257, column: 22, scope: !2569)
!2595 = !DILocation(line: 257, column: 26, scope: !2569)
!2596 = !DILocation(line: 257, column: 3, scope: !2569)
!2597 = !DILocation(line: 256, column: 2, scope: !2568)
!2598 = distinct !{!2598, !2592, !2599, !2253, !2254}
!2599 = !DILocation(line: 257, column: 48, scope: !2566)
!2600 = !DILocation(line: 260, column: 2, scope: !2571)
!2601 = !DILocation(line: 260, column: 2, scope: !2572)
!2602 = !DILocation(line: 260, column: 2, scope: !2575)
!2603 = !DILocation(line: 261, column: 22, scope: !2575)
!2604 = !DILocation(line: 261, column: 26, scope: !2575)
!2605 = !DILocation(line: 261, column: 3, scope: !2575)
!2606 = !DILocation(line: 260, column: 2, scope: !2574)
!2607 = distinct !{!2607, !2601, !2608, !2253, !2254}
!2608 = !DILocation(line: 261, column: 50, scope: !2572)
!2609 = !DILocation(line: 269, column: 2, scope: !2577)
!2610 = !DILocation(line: 269, column: 2, scope: !2578)
!2611 = !DILocation(line: 269, column: 2, scope: !2581)
!2612 = !DILocation(line: 270, column: 3, scope: !2580)
!2613 = !DILocation(line: 270, column: 23, scope: !2580)
!2614 = !DILocation(line: 270, column: 30, scope: !2580)
!2615 = !DILocation(line: 270, column: 34, scope: !2580)
!2616 = !DILocation(line: 272, column: 31, scope: !2584)
!2617 = !DILocation(line: 272, column: 8, scope: !2584)
!2618 = !DILocation(line: 272, column: 7, scope: !2580)
!2619 = !DILocation(line: 273, column: 4, scope: !2583)
!2620 = !DILocation(line: 273, column: 8, scope: !2583)
!2621 = !DILocation(line: 273, column: 28, scope: !2583)
!2622 = !DILocation(line: 273, column: 34, scope: !2583)
!2623 = !DILocation(line: 273, column: 14, scope: !2583)
!2624 = !DILocation(line: 275, column: 8, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2583, file: !3, line: 275, column: 8)
!2626 = !DILocation(line: 275, column: 8, scope: !2583)
!2627 = !DILocation(line: 276, column: 5, scope: !2625)
!2628 = !DILocation(line: 277, column: 3, scope: !2584)
!2629 = !DILocation(line: 277, column: 3, scope: !2583)
!2630 = !DILocation(line: 278, column: 2, scope: !2581)
!2631 = !DILocation(line: 278, column: 2, scope: !2580)
!2632 = !DILocation(line: 269, column: 2, scope: !2586)
!2633 = distinct !{!2633, !2610, !2634, !2253, !2254}
!2634 = !DILocation(line: 278, column: 2, scope: !2578)
!2635 = !DILocation(line: 279, column: 1, scope: !2557)
!2636 = distinct !DISubprogram(name: "dock_event", scope: !3, file: !3, line: 281, type: !2637, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2639)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{null, !1168, !1070, !46}
!2639 = !{!2640, !2641, !2642, !2643, !2644, !2645, !2647, !2648, !2651}
!2640 = !DILocalVariable(name: "ds", arg: 1, scope: !2636, file: !3, line: 281, type: !1168)
!2641 = !DILocalVariable(name: "event", arg: 2, scope: !2636, file: !3, line: 281, type: !1070)
!2642 = !DILocalVariable(name: "num", arg: 3, scope: !2636, file: !3, line: 281, type: !46)
!2643 = !DILocalVariable(name: "dev", scope: !2636, file: !3, line: 283, type: !1191)
!2644 = !DILocalVariable(name: "event_string", scope: !2636, file: !3, line: 284, type: !2115)
!2645 = !DILocalVariable(name: "envp", scope: !2636, file: !3, line: 285, type: !2646)
!2646 = !DICompositeType(tag: DW_TAG_array_type, baseType: !228, size: 128, elements: !942)
!2647 = !DILocalVariable(name: "dd", scope: !2636, file: !3, line: 286, type: !1771)
!2648 = !DILocalVariable(name: "__mptr", scope: !2649, file: !3, line: 300, type: !300)
!2649 = distinct !DILexicalBlock(scope: !2650, file: !3, line: 300, column: 2)
!2650 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 300, column: 2)
!2651 = !DILocalVariable(name: "__mptr", scope: !2652, file: !3, line: 300, type: !300)
!2652 = distinct !DILexicalBlock(scope: !2653, file: !3, line: 300, column: 2)
!2653 = distinct !DILexicalBlock(scope: !2650, file: !3, line: 300, column: 2)
!2654 = !DILocation(line: 281, column: 45, scope: !2636)
!2655 = !DILocation(line: 281, column: 53, scope: !2636)
!2656 = !DILocation(line: 281, column: 64, scope: !2636)
!2657 = !DILocation(line: 283, column: 2, scope: !2636)
!2658 = !DILocation(line: 283, column: 17, scope: !2636)
!2659 = !DILocation(line: 283, column: 24, scope: !2636)
!2660 = !DILocation(line: 283, column: 28, scope: !2636)
!2661 = !DILocation(line: 283, column: 41, scope: !2636)
!2662 = !DILocation(line: 284, column: 2, scope: !2636)
!2663 = !DILocation(line: 284, column: 7, scope: !2636)
!2664 = !DILocation(line: 285, column: 2, scope: !2636)
!2665 = !DILocation(line: 285, column: 8, scope: !2636)
!2666 = !DILocation(line: 285, column: 17, scope: !2636)
!2667 = !DILocation(line: 285, column: 19, scope: !2636)
!2668 = !DILocation(line: 286, column: 2, scope: !2636)
!2669 = !DILocation(line: 286, column: 32, scope: !2636)
!2670 = !DILocation(line: 288, column: 6, scope: !2671)
!2671 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 288, column: 6)
!2672 = !DILocation(line: 288, column: 10, scope: !2671)
!2673 = !DILocation(line: 288, column: 6, scope: !2636)
!2674 = !DILocation(line: 289, column: 11, scope: !2671)
!2675 = !DILocation(line: 289, column: 3, scope: !2671)
!2676 = !DILocation(line: 291, column: 11, scope: !2671)
!2677 = !DILocation(line: 291, column: 3, scope: !2671)
!2678 = !DILocation(line: 297, column: 6, scope: !2679)
!2679 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 297, column: 6)
!2680 = !DILocation(line: 297, column: 10, scope: !2679)
!2681 = !DILocation(line: 297, column: 6, scope: !2636)
!2682 = !DILocation(line: 298, column: 23, scope: !2679)
!2683 = !DILocation(line: 298, column: 28, scope: !2679)
!2684 = !DILocation(line: 298, column: 47, scope: !2679)
!2685 = !DILocation(line: 298, column: 3, scope: !2679)
!2686 = !DILocation(line: 300, column: 2, scope: !2649)
!2687 = !DILocation(line: 300, column: 2, scope: !2650)
!2688 = !DILocation(line: 300, column: 2, scope: !2653)
!2689 = !DILocation(line: 301, column: 22, scope: !2653)
!2690 = !DILocation(line: 301, column: 26, scope: !2653)
!2691 = !DILocation(line: 301, column: 3, scope: !2653)
!2692 = !DILocation(line: 300, column: 2, scope: !2652)
!2693 = distinct !{!2693, !2687, !2694, !2253, !2254}
!2694 = !DILocation(line: 301, column: 49, scope: !2650)
!2695 = !DILocation(line: 303, column: 6, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 303, column: 6)
!2697 = !DILocation(line: 303, column: 10, scope: !2696)
!2698 = !DILocation(line: 303, column: 6, scope: !2636)
!2699 = !DILocation(line: 304, column: 23, scope: !2696)
!2700 = !DILocation(line: 304, column: 28, scope: !2696)
!2701 = !DILocation(line: 304, column: 47, scope: !2696)
!2702 = !DILocation(line: 304, column: 3, scope: !2696)
!2703 = !DILocation(line: 305, column: 1, scope: !2636)
!2704 = !DISubprogram(name: "acpi_evaluate_lck", scope: !1778, file: !1778, line: 46, type: !2705, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!2039, !1172, !46}
!2707 = !DISubprogram(name: "acpi_update_all_gpes", scope: !2708, file: !2708, line: 720, type: !2709, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2708 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!2709 = !DISubroutineType(types: !2710)
!2710 = !{!2039}
!2711 = distinct !DISubprogram(name: "begin_undock", scope: !3, file: !3, line: 355, type: !2498, scopeLine: 356, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2712)
!2712 = !{!2713}
!2713 = !DILocalVariable(name: "ds", arg: 1, scope: !2711, file: !3, line: 355, type: !1168)
!2714 = !DILocation(line: 355, column: 54, scope: !2711)
!2715 = !DILocation(line: 357, column: 2, scope: !2711)
!2716 = !DILocation(line: 357, column: 6, scope: !2711)
!2717 = !DILocation(line: 357, column: 12, scope: !2711)
!2718 = !DILocation(line: 358, column: 1, scope: !2711)
!2719 = distinct !DISubprogram(name: "handle_eject_request", scope: !3, file: !3, line: 387, type: !2720, scopeLine: 388, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2722)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{!46, !1168, !1070}
!2722 = !{!2723, !2724}
!2723 = !DILocalVariable(name: "ds", arg: 1, scope: !2719, file: !3, line: 387, type: !1168)
!2724 = !DILocalVariable(name: "event", arg: 2, scope: !2719, file: !3, line: 387, type: !1070)
!2725 = !DILocation(line: 387, column: 54, scope: !2719)
!2726 = !DILocation(line: 387, column: 62, scope: !2719)
!2727 = !DILocation(line: 389, column: 23, scope: !2728)
!2728 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 389, column: 6)
!2729 = !DILocation(line: 389, column: 6, scope: !2728)
!2730 = !DILocation(line: 389, column: 6, scope: !2719)
!2731 = !DILocation(line: 390, column: 3, scope: !2728)
!2732 = !DILocation(line: 399, column: 13, scope: !2719)
!2733 = !DILocation(line: 399, column: 17, scope: !2719)
!2734 = !DILocation(line: 399, column: 2, scope: !2719)
!2735 = !DILocation(line: 401, column: 26, scope: !2719)
!2736 = !DILocation(line: 401, column: 2, scope: !2719)
!2737 = !DILocation(line: 402, column: 9, scope: !2719)
!2738 = !DILocation(line: 402, column: 2, scope: !2719)
!2739 = !DILocation(line: 403, column: 20, scope: !2719)
!2740 = !DILocation(line: 403, column: 24, scope: !2719)
!2741 = !DILocation(line: 403, column: 2, scope: !2719)
!2742 = !DILocation(line: 404, column: 20, scope: !2719)
!2743 = !DILocation(line: 404, column: 24, scope: !2719)
!2744 = !DILocation(line: 404, column: 2, scope: !2719)
!2745 = !DILocation(line: 405, column: 19, scope: !2746)
!2746 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 405, column: 6)
!2747 = !DILocation(line: 405, column: 6, scope: !2746)
!2748 = !DILocation(line: 405, column: 6, scope: !2719)
!2749 = !DILocation(line: 406, column: 3, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2746, file: !3, line: 405, column: 24)
!2751 = !DILocation(line: 407, column: 3, scope: !2750)
!2752 = !DILocation(line: 409, column: 18, scope: !2719)
!2753 = !DILocation(line: 409, column: 2, scope: !2719)
!2754 = !DILocation(line: 410, column: 2, scope: !2719)
!2755 = !DILocation(line: 411, column: 1, scope: !2719)
!2756 = distinct !DISubprogram(name: "acpi_dock_add", scope: !3, file: !3, line: 587, type: !1996, scopeLine: 588, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2757)
!2757 = !{!2758, !2759, !2760, !2761, !2804, !2805, !2806, !2807, !2808}
!2758 = !DILocalVariable(name: "adev", arg: 1, scope: !2756, file: !3, line: 587, type: !1776)
!2759 = !DILocalVariable(name: "dock_station", scope: !2756, file: !3, line: 589, type: !1168)
!2760 = !DILocalVariable(name: "ds", scope: !2756, file: !3, line: 589, type: !1169)
!2761 = !DILocalVariable(name: "pdevinfo", scope: !2756, file: !3, line: 590, type: !2762)
!2762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_info", file: !1181, line: 119, size: 704, elements: !2763)
!2763 = !{!2764, !2765, !2766, !2767, !2768, !2769, !2772, !2773, !2774, !2775, !2776}
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2762, file: !1181, line: 120, baseType: !1191, size: 64)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2762, file: !1181, line: 121, baseType: !1575, size: 64, offset: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !2762, file: !1181, line: 122, baseType: !585, size: 8, offset: 128)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2762, file: !1181, line: 124, baseType: !147, size: 64, offset: 192)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2762, file: !1181, line: 125, baseType: !46, size: 32, offset: 256)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "res", scope: !2762, file: !1181, line: 127, baseType: !2770, size: 64, offset: 320)
!2770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2771, size: 64)
!2771 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1742)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "num_res", scope: !2762, file: !1181, line: 128, baseType: !7, size: 32, offset: 384)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2762, file: !1181, line: 130, baseType: !507, size: 64, offset: 448)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "size_data", scope: !2762, file: !1181, line: 131, baseType: !275, size: 64, offset: 512)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !2762, file: !1181, line: 132, baseType: !392, size: 64, offset: 576)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2762, file: !1181, line: 134, baseType: !2777, size: 64, offset: 640)
!2777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2778, size: 64)
!2778 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2779)
!2779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property_entry", file: !79, line: 338, size: 256, elements: !2780)
!2780 = !{!2781, !2782, !2783, !2784, !2785}
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2779, file: !79, line: 339, baseType: !147, size: 64)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2779, file: !79, line: 340, baseType: !275, size: 64, offset: 64)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "is_inline", scope: !2779, file: !79, line: 341, baseType: !585, size: 8, offset: 128)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2779, file: !79, line: 342, baseType: !84, size: 32, offset: 160)
!2785 = !DIDerivedType(tag: DW_TAG_member, scope: !2779, file: !79, line: 343, baseType: !2786, size: 64, offset: 192)
!2786 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2779, file: !79, line: 343, size: 64, elements: !2787)
!2787 = !{!2788, !2789}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2786, file: !79, line: 344, baseType: !507, size: 64)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2786, file: !79, line: 351, baseType: !2790, size: 64)
!2790 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2786, file: !79, line: 345, size: 64, elements: !2791)
!2791 = !{!2792, !2794, !2796, !2798, !2802}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "u8_data", scope: !2790, file: !79, line: 346, baseType: !2793, size: 64)
!2793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !186, size: 64, elements: !1445)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "u16_data", scope: !2790, file: !79, line: 347, baseType: !2795, size: 64)
!2795 = !DICompositeType(tag: DW_TAG_array_type, baseType: !196, size: 64, elements: !467)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "u32_data", scope: !2790, file: !79, line: 348, baseType: !2797, size: 64)
!2797 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1070, size: 64, elements: !942)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "u64_data", scope: !2790, file: !79, line: 349, baseType: !2799, size: 64)
!2799 = !DICompositeType(tag: DW_TAG_array_type, baseType: !392, size: 64, elements: !2800)
!2800 = !{!2801}
!2801 = !DISubrange(count: 1)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2790, file: !79, line: 350, baseType: !2803, size: 64)
!2803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 64, elements: !2800)
!2804 = !DILocalVariable(name: "handle", scope: !2756, file: !3, line: 591, type: !1172)
!2805 = !DILocalVariable(name: "dd", scope: !2756, file: !3, line: 592, type: !1179)
!2806 = !DILocalVariable(name: "ret", scope: !2756, file: !3, line: 593, type: !46)
!2807 = !DILabel(scope: !2756, name: "err_rmgroup", file: !3, line: 640)
!2808 = !DILabel(scope: !2756, name: "err_unregister", file: !3, line: 643)
!2809 = !DILocation(line: 587, column: 40, scope: !2756)
!2810 = !DILocation(line: 589, column: 2, scope: !2756)
!2811 = !DILocation(line: 589, column: 23, scope: !2756)
!2812 = !DILocation(line: 589, column: 37, scope: !2756)
!2813 = !DILocation(line: 590, column: 2, scope: !2756)
!2814 = !DILocation(line: 590, column: 30, scope: !2756)
!2815 = !DILocation(line: 591, column: 2, scope: !2756)
!2816 = !DILocation(line: 591, column: 14, scope: !2756)
!2817 = !DILocation(line: 591, column: 23, scope: !2756)
!2818 = !DILocation(line: 591, column: 29, scope: !2756)
!2819 = !DILocation(line: 592, column: 2, scope: !2756)
!2820 = !DILocation(line: 592, column: 26, scope: !2756)
!2821 = !DILocation(line: 593, column: 2, scope: !2756)
!2822 = !DILocation(line: 593, column: 6, scope: !2756)
!2823 = !DILocation(line: 595, column: 2, scope: !2756)
!2824 = !DILocation(line: 596, column: 11, scope: !2756)
!2825 = !DILocation(line: 596, column: 16, scope: !2756)
!2826 = !DILocation(line: 597, column: 16, scope: !2756)
!2827 = !DILocation(line: 597, column: 11, scope: !2756)
!2828 = !DILocation(line: 597, column: 14, scope: !2756)
!2829 = !DILocation(line: 598, column: 39, scope: !2756)
!2830 = !DILocation(line: 598, column: 20, scope: !2756)
!2831 = !DILocation(line: 598, column: 11, scope: !2756)
!2832 = !DILocation(line: 598, column: 18, scope: !2756)
!2833 = !DILocation(line: 599, column: 11, scope: !2756)
!2834 = !DILocation(line: 599, column: 16, scope: !2756)
!2835 = !DILocation(line: 600, column: 11, scope: !2756)
!2836 = !DILocation(line: 600, column: 21, scope: !2756)
!2837 = !DILocation(line: 601, column: 7, scope: !2756)
!2838 = !DILocation(line: 601, column: 5, scope: !2756)
!2839 = !DILocation(line: 602, column: 13, scope: !2840)
!2840 = distinct !DILexicalBlock(scope: !2756, file: !3, line: 602, column: 6)
!2841 = !DILocation(line: 602, column: 6, scope: !2840)
!2842 = !DILocation(line: 602, column: 6, scope: !2756)
!2843 = !DILocation(line: 603, column: 3, scope: !2840)
!2844 = !DILocation(line: 605, column: 17, scope: !2756)
!2845 = !DILocation(line: 605, column: 21, scope: !2756)
!2846 = !DILocation(line: 605, column: 25, scope: !2756)
!2847 = !DILocation(line: 605, column: 15, scope: !2756)
!2848 = !DILocation(line: 607, column: 25, scope: !2756)
!2849 = !DILocation(line: 607, column: 2, scope: !2756)
!2850 = !DILocation(line: 607, column: 16, scope: !2756)
!2851 = !DILocation(line: 607, column: 23, scope: !2756)
!2852 = !DILocation(line: 608, column: 30, scope: !2756)
!2853 = !DILocation(line: 608, column: 2, scope: !2756)
!2854 = !DILocation(line: 608, column: 16, scope: !2756)
!2855 = !DILocation(line: 608, column: 28, scope: !2756)
!2856 = !DILocation(line: 609, column: 33, scope: !2756)
!2857 = !DILocation(line: 609, column: 41, scope: !2756)
!2858 = !DILocation(line: 609, column: 2, scope: !2756)
!2859 = !DILocation(line: 609, column: 16, scope: !2756)
!2860 = !DILocation(line: 609, column: 31, scope: !2756)
!2861 = !DILocation(line: 611, column: 18, scope: !2756)
!2862 = !DILocation(line: 611, column: 32, scope: !2756)
!2863 = !DILocation(line: 611, column: 2, scope: !2756)
!2864 = !DILocation(line: 612, column: 18, scope: !2756)
!2865 = !DILocation(line: 612, column: 32, scope: !2756)
!2866 = !DILocation(line: 612, column: 2, scope: !2756)
!2867 = !DILocation(line: 615, column: 27, scope: !2756)
!2868 = !DILocation(line: 615, column: 31, scope: !2756)
!2869 = !DILocation(line: 615, column: 2, scope: !2756)
!2870 = !DILocation(line: 617, column: 22, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2756, file: !3, line: 617, column: 6)
!2872 = !DILocation(line: 617, column: 6, scope: !2871)
!2873 = !DILocation(line: 617, column: 6, scope: !2756)
!2874 = !DILocation(line: 618, column: 3, scope: !2871)
!2875 = !DILocation(line: 618, column: 17, scope: !2871)
!2876 = !DILocation(line: 618, column: 23, scope: !2871)
!2877 = !DILocation(line: 619, column: 21, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2756, file: !3, line: 619, column: 6)
!2879 = !DILocation(line: 619, column: 6, scope: !2878)
!2880 = !DILocation(line: 619, column: 6, scope: !2756)
!2881 = !DILocation(line: 620, column: 3, scope: !2878)
!2882 = !DILocation(line: 620, column: 17, scope: !2878)
!2883 = !DILocation(line: 620, column: 23, scope: !2878)
!2884 = !DILocation(line: 621, column: 29, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2756, file: !3, line: 621, column: 6)
!2886 = !DILocation(line: 621, column: 6, scope: !2885)
!2887 = !DILocation(line: 621, column: 6, scope: !2756)
!2888 = !DILocation(line: 622, column: 3, scope: !2885)
!2889 = !DILocation(line: 622, column: 17, scope: !2885)
!2890 = !DILocation(line: 622, column: 23, scope: !2885)
!2891 = !DILocation(line: 624, column: 28, scope: !2756)
!2892 = !DILocation(line: 624, column: 32, scope: !2756)
!2893 = !DILocation(line: 624, column: 36, scope: !2756)
!2894 = !DILocation(line: 624, column: 8, scope: !2756)
!2895 = !DILocation(line: 624, column: 6, scope: !2756)
!2896 = !DILocation(line: 625, column: 6, scope: !2897)
!2897 = distinct !DILexicalBlock(scope: !2756, file: !3, line: 625, column: 6)
!2898 = !DILocation(line: 625, column: 6, scope: !2756)
!2899 = !DILocation(line: 626, column: 3, scope: !2897)
!2900 = !DILocation(line: 629, column: 34, scope: !2756)
!2901 = !DILocation(line: 629, column: 48, scope: !2756)
!2902 = !DILocation(line: 629, column: 8, scope: !2756)
!2903 = !DILocation(line: 629, column: 6, scope: !2756)
!2904 = !DILocation(line: 630, column: 6, scope: !2905)
!2905 = distinct !DILexicalBlock(scope: !2756, file: !3, line: 630, column: 6)
!2906 = !DILocation(line: 630, column: 6, scope: !2756)
!2907 = !DILocation(line: 631, column: 3, scope: !2905)
!2908 = !DILocation(line: 633, column: 20, scope: !2756)
!2909 = !DILocation(line: 634, column: 12, scope: !2756)
!2910 = !DILocation(line: 634, column: 26, scope: !2756)
!2911 = !DILocation(line: 634, column: 2, scope: !2756)
!2912 = !DILocation(line: 635, column: 2, scope: !2756)
!2913 = !DILocation(line: 635, column: 8, scope: !2756)
!2914 = !DILocation(line: 635, column: 30, scope: !2756)
!2915 = !DILocation(line: 636, column: 2, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2756, file: !3, line: 636, column: 2)
!2917 = !DILocation(line: 636, column: 2, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2916, file: !3, line: 636, column: 2)
!2919 = !DILocation(line: 638, column: 2, scope: !2756)
!2920 = !DILocation(line: 640, column: 1, scope: !2756)
!2921 = !DILocation(line: 641, column: 22, scope: !2756)
!2922 = !DILocation(line: 641, column: 26, scope: !2756)
!2923 = !DILocation(line: 641, column: 30, scope: !2756)
!2924 = !DILocation(line: 641, column: 2, scope: !2756)
!2925 = !DILocation(line: 643, column: 1, scope: !2756)
!2926 = !DILocation(line: 644, column: 29, scope: !2756)
!2927 = !DILocation(line: 644, column: 2, scope: !2756)
!2928 = !DILocation(line: 645, column: 2, scope: !2756)
!2929 = !DILocation(line: 646, column: 1, scope: !2756)
!2930 = distinct !DISubprogram(name: "acpi_fwnode_handle", scope: !1778, file: !1778, line: 451, type: !2931, scopeLine: 452, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2933)
!2931 = !DISubroutineType(types: !2932)
!2932 = !{!1575, !1776}
!2933 = !{!2934}
!2934 = !DILocalVariable(name: "adev", arg: 1, scope: !2930, file: !1778, line: 451, type: !1776)
!2935 = !DILocation(line: 451, column: 76, scope: !2930)
!2936 = !DILocation(line: 453, column: 10, scope: !2930)
!2937 = !DILocation(line: 453, column: 16, scope: !2930)
!2938 = !DILocation(line: 453, column: 2, scope: !2930)
!2939 = !DISubprogram(name: "platform_device_register_full", scope: !1181, file: !1181, line: 136, type: !2940, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2940 = !DISubroutineType(types: !2941)
!2941 = !{!1179, !2942}
!2942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2943, size: 64)
!2943 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2762)
!2944 = distinct !DISubprogram(name: "IS_ERR", scope: !2945, file: !2945, line: 59, type: !2946, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2948)
!2945 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!585, !507}
!2948 = !{!2949}
!2949 = !DILocalVariable(name: "ptr", arg: 1, scope: !2944, file: !2945, line: 59, type: !507)
!2950 = !DILocation(line: 59, column: 60, scope: !2944)
!2951 = !DILocation(line: 61, column: 9, scope: !2944)
!2952 = !DILocation(line: 61, column: 2, scope: !2944)
!2953 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !2954, file: !2954, line: 35, type: !2955, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2957)
!2954 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!2955 = !DISubroutineType(types: !2956)
!2956 = !{null, !133}
!2957 = !{!2958}
!2958 = !DILocalVariable(name: "list", arg: 1, scope: !2953, file: !2954, line: 35, type: !133)
!2959 = !DILocation(line: 35, column: 53, scope: !2953)
!2960 = !DILocation(line: 37, column: 2, scope: !2953)
!2961 = !DILocation(line: 37, column: 2, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2953, file: !2954, line: 37, column: 2)
!2963 = !DILocation(line: 37, column: 2, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2962, file: !2954, line: 37, column: 2)
!2965 = !DILocation(line: 37, column: 2, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2962, file: !2954, line: 37, column: 2)
!2967 = !DILocation(line: 38, column: 2, scope: !2953)
!2968 = !DILocation(line: 38, column: 2, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2953, file: !2954, line: 38, column: 2)
!2970 = !DILocation(line: 38, column: 2, scope: !2971)
!2971 = distinct !DILexicalBlock(scope: !2969, file: !2954, line: 38, column: 2)
!2972 = !DILocation(line: 38, column: 2, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2969, file: !2954, line: 38, column: 2)
!2974 = !DILocation(line: 39, column: 1, scope: !2953)
!2975 = distinct !DISubprogram(name: "dev_set_uevent_suppress", scope: !26, file: !26, line: 936, type: !2976, scopeLine: 937, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2978)
!2976 = !DISubroutineType(types: !2977)
!2977 = !{null, !1191, !46}
!2978 = !{!2979, !2980}
!2979 = !DILocalVariable(name: "dev", arg: 1, scope: !2975, file: !26, line: 936, type: !1191)
!2980 = !DILocalVariable(name: "val", arg: 2, scope: !2975, file: !26, line: 936, type: !46)
!2981 = !DILocation(line: 936, column: 59, scope: !2975)
!2982 = !DILocation(line: 936, column: 68, scope: !2975)
!2983 = !DILocation(line: 938, column: 30, scope: !2975)
!2984 = !DILocation(line: 938, column: 2, scope: !2975)
!2985 = !DILocation(line: 938, column: 7, scope: !2975)
!2986 = !DILocation(line: 938, column: 12, scope: !2975)
!2987 = !DILocation(line: 938, column: 28, scope: !2975)
!2988 = !DILocation(line: 939, column: 1, scope: !2975)
!2989 = !DISubprogram(name: "acpi_ata_match", scope: !1778, file: !1778, line: 48, type: !2360, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2990 = !DISubprogram(name: "acpi_device_is_battery", scope: !2991, file: !2991, line: 111, type: !2481, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2991 = !DIFile(filename: "drivers/acpi/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5cf5cbbce8a2c7457da3066f6da7b3bd")
!2992 = !DISubprogram(name: "sysfs_create_group", scope: !254, file: !254, line: 307, type: !2993, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!46, !151, !281}
!2995 = distinct !DISubprogram(name: "list_add", scope: !2954, file: !2954, line: 167, type: !2996, scopeLine: 168, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2998)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{null, !133, !133}
!2998 = !{!2999, !3000}
!2999 = !DILocalVariable(name: "new", arg: 1, scope: !2995, file: !2954, line: 167, type: !133)
!3000 = !DILocalVariable(name: "head", arg: 2, scope: !2995, file: !2954, line: 167, type: !133)
!3001 = !DILocation(line: 167, column: 47, scope: !2995)
!3002 = !DILocation(line: 167, column: 70, scope: !2995)
!3003 = !DILocation(line: 169, column: 13, scope: !2995)
!3004 = !DILocation(line: 169, column: 18, scope: !2995)
!3005 = !DILocation(line: 169, column: 24, scope: !2995)
!3006 = !DILocation(line: 169, column: 30, scope: !2995)
!3007 = !DILocation(line: 169, column: 2, scope: !2995)
!3008 = !DILocation(line: 170, column: 1, scope: !2995)
!3009 = !DISubprogram(name: "_dev_info", scope: !3010, file: !3010, line: 56, type: !3011, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3010 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!3011 = !DISubroutineType(types: !3012)
!3012 = !{null, !1207, !147, null}
!3013 = !DISubprogram(name: "sysfs_remove_group", scope: !254, file: !254, line: 315, type: !3014, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3014 = !DISubroutineType(types: !3015)
!3015 = !{null, !151, !281}
!3016 = !DISubprogram(name: "platform_device_unregister", scope: !1181, file: !1181, line: 53, type: !3017, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{null, !1179}
!3019 = distinct !DISubprogram(name: "kzalloc", scope: !98, file: !98, line: 719, type: !3020, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3022)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!300, !275, !2036}
!3022 = !{!3023, !3024}
!3023 = !DILocalVariable(name: "size", arg: 1, scope: !3019, file: !98, line: 719, type: !275)
!3024 = !DILocalVariable(name: "flags", arg: 2, scope: !3019, file: !98, line: 719, type: !2036)
!3025 = !DILocation(line: 719, column: 52, scope: !3019)
!3026 = !DILocation(line: 719, column: 64, scope: !3019)
!3027 = !DILocation(line: 721, column: 17, scope: !3019)
!3028 = !DILocation(line: 721, column: 23, scope: !3019)
!3029 = !DILocation(line: 721, column: 29, scope: !3019)
!3030 = !DILocation(line: 721, column: 9, scope: !3019)
!3031 = !DILocation(line: 721, column: 2, scope: !3019)
!3032 = distinct !DISubprogram(name: "list_add_tail", scope: !2954, file: !2954, line: 181, type: !2996, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3033)
!3033 = !{!3034, !3035}
!3034 = !DILocalVariable(name: "new", arg: 1, scope: !3032, file: !2954, line: 181, type: !133)
!3035 = !DILocalVariable(name: "head", arg: 2, scope: !3032, file: !2954, line: 181, type: !133)
!3036 = !DILocation(line: 181, column: 52, scope: !3032)
!3037 = !DILocation(line: 181, column: 75, scope: !3032)
!3038 = !DILocation(line: 183, column: 13, scope: !3032)
!3039 = !DILocation(line: 183, column: 18, scope: !3032)
!3040 = !DILocation(line: 183, column: 24, scope: !3032)
!3041 = !DILocation(line: 183, column: 30, scope: !3032)
!3042 = !DILocation(line: 183, column: 2, scope: !3032)
!3043 = !DILocation(line: 184, column: 1, scope: !3032)
!3044 = distinct !DISubprogram(name: "kmalloc", scope: !98, file: !98, line: 591, type: !3020, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3045)
!3045 = !{!3046, !3047, !3048}
!3046 = !DILocalVariable(name: "size", arg: 1, scope: !3044, file: !98, line: 591, type: !275)
!3047 = !DILocalVariable(name: "flags", arg: 2, scope: !3044, file: !98, line: 591, type: !2036)
!3048 = !DILocalVariable(name: "index", scope: !3049, file: !98, line: 594, type: !7)
!3049 = distinct !DILexicalBlock(scope: !3050, file: !98, line: 593, column: 42)
!3050 = distinct !DILexicalBlock(scope: !3044, file: !98, line: 593, column: 6)
!3051 = !DILocation(line: 591, column: 61, scope: !3044)
!3052 = !DILocation(line: 591, column: 73, scope: !3044)
!3053 = !DILocation(line: 593, column: 27, scope: !3050)
!3054 = !DILocation(line: 593, column: 6, scope: !3050)
!3055 = !DILocation(line: 593, column: 33, scope: !3050)
!3056 = !DILocation(line: 593, column: 36, scope: !3050)
!3057 = !DILocation(line: 593, column: 6, scope: !3044)
!3058 = !DILocation(line: 594, column: 3, scope: !3049)
!3059 = !DILocation(line: 594, column: 16, scope: !3049)
!3060 = !DILocation(line: 596, column: 7, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3049, file: !98, line: 596, column: 7)
!3062 = !DILocation(line: 596, column: 12, scope: !3061)
!3063 = !DILocation(line: 596, column: 7, scope: !3049)
!3064 = !DILocation(line: 597, column: 25, scope: !3061)
!3065 = !DILocation(line: 597, column: 31, scope: !3061)
!3066 = !DILocation(line: 597, column: 11, scope: !3061)
!3067 = !DILocation(line: 597, column: 4, scope: !3061)
!3068 = !DILocation(line: 599, column: 11, scope: !3049)
!3069 = !DILocation(line: 599, column: 9, scope: !3049)
!3070 = !DILocation(line: 601, column: 33, scope: !3049)
!3071 = !DILocation(line: 601, column: 40, scope: !3049)
!3072 = !DILocation(line: 601, column: 20, scope: !3049)
!3073 = !DILocation(line: 601, column: 5, scope: !3049)
!3074 = !DILocation(line: 601, column: 51, scope: !3049)
!3075 = !DILocation(line: 602, column: 5, scope: !3049)
!3076 = !DILocation(line: 602, column: 12, scope: !3049)
!3077 = !DILocation(line: 600, column: 10, scope: !3049)
!3078 = !DILocation(line: 600, column: 3, scope: !3049)
!3079 = !DILocation(line: 603, column: 2, scope: !3050)
!3080 = !DILocation(line: 604, column: 19, scope: !3044)
!3081 = !DILocation(line: 604, column: 25, scope: !3044)
!3082 = !DILocation(line: 604, column: 9, scope: !3044)
!3083 = !DILocation(line: 604, column: 2, scope: !3044)
!3084 = !DILocation(line: 605, column: 1, scope: !3044)
!3085 = !DISubprogram(name: "kmalloc_large", scope: !98, file: !98, line: 531, type: !3020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3086 = distinct !DISubprogram(name: "__kmalloc_index", scope: !98, file: !98, line: 444, type: !3087, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3089)
!3087 = !DISubroutineType(types: !3088)
!3088 = !{!7, !275, !585}
!3089 = !{!3090, !3091}
!3090 = !DILocalVariable(name: "size", arg: 1, scope: !3086, file: !98, line: 444, type: !275)
!3091 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !3086, file: !98, line: 445, type: !585)
!3092 = !DILocation(line: 444, column: 60, scope: !3086)
!3093 = !DILocation(line: 445, column: 16, scope: !3086)
!3094 = !DILocation(line: 447, column: 7, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3086, file: !98, line: 447, column: 6)
!3096 = !DILocation(line: 447, column: 6, scope: !3086)
!3097 = !DILocation(line: 448, column: 3, scope: !3095)
!3098 = !DILocation(line: 450, column: 6, scope: !3099)
!3099 = distinct !DILexicalBlock(scope: !3086, file: !98, line: 450, column: 6)
!3100 = !DILocation(line: 450, column: 11, scope: !3099)
!3101 = !DILocation(line: 450, column: 6, scope: !3086)
!3102 = !DILocation(line: 451, column: 3, scope: !3099)
!3103 = !DILocation(line: 453, column: 32, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3086, file: !98, line: 453, column: 6)
!3105 = !DILocation(line: 453, column: 37, scope: !3104)
!3106 = !DILocation(line: 453, column: 42, scope: !3104)
!3107 = !DILocation(line: 453, column: 45, scope: !3104)
!3108 = !DILocation(line: 453, column: 50, scope: !3104)
!3109 = !DILocation(line: 453, column: 6, scope: !3086)
!3110 = !DILocation(line: 454, column: 3, scope: !3104)
!3111 = !DILocation(line: 455, column: 32, scope: !3112)
!3112 = distinct !DILexicalBlock(scope: !3086, file: !98, line: 455, column: 6)
!3113 = !DILocation(line: 455, column: 37, scope: !3112)
!3114 = !DILocation(line: 455, column: 43, scope: !3112)
!3115 = !DILocation(line: 455, column: 46, scope: !3112)
!3116 = !DILocation(line: 455, column: 51, scope: !3112)
!3117 = !DILocation(line: 455, column: 6, scope: !3086)
!3118 = !DILocation(line: 456, column: 3, scope: !3112)
!3119 = !DILocation(line: 457, column: 6, scope: !3120)
!3120 = distinct !DILexicalBlock(scope: !3086, file: !98, line: 457, column: 6)
!3121 = !DILocation(line: 457, column: 11, scope: !3120)
!3122 = !DILocation(line: 457, column: 6, scope: !3086)
!3123 = !DILocation(line: 457, column: 26, scope: !3120)
!3124 = !DILocation(line: 458, column: 6, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3086, file: !98, line: 458, column: 6)
!3126 = !DILocation(line: 458, column: 11, scope: !3125)
!3127 = !DILocation(line: 458, column: 6, scope: !3086)
!3128 = !DILocation(line: 458, column: 26, scope: !3125)
!3129 = !DILocation(line: 459, column: 6, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3086, file: !98, line: 459, column: 6)
!3131 = !DILocation(line: 459, column: 11, scope: !3130)
!3132 = !DILocation(line: 459, column: 6, scope: !3086)
!3133 = !DILocation(line: 459, column: 26, scope: !3130)
!3134 = !DILocation(line: 460, column: 6, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3086, file: !98, line: 460, column: 6)
!3136 = !DILocation(line: 460, column: 11, scope: !3135)
!3137 = !DILocation(line: 460, column: 6, scope: !3086)
!3138 = !DILocation(line: 460, column: 26, scope: !3135)
!3139 = !DILocation(line: 461, column: 6, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3086, file: !98, line: 461, column: 6)
!3141 = !DILocation(line: 461, column: 11, scope: !3140)
!3142 = !DILocation(line: 461, column: 6, scope: !3086)
!3143 = !DILocation(line: 461, column: 26, scope: !3140)
!3144 = !DILocation(line: 462, column: 6, scope: !3145)
!3145 = distinct !DILexicalBlock(scope: !3086, file: !98, line: 462, column: 6)
!3146 = !DILocation(line: 462, column: 11, scope: !3145)
!3147 = !DILocation(line: 462, column: 6, scope: !3086)
!3148 = !DILocation(line: 462, column: 26, scope: !3145)
!3149 = !DILocation(line: 463, column: 6, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3086, file: !98, line: 463, column: 6)
!3151 = !DILocation(line: 463, column: 11, scope: !3150)
!3152 = !DILocation(line: 463, column: 6, scope: !3086)
!3153 = !DILocation(line: 463, column: 26, scope: !3150)
!3154 = !DILocation(line: 464, column: 6, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3086, file: !98, line: 464, column: 6)
!3156 = !DILocation(line: 464, column: 11, scope: !3155)
!3157 = !DILocation(line: 464, column: 6, scope: !3086)
!3158 = !DILocation(line: 464, column: 26, scope: !3155)
!3159 = !DILocation(line: 465, column: 6, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3086, file: !98, line: 465, column: 6)
!3161 = !DILocation(line: 465, column: 11, scope: !3160)
!3162 = !DILocation(line: 465, column: 6, scope: !3086)
!3163 = !DILocation(line: 465, column: 26, scope: !3160)
!3164 = !DILocation(line: 466, column: 6, scope: !3165)
!3165 = distinct !DILexicalBlock(scope: !3086, file: !98, line: 466, column: 6)
!3166 = !DILocation(line: 466, column: 11, scope: !3165)
!3167 = !DILocation(line: 466, column: 6, scope: !3086)
!3168 = !DILocation(line: 466, column: 26, scope: !3165)
!3169 = !DILocation(line: 467, column: 6, scope: !3170)
!3170 = distinct !DILexicalBlock(scope: !3086, file: !98, line: 467, column: 6)
!3171 = !DILocation(line: 467, column: 11, scope: !3170)
!3172 = !DILocation(line: 467, column: 6, scope: !3086)
!3173 = !DILocation(line: 467, column: 26, scope: !3170)
!3174 = !DILocation(line: 468, column: 6, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3086, file: !98, line: 468, column: 6)
!3176 = !DILocation(line: 468, column: 11, scope: !3175)
!3177 = !DILocation(line: 468, column: 6, scope: !3086)
!3178 = !DILocation(line: 468, column: 26, scope: !3175)
!3179 = !DILocation(line: 469, column: 6, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3086, file: !98, line: 469, column: 6)
!3181 = !DILocation(line: 469, column: 11, scope: !3180)
!3182 = !DILocation(line: 469, column: 6, scope: !3086)
!3183 = !DILocation(line: 469, column: 26, scope: !3180)
!3184 = !DILocation(line: 470, column: 6, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3086, file: !98, line: 470, column: 6)
!3186 = !DILocation(line: 470, column: 11, scope: !3185)
!3187 = !DILocation(line: 470, column: 6, scope: !3086)
!3188 = !DILocation(line: 470, column: 26, scope: !3185)
!3189 = !DILocation(line: 471, column: 6, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3086, file: !98, line: 471, column: 6)
!3191 = !DILocation(line: 471, column: 11, scope: !3190)
!3192 = !DILocation(line: 471, column: 6, scope: !3086)
!3193 = !DILocation(line: 471, column: 26, scope: !3190)
!3194 = !DILocation(line: 472, column: 6, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3086, file: !98, line: 472, column: 6)
!3196 = !DILocation(line: 472, column: 11, scope: !3195)
!3197 = !DILocation(line: 472, column: 6, scope: !3086)
!3198 = !DILocation(line: 472, column: 26, scope: !3195)
!3199 = !DILocation(line: 473, column: 6, scope: !3200)
!3200 = distinct !DILexicalBlock(scope: !3086, file: !98, line: 473, column: 6)
!3201 = !DILocation(line: 473, column: 11, scope: !3200)
!3202 = !DILocation(line: 473, column: 6, scope: !3086)
!3203 = !DILocation(line: 473, column: 26, scope: !3200)
!3204 = !DILocation(line: 474, column: 6, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3086, file: !98, line: 474, column: 6)
!3206 = !DILocation(line: 474, column: 11, scope: !3205)
!3207 = !DILocation(line: 474, column: 6, scope: !3086)
!3208 = !DILocation(line: 474, column: 27, scope: !3205)
!3209 = !DILocation(line: 475, column: 6, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3086, file: !98, line: 475, column: 6)
!3211 = !DILocation(line: 475, column: 11, scope: !3210)
!3212 = !DILocation(line: 475, column: 6, scope: !3086)
!3213 = !DILocation(line: 475, column: 32, scope: !3210)
!3214 = !DILocation(line: 477, column: 50, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3086, file: !98, line: 477, column: 6)
!3216 = !DILocation(line: 477, column: 6, scope: !3086)
!3217 = !DILocation(line: 478, column: 3, scope: !3215)
!3218 = !DILocation(line: 478, column: 3, scope: !3219)
!3219 = distinct !DILexicalBlock(scope: !3220, file: !98, line: 478, column: 3)
!3220 = distinct !DILexicalBlock(scope: !3215, file: !98, line: 478, column: 3)
!3221 = !{i32 -2143523708}
!3222 = !DILocation(line: 478, column: 3, scope: !3220)
!3223 = !DILocation(line: 480, column: 3, scope: !3215)
!3224 = !DILocation(line: 480, column: 3, scope: !3225)
!3225 = distinct !DILexicalBlock(scope: !3215, file: !98, line: 480, column: 3)
!3226 = !DILocation(line: 480, column: 3, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3225, file: !98, line: 480, column: 3)
!3228 = !DILocation(line: 480, column: 3, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3225, file: !98, line: 480, column: 3)
!3230 = !{i64 2151443791, i64 2151443820, i64 2151443866, i64 2151443924, i64 2151443978, i64 2151444032, i64 2151444087, i64 2151444118}
!3231 = !DILocation(line: 483, column: 2, scope: !3086)
!3232 = !DILocation(line: 484, column: 1, scope: !3086)
!3233 = !DISubprogram(name: "kmalloc_trace", scope: !98, file: !98, line: 525, type: !3234, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3234 = !DISubroutineType(types: !3235)
!3235 = !{!300, !3236, !2036, !275}
!3236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3237, size: 64)
!3237 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !3238, line: 11, flags: DIFlagFwdDecl)
!3238 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!3239 = distinct !DISubprogram(name: "kmalloc_type", scope: !98, file: !98, line: 401, type: !3240, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3242)
!3240 = !DISubroutineType(types: !3241)
!3241 = !{!97, !2036, !278}
!3242 = !{!3243, !3244}
!3243 = !DILocalVariable(name: "flags", arg: 1, scope: !3239, file: !98, line: 401, type: !2036)
!3244 = !DILocalVariable(name: "caller", arg: 2, scope: !3239, file: !98, line: 401, type: !278)
!3245 = !DILocation(line: 401, column: 67, scope: !3239)
!3246 = !DILocation(line: 401, column: 88, scope: !3239)
!3247 = !DILocation(line: 407, column: 6, scope: !3248)
!3248 = distinct !DILexicalBlock(scope: !3239, file: !98, line: 407, column: 6)
!3249 = !DILocation(line: 407, column: 6, scope: !3239)
!3250 = !DILocation(line: 413, column: 3, scope: !3248)
!3251 = !DILocation(line: 423, column: 38, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3239, file: !98, line: 423, column: 6)
!3253 = !DILocation(line: 423, column: 44, scope: !3252)
!3254 = !DILocation(line: 423, column: 6, scope: !3239)
!3255 = !DILocation(line: 424, column: 3, scope: !3252)
!3256 = !DILocation(line: 426, column: 3, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3239, file: !98, line: 425, column: 6)
!3258 = !DILocation(line: 429, column: 1, scope: !3239)
!3259 = !DISubprogram(name: "__kmalloc", scope: !98, file: !98, line: 488, type: !3020, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3260 = !DISubprogram(name: "__compiletime_assert_117", scope: !98, file: !98, line: 478, type: !1165, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!3261 = distinct !DISubprogram(name: "__list_add", scope: !2954, file: !2954, line: 146, type: !3262, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3264)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{null, !133, !133, !133}
!3264 = !{!3265, !3266, !3267}
!3265 = !DILocalVariable(name: "new", arg: 1, scope: !3261, file: !2954, line: 146, type: !133)
!3266 = !DILocalVariable(name: "prev", arg: 2, scope: !3261, file: !2954, line: 147, type: !133)
!3267 = !DILocalVariable(name: "next", arg: 3, scope: !3261, file: !2954, line: 148, type: !133)
!3268 = !DILocation(line: 146, column: 49, scope: !3261)
!3269 = !DILocation(line: 147, column: 28, scope: !3261)
!3270 = !DILocation(line: 148, column: 28, scope: !3261)
!3271 = !DILocation(line: 150, column: 24, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3261, file: !2954, line: 150, column: 6)
!3273 = !DILocation(line: 150, column: 29, scope: !3272)
!3274 = !DILocation(line: 150, column: 35, scope: !3272)
!3275 = !DILocation(line: 150, column: 7, scope: !3272)
!3276 = !DILocation(line: 150, column: 6, scope: !3261)
!3277 = !DILocation(line: 151, column: 3, scope: !3272)
!3278 = !DILocation(line: 153, column: 15, scope: !3261)
!3279 = !DILocation(line: 153, column: 2, scope: !3261)
!3280 = !DILocation(line: 153, column: 8, scope: !3261)
!3281 = !DILocation(line: 153, column: 13, scope: !3261)
!3282 = !DILocation(line: 154, column: 14, scope: !3261)
!3283 = !DILocation(line: 154, column: 2, scope: !3261)
!3284 = !DILocation(line: 154, column: 7, scope: !3261)
!3285 = !DILocation(line: 154, column: 12, scope: !3261)
!3286 = !DILocation(line: 155, column: 14, scope: !3261)
!3287 = !DILocation(line: 155, column: 2, scope: !3261)
!3288 = !DILocation(line: 155, column: 7, scope: !3261)
!3289 = !DILocation(line: 155, column: 12, scope: !3261)
!3290 = !DILocation(line: 156, column: 2, scope: !3261)
!3291 = !DILocation(line: 156, column: 2, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3261, file: !2954, line: 156, column: 2)
!3293 = !DILocation(line: 156, column: 2, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3292, file: !2954, line: 156, column: 2)
!3295 = !DILocation(line: 156, column: 2, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3292, file: !2954, line: 156, column: 2)
!3297 = !DILocation(line: 157, column: 1, scope: !3261)
!3298 = distinct !DISubprogram(name: "__list_add_valid", scope: !2954, file: !2954, line: 128, type: !3299, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3301)
!3299 = !DISubroutineType(types: !3300)
!3300 = !{!585, !133, !133, !133}
!3301 = !{!3302, !3303, !3304}
!3302 = !DILocalVariable(name: "new", arg: 1, scope: !3298, file: !2954, line: 128, type: !133)
!3303 = !DILocalVariable(name: "prev", arg: 2, scope: !3298, file: !2954, line: 129, type: !133)
!3304 = !DILocalVariable(name: "next", arg: 3, scope: !3298, file: !2954, line: 130, type: !133)
!3305 = !DILocation(line: 128, column: 55, scope: !3298)
!3306 = !DILocation(line: 129, column: 23, scope: !3298)
!3307 = !DILocation(line: 130, column: 23, scope: !3298)
!3308 = !DILocation(line: 132, column: 2, scope: !3298)
!3309 = distinct !DISubprogram(name: "handle_dock", scope: !3, file: !3, line: 314, type: !3310, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3312)
!3310 = !DISubroutineType(types: !3311)
!3311 = !{null, !1168, !46}
!3312 = !{!3313, !3314, !3315, !3316, !3321, !3322}
!3313 = !DILocalVariable(name: "ds", arg: 1, scope: !3309, file: !3, line: 314, type: !1168)
!3314 = !DILocalVariable(name: "dock", arg: 2, scope: !3309, file: !3, line: 314, type: !46)
!3315 = !DILocalVariable(name: "status", scope: !3309, file: !3, line: 316, type: !2039)
!3316 = !DILocalVariable(name: "arg_list", scope: !3309, file: !3, line: 317, type: !3317)
!3317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_list", file: !1173, line: 956, size: 128, elements: !3318)
!3318 = !{!3319, !3320}
!3319 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !3317, file: !1173, line: 957, baseType: !1070, size: 32)
!3320 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !3317, file: !1173, line: 958, baseType: !1840, size: 64, offset: 64)
!3321 = !DILocalVariable(name: "arg", scope: !3309, file: !3, line: 318, type: !1841)
!3322 = !DILocalVariable(name: "value", scope: !3309, file: !3, line: 319, type: !394)
!3323 = !DILocation(line: 314, column: 46, scope: !3309)
!3324 = !DILocation(line: 314, column: 54, scope: !3309)
!3325 = !DILocation(line: 316, column: 2, scope: !3309)
!3326 = !DILocation(line: 316, column: 14, scope: !3309)
!3327 = !DILocation(line: 317, column: 2, scope: !3309)
!3328 = !DILocation(line: 317, column: 26, scope: !3309)
!3329 = !DILocation(line: 318, column: 2, scope: !3309)
!3330 = !DILocation(line: 318, column: 20, scope: !3309)
!3331 = !DILocation(line: 319, column: 2, scope: !3309)
!3332 = !DILocation(line: 319, column: 21, scope: !3309)
!3333 = !DILocation(line: 321, column: 2, scope: !3309)
!3334 = !DILocation(line: 324, column: 11, scope: !3309)
!3335 = !DILocation(line: 324, column: 17, scope: !3309)
!3336 = !DILocation(line: 325, column: 11, scope: !3309)
!3337 = !DILocation(line: 325, column: 19, scope: !3309)
!3338 = !DILocation(line: 326, column: 11, scope: !3309)
!3339 = !DILocation(line: 327, column: 22, scope: !3309)
!3340 = !DILocation(line: 327, column: 14, scope: !3309)
!3341 = !DILocation(line: 327, column: 20, scope: !3309)
!3342 = !DILocation(line: 328, column: 33, scope: !3309)
!3343 = !DILocation(line: 328, column: 37, scope: !3309)
!3344 = !DILocation(line: 328, column: 11, scope: !3309)
!3345 = !DILocation(line: 328, column: 9, scope: !3309)
!3346 = !DILocation(line: 329, column: 6, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3309, file: !3, line: 329, column: 6)
!3348 = !DILocation(line: 329, column: 27, scope: !3347)
!3349 = !DILocation(line: 329, column: 30, scope: !3347)
!3350 = !DILocation(line: 329, column: 37, scope: !3347)
!3351 = !DILocation(line: 329, column: 6, scope: !3309)
!3352 = !DILocation(line: 330, column: 3, scope: !3347)
!3353 = !DILocation(line: 332, column: 1, scope: !3309)
!3354 = !DISubprogram(name: "acpi_evaluate_integer", scope: !1778, file: !1778, line: 27, type: !3355, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!2039, !1172, !3357, !3358, !3359}
!3357 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !1173, line: 423, baseType: !228)
!3358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3317, size: 64)
!3359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!3360 = distinct !DISubprogram(name: "dock_hotplug_event", scope: !3, file: !3, line: 87, type: !3361, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3363)
!3361 = !DISubroutineType(types: !3362)
!3362 = !{null, !1771, !1070, !107}
!3363 = !{!3364, !3365, !3366, !3367, !3368, !3371, !3374, !3376}
!3364 = !DILocalVariable(name: "dd", arg: 1, scope: !3360, file: !3, line: 87, type: !1771)
!3365 = !DILocalVariable(name: "event", arg: 2, scope: !3360, file: !3, line: 87, type: !1070)
!3366 = !DILocalVariable(name: "cb_type", arg: 3, scope: !3360, file: !3, line: 88, type: !107)
!3367 = !DILocalVariable(name: "adev", scope: !3360, file: !3, line: 90, type: !1776)
!3368 = !DILocalVariable(name: "fixup", scope: !3369, file: !3, line: 98, type: !1995)
!3369 = distinct !DILexicalBlock(scope: !3370, file: !3, line: 97, column: 34)
!3370 = distinct !DILexicalBlock(scope: !3360, file: !3, line: 97, column: 6)
!3371 = !DILocalVariable(name: "uevent", scope: !3372, file: !3, line: 107, type: !2021)
!3372 = distinct !DILexicalBlock(scope: !3373, file: !3, line: 106, column: 42)
!3373 = distinct !DILexicalBlock(scope: !3370, file: !3, line: 106, column: 13)
!3374 = !DILocalVariable(name: "notify", scope: !3375, file: !3, line: 116, type: !2017)
!3375 = distinct !DILexicalBlock(scope: !3373, file: !3, line: 115, column: 9)
!3376 = !DILabel(scope: !3360, name: "out", file: !3, line: 126)
!3377 = !DILocation(line: 87, column: 62, scope: !3360)
!3378 = !DILocation(line: 87, column: 70, scope: !3360)
!3379 = !DILocation(line: 88, column: 35, scope: !3360)
!3380 = !DILocation(line: 90, column: 2, scope: !3360)
!3381 = !DILocation(line: 90, column: 22, scope: !3360)
!3382 = !DILocation(line: 90, column: 29, scope: !3360)
!3383 = !DILocation(line: 90, column: 33, scope: !3360)
!3384 = !DILocation(line: 92, column: 2, scope: !3360)
!3385 = !DILocation(line: 94, column: 7, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3360, file: !3, line: 94, column: 6)
!3387 = !DILocation(line: 94, column: 13, scope: !3386)
!3388 = !DILocation(line: 94, column: 6, scope: !3360)
!3389 = !DILocation(line: 95, column: 3, scope: !3386)
!3390 = !DILocation(line: 97, column: 6, scope: !3370)
!3391 = !DILocation(line: 97, column: 14, scope: !3370)
!3392 = !DILocation(line: 97, column: 6, scope: !3360)
!3393 = !DILocation(line: 98, column: 3, scope: !3369)
!3394 = !DILocation(line: 98, column: 10, scope: !3369)
!3395 = !DILocation(line: 100, column: 11, scope: !3369)
!3396 = !DILocation(line: 100, column: 17, scope: !3369)
!3397 = !DILocation(line: 100, column: 21, scope: !3369)
!3398 = !DILocation(line: 100, column: 9, scope: !3369)
!3399 = !DILocation(line: 101, column: 7, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3369, file: !3, line: 101, column: 7)
!3401 = !DILocation(line: 101, column: 7, scope: !3369)
!3402 = !DILocation(line: 102, column: 4, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3400, file: !3, line: 101, column: 14)
!3404 = !DILocation(line: 103, column: 4, scope: !3403)
!3405 = !DILocation(line: 103, column: 10, scope: !3403)
!3406 = !DILocation(line: 104, column: 4, scope: !3403)
!3407 = !DILocation(line: 106, column: 2, scope: !3370)
!3408 = !DILocation(line: 106, column: 2, scope: !3369)
!3409 = !DILocation(line: 106, column: 13, scope: !3373)
!3410 = !DILocation(line: 106, column: 21, scope: !3373)
!3411 = !DILocation(line: 106, column: 13, scope: !3370)
!3412 = !DILocation(line: 107, column: 3, scope: !3372)
!3413 = !DILocation(line: 107, column: 10, scope: !3372)
!3414 = !DILocation(line: 109, column: 12, scope: !3372)
!3415 = !DILocation(line: 109, column: 18, scope: !3372)
!3416 = !DILocation(line: 109, column: 22, scope: !3372)
!3417 = !DILocation(line: 109, column: 10, scope: !3372)
!3418 = !DILocation(line: 110, column: 7, scope: !3419)
!3419 = distinct !DILexicalBlock(scope: !3372, file: !3, line: 110, column: 7)
!3420 = !DILocation(line: 110, column: 7, scope: !3372)
!3421 = !DILocation(line: 111, column: 4, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3419, file: !3, line: 110, column: 15)
!3423 = !DILocation(line: 112, column: 4, scope: !3422)
!3424 = !DILocation(line: 112, column: 11, scope: !3422)
!3425 = !DILocation(line: 112, column: 17, scope: !3422)
!3426 = !DILocation(line: 113, column: 4, scope: !3422)
!3427 = !DILocation(line: 115, column: 2, scope: !3373)
!3428 = !DILocation(line: 115, column: 2, scope: !3372)
!3429 = !DILocation(line: 116, column: 3, scope: !3375)
!3430 = !DILocation(line: 116, column: 9, scope: !3375)
!3431 = !DILocation(line: 118, column: 12, scope: !3375)
!3432 = !DILocation(line: 118, column: 18, scope: !3375)
!3433 = !DILocation(line: 118, column: 22, scope: !3375)
!3434 = !DILocation(line: 118, column: 10, scope: !3375)
!3435 = !DILocation(line: 119, column: 7, scope: !3436)
!3436 = distinct !DILexicalBlock(scope: !3375, file: !3, line: 119, column: 7)
!3437 = !DILocation(line: 119, column: 7, scope: !3375)
!3438 = !DILocation(line: 120, column: 4, scope: !3439)
!3439 = distinct !DILexicalBlock(scope: !3436, file: !3, line: 119, column: 15)
!3440 = !DILocation(line: 121, column: 4, scope: !3439)
!3441 = !DILocation(line: 121, column: 11, scope: !3439)
!3442 = !DILocation(line: 121, column: 17, scope: !3439)
!3443 = !DILocation(line: 122, column: 4, scope: !3439)
!3444 = !DILocation(line: 124, column: 2, scope: !3373)
!3445 = !DILocation(line: 97, column: 17, scope: !3370)
!3446 = !DILocation(line: 126, column: 2, scope: !3360)
!3447 = !DILocation(line: 127, column: 2, scope: !3360)
!3448 = !DILocation(line: 128, column: 1, scope: !3360)
!3449 = !DISubprogram(name: "acpi_bus_scan", scope: !1778, file: !1778, line: 566, type: !3450, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3450 = !DISubroutineType(types: !3451)
!3451 = !{!46, !1172}
!3452 = !DISubprogram(name: "acpi_lock_hp_context", scope: !1778, file: !1778, line: 561, type: !1165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3453 = !DISubprogram(name: "acpi_unlock_hp_context", scope: !1778, file: !1778, line: 562, type: !1165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3454 = !DISubprogram(name: "sprintf", scope: !3455, file: !3455, line: 10, type: !3456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3455 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!46, !228, !147, null}
!3458 = !DISubprogram(name: "kobject_uevent_env", scope: !113, file: !113, line: 215, type: !3459, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3459 = !DISubroutineType(types: !3460)
!3460 = !{!46, !151, !112, !3461}
!3461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!3462 = distinct !DISubprogram(name: "hot_remove_dock_devices", scope: !3, file: !3, line: 224, type: !2498, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3463)
!3463 = !{!3464, !3465, !3466, !3469, !3472, !3475}
!3464 = !DILocalVariable(name: "ds", arg: 1, scope: !3462, file: !3, line: 224, type: !1168)
!3465 = !DILocalVariable(name: "dd", scope: !3462, file: !3, line: 226, type: !1771)
!3466 = !DILocalVariable(name: "__mptr", scope: !3467, file: !3, line: 233, type: !300)
!3467 = distinct !DILexicalBlock(scope: !3468, file: !3, line: 233, column: 2)
!3468 = distinct !DILexicalBlock(scope: !3462, file: !3, line: 233, column: 2)
!3469 = !DILocalVariable(name: "__mptr", scope: !3470, file: !3, line: 233, type: !300)
!3470 = distinct !DILexicalBlock(scope: !3471, file: !3, line: 233, column: 2)
!3471 = distinct !DILexicalBlock(scope: !3468, file: !3, line: 233, column: 2)
!3472 = !DILocalVariable(name: "__mptr", scope: !3473, file: !3, line: 237, type: !300)
!3473 = distinct !DILexicalBlock(scope: !3474, file: !3, line: 237, column: 2)
!3474 = distinct !DILexicalBlock(scope: !3462, file: !3, line: 237, column: 2)
!3475 = !DILocalVariable(name: "__mptr", scope: !3476, file: !3, line: 237, type: !300)
!3476 = distinct !DILexicalBlock(scope: !3477, file: !3, line: 237, column: 2)
!3477 = distinct !DILexicalBlock(scope: !3474, file: !3, line: 237, column: 2)
!3478 = !DILocation(line: 224, column: 58, scope: !3462)
!3479 = !DILocation(line: 226, column: 2, scope: !3462)
!3480 = !DILocation(line: 226, column: 32, scope: !3462)
!3481 = !DILocation(line: 233, column: 2, scope: !3467)
!3482 = !DILocation(line: 233, column: 2, scope: !3468)
!3483 = !DILocation(line: 233, column: 2, scope: !3471)
!3484 = !DILocation(line: 234, column: 22, scope: !3471)
!3485 = !DILocation(line: 234, column: 3, scope: !3471)
!3486 = !DILocation(line: 233, column: 2, scope: !3470)
!3487 = distinct !{!3487, !3482, !3488, !2253, !2254}
!3488 = !DILocation(line: 235, column: 25, scope: !3468)
!3489 = !DILocation(line: 237, column: 2, scope: !3473)
!3490 = !DILocation(line: 237, column: 2, scope: !3474)
!3491 = !DILocation(line: 237, column: 2, scope: !3477)
!3492 = !DILocation(line: 238, column: 17, scope: !3477)
!3493 = !DILocation(line: 238, column: 21, scope: !3477)
!3494 = !DILocation(line: 238, column: 3, scope: !3477)
!3495 = !DILocation(line: 237, column: 2, scope: !3476)
!3496 = distinct !{!3496, !3490, !3497, !2253, !2254}
!3497 = !DILocation(line: 238, column: 25, scope: !3474)
!3498 = !DILocation(line: 239, column: 1, scope: !3462)
!3499 = distinct !DISubprogram(name: "undock", scope: !3, file: !3, line: 339, type: !2498, scopeLine: 340, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3500)
!3500 = !{!3501}
!3501 = !DILocalVariable(name: "ds", arg: 1, scope: !3499, file: !3, line: 339, type: !1168)
!3502 = !DILocation(line: 339, column: 48, scope: !3499)
!3503 = !DILocation(line: 341, column: 14, scope: !3499)
!3504 = !DILocation(line: 341, column: 2, scope: !3499)
!3505 = !DILocation(line: 342, column: 1, scope: !3499)
!3506 = !DISubprogram(name: "acpi_evaluate_ej0", scope: !1778, file: !1778, line: 45, type: !3507, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3507 = !DISubroutineType(types: !3508)
!3508 = !{!2039, !1172}
!3509 = distinct !DISubprogram(name: "complete_undock", scope: !3, file: !3, line: 360, type: !2498, scopeLine: 361, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3510)
!3510 = !{!3511}
!3511 = !DILocalVariable(name: "ds", arg: 1, scope: !3509, file: !3, line: 360, type: !1168)
!3512 = !DILocation(line: 360, column: 57, scope: !3509)
!3513 = !DILocation(line: 362, column: 2, scope: !3509)
!3514 = !DILocation(line: 362, column: 6, scope: !3509)
!3515 = !DILocation(line: 362, column: 12, scope: !3509)
!3516 = !DILocation(line: 363, column: 1, scope: !3509)
!3517 = !DISubprogram(name: "acpi_bus_trim", scope: !1778, file: !1778, line: 567, type: !1996, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3518 = distinct !DISubprogram(name: "docked_show", scope: !3, file: !3, line: 488, type: !2145, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3519)
!3519 = !{!3520, !3521, !3522, !3523, !3524}
!3520 = !DILocalVariable(name: "dev", arg: 1, scope: !3518, file: !3, line: 488, type: !1191)
!3521 = !DILocalVariable(name: "attr", arg: 2, scope: !3518, file: !3, line: 489, type: !2147)
!3522 = !DILocalVariable(name: "buf", arg: 3, scope: !3518, file: !3, line: 489, type: !228)
!3523 = !DILocalVariable(name: "dock_station", scope: !3518, file: !3, line: 491, type: !1168)
!3524 = !DILocalVariable(name: "adev", scope: !3518, file: !3, line: 492, type: !1776)
!3525 = !DILocation(line: 488, column: 43, scope: !3518)
!3526 = !DILocation(line: 489, column: 32, scope: !3518)
!3527 = !DILocation(line: 489, column: 44, scope: !3518)
!3528 = !DILocation(line: 491, column: 2, scope: !3518)
!3529 = !DILocation(line: 491, column: 23, scope: !3518)
!3530 = !DILocation(line: 491, column: 38, scope: !3518)
!3531 = !DILocation(line: 491, column: 43, scope: !3518)
!3532 = !DILocation(line: 492, column: 2, scope: !3518)
!3533 = !DILocation(line: 492, column: 22, scope: !3518)
!3534 = !DILocation(line: 492, column: 49, scope: !3518)
!3535 = !DILocation(line: 492, column: 63, scope: !3518)
!3536 = !DILocation(line: 492, column: 29, scope: !3518)
!3537 = !DILocation(line: 494, column: 20, scope: !3518)
!3538 = !DILocation(line: 494, column: 56, scope: !3518)
!3539 = !DILocation(line: 494, column: 33, scope: !3518)
!3540 = !DILocation(line: 494, column: 9, scope: !3518)
!3541 = !DILocation(line: 495, column: 1, scope: !3518)
!3542 = !DILocation(line: 494, column: 2, scope: !3518)
!3543 = !DISubprogram(name: "acpi_fetch_acpi_dev", scope: !1778, file: !1778, line: 813, type: !3544, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{!1776, !1172}
!3546 = !DISubprogram(name: "sysfs_emit", scope: !254, file: !254, line: 357, type: !3456, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3547 = distinct !DISubprogram(name: "flags_show", scope: !3, file: !3, line: 501, type: !2145, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3548)
!3548 = !{!3549, !3550, !3551, !3552}
!3549 = !DILocalVariable(name: "dev", arg: 1, scope: !3547, file: !3, line: 501, type: !1191)
!3550 = !DILocalVariable(name: "attr", arg: 2, scope: !3547, file: !3, line: 502, type: !2147)
!3551 = !DILocalVariable(name: "buf", arg: 3, scope: !3547, file: !3, line: 502, type: !228)
!3552 = !DILocalVariable(name: "dock_station", scope: !3547, file: !3, line: 504, type: !1168)
!3553 = !DILocation(line: 501, column: 42, scope: !3547)
!3554 = !DILocation(line: 502, column: 31, scope: !3547)
!3555 = !DILocation(line: 502, column: 43, scope: !3547)
!3556 = !DILocation(line: 504, column: 2, scope: !3547)
!3557 = !DILocation(line: 504, column: 23, scope: !3547)
!3558 = !DILocation(line: 504, column: 38, scope: !3547)
!3559 = !DILocation(line: 504, column: 43, scope: !3547)
!3560 = !DILocation(line: 506, column: 20, scope: !3547)
!3561 = !DILocation(line: 506, column: 33, scope: !3547)
!3562 = !DILocation(line: 506, column: 47, scope: !3547)
!3563 = !DILocation(line: 506, column: 9, scope: !3547)
!3564 = !DILocation(line: 508, column: 1, scope: !3547)
!3565 = !DILocation(line: 506, column: 2, scope: !3547)
!3566 = distinct !DISubprogram(name: "undock_store", scope: !3, file: !3, line: 514, type: !2150, scopeLine: 516, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3567)
!3567 = !{!3568, !3569, !3570, !3571, !3572, !3573}
!3568 = !DILocalVariable(name: "dev", arg: 1, scope: !3566, file: !3, line: 514, type: !1191)
!3569 = !DILocalVariable(name: "attr", arg: 2, scope: !3566, file: !3, line: 514, type: !2147)
!3570 = !DILocalVariable(name: "buf", arg: 3, scope: !3566, file: !3, line: 515, type: !147)
!3571 = !DILocalVariable(name: "count", arg: 4, scope: !3566, file: !3, line: 515, type: !275)
!3572 = !DILocalVariable(name: "ret", scope: !3566, file: !3, line: 517, type: !46)
!3573 = !DILocalVariable(name: "dock_station", scope: !3566, file: !3, line: 518, type: !1168)
!3574 = !DILocation(line: 514, column: 44, scope: !3566)
!3575 = !DILocation(line: 514, column: 74, scope: !3566)
!3576 = !DILocation(line: 515, column: 20, scope: !3566)
!3577 = !DILocation(line: 515, column: 32, scope: !3566)
!3578 = !DILocation(line: 517, column: 2, scope: !3566)
!3579 = !DILocation(line: 517, column: 6, scope: !3566)
!3580 = !DILocation(line: 518, column: 2, scope: !3566)
!3581 = !DILocation(line: 518, column: 23, scope: !3566)
!3582 = !DILocation(line: 518, column: 38, scope: !3566)
!3583 = !DILocation(line: 518, column: 43, scope: !3566)
!3584 = !DILocation(line: 520, column: 7, scope: !3585)
!3585 = distinct !DILexicalBlock(scope: !3566, file: !3, line: 520, column: 6)
!3586 = !DILocation(line: 520, column: 6, scope: !3566)
!3587 = !DILocation(line: 521, column: 3, scope: !3585)
!3588 = !DILocation(line: 523, column: 2, scope: !3566)
!3589 = !DILocation(line: 524, column: 15, scope: !3566)
!3590 = !DILocation(line: 524, column: 2, scope: !3566)
!3591 = !DILocation(line: 525, column: 29, scope: !3566)
!3592 = !DILocation(line: 525, column: 8, scope: !3566)
!3593 = !DILocation(line: 525, column: 6, scope: !3566)
!3594 = !DILocation(line: 526, column: 2, scope: !3566)
!3595 = !DILocation(line: 527, column: 9, scope: !3566)
!3596 = !DILocation(line: 527, column: 15, scope: !3566)
!3597 = !DILocation(line: 527, column: 21, scope: !3566)
!3598 = !DILocation(line: 527, column: 2, scope: !3566)
!3599 = !DILocation(line: 528, column: 1, scope: !3566)
!3600 = !DISubprogram(name: "acpi_scan_lock_acquire", scope: !1778, file: !1778, line: 559, type: !1165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3601 = !DISubprogram(name: "acpi_scan_lock_release", scope: !1778, file: !1778, line: 560, type: !1165, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3602 = distinct !DISubprogram(name: "uid_show", scope: !3, file: !3, line: 534, type: !2145, scopeLine: 536, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3603)
!3603 = !{!3604, !3605, !3606, !3607, !3608, !3609}
!3604 = !DILocalVariable(name: "dev", arg: 1, scope: !3602, file: !3, line: 534, type: !1191)
!3605 = !DILocalVariable(name: "attr", arg: 2, scope: !3602, file: !3, line: 535, type: !2147)
!3606 = !DILocalVariable(name: "buf", arg: 3, scope: !3602, file: !3, line: 535, type: !228)
!3607 = !DILocalVariable(name: "lbuf", scope: !3602, file: !3, line: 537, type: !394)
!3608 = !DILocalVariable(name: "dock_station", scope: !3602, file: !3, line: 538, type: !1168)
!3609 = !DILocalVariable(name: "status", scope: !3602, file: !3, line: 540, type: !2039)
!3610 = !DILocation(line: 534, column: 40, scope: !3602)
!3611 = !DILocation(line: 535, column: 29, scope: !3602)
!3612 = !DILocation(line: 535, column: 41, scope: !3602)
!3613 = !DILocation(line: 537, column: 2, scope: !3602)
!3614 = !DILocation(line: 537, column: 21, scope: !3602)
!3615 = !DILocation(line: 538, column: 2, scope: !3602)
!3616 = !DILocation(line: 538, column: 23, scope: !3602)
!3617 = !DILocation(line: 538, column: 38, scope: !3602)
!3618 = !DILocation(line: 538, column: 43, scope: !3602)
!3619 = !DILocation(line: 540, column: 2, scope: !3602)
!3620 = !DILocation(line: 540, column: 14, scope: !3602)
!3621 = !DILocation(line: 540, column: 45, scope: !3602)
!3622 = !DILocation(line: 540, column: 59, scope: !3602)
!3623 = !DILocation(line: 540, column: 23, scope: !3602)
!3624 = !DILocation(line: 542, column: 6, scope: !3625)
!3625 = distinct !DILexicalBlock(scope: !3602, file: !3, line: 542, column: 6)
!3626 = !DILocation(line: 542, column: 6, scope: !3602)
!3627 = !DILocation(line: 543, column: 3, scope: !3625)
!3628 = !DILocation(line: 545, column: 20, scope: !3602)
!3629 = !DILocation(line: 545, column: 35, scope: !3602)
!3630 = !DILocation(line: 545, column: 9, scope: !3602)
!3631 = !DILocation(line: 545, column: 2, scope: !3602)
!3632 = !DILocation(line: 546, column: 1, scope: !3602)
!3633 = distinct !DISubprogram(name: "type_show", scope: !3, file: !3, line: 549, type: !2145, scopeLine: 551, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3634)
!3634 = !{!3635, !3636, !3637, !3638, !3639}
!3635 = !DILocalVariable(name: "dev", arg: 1, scope: !3633, file: !3, line: 549, type: !1191)
!3636 = !DILocalVariable(name: "attr", arg: 2, scope: !3633, file: !3, line: 550, type: !2147)
!3637 = !DILocalVariable(name: "buf", arg: 3, scope: !3633, file: !3, line: 550, type: !228)
!3638 = !DILocalVariable(name: "dock_station", scope: !3633, file: !3, line: 552, type: !1168)
!3639 = !DILocalVariable(name: "type", scope: !3633, file: !3, line: 553, type: !228)
!3640 = !DILocation(line: 549, column: 41, scope: !3633)
!3641 = !DILocation(line: 550, column: 30, scope: !3633)
!3642 = !DILocation(line: 550, column: 42, scope: !3633)
!3643 = !DILocation(line: 552, column: 2, scope: !3633)
!3644 = !DILocation(line: 552, column: 23, scope: !3633)
!3645 = !DILocation(line: 552, column: 38, scope: !3633)
!3646 = !DILocation(line: 552, column: 43, scope: !3633)
!3647 = !DILocation(line: 553, column: 2, scope: !3633)
!3648 = !DILocation(line: 553, column: 8, scope: !3633)
!3649 = !DILocation(line: 555, column: 6, scope: !3650)
!3650 = distinct !DILexicalBlock(scope: !3633, file: !3, line: 555, column: 6)
!3651 = !DILocation(line: 555, column: 20, scope: !3650)
!3652 = !DILocation(line: 555, column: 26, scope: !3650)
!3653 = !DILocation(line: 555, column: 6, scope: !3633)
!3654 = !DILocation(line: 556, column: 8, scope: !3650)
!3655 = !DILocation(line: 556, column: 3, scope: !3650)
!3656 = !DILocation(line: 557, column: 11, scope: !3657)
!3657 = distinct !DILexicalBlock(scope: !3650, file: !3, line: 557, column: 11)
!3658 = !DILocation(line: 557, column: 25, scope: !3657)
!3659 = !DILocation(line: 557, column: 31, scope: !3657)
!3660 = !DILocation(line: 557, column: 11, scope: !3650)
!3661 = !DILocation(line: 558, column: 8, scope: !3657)
!3662 = !DILocation(line: 558, column: 3, scope: !3657)
!3663 = !DILocation(line: 559, column: 11, scope: !3664)
!3664 = distinct !DILexicalBlock(scope: !3657, file: !3, line: 559, column: 11)
!3665 = !DILocation(line: 559, column: 25, scope: !3664)
!3666 = !DILocation(line: 559, column: 31, scope: !3664)
!3667 = !DILocation(line: 559, column: 11, scope: !3657)
!3668 = !DILocation(line: 560, column: 8, scope: !3664)
!3669 = !DILocation(line: 560, column: 3, scope: !3664)
!3670 = !DILocation(line: 562, column: 8, scope: !3664)
!3671 = !DILocation(line: 564, column: 20, scope: !3633)
!3672 = !DILocation(line: 564, column: 33, scope: !3633)
!3673 = !DILocation(line: 564, column: 9, scope: !3633)
!3674 = !DILocation(line: 565, column: 1, scope: !3633)
!3675 = !DILocation(line: 564, column: 2, scope: !3633)
