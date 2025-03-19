; ModuleID = 'drivers/acpi/power.c'
source_filename = "drivers/acpi/power.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lock_class_key = type {}
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.dmi_system_id = type { ptr, ptr, [4 x %struct.dmi_strmatch], ptr }
%struct.dmi_strmatch = type { i8, [79 x i8] }
%struct.acpi_power_resource_entry = type { %struct.list_head, ptr }
%struct.anon.7 = type { i32, i32, ptr }
%union.acpi_object = type { %struct.anon.9 }
%struct.anon.9 = type { i32, i32, i64, i32 }
%struct.anon.8 = type { i32, i32, ptr }
%struct.acpi_buffer = type { i64, ptr }
%struct.acpi_power_resource = type { %struct.acpi_device, %struct.list_head, i32, i32, i32, i8, %struct.mutex, %struct.list_head }
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
%struct.anon.10 = type { i32, i32, i32 }
%struct.acpi_power_dependent_device = type { ptr, %struct.list_head }
%struct.acpi_object_list = type { i32, ptr }
%struct.anon.4 = type { i32, i64 }

@wakeup_attr_group = internal constant %struct.attribute_group { ptr @.str.11, ptr null, ptr null, ptr @attrs, ptr null }, align 8, !dbg !0
@attr_groups = internal constant [4 x %struct.attribute_group] [%struct.attribute_group { ptr @.str.12, ptr null, ptr null, ptr @attrs, ptr null }, %struct.attribute_group { ptr @.str.13, ptr null, ptr null, ptr @attrs, ptr null }, %struct.attribute_group { ptr @.str.14, ptr null, ptr null, ptr @attrs, ptr null }, %struct.attribute_group { ptr @.str.15, ptr null, ptr null, ptr @attrs, ptr null }], align 16, !dbg !2076
@.str = private unnamed_addr constant [5 x i8] c"_DSW\00", align 1, !dbg !1998
@.str.1 = private unnamed_addr constant [3 x i8] c"\016\00", align 1, !dbg !2001
@.str.2 = private unnamed_addr constant [23 x i8] c"_DSW execution failed\0A\00", align 1, !dbg !2004
@.str.3 = private unnamed_addr constant [5 x i8] c"_PSW\00", align 1, !dbg !2009
@.str.4 = private unnamed_addr constant [23 x i8] c"_PSW execution failed\0A\00", align 1, !dbg !2011
@acpi_device_lock = external dso_local global %struct.mutex, align 8
@.str.5 = private unnamed_addr constant [39 x i8] c"Cannot turn on wakeup power resources\0A\00", align 1, !dbg !2013
@.str.6 = private unnamed_addr constant [40 x i8] c"Cannot turn off wakeup power resources\0A\00", align 1, !dbg !2018
@acpi_add_power_resource.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !2020
@.str.7 = private unnamed_addr constant [25 x i8] c"&resource->resource_lock\00", align 1, !dbg !2041
@.str.8 = private unnamed_addr constant [15 x i8] c"Power Resource\00", align 1, !dbg !2046
@.str.9 = private unnamed_addr constant [15 x i8] c"power_resource\00", align 1, !dbg !2051
@.str.10 = private unnamed_addr constant [20 x i8] c"New power resource\0A\00", align 1, !dbg !2053
@dev_attr_resource_in_use = internal global %struct.device_attribute { %struct.attribute { ptr @.str.20, i16 292 }, ptr @resource_in_use_show, ptr null }, align 8, !dbg !2094
@power_resource_list_lock = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.raw_spinlock zeroinitializer, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @power_resource_list_lock, i64 16), ptr getelementptr (i8, ptr @power_resource_list_lock, i64 16) } }, align 8, !dbg !2110
@acpi_power_resource_list = internal global %struct.list_head { ptr @acpi_power_resource_list, ptr @acpi_power_resource_list }, align 8, !dbg !2112
@dmi_leave_unused_power_resources_on = internal constant [2 x %struct.dmi_system_id] [%struct.dmi_system_id { ptr null, ptr null, [4 x %struct.dmi_strmatch] [%struct.dmi_strmatch { i8 6, [79 x i8] c"TOSHIBA\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch { i8 7, [79 x i8] c"SATELLITE Click Mini L9W-B\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00" }, %struct.dmi_strmatch zeroinitializer, %struct.dmi_strmatch zeroinitializer], ptr null }, %struct.dmi_system_id zeroinitializer], align 16, !dbg !2114
@.str.11 = private unnamed_addr constant [23 x i8] c"power_resources_wakeup\00", align 1, !dbg !2055
@attrs = internal global [1 x ptr] zeroinitializer, align 8, !dbg !2057
@.str.12 = private unnamed_addr constant [19 x i8] c"power_resources_D0\00", align 1, !dbg !2062
@.str.13 = private unnamed_addr constant [19 x i8] c"power_resources_D1\00", align 1, !dbg !2067
@.str.14 = private unnamed_addr constant [19 x i8] c"power_resources_D2\00", align 1, !dbg !2069
@.str.15 = private unnamed_addr constant [22 x i8] c"power_resources_D3hot\00", align 1, !dbg !2071
@.str.16 = private unnamed_addr constant [5 x i8] c"_STA\00", align 1, !dbg !2079
@.str.17 = private unnamed_addr constant [5 x i8] c"_OFF\00", align 1, !dbg !2081
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.18 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !2083
@.str.19 = private unnamed_addr constant [4 x i8] c"_ON\00", align 1, !dbg !2088
@.str.20 = private unnamed_addr constant [16 x i8] c"resource_in_use\00", align 1, !dbg !2091
@.str.21 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1, !dbg !2108

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_power_resources_list_free(ptr noundef %list) #0 align 16 !dbg !2146 {
entry:
  %list.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %e = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %__mptr8 = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !2150, metadata !DIExpression()), !dbg !2161
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #14, !dbg !2162
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !2151, metadata !DIExpression()), !dbg !2163
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #14, !dbg !2162
  call void @llvm.dbg.declare(metadata ptr %e, metadata !2152, metadata !DIExpression()), !dbg !2164
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !2165
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2153, metadata !DIExpression()), !dbg !2165
  %0 = load ptr, ptr %list.addr, align 8, !dbg !2165
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !2165
  %1 = load ptr, ptr %next, align 8, !dbg !2165
  store ptr %1, ptr %__mptr, align 8, !dbg !2165
  %2 = load ptr, ptr %__mptr, align 8, !dbg !2165
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !2165
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2165
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !2166
  %3 = load ptr, ptr %tmp, align 8, !dbg !2165
  store ptr %3, ptr %entry1, align 8, !dbg !2166
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #14, !dbg !2167
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !2156, metadata !DIExpression()), !dbg !2167
  %4 = load ptr, ptr %entry1, align 8, !dbg !2167
  %node = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %4, i32 0, i32 0, !dbg !2167
  %next3 = getelementptr inbounds %struct.list_head, ptr %node, i32 0, i32 0, !dbg !2167
  %5 = load ptr, ptr %next3, align 8, !dbg !2167
  store ptr %5, ptr %__mptr2, align 8, !dbg !2167
  %6 = load ptr, ptr %__mptr2, align 8, !dbg !2167
  %add.ptr5 = getelementptr i8, ptr %6, i64 0, !dbg !2167
  store ptr %add.ptr5, ptr %tmp4, align 8, !dbg !2167
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #14, !dbg !2166
  %7 = load ptr, ptr %tmp4, align 8, !dbg !2167
  store ptr %7, ptr %e, align 8, !dbg !2166
  br label %for.cond, !dbg !2166

for.cond:                                         ; preds = %for.inc, %entry
  %8 = load ptr, ptr %entry1, align 8, !dbg !2168
  %node6 = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %8, i32 0, i32 0, !dbg !2168
  %9 = load ptr, ptr %list.addr, align 8, !dbg !2168
  %cmp = icmp eq ptr %node6, %9, !dbg !2168
  %lnot = xor i1 %cmp, true, !dbg !2168
  br i1 %lnot, label %for.body, label %for.end, !dbg !2166

for.body:                                         ; preds = %for.cond
  %10 = load ptr, ptr %entry1, align 8, !dbg !2169
  %node7 = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %10, i32 0, i32 0, !dbg !2171
  call void @list_del(ptr noundef %node7) #15, !dbg !2172
  %11 = load ptr, ptr %entry1, align 8, !dbg !2173
  call void @kfree(ptr noundef %11) #15, !dbg !2174
  br label %for.inc, !dbg !2175

for.inc:                                          ; preds = %for.body
  %12 = load ptr, ptr %e, align 8, !dbg !2168
  store ptr %12, ptr %entry1, align 8, !dbg !2168
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr8) #14, !dbg !2176
  call void @llvm.dbg.declare(metadata ptr %__mptr8, metadata !2158, metadata !DIExpression()), !dbg !2176
  %13 = load ptr, ptr %e, align 8, !dbg !2176
  %node9 = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %13, i32 0, i32 0, !dbg !2176
  %next10 = getelementptr inbounds %struct.list_head, ptr %node9, i32 0, i32 0, !dbg !2176
  %14 = load ptr, ptr %next10, align 8, !dbg !2176
  store ptr %14, ptr %__mptr8, align 8, !dbg !2176
  %15 = load ptr, ptr %__mptr8, align 8, !dbg !2176
  %add.ptr12 = getelementptr i8, ptr %15, i64 0, !dbg !2176
  store ptr %add.ptr12, ptr %tmp11, align 8, !dbg !2176
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr8) #14, !dbg !2168
  %16 = load ptr, ptr %tmp11, align 8, !dbg !2176
  store ptr %16, ptr %e, align 8, !dbg !2168
  br label %for.cond, !dbg !2168, !llvm.loop !2177

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #14, !dbg !2181
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #14, !dbg !2181
  ret void, !dbg !2181
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #3 align 16 !dbg !2182 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !2185, metadata !DIExpression()), !dbg !2186
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !2187
  call void @__list_del_entry(ptr noundef %0) #15, !dbg !2188
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !2189
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !2190
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !2191
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !2192
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !2193
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !2194
  ret void, !dbg !2195
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2196 dso_local void @kfree(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_extract_power_resources(ptr noundef %package, i32 noundef %start, ptr noundef %list) #0 align 16 !dbg !2199 {
entry:
  %package.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  %list.addr = alloca ptr, align 8
  %i = alloca i32, align 4
  %err = alloca i32, align 4
  %element = alloca ptr, align 8
  %rdev = alloca ptr, align 8
  %rhandle = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %package, ptr %package.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %package.addr, metadata !2203, metadata !DIExpression()), !dbg !2214
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !2204, metadata !DIExpression()), !dbg !2215
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !2205, metadata !DIExpression()), !dbg !2216
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !2217
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2206, metadata !DIExpression()), !dbg !2218
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !2219
  call void @llvm.dbg.declare(metadata ptr %err, metadata !2207, metadata !DIExpression()), !dbg !2220
  store i32 0, ptr %err, align 4, !dbg !2220
  %0 = load i32, ptr %start.addr, align 4, !dbg !2221
  store i32 %0, ptr %i, align 4, !dbg !2222
  br label %for.cond, !dbg !2223

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !2224
  %2 = load ptr, ptr %package.addr, align 8, !dbg !2225
  %count = getelementptr inbounds %struct.anon.7, ptr %2, i32 0, i32 1, !dbg !2226
  %3 = load i32, ptr %count, align 4, !dbg !2226
  %cmp = icmp ult i32 %1, %3, !dbg !2227
  br i1 %cmp, label %for.body, label %for.end, !dbg !2228

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %element) #14, !dbg !2229
  call void @llvm.dbg.declare(metadata ptr %element, metadata !2208, metadata !DIExpression()), !dbg !2230
  %4 = load ptr, ptr %package.addr, align 8, !dbg !2231
  %elements = getelementptr inbounds %struct.anon.7, ptr %4, i32 0, i32 2, !dbg !2232
  %5 = load ptr, ptr %elements, align 8, !dbg !2232
  %6 = load i32, ptr %i, align 4, !dbg !2233
  %idxprom = zext i32 %6 to i64, !dbg !2231
  %arrayidx = getelementptr %union.acpi_object, ptr %5, i64 %idxprom, !dbg !2231
  store ptr %arrayidx, ptr %element, align 8, !dbg !2230
  call void @llvm.lifetime.start.p0(i64 8, ptr %rdev) #14, !dbg !2234
  call void @llvm.dbg.declare(metadata ptr %rdev, metadata !2212, metadata !DIExpression()), !dbg !2235
  call void @llvm.lifetime.start.p0(i64 8, ptr %rhandle) #14, !dbg !2236
  call void @llvm.dbg.declare(metadata ptr %rhandle, metadata !2213, metadata !DIExpression()), !dbg !2237
  %7 = load ptr, ptr %element, align 8, !dbg !2238
  %8 = load i32, ptr %7, align 8, !dbg !2240
  %cmp1 = icmp ne i32 %8, 20, !dbg !2241
  br i1 %cmp1, label %if.then, label %if.end, !dbg !2242

if.then:                                          ; preds = %for.body
  store i32 -61, ptr %err, align 4, !dbg !2243
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2245

if.end:                                           ; preds = %for.body
  %9 = load ptr, ptr %element, align 8, !dbg !2246
  %handle = getelementptr inbounds %struct.anon.8, ptr %9, i32 0, i32 2, !dbg !2247
  %10 = load ptr, ptr %handle, align 8, !dbg !2247
  store ptr %10, ptr %rhandle, align 8, !dbg !2248
  %11 = load ptr, ptr %rhandle, align 8, !dbg !2249
  %tobool = icmp ne ptr %11, null, !dbg !2249
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !2251

if.then2:                                         ; preds = %if.end
  store i32 -19, ptr %err, align 4, !dbg !2252
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2254

if.end3:                                          ; preds = %if.end
  %12 = load ptr, ptr %package.addr, align 8, !dbg !2255
  %13 = load i32, ptr %start.addr, align 4, !dbg !2257
  %14 = load i32, ptr %i, align 4, !dbg !2258
  %call = call zeroext i1 @acpi_power_resource_is_dup(ptr noundef %12, i32 noundef %13, i32 noundef %14) #15, !dbg !2259
  br i1 %call, label %if.then4, label %if.end5, !dbg !2260

if.then4:                                         ; preds = %if.end3
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2261

if.end5:                                          ; preds = %if.end3
  %15 = load ptr, ptr %rhandle, align 8, !dbg !2262
  %call6 = call ptr @acpi_add_power_resource(ptr noundef %15) #15, !dbg !2263
  store ptr %call6, ptr %rdev, align 8, !dbg !2264
  %16 = load ptr, ptr %rdev, align 8, !dbg !2265
  %tobool7 = icmp ne ptr %16, null, !dbg !2265
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !2267

if.then8:                                         ; preds = %if.end5
  store i32 -19, ptr %err, align 4, !dbg !2268
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2270

if.end9:                                          ; preds = %if.end5
  %17 = load ptr, ptr %rhandle, align 8, !dbg !2271
  %18 = load ptr, ptr %list.addr, align 8, !dbg !2272
  %call10 = call i32 @acpi_power_resources_list_add(ptr noundef %17, ptr noundef %18) #15, !dbg !2273
  store i32 %call10, ptr %err, align 4, !dbg !2274
  %19 = load i32, ptr %err, align 4, !dbg !2275
  %tobool11 = icmp ne i32 %19, 0, !dbg !2275
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !2277

if.then12:                                        ; preds = %if.end9
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2278

if.end13:                                         ; preds = %if.end9
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2279
  br label %cleanup, !dbg !2279

cleanup:                                          ; preds = %if.end13, %if.then12, %if.then8, %if.then4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %rhandle) #14, !dbg !2279
  call void @llvm.lifetime.end.p0(i64 8, ptr %rdev) #14, !dbg !2279
  call void @llvm.lifetime.end.p0(i64 8, ptr %element) #14, !dbg !2279
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2280

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %20 = load i32, ptr %i, align 4, !dbg !2281
  %inc = add i32 %20, 1, !dbg !2281
  store i32 %inc, ptr %i, align 4, !dbg !2281
  br label %for.cond, !dbg !2282, !llvm.loop !2283

for.end:                                          ; preds = %cleanup, %for.cond
  %21 = load i32, ptr %err, align 4, !dbg !2285
  %tobool16 = icmp ne i32 %21, 0, !dbg !2285
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !2287

if.then17:                                        ; preds = %for.end
  %22 = load ptr, ptr %list.addr, align 8, !dbg !2288
  call void @acpi_power_resources_list_free(ptr noundef %22) #15, !dbg !2289
  br label %if.end18, !dbg !2289

if.end18:                                         ; preds = %if.then17, %for.end
  %23 = load i32, ptr %err, align 4, !dbg !2290
  store i32 1, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !2291
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !2291
  ret i32 %23, !dbg !2292

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @acpi_power_resource_is_dup(ptr noundef %package, i32 noundef %start, i32 noundef %i) #0 align 16 !dbg !2293 {
entry:
  %retval = alloca i1, align 1
  %package.addr = alloca ptr, align 8
  %start.addr = alloca i32, align 4
  %i.addr = alloca i32, align 4
  %rhandle = alloca ptr, align 8
  %dup = alloca ptr, align 8
  %j = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %package, ptr %package.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %package.addr, metadata !2297, metadata !DIExpression()), !dbg !2303
  store i32 %start, ptr %start.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %start.addr, metadata !2298, metadata !DIExpression()), !dbg !2304
  store i32 %i, ptr %i.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %i.addr, metadata !2299, metadata !DIExpression()), !dbg !2305
  call void @llvm.lifetime.start.p0(i64 8, ptr %rhandle) #14, !dbg !2306
  call void @llvm.dbg.declare(metadata ptr %rhandle, metadata !2300, metadata !DIExpression()), !dbg !2307
  call void @llvm.lifetime.start.p0(i64 8, ptr %dup) #14, !dbg !2306
  call void @llvm.dbg.declare(metadata ptr %dup, metadata !2301, metadata !DIExpression()), !dbg !2308
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #14, !dbg !2309
  call void @llvm.dbg.declare(metadata ptr %j, metadata !2302, metadata !DIExpression()), !dbg !2310
  %0 = load ptr, ptr %package.addr, align 8, !dbg !2311
  %elements = getelementptr inbounds %struct.anon.7, ptr %0, i32 0, i32 2, !dbg !2312
  %1 = load ptr, ptr %elements, align 8, !dbg !2312
  %2 = load i32, ptr %i.addr, align 4, !dbg !2313
  %idxprom = zext i32 %2 to i64, !dbg !2311
  %arrayidx = getelementptr %union.acpi_object, ptr %1, i64 %idxprom, !dbg !2311
  %handle = getelementptr inbounds %struct.anon.8, ptr %arrayidx, i32 0, i32 2, !dbg !2314
  %3 = load ptr, ptr %handle, align 8, !dbg !2314
  store ptr %3, ptr %rhandle, align 8, !dbg !2315
  %4 = load i32, ptr %start.addr, align 4, !dbg !2316
  store i32 %4, ptr %j, align 4, !dbg !2318
  br label %for.cond, !dbg !2319

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, ptr %j, align 4, !dbg !2320
  %6 = load i32, ptr %i.addr, align 4, !dbg !2322
  %cmp = icmp ult i32 %5, %6, !dbg !2323
  br i1 %cmp, label %for.body, label %for.end, !dbg !2324

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %package.addr, align 8, !dbg !2325
  %elements1 = getelementptr inbounds %struct.anon.7, ptr %7, i32 0, i32 2, !dbg !2327
  %8 = load ptr, ptr %elements1, align 8, !dbg !2327
  %9 = load i32, ptr %j, align 4, !dbg !2328
  %idxprom2 = zext i32 %9 to i64, !dbg !2325
  %arrayidx3 = getelementptr %union.acpi_object, ptr %8, i64 %idxprom2, !dbg !2325
  %handle4 = getelementptr inbounds %struct.anon.8, ptr %arrayidx3, i32 0, i32 2, !dbg !2329
  %10 = load ptr, ptr %handle4, align 8, !dbg !2329
  store ptr %10, ptr %dup, align 8, !dbg !2330
  %11 = load ptr, ptr %dup, align 8, !dbg !2331
  %12 = load ptr, ptr %rhandle, align 8, !dbg !2333
  %cmp5 = icmp eq ptr %11, %12, !dbg !2334
  br i1 %cmp5, label %if.then, label %if.end, !dbg !2335

if.then:                                          ; preds = %for.body
  store i1 true, ptr %retval, align 1, !dbg !2336
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2336

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2337

for.inc:                                          ; preds = %if.end
  %13 = load i32, ptr %j, align 4, !dbg !2338
  %inc = add i32 %13, 1, !dbg !2338
  store i32 %inc, ptr %j, align 4, !dbg !2338
  br label %for.cond, !dbg !2339, !llvm.loop !2340

for.end:                                          ; preds = %for.cond
  store i1 false, ptr %retval, align 1, !dbg !2342
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2342

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #14, !dbg !2343
  call void @llvm.lifetime.end.p0(i64 8, ptr %dup) #14, !dbg !2343
  call void @llvm.lifetime.end.p0(i64 8, ptr %rhandle) #14, !dbg !2343
  %14 = load i1, ptr %retval, align 1, !dbg !2343
  ret i1 %14, !dbg !2343
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @acpi_add_power_resource(ptr noundef %handle) #0 align 16 !dbg !2022 {
entry:
  %retval = alloca ptr, align 8
  %handle.addr = alloca ptr, align 8
  %device = alloca ptr, align 8
  %resource = alloca ptr, align 8
  %acpi_object = alloca %union.acpi_object, align 8
  %buffer = alloca %struct.acpi_buffer, align 8
  %status = alloca i32, align 4
  %state_dummy = alloca i8, align 1
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !2026, metadata !DIExpression()), !dbg !2344
  call void @llvm.lifetime.start.p0(i64 8, ptr %device) #14, !dbg !2345
  call void @llvm.dbg.declare(metadata ptr %device, metadata !2027, metadata !DIExpression()), !dbg !2346
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !2347
  %call = call ptr @acpi_fetch_acpi_dev(ptr noundef %0) #15, !dbg !2348
  store ptr %call, ptr %device, align 8, !dbg !2346
  call void @llvm.lifetime.start.p0(i64 8, ptr %resource) #14, !dbg !2349
  call void @llvm.dbg.declare(metadata ptr %resource, metadata !2028, metadata !DIExpression()), !dbg !2350
  call void @llvm.lifetime.start.p0(i64 24, ptr %acpi_object) #14, !dbg !2351
  call void @llvm.dbg.declare(metadata ptr %acpi_object, metadata !2029, metadata !DIExpression()), !dbg !2352
  call void @llvm.lifetime.start.p0(i64 16, ptr %buffer) #14, !dbg !2353
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !2030, metadata !DIExpression()), !dbg !2354
  %length = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 0, !dbg !2355
  store i64 24, ptr %length, align 8, !dbg !2355
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !2355
  store ptr %acpi_object, ptr %pointer, align 8, !dbg !2355
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !2356
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2036, metadata !DIExpression()), !dbg !2357
  call void @llvm.lifetime.start.p0(i64 1, ptr %state_dummy) #14, !dbg !2358
  call void @llvm.dbg.declare(metadata ptr %state_dummy, metadata !2037, metadata !DIExpression()), !dbg !2359
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #14, !dbg !2360
  call void @llvm.dbg.declare(metadata ptr %result, metadata !2038, metadata !DIExpression()), !dbg !2361
  %1 = load ptr, ptr %device, align 8, !dbg !2362
  %tobool = icmp ne ptr %1, null, !dbg !2362
  br i1 %tobool, label %if.then, label %if.end, !dbg !2364

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %device, align 8, !dbg !2365
  store ptr %2, ptr %retval, align 8, !dbg !2366
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2366

if.end:                                           ; preds = %entry
  %call1 = call noalias ptr @kzalloc(i64 noundef 1480, i32 noundef 3264) #16, !dbg !2367
  store ptr %call1, ptr %resource, align 8, !dbg !2368
  %3 = load ptr, ptr %resource, align 8, !dbg !2369
  %tobool2 = icmp ne ptr %3, null, !dbg !2369
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !2371

if.then3:                                         ; preds = %if.end
  store ptr null, ptr %retval, align 8, !dbg !2372
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2372

if.end4:                                          ; preds = %if.end
  %4 = load ptr, ptr %resource, align 8, !dbg !2373
  %device5 = getelementptr inbounds %struct.acpi_power_resource, ptr %4, i32 0, i32 0, !dbg !2374
  store ptr %device5, ptr %device, align 8, !dbg !2375
  %5 = load ptr, ptr %device, align 8, !dbg !2376
  %6 = load ptr, ptr %handle.addr, align 8, !dbg !2377
  call void @acpi_init_device_object(ptr noundef %5, ptr noundef %6, i32 noundef 1, ptr noundef @acpi_release_power_resource) #15, !dbg !2378
  br label %do.body, !dbg !2379

do.body:                                          ; preds = %if.end4
  %7 = load ptr, ptr %resource, align 8, !dbg !2380
  %resource_lock = getelementptr inbounds %struct.acpi_power_resource, ptr %7, i32 0, i32 6, !dbg !2380
  call void @__mutex_init(ptr noundef %resource_lock, ptr noundef @.str.7, ptr noundef @acpi_add_power_resource.__key) #15, !dbg !2380
  br label %do.cond, !dbg !2380

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2380

do.end:                                           ; preds = %do.cond
  %8 = load ptr, ptr %resource, align 8, !dbg !2382
  %list_node = getelementptr inbounds %struct.acpi_power_resource, ptr %8, i32 0, i32 1, !dbg !2383
  call void @INIT_LIST_HEAD(ptr noundef %list_node) #15, !dbg !2384
  %9 = load ptr, ptr %resource, align 8, !dbg !2385
  %dependents = getelementptr inbounds %struct.acpi_power_resource, ptr %9, i32 0, i32 7, !dbg !2386
  call void @INIT_LIST_HEAD(ptr noundef %dependents) #15, !dbg !2387
  %10 = load ptr, ptr %device, align 8, !dbg !2388
  %pnp = getelementptr inbounds %struct.acpi_device, ptr %10, i32 0, i32 8, !dbg !2388
  %device_name = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp, i32 0, i32 6, !dbg !2388
  %arraydecay = getelementptr inbounds [40 x i8], ptr %device_name, i64 0, i64 0, !dbg !2388
  %call6 = call ptr @strcpy(ptr noundef %arraydecay, ptr noundef @.str.8) #15, !dbg !2389
  %11 = load ptr, ptr %device, align 8, !dbg !2390
  %pnp7 = getelementptr inbounds %struct.acpi_device, ptr %11, i32 0, i32 8, !dbg !2390
  %device_class = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp7, i32 0, i32 7, !dbg !2390
  %arraydecay8 = getelementptr inbounds [20 x i8], ptr %device_class, i64 0, i64 0, !dbg !2390
  %call9 = call ptr @strcpy(ptr noundef %arraydecay8, ptr noundef @.str.9) #15, !dbg !2391
  %12 = load ptr, ptr %device, align 8, !dbg !2392
  %power = getelementptr inbounds %struct.acpi_device, ptr %12, i32 0, i32 9, !dbg !2393
  %state = getelementptr inbounds %struct.acpi_device_power, ptr %power, i32 0, i32 0, !dbg !2394
  store i32 255, ptr %state, align 8, !dbg !2395
  %13 = load ptr, ptr %device, align 8, !dbg !2396
  %flags = getelementptr inbounds %struct.acpi_device, ptr %13, i32 0, i32 7, !dbg !2397
  %bf.load = load i32, ptr %flags, align 4, !dbg !2398
  %bf.clear = and i32 %bf.load, -17, !dbg !2398
  %bf.set = or i32 %bf.clear, 16, !dbg !2398
  store i32 %bf.set, ptr %flags, align 4, !dbg !2398
  %14 = load ptr, ptr %handle.addr, align 8, !dbg !2399
  %call10 = call i32 @acpi_evaluate_object(ptr noundef %14, ptr noundef null, ptr noundef null, ptr noundef %buffer) #15, !dbg !2400
  store i32 %call10, ptr %status, align 4, !dbg !2401
  %15 = load i32, ptr %status, align 4, !dbg !2402
  %tobool11 = icmp ne i32 %15, 0, !dbg !2402
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !2404

if.then12:                                        ; preds = %do.end
  br label %err, !dbg !2405

if.end13:                                         ; preds = %do.end
  %system_level = getelementptr inbounds %struct.anon.10, ptr %acpi_object, i32 0, i32 1, !dbg !2406
  %16 = load i32, ptr %system_level, align 4, !dbg !2406
  %17 = load ptr, ptr %resource, align 8, !dbg !2407
  %system_level14 = getelementptr inbounds %struct.acpi_power_resource, ptr %17, i32 0, i32 2, !dbg !2408
  store i32 %16, ptr %system_level14, align 8, !dbg !2409
  %resource_order = getelementptr inbounds %struct.anon.10, ptr %acpi_object, i32 0, i32 2, !dbg !2410
  %18 = load i32, ptr %resource_order, align 8, !dbg !2410
  %19 = load ptr, ptr %resource, align 8, !dbg !2411
  %order = getelementptr inbounds %struct.acpi_power_resource, ptr %19, i32 0, i32 3, !dbg !2412
  store i32 %18, ptr %order, align 4, !dbg !2413
  %20 = load ptr, ptr %resource, align 8, !dbg !2414
  %state15 = getelementptr inbounds %struct.acpi_power_resource, ptr %20, i32 0, i32 5, !dbg !2415
  store i8 -1, ptr %state15, align 4, !dbg !2416
  %21 = load ptr, ptr %resource, align 8, !dbg !2417
  %call16 = call i32 @acpi_power_get_state(ptr noundef %21, ptr noundef %state_dummy) #15, !dbg !2419
  %tobool17 = icmp ne i32 %call16, 0, !dbg !2419
  br i1 %tobool17, label %if.then18, label %if.end20, !dbg !2420

if.then18:                                        ; preds = %if.end13
  %22 = load ptr, ptr %resource, align 8, !dbg !2421
  %call19 = call i32 @__acpi_power_on(ptr noundef %22) #15, !dbg !2422
  br label %if.end20, !dbg !2422

if.end20:                                         ; preds = %if.then18, %if.end13
  %23 = load ptr, ptr %handle.addr, align 8, !dbg !2423
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.1, ptr noundef %23, ptr noundef @.str.10) #15, !dbg !2423
  %24 = load ptr, ptr %device, align 8, !dbg !2424
  %call21 = call i32 @acpi_tie_acpi_dev(ptr noundef %24) #15, !dbg !2425
  store i32 %call21, ptr %result, align 4, !dbg !2426
  %25 = load i32, ptr %result, align 4, !dbg !2427
  %tobool22 = icmp ne i32 %25, 0, !dbg !2427
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !2429

if.then23:                                        ; preds = %if.end20
  br label %err, !dbg !2430

if.end24:                                         ; preds = %if.end20
  %26 = load ptr, ptr %device, align 8, !dbg !2431
  %call25 = call i32 @acpi_device_add(ptr noundef %26) #15, !dbg !2432
  store i32 %call25, ptr %result, align 4, !dbg !2433
  %27 = load i32, ptr %result, align 4, !dbg !2434
  %tobool26 = icmp ne i32 %27, 0, !dbg !2434
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !2436

if.then27:                                        ; preds = %if.end24
  br label %err, !dbg !2437

if.end28:                                         ; preds = %if.end24
  %28 = load ptr, ptr %device, align 8, !dbg !2438
  %dev = getelementptr inbounds %struct.acpi_device, ptr %28, i32 0, i32 18, !dbg !2440
  %call29 = call i32 @device_create_file(ptr noundef %dev, ptr noundef @dev_attr_resource_in_use) #15, !dbg !2441
  %tobool30 = icmp ne i32 %call29, 0, !dbg !2441
  br i1 %tobool30, label %if.end32, label %if.then31, !dbg !2442

if.then31:                                        ; preds = %if.end28
  %29 = load ptr, ptr %device, align 8, !dbg !2443
  %remove = getelementptr inbounds %struct.acpi_device, ptr %29, i32 0, i32 23, !dbg !2444
  store ptr @acpi_power_sysfs_remove, ptr %remove, align 8, !dbg !2445
  br label %if.end32, !dbg !2443

if.end32:                                         ; preds = %if.then31, %if.end28
  %30 = load ptr, ptr %resource, align 8, !dbg !2446
  call void @acpi_power_add_resource_to_list(ptr noundef %30) #15, !dbg !2447
  %31 = load ptr, ptr %device, align 8, !dbg !2448
  call void @acpi_device_add_finalize(ptr noundef %31) #15, !dbg !2449
  %32 = load ptr, ptr %device, align 8, !dbg !2450
  store ptr %32, ptr %retval, align 8, !dbg !2451
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2451

err:                                              ; preds = %if.then27, %if.then23, %if.then12
  call void @llvm.dbg.label(metadata !2039), !dbg !2452
  %33 = load ptr, ptr %device, align 8, !dbg !2453
  %dev33 = getelementptr inbounds %struct.acpi_device, ptr %33, i32 0, i32 18, !dbg !2454
  call void @acpi_release_power_resource(ptr noundef %dev33) #15, !dbg !2455
  store ptr null, ptr %retval, align 8, !dbg !2456
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2456

cleanup:                                          ; preds = %err, %if.end32, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #14, !dbg !2457
  call void @llvm.lifetime.end.p0(i64 1, ptr %state_dummy) #14, !dbg !2457
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !2457
  call void @llvm.lifetime.end.p0(i64 16, ptr %buffer) #14, !dbg !2457
  call void @llvm.lifetime.end.p0(i64 24, ptr %acpi_object) #14, !dbg !2457
  call void @llvm.lifetime.end.p0(i64 8, ptr %resource) #14, !dbg !2457
  call void @llvm.lifetime.end.p0(i64 8, ptr %device) #14, !dbg !2457
  %34 = load ptr, ptr %retval, align 8, !dbg !2457
  ret ptr %34, !dbg !2457
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_power_resources_list_add(ptr noundef %handle, ptr noundef %list) #0 align 16 !dbg !2458 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %list.addr = alloca ptr, align 8
  %resource = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %e = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr18 = alloca ptr, align 8
  %tmp21 = alloca ptr, align 8
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !2462, metadata !DIExpression()), !dbg !2475
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !2463, metadata !DIExpression()), !dbg !2476
  call void @llvm.lifetime.start.p0(i64 8, ptr %resource) #14, !dbg !2477
  call void @llvm.dbg.declare(metadata ptr %resource, metadata !2464, metadata !DIExpression()), !dbg !2478
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !2479
  %call = call ptr @acpi_power_get_context(ptr noundef %0) #15, !dbg !2480
  store ptr %call, ptr %resource, align 8, !dbg !2478
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #14, !dbg !2481
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !2465, metadata !DIExpression()), !dbg !2482
  %1 = load ptr, ptr %resource, align 8, !dbg !2483
  %tobool = icmp ne ptr %1, null, !dbg !2483
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !2485

lor.lhs.false:                                    ; preds = %entry
  %2 = load ptr, ptr %list.addr, align 8, !dbg !2486
  %tobool2 = icmp ne ptr %2, null, !dbg !2486
  br i1 %tobool2, label %if.end, label %if.then, !dbg !2487

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !2488
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup25, !dbg !2488

if.end:                                           ; preds = %lor.lhs.false
  %call3 = call noalias ptr @kzalloc(i64 noundef 24, i32 noundef 3264) #16, !dbg !2489
  store ptr %call3, ptr %entry1, align 8, !dbg !2490
  %3 = load ptr, ptr %entry1, align 8, !dbg !2491
  %tobool4 = icmp ne ptr %3, null, !dbg !2491
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !2493

if.then5:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !2494
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup25, !dbg !2494

if.end6:                                          ; preds = %if.end
  %4 = load ptr, ptr %resource, align 8, !dbg !2495
  %5 = load ptr, ptr %entry1, align 8, !dbg !2496
  %resource7 = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %5, i32 0, i32 1, !dbg !2497
  store ptr %4, ptr %resource7, align 8, !dbg !2498
  %6 = load ptr, ptr %list.addr, align 8, !dbg !2499
  %call8 = call i32 @list_empty(ptr noundef %6) #15, !dbg !2500
  %tobool9 = icmp ne i32 %call8, 0, !dbg !2500
  br i1 %tobool9, label %if.end23, label %if.then10, !dbg !2501

if.then10:                                        ; preds = %if.end6
  call void @llvm.lifetime.start.p0(i64 8, ptr %e) #14, !dbg !2502
  call void @llvm.dbg.declare(metadata ptr %e, metadata !2466, metadata !DIExpression()), !dbg !2503
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !2504
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2469, metadata !DIExpression()), !dbg !2504
  %7 = load ptr, ptr %list.addr, align 8, !dbg !2504
  %next = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 0, !dbg !2504
  %8 = load ptr, ptr %next, align 8, !dbg !2504
  store ptr %8, ptr %__mptr, align 8, !dbg !2504
  %9 = load ptr, ptr %__mptr, align 8, !dbg !2504
  %add.ptr = getelementptr i8, ptr %9, i64 0, !dbg !2504
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2504
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !2505
  %10 = load ptr, ptr %tmp, align 8, !dbg !2504
  store ptr %10, ptr %e, align 8, !dbg !2505
  br label %for.cond, !dbg !2505

for.cond:                                         ; preds = %for.inc, %if.then10
  %11 = load ptr, ptr %e, align 8, !dbg !2506
  %node = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %11, i32 0, i32 0, !dbg !2506
  %12 = load ptr, ptr %list.addr, align 8, !dbg !2506
  %cmp = icmp eq ptr %node, %12, !dbg !2506
  %lnot = xor i1 %cmp, true, !dbg !2506
  br i1 %lnot, label %for.body, label %for.end, !dbg !2505

for.body:                                         ; preds = %for.cond
  %13 = load ptr, ptr %e, align 8, !dbg !2507
  %resource11 = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %13, i32 0, i32 1, !dbg !2509
  %14 = load ptr, ptr %resource11, align 8, !dbg !2509
  %order = getelementptr inbounds %struct.acpi_power_resource, ptr %14, i32 0, i32 3, !dbg !2510
  %15 = load i32, ptr %order, align 4, !dbg !2510
  %16 = load ptr, ptr %resource, align 8, !dbg !2511
  %order12 = getelementptr inbounds %struct.acpi_power_resource, ptr %16, i32 0, i32 3, !dbg !2512
  %17 = load i32, ptr %order12, align 4, !dbg !2512
  %cmp13 = icmp ugt i32 %15, %17, !dbg !2513
  br i1 %cmp13, label %if.then14, label %if.end17, !dbg !2514

if.then14:                                        ; preds = %for.body
  %18 = load ptr, ptr %entry1, align 8, !dbg !2515
  %node15 = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %18, i32 0, i32 0, !dbg !2517
  %19 = load ptr, ptr %e, align 8, !dbg !2518
  %node16 = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %19, i32 0, i32 0, !dbg !2519
  call void @list_add_tail(ptr noundef %node15, ptr noundef %node16) #15, !dbg !2520
  store i32 0, ptr %retval, align 4, !dbg !2521
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2521

if.end17:                                         ; preds = %for.body
  br label %for.inc, !dbg !2512

for.inc:                                          ; preds = %if.end17
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr18) #14, !dbg !2522
  call void @llvm.dbg.declare(metadata ptr %__mptr18, metadata !2472, metadata !DIExpression()), !dbg !2522
  %20 = load ptr, ptr %e, align 8, !dbg !2522
  %node19 = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %20, i32 0, i32 0, !dbg !2522
  %next20 = getelementptr inbounds %struct.list_head, ptr %node19, i32 0, i32 0, !dbg !2522
  %21 = load ptr, ptr %next20, align 8, !dbg !2522
  store ptr %21, ptr %__mptr18, align 8, !dbg !2522
  %22 = load ptr, ptr %__mptr18, align 8, !dbg !2522
  %add.ptr22 = getelementptr i8, ptr %22, i64 0, !dbg !2522
  store ptr %add.ptr22, ptr %tmp21, align 8, !dbg !2522
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr18) #14, !dbg !2506
  %23 = load ptr, ptr %tmp21, align 8, !dbg !2522
  store ptr %23, ptr %e, align 8, !dbg !2506
  br label %for.cond, !dbg !2506, !llvm.loop !2523

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2525
  br label %cleanup, !dbg !2525

cleanup:                                          ; preds = %for.end, %if.then14
  call void @llvm.lifetime.end.p0(i64 8, ptr %e) #14, !dbg !2525
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup25 [
    i32 0, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end23, !dbg !2526

if.end23:                                         ; preds = %cleanup.cont, %if.end6
  %24 = load ptr, ptr %entry1, align 8, !dbg !2527
  %node24 = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %24, i32 0, i32 0, !dbg !2528
  %25 = load ptr, ptr %list.addr, align 8, !dbg !2529
  call void @list_add_tail(ptr noundef %node24, ptr noundef %25) #15, !dbg !2530
  store i32 0, ptr %retval, align 4, !dbg !2531
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup25, !dbg !2531

cleanup25:                                        ; preds = %if.end23, %cleanup, %if.then5, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #14, !dbg !2532
  call void @llvm.lifetime.end.p0(i64 8, ptr %resource) #14, !dbg !2532
  %26 = load i32, ptr %retval, align 4, !dbg !2532
  ret i32 %26, !dbg !2532
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_device_power_add_dependent(ptr noundef %adev, ptr noundef %dev) #0 align 16 !dbg !2533 {
entry:
  %retval = alloca i32, align 4
  %adev.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %resources = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr6 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %__mptr11 = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  %__mptr22 = alloca ptr, align 8
  %tmp25 = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !2537, metadata !DIExpression()), !dbg !2555
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2538, metadata !DIExpression()), !dbg !2556
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #14, !dbg !2557
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !2539, metadata !DIExpression()), !dbg !2558
  call void @llvm.lifetime.start.p0(i64 8, ptr %resources) #14, !dbg !2559
  call void @llvm.dbg.declare(metadata ptr %resources, metadata !2540, metadata !DIExpression()), !dbg !2560
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !2561
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2541, metadata !DIExpression()), !dbg !2562
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !2563
  %flags = getelementptr inbounds %struct.acpi_device, ptr %0, i32 0, i32 7, !dbg !2565
  %bf.load = load i32, ptr %flags, align 4, !dbg !2566
  %bf.lshr = lshr i32 %bf.load, 3, !dbg !2566
  %bf.clear = and i32 %bf.lshr, 1, !dbg !2566
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !2563
  br i1 %tobool, label %if.end, label %if.then, !dbg !2567

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2568
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2568

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %adev.addr, align 8, !dbg !2569
  %power = getelementptr inbounds %struct.acpi_device, ptr %1, i32 0, i32 9, !dbg !2570
  %states = getelementptr inbounds %struct.acpi_device_power, ptr %power, i32 0, i32 2, !dbg !2571
  %arrayidx = getelementptr [5 x %struct.acpi_device_power_state], ptr %states, i64 0, i64 0, !dbg !2569
  %resources2 = getelementptr inbounds %struct.acpi_device_power_state, ptr %arrayidx, i32 0, i32 3, !dbg !2572
  store ptr %resources2, ptr %resources, align 8, !dbg !2573
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !2574
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2542, metadata !DIExpression()), !dbg !2574
  %2 = load ptr, ptr %resources, align 8, !dbg !2574
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !2574
  %3 = load ptr, ptr %next, align 8, !dbg !2574
  store ptr %3, ptr %__mptr, align 8, !dbg !2574
  %4 = load ptr, ptr %__mptr, align 8, !dbg !2574
  %add.ptr = getelementptr i8, ptr %4, i64 0, !dbg !2574
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2574
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !2575
  %5 = load ptr, ptr %tmp, align 8, !dbg !2574
  store ptr %5, ptr %entry1, align 8, !dbg !2575
  br label %for.cond, !dbg !2575

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load ptr, ptr %entry1, align 8, !dbg !2576
  %node = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %6, i32 0, i32 0, !dbg !2576
  %7 = load ptr, ptr %resources, align 8, !dbg !2576
  %cmp = icmp eq ptr %node, %7, !dbg !2576
  %lnot = xor i1 %cmp, true, !dbg !2576
  br i1 %lnot, label %for.body, label %for.end, !dbg !2575

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %entry1, align 8, !dbg !2577
  %resource = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %8, i32 0, i32 1, !dbg !2579
  %9 = load ptr, ptr %resource, align 8, !dbg !2579
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !2580
  %call = call i32 @acpi_power_resource_add_dependent(ptr noundef %9, ptr noundef %10) #15, !dbg !2581
  store i32 %call, ptr %ret, align 4, !dbg !2582
  %11 = load i32, ptr %ret, align 4, !dbg !2583
  %tobool3 = icmp ne i32 %11, 0, !dbg !2583
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2585

if.then4:                                         ; preds = %for.body
  br label %err, !dbg !2586

if.end5:                                          ; preds = %for.body
  br label %for.inc, !dbg !2587

for.inc:                                          ; preds = %if.end5
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr6) #14, !dbg !2588
  call void @llvm.dbg.declare(metadata ptr %__mptr6, metadata !2545, metadata !DIExpression()), !dbg !2588
  %12 = load ptr, ptr %entry1, align 8, !dbg !2588
  %node7 = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %12, i32 0, i32 0, !dbg !2588
  %next8 = getelementptr inbounds %struct.list_head, ptr %node7, i32 0, i32 0, !dbg !2588
  %13 = load ptr, ptr %next8, align 8, !dbg !2588
  store ptr %13, ptr %__mptr6, align 8, !dbg !2588
  %14 = load ptr, ptr %__mptr6, align 8, !dbg !2588
  %add.ptr10 = getelementptr i8, ptr %14, i64 0, !dbg !2588
  store ptr %add.ptr10, ptr %tmp9, align 8, !dbg !2588
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr6) #14, !dbg !2576
  %15 = load ptr, ptr %tmp9, align 8, !dbg !2588
  store ptr %15, ptr %entry1, align 8, !dbg !2576
  br label %for.cond, !dbg !2576, !llvm.loop !2589

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !2591
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2591

err:                                              ; preds = %if.then4
  call void @llvm.dbg.label(metadata !2548), !dbg !2592
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr11) #14, !dbg !2593
  call void @llvm.dbg.declare(metadata ptr %__mptr11, metadata !2549, metadata !DIExpression()), !dbg !2593
  %16 = load ptr, ptr %resources, align 8, !dbg !2593
  %next12 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 0, !dbg !2593
  %17 = load ptr, ptr %next12, align 8, !dbg !2593
  store ptr %17, ptr %__mptr11, align 8, !dbg !2593
  %18 = load ptr, ptr %__mptr11, align 8, !dbg !2593
  %add.ptr14 = getelementptr i8, ptr %18, i64 0, !dbg !2593
  store ptr %add.ptr14, ptr %tmp13, align 8, !dbg !2593
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr11) #14, !dbg !2594
  %19 = load ptr, ptr %tmp13, align 8, !dbg !2593
  store ptr %19, ptr %entry1, align 8, !dbg !2594
  br label %for.cond15, !dbg !2594

for.cond15:                                       ; preds = %for.inc21, %err
  %20 = load ptr, ptr %entry1, align 8, !dbg !2595
  %node16 = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %20, i32 0, i32 0, !dbg !2595
  %21 = load ptr, ptr %resources, align 8, !dbg !2595
  %cmp17 = icmp eq ptr %node16, %21, !dbg !2595
  %lnot18 = xor i1 %cmp17, true, !dbg !2595
  br i1 %lnot18, label %for.body19, label %for.end27, !dbg !2594

for.body19:                                       ; preds = %for.cond15
  %22 = load ptr, ptr %entry1, align 8, !dbg !2596
  %resource20 = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %22, i32 0, i32 1, !dbg !2597
  %23 = load ptr, ptr %resource20, align 8, !dbg !2597
  %24 = load ptr, ptr %dev.addr, align 8, !dbg !2598
  call void @acpi_power_resource_remove_dependent(ptr noundef %23, ptr noundef %24) #15, !dbg !2599
  br label %for.inc21, !dbg !2599

for.inc21:                                        ; preds = %for.body19
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr22) #14, !dbg !2600
  call void @llvm.dbg.declare(metadata ptr %__mptr22, metadata !2552, metadata !DIExpression()), !dbg !2600
  %25 = load ptr, ptr %entry1, align 8, !dbg !2600
  %node23 = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %25, i32 0, i32 0, !dbg !2600
  %next24 = getelementptr inbounds %struct.list_head, ptr %node23, i32 0, i32 0, !dbg !2600
  %26 = load ptr, ptr %next24, align 8, !dbg !2600
  store ptr %26, ptr %__mptr22, align 8, !dbg !2600
  %27 = load ptr, ptr %__mptr22, align 8, !dbg !2600
  %add.ptr26 = getelementptr i8, ptr %27, i64 0, !dbg !2600
  store ptr %add.ptr26, ptr %tmp25, align 8, !dbg !2600
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr22) #14, !dbg !2595
  %28 = load ptr, ptr %tmp25, align 8, !dbg !2600
  store ptr %28, ptr %entry1, align 8, !dbg !2595
  br label %for.cond15, !dbg !2595, !llvm.loop !2601

for.end27:                                        ; preds = %for.cond15
  %29 = load i32, ptr %ret, align 4, !dbg !2603
  store i32 %29, ptr %retval, align 4, !dbg !2604
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2604

cleanup:                                          ; preds = %for.end27, %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !2605
  call void @llvm.lifetime.end.p0(i64 8, ptr %resources) #14, !dbg !2605
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #14, !dbg !2605
  %30 = load i32, ptr %retval, align 4, !dbg !2605
  ret i32 %30, !dbg !2605
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_power_resource_add_dependent(ptr noundef %resource, ptr noundef %dev) #0 align 16 !dbg !2606 {
entry:
  %resource.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %dep = alloca ptr, align 8
  %ret = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr4 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  store ptr %resource, ptr %resource.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %resource.addr, metadata !2610, metadata !DIExpression()), !dbg !2621
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2611, metadata !DIExpression()), !dbg !2622
  call void @llvm.lifetime.start.p0(i64 8, ptr %dep) #14, !dbg !2623
  call void @llvm.dbg.declare(metadata ptr %dep, metadata !2612, metadata !DIExpression()), !dbg !2624
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !2625
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2613, metadata !DIExpression()), !dbg !2626
  store i32 0, ptr %ret, align 4, !dbg !2626
  %0 = load ptr, ptr %resource.addr, align 8, !dbg !2627
  %resource_lock = getelementptr inbounds %struct.acpi_power_resource, ptr %0, i32 0, i32 6, !dbg !2628
  call void @mutex_lock(ptr noundef %resource_lock) #15, !dbg !2629
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !2630
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2614, metadata !DIExpression()), !dbg !2630
  %1 = load ptr, ptr %resource.addr, align 8, !dbg !2630
  %dependents = getelementptr inbounds %struct.acpi_power_resource, ptr %1, i32 0, i32 7, !dbg !2630
  %next = getelementptr inbounds %struct.list_head, ptr %dependents, i32 0, i32 0, !dbg !2630
  %2 = load ptr, ptr %next, align 8, !dbg !2630
  store ptr %2, ptr %__mptr, align 8, !dbg !2630
  %3 = load ptr, ptr %__mptr, align 8, !dbg !2630
  %add.ptr = getelementptr i8, ptr %3, i64 -8, !dbg !2630
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2630
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !2631
  %4 = load ptr, ptr %tmp, align 8, !dbg !2630
  store ptr %4, ptr %dep, align 8, !dbg !2631
  br label %for.cond, !dbg !2631

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load ptr, ptr %dep, align 8, !dbg !2632
  %node = getelementptr inbounds %struct.acpi_power_dependent_device, ptr %5, i32 0, i32 1, !dbg !2632
  %6 = load ptr, ptr %resource.addr, align 8, !dbg !2632
  %dependents1 = getelementptr inbounds %struct.acpi_power_resource, ptr %6, i32 0, i32 7, !dbg !2632
  %cmp = icmp eq ptr %node, %dependents1, !dbg !2632
  %lnot = xor i1 %cmp, true, !dbg !2632
  br i1 %lnot, label %for.body, label %for.end, !dbg !2631

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %dep, align 8, !dbg !2633
  %dev2 = getelementptr inbounds %struct.acpi_power_dependent_device, ptr %7, i32 0, i32 0, !dbg !2636
  %8 = load ptr, ptr %dev2, align 8, !dbg !2636
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !2637
  %cmp3 = icmp eq ptr %8, %9, !dbg !2638
  br i1 %cmp3, label %if.then, label %if.end, !dbg !2639

if.then:                                          ; preds = %for.body
  br label %unlock, !dbg !2640

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2641

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr4) #14, !dbg !2642
  call void @llvm.dbg.declare(metadata ptr %__mptr4, metadata !2617, metadata !DIExpression()), !dbg !2642
  %10 = load ptr, ptr %dep, align 8, !dbg !2642
  %node5 = getelementptr inbounds %struct.acpi_power_dependent_device, ptr %10, i32 0, i32 1, !dbg !2642
  %next6 = getelementptr inbounds %struct.list_head, ptr %node5, i32 0, i32 0, !dbg !2642
  %11 = load ptr, ptr %next6, align 8, !dbg !2642
  store ptr %11, ptr %__mptr4, align 8, !dbg !2642
  %12 = load ptr, ptr %__mptr4, align 8, !dbg !2642
  %add.ptr8 = getelementptr i8, ptr %12, i64 -8, !dbg !2642
  store ptr %add.ptr8, ptr %tmp7, align 8, !dbg !2642
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr4) #14, !dbg !2632
  %13 = load ptr, ptr %tmp7, align 8, !dbg !2642
  store ptr %13, ptr %dep, align 8, !dbg !2632
  br label %for.cond, !dbg !2632, !llvm.loop !2643

for.end:                                          ; preds = %for.cond
  %call = call noalias ptr @kzalloc(i64 noundef 24, i32 noundef 3264) #16, !dbg !2645
  store ptr %call, ptr %dep, align 8, !dbg !2646
  %14 = load ptr, ptr %dep, align 8, !dbg !2647
  %tobool = icmp ne ptr %14, null, !dbg !2647
  br i1 %tobool, label %if.end10, label %if.then9, !dbg !2649

if.then9:                                         ; preds = %for.end
  store i32 -12, ptr %ret, align 4, !dbg !2650
  br label %unlock, !dbg !2652

if.end10:                                         ; preds = %for.end
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !2653
  %16 = load ptr, ptr %dep, align 8, !dbg !2654
  %dev11 = getelementptr inbounds %struct.acpi_power_dependent_device, ptr %16, i32 0, i32 0, !dbg !2655
  store ptr %15, ptr %dev11, align 8, !dbg !2656
  %17 = load ptr, ptr %dep, align 8, !dbg !2657
  %node12 = getelementptr inbounds %struct.acpi_power_dependent_device, ptr %17, i32 0, i32 1, !dbg !2658
  %18 = load ptr, ptr %resource.addr, align 8, !dbg !2659
  %dependents13 = getelementptr inbounds %struct.acpi_power_resource, ptr %18, i32 0, i32 7, !dbg !2660
  call void @list_add_tail(ptr noundef %node12, ptr noundef %dependents13) #15, !dbg !2661
  br label %unlock, !dbg !2662

unlock:                                           ; preds = %if.end10, %if.then9, %if.then
  call void @llvm.dbg.label(metadata !2620), !dbg !2663
  %19 = load ptr, ptr %resource.addr, align 8, !dbg !2664
  %resource_lock14 = getelementptr inbounds %struct.acpi_power_resource, ptr %19, i32 0, i32 6, !dbg !2665
  call void @mutex_unlock(ptr noundef %resource_lock14) #15, !dbg !2666
  %20 = load i32, ptr %ret, align 4, !dbg !2667
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !2668
  call void @llvm.lifetime.end.p0(i64 8, ptr %dep) #14, !dbg !2668
  ret i32 %20, !dbg !2669
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_power_resource_remove_dependent(ptr noundef %resource, ptr noundef %dev) #0 align 16 !dbg !2670 {
entry:
  %resource.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %dep = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr5 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  store ptr %resource, ptr %resource.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %resource.addr, metadata !2674, metadata !DIExpression()), !dbg !2683
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2675, metadata !DIExpression()), !dbg !2684
  call void @llvm.lifetime.start.p0(i64 8, ptr %dep) #14, !dbg !2685
  call void @llvm.dbg.declare(metadata ptr %dep, metadata !2676, metadata !DIExpression()), !dbg !2686
  %0 = load ptr, ptr %resource.addr, align 8, !dbg !2687
  %resource_lock = getelementptr inbounds %struct.acpi_power_resource, ptr %0, i32 0, i32 6, !dbg !2688
  call void @mutex_lock(ptr noundef %resource_lock) #15, !dbg !2689
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !2690
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2677, metadata !DIExpression()), !dbg !2690
  %1 = load ptr, ptr %resource.addr, align 8, !dbg !2690
  %dependents = getelementptr inbounds %struct.acpi_power_resource, ptr %1, i32 0, i32 7, !dbg !2690
  %next = getelementptr inbounds %struct.list_head, ptr %dependents, i32 0, i32 0, !dbg !2690
  %2 = load ptr, ptr %next, align 8, !dbg !2690
  store ptr %2, ptr %__mptr, align 8, !dbg !2690
  %3 = load ptr, ptr %__mptr, align 8, !dbg !2690
  %add.ptr = getelementptr i8, ptr %3, i64 -8, !dbg !2690
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2690
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !2691
  %4 = load ptr, ptr %tmp, align 8, !dbg !2690
  store ptr %4, ptr %dep, align 8, !dbg !2691
  br label %for.cond, !dbg !2691

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load ptr, ptr %dep, align 8, !dbg !2692
  %node = getelementptr inbounds %struct.acpi_power_dependent_device, ptr %5, i32 0, i32 1, !dbg !2692
  %6 = load ptr, ptr %resource.addr, align 8, !dbg !2692
  %dependents1 = getelementptr inbounds %struct.acpi_power_resource, ptr %6, i32 0, i32 7, !dbg !2692
  %cmp = icmp eq ptr %node, %dependents1, !dbg !2692
  %lnot = xor i1 %cmp, true, !dbg !2692
  br i1 %lnot, label %for.body, label %for.end, !dbg !2691

for.body:                                         ; preds = %for.cond
  %7 = load ptr, ptr %dep, align 8, !dbg !2693
  %dev2 = getelementptr inbounds %struct.acpi_power_dependent_device, ptr %7, i32 0, i32 0, !dbg !2696
  %8 = load ptr, ptr %dev2, align 8, !dbg !2696
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !2697
  %cmp3 = icmp eq ptr %8, %9, !dbg !2698
  br i1 %cmp3, label %if.then, label %if.end, !dbg !2699

if.then:                                          ; preds = %for.body
  %10 = load ptr, ptr %dep, align 8, !dbg !2700
  %node4 = getelementptr inbounds %struct.acpi_power_dependent_device, ptr %10, i32 0, i32 1, !dbg !2702
  call void @list_del(ptr noundef %node4) #15, !dbg !2703
  %11 = load ptr, ptr %dep, align 8, !dbg !2704
  call void @kfree(ptr noundef %11) #15, !dbg !2705
  br label %for.end, !dbg !2706

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2707

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr5) #14, !dbg !2708
  call void @llvm.dbg.declare(metadata ptr %__mptr5, metadata !2680, metadata !DIExpression()), !dbg !2708
  %12 = load ptr, ptr %dep, align 8, !dbg !2708
  %node6 = getelementptr inbounds %struct.acpi_power_dependent_device, ptr %12, i32 0, i32 1, !dbg !2708
  %next7 = getelementptr inbounds %struct.list_head, ptr %node6, i32 0, i32 0, !dbg !2708
  %13 = load ptr, ptr %next7, align 8, !dbg !2708
  store ptr %13, ptr %__mptr5, align 8, !dbg !2708
  %14 = load ptr, ptr %__mptr5, align 8, !dbg !2708
  %add.ptr9 = getelementptr i8, ptr %14, i64 -8, !dbg !2708
  store ptr %add.ptr9, ptr %tmp8, align 8, !dbg !2708
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr5) #14, !dbg !2692
  %15 = load ptr, ptr %tmp8, align 8, !dbg !2708
  store ptr %15, ptr %dep, align 8, !dbg !2692
  br label %for.cond, !dbg !2692, !llvm.loop !2709

for.end:                                          ; preds = %if.then, %for.cond
  %16 = load ptr, ptr %resource.addr, align 8, !dbg !2711
  %resource_lock10 = getelementptr inbounds %struct.acpi_power_resource, ptr %16, i32 0, i32 6, !dbg !2712
  call void @mutex_unlock(ptr noundef %resource_lock10) #15, !dbg !2713
  call void @llvm.lifetime.end.p0(i64 8, ptr %dep) #14, !dbg !2714
  ret void, !dbg !2714
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_device_power_remove_dependent(ptr noundef %adev, ptr noundef %dev) #0 align 16 !dbg !2715 {
entry:
  %adev.addr = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %resources = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr3 = alloca ptr, align 8
  %tmp6 = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !2719, metadata !DIExpression()), !dbg !2729
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2720, metadata !DIExpression()), !dbg !2730
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #14, !dbg !2731
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !2721, metadata !DIExpression()), !dbg !2732
  call void @llvm.lifetime.start.p0(i64 8, ptr %resources) #14, !dbg !2733
  call void @llvm.dbg.declare(metadata ptr %resources, metadata !2722, metadata !DIExpression()), !dbg !2734
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !2735
  %flags = getelementptr inbounds %struct.acpi_device, ptr %0, i32 0, i32 7, !dbg !2737
  %bf.load = load i32, ptr %flags, align 4, !dbg !2738
  %bf.lshr = lshr i32 %bf.load, 3, !dbg !2738
  %bf.clear = and i32 %bf.lshr, 1, !dbg !2738
  %tobool = icmp ne i32 %bf.clear, 0, !dbg !2735
  br i1 %tobool, label %if.end, label %if.then, !dbg !2739

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2740

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %adev.addr, align 8, !dbg !2741
  %power = getelementptr inbounds %struct.acpi_device, ptr %1, i32 0, i32 9, !dbg !2742
  %states = getelementptr inbounds %struct.acpi_device_power, ptr %power, i32 0, i32 2, !dbg !2743
  %arrayidx = getelementptr [5 x %struct.acpi_device_power_state], ptr %states, i64 0, i64 0, !dbg !2741
  %resources2 = getelementptr inbounds %struct.acpi_device_power_state, ptr %arrayidx, i32 0, i32 3, !dbg !2744
  store ptr %resources2, ptr %resources, align 8, !dbg !2745
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !2746
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2723, metadata !DIExpression()), !dbg !2746
  %2 = load ptr, ptr %resources, align 8, !dbg !2746
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !2746
  %3 = load ptr, ptr %prev, align 8, !dbg !2746
  store ptr %3, ptr %__mptr, align 8, !dbg !2746
  %4 = load ptr, ptr %__mptr, align 8, !dbg !2746
  %add.ptr = getelementptr i8, ptr %4, i64 0, !dbg !2746
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2746
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !2747
  %5 = load ptr, ptr %tmp, align 8, !dbg !2746
  store ptr %5, ptr %entry1, align 8, !dbg !2747
  br label %for.cond, !dbg !2747

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load ptr, ptr %entry1, align 8, !dbg !2748
  %node = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %6, i32 0, i32 0, !dbg !2748
  %7 = load ptr, ptr %resources, align 8, !dbg !2748
  %cmp = icmp eq ptr %node, %7, !dbg !2748
  %lnot = xor i1 %cmp, true, !dbg !2748
  br i1 %lnot, label %for.body, label %for.end, !dbg !2747

for.body:                                         ; preds = %for.cond
  %8 = load ptr, ptr %entry1, align 8, !dbg !2749
  %resource = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %8, i32 0, i32 1, !dbg !2750
  %9 = load ptr, ptr %resource, align 8, !dbg !2750
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !2751
  call void @acpi_power_resource_remove_dependent(ptr noundef %9, ptr noundef %10) #15, !dbg !2752
  br label %for.inc, !dbg !2752

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr3) #14, !dbg !2753
  call void @llvm.dbg.declare(metadata ptr %__mptr3, metadata !2726, metadata !DIExpression()), !dbg !2753
  %11 = load ptr, ptr %entry1, align 8, !dbg !2753
  %node4 = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %11, i32 0, i32 0, !dbg !2753
  %prev5 = getelementptr inbounds %struct.list_head, ptr %node4, i32 0, i32 1, !dbg !2753
  %12 = load ptr, ptr %prev5, align 8, !dbg !2753
  store ptr %12, ptr %__mptr3, align 8, !dbg !2753
  %13 = load ptr, ptr %__mptr3, align 8, !dbg !2753
  %add.ptr7 = getelementptr i8, ptr %13, i64 0, !dbg !2753
  store ptr %add.ptr7, ptr %tmp6, align 8, !dbg !2753
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr3) #14, !dbg !2748
  %14 = load ptr, ptr %tmp6, align 8, !dbg !2753
  store ptr %14, ptr %entry1, align 8, !dbg !2748
  br label %for.cond, !dbg !2748, !llvm.loop !2754

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2756
  br label %cleanup, !dbg !2756

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %resources) #14, !dbg !2756
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #14, !dbg !2756
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2756

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_power_add_remove_device(ptr noundef %adev, i1 noundef zeroext %add) #0 align 16 !dbg !2757 {
entry:
  %adev.addr = alloca ptr, align 8
  %add.addr = alloca i8, align 1
  %state = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !2761, metadata !DIExpression()), !dbg !2764
  %frombool = zext i1 %add to i8
  store i8 %frombool, ptr %add.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %add.addr, metadata !2762, metadata !DIExpression()), !dbg !2765
  call void @llvm.lifetime.start.p0(i64 4, ptr %state) #14, !dbg !2766
  call void @llvm.dbg.declare(metadata ptr %state, metadata !2763, metadata !DIExpression()), !dbg !2767
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !2768
  %wakeup = getelementptr inbounds %struct.acpi_device, ptr %0, i32 0, i32 10, !dbg !2770
  %flags = getelementptr inbounds %struct.acpi_device_wakeup, ptr %wakeup, i32 0, i32 4, !dbg !2771
  %bf.load = load i8, ptr %flags, align 8, !dbg !2772
  %bf.clear = and i8 %bf.load, 1, !dbg !2772
  %tobool = icmp ne i8 %bf.clear, 0, !dbg !2768
  br i1 %tobool, label %if.then, label %if.end, !dbg !2773

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %adev.addr, align 8, !dbg !2774
  %2 = load ptr, ptr %adev.addr, align 8, !dbg !2775
  %wakeup1 = getelementptr inbounds %struct.acpi_device, ptr %2, i32 0, i32 10, !dbg !2776
  %resources = getelementptr inbounds %struct.acpi_device_wakeup, ptr %wakeup1, i32 0, i32 3, !dbg !2777
  %3 = load i8, ptr %add.addr, align 1, !dbg !2778, !range !2779, !noundef !396
  %tobool2 = trunc i8 %3 to i1, !dbg !2778
  call void @acpi_power_expose_hide(ptr noundef %1, ptr noundef %resources, ptr noundef @wakeup_attr_group, i1 noundef zeroext %tobool2) #15, !dbg !2780
  br label %if.end, !dbg !2780

if.end:                                           ; preds = %if.then, %entry
  %4 = load ptr, ptr %adev.addr, align 8, !dbg !2781
  %power = getelementptr inbounds %struct.acpi_device, ptr %4, i32 0, i32 9, !dbg !2783
  %flags3 = getelementptr inbounds %struct.acpi_device_power, ptr %power, i32 0, i32 1, !dbg !2784
  %bf.load4 = load i32, ptr %flags3, align 4, !dbg !2785
  %bf.lshr = lshr i32 %bf.load4, 1, !dbg !2785
  %bf.clear5 = and i32 %bf.lshr, 1, !dbg !2785
  %tobool6 = icmp ne i32 %bf.clear5, 0, !dbg !2781
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !2786

if.then7:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2787

if.end8:                                          ; preds = %if.end
  store i32 0, ptr %state, align 4, !dbg !2788
  br label %for.cond, !dbg !2790

for.cond:                                         ; preds = %for.inc, %if.end8
  %5 = load i32, ptr %state, align 4, !dbg !2791
  %cmp = icmp sle i32 %5, 3, !dbg !2793
  br i1 %cmp, label %for.body, label %for.end, !dbg !2794

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %adev.addr, align 8, !dbg !2795
  %7 = load ptr, ptr %adev.addr, align 8, !dbg !2796
  %power9 = getelementptr inbounds %struct.acpi_device, ptr %7, i32 0, i32 9, !dbg !2797
  %states = getelementptr inbounds %struct.acpi_device_power, ptr %power9, i32 0, i32 2, !dbg !2798
  %8 = load i32, ptr %state, align 4, !dbg !2799
  %idxprom = sext i32 %8 to i64, !dbg !2796
  %arrayidx = getelementptr [5 x %struct.acpi_device_power_state], ptr %states, i64 0, i64 %idxprom, !dbg !2796
  %resources10 = getelementptr inbounds %struct.acpi_device_power_state, ptr %arrayidx, i32 0, i32 3, !dbg !2800
  %9 = load i32, ptr %state, align 4, !dbg !2801
  %idxprom11 = sext i32 %9 to i64, !dbg !2802
  %arrayidx12 = getelementptr [4 x %struct.attribute_group], ptr @attr_groups, i64 0, i64 %idxprom11, !dbg !2802
  %10 = load i8, ptr %add.addr, align 1, !dbg !2803, !range !2779, !noundef !396
  %tobool13 = trunc i8 %10 to i1, !dbg !2803
  call void @acpi_power_expose_hide(ptr noundef %6, ptr noundef %resources10, ptr noundef %arrayidx12, i1 noundef zeroext %tobool13) #15, !dbg !2804
  br label %for.inc, !dbg !2804

for.inc:                                          ; preds = %for.body
  %11 = load i32, ptr %state, align 4, !dbg !2805
  %inc = add i32 %11, 1, !dbg !2805
  store i32 %inc, ptr %state, align 4, !dbg !2805
  br label %for.cond, !dbg !2806, !llvm.loop !2807

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2809
  br label %cleanup, !dbg !2809

cleanup:                                          ; preds = %for.end, %if.then7
  call void @llvm.lifetime.end.p0(i64 4, ptr %state) #14, !dbg !2809
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !2809

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_power_expose_hide(ptr noundef %adev, ptr noundef %resources, ptr noundef %attr_group, i1 noundef zeroext %expose) #0 align 16 !dbg !2810 {
entry:
  %adev.addr = alloca ptr, align 8
  %resources.addr = alloca ptr, align 8
  %attr_group.addr = alloca ptr, align 8
  %expose.addr = alloca i8, align 1
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !2814, metadata !DIExpression()), !dbg !2818
  store ptr %resources, ptr %resources.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %resources.addr, metadata !2815, metadata !DIExpression()), !dbg !2819
  store ptr %attr_group, ptr %attr_group.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr_group.addr, metadata !2816, metadata !DIExpression()), !dbg !2820
  %frombool = zext i1 %expose to i8
  store i8 %frombool, ptr %expose.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %expose.addr, metadata !2817, metadata !DIExpression()), !dbg !2821
  %0 = load i8, ptr %expose.addr, align 1, !dbg !2822, !range !2779, !noundef !396
  %tobool = trunc i8 %0 to i1, !dbg !2822
  br i1 %tobool, label %if.then, label %if.else, !dbg !2824

if.then:                                          ; preds = %entry
  %1 = load ptr, ptr %adev.addr, align 8, !dbg !2825
  %2 = load ptr, ptr %resources.addr, align 8, !dbg !2826
  %3 = load ptr, ptr %attr_group.addr, align 8, !dbg !2827
  call void @acpi_power_expose_list(ptr noundef %1, ptr noundef %2, ptr noundef %3) #15, !dbg !2828
  br label %if.end, !dbg !2828

if.else:                                          ; preds = %entry
  %4 = load ptr, ptr %adev.addr, align 8, !dbg !2829
  %5 = load ptr, ptr %resources.addr, align 8, !dbg !2830
  %6 = load ptr, ptr %attr_group.addr, align 8, !dbg !2831
  call void @acpi_power_hide_list(ptr noundef %4, ptr noundef %5, ptr noundef %6) #15, !dbg !2832
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  ret void, !dbg !2833
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_power_wakeup_list_init(ptr noundef %list, ptr noundef %system_level_p) #0 align 16 !dbg !2834 {
entry:
  %list.addr = alloca ptr, align 8
  %system_level_p.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %system_level = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %resource = alloca ptr, align 8
  %state = alloca i8, align 1
  %__mptr15 = alloca ptr, align 8
  %tmp18 = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !2838, metadata !DIExpression()), !dbg !2851
  store ptr %system_level_p, ptr %system_level_p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %system_level_p.addr, metadata !2839, metadata !DIExpression()), !dbg !2852
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #14, !dbg !2853
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !2840, metadata !DIExpression()), !dbg !2854
  call void @llvm.lifetime.start.p0(i64 4, ptr %system_level) #14, !dbg !2855
  call void @llvm.dbg.declare(metadata ptr %system_level, metadata !2841, metadata !DIExpression()), !dbg !2856
  store i32 5, ptr %system_level, align 4, !dbg !2856
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !2857
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2842, metadata !DIExpression()), !dbg !2857
  %0 = load ptr, ptr %list.addr, align 8, !dbg !2857
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !2857
  %1 = load ptr, ptr %next, align 8, !dbg !2857
  store ptr %1, ptr %__mptr, align 8, !dbg !2857
  %2 = load ptr, ptr %__mptr, align 8, !dbg !2857
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !2857
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2857
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !2858
  %3 = load ptr, ptr %tmp, align 8, !dbg !2857
  store ptr %3, ptr %entry1, align 8, !dbg !2858
  br label %for.cond, !dbg !2858

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %entry1, align 8, !dbg !2859
  %node = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %4, i32 0, i32 0, !dbg !2859
  %5 = load ptr, ptr %list.addr, align 8, !dbg !2859
  %cmp = icmp eq ptr %node, %5, !dbg !2859
  %lnot = xor i1 %cmp, true, !dbg !2859
  br i1 %lnot, label %for.body, label %for.end, !dbg !2858

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %resource) #14, !dbg !2860
  call void @llvm.dbg.declare(metadata ptr %resource, metadata !2845, metadata !DIExpression()), !dbg !2861
  %6 = load ptr, ptr %entry1, align 8, !dbg !2862
  %resource2 = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %6, i32 0, i32 1, !dbg !2863
  %7 = load ptr, ptr %resource2, align 8, !dbg !2863
  store ptr %7, ptr %resource, align 8, !dbg !2861
  call void @llvm.lifetime.start.p0(i64 1, ptr %state) #14, !dbg !2864
  call void @llvm.dbg.declare(metadata ptr %state, metadata !2848, metadata !DIExpression()), !dbg !2865
  %8 = load ptr, ptr %resource, align 8, !dbg !2866
  %resource_lock = getelementptr inbounds %struct.acpi_power_resource, ptr %8, i32 0, i32 6, !dbg !2867
  call void @mutex_lock(ptr noundef %resource_lock) #15, !dbg !2868
  %9 = load ptr, ptr %resource, align 8, !dbg !2869
  %ref_count = getelementptr inbounds %struct.acpi_power_resource, ptr %9, i32 0, i32 4, !dbg !2871
  %10 = load i32, ptr %ref_count, align 8, !dbg !2871
  %tobool = icmp ne i32 %10, 0, !dbg !2869
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !2872

land.lhs.true:                                    ; preds = %for.body
  %11 = load ptr, ptr %resource, align 8, !dbg !2873
  %call = call i32 @acpi_power_get_state(ptr noundef %11, ptr noundef %state) #15, !dbg !2874
  %tobool3 = icmp ne i32 %call, 0, !dbg !2874
  br i1 %tobool3, label %if.end, label %land.lhs.true4, !dbg !2875

land.lhs.true4:                                   ; preds = %land.lhs.true
  %12 = load i8, ptr %state, align 1, !dbg !2876
  %conv = zext i8 %12 to i32, !dbg !2876
  %cmp5 = icmp eq i32 %conv, 1, !dbg !2877
  br i1 %cmp5, label %if.then, label %if.end, !dbg !2878

if.then:                                          ; preds = %land.lhs.true4
  %13 = load ptr, ptr %resource, align 8, !dbg !2879
  %call7 = call i32 @__acpi_power_off(ptr noundef %13) #15, !dbg !2880
  br label %if.end, !dbg !2880

if.end:                                           ; preds = %if.then, %land.lhs.true4, %land.lhs.true, %for.body
  %14 = load i32, ptr %system_level, align 4, !dbg !2881
  %15 = load ptr, ptr %resource, align 8, !dbg !2883
  %system_level8 = getelementptr inbounds %struct.acpi_power_resource, ptr %15, i32 0, i32 2, !dbg !2884
  %16 = load i32, ptr %system_level8, align 8, !dbg !2884
  %cmp9 = icmp ugt i32 %14, %16, !dbg !2885
  br i1 %cmp9, label %if.then11, label %if.end13, !dbg !2886

if.then11:                                        ; preds = %if.end
  %17 = load ptr, ptr %resource, align 8, !dbg !2887
  %system_level12 = getelementptr inbounds %struct.acpi_power_resource, ptr %17, i32 0, i32 2, !dbg !2888
  %18 = load i32, ptr %system_level12, align 8, !dbg !2888
  store i32 %18, ptr %system_level, align 4, !dbg !2889
  br label %if.end13, !dbg !2890

if.end13:                                         ; preds = %if.then11, %if.end
  %19 = load ptr, ptr %resource, align 8, !dbg !2891
  %resource_lock14 = getelementptr inbounds %struct.acpi_power_resource, ptr %19, i32 0, i32 6, !dbg !2892
  call void @mutex_unlock(ptr noundef %resource_lock14) #15, !dbg !2893
  call void @llvm.lifetime.end.p0(i64 1, ptr %state) #14, !dbg !2894
  call void @llvm.lifetime.end.p0(i64 8, ptr %resource) #14, !dbg !2894
  br label %for.inc, !dbg !2895

for.inc:                                          ; preds = %if.end13
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr15) #14, !dbg !2896
  call void @llvm.dbg.declare(metadata ptr %__mptr15, metadata !2849, metadata !DIExpression()), !dbg !2896
  %20 = load ptr, ptr %entry1, align 8, !dbg !2896
  %node16 = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %20, i32 0, i32 0, !dbg !2896
  %next17 = getelementptr inbounds %struct.list_head, ptr %node16, i32 0, i32 0, !dbg !2896
  %21 = load ptr, ptr %next17, align 8, !dbg !2896
  store ptr %21, ptr %__mptr15, align 8, !dbg !2896
  %22 = load ptr, ptr %__mptr15, align 8, !dbg !2896
  %add.ptr19 = getelementptr i8, ptr %22, i64 0, !dbg !2896
  store ptr %add.ptr19, ptr %tmp18, align 8, !dbg !2896
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr15) #14, !dbg !2859
  %23 = load ptr, ptr %tmp18, align 8, !dbg !2896
  store ptr %23, ptr %entry1, align 8, !dbg !2859
  br label %for.cond, !dbg !2859, !llvm.loop !2897

for.end:                                          ; preds = %for.cond
  %24 = load i32, ptr %system_level, align 4, !dbg !2899
  %25 = load ptr, ptr %system_level_p.addr, align 8, !dbg !2900
  store i32 %24, ptr %25, align 4, !dbg !2901
  call void @llvm.lifetime.end.p0(i64 4, ptr %system_level) #14, !dbg !2902
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #14, !dbg !2902
  ret i32 0, !dbg !2903
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2904 dso_local void @mutex_lock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_power_get_state(ptr noundef %resource, ptr noundef %state) #0 align 16 !dbg !2908 {
entry:
  %retval = alloca i32, align 4
  %resource.addr = alloca ptr, align 8
  %state.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %resource, ptr %resource.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %resource.addr, metadata !2912, metadata !DIExpression()), !dbg !2917
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2913, metadata !DIExpression()), !dbg !2918
  %0 = load ptr, ptr %resource.addr, align 8, !dbg !2919
  %state1 = getelementptr inbounds %struct.acpi_power_resource, ptr %0, i32 0, i32 5, !dbg !2920
  %1 = load i8, ptr %state1, align 4, !dbg !2920
  %conv = zext i8 %1 to i32, !dbg !2919
  %cmp = icmp eq i32 %conv, 255, !dbg !2921
  br i1 %cmp, label %if.then, label %if.end5, !dbg !2922

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !2923
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2914, metadata !DIExpression()), !dbg !2924
  %2 = load ptr, ptr %resource.addr, align 8, !dbg !2925
  %device = getelementptr inbounds %struct.acpi_power_resource, ptr %2, i32 0, i32 0, !dbg !2926
  %handle = getelementptr inbounds %struct.acpi_device, ptr %device, i32 0, i32 2, !dbg !2927
  %3 = load ptr, ptr %handle, align 8, !dbg !2927
  %4 = load ptr, ptr %resource.addr, align 8, !dbg !2928
  %state3 = getelementptr inbounds %struct.acpi_power_resource, ptr %4, i32 0, i32 5, !dbg !2929
  %call = call i32 @__get_state(ptr noundef %3, ptr noundef %state3) #15, !dbg !2930
  store i32 %call, ptr %ret, align 4, !dbg !2931
  %5 = load i32, ptr %ret, align 4, !dbg !2932
  %tobool = icmp ne i32 %5, 0, !dbg !2932
  br i1 %tobool, label %if.then4, label %if.end, !dbg !2934

if.then4:                                         ; preds = %if.then
  %6 = load i32, ptr %ret, align 4, !dbg !2935
  store i32 %6, ptr %retval, align 4, !dbg !2936
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2936

if.end:                                           ; preds = %if.then
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2937
  br label %cleanup, !dbg !2937

cleanup:                                          ; preds = %if.end, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !2937
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %return
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end5, !dbg !2938

if.end5:                                          ; preds = %cleanup.cont, %entry
  %7 = load ptr, ptr %resource.addr, align 8, !dbg !2939
  %state6 = getelementptr inbounds %struct.acpi_power_resource, ptr %7, i32 0, i32 5, !dbg !2940
  %8 = load i8, ptr %state6, align 4, !dbg !2940
  %9 = load ptr, ptr %state.addr, align 8, !dbg !2941
  store i8 %8, ptr %9, align 1, !dbg !2942
  store i32 0, ptr %retval, align 4, !dbg !2943
  br label %return, !dbg !2943

return:                                           ; preds = %if.end5, %cleanup
  %10 = load i32, ptr %retval, align 4, !dbg !2944
  ret i32 %10, !dbg !2944

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__acpi_power_off(ptr noundef %resource) #0 align 16 !dbg !2945 {
entry:
  %retval = alloca i32, align 4
  %resource.addr = alloca ptr, align 8
  %handle = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %resource, ptr %resource.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %resource.addr, metadata !2949, metadata !DIExpression()), !dbg !2952
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #14, !dbg !2953
  call void @llvm.dbg.declare(metadata ptr %handle, metadata !2950, metadata !DIExpression()), !dbg !2954
  %0 = load ptr, ptr %resource.addr, align 8, !dbg !2955
  %device = getelementptr inbounds %struct.acpi_power_resource, ptr %0, i32 0, i32 0, !dbg !2956
  %handle1 = getelementptr inbounds %struct.acpi_device, ptr %device, i32 0, i32 2, !dbg !2957
  %1 = load ptr, ptr %handle1, align 8, !dbg !2957
  store ptr %1, ptr %handle, align 8, !dbg !2954
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !2958
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2951, metadata !DIExpression()), !dbg !2959
  %2 = load ptr, ptr %handle, align 8, !dbg !2960
  %call = call i32 @acpi_evaluate_object(ptr noundef %2, ptr noundef @.str.17, ptr noundef null, ptr noundef null) #15, !dbg !2961
  store i32 %call, ptr %status, align 4, !dbg !2962
  %3 = load i32, ptr %status, align 4, !dbg !2963
  %tobool = icmp ne i32 %3, 0, !dbg !2963
  br i1 %tobool, label %if.then, label %if.end, !dbg !2965

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %resource.addr, align 8, !dbg !2966
  %state = getelementptr inbounds %struct.acpi_power_resource, ptr %4, i32 0, i32 5, !dbg !2968
  store i8 -1, ptr %state, align 4, !dbg !2969
  store i32 -19, ptr %retval, align 4, !dbg !2970
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2970

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %resource.addr, align 8, !dbg !2971
  %state2 = getelementptr inbounds %struct.acpi_power_resource, ptr %5, i32 0, i32 5, !dbg !2972
  store i8 0, ptr %state2, align 4, !dbg !2973
  store i32 0, ptr %tmp, align 4, !dbg !2974
  %6 = load i32, ptr %tmp, align 4, !dbg !2977
  store i32 0, ptr %retval, align 4, !dbg !2978
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2978

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !2979
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #14, !dbg !2979
  %7 = load i32, ptr %retval, align 4, !dbg !2979
  ret i32 %7, !dbg !2979
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2980 dso_local void @mutex_unlock(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_device_sleep_wake(ptr noundef %dev, i32 noundef %enable, i32 noundef %sleep_state, i32 noundef %dev_state) #0 align 16 !dbg !2981 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %enable.addr = alloca i32, align 4
  %sleep_state.addr = alloca i32, align 4
  %dev_state.addr = alloca i32, align 4
  %in_arg = alloca [3 x %union.acpi_object], align 16
  %arg_list = alloca %struct.acpi_object_list, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2985, metadata !DIExpression()), !dbg !2997
  store i32 %enable, ptr %enable.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %enable.addr, metadata !2986, metadata !DIExpression()), !dbg !2998
  store i32 %sleep_state, ptr %sleep_state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sleep_state.addr, metadata !2987, metadata !DIExpression()), !dbg !2999
  store i32 %dev_state, ptr %dev_state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %dev_state.addr, metadata !2988, metadata !DIExpression()), !dbg !3000
  call void @llvm.lifetime.start.p0(i64 72, ptr %in_arg) #14, !dbg !3001
  call void @llvm.dbg.declare(metadata ptr %in_arg, metadata !2989, metadata !DIExpression()), !dbg !3002
  call void @llvm.lifetime.start.p0(i64 16, ptr %arg_list) #14, !dbg !3003
  call void @llvm.dbg.declare(metadata ptr %arg_list, metadata !2991, metadata !DIExpression()), !dbg !3004
  %count = getelementptr inbounds %struct.acpi_object_list, ptr %arg_list, i32 0, i32 0, !dbg !3005
  store i32 3, ptr %count, align 8, !dbg !3005
  %pointer = getelementptr inbounds %struct.acpi_object_list, ptr %arg_list, i32 0, i32 1, !dbg !3005
  %arraydecay = getelementptr inbounds [3 x %union.acpi_object], ptr %in_arg, i64 0, i64 0, !dbg !3006
  store ptr %arraydecay, ptr %pointer, align 8, !dbg !3005
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !3007
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2996, metadata !DIExpression()), !dbg !3008
  store i32 0, ptr %status, align 4, !dbg !3008
  %arrayidx = getelementptr [3 x %union.acpi_object], ptr %in_arg, i64 0, i64 0, !dbg !3009
  store i32 1, ptr %arrayidx, align 16, !dbg !3010
  %0 = load i32, ptr %enable.addr, align 4, !dbg !3011
  %conv = sext i32 %0 to i64, !dbg !3011
  %arrayidx1 = getelementptr [3 x %union.acpi_object], ptr %in_arg, i64 0, i64 0, !dbg !3012
  %value = getelementptr inbounds %struct.anon.4, ptr %arrayidx1, i32 0, i32 1, !dbg !3013
  store i64 %conv, ptr %value, align 8, !dbg !3014
  %arrayidx2 = getelementptr [3 x %union.acpi_object], ptr %in_arg, i64 0, i64 1, !dbg !3015
  store i32 1, ptr %arrayidx2, align 8, !dbg !3016
  %1 = load i32, ptr %sleep_state.addr, align 4, !dbg !3017
  %conv3 = sext i32 %1 to i64, !dbg !3017
  %arrayidx4 = getelementptr [3 x %union.acpi_object], ptr %in_arg, i64 0, i64 1, !dbg !3018
  %value5 = getelementptr inbounds %struct.anon.4, ptr %arrayidx4, i32 0, i32 1, !dbg !3019
  store i64 %conv3, ptr %value5, align 8, !dbg !3020
  %arrayidx6 = getelementptr [3 x %union.acpi_object], ptr %in_arg, i64 0, i64 2, !dbg !3021
  store i32 1, ptr %arrayidx6, align 16, !dbg !3022
  %2 = load i32, ptr %dev_state.addr, align 4, !dbg !3023
  %conv7 = sext i32 %2 to i64, !dbg !3023
  %arrayidx8 = getelementptr [3 x %union.acpi_object], ptr %in_arg, i64 0, i64 2, !dbg !3024
  %value9 = getelementptr inbounds %struct.anon.4, ptr %arrayidx8, i32 0, i32 1, !dbg !3025
  store i64 %conv7, ptr %value9, align 8, !dbg !3026
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !3027
  %handle = getelementptr inbounds %struct.acpi_device, ptr %3, i32 0, i32 2, !dbg !3028
  %4 = load ptr, ptr %handle, align 8, !dbg !3028
  %call = call i32 @acpi_evaluate_object(ptr noundef %4, ptr noundef @.str, ptr noundef %arg_list, ptr noundef null) #15, !dbg !3029
  store i32 %call, ptr %status, align 4, !dbg !3030
  %5 = load i32, ptr %status, align 4, !dbg !3031
  %tobool = icmp ne i32 %5, 0, !dbg !3031
  br i1 %tobool, label %if.else, label %if.then, !dbg !3033

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3034
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3034

if.else:                                          ; preds = %entry
  %6 = load i32, ptr %status, align 4, !dbg !3036
  %cmp = icmp ne i32 %6, 5, !dbg !3038
  br i1 %cmp, label %if.then11, label %if.end, !dbg !3039

if.then11:                                        ; preds = %if.else
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !3040
  %handle12 = getelementptr inbounds %struct.acpi_device, ptr %7, i32 0, i32 2, !dbg !3040
  %8 = load ptr, ptr %handle12, align 8, !dbg !3040
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.1, ptr noundef %8, ptr noundef @.str.2) #15, !dbg !3040
  %9 = load ptr, ptr %dev.addr, align 8, !dbg !3042
  %wakeup = getelementptr inbounds %struct.acpi_device, ptr %9, i32 0, i32 10, !dbg !3043
  %flags = getelementptr inbounds %struct.acpi_device_wakeup, ptr %wakeup, i32 0, i32 4, !dbg !3044
  %bf.load = load i8, ptr %flags, align 8, !dbg !3045
  %bf.clear = and i8 %bf.load, -2, !dbg !3045
  %bf.set = or i8 %bf.clear, 0, !dbg !3045
  store i8 %bf.set, ptr %flags, align 8, !dbg !3045
  store i32 -19, ptr %retval, align 4, !dbg !3046
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3046

if.end:                                           ; preds = %if.else
  br label %if.end13

if.end13:                                         ; preds = %if.end
  %10 = load ptr, ptr %dev.addr, align 8, !dbg !3047
  %handle14 = getelementptr inbounds %struct.acpi_device, ptr %10, i32 0, i32 2, !dbg !3048
  %11 = load ptr, ptr %handle14, align 8, !dbg !3048
  %12 = load i32, ptr %enable.addr, align 4, !dbg !3049
  %conv15 = sext i32 %12 to i64, !dbg !3049
  %call16 = call i32 @acpi_execute_simple_method(ptr noundef %11, ptr noundef @.str.3, i64 noundef %conv15) #15, !dbg !3050
  store i32 %call16, ptr %status, align 4, !dbg !3051
  %13 = load i32, ptr %status, align 4, !dbg !3052
  %tobool17 = icmp ne i32 %13, 0, !dbg !3052
  br i1 %tobool17, label %land.lhs.true, label %if.end27, !dbg !3054

land.lhs.true:                                    ; preds = %if.end13
  %14 = load i32, ptr %status, align 4, !dbg !3055
  %cmp18 = icmp ne i32 %14, 5, !dbg !3056
  br i1 %cmp18, label %if.then20, label %if.end27, !dbg !3057

if.then20:                                        ; preds = %land.lhs.true
  %15 = load ptr, ptr %dev.addr, align 8, !dbg !3058
  %handle21 = getelementptr inbounds %struct.acpi_device, ptr %15, i32 0, i32 2, !dbg !3058
  %16 = load ptr, ptr %handle21, align 8, !dbg !3058
  call void (ptr, ptr, ptr, ...) @acpi_handle_printk(ptr noundef @.str.1, ptr noundef %16, ptr noundef @.str.4) #15, !dbg !3058
  %17 = load ptr, ptr %dev.addr, align 8, !dbg !3060
  %wakeup22 = getelementptr inbounds %struct.acpi_device, ptr %17, i32 0, i32 10, !dbg !3061
  %flags23 = getelementptr inbounds %struct.acpi_device_wakeup, ptr %wakeup22, i32 0, i32 4, !dbg !3062
  %bf.load24 = load i8, ptr %flags23, align 8, !dbg !3063
  %bf.clear25 = and i8 %bf.load24, -2, !dbg !3063
  %bf.set26 = or i8 %bf.clear25, 0, !dbg !3063
  store i8 %bf.set26, ptr %flags23, align 8, !dbg !3063
  store i32 -19, ptr %retval, align 4, !dbg !3064
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3064

if.end27:                                         ; preds = %land.lhs.true, %if.end13
  store i32 0, ptr %retval, align 4, !dbg !3065
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3065

cleanup:                                          ; preds = %if.end27, %if.then20, %if.then11, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !3066
  call void @llvm.lifetime.end.p0(i64 16, ptr %arg_list) #14, !dbg !3066
  call void @llvm.lifetime.end.p0(i64 72, ptr %in_arg) #14, !dbg !3066
  %18 = load i32, ptr %retval, align 4, !dbg !3066
  ret i32 %18, !dbg !3066
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3067 dso_local i32 @acpi_evaluate_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3074 dso_local void @acpi_handle_printk(ptr noundef, ptr noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3078 dso_local i32 @acpi_execute_simple_method(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_enable_wakeup_device_power(ptr noundef %dev, i32 noundef %sleep_state) #0 align 16 !dbg !3081 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %sleep_state.addr = alloca i32, align 4
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3085, metadata !DIExpression()), !dbg !3089
  store i32 %sleep_state, ptr %sleep_state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %sleep_state.addr, metadata !3086, metadata !DIExpression()), !dbg !3090
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !3091
  call void @llvm.dbg.declare(metadata ptr %err, metadata !3087, metadata !DIExpression()), !dbg !3092
  store i32 0, ptr %err, align 4, !dbg !3092
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3093
  %tobool = icmp ne ptr %0, null, !dbg !3093
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3095

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !3096
  %wakeup = getelementptr inbounds %struct.acpi_device, ptr %1, i32 0, i32 10, !dbg !3097
  %flags = getelementptr inbounds %struct.acpi_device_wakeup, ptr %wakeup, i32 0, i32 4, !dbg !3098
  %bf.load = load i8, ptr %flags, align 8, !dbg !3099
  %bf.clear = and i8 %bf.load, 1, !dbg !3099
  %tobool1 = icmp ne i8 %bf.clear, 0, !dbg !3096
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3100

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !3101
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3101

if.end:                                           ; preds = %lor.lhs.false
  call void @mutex_lock(ptr noundef @acpi_device_lock) #15, !dbg !3102
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !3103
  %wakeup2 = getelementptr inbounds %struct.acpi_device, ptr %2, i32 0, i32 10, !dbg !3105
  %prepare_count = getelementptr inbounds %struct.acpi_device_wakeup, ptr %wakeup2, i32 0, i32 7, !dbg !3106
  %3 = load i32, ptr %prepare_count, align 8, !dbg !3107
  %inc = add i32 %3, 1, !dbg !3107
  store i32 %inc, ptr %prepare_count, align 8, !dbg !3107
  %tobool3 = icmp ne i32 %3, 0, !dbg !3107
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !3108

if.then4:                                         ; preds = %if.end
  br label %out, !dbg !3109

if.end5:                                          ; preds = %if.end
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !3110
  %wakeup6 = getelementptr inbounds %struct.acpi_device, ptr %4, i32 0, i32 10, !dbg !3111
  %resources = getelementptr inbounds %struct.acpi_device_wakeup, ptr %wakeup6, i32 0, i32 3, !dbg !3112
  %call = call i32 @acpi_power_on_list(ptr noundef %resources) #15, !dbg !3113
  store i32 %call, ptr %err, align 4, !dbg !3114
  %5 = load i32, ptr %err, align 4, !dbg !3115
  %tobool7 = icmp ne i32 %5, 0, !dbg !3115
  br i1 %tobool7, label %if.then8, label %if.end14, !dbg !3117

if.then8:                                         ; preds = %if.end5
  br label %do.body, !dbg !3118

do.body:                                          ; preds = %if.then8
  br label %do.cond, !dbg !3121

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3121

do.end:                                           ; preds = %do.cond
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !3118
  %dev9 = getelementptr inbounds %struct.acpi_device, ptr %6, i32 0, i32 18, !dbg !3118
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef @.str.5) #17, !dbg !3118
  %7 = load ptr, ptr %dev.addr, align 8, !dbg !3123
  %wakeup10 = getelementptr inbounds %struct.acpi_device, ptr %7, i32 0, i32 10, !dbg !3124
  %flags11 = getelementptr inbounds %struct.acpi_device_wakeup, ptr %wakeup10, i32 0, i32 4, !dbg !3125
  %bf.load12 = load i8, ptr %flags11, align 8, !dbg !3126
  %bf.clear13 = and i8 %bf.load12, -2, !dbg !3126
  %bf.set = or i8 %bf.clear13, 0, !dbg !3126
  store i8 %bf.set, ptr %flags11, align 8, !dbg !3126
  br label %out, !dbg !3127

if.end14:                                         ; preds = %if.end5
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !3128
  %9 = load i32, ptr %sleep_state.addr, align 4, !dbg !3129
  %call15 = call i32 @acpi_device_sleep_wake(ptr noundef %8, i32 noundef 1, i32 noundef %9, i32 noundef 3) #15, !dbg !3130
  store i32 %call15, ptr %err, align 4, !dbg !3131
  %10 = load i32, ptr %err, align 4, !dbg !3132
  %tobool16 = icmp ne i32 %10, 0, !dbg !3132
  br i1 %tobool16, label %if.then17, label %if.end23, !dbg !3134

if.then17:                                        ; preds = %if.end14
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !3135
  %wakeup18 = getelementptr inbounds %struct.acpi_device, ptr %11, i32 0, i32 10, !dbg !3137
  %resources19 = getelementptr inbounds %struct.acpi_device_wakeup, ptr %wakeup18, i32 0, i32 3, !dbg !3138
  %call20 = call i32 @acpi_power_off_list(ptr noundef %resources19) #15, !dbg !3139
  %12 = load ptr, ptr %dev.addr, align 8, !dbg !3140
  %wakeup21 = getelementptr inbounds %struct.acpi_device, ptr %12, i32 0, i32 10, !dbg !3141
  %prepare_count22 = getelementptr inbounds %struct.acpi_device_wakeup, ptr %wakeup21, i32 0, i32 7, !dbg !3142
  store i32 0, ptr %prepare_count22, align 8, !dbg !3143
  br label %out, !dbg !3144

if.end23:                                         ; preds = %if.end14
  br label %out, !dbg !3145

out:                                              ; preds = %if.end23, %if.then17, %do.end, %if.then4
  call void @llvm.dbg.label(metadata !3088), !dbg !3146
  call void @mutex_unlock(ptr noundef @acpi_device_lock) #15, !dbg !3147
  %13 = load i32, ptr %err, align 4, !dbg !3148
  store i32 %13, ptr %retval, align 4, !dbg !3149
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3149

cleanup:                                          ; preds = %out, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !3150
  %14 = load i32, ptr %retval, align 4, !dbg !3150
  ret i32 %14, !dbg !3150
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_power_on_list(ptr noundef %list) #0 align 16 !dbg !3151 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %result = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr7 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %__mptr19 = alloca ptr, align 8
  %tmp22 = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !3155, metadata !DIExpression()), !dbg !3171
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #14, !dbg !3172
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !3156, metadata !DIExpression()), !dbg !3173
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #14, !dbg !3174
  call void @llvm.dbg.declare(metadata ptr %result, metadata !3157, metadata !DIExpression()), !dbg !3175
  store i32 0, ptr %result, align 4, !dbg !3175
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !3176
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3158, metadata !DIExpression()), !dbg !3176
  %0 = load ptr, ptr %list.addr, align 8, !dbg !3176
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !3176
  %1 = load ptr, ptr %next, align 8, !dbg !3176
  store ptr %1, ptr %__mptr, align 8, !dbg !3176
  %2 = load ptr, ptr %__mptr, align 8, !dbg !3176
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !3176
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3176
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !3177
  %3 = load ptr, ptr %tmp, align 8, !dbg !3176
  store ptr %3, ptr %entry1, align 8, !dbg !3177
  br label %for.cond, !dbg !3177

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %entry1, align 8, !dbg !3178
  %node = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %4, i32 0, i32 0, !dbg !3178
  %5 = load ptr, ptr %list.addr, align 8, !dbg !3178
  %cmp = icmp eq ptr %node, %5, !dbg !3178
  %lnot = xor i1 %cmp, true, !dbg !3178
  br i1 %lnot, label %for.body, label %for.end, !dbg !3177

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %entry1, align 8, !dbg !3179
  %resource = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %6, i32 0, i32 1, !dbg !3181
  %7 = load ptr, ptr %resource, align 8, !dbg !3181
  %call = call i32 @acpi_power_on(ptr noundef %7) #15, !dbg !3182
  store i32 %call, ptr %result, align 4, !dbg !3183
  %8 = load i32, ptr %result, align 4, !dbg !3184
  %tobool = icmp ne i32 %8, 0, !dbg !3184
  br i1 %tobool, label %if.then, label %if.end, !dbg !3186

if.then:                                          ; preds = %for.body
  br label %err, !dbg !3187

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !3188

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #14, !dbg !3189
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !3161, metadata !DIExpression()), !dbg !3189
  %9 = load ptr, ptr %entry1, align 8, !dbg !3189
  %node3 = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %9, i32 0, i32 0, !dbg !3189
  %next4 = getelementptr inbounds %struct.list_head, ptr %node3, i32 0, i32 0, !dbg !3189
  %10 = load ptr, ptr %next4, align 8, !dbg !3189
  store ptr %10, ptr %__mptr2, align 8, !dbg !3189
  %11 = load ptr, ptr %__mptr2, align 8, !dbg !3189
  %add.ptr6 = getelementptr i8, ptr %11, i64 0, !dbg !3189
  store ptr %add.ptr6, ptr %tmp5, align 8, !dbg !3189
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #14, !dbg !3178
  %12 = load ptr, ptr %tmp5, align 8, !dbg !3189
  store ptr %12, ptr %entry1, align 8, !dbg !3178
  br label %for.cond, !dbg !3178, !llvm.loop !3190

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !3192
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3192

err:                                              ; preds = %if.then
  call void @llvm.dbg.label(metadata !3164), !dbg !3193
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr7) #14, !dbg !3194
  call void @llvm.dbg.declare(metadata ptr %__mptr7, metadata !3165, metadata !DIExpression()), !dbg !3194
  %13 = load ptr, ptr %entry1, align 8, !dbg !3194
  %node8 = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %13, i32 0, i32 0, !dbg !3194
  %prev = getelementptr inbounds %struct.list_head, ptr %node8, i32 0, i32 1, !dbg !3194
  %14 = load ptr, ptr %prev, align 8, !dbg !3194
  store ptr %14, ptr %__mptr7, align 8, !dbg !3194
  %15 = load ptr, ptr %__mptr7, align 8, !dbg !3194
  %add.ptr10 = getelementptr i8, ptr %15, i64 0, !dbg !3194
  store ptr %add.ptr10, ptr %tmp9, align 8, !dbg !3194
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr7) #14, !dbg !3195
  %16 = load ptr, ptr %tmp9, align 8, !dbg !3194
  store ptr %16, ptr %entry1, align 8, !dbg !3195
  br label %for.cond11, !dbg !3195

for.cond11:                                       ; preds = %for.inc18, %err
  %17 = load ptr, ptr %entry1, align 8, !dbg !3196
  %node12 = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %17, i32 0, i32 0, !dbg !3196
  %18 = load ptr, ptr %list.addr, align 8, !dbg !3196
  %cmp13 = icmp eq ptr %node12, %18, !dbg !3196
  %lnot14 = xor i1 %cmp13, true, !dbg !3196
  br i1 %lnot14, label %for.body15, label %for.end24, !dbg !3195

for.body15:                                       ; preds = %for.cond11
  %19 = load ptr, ptr %entry1, align 8, !dbg !3197
  %resource16 = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %19, i32 0, i32 1, !dbg !3198
  %20 = load ptr, ptr %resource16, align 8, !dbg !3198
  %call17 = call i32 @acpi_power_off(ptr noundef %20) #15, !dbg !3199
  br label %for.inc18, !dbg !3199

for.inc18:                                        ; preds = %for.body15
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr19) #14, !dbg !3200
  call void @llvm.dbg.declare(metadata ptr %__mptr19, metadata !3168, metadata !DIExpression()), !dbg !3200
  %21 = load ptr, ptr %entry1, align 8, !dbg !3200
  %node20 = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %21, i32 0, i32 0, !dbg !3200
  %prev21 = getelementptr inbounds %struct.list_head, ptr %node20, i32 0, i32 1, !dbg !3200
  %22 = load ptr, ptr %prev21, align 8, !dbg !3200
  store ptr %22, ptr %__mptr19, align 8, !dbg !3200
  %23 = load ptr, ptr %__mptr19, align 8, !dbg !3200
  %add.ptr23 = getelementptr i8, ptr %23, i64 0, !dbg !3200
  store ptr %add.ptr23, ptr %tmp22, align 8, !dbg !3200
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr19) #14, !dbg !3196
  %24 = load ptr, ptr %tmp22, align 8, !dbg !3200
  store ptr %24, ptr %entry1, align 8, !dbg !3196
  br label %for.cond11, !dbg !3196, !llvm.loop !3201

for.end24:                                        ; preds = %for.cond11
  %25 = load i32, ptr %result, align 4, !dbg !3203
  store i32 %25, ptr %retval, align 4, !dbg !3204
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3204

cleanup:                                          ; preds = %for.end24, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #14, !dbg !3205
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #14, !dbg !3205
  %26 = load i32, ptr %retval, align 4, !dbg !3205
  ret i32 %26, !dbg !3205
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !3206 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #5

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_power_off_list(ptr noundef %list) #0 align 16 !dbg !3210 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %result = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr7 = alloca ptr, align 8
  %tmp9 = alloca ptr, align 8
  %__mptr19 = alloca ptr, align 8
  %tmp22 = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !3212, metadata !DIExpression()), !dbg !3228
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #14, !dbg !3229
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !3213, metadata !DIExpression()), !dbg !3230
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #14, !dbg !3231
  call void @llvm.dbg.declare(metadata ptr %result, metadata !3214, metadata !DIExpression()), !dbg !3232
  store i32 0, ptr %result, align 4, !dbg !3232
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !3233
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3215, metadata !DIExpression()), !dbg !3233
  %0 = load ptr, ptr %list.addr, align 8, !dbg !3233
  %prev = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 1, !dbg !3233
  %1 = load ptr, ptr %prev, align 8, !dbg !3233
  store ptr %1, ptr %__mptr, align 8, !dbg !3233
  %2 = load ptr, ptr %__mptr, align 8, !dbg !3233
  %add.ptr = getelementptr i8, ptr %2, i64 0, !dbg !3233
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3233
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !3234
  %3 = load ptr, ptr %tmp, align 8, !dbg !3233
  store ptr %3, ptr %entry1, align 8, !dbg !3234
  br label %for.cond, !dbg !3234

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %entry1, align 8, !dbg !3235
  %node = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %4, i32 0, i32 0, !dbg !3235
  %5 = load ptr, ptr %list.addr, align 8, !dbg !3235
  %cmp = icmp eq ptr %node, %5, !dbg !3235
  %lnot = xor i1 %cmp, true, !dbg !3235
  br i1 %lnot, label %for.body, label %for.end, !dbg !3234

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %entry1, align 8, !dbg !3236
  %resource = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %6, i32 0, i32 1, !dbg !3238
  %7 = load ptr, ptr %resource, align 8, !dbg !3238
  %call = call i32 @acpi_power_off(ptr noundef %7) #15, !dbg !3239
  store i32 %call, ptr %result, align 4, !dbg !3240
  %8 = load i32, ptr %result, align 4, !dbg !3241
  %tobool = icmp ne i32 %8, 0, !dbg !3241
  br i1 %tobool, label %if.then, label %if.end, !dbg !3243

if.then:                                          ; preds = %for.body
  br label %err, !dbg !3244

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !3245

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #14, !dbg !3246
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !3218, metadata !DIExpression()), !dbg !3246
  %9 = load ptr, ptr %entry1, align 8, !dbg !3246
  %node3 = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %9, i32 0, i32 0, !dbg !3246
  %prev4 = getelementptr inbounds %struct.list_head, ptr %node3, i32 0, i32 1, !dbg !3246
  %10 = load ptr, ptr %prev4, align 8, !dbg !3246
  store ptr %10, ptr %__mptr2, align 8, !dbg !3246
  %11 = load ptr, ptr %__mptr2, align 8, !dbg !3246
  %add.ptr6 = getelementptr i8, ptr %11, i64 0, !dbg !3246
  store ptr %add.ptr6, ptr %tmp5, align 8, !dbg !3246
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #14, !dbg !3235
  %12 = load ptr, ptr %tmp5, align 8, !dbg !3246
  store ptr %12, ptr %entry1, align 8, !dbg !3235
  br label %for.cond, !dbg !3235, !llvm.loop !3247

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !3249
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3249

err:                                              ; preds = %if.then
  call void @llvm.dbg.label(metadata !3221), !dbg !3250
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr7) #14, !dbg !3251
  call void @llvm.dbg.declare(metadata ptr %__mptr7, metadata !3222, metadata !DIExpression()), !dbg !3251
  %13 = load ptr, ptr %entry1, align 8, !dbg !3251
  %node8 = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %13, i32 0, i32 0, !dbg !3251
  %next = getelementptr inbounds %struct.list_head, ptr %node8, i32 0, i32 0, !dbg !3251
  %14 = load ptr, ptr %next, align 8, !dbg !3251
  store ptr %14, ptr %__mptr7, align 8, !dbg !3251
  %15 = load ptr, ptr %__mptr7, align 8, !dbg !3251
  %add.ptr10 = getelementptr i8, ptr %15, i64 0, !dbg !3251
  store ptr %add.ptr10, ptr %tmp9, align 8, !dbg !3251
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr7) #14, !dbg !3252
  %16 = load ptr, ptr %tmp9, align 8, !dbg !3251
  store ptr %16, ptr %entry1, align 8, !dbg !3252
  br label %for.cond11, !dbg !3252

for.cond11:                                       ; preds = %for.inc18, %err
  %17 = load ptr, ptr %entry1, align 8, !dbg !3253
  %node12 = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %17, i32 0, i32 0, !dbg !3253
  %18 = load ptr, ptr %list.addr, align 8, !dbg !3253
  %cmp13 = icmp eq ptr %node12, %18, !dbg !3253
  %lnot14 = xor i1 %cmp13, true, !dbg !3253
  br i1 %lnot14, label %for.body15, label %for.end24, !dbg !3252

for.body15:                                       ; preds = %for.cond11
  %19 = load ptr, ptr %entry1, align 8, !dbg !3254
  %resource16 = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %19, i32 0, i32 1, !dbg !3255
  %20 = load ptr, ptr %resource16, align 8, !dbg !3255
  %call17 = call i32 @acpi_power_on(ptr noundef %20) #15, !dbg !3256
  br label %for.inc18, !dbg !3256

for.inc18:                                        ; preds = %for.body15
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr19) #14, !dbg !3257
  call void @llvm.dbg.declare(metadata ptr %__mptr19, metadata !3225, metadata !DIExpression()), !dbg !3257
  %21 = load ptr, ptr %entry1, align 8, !dbg !3257
  %node20 = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %21, i32 0, i32 0, !dbg !3257
  %next21 = getelementptr inbounds %struct.list_head, ptr %node20, i32 0, i32 0, !dbg !3257
  %22 = load ptr, ptr %next21, align 8, !dbg !3257
  store ptr %22, ptr %__mptr19, align 8, !dbg !3257
  %23 = load ptr, ptr %__mptr19, align 8, !dbg !3257
  %add.ptr23 = getelementptr i8, ptr %23, i64 0, !dbg !3257
  store ptr %add.ptr23, ptr %tmp22, align 8, !dbg !3257
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr19) #14, !dbg !3253
  %24 = load ptr, ptr %tmp22, align 8, !dbg !3257
  store ptr %24, ptr %entry1, align 8, !dbg !3253
  br label %for.cond11, !dbg !3253, !llvm.loop !3258

for.end24:                                        ; preds = %for.cond11
  %25 = load i32, ptr %result, align 4, !dbg !3260
  store i32 %25, ptr %retval, align 4, !dbg !3261
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3261

cleanup:                                          ; preds = %for.end24, %for.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #14, !dbg !3262
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #14, !dbg !3262
  %26 = load i32, ptr %retval, align 4, !dbg !3262
  ret i32 %26, !dbg !3262
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_disable_wakeup_device_power(ptr noundef %dev) #0 align 16 !dbg !3263 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %err = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %ret = alloca i32, align 4
  %__mptr23 = alloca ptr, align 8
  %tmp26 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3265, metadata !DIExpression()), !dbg !3277
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #14, !dbg !3278
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !3266, metadata !DIExpression()), !dbg !3279
  call void @llvm.lifetime.start.p0(i64 4, ptr %err) #14, !dbg !3280
  call void @llvm.dbg.declare(metadata ptr %err, metadata !3267, metadata !DIExpression()), !dbg !3281
  store i32 0, ptr %err, align 4, !dbg !3281
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3282
  %tobool = icmp ne ptr %0, null, !dbg !3282
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3284

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !3285
  %wakeup = getelementptr inbounds %struct.acpi_device, ptr %1, i32 0, i32 10, !dbg !3286
  %flags = getelementptr inbounds %struct.acpi_device_wakeup, ptr %wakeup, i32 0, i32 4, !dbg !3287
  %bf.load = load i8, ptr %flags, align 8, !dbg !3288
  %bf.clear = and i8 %bf.load, 1, !dbg !3288
  %tobool2 = icmp ne i8 %bf.clear, 0, !dbg !3285
  br i1 %tobool2, label %if.end, label %if.then, !dbg !3289

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !3290
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3290

if.end:                                           ; preds = %lor.lhs.false
  call void @mutex_lock(ptr noundef @acpi_device_lock) #15, !dbg !3291
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !3292
  %wakeup3 = getelementptr inbounds %struct.acpi_device, ptr %2, i32 0, i32 10, !dbg !3294
  %prepare_count = getelementptr inbounds %struct.acpi_device_wakeup, ptr %wakeup3, i32 0, i32 7, !dbg !3295
  %3 = load i32, ptr %prepare_count, align 8, !dbg !3295
  %cmp = icmp sle i32 %3, 0, !dbg !3296
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !3297

if.then4:                                         ; preds = %if.end
  br label %out, !dbg !3298

if.end5:                                          ; preds = %if.end
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !3299
  %wakeup6 = getelementptr inbounds %struct.acpi_device, ptr %4, i32 0, i32 10, !dbg !3301
  %prepare_count7 = getelementptr inbounds %struct.acpi_device_wakeup, ptr %wakeup6, i32 0, i32 7, !dbg !3302
  %5 = load i32, ptr %prepare_count7, align 8, !dbg !3303
  %dec = add i32 %5, -1, !dbg !3303
  store i32 %dec, ptr %prepare_count7, align 8, !dbg !3303
  %cmp8 = icmp sgt i32 %dec, 0, !dbg !3304
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !3305

if.then9:                                         ; preds = %if.end5
  br label %out, !dbg !3306

if.end10:                                         ; preds = %if.end5
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !3307
  %call = call i32 @acpi_device_sleep_wake(ptr noundef %6, i32 noundef 0, i32 noundef 0, i32 noundef 0) #15, !dbg !3308
  store i32 %call, ptr %err, align 4, !dbg !3309
  %7 = load i32, ptr %err, align 4, !dbg !3310
  %tobool11 = icmp ne i32 %7, 0, !dbg !3310
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !3312

if.then12:                                        ; preds = %if.end10
  br label %out, !dbg !3313

if.end13:                                         ; preds = %if.end10
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !3314
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3268, metadata !DIExpression()), !dbg !3314
  %8 = load ptr, ptr %dev.addr, align 8, !dbg !3314
  %wakeup14 = getelementptr inbounds %struct.acpi_device, ptr %8, i32 0, i32 10, !dbg !3314
  %resources = getelementptr inbounds %struct.acpi_device_wakeup, ptr %wakeup14, i32 0, i32 3, !dbg !3314
  %next = getelementptr inbounds %struct.list_head, ptr %resources, i32 0, i32 0, !dbg !3314
  %9 = load ptr, ptr %next, align 8, !dbg !3314
  store ptr %9, ptr %__mptr, align 8, !dbg !3314
  %10 = load ptr, ptr %__mptr, align 8, !dbg !3314
  %add.ptr = getelementptr i8, ptr %10, i64 0, !dbg !3314
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3314
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !3315
  %11 = load ptr, ptr %tmp, align 8, !dbg !3314
  store ptr %11, ptr %entry1, align 8, !dbg !3315
  br label %for.cond, !dbg !3315

for.cond:                                         ; preds = %for.inc, %if.end13
  %12 = load ptr, ptr %entry1, align 8, !dbg !3316
  %node = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %12, i32 0, i32 0, !dbg !3316
  %13 = load ptr, ptr %dev.addr, align 8, !dbg !3316
  %wakeup15 = getelementptr inbounds %struct.acpi_device, ptr %13, i32 0, i32 10, !dbg !3316
  %resources16 = getelementptr inbounds %struct.acpi_device_wakeup, ptr %wakeup15, i32 0, i32 3, !dbg !3316
  %cmp17 = icmp eq ptr %node, %resources16, !dbg !3316
  %lnot = xor i1 %cmp17, true, !dbg !3316
  br i1 %lnot, label %for.body, label %for.end, !dbg !3315

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !3317
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3271, metadata !DIExpression()), !dbg !3318
  %14 = load ptr, ptr %entry1, align 8, !dbg !3319
  %resource = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %14, i32 0, i32 1, !dbg !3320
  %15 = load ptr, ptr %resource, align 8, !dbg !3320
  %call18 = call i32 @acpi_power_off(ptr noundef %15) #15, !dbg !3321
  store i32 %call18, ptr %ret, align 4, !dbg !3322
  %16 = load i32, ptr %ret, align 4, !dbg !3323
  %tobool19 = icmp ne i32 %16, 0, !dbg !3323
  br i1 %tobool19, label %land.lhs.true, label %if.end22, !dbg !3325

land.lhs.true:                                    ; preds = %for.body
  %17 = load i32, ptr %err, align 4, !dbg !3326
  %tobool20 = icmp ne i32 %17, 0, !dbg !3326
  br i1 %tobool20, label %if.end22, label %if.then21, !dbg !3327

if.then21:                                        ; preds = %land.lhs.true
  %18 = load i32, ptr %ret, align 4, !dbg !3328
  store i32 %18, ptr %err, align 4, !dbg !3329
  br label %if.end22, !dbg !3330

if.end22:                                         ; preds = %if.then21, %land.lhs.true, %for.body
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !3331
  br label %for.inc, !dbg !3332

for.inc:                                          ; preds = %if.end22
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr23) #14, !dbg !3333
  call void @llvm.dbg.declare(metadata ptr %__mptr23, metadata !3274, metadata !DIExpression()), !dbg !3333
  %19 = load ptr, ptr %entry1, align 8, !dbg !3333
  %node24 = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %19, i32 0, i32 0, !dbg !3333
  %next25 = getelementptr inbounds %struct.list_head, ptr %node24, i32 0, i32 0, !dbg !3333
  %20 = load ptr, ptr %next25, align 8, !dbg !3333
  store ptr %20, ptr %__mptr23, align 8, !dbg !3333
  %21 = load ptr, ptr %__mptr23, align 8, !dbg !3333
  %add.ptr27 = getelementptr i8, ptr %21, i64 0, !dbg !3333
  store ptr %add.ptr27, ptr %tmp26, align 8, !dbg !3333
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr23) #14, !dbg !3316
  %22 = load ptr, ptr %tmp26, align 8, !dbg !3333
  store ptr %22, ptr %entry1, align 8, !dbg !3316
  br label %for.cond, !dbg !3316, !llvm.loop !3334

for.end:                                          ; preds = %for.cond
  %23 = load i32, ptr %err, align 4, !dbg !3336
  %tobool28 = icmp ne i32 %23, 0, !dbg !3336
  br i1 %tobool28, label %if.then29, label %if.end35, !dbg !3338

if.then29:                                        ; preds = %for.end
  br label %do.body, !dbg !3339

do.body:                                          ; preds = %if.then29
  br label %do.cond, !dbg !3342

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3342

do.end:                                           ; preds = %do.cond
  %24 = load ptr, ptr %dev.addr, align 8, !dbg !3339
  %dev30 = getelementptr inbounds %struct.acpi_device, ptr %24, i32 0, i32 18, !dbg !3339
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef @.str.6) #17, !dbg !3339
  %25 = load ptr, ptr %dev.addr, align 8, !dbg !3344
  %wakeup31 = getelementptr inbounds %struct.acpi_device, ptr %25, i32 0, i32 10, !dbg !3345
  %flags32 = getelementptr inbounds %struct.acpi_device_wakeup, ptr %wakeup31, i32 0, i32 4, !dbg !3346
  %bf.load33 = load i8, ptr %flags32, align 8, !dbg !3347
  %bf.clear34 = and i8 %bf.load33, -2, !dbg !3347
  %bf.set = or i8 %bf.clear34, 0, !dbg !3347
  store i8 %bf.set, ptr %flags32, align 8, !dbg !3347
  br label %out, !dbg !3348

if.end35:                                         ; preds = %for.end
  br label %out, !dbg !3349

out:                                              ; preds = %if.end35, %do.end, %if.then12, %if.then9, %if.then4
  call void @llvm.dbg.label(metadata !3276), !dbg !3350
  call void @mutex_unlock(ptr noundef @acpi_device_lock) #15, !dbg !3351
  %26 = load i32, ptr %err, align 4, !dbg !3352
  store i32 %26, ptr %retval, align 4, !dbg !3353
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3353

cleanup:                                          ; preds = %out, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %err) #14, !dbg !3354
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #14, !dbg !3354
  %27 = load i32, ptr %retval, align 4, !dbg !3354
  ret i32 %27, !dbg !3354
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_power_off(ptr noundef %resource) #0 align 16 !dbg !3355 {
entry:
  %resource.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  store ptr %resource, ptr %resource.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %resource.addr, metadata !3357, metadata !DIExpression()), !dbg !3359
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #14, !dbg !3360
  call void @llvm.dbg.declare(metadata ptr %result, metadata !3358, metadata !DIExpression()), !dbg !3361
  %0 = load ptr, ptr %resource.addr, align 8, !dbg !3362
  %resource_lock = getelementptr inbounds %struct.acpi_power_resource, ptr %0, i32 0, i32 6, !dbg !3363
  call void @mutex_lock(ptr noundef %resource_lock) #15, !dbg !3364
  %1 = load ptr, ptr %resource.addr, align 8, !dbg !3365
  %call = call i32 @acpi_power_off_unlocked(ptr noundef %1) #15, !dbg !3366
  store i32 %call, ptr %result, align 4, !dbg !3367
  %2 = load ptr, ptr %resource.addr, align 8, !dbg !3368
  %resource_lock1 = getelementptr inbounds %struct.acpi_power_resource, ptr %2, i32 0, i32 6, !dbg !3369
  call void @mutex_unlock(ptr noundef %resource_lock1) #15, !dbg !3370
  %3 = load i32, ptr %result, align 4, !dbg !3371
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #14, !dbg !3372
  ret i32 %3, !dbg !3373
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_power_get_inferred_state(ptr noundef %device, ptr noundef %state) #0 align 16 !dbg !3374 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca ptr, align 8
  %state.addr = alloca ptr, align 8
  %list_state = alloca i8, align 1
  %result = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %list = alloca ptr, align 8
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !3378, metadata !DIExpression()), !dbg !3387
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !3379, metadata !DIExpression()), !dbg !3388
  call void @llvm.lifetime.start.p0(i64 1, ptr %list_state) #14, !dbg !3389
  call void @llvm.dbg.declare(metadata ptr %list_state, metadata !3380, metadata !DIExpression()), !dbg !3390
  store i8 0, ptr %list_state, align 1, !dbg !3390
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #14, !dbg !3391
  call void @llvm.dbg.declare(metadata ptr %result, metadata !3381, metadata !DIExpression()), !dbg !3392
  store i32 0, ptr %result, align 4, !dbg !3392
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #14, !dbg !3393
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3382, metadata !DIExpression()), !dbg !3394
  store i32 0, ptr %i, align 4, !dbg !3394
  %0 = load ptr, ptr %device.addr, align 8, !dbg !3395
  %tobool = icmp ne ptr %0, null, !dbg !3395
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3397

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %state.addr, align 8, !dbg !3398
  %tobool1 = icmp ne ptr %1, null, !dbg !3398
  br i1 %tobool1, label %if.end, label %if.then, !dbg !3399

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !3400
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup18, !dbg !3400

if.end:                                           ; preds = %lor.lhs.false
  store i32 0, ptr %i, align 4, !dbg !3401
  br label %for.cond, !dbg !3402

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4, !dbg !3403
  %cmp = icmp sle i32 %2, 3, !dbg !3404
  br i1 %cmp, label %for.body, label %for.end, !dbg !3405

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %list) #14, !dbg !3406
  call void @llvm.dbg.declare(metadata ptr %list, metadata !3383, metadata !DIExpression()), !dbg !3407
  %3 = load ptr, ptr %device.addr, align 8, !dbg !3408
  %power = getelementptr inbounds %struct.acpi_device, ptr %3, i32 0, i32 9, !dbg !3409
  %states = getelementptr inbounds %struct.acpi_device_power, ptr %power, i32 0, i32 2, !dbg !3410
  %4 = load i32, ptr %i, align 4, !dbg !3411
  %idxprom = sext i32 %4 to i64, !dbg !3408
  %arrayidx = getelementptr [5 x %struct.acpi_device_power_state], ptr %states, i64 0, i64 %idxprom, !dbg !3408
  %resources = getelementptr inbounds %struct.acpi_device_power_state, ptr %arrayidx, i32 0, i32 3, !dbg !3412
  store ptr %resources, ptr %list, align 8, !dbg !3407
  %5 = load ptr, ptr %list, align 8, !dbg !3413
  %call = call i32 @list_empty(ptr noundef %5) #15, !dbg !3415
  %tobool2 = icmp ne i32 %call, 0, !dbg !3415
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !3416

if.then3:                                         ; preds = %for.body
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3417

if.end4:                                          ; preds = %for.body
  %6 = load ptr, ptr %list, align 8, !dbg !3418
  %call5 = call i32 @acpi_power_get_list_state(ptr noundef %6, ptr noundef %list_state) #15, !dbg !3419
  store i32 %call5, ptr %result, align 4, !dbg !3420
  %7 = load i32, ptr %result, align 4, !dbg !3421
  %tobool6 = icmp ne i32 %7, 0, !dbg !3421
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !3423

if.then7:                                         ; preds = %if.end4
  %8 = load i32, ptr %result, align 4, !dbg !3424
  store i32 %8, ptr %retval, align 4, !dbg !3425
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3425

if.end8:                                          ; preds = %if.end4
  %9 = load i8, ptr %list_state, align 1, !dbg !3426
  %conv = zext i8 %9 to i32, !dbg !3426
  %cmp9 = icmp eq i32 %conv, 1, !dbg !3428
  br i1 %cmp9, label %if.then11, label %if.end12, !dbg !3429

if.then11:                                        ; preds = %if.end8
  %10 = load i32, ptr %i, align 4, !dbg !3430
  %11 = load ptr, ptr %state.addr, align 8, !dbg !3432
  store i32 %10, ptr %11, align 4, !dbg !3433
  store i32 0, ptr %retval, align 4, !dbg !3434
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3434

if.end12:                                         ; preds = %if.end8
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3435
  br label %cleanup, !dbg !3435

cleanup:                                          ; preds = %if.end12, %if.then11, %if.then7, %if.then3
  call void @llvm.lifetime.end.p0(i64 8, ptr %list) #14, !dbg !3435
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup18 [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !3436

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  %12 = load i32, ptr %i, align 4, !dbg !3437
  %inc = add i32 %12, 1, !dbg !3437
  store i32 %inc, ptr %i, align 4, !dbg !3437
  br label %for.cond, !dbg !3438, !llvm.loop !3439

for.end:                                          ; preds = %for.cond
  %13 = load ptr, ptr %device.addr, align 8, !dbg !3441
  %power13 = getelementptr inbounds %struct.acpi_device, ptr %13, i32 0, i32 9, !dbg !3442
  %states14 = getelementptr inbounds %struct.acpi_device_power, ptr %power13, i32 0, i32 2, !dbg !3443
  %arrayidx15 = getelementptr [5 x %struct.acpi_device_power_state], ptr %states14, i64 0, i64 4, !dbg !3441
  %flags = getelementptr inbounds %struct.acpi_device_power_state, ptr %arrayidx15, i32 0, i32 0, !dbg !3444
  %bf.load = load i8, ptr %flags, align 8, !dbg !3445
  %bf.clear = and i8 %bf.load, 1, !dbg !3445
  %conv16 = zext i8 %bf.clear to i32, !dbg !3441
  %tobool17 = icmp ne i32 %conv16, 0, !dbg !3441
  %14 = zext i1 %tobool17 to i64, !dbg !3441
  %cond = select i1 %tobool17, i32 4, i32 3, !dbg !3441
  %15 = load ptr, ptr %state.addr, align 8, !dbg !3446
  store i32 %cond, ptr %15, align 4, !dbg !3447
  store i32 0, ptr %retval, align 4, !dbg !3448
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup18, !dbg !3448

cleanup18:                                        ; preds = %for.end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #14, !dbg !3449
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #14, !dbg !3449
  call void @llvm.lifetime.end.p0(i64 1, ptr %list_state) #14, !dbg !3449
  %16 = load i32, ptr %retval, align 4, !dbg !3449
  ret i32 %16, !dbg !3449
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_empty(ptr noundef %head) #3 align 16 !dbg !3450 {
entry:
  %head.addr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !3456, metadata !DIExpression()), !dbg !3457
  br label %do.body, !dbg !3458

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3460

do.end:                                           ; preds = %do.body
  %0 = load ptr, ptr %head.addr, align 8, !dbg !3458
  %next = getelementptr inbounds %struct.list_head, ptr %0, i32 0, i32 0, !dbg !3458
  %1 = load volatile ptr, ptr %next, align 8, !dbg !3458
  store ptr %1, ptr %tmp, align 8, !dbg !3460
  %2 = load ptr, ptr %tmp, align 8, !dbg !3458
  %3 = load ptr, ptr %head.addr, align 8, !dbg !3462
  %cmp = icmp eq ptr %2, %3, !dbg !3463
  %conv = zext i1 %cmp to i32, !dbg !3463
  ret i32 %conv, !dbg !3464
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_power_get_list_state(ptr noundef %list, ptr noundef %state) #0 align 16 !dbg !3465 {
entry:
  %retval = alloca i32, align 4
  %list.addr = alloca ptr, align 8
  %state.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %cur_state = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %resource = alloca ptr, align 8
  %result = alloca i32, align 4
  %__mptr13 = alloca ptr, align 8
  %tmp16 = alloca ptr, align 8
  %tmp18 = alloca i32, align 4
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !3469, metadata !DIExpression()), !dbg !3482
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !3470, metadata !DIExpression()), !dbg !3483
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #14, !dbg !3484
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !3471, metadata !DIExpression()), !dbg !3485
  call void @llvm.lifetime.start.p0(i64 1, ptr %cur_state) #14, !dbg !3486
  call void @llvm.dbg.declare(metadata ptr %cur_state, metadata !3472, metadata !DIExpression()), !dbg !3487
  store i8 0, ptr %cur_state, align 1, !dbg !3487
  %0 = load ptr, ptr %list.addr, align 8, !dbg !3488
  %tobool = icmp ne ptr %0, null, !dbg !3488
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3490

lor.lhs.false:                                    ; preds = %entry
  %1 = load ptr, ptr %state.addr, align 8, !dbg !3491
  %tobool2 = icmp ne ptr %1, null, !dbg !3491
  br i1 %tobool2, label %if.end, label %if.then, !dbg !3492

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !3493
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup19, !dbg !3493

if.end:                                           ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !3494
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3473, metadata !DIExpression()), !dbg !3494
  %2 = load ptr, ptr %list.addr, align 8, !dbg !3494
  %next = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 0, !dbg !3494
  %3 = load ptr, ptr %next, align 8, !dbg !3494
  store ptr %3, ptr %__mptr, align 8, !dbg !3494
  %4 = load ptr, ptr %__mptr, align 8, !dbg !3494
  %add.ptr = getelementptr i8, ptr %4, i64 0, !dbg !3494
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3494
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !3495
  %5 = load ptr, ptr %tmp, align 8, !dbg !3494
  store ptr %5, ptr %entry1, align 8, !dbg !3495
  br label %for.cond, !dbg !3495

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load ptr, ptr %entry1, align 8, !dbg !3496
  %node = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %6, i32 0, i32 0, !dbg !3496
  %7 = load ptr, ptr %list.addr, align 8, !dbg !3496
  %cmp = icmp eq ptr %node, %7, !dbg !3496
  %lnot = xor i1 %cmp, true, !dbg !3496
  br i1 %lnot, label %for.body, label %for.end, !dbg !3495

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %resource) #14, !dbg !3497
  call void @llvm.dbg.declare(metadata ptr %resource, metadata !3476, metadata !DIExpression()), !dbg !3498
  %8 = load ptr, ptr %entry1, align 8, !dbg !3499
  %resource3 = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %8, i32 0, i32 1, !dbg !3500
  %9 = load ptr, ptr %resource3, align 8, !dbg !3500
  store ptr %9, ptr %resource, align 8, !dbg !3498
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #14, !dbg !3501
  call void @llvm.dbg.declare(metadata ptr %result, metadata !3479, metadata !DIExpression()), !dbg !3502
  %10 = load ptr, ptr %resource, align 8, !dbg !3503
  %resource_lock = getelementptr inbounds %struct.acpi_power_resource, ptr %10, i32 0, i32 6, !dbg !3504
  call void @mutex_lock(ptr noundef %resource_lock) #15, !dbg !3505
  %11 = load ptr, ptr %resource, align 8, !dbg !3506
  %call = call i32 @acpi_power_get_state(ptr noundef %11, ptr noundef %cur_state) #15, !dbg !3507
  store i32 %call, ptr %result, align 4, !dbg !3508
  %12 = load ptr, ptr %resource, align 8, !dbg !3509
  %resource_lock4 = getelementptr inbounds %struct.acpi_power_resource, ptr %12, i32 0, i32 6, !dbg !3510
  call void @mutex_unlock(ptr noundef %resource_lock4) #15, !dbg !3511
  %13 = load i32, ptr %result, align 4, !dbg !3512
  %tobool5 = icmp ne i32 %13, 0, !dbg !3512
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !3514

if.then6:                                         ; preds = %for.body
  %14 = load i32, ptr %result, align 4, !dbg !3515
  store i32 %14, ptr %retval, align 4, !dbg !3516
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3516

if.end7:                                          ; preds = %for.body
  %15 = load i8, ptr %cur_state, align 1, !dbg !3517
  %conv = zext i8 %15 to i32, !dbg !3517
  %cmp8 = icmp ne i32 %conv, 1, !dbg !3519
  br i1 %cmp8, label %if.then10, label %if.end11, !dbg !3520

if.then10:                                        ; preds = %if.end7
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3521

if.end11:                                         ; preds = %if.end7
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3522
  br label %cleanup, !dbg !3522

cleanup:                                          ; preds = %if.end11, %if.then10, %if.then6
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #14, !dbg !3522
  call void @llvm.lifetime.end.p0(i64 8, ptr %resource) #14, !dbg !3522
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup19 [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !3523

for.inc:                                          ; preds = %cleanup.cont
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr13) #14, !dbg !3524
  call void @llvm.dbg.declare(metadata ptr %__mptr13, metadata !3480, metadata !DIExpression()), !dbg !3524
  %16 = load ptr, ptr %entry1, align 8, !dbg !3524
  %node14 = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %16, i32 0, i32 0, !dbg !3524
  %next15 = getelementptr inbounds %struct.list_head, ptr %node14, i32 0, i32 0, !dbg !3524
  %17 = load ptr, ptr %next15, align 8, !dbg !3524
  store ptr %17, ptr %__mptr13, align 8, !dbg !3524
  %18 = load ptr, ptr %__mptr13, align 8, !dbg !3524
  %add.ptr17 = getelementptr i8, ptr %18, i64 0, !dbg !3524
  store ptr %add.ptr17, ptr %tmp16, align 8, !dbg !3524
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr13) #14, !dbg !3496
  %19 = load ptr, ptr %tmp16, align 8, !dbg !3524
  store ptr %19, ptr %entry1, align 8, !dbg !3496
  br label %for.cond, !dbg !3496, !llvm.loop !3525

for.end:                                          ; preds = %cleanup, %for.cond
  store i32 0, ptr %tmp18, align 4, !dbg !3527
  %20 = load i32, ptr %tmp18, align 4, !dbg !3530
  %21 = load i8, ptr %cur_state, align 1, !dbg !3531
  %22 = load ptr, ptr %state.addr, align 8, !dbg !3532
  store i8 %21, ptr %22, align 1, !dbg !3533
  store i32 0, ptr %retval, align 4, !dbg !3534
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup19, !dbg !3534

cleanup19:                                        ; preds = %for.end, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %cur_state) #14, !dbg !3535
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #14, !dbg !3535
  %23 = load i32, ptr %retval, align 4, !dbg !3535
  ret i32 %23, !dbg !3535
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_power_on_resources(ptr noundef %device, i32 noundef %state) #0 align 16 !dbg !3536 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca ptr, align 8
  %state.addr = alloca i32, align 4
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !3538, metadata !DIExpression()), !dbg !3540
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !3539, metadata !DIExpression()), !dbg !3541
  %0 = load ptr, ptr %device.addr, align 8, !dbg !3542
  %tobool = icmp ne ptr %0, null, !dbg !3542
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3544

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %state.addr, align 4, !dbg !3545
  %cmp = icmp slt i32 %1, 0, !dbg !3546
  br i1 %cmp, label %if.then, label %lor.lhs.false1, !dbg !3547

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %2 = load i32, ptr %state.addr, align 4, !dbg !3548
  %cmp2 = icmp sgt i32 %2, 3, !dbg !3549
  br i1 %cmp2, label %if.then, label %if.end, !dbg !3550

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !3551
  br label %return, !dbg !3551

if.end:                                           ; preds = %lor.lhs.false1
  %3 = load ptr, ptr %device.addr, align 8, !dbg !3552
  %power = getelementptr inbounds %struct.acpi_device, ptr %3, i32 0, i32 9, !dbg !3553
  %states = getelementptr inbounds %struct.acpi_device_power, ptr %power, i32 0, i32 2, !dbg !3554
  %4 = load i32, ptr %state.addr, align 4, !dbg !3555
  %idxprom = sext i32 %4 to i64, !dbg !3552
  %arrayidx = getelementptr [5 x %struct.acpi_device_power_state], ptr %states, i64 0, i64 %idxprom, !dbg !3552
  %resources = getelementptr inbounds %struct.acpi_device_power_state, ptr %arrayidx, i32 0, i32 3, !dbg !3556
  %call = call i32 @acpi_power_on_list(ptr noundef %resources) #15, !dbg !3557
  store i32 %call, ptr %retval, align 4, !dbg !3558
  br label %return, !dbg !3558

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !3559
  ret i32 %5, !dbg !3559
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_power_transition(ptr noundef %device, i32 noundef %state) #0 align 16 !dbg !3560 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca ptr, align 8
  %state.addr = alloca i32, align 4
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !3562, metadata !DIExpression()), !dbg !3565
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !3563, metadata !DIExpression()), !dbg !3566
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #14, !dbg !3567
  call void @llvm.dbg.declare(metadata ptr %result, metadata !3564, metadata !DIExpression()), !dbg !3568
  store i32 0, ptr %result, align 4, !dbg !3568
  %0 = load ptr, ptr %device.addr, align 8, !dbg !3569
  %tobool = icmp ne ptr %0, null, !dbg !3569
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3571

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr %state.addr, align 4, !dbg !3572
  %cmp = icmp slt i32 %1, 0, !dbg !3573
  br i1 %cmp, label %if.then, label %lor.lhs.false1, !dbg !3574

lor.lhs.false1:                                   ; preds = %lor.lhs.false
  %2 = load i32, ptr %state.addr, align 4, !dbg !3575
  %cmp2 = icmp sgt i32 %2, 4, !dbg !3576
  br i1 %cmp2, label %if.then, label %if.end, !dbg !3577

if.then:                                          ; preds = %lor.lhs.false1, %lor.lhs.false, %entry
  store i32 -22, ptr %retval, align 4, !dbg !3578
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3578

if.end:                                           ; preds = %lor.lhs.false1
  %3 = load ptr, ptr %device.addr, align 8, !dbg !3579
  %power = getelementptr inbounds %struct.acpi_device, ptr %3, i32 0, i32 9, !dbg !3581
  %state3 = getelementptr inbounds %struct.acpi_device_power, ptr %power, i32 0, i32 0, !dbg !3582
  %4 = load i32, ptr %state3, align 8, !dbg !3582
  %5 = load i32, ptr %state.addr, align 4, !dbg !3583
  %cmp4 = icmp eq i32 %4, %5, !dbg !3584
  br i1 %cmp4, label %if.then7, label %lor.lhs.false5, !dbg !3585

lor.lhs.false5:                                   ; preds = %if.end
  %6 = load ptr, ptr %device.addr, align 8, !dbg !3586
  %flags = getelementptr inbounds %struct.acpi_device, ptr %6, i32 0, i32 7, !dbg !3587
  %bf.load = load i32, ptr %flags, align 4, !dbg !3588
  %bf.lshr = lshr i32 %bf.load, 3, !dbg !3588
  %bf.clear = and i32 %bf.lshr, 1, !dbg !3588
  %tobool6 = icmp ne i32 %bf.clear, 0, !dbg !3586
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !3589

if.then7:                                         ; preds = %lor.lhs.false5, %if.end
  store i32 0, ptr %retval, align 4, !dbg !3590
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3590

if.end8:                                          ; preds = %lor.lhs.false5
  %7 = load ptr, ptr %device.addr, align 8, !dbg !3591
  %power9 = getelementptr inbounds %struct.acpi_device, ptr %7, i32 0, i32 9, !dbg !3593
  %state10 = getelementptr inbounds %struct.acpi_device_power, ptr %power9, i32 0, i32 0, !dbg !3594
  %8 = load i32, ptr %state10, align 8, !dbg !3594
  %cmp11 = icmp slt i32 %8, 0, !dbg !3595
  br i1 %cmp11, label %if.then16, label %lor.lhs.false12, !dbg !3596

lor.lhs.false12:                                  ; preds = %if.end8
  %9 = load ptr, ptr %device.addr, align 8, !dbg !3597
  %power13 = getelementptr inbounds %struct.acpi_device, ptr %9, i32 0, i32 9, !dbg !3598
  %state14 = getelementptr inbounds %struct.acpi_device_power, ptr %power13, i32 0, i32 0, !dbg !3599
  %10 = load i32, ptr %state14, align 8, !dbg !3599
  %cmp15 = icmp sgt i32 %10, 4, !dbg !3600
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !3601

if.then16:                                        ; preds = %lor.lhs.false12, %if.end8
  store i32 -19, ptr %retval, align 4, !dbg !3602
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3602

if.end17:                                         ; preds = %lor.lhs.false12
  %11 = load i32, ptr %state.addr, align 4, !dbg !3603
  %cmp18 = icmp slt i32 %11, 4, !dbg !3605
  br i1 %cmp18, label %if.then19, label %if.end21, !dbg !3606

if.then19:                                        ; preds = %if.end17
  %12 = load ptr, ptr %device.addr, align 8, !dbg !3607
  %power20 = getelementptr inbounds %struct.acpi_device, ptr %12, i32 0, i32 9, !dbg !3608
  %states = getelementptr inbounds %struct.acpi_device_power, ptr %power20, i32 0, i32 2, !dbg !3609
  %13 = load i32, ptr %state.addr, align 4, !dbg !3610
  %idxprom = sext i32 %13 to i64, !dbg !3607
  %arrayidx = getelementptr [5 x %struct.acpi_device_power_state], ptr %states, i64 0, i64 %idxprom, !dbg !3607
  %resources = getelementptr inbounds %struct.acpi_device_power_state, ptr %arrayidx, i32 0, i32 3, !dbg !3611
  %call = call i32 @acpi_power_on_list(ptr noundef %resources) #15, !dbg !3612
  store i32 %call, ptr %result, align 4, !dbg !3613
  br label %if.end21, !dbg !3614

if.end21:                                         ; preds = %if.then19, %if.end17
  %14 = load i32, ptr %result, align 4, !dbg !3615
  %tobool22 = icmp ne i32 %14, 0, !dbg !3615
  br i1 %tobool22, label %if.end35, label %land.lhs.true, !dbg !3617

land.lhs.true:                                    ; preds = %if.end21
  %15 = load ptr, ptr %device.addr, align 8, !dbg !3618
  %power23 = getelementptr inbounds %struct.acpi_device, ptr %15, i32 0, i32 9, !dbg !3619
  %state24 = getelementptr inbounds %struct.acpi_device_power, ptr %power23, i32 0, i32 0, !dbg !3620
  %16 = load i32, ptr %state24, align 8, !dbg !3620
  %cmp25 = icmp slt i32 %16, 4, !dbg !3621
  br i1 %cmp25, label %if.then26, label %if.end35, !dbg !3622

if.then26:                                        ; preds = %land.lhs.true
  %17 = load ptr, ptr %device.addr, align 8, !dbg !3623
  %power27 = getelementptr inbounds %struct.acpi_device, ptr %17, i32 0, i32 9, !dbg !3624
  %states28 = getelementptr inbounds %struct.acpi_device_power, ptr %power27, i32 0, i32 2, !dbg !3625
  %18 = load ptr, ptr %device.addr, align 8, !dbg !3626
  %power29 = getelementptr inbounds %struct.acpi_device, ptr %18, i32 0, i32 9, !dbg !3627
  %state30 = getelementptr inbounds %struct.acpi_device_power, ptr %power29, i32 0, i32 0, !dbg !3628
  %19 = load i32, ptr %state30, align 8, !dbg !3628
  %idxprom31 = sext i32 %19 to i64, !dbg !3623
  %arrayidx32 = getelementptr [5 x %struct.acpi_device_power_state], ptr %states28, i64 0, i64 %idxprom31, !dbg !3623
  %resources33 = getelementptr inbounds %struct.acpi_device_power_state, ptr %arrayidx32, i32 0, i32 3, !dbg !3629
  %call34 = call i32 @acpi_power_off_list(ptr noundef %resources33) #15, !dbg !3630
  br label %if.end35, !dbg !3630

if.end35:                                         ; preds = %if.then26, %land.lhs.true, %if.end21
  %20 = load i32, ptr %result, align 4, !dbg !3631
  %tobool36 = icmp ne i32 %20, 0, !dbg !3631
  br i1 %tobool36, label %cond.true, label %cond.false, !dbg !3631

cond.true:                                        ; preds = %if.end35
  br label %cond.end, !dbg !3631

cond.false:                                       ; preds = %if.end35
  %21 = load i32, ptr %state.addr, align 4, !dbg !3632
  br label %cond.end, !dbg !3631

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 255, %cond.true ], [ %21, %cond.false ], !dbg !3631
  %22 = load ptr, ptr %device.addr, align 8, !dbg !3633
  %power37 = getelementptr inbounds %struct.acpi_device, ptr %22, i32 0, i32 9, !dbg !3634
  %state38 = getelementptr inbounds %struct.acpi_device_power, ptr %power37, i32 0, i32 0, !dbg !3635
  store i32 %cond, ptr %state38, align 8, !dbg !3636
  %23 = load i32, ptr %result, align 4, !dbg !3637
  store i32 %23, ptr %retval, align 4, !dbg !3638
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3638

cleanup:                                          ; preds = %cond.end, %if.then16, %if.then7, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #14, !dbg !3639
  %24 = load i32, ptr %retval, align 4, !dbg !3639
  ret i32 %24, !dbg !3639
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3640 dso_local ptr @acpi_fetch_acpi_dev(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !3641 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !3645, metadata !DIExpression()), !dbg !3647
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !3646, metadata !DIExpression()), !dbg !3648
  %0 = load i64, ptr %size.addr, align 8, !dbg !3649
  %1 = load i32, ptr %flags.addr, align 4, !dbg !3650
  %or = or i32 %1, 256, !dbg !3651
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !3652
  ret ptr %call, !dbg !3653
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3654 dso_local void @acpi_init_device_object(ptr noundef, ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_release_power_resource(ptr noundef %dev) #0 align 16 !dbg !3658 {
entry:
  %dev.addr = alloca ptr, align 8
  %device = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %resource = alloca ptr, align 8
  %__mptr1 = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3660, metadata !DIExpression()), !dbg !3667
  call void @llvm.lifetime.start.p0(i64 8, ptr %device) #14, !dbg !3668
  call void @llvm.dbg.declare(metadata ptr %device, metadata !3661, metadata !DIExpression()), !dbg !3669
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !3670
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3662, metadata !DIExpression()), !dbg !3670
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3670
  store ptr %0, ptr %__mptr, align 8, !dbg !3670
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3670
  %add.ptr = getelementptr i8, ptr %1, i64 -608, !dbg !3670
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3670
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !3671
  %2 = load ptr, ptr %tmp, align 8, !dbg !3670
  store ptr %2, ptr %device, align 8, !dbg !3669
  call void @llvm.lifetime.start.p0(i64 8, ptr %resource) #14, !dbg !3672
  call void @llvm.dbg.declare(metadata ptr %resource, metadata !3664, metadata !DIExpression()), !dbg !3673
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr1) #14, !dbg !3674
  call void @llvm.dbg.declare(metadata ptr %__mptr1, metadata !3665, metadata !DIExpression()), !dbg !3674
  %3 = load ptr, ptr %device, align 8, !dbg !3674
  store ptr %3, ptr %__mptr1, align 8, !dbg !3674
  %4 = load ptr, ptr %__mptr1, align 8, !dbg !3674
  %add.ptr3 = getelementptr i8, ptr %4, i64 0, !dbg !3674
  store ptr %add.ptr3, ptr %tmp2, align 8, !dbg !3674
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr1) #14, !dbg !3675
  %5 = load ptr, ptr %tmp2, align 8, !dbg !3674
  store ptr %5, ptr %resource, align 8, !dbg !3676
  call void @mutex_lock(ptr noundef @power_resource_list_lock) #15, !dbg !3677
  %6 = load ptr, ptr %resource, align 8, !dbg !3678
  %list_node = getelementptr inbounds %struct.acpi_power_resource, ptr %6, i32 0, i32 1, !dbg !3679
  call void @list_del(ptr noundef %list_node) #15, !dbg !3680
  call void @mutex_unlock(ptr noundef @power_resource_list_lock) #15, !dbg !3681
  %7 = load ptr, ptr %device, align 8, !dbg !3682
  %pnp = getelementptr inbounds %struct.acpi_device, ptr %7, i32 0, i32 8, !dbg !3683
  call void @acpi_free_pnp_ids(ptr noundef %pnp) #15, !dbg !3684
  %8 = load ptr, ptr %resource, align 8, !dbg !3685
  call void @kfree(ptr noundef %8) #15, !dbg !3686
  call void @llvm.lifetime.end.p0(i64 8, ptr %resource) #14, !dbg !3687
  call void @llvm.lifetime.end.p0(i64 8, ptr %device) #14, !dbg !3687
  ret void, !dbg !3687
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3688 dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #3 align 16 !dbg !3692 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !3694, metadata !DIExpression()), !dbg !3695
  br label %do.body, !dbg !3696

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3697

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !3699

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !3697

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !3701
  %1 = load ptr, ptr %list.addr, align 8, !dbg !3701
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !3701
  store volatile ptr %0, ptr %next, align 8, !dbg !3701
  br label %do.end3, !dbg !3701

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !3697

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !3703

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !3704

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !3706

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !3704

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !3708
  %3 = load ptr, ptr %list.addr, align 8, !dbg !3708
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !3708
  store volatile ptr %2, ptr %prev, align 8, !dbg !3708
  br label %do.end9, !dbg !3708

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !3704

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !3710
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3711 dso_local ptr @strcpy(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__acpi_power_on(ptr noundef %resource) #0 align 16 !dbg !3715 {
entry:
  %retval = alloca i32, align 4
  %resource.addr = alloca ptr, align 8
  %handle = alloca ptr, align 8
  %dep = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  %__mptr14 = alloca ptr, align 8
  %tmp17 = alloca ptr, align 8
  store ptr %resource, ptr %resource.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %resource.addr, metadata !3717, metadata !DIExpression()), !dbg !3727
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #14, !dbg !3728
  call void @llvm.dbg.declare(metadata ptr %handle, metadata !3718, metadata !DIExpression()), !dbg !3729
  %0 = load ptr, ptr %resource.addr, align 8, !dbg !3730
  %device = getelementptr inbounds %struct.acpi_power_resource, ptr %0, i32 0, i32 0, !dbg !3731
  %handle1 = getelementptr inbounds %struct.acpi_device, ptr %device, i32 0, i32 2, !dbg !3732
  %1 = load ptr, ptr %handle1, align 8, !dbg !3732
  store ptr %1, ptr %handle, align 8, !dbg !3729
  call void @llvm.lifetime.start.p0(i64 8, ptr %dep) #14, !dbg !3733
  call void @llvm.dbg.declare(metadata ptr %dep, metadata !3719, metadata !DIExpression()), !dbg !3734
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !3735
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3720, metadata !DIExpression()), !dbg !3736
  store i32 0, ptr %status, align 4, !dbg !3736
  %2 = load ptr, ptr %handle, align 8, !dbg !3737
  %call = call i32 @acpi_evaluate_object(ptr noundef %2, ptr noundef @.str.19, ptr noundef null, ptr noundef null) #15, !dbg !3738
  store i32 %call, ptr %status, align 4, !dbg !3739
  %3 = load i32, ptr %status, align 4, !dbg !3740
  %tobool = icmp ne i32 %3, 0, !dbg !3740
  br i1 %tobool, label %if.then, label %if.end, !dbg !3742

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %resource.addr, align 8, !dbg !3743
  %state = getelementptr inbounds %struct.acpi_power_resource, ptr %4, i32 0, i32 5, !dbg !3745
  store i8 -1, ptr %state, align 4, !dbg !3746
  store i32 -19, ptr %retval, align 4, !dbg !3747
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3747

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %resource.addr, align 8, !dbg !3748
  %state2 = getelementptr inbounds %struct.acpi_power_resource, ptr %5, i32 0, i32 5, !dbg !3749
  store i8 1, ptr %state2, align 4, !dbg !3750
  store i32 0, ptr %tmp, align 4, !dbg !3751
  %6 = load i32, ptr %tmp, align 4, !dbg !3754
  %7 = load ptr, ptr %resource.addr, align 8, !dbg !3755
  %dependents = getelementptr inbounds %struct.acpi_power_resource, ptr %7, i32 0, i32 7, !dbg !3757
  %call3 = call i32 @list_empty(ptr noundef %dependents) #15, !dbg !3758
  %tobool4 = icmp ne i32 %call3, 0, !dbg !3758
  br i1 %tobool4, label %if.then8, label %lor.lhs.false, !dbg !3759

lor.lhs.false:                                    ; preds = %if.end
  %8 = load ptr, ptr %resource.addr, align 8, !dbg !3760
  %dependents5 = getelementptr inbounds %struct.acpi_power_resource, ptr %8, i32 0, i32 7, !dbg !3761
  %call6 = call i32 @list_is_singular(ptr noundef %dependents5) #15, !dbg !3762
  %tobool7 = icmp ne i32 %call6, 0, !dbg !3762
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !3763

if.then8:                                         ; preds = %lor.lhs.false, %if.end
  store i32 0, ptr %retval, align 4, !dbg !3764
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3764

if.end9:                                          ; preds = %lor.lhs.false
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !3765
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3721, metadata !DIExpression()), !dbg !3765
  %9 = load ptr, ptr %resource.addr, align 8, !dbg !3765
  %dependents10 = getelementptr inbounds %struct.acpi_power_resource, ptr %9, i32 0, i32 7, !dbg !3765
  %next = getelementptr inbounds %struct.list_head, ptr %dependents10, i32 0, i32 0, !dbg !3765
  %10 = load ptr, ptr %next, align 8, !dbg !3765
  store ptr %10, ptr %__mptr, align 8, !dbg !3765
  %11 = load ptr, ptr %__mptr, align 8, !dbg !3765
  %add.ptr = getelementptr i8, ptr %11, i64 -8, !dbg !3765
  store ptr %add.ptr, ptr %tmp11, align 8, !dbg !3765
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !3766
  %12 = load ptr, ptr %tmp11, align 8, !dbg !3765
  store ptr %12, ptr %dep, align 8, !dbg !3766
  br label %for.cond, !dbg !3766

for.cond:                                         ; preds = %for.inc, %if.end9
  %13 = load ptr, ptr %dep, align 8, !dbg !3767
  %node = getelementptr inbounds %struct.acpi_power_dependent_device, ptr %13, i32 0, i32 1, !dbg !3767
  %14 = load ptr, ptr %resource.addr, align 8, !dbg !3767
  %dependents12 = getelementptr inbounds %struct.acpi_power_resource, ptr %14, i32 0, i32 7, !dbg !3767
  %cmp = icmp eq ptr %node, %dependents12, !dbg !3767
  %lnot = xor i1 %cmp, true, !dbg !3767
  br i1 %lnot, label %for.body, label %for.end, !dbg !3766

for.body:                                         ; preds = %for.cond
  %15 = load ptr, ptr %dep, align 8, !dbg !3768
  %dev = getelementptr inbounds %struct.acpi_power_dependent_device, ptr %15, i32 0, i32 0, !dbg !3770
  %16 = load ptr, ptr %dev, align 8, !dbg !3770
  %call13 = call i32 @pm_request_resume(ptr noundef %16) #15, !dbg !3771
  br label %for.inc, !dbg !3772

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr14) #14, !dbg !3773
  call void @llvm.dbg.declare(metadata ptr %__mptr14, metadata !3724, metadata !DIExpression()), !dbg !3773
  %17 = load ptr, ptr %dep, align 8, !dbg !3773
  %node15 = getelementptr inbounds %struct.acpi_power_dependent_device, ptr %17, i32 0, i32 1, !dbg !3773
  %next16 = getelementptr inbounds %struct.list_head, ptr %node15, i32 0, i32 0, !dbg !3773
  %18 = load ptr, ptr %next16, align 8, !dbg !3773
  store ptr %18, ptr %__mptr14, align 8, !dbg !3773
  %19 = load ptr, ptr %__mptr14, align 8, !dbg !3773
  %add.ptr18 = getelementptr i8, ptr %19, i64 -8, !dbg !3773
  store ptr %add.ptr18, ptr %tmp17, align 8, !dbg !3773
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr14) #14, !dbg !3767
  %20 = load ptr, ptr %tmp17, align 8, !dbg !3773
  store ptr %20, ptr %dep, align 8, !dbg !3767
  br label %for.cond, !dbg !3767, !llvm.loop !3774

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !3776
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3776

cleanup:                                          ; preds = %for.end, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !3777
  call void @llvm.lifetime.end.p0(i64 8, ptr %dep) #14, !dbg !3777
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #14, !dbg !3777
  %21 = load i32, ptr %retval, align 4, !dbg !3777
  ret i32 %21, !dbg !3777
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3778 dso_local i32 @acpi_tie_acpi_dev(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3779 dso_local i32 @acpi_device_add(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3780 dso_local i32 @device_create_file(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_power_sysfs_remove(ptr noundef %device) #0 align 16 !dbg !3785 {
entry:
  %device.addr = alloca ptr, align 8
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !3787, metadata !DIExpression()), !dbg !3788
  %0 = load ptr, ptr %device.addr, align 8, !dbg !3789
  %dev = getelementptr inbounds %struct.acpi_device, ptr %0, i32 0, i32 18, !dbg !3790
  call void @device_remove_file(ptr noundef %dev, ptr noundef @dev_attr_resource_in_use) #15, !dbg !3791
  ret void, !dbg !3792
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_power_add_resource_to_list(ptr noundef %resource) #0 align 16 !dbg !3793 {
entry:
  %resource.addr = alloca ptr, align 8
  %r = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr6 = alloca ptr, align 8
  %tmp8 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %resource, ptr %resource.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %resource.addr, metadata !3797, metadata !DIExpression()), !dbg !3808
  call void @mutex_lock(ptr noundef @power_resource_list_lock) #15, !dbg !3809
  %call = call i32 @list_empty(ptr noundef @acpi_power_resource_list) #15, !dbg !3810
  %tobool = icmp ne i32 %call, 0, !dbg !3810
  br i1 %tobool, label %if.end10, label %if.then, !dbg !3811

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %r) #14, !dbg !3812
  call void @llvm.dbg.declare(metadata ptr %r, metadata !3798, metadata !DIExpression()), !dbg !3813
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !3814
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3801, metadata !DIExpression()), !dbg !3814
  %0 = load ptr, ptr @acpi_power_resource_list, align 8, !dbg !3814
  store ptr %0, ptr %__mptr, align 8, !dbg !3814
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3814
  %add.ptr = getelementptr i8, ptr %1, i64 -1400, !dbg !3814
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3814
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !3815
  %2 = load ptr, ptr %tmp, align 8, !dbg !3814
  store ptr %2, ptr %r, align 8, !dbg !3815
  br label %for.cond, !dbg !3815

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load ptr, ptr %r, align 8, !dbg !3816
  %list_node = getelementptr inbounds %struct.acpi_power_resource, ptr %3, i32 0, i32 1, !dbg !3816
  %cmp = icmp eq ptr %list_node, @acpi_power_resource_list, !dbg !3816
  %lnot = xor i1 %cmp, true, !dbg !3816
  br i1 %lnot, label %for.body, label %for.end, !dbg !3815

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %r, align 8, !dbg !3817
  %order = getelementptr inbounds %struct.acpi_power_resource, ptr %4, i32 0, i32 3, !dbg !3819
  %5 = load i32, ptr %order, align 4, !dbg !3819
  %6 = load ptr, ptr %resource.addr, align 8, !dbg !3820
  %order1 = getelementptr inbounds %struct.acpi_power_resource, ptr %6, i32 0, i32 3, !dbg !3821
  %7 = load i32, ptr %order1, align 4, !dbg !3821
  %cmp2 = icmp ugt i32 %5, %7, !dbg !3822
  br i1 %cmp2, label %if.then3, label %if.end, !dbg !3823

if.then3:                                         ; preds = %for.body
  %8 = load ptr, ptr %resource.addr, align 8, !dbg !3824
  %list_node4 = getelementptr inbounds %struct.acpi_power_resource, ptr %8, i32 0, i32 1, !dbg !3826
  %9 = load ptr, ptr %r, align 8, !dbg !3827
  %list_node5 = getelementptr inbounds %struct.acpi_power_resource, ptr %9, i32 0, i32 1, !dbg !3828
  call void @list_add_tail(ptr noundef %list_node4, ptr noundef %list_node5) #15, !dbg !3829
  store i32 5, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3830

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !3821

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr6) #14, !dbg !3831
  call void @llvm.dbg.declare(metadata ptr %__mptr6, metadata !3804, metadata !DIExpression()), !dbg !3831
  %10 = load ptr, ptr %r, align 8, !dbg !3831
  %list_node7 = getelementptr inbounds %struct.acpi_power_resource, ptr %10, i32 0, i32 1, !dbg !3831
  %next = getelementptr inbounds %struct.list_head, ptr %list_node7, i32 0, i32 0, !dbg !3831
  %11 = load ptr, ptr %next, align 8, !dbg !3831
  store ptr %11, ptr %__mptr6, align 8, !dbg !3831
  %12 = load ptr, ptr %__mptr6, align 8, !dbg !3831
  %add.ptr9 = getelementptr i8, ptr %12, i64 -1400, !dbg !3831
  store ptr %add.ptr9, ptr %tmp8, align 8, !dbg !3831
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr6) #14, !dbg !3816
  %13 = load ptr, ptr %tmp8, align 8, !dbg !3831
  store ptr %13, ptr %r, align 8, !dbg !3816
  br label %for.cond, !dbg !3816, !llvm.loop !3832

for.end:                                          ; preds = %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3834
  br label %cleanup, !dbg !3834

cleanup:                                          ; preds = %if.then3, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %r) #14, !dbg !3834
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 5, label %out
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %if.end10, !dbg !3835

if.end10:                                         ; preds = %cleanup.cont, %entry
  %14 = load ptr, ptr %resource.addr, align 8, !dbg !3836
  %list_node11 = getelementptr inbounds %struct.acpi_power_resource, ptr %14, i32 0, i32 1, !dbg !3837
  call void @list_add_tail(ptr noundef %list_node11, ptr noundef @acpi_power_resource_list) #15, !dbg !3838
  br label %out, !dbg !3838

out:                                              ; preds = %if.end10, %cleanup
  call void @llvm.dbg.label(metadata !3807), !dbg !3839
  call void @mutex_unlock(ptr noundef @power_resource_list_lock) #15, !dbg !3840
  ret void, !dbg !3841

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3842 dso_local void @acpi_device_add_finalize(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_resume_power_resources() #0 align 16 !dbg !3843 {
entry:
  %resource = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %result = alloca i32, align 4
  %state = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %tmp7 = alloca i32, align 4
  %__mptr12 = alloca ptr, align 8
  %tmp14 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %resource) #14, !dbg !3855
  call void @llvm.dbg.declare(metadata ptr %resource, metadata !3845, metadata !DIExpression()), !dbg !3856
  call void @mutex_lock(ptr noundef @power_resource_list_lock) #15, !dbg !3857
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !3858
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3846, metadata !DIExpression()), !dbg !3858
  %0 = load ptr, ptr @acpi_power_resource_list, align 8, !dbg !3858
  store ptr %0, ptr %__mptr, align 8, !dbg !3858
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3858
  %add.ptr = getelementptr i8, ptr %1, i64 -1400, !dbg !3858
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3858
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !3859
  %2 = load ptr, ptr %tmp, align 8, !dbg !3858
  store ptr %2, ptr %resource, align 8, !dbg !3859
  br label %for.cond, !dbg !3859

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load ptr, ptr %resource, align 8, !dbg !3860
  %list_node = getelementptr inbounds %struct.acpi_power_resource, ptr %3, i32 0, i32 1, !dbg !3860
  %cmp = icmp eq ptr %list_node, @acpi_power_resource_list, !dbg !3860
  %lnot = xor i1 %cmp, true, !dbg !3860
  br i1 %lnot, label %for.body, label %for.end, !dbg !3859

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #14, !dbg !3861
  call void @llvm.dbg.declare(metadata ptr %result, metadata !3849, metadata !DIExpression()), !dbg !3862
  call void @llvm.lifetime.start.p0(i64 1, ptr %state) #14, !dbg !3863
  call void @llvm.dbg.declare(metadata ptr %state, metadata !3852, metadata !DIExpression()), !dbg !3864
  %4 = load ptr, ptr %resource, align 8, !dbg !3865
  %resource_lock = getelementptr inbounds %struct.acpi_power_resource, ptr %4, i32 0, i32 6, !dbg !3866
  call void @mutex_lock(ptr noundef %resource_lock) #15, !dbg !3867
  %5 = load ptr, ptr %resource, align 8, !dbg !3868
  %state1 = getelementptr inbounds %struct.acpi_power_resource, ptr %5, i32 0, i32 5, !dbg !3869
  store i8 -1, ptr %state1, align 4, !dbg !3870
  %6 = load ptr, ptr %resource, align 8, !dbg !3871
  %call = call i32 @acpi_power_get_state(ptr noundef %6, ptr noundef %state) #15, !dbg !3872
  store i32 %call, ptr %result, align 4, !dbg !3873
  %7 = load i32, ptr %result, align 4, !dbg !3874
  %tobool = icmp ne i32 %7, 0, !dbg !3874
  br i1 %tobool, label %if.then, label %if.end, !dbg !3876

if.then:                                          ; preds = %for.body
  %8 = load ptr, ptr %resource, align 8, !dbg !3877
  %resource_lock2 = getelementptr inbounds %struct.acpi_power_resource, ptr %8, i32 0, i32 6, !dbg !3879
  call void @mutex_unlock(ptr noundef %resource_lock2) #15, !dbg !3880
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3881

if.end:                                           ; preds = %for.body
  %9 = load i8, ptr %state, align 1, !dbg !3882
  %conv = zext i8 %9 to i32, !dbg !3882
  %cmp3 = icmp eq i32 %conv, 0, !dbg !3884
  br i1 %cmp3, label %land.lhs.true, label %if.end9, !dbg !3885

land.lhs.true:                                    ; preds = %if.end
  %10 = load ptr, ptr %resource, align 8, !dbg !3886
  %ref_count = getelementptr inbounds %struct.acpi_power_resource, ptr %10, i32 0, i32 4, !dbg !3887
  %11 = load i32, ptr %ref_count, align 8, !dbg !3887
  %tobool5 = icmp ne i32 %11, 0, !dbg !3886
  br i1 %tobool5, label %if.then6, label %if.end9, !dbg !3888

if.then6:                                         ; preds = %land.lhs.true
  store i32 0, ptr %tmp7, align 4, !dbg !3889
  %12 = load i32, ptr %tmp7, align 4, !dbg !3893
  %13 = load ptr, ptr %resource, align 8, !dbg !3894
  %call8 = call i32 @__acpi_power_on(ptr noundef %13) #15, !dbg !3895
  br label %if.end9, !dbg !3896

if.end9:                                          ; preds = %if.then6, %land.lhs.true, %if.end
  %14 = load ptr, ptr %resource, align 8, !dbg !3897
  %resource_lock10 = getelementptr inbounds %struct.acpi_power_resource, ptr %14, i32 0, i32 6, !dbg !3898
  call void @mutex_unlock(ptr noundef %resource_lock10) #15, !dbg !3899
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3900
  br label %cleanup, !dbg !3900

cleanup:                                          ; preds = %if.end9, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %state) #14, !dbg !3900
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #14, !dbg !3900
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 4, label %for.inc
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !3901

for.inc:                                          ; preds = %cleanup.cont, %cleanup
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr12) #14, !dbg !3902
  call void @llvm.dbg.declare(metadata ptr %__mptr12, metadata !3853, metadata !DIExpression()), !dbg !3902
  %15 = load ptr, ptr %resource, align 8, !dbg !3902
  %list_node13 = getelementptr inbounds %struct.acpi_power_resource, ptr %15, i32 0, i32 1, !dbg !3902
  %next = getelementptr inbounds %struct.list_head, ptr %list_node13, i32 0, i32 0, !dbg !3902
  %16 = load ptr, ptr %next, align 8, !dbg !3902
  store ptr %16, ptr %__mptr12, align 8, !dbg !3902
  %17 = load ptr, ptr %__mptr12, align 8, !dbg !3902
  %add.ptr15 = getelementptr i8, ptr %17, i64 -1400, !dbg !3902
  store ptr %add.ptr15, ptr %tmp14, align 8, !dbg !3902
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr12) #14, !dbg !3860
  %18 = load ptr, ptr %tmp14, align 8, !dbg !3902
  store ptr %18, ptr %resource, align 8, !dbg !3860
  br label %for.cond, !dbg !3860, !llvm.loop !3903

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @power_resource_list_lock) #15, !dbg !3905
  call void @llvm.lifetime.end.p0(i64 8, ptr %resource) #14, !dbg !3906
  ret void, !dbg !3906

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_turn_off_unused_power_resources() #0 align 16 !dbg !3907 {
entry:
  %resource = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %tmp5 = alloca i32, align 4
  %__mptr9 = alloca ptr, align 8
  %tmp11 = alloca ptr, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr %resource) #14, !dbg !3916
  call void @llvm.dbg.declare(metadata ptr %resource, metadata !3909, metadata !DIExpression()), !dbg !3917
  %call = call i32 @dmi_check_system(ptr noundef @dmi_leave_unused_power_resources_on) #15, !dbg !3918
  %tobool = icmp ne i32 %call, 0, !dbg !3918
  br i1 %tobool, label %if.then, label %if.end, !dbg !3920

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3921

if.end:                                           ; preds = %entry
  call void @mutex_lock(ptr noundef @power_resource_list_lock) #15, !dbg !3922
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !3923
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3910, metadata !DIExpression()), !dbg !3923
  %0 = load ptr, ptr getelementptr inbounds (%struct.list_head, ptr @acpi_power_resource_list, i32 0, i32 1), align 8, !dbg !3923
  store ptr %0, ptr %__mptr, align 8, !dbg !3923
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3923
  %add.ptr = getelementptr i8, ptr %1, i64 -1400, !dbg !3923
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3923
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !3924
  %2 = load ptr, ptr %tmp, align 8, !dbg !3923
  store ptr %2, ptr %resource, align 8, !dbg !3924
  br label %for.cond, !dbg !3924

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load ptr, ptr %resource, align 8, !dbg !3925
  %list_node = getelementptr inbounds %struct.acpi_power_resource, ptr %3, i32 0, i32 1, !dbg !3925
  %cmp = icmp eq ptr %list_node, @acpi_power_resource_list, !dbg !3925
  %lnot = xor i1 %cmp, true, !dbg !3925
  br i1 %lnot, label %for.body, label %for.end, !dbg !3924

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %resource, align 8, !dbg !3926
  %resource_lock = getelementptr inbounds %struct.acpi_power_resource, ptr %4, i32 0, i32 6, !dbg !3928
  call void @mutex_lock(ptr noundef %resource_lock) #15, !dbg !3929
  %5 = load ptr, ptr %resource, align 8, !dbg !3930
  %ref_count = getelementptr inbounds %struct.acpi_power_resource, ptr %5, i32 0, i32 4, !dbg !3932
  %6 = load i32, ptr %ref_count, align 8, !dbg !3932
  %tobool1 = icmp ne i32 %6, 0, !dbg !3930
  br i1 %tobool1, label %if.end7, label %land.lhs.true, !dbg !3933

land.lhs.true:                                    ; preds = %for.body
  %7 = load ptr, ptr %resource, align 8, !dbg !3934
  %state = getelementptr inbounds %struct.acpi_power_resource, ptr %7, i32 0, i32 5, !dbg !3935
  %8 = load i8, ptr %state, align 4, !dbg !3935
  %conv = zext i8 %8 to i32, !dbg !3934
  %cmp2 = icmp eq i32 %conv, 1, !dbg !3936
  br i1 %cmp2, label %if.then4, label %if.end7, !dbg !3937

if.then4:                                         ; preds = %land.lhs.true
  store i32 0, ptr %tmp5, align 4, !dbg !3938
  %9 = load i32, ptr %tmp5, align 4, !dbg !3942
  %10 = load ptr, ptr %resource, align 8, !dbg !3943
  %call6 = call i32 @__acpi_power_off(ptr noundef %10) #15, !dbg !3944
  br label %if.end7, !dbg !3945

if.end7:                                          ; preds = %if.then4, %land.lhs.true, %for.body
  %11 = load ptr, ptr %resource, align 8, !dbg !3946
  %resource_lock8 = getelementptr inbounds %struct.acpi_power_resource, ptr %11, i32 0, i32 6, !dbg !3947
  call void @mutex_unlock(ptr noundef %resource_lock8) #15, !dbg !3948
  br label %for.inc, !dbg !3949

for.inc:                                          ; preds = %if.end7
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr9) #14, !dbg !3950
  call void @llvm.dbg.declare(metadata ptr %__mptr9, metadata !3913, metadata !DIExpression()), !dbg !3950
  %12 = load ptr, ptr %resource, align 8, !dbg !3950
  %list_node10 = getelementptr inbounds %struct.acpi_power_resource, ptr %12, i32 0, i32 1, !dbg !3950
  %prev = getelementptr inbounds %struct.list_head, ptr %list_node10, i32 0, i32 1, !dbg !3950
  %13 = load ptr, ptr %prev, align 8, !dbg !3950
  store ptr %13, ptr %__mptr9, align 8, !dbg !3950
  %14 = load ptr, ptr %__mptr9, align 8, !dbg !3950
  %add.ptr12 = getelementptr i8, ptr %14, i64 -1400, !dbg !3950
  store ptr %add.ptr12, ptr %tmp11, align 8, !dbg !3950
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr9) #14, !dbg !3925
  %15 = load ptr, ptr %tmp11, align 8, !dbg !3950
  store ptr %15, ptr %resource, align 8, !dbg !3925
  br label %for.cond, !dbg !3925, !llvm.loop !3951

for.end:                                          ; preds = %for.cond
  call void @mutex_unlock(ptr noundef @power_resource_list_lock) #15, !dbg !3953
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !3954
  br label %cleanup, !dbg !3954

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %resource) #14, !dbg !3954
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !3954

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3955 dso_local i32 @dmi_check_system(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #3 align 16 !dbg !3957 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3959, metadata !DIExpression()), !dbg !3960
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !3961
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #15, !dbg !3963
  br i1 %call, label %if.end, label %if.then, !dbg !3964

if.then:                                          ; preds = %entry
  br label %return, !dbg !3965

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !3966
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3967
  %2 = load ptr, ptr %prev, align 8, !dbg !3967
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !3968
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !3969
  %4 = load ptr, ptr %next, align 8, !dbg !3969
  call void @__list_del(ptr noundef %2, ptr noundef %4) #15, !dbg !3970
  br label %return, !dbg !3971

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !3971
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #3 align 16 !dbg !3972 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3976, metadata !DIExpression()), !dbg !3977
  ret i1 true, !dbg !3978
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !3979 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3983, metadata !DIExpression()), !dbg !3985
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3984, metadata !DIExpression()), !dbg !3986
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !3987
  %1 = load ptr, ptr %next.addr, align 8, !dbg !3988
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3989
  store ptr %0, ptr %prev1, align 8, !dbg !3990
  br label %do.body, !dbg !3991

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !3992

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !3994

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !3992

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !3996
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !3996
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !3996
  store volatile ptr %2, ptr %next4, align 8, !dbg !3996
  br label %do.end5, !dbg !3996

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !3992

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !3998
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_power_get_context(ptr noundef %handle) #0 align 16 !dbg !3999 {
entry:
  %retval = alloca ptr, align 8
  %handle.addr = alloca ptr, align 8
  %device = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !4003, metadata !DIExpression()), !dbg !4005
  call void @llvm.lifetime.start.p0(i64 8, ptr %device) #14, !dbg !4006
  call void @llvm.dbg.declare(metadata ptr %device, metadata !4004, metadata !DIExpression()), !dbg !4007
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !4008
  %call = call ptr @acpi_fetch_acpi_dev(ptr noundef %0) #15, !dbg !4009
  store ptr %call, ptr %device, align 8, !dbg !4007
  %1 = load ptr, ptr %device, align 8, !dbg !4010
  %tobool = icmp ne ptr %1, null, !dbg !4010
  br i1 %tobool, label %if.end, label %if.then, !dbg !4012

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !4013
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4013

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %device, align 8, !dbg !4014
  %call1 = call ptr @to_power_resource(ptr noundef %2) #15, !dbg !4015
  store ptr %call1, ptr %retval, align 8, !dbg !4016
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4016

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %device) #14, !dbg !4017
  %3 = load ptr, ptr %retval, align 8, !dbg !4017
  ret ptr %3, !dbg !4017
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #3 align 16 !dbg !4018 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4020, metadata !DIExpression()), !dbg !4022
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4021, metadata !DIExpression()), !dbg !4023
  %0 = load ptr, ptr %new.addr, align 8, !dbg !4024
  %1 = load ptr, ptr %head.addr, align 8, !dbg !4025
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !4026
  %2 = load ptr, ptr %prev, align 8, !dbg !4026
  %3 = load ptr, ptr %head.addr, align 8, !dbg !4027
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #15, !dbg !4028
  ret void, !dbg !4029
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @to_power_resource(ptr noundef %device) #3 align 16 !dbg !4030 {
entry:
  %device.addr = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !4034, metadata !DIExpression()), !dbg !4037
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !4038
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4035, metadata !DIExpression()), !dbg !4038
  %0 = load ptr, ptr %device.addr, align 8, !dbg !4038
  store ptr %0, ptr %__mptr, align 8, !dbg !4038
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4038
  %add.ptr = getelementptr i8, ptr %1, i64 0, !dbg !4038
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4038
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !4039
  %2 = load ptr, ptr %tmp, align 8, !dbg !4038
  ret ptr %2, !dbg !4040
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !4041 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4045, metadata !DIExpression()), !dbg !4048
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !4046, metadata !DIExpression()), !dbg !4049
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !4047, metadata !DIExpression()), !dbg !4050
  %0 = load ptr, ptr %new.addr, align 8, !dbg !4051
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !4053
  %2 = load ptr, ptr %next.addr, align 8, !dbg !4054
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #15, !dbg !4055
  br i1 %call, label %if.end, label %if.then, !dbg !4056

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !4057

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !4058
  %4 = load ptr, ptr %next.addr, align 8, !dbg !4059
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !4060
  store ptr %3, ptr %prev1, align 8, !dbg !4061
  %5 = load ptr, ptr %next.addr, align 8, !dbg !4062
  %6 = load ptr, ptr %new.addr, align 8, !dbg !4063
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !4064
  store ptr %5, ptr %next2, align 8, !dbg !4065
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !4066
  %8 = load ptr, ptr %new.addr, align 8, !dbg !4067
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !4068
  store ptr %7, ptr %prev3, align 8, !dbg !4069
  br label %do.body, !dbg !4070

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !4071

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !4073

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !4071

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !4075
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !4075
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !4075
  store volatile ptr %9, ptr %next6, align 8, !dbg !4075
  br label %do.end7, !dbg !4075

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !4071

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !4077
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #3 align 16 !dbg !4078 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !4082, metadata !DIExpression()), !dbg !4085
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !4083, metadata !DIExpression()), !dbg !4086
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !4084, metadata !DIExpression()), !dbg !4087
  ret i1 true, !dbg !4088
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_power_expose_list(ptr noundef %adev, ptr noundef %resources, ptr noundef %attr_group) #0 align 16 !dbg !4089 {
entry:
  %adev.addr = alloca ptr, align 8
  %resources.addr = alloca ptr, align 8
  %attr_group.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %res_dev = alloca ptr, align 8
  %__mptr16 = alloca ptr, align 8
  %tmp19 = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !4093, metadata !DIExpression()), !dbg !4106
  store ptr %resources, ptr %resources.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %resources.addr, metadata !4094, metadata !DIExpression()), !dbg !4107
  store ptr %attr_group, ptr %attr_group.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr_group.addr, metadata !4095, metadata !DIExpression()), !dbg !4108
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #14, !dbg !4109
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !4096, metadata !DIExpression()), !dbg !4110
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #14, !dbg !4111
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !4097, metadata !DIExpression()), !dbg !4112
  %0 = load ptr, ptr %resources.addr, align 8, !dbg !4113
  %call = call i32 @list_empty(ptr noundef %0) #15, !dbg !4115
  %tobool = icmp ne i32 %call, 0, !dbg !4115
  br i1 %tobool, label %if.then, label %if.end, !dbg !4116

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup21, !dbg !4117

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %adev.addr, align 8, !dbg !4118
  %dev = getelementptr inbounds %struct.acpi_device, ptr %1, i32 0, i32 18, !dbg !4119
  %kobj = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 0, !dbg !4120
  %2 = load ptr, ptr %attr_group.addr, align 8, !dbg !4121
  %call2 = call i32 @sysfs_create_group(ptr noundef %kobj, ptr noundef %2) #15, !dbg !4122
  store i32 %call2, ptr %ret, align 4, !dbg !4123
  %3 = load i32, ptr %ret, align 4, !dbg !4124
  %tobool3 = icmp ne i32 %3, 0, !dbg !4124
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4126

if.then4:                                         ; preds = %if.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup21, !dbg !4127

if.end5:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !4128
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4098, metadata !DIExpression()), !dbg !4128
  %4 = load ptr, ptr %resources.addr, align 8, !dbg !4128
  %next = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 0, !dbg !4128
  %5 = load ptr, ptr %next, align 8, !dbg !4128
  store ptr %5, ptr %__mptr, align 8, !dbg !4128
  %6 = load ptr, ptr %__mptr, align 8, !dbg !4128
  %add.ptr = getelementptr i8, ptr %6, i64 0, !dbg !4128
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4128
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !4129
  %7 = load ptr, ptr %tmp, align 8, !dbg !4128
  store ptr %7, ptr %entry1, align 8, !dbg !4129
  br label %for.cond, !dbg !4129

for.cond:                                         ; preds = %for.inc, %if.end5
  %8 = load ptr, ptr %entry1, align 8, !dbg !4130
  %node = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %8, i32 0, i32 0, !dbg !4130
  %9 = load ptr, ptr %resources.addr, align 8, !dbg !4130
  %cmp = icmp eq ptr %node, %9, !dbg !4130
  %lnot = xor i1 %cmp, true, !dbg !4130
  br i1 %lnot, label %for.body, label %for.end, !dbg !4129

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %res_dev) #14, !dbg !4131
  call void @llvm.dbg.declare(metadata ptr %res_dev, metadata !4101, metadata !DIExpression()), !dbg !4132
  %10 = load ptr, ptr %entry1, align 8, !dbg !4133
  %resource = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %10, i32 0, i32 1, !dbg !4134
  %11 = load ptr, ptr %resource, align 8, !dbg !4134
  %device = getelementptr inbounds %struct.acpi_power_resource, ptr %11, i32 0, i32 0, !dbg !4135
  store ptr %device, ptr %res_dev, align 8, !dbg !4132
  %12 = load ptr, ptr %adev.addr, align 8, !dbg !4136
  %dev6 = getelementptr inbounds %struct.acpi_device, ptr %12, i32 0, i32 18, !dbg !4137
  %kobj7 = getelementptr inbounds %struct.device, ptr %dev6, i32 0, i32 0, !dbg !4138
  %13 = load ptr, ptr %attr_group.addr, align 8, !dbg !4139
  %name = getelementptr inbounds %struct.attribute_group, ptr %13, i32 0, i32 0, !dbg !4140
  %14 = load ptr, ptr %name, align 8, !dbg !4140
  %15 = load ptr, ptr %res_dev, align 8, !dbg !4141
  %dev8 = getelementptr inbounds %struct.acpi_device, ptr %15, i32 0, i32 18, !dbg !4142
  %kobj9 = getelementptr inbounds %struct.device, ptr %dev8, i32 0, i32 0, !dbg !4143
  %16 = load ptr, ptr %res_dev, align 8, !dbg !4144
  %dev10 = getelementptr inbounds %struct.acpi_device, ptr %16, i32 0, i32 18, !dbg !4145
  %call11 = call ptr @dev_name(ptr noundef %dev10) #15, !dbg !4146
  %call12 = call i32 @sysfs_add_link_to_group(ptr noundef %kobj7, ptr noundef %14, ptr noundef %kobj9, ptr noundef %call11) #15, !dbg !4147
  store i32 %call12, ptr %ret, align 4, !dbg !4148
  %17 = load i32, ptr %ret, align 4, !dbg !4149
  %tobool13 = icmp ne i32 %17, 0, !dbg !4149
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !4151

if.then14:                                        ; preds = %for.body
  %18 = load ptr, ptr %adev.addr, align 8, !dbg !4152
  %19 = load ptr, ptr %resources.addr, align 8, !dbg !4154
  %20 = load ptr, ptr %attr_group.addr, align 8, !dbg !4155
  call void @acpi_power_hide_list(ptr noundef %18, ptr noundef %19, ptr noundef %20) #15, !dbg !4156
  store i32 2, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4157

if.end15:                                         ; preds = %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4158
  br label %cleanup, !dbg !4158

cleanup:                                          ; preds = %if.end15, %if.then14
  call void @llvm.lifetime.end.p0(i64 8, ptr %res_dev) #14, !dbg !4158
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 2, label %for.end
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !4159

for.inc:                                          ; preds = %cleanup.cont
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr16) #14, !dbg !4160
  call void @llvm.dbg.declare(metadata ptr %__mptr16, metadata !4104, metadata !DIExpression()), !dbg !4160
  %21 = load ptr, ptr %entry1, align 8, !dbg !4160
  %node17 = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %21, i32 0, i32 0, !dbg !4160
  %next18 = getelementptr inbounds %struct.list_head, ptr %node17, i32 0, i32 0, !dbg !4160
  %22 = load ptr, ptr %next18, align 8, !dbg !4160
  store ptr %22, ptr %__mptr16, align 8, !dbg !4160
  %23 = load ptr, ptr %__mptr16, align 8, !dbg !4160
  %add.ptr20 = getelementptr i8, ptr %23, i64 0, !dbg !4160
  store ptr %add.ptr20, ptr %tmp19, align 8, !dbg !4160
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr16) #14, !dbg !4130
  %24 = load ptr, ptr %tmp19, align 8, !dbg !4160
  store ptr %24, ptr %entry1, align 8, !dbg !4130
  br label %for.cond, !dbg !4130, !llvm.loop !4161

for.end:                                          ; preds = %cleanup, %for.cond
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4163
  br label %cleanup21, !dbg !4163

cleanup21:                                        ; preds = %for.end, %if.then4, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #14, !dbg !4163
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #14, !dbg !4163
  %cleanup.dest23 = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest23, label %unreachable [
    i32 0, label %cleanup.cont24
    i32 1, label %cleanup.cont24
  ]

cleanup.cont24:                                   ; preds = %cleanup21, %cleanup21
  ret void, !dbg !4163

unreachable:                                      ; preds = %cleanup21, %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @acpi_power_hide_list(ptr noundef %adev, ptr noundef %resources, ptr noundef %attr_group) #0 align 16 !dbg !4164 {
entry:
  %adev.addr = alloca ptr, align 8
  %resources.addr = alloca ptr, align 8
  %attr_group.addr = alloca ptr, align 8
  %entry1 = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %res_dev = alloca ptr, align 8
  %__mptr4 = alloca ptr, align 8
  %tmp7 = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !4166, metadata !DIExpression()), !dbg !4178
  store ptr %resources, ptr %resources.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %resources.addr, metadata !4167, metadata !DIExpression()), !dbg !4179
  store ptr %attr_group, ptr %attr_group.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr_group.addr, metadata !4168, metadata !DIExpression()), !dbg !4180
  call void @llvm.lifetime.start.p0(i64 8, ptr %entry1) #14, !dbg !4181
  call void @llvm.dbg.declare(metadata ptr %entry1, metadata !4169, metadata !DIExpression()), !dbg !4182
  %0 = load ptr, ptr %resources.addr, align 8, !dbg !4183
  %call = call i32 @list_empty(ptr noundef %0) #15, !dbg !4185
  %tobool = icmp ne i32 %call, 0, !dbg !4185
  br i1 %tobool, label %if.then, label %if.end, !dbg !4186

if.then:                                          ; preds = %entry
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4187

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !4188
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4170, metadata !DIExpression()), !dbg !4188
  %1 = load ptr, ptr %resources.addr, align 8, !dbg !4188
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !4188
  %2 = load ptr, ptr %prev, align 8, !dbg !4188
  store ptr %2, ptr %__mptr, align 8, !dbg !4188
  %3 = load ptr, ptr %__mptr, align 8, !dbg !4188
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !4188
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4188
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !4189
  %4 = load ptr, ptr %tmp, align 8, !dbg !4188
  store ptr %4, ptr %entry1, align 8, !dbg !4189
  br label %for.cond, !dbg !4189

for.cond:                                         ; preds = %for.inc, %if.end
  %5 = load ptr, ptr %entry1, align 8, !dbg !4190
  %node = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %5, i32 0, i32 0, !dbg !4190
  %6 = load ptr, ptr %resources.addr, align 8, !dbg !4190
  %cmp = icmp eq ptr %node, %6, !dbg !4190
  %lnot = xor i1 %cmp, true, !dbg !4190
  br i1 %lnot, label %for.body, label %for.end, !dbg !4189

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %res_dev) #14, !dbg !4191
  call void @llvm.dbg.declare(metadata ptr %res_dev, metadata !4173, metadata !DIExpression()), !dbg !4192
  %7 = load ptr, ptr %entry1, align 8, !dbg !4193
  %resource = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %7, i32 0, i32 1, !dbg !4194
  %8 = load ptr, ptr %resource, align 8, !dbg !4194
  %device = getelementptr inbounds %struct.acpi_power_resource, ptr %8, i32 0, i32 0, !dbg !4195
  store ptr %device, ptr %res_dev, align 8, !dbg !4192
  %9 = load ptr, ptr %adev.addr, align 8, !dbg !4196
  %dev = getelementptr inbounds %struct.acpi_device, ptr %9, i32 0, i32 18, !dbg !4197
  %kobj = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 0, !dbg !4198
  %10 = load ptr, ptr %attr_group.addr, align 8, !dbg !4199
  %name = getelementptr inbounds %struct.attribute_group, ptr %10, i32 0, i32 0, !dbg !4200
  %11 = load ptr, ptr %name, align 8, !dbg !4200
  %12 = load ptr, ptr %res_dev, align 8, !dbg !4201
  %dev2 = getelementptr inbounds %struct.acpi_device, ptr %12, i32 0, i32 18, !dbg !4202
  %call3 = call ptr @dev_name(ptr noundef %dev2) #15, !dbg !4203
  call void @sysfs_remove_link_from_group(ptr noundef %kobj, ptr noundef %11, ptr noundef %call3) #15, !dbg !4204
  call void @llvm.lifetime.end.p0(i64 8, ptr %res_dev) #14, !dbg !4205
  br label %for.inc, !dbg !4206

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr4) #14, !dbg !4207
  call void @llvm.dbg.declare(metadata ptr %__mptr4, metadata !4176, metadata !DIExpression()), !dbg !4207
  %13 = load ptr, ptr %entry1, align 8, !dbg !4207
  %node5 = getelementptr inbounds %struct.acpi_power_resource_entry, ptr %13, i32 0, i32 0, !dbg !4207
  %prev6 = getelementptr inbounds %struct.list_head, ptr %node5, i32 0, i32 1, !dbg !4207
  %14 = load ptr, ptr %prev6, align 8, !dbg !4207
  store ptr %14, ptr %__mptr4, align 8, !dbg !4207
  %15 = load ptr, ptr %__mptr4, align 8, !dbg !4207
  %add.ptr8 = getelementptr i8, ptr %15, i64 0, !dbg !4207
  store ptr %add.ptr8, ptr %tmp7, align 8, !dbg !4207
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr4) #14, !dbg !4190
  %16 = load ptr, ptr %tmp7, align 8, !dbg !4207
  store ptr %16, ptr %entry1, align 8, !dbg !4190
  br label %for.cond, !dbg !4190, !llvm.loop !4208

for.end:                                          ; preds = %for.cond
  %17 = load ptr, ptr %adev.addr, align 8, !dbg !4210
  %dev9 = getelementptr inbounds %struct.acpi_device, ptr %17, i32 0, i32 18, !dbg !4211
  %kobj10 = getelementptr inbounds %struct.device, ptr %dev9, i32 0, i32 0, !dbg !4212
  %18 = load ptr, ptr %attr_group.addr, align 8, !dbg !4213
  call void @sysfs_remove_group(ptr noundef %kobj10, ptr noundef %18) #15, !dbg !4214
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !4215
  br label %cleanup, !dbg !4215

cleanup:                                          ; preds = %for.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %entry1) #14, !dbg !4215
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %cleanup.cont
  ]

cleanup.cont:                                     ; preds = %cleanup, %cleanup
  ret void, !dbg !4215

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4216 dso_local i32 @sysfs_create_group(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4219 dso_local i32 @sysfs_add_link_to_group(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_name(ptr noundef %dev) #3 align 16 !dbg !4222 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4226, metadata !DIExpression()), !dbg !4227
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4228
  %init_name = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 3, !dbg !4230
  %1 = load ptr, ptr %init_name, align 8, !dbg !4230
  %tobool = icmp ne ptr %1, null, !dbg !4228
  br i1 %tobool, label %if.then, label %if.end, !dbg !4231

if.then:                                          ; preds = %entry
  %2 = load ptr, ptr %dev.addr, align 8, !dbg !4232
  %init_name1 = getelementptr inbounds %struct.device, ptr %2, i32 0, i32 3, !dbg !4233
  %3 = load ptr, ptr %init_name1, align 8, !dbg !4233
  store ptr %3, ptr %retval, align 8, !dbg !4234
  br label %return, !dbg !4234

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %dev.addr, align 8, !dbg !4235
  %kobj = getelementptr inbounds %struct.device, ptr %4, i32 0, i32 0, !dbg !4236
  %call = call ptr @kobject_name(ptr noundef %kobj) #15, !dbg !4237
  store ptr %call, ptr %retval, align 8, !dbg !4238
  br label %return, !dbg !4238

return:                                           ; preds = %if.end, %if.then
  %5 = load ptr, ptr %retval, align 8, !dbg !4239
  ret ptr %5, !dbg !4239
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @kobject_name(ptr noundef %kobj) #3 align 16 !dbg !4240 {
entry:
  %kobj.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !4242, metadata !DIExpression()), !dbg !4243
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !4244
  %name = getelementptr inbounds %struct.kobject, ptr %0, i32 0, i32 0, !dbg !4245
  %1 = load ptr, ptr %name, align 8, !dbg !4245
  ret ptr %1, !dbg !4246
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4247 dso_local void @sysfs_remove_link_from_group(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4250 dso_local void @sysfs_remove_group(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__get_state(ptr noundef %handle, ptr noundef %state) #0 align 16 !dbg !4253 {
entry:
  %retval = alloca i32, align 4
  %handle.addr = alloca ptr, align 8
  %state.addr = alloca ptr, align 8
  %status = alloca i32, align 4
  %sta = alloca i64, align 8
  %cur_state = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %handle, ptr %handle.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %handle.addr, metadata !4257, metadata !DIExpression()), !dbg !4262
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !4258, metadata !DIExpression()), !dbg !4263
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #14, !dbg !4264
  call void @llvm.dbg.declare(metadata ptr %status, metadata !4259, metadata !DIExpression()), !dbg !4265
  store i32 0, ptr %status, align 4, !dbg !4265
  call void @llvm.lifetime.start.p0(i64 8, ptr %sta) #14, !dbg !4266
  call void @llvm.dbg.declare(metadata ptr %sta, metadata !4260, metadata !DIExpression()), !dbg !4267
  store i64 0, ptr %sta, align 8, !dbg !4267
  call void @llvm.lifetime.start.p0(i64 1, ptr %cur_state) #14, !dbg !4268
  call void @llvm.dbg.declare(metadata ptr %cur_state, metadata !4261, metadata !DIExpression()), !dbg !4269
  %0 = load ptr, ptr %handle.addr, align 8, !dbg !4270
  %call = call i32 @acpi_evaluate_integer(ptr noundef %0, ptr noundef @.str.16, ptr noundef null, ptr noundef %sta) #15, !dbg !4271
  store i32 %call, ptr %status, align 4, !dbg !4272
  %1 = load i32, ptr %status, align 4, !dbg !4273
  %tobool = icmp ne i32 %1, 0, !dbg !4273
  br i1 %tobool, label %if.then, label %if.end, !dbg !4275

if.then:                                          ; preds = %entry
  store i32 -19, ptr %retval, align 4, !dbg !4276
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4276

if.end:                                           ; preds = %entry
  %2 = load i64, ptr %sta, align 8, !dbg !4277
  %and = and i64 %2, 1, !dbg !4278
  %conv = trunc i64 %and to i8, !dbg !4277
  store i8 %conv, ptr %cur_state, align 1, !dbg !4279
  store i32 0, ptr %tmp, align 4, !dbg !4280
  %3 = load i32, ptr %tmp, align 4, !dbg !4283
  %4 = load i8, ptr %cur_state, align 1, !dbg !4284
  %5 = load ptr, ptr %state.addr, align 8, !dbg !4285
  store i8 %4, ptr %5, align 1, !dbg !4286
  store i32 0, ptr %retval, align 4, !dbg !4287
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4287

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %cur_state) #14, !dbg !4288
  call void @llvm.lifetime.end.p0(i64 8, ptr %sta) #14, !dbg !4288
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #14, !dbg !4288
  %6 = load i32, ptr %retval, align 4, !dbg !4288
  ret i32 %6, !dbg !4288
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4289 dso_local i32 @acpi_evaluate_integer(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_power_on(ptr noundef %resource) #0 align 16 !dbg !4293 {
entry:
  %resource.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  store ptr %resource, ptr %resource.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %resource.addr, metadata !4295, metadata !DIExpression()), !dbg !4297
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #14, !dbg !4298
  call void @llvm.dbg.declare(metadata ptr %result, metadata !4296, metadata !DIExpression()), !dbg !4299
  %0 = load ptr, ptr %resource.addr, align 8, !dbg !4300
  %resource_lock = getelementptr inbounds %struct.acpi_power_resource, ptr %0, i32 0, i32 6, !dbg !4301
  call void @mutex_lock(ptr noundef %resource_lock) #15, !dbg !4302
  %1 = load ptr, ptr %resource.addr, align 8, !dbg !4303
  %call = call i32 @acpi_power_on_unlocked(ptr noundef %1) #15, !dbg !4304
  store i32 %call, ptr %result, align 4, !dbg !4305
  %2 = load ptr, ptr %resource.addr, align 8, !dbg !4306
  %resource_lock1 = getelementptr inbounds %struct.acpi_power_resource, ptr %2, i32 0, i32 6, !dbg !4307
  call void @mutex_unlock(ptr noundef %resource_lock1) #15, !dbg !4308
  %3 = load i32, ptr %result, align 4, !dbg !4309
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #14, !dbg !4310
  ret i32 %3, !dbg !4311
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_power_on_unlocked(ptr noundef %resource) #0 align 16 !dbg !4312 {
entry:
  %resource.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %tmp = alloca i32, align 4
  store ptr %resource, ptr %resource.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %resource.addr, metadata !4314, metadata !DIExpression()), !dbg !4316
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #14, !dbg !4317
  call void @llvm.dbg.declare(metadata ptr %result, metadata !4315, metadata !DIExpression()), !dbg !4318
  store i32 0, ptr %result, align 4, !dbg !4318
  %0 = load ptr, ptr %resource.addr, align 8, !dbg !4319
  %ref_count = getelementptr inbounds %struct.acpi_power_resource, ptr %0, i32 0, i32 4, !dbg !4321
  %1 = load i32, ptr %ref_count, align 8, !dbg !4322
  %inc = add i32 %1, 1, !dbg !4322
  store i32 %inc, ptr %ref_count, align 8, !dbg !4322
  %tobool = icmp ne i32 %1, 0, !dbg !4322
  br i1 %tobool, label %if.then, label %if.else, !dbg !4323

if.then:                                          ; preds = %entry
  store i32 0, ptr %tmp, align 4, !dbg !4324
  %2 = load i32, ptr %tmp, align 4, !dbg !4328
  br label %if.end4, !dbg !4329

if.else:                                          ; preds = %entry
  %3 = load ptr, ptr %resource.addr, align 8, !dbg !4330
  %call = call i32 @__acpi_power_on(ptr noundef %3) #15, !dbg !4332
  store i32 %call, ptr %result, align 4, !dbg !4333
  %4 = load i32, ptr %result, align 4, !dbg !4334
  %tobool1 = icmp ne i32 %4, 0, !dbg !4334
  br i1 %tobool1, label %if.then2, label %if.end, !dbg !4336

if.then2:                                         ; preds = %if.else
  %5 = load ptr, ptr %resource.addr, align 8, !dbg !4337
  %ref_count3 = getelementptr inbounds %struct.acpi_power_resource, ptr %5, i32 0, i32 4, !dbg !4338
  %6 = load i32, ptr %ref_count3, align 8, !dbg !4339
  %dec = add i32 %6, -1, !dbg !4339
  store i32 %dec, ptr %ref_count3, align 8, !dbg !4339
  br label %if.end, !dbg !4337

if.end:                                           ; preds = %if.then2, %if.else
  br label %if.end4

if.end4:                                          ; preds = %if.end, %if.then
  %7 = load i32, ptr %result, align 4, !dbg !4340
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #14, !dbg !4341
  ret i32 %7, !dbg !4342
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_power_off_unlocked(ptr noundef %resource) #0 align 16 !dbg !4343 {
entry:
  %retval = alloca i32, align 4
  %resource.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %tmp = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %tmp4 = alloca i32, align 4
  store ptr %resource, ptr %resource.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %resource.addr, metadata !4345, metadata !DIExpression()), !dbg !4347
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #14, !dbg !4348
  call void @llvm.dbg.declare(metadata ptr %result, metadata !4346, metadata !DIExpression()), !dbg !4349
  store i32 0, ptr %result, align 4, !dbg !4349
  %0 = load ptr, ptr %resource.addr, align 8, !dbg !4350
  %ref_count = getelementptr inbounds %struct.acpi_power_resource, ptr %0, i32 0, i32 4, !dbg !4352
  %1 = load i32, ptr %ref_count, align 8, !dbg !4352
  %tobool = icmp ne i32 %1, 0, !dbg !4350
  br i1 %tobool, label %if.end, label %if.then, !dbg !4353

if.then:                                          ; preds = %entry
  store i32 0, ptr %tmp, align 4, !dbg !4354
  %2 = load i32, ptr %tmp, align 4, !dbg !4358
  store i32 0, ptr %retval, align 4, !dbg !4359
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4359

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %resource.addr, align 8, !dbg !4360
  %ref_count1 = getelementptr inbounds %struct.acpi_power_resource, ptr %3, i32 0, i32 4, !dbg !4362
  %4 = load i32, ptr %ref_count1, align 8, !dbg !4363
  %dec = add i32 %4, -1, !dbg !4363
  store i32 %dec, ptr %ref_count1, align 8, !dbg !4363
  %tobool2 = icmp ne i32 %dec, 0, !dbg !4363
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !4364

if.then3:                                         ; preds = %if.end
  store i32 0, ptr %tmp4, align 4, !dbg !4365
  %5 = load i32, ptr %tmp4, align 4, !dbg !4369
  br label %if.end9, !dbg !4370

if.else:                                          ; preds = %if.end
  %6 = load ptr, ptr %resource.addr, align 8, !dbg !4371
  %call = call i32 @__acpi_power_off(ptr noundef %6) #15, !dbg !4373
  store i32 %call, ptr %result, align 4, !dbg !4374
  %7 = load i32, ptr %result, align 4, !dbg !4375
  %tobool5 = icmp ne i32 %7, 0, !dbg !4375
  br i1 %tobool5, label %if.then6, label %if.end8, !dbg !4377

if.then6:                                         ; preds = %if.else
  %8 = load ptr, ptr %resource.addr, align 8, !dbg !4378
  %ref_count7 = getelementptr inbounds %struct.acpi_power_resource, ptr %8, i32 0, i32 4, !dbg !4379
  %9 = load i32, ptr %ref_count7, align 8, !dbg !4380
  %inc = add i32 %9, 1, !dbg !4380
  store i32 %inc, ptr %ref_count7, align 8, !dbg !4380
  br label %if.end8, !dbg !4378

if.end8:                                          ; preds = %if.then6, %if.else
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then3
  %10 = load i32, ptr %result, align 4, !dbg !4381
  store i32 %10, ptr %retval, align 4, !dbg !4382
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4382

cleanup:                                          ; preds = %if.end9, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #14, !dbg !4383
  %11 = load i32, ptr %retval, align 4, !dbg !4383
  ret i32 %11, !dbg !4383
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !4384 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4386, metadata !DIExpression()), !dbg !4391
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4387, metadata !DIExpression()), !dbg !4392
  %0 = load i64, ptr %size.addr, align 8, !dbg !4393
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4394
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !4395

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !4396
  %tobool = icmp ne i64 %2, 0, !dbg !4396
  br i1 %tobool, label %if.then, label %if.end7, !dbg !4397

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #14, !dbg !4398
  call void @llvm.dbg.declare(metadata ptr %index, metadata !4388, metadata !DIExpression()), !dbg !4399
  %3 = load i64, ptr %size.addr, align 8, !dbg !4400
  %cmp = icmp ugt i64 %3, 8192, !dbg !4402
  br i1 %cmp, label %if.then1, label %if.end, !dbg !4403

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !4404
  %5 = load i32, ptr %flags.addr, align 4, !dbg !4405
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !4406
  store ptr %call, ptr %retval, align 8, !dbg !4407
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4407

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !4408
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !4408
  store i32 %call2, ptr %index, align 4, !dbg !4409
  %7 = load i32, ptr %flags.addr, align 4, !dbg !4410
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !4411
  %9 = ptrtoint ptr %8 to i64, !dbg !4411
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !4412
  %idxprom = zext i32 %call3 to i64, !dbg !4413
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !4413
  %10 = load i32, ptr %index, align 4, !dbg !4414
  %idxprom4 = zext i32 %10 to i64, !dbg !4413
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !4413
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !4413
  %12 = load i32, ptr %flags.addr, align 4, !dbg !4415
  %13 = load i64, ptr %size.addr, align 8, !dbg !4416
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #18, !dbg !4417
  store ptr %call6, ptr %retval, align 8, !dbg !4418
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !4418

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #14, !dbg !4419
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !4420
  %15 = load i32, ptr %flags.addr, align 4, !dbg !4421
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !4422
  store ptr %call8, ptr %retval, align 8, !dbg !4423
  br label %return, !dbg !4423

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !4424
  ret ptr %16, !dbg !4424
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #8

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4425 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #10 align 16 !dbg !4426 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !4430, metadata !DIExpression()), !dbg !4432
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !4431, metadata !DIExpression()), !dbg !4433
  %0 = load i64, ptr %size.addr, align 8, !dbg !4434
  %tobool = icmp ne i64 %0, 0, !dbg !4434
  br i1 %tobool, label %if.end, label %if.then, !dbg !4436

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4437
  br label %return, !dbg !4437

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !4438
  %cmp = icmp ule i64 %1, 8, !dbg !4440
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !4441

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !4442
  br label %return, !dbg !4442

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !4443
  %cmp3 = icmp ugt i64 %2, 64, !dbg !4445
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !4446

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !4447
  %cmp4 = icmp ule i64 %3, 96, !dbg !4448
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !4449

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !4450
  br label %return, !dbg !4450

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !4451
  %cmp7 = icmp ugt i64 %4, 128, !dbg !4453
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !4454

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !4455
  %cmp9 = icmp ule i64 %5, 192, !dbg !4456
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !4457

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !4458
  br label %return, !dbg !4458

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !4459
  %cmp12 = icmp ule i64 %6, 8, !dbg !4461
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !4462

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !4463
  br label %return, !dbg !4463

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !4464
  %cmp15 = icmp ule i64 %7, 16, !dbg !4466
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !4467

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !4468
  br label %return, !dbg !4468

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !4469
  %cmp18 = icmp ule i64 %8, 32, !dbg !4471
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !4472

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !4473
  br label %return, !dbg !4473

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !4474
  %cmp21 = icmp ule i64 %9, 64, !dbg !4476
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !4477

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !4478
  br label %return, !dbg !4478

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !4479
  %cmp24 = icmp ule i64 %10, 128, !dbg !4481
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !4482

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !4483
  br label %return, !dbg !4483

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !4484
  %cmp27 = icmp ule i64 %11, 256, !dbg !4486
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !4487

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !4488
  br label %return, !dbg !4488

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !4489
  %cmp30 = icmp ule i64 %12, 512, !dbg !4491
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !4492

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !4493
  br label %return, !dbg !4493

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !4494
  %cmp33 = icmp ule i64 %13, 1024, !dbg !4496
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !4497

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !4498
  br label %return, !dbg !4498

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !4499
  %cmp36 = icmp ule i64 %14, 2048, !dbg !4501
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !4502

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !4503
  br label %return, !dbg !4503

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !4504
  %cmp39 = icmp ule i64 %15, 4096, !dbg !4506
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !4507

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !4508
  br label %return, !dbg !4508

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !4509
  %cmp42 = icmp ule i64 %16, 8192, !dbg !4511
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !4512

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !4513
  br label %return, !dbg !4513

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !4514
  %cmp45 = icmp ule i64 %17, 16384, !dbg !4516
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !4517

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !4518
  br label %return, !dbg !4518

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !4519
  %cmp48 = icmp ule i64 %18, 32768, !dbg !4521
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !4522

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !4523
  br label %return, !dbg !4523

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !4524
  %cmp51 = icmp ule i64 %19, 65536, !dbg !4526
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !4527

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !4528
  br label %return, !dbg !4528

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !4529
  %cmp54 = icmp ule i64 %20, 131072, !dbg !4531
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !4532

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !4533
  br label %return, !dbg !4533

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !4534
  %cmp57 = icmp ule i64 %21, 262144, !dbg !4536
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !4537

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !4538
  br label %return, !dbg !4538

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !4539
  %cmp60 = icmp ule i64 %22, 524288, !dbg !4541
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !4542

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !4543
  br label %return, !dbg !4543

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !4544
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !4546
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !4547

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !4548
  br label %return, !dbg !4548

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !4549
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !4551
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !4552

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !4553
  br label %return, !dbg !4553

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !4554, !range !2779, !noundef !396
  %tobool69 = trunc i8 %25 to i1, !dbg !4554
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !4556

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !4557

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_196() #19, !dbg !4558, !srcloc !4561
  unreachable, !dbg !4558

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !4562

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !4563

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !4564

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !4566

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !4564

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.18, i32 480, i32 0, i64 12) #14, !dbg !4568, !srcloc !4570
  br label %do.end75, !dbg !4568

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !4564

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !4571
  br label %return, !dbg !4571

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !4572
  ret i32 %26, !dbg !4572
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !4573 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #10 align 16 !dbg !4579 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !4583, metadata !DIExpression()), !dbg !4585
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !4584, metadata !DIExpression()), !dbg !4586
  %0 = load i32, ptr %flags.addr, align 4, !dbg !4587
  %and = and i32 %0, 17, !dbg !4587
  %cmp = icmp eq i32 %and, 0, !dbg !4587
  %lnot = xor i1 %cmp, true, !dbg !4587
  %lnot1 = xor i1 %lnot, true, !dbg !4587
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4587
  %conv = sext i32 %lnot.ext to i64, !dbg !4587
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !4587
  %tobool = icmp ne i64 %expval, 0, !dbg !4587
  br i1 %tobool, label %if.then, label %if.end, !dbg !4589

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !4590
  br label %return, !dbg !4590

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !4591
  %and2 = and i32 %1, 1, !dbg !4593
  %tobool3 = icmp ne i32 %and2, 0, !dbg !4593
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4594

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !4595
  br label %return, !dbg !4595

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !4596
  br label %return, !dbg !4596

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !4598
  ret i32 %2, !dbg !4598
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #12

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !4599 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !4600 dso_local void @__compiletime_assert_196() #13

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #12

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4601 dso_local void @acpi_free_pnp_ids(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @list_is_singular(ptr noundef %head) #3 align 16 !dbg !4605 {
entry:
  %head.addr = alloca ptr, align 8
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !4607, metadata !DIExpression()), !dbg !4608
  %0 = load ptr, ptr %head.addr, align 8, !dbg !4609
  %call = call i32 @list_empty(ptr noundef %0) #15, !dbg !4610
  %tobool = icmp ne i32 %call, 0, !dbg !4610
  br i1 %tobool, label %land.end, label %land.rhs, !dbg !4611

land.rhs:                                         ; preds = %entry
  %1 = load ptr, ptr %head.addr, align 8, !dbg !4612
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !4613
  %2 = load ptr, ptr %next, align 8, !dbg !4613
  %3 = load ptr, ptr %head.addr, align 8, !dbg !4614
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !4615
  %4 = load ptr, ptr %prev, align 8, !dbg !4615
  %cmp = icmp eq ptr %2, %4, !dbg !4616
  br label %land.end

land.end:                                         ; preds = %land.rhs, %entry
  %5 = phi i1 [ false, %entry ], [ %cmp, %land.rhs ], !dbg !4617
  %land.ext = zext i1 %5 to i32, !dbg !4611
  ret i32 %land.ext, !dbg !4618
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @pm_request_resume(ptr noundef %dev) #3 align 16 !dbg !4619 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4622, metadata !DIExpression()), !dbg !4623
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4624
  %call = call i32 @__pm_runtime_resume(ptr noundef %0, i32 noundef 1) #15, !dbg !4625
  ret i32 %call, !dbg !4626
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4627 dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @resource_in_use_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !4630 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %resource = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !4632, metadata !DIExpression()), !dbg !4638
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !4633, metadata !DIExpression()), !dbg !4639
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !4634, metadata !DIExpression()), !dbg !4640
  call void @llvm.lifetime.start.p0(i64 8, ptr %resource) #14, !dbg !4641
  call void @llvm.dbg.declare(metadata ptr %resource, metadata !4635, metadata !DIExpression()), !dbg !4642
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #14, !dbg !4643
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !4636, metadata !DIExpression()), !dbg !4643
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !4643
  store ptr %0, ptr %__mptr, align 8, !dbg !4643
  %1 = load ptr, ptr %__mptr, align 8, !dbg !4643
  %add.ptr = getelementptr i8, ptr %1, i64 -608, !dbg !4643
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !4643
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #14, !dbg !4644
  %2 = load ptr, ptr %tmp, align 8, !dbg !4643
  %call = call ptr @to_power_resource(ptr noundef %2) #15, !dbg !4645
  store ptr %call, ptr %resource, align 8, !dbg !4646
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !4647
  %4 = load ptr, ptr %resource, align 8, !dbg !4648
  %ref_count = getelementptr inbounds %struct.acpi_power_resource, ptr %4, i32 0, i32 4, !dbg !4649
  %5 = load i32, ptr %ref_count, align 8, !dbg !4649
  %tobool = icmp ne i32 %5, 0, !dbg !4650
  %lnot = xor i1 %tobool, true, !dbg !4650
  %lnot1 = xor i1 %lnot, true, !dbg !4651
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !4651
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef @.str.21, i32 noundef %lnot.ext) #15, !dbg !4652
  %conv = sext i32 %call2 to i64, !dbg !4652
  call void @llvm.lifetime.end.p0(i64 8, ptr %resource) #14, !dbg !4653
  ret i64 %conv, !dbg !4654
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4655 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !4659 dso_local void @device_remove_file(ptr noundef, ptr noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
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
!llvm.module.flags = !{!2137, !2138, !2139, !2140, !2141, !2142, !2143, !2144}
!llvm.ident = !{!2145}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "wakeup_attr_group", scope: !2, file: !3, line: 531, type: !314, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/.power.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/acpi/acpi\22 -D KBUILD_BASENAME=\22power\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/power.ll drivers/acpi/power.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !110, globals: !1997, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/power.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "30702f44b9291ab331fcd42da882c288")
!4 = !{!5, !12, !19, !25, !32, !37, !45, !53, !62, !67, !72, !78, !84, !95, !100}
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
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "acpi_bus_device_type", file: !85, line: 91, baseType: !7, size: 32, elements: !86)
!85 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "745f031e2ee183d2395bab1bfe3ce66b")
!86 = !{!87, !88, !89, !90, !91, !92, !93, !94}
!87 = !DIEnumerator(name: "ACPI_BUS_TYPE_DEVICE", value: 0)
!88 = !DIEnumerator(name: "ACPI_BUS_TYPE_POWER", value: 1)
!89 = !DIEnumerator(name: "ACPI_BUS_TYPE_PROCESSOR", value: 2)
!90 = !DIEnumerator(name: "ACPI_BUS_TYPE_THERMAL", value: 3)
!91 = !DIEnumerator(name: "ACPI_BUS_TYPE_POWER_BUTTON", value: 4)
!92 = !DIEnumerator(name: "ACPI_BUS_TYPE_SLEEP_BUTTON", value: 5)
!93 = !DIEnumerator(name: "ACPI_BUS_TYPE_ECDT_EC", value: 6)
!94 = !DIEnumerator(name: "ACPI_BUS_DEVICE_TYPE_COUNT", value: 7)
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
!110 = !{!111, !112, !220, !1986, !1987, !123, !1988, !1990, !1995, !310, !1936}
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_power_resource_entry", file: !3, line: 60, size: 192, elements: !114)
!114 = !{!115, !122}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !113, file: !3, line: 61, baseType: !116, size: 128)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !117, line: 190, size: 128, elements: !118)
!117 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!118 = !{!119, !121}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !116, file: !117, line: 191, baseType: !120, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !116, file: !117, line: 191, baseType: !120, size: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !113, file: !3, line: 62, baseType: !123, size: 64, offset: 128)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_power_resource", file: !3, line: 49, size: 11840, elements: !125)
!125 = !{!126, !1979, !1980, !1981, !1982, !1983, !1984, !1985}
!126 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !124, file: !3, line: 50, baseType: !127, size: 11200)
!127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !85, line: 367, size: 11200, elements: !128)
!128 = !{!129, !134, !135, !138, !1723, !1724, !1725, !1734, !1752, !1831, !1861, !1885, !1906, !1912, !1921, !1954, !1968, !1972, !1973, !1974, !1975, !1976, !1977, !1978}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "pld_crc", scope: !127, file: !85, line: 368, baseType: !130, size: 32)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !131, line: 21, baseType: !132)
!131 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !133, line: 27, baseType: !7)
!133 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!134 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !127, file: !85, line: 369, baseType: !46, size: 32, offset: 32)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !127, file: !85, line: 370, baseType: !136, size: 64, offset: 64)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !137, line: 424, baseType: !111)
!137 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!138 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !127, file: !85, line: 371, baseType: !139, size: 512, offset: 128)
!139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !140, line: 41, size: 512, elements: !141)
!140 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!141 = !{!142, !144, !1719, !1720, !1721, !1722}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !139, file: !140, line: 42, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !139, file: !140, line: 43, baseType: !145, size: 64, offset: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !140, line: 125, size: 1408, elements: !148)
!148 = !{!149, !153, !157, !165, !1649, !1650, !1654, !1658, !1662, !1666, !1670, !1671, !1675, !1679, !1683, !1694, !1695, !1696, !1697, !1707, !1711, !1715}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !147, file: !140, line: 126, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!143, !143}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !147, file: !140, line: 127, baseType: !154, size: 64, offset: 64)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = !DISubroutineType(types: !156)
!156 = !{null, !143}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !147, file: !140, line: 128, baseType: !158, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DISubroutineType(types: !160)
!160 = !{!161, !163}
!161 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !117, line: 35, baseType: !162)
!162 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !147, file: !140, line: 129, baseType: !166, size: 64, offset: 192)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = !DISubroutineType(types: !168)
!168 = !{!169, !163, !171}
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !174)
!174 = !{!175, !831, !833, !836, !837, !888, !1354, !1355, !1356, !1357, !1358, !1365, !1535, !1548, !1558, !1562, !1564, !1565, !1566, !1570, !1577, !1578, !1581, !1584, !1588, !1589, !1590, !1593, !1594, !1595, !1596, !1626, !1627, !1628, !1631, !1634, !1643, !1644, !1645, !1646, !1647, !1648}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !173, file: !26, line: 706, baseType: !176, size: 512)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !177, line: 64, size: 512, elements: !178)
!177 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!178 = !{!179, !183, !184, !186, !273, !701, !816, !826, !827, !828, !829, !830}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !176, file: !177, line: 65, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!182 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !176, file: !177, line: 66, baseType: !116, size: 128, offset: 64)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !176, file: !177, line: 67, baseType: !185, size: 64, offset: 192)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !176, file: !177, line: 68, baseType: !187, size: 64, offset: 256)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !177, line: 168, size: 768, elements: !189)
!189 = !{!190, !191, !232, !233}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !188, file: !177, line: 169, baseType: !116, size: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !188, file: !177, line: 170, baseType: !192, size: 32, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !193, line: 29, baseType: !194)
!193 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !193, line: 17, size: 32, elements: !195)
!195 = !{!196}
!196 = !DIDerivedType(tag: DW_TAG_member, scope: !194, file: !193, line: 18, baseType: !197, size: 32)
!197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !194, file: !193, line: 18, size: 32, elements: !198)
!198 = !{!199}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !197, file: !193, line: 19, baseType: !200, size: 32)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !201, line: 14, size: 32, elements: !202)
!201 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!202 = !{!203}
!203 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !200, file: !201, line: 15, baseType: !204, size: 32)
!204 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !205, line: 44, baseType: !206)
!205 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !205, line: 14, size: 32, elements: !207)
!207 = !{!208}
!208 = !DIDerivedType(tag: DW_TAG_member, scope: !206, file: !205, line: 15, baseType: !209, size: 32)
!209 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !206, file: !205, line: 15, size: 32, elements: !210)
!210 = !{!211, !216, !224}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !209, file: !205, line: 16, baseType: !212, size: 32)
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !117, line: 174, baseType: !213)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !117, line: 172, size: 32, elements: !214)
!214 = !{!215}
!215 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !213, file: !117, line: 173, baseType: !46, size: 32)
!216 = !DIDerivedType(tag: DW_TAG_member, scope: !209, file: !205, line: 24, baseType: !217, size: 16)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !209, file: !205, line: 24, size: 16, elements: !218)
!218 = !{!219, !223}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !217, file: !205, line: 25, baseType: !220, size: 8)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !131, line: 17, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !133, line: 21, baseType: !222)
!222 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !217, file: !205, line: 26, baseType: !220, size: 8, offset: 8)
!224 = !DIDerivedType(tag: DW_TAG_member, scope: !209, file: !205, line: 28, baseType: !225, size: 32)
!225 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !209, file: !205, line: 28, size: 32, elements: !226)
!226 = !{!227, !231}
!227 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !225, file: !205, line: 29, baseType: !228, size: 16)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !131, line: 19, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !133, line: 24, baseType: !230)
!230 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !225, file: !205, line: 30, baseType: !228, size: 16, offset: 16)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !188, file: !177, line: 171, baseType: !176, size: 512, offset: 192)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !188, file: !177, line: 172, baseType: !234, size: 64, offset: 704)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !236)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !177, line: 133, size: 192, elements: !237)
!237 = !{!238, !245, !250}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !236, file: !177, line: 134, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!46, !243}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !236, file: !177, line: 135, baseType: !246, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !247)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!180, !243}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !236, file: !177, line: 136, baseType: !251, size: 64, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = !DISubroutineType(types: !254)
!254 = !{!46, !243, !255}
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !177, line: 125, size: 20736, elements: !257)
!257 = !{!258, !263, !267, !268, !272}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !256, file: !177, line: 126, baseType: !259, size: 192)
!259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 192, elements: !261)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !182, size: 64)
!261 = !{!262}
!262 = !DISubrange(count: 3)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !256, file: !177, line: 127, baseType: !264, size: 4096, offset: 192)
!264 = !DICompositeType(tag: DW_TAG_array_type, baseType: !260, size: 4096, elements: !265)
!265 = !{!266}
!266 = !DISubrange(count: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !256, file: !177, line: 128, baseType: !46, size: 32, offset: 4288)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !256, file: !177, line: 129, baseType: !269, size: 16384, offset: 4320)
!269 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 16384, elements: !270)
!270 = !{!271}
!271 = !DISubrange(count: 2048)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !256, file: !177, line: 130, baseType: !46, size: 32, offset: 20704)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !176, file: !177, line: 69, baseType: !274, size: 64, offset: 320)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !177, line: 116, size: 384, elements: !277)
!277 = !{!278, !282, !311, !647, !678, !682}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !276, file: !177, line: 117, baseType: !279, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{null, !185}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !276, file: !177, line: 118, baseType: !283, size: 64, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !285)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !286, line: 254, size: 128, elements: !287)
!286 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!287 = !{!288, !303}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !285, file: !286, line: 255, baseType: !289, size: 64)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!292, !185, !297, !260}
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !117, line: 66, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !294, line: 73, baseType: !295)
!294 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !294, line: 15, baseType: !296)
!296 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !286, line: 30, size: 128, elements: !299)
!299 = !{!300, !301}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !298, file: !286, line: 31, baseType: !180, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !298, file: !286, line: 32, baseType: !302, size: 16, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !117, line: 24, baseType: !230)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !285, file: !286, line: 256, baseType: !304, size: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!292, !185, !297, !180, !307}
!307 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !117, line: 61, baseType: !308)
!308 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !294, line: 72, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !294, line: 16, baseType: !310)
!310 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !276, file: !177, line: 119, baseType: !312, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !286, line: 84, size: 320, elements: !316)
!316 = !{!317, !318, !322, !643, !645}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !315, file: !286, line: 85, baseType: !180, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !315, file: !286, line: 86, baseType: !319, size: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!302, !185, !297, !46}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !315, file: !286, line: 88, baseType: !323, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!302, !185, !326, !46}
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !286, line: 175, size: 512, elements: !328)
!328 = !{!329, !330, !331, !332, !339, !349, !350}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !327, file: !286, line: 176, baseType: !298, size: 128)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !327, file: !286, line: 177, baseType: !307, size: 64, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !327, file: !286, line: 178, baseType: !111, size: 64, offset: 192)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !327, file: !286, line: 179, baseType: !333, size: 64, offset: 256)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!336}
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !338, line: 32, flags: DIFlagFwdDecl)
!338 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!339 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !327, file: !286, line: 180, baseType: !340, size: 64, offset: 320)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!292, !343, !185, !326, !260, !346, !307}
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !345, line: 537, flags: DIFlagFwdDecl)
!345 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !117, line: 52, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !294, line: 88, baseType: !348)
!348 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !327, file: !286, line: 182, baseType: !340, size: 64, offset: 384)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !327, file: !286, line: 184, baseType: !351, size: 64, offset: 448)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{!46, !343, !185, !326, !354}
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !338, line: 625, size: 1344, elements: !356)
!356 = !{!357, !374, !594, !600, !607, !608, !613, !614, !626, !627, !630, !634, !635, !636, !637, !638, !641}
!357 = !DIDerivedType(tag: DW_TAG_member, scope: !355, file: !338, line: 628, baseType: !358, size: 128)
!358 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !355, file: !338, line: 628, size: 128, elements: !359)
!359 = !{!360, !365}
!360 = !DIDerivedType(tag: DW_TAG_member, scope: !358, file: !338, line: 629, baseType: !361, size: 128)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !358, file: !338, line: 629, size: 128, elements: !362)
!362 = !{!363, !364}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !361, file: !338, line: 631, baseType: !310, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !361, file: !338, line: 632, baseType: !310, size: 64, offset: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !358, file: !338, line: 635, baseType: !366, size: 128, align: 64)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !117, line: 232, size: 128, align: 64, elements: !367)
!367 = !{!368, !370}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !366, file: !117, line: 233, baseType: !369, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !366, file: !117, line: 234, baseType: !371, size: 64, offset: 64)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{null, !369}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !355, file: !338, line: 639, baseType: !375, size: 64, offset: 128)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !338, line: 733, size: 10240, elements: !377)
!377 = !{!378, !590}
!378 = !DIDerivedType(tag: DW_TAG_member, scope: !376, file: !338, line: 734, baseType: !379, size: 10240)
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !376, file: !338, line: 734, size: 10240, elements: !380)
!380 = !{!381, !385, !399, !403, !404, !405, !406, !407, !408, !416, !417, !418, !427, !428, !437, !438, !439, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !464, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !486, !500, !503, !556, !557, !558, !561, !564, !565, !568, !569, !570, !577, !578}
!381 = !DIDerivedType(tag: DW_TAG_member, scope: !379, file: !338, line: 739, baseType: !382, size: 512, align: 512)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !379, file: !338, line: 739, size: 512, align: 512, elements: !383)
!383 = !{!384}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !382, file: !338, line: 747, baseType: !212, size: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !379, file: !338, line: 750, baseType: !386, size: 128, offset: 512)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !387, line: 218, size: 128, elements: !388)
!387 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!388 = !{!389, !397, !398}
!389 = !DIDerivedType(tag: DW_TAG_member, scope: !386, file: !387, line: 219, baseType: !390, size: 32)
!390 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !386, file: !387, line: 219, size: 32, elements: !391)
!391 = !{!392, !393}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !390, file: !387, line: 220, baseType: !192, size: 32)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !390, file: !387, line: 221, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !387, line: 197, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !387, line: 197, elements: !396)
!396 = !{}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !386, file: !387, line: 223, baseType: !7, size: 32, offset: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !386, file: !387, line: 224, baseType: !111, size: 64, offset: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !379, file: !338, line: 752, baseType: !400, size: 64, offset: 640)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{!310, !343, !310, !310, !310, !310}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !379, file: !338, line: 756, baseType: !310, size: 64, offset: 704)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !379, file: !338, line: 757, baseType: !310, size: 64, offset: 768)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !379, file: !338, line: 760, baseType: !310, size: 64, offset: 832)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !379, file: !338, line: 761, baseType: !310, size: 64, offset: 896)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !379, file: !338, line: 763, baseType: !310, size: 64, offset: 960)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !379, file: !338, line: 764, baseType: !409, size: 64, offset: 1024)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !345, line: 299, baseType: !411)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !345, line: 299, size: 64, elements: !412)
!412 = !{!413}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !411, file: !345, line: 299, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !415, line: 18, baseType: !310)
!415 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!416 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !379, file: !338, line: 773, baseType: !212, size: 32, offset: 1088)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !379, file: !338, line: 785, baseType: !212, size: 32, offset: 1120)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !379, file: !338, line: 795, baseType: !419, size: 64, offset: 1152)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !338, line: 726, size: 128, elements: !421)
!421 = !{!422, !426}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !420, file: !338, line: 727, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !131, line: 23, baseType: !424)
!424 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !133, line: 31, baseType: !425)
!425 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !420, file: !338, line: 728, baseType: !46, size: 32, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !379, file: !338, line: 801, baseType: !310, size: 64, offset: 1216)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !379, file: !338, line: 804, baseType: !429, size: 64, offset: 1280)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !430, line: 13, baseType: !431)
!430 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!431 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !117, line: 181, baseType: !432)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !117, line: 179, size: 64, elements: !433)
!433 = !{!434}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !432, file: !117, line: 180, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !131, line: 22, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !133, line: 30, baseType: !348)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !379, file: !338, line: 806, baseType: !46, size: 32, offset: 1344)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !379, file: !338, line: 808, baseType: !192, size: 32, offset: 1376)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !379, file: !338, line: 823, baseType: !440, size: 320, offset: 1408)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !441, line: 48, size: 320, elements: !442)
!441 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!442 = !{!443, !444, !445, !450, !452}
!443 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !440, file: !441, line: 49, baseType: !429, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !440, file: !441, line: 55, baseType: !429, size: 64, offset: 64)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !440, file: !441, line: 57, baseType: !446, size: 32, offset: 128)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !447, line: 15, size: 32, elements: !448)
!447 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!448 = !{!449}
!449 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !446, file: !447, line: 20, baseType: !212, size: 32)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !440, file: !441, line: 59, baseType: !451, size: 32, offset: 160)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !201, line: 23, baseType: !200)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !440, file: !441, line: 60, baseType: !116, size: 128, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !379, file: !338, line: 825, baseType: !116, size: 128, offset: 1728)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !379, file: !338, line: 845, baseType: !46, size: 32, offset: 1856)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !379, file: !338, line: 849, baseType: !310, size: 64, offset: 1920)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !379, file: !338, line: 850, baseType: !310, size: 64, offset: 1984)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !379, file: !338, line: 852, baseType: !310, size: 64, offset: 2048)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !379, file: !338, line: 853, baseType: !310, size: 64, offset: 2112)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !379, file: !338, line: 854, baseType: !431, size: 64, offset: 2176)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !379, file: !338, line: 855, baseType: !310, size: 64, offset: 2240)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !379, file: !338, line: 856, baseType: !310, size: 64, offset: 2304)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !379, file: !338, line: 857, baseType: !310, size: 64, offset: 2368)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !379, file: !338, line: 858, baseType: !310, size: 64, offset: 2432)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !379, file: !338, line: 865, baseType: !465, size: 32, offset: 2496)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !466, line: 69, baseType: !467)
!466 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !466, line: 64, size: 32, elements: !468)
!468 = !{!469}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !467, file: !466, line: 65, baseType: !7, size: 32)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !379, file: !338, line: 867, baseType: !192, size: 32, offset: 2528)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !379, file: !338, line: 869, baseType: !310, size: 64, offset: 2560)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !379, file: !338, line: 869, baseType: !310, size: 64, offset: 2624)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !379, file: !338, line: 869, baseType: !310, size: 64, offset: 2688)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !379, file: !338, line: 869, baseType: !310, size: 64, offset: 2752)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !379, file: !338, line: 870, baseType: !310, size: 64, offset: 2816)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !379, file: !338, line: 870, baseType: !310, size: 64, offset: 2880)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !379, file: !338, line: 870, baseType: !310, size: 64, offset: 2944)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !379, file: !338, line: 871, baseType: !310, size: 64, offset: 3008)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !379, file: !338, line: 871, baseType: !310, size: 64, offset: 3072)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !379, file: !338, line: 871, baseType: !310, size: 64, offset: 3136)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !379, file: !338, line: 871, baseType: !310, size: 64, offset: 3200)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !379, file: !338, line: 873, baseType: !483, size: 3328, offset: 3264)
!483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 3328, elements: !484)
!484 = !{!485}
!485 = !DISubrange(count: 52)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !379, file: !338, line: 875, baseType: !487, size: 1280, offset: 6592)
!487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !488, size: 1280, elements: !498)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !489, line: 22, size: 320, elements: !490)
!489 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!490 = !{!491, !492, !493, !494}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !488, file: !489, line: 23, baseType: !451, size: 32)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !488, file: !489, line: 24, baseType: !435, size: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !488, file: !489, line: 26, baseType: !116, size: 128, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !488, file: !489, line: 28, baseType: !495, size: 64, offset: 256)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !131, line: 20, baseType: !497)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !133, line: 26, baseType: !46)
!498 = !{!499}
!499 = !DISubrange(count: 4)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !379, file: !338, line: 877, baseType: !501, size: 64, offset: 7872)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !338, line: 877, flags: DIFlagFwdDecl)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !379, file: !338, line: 880, baseType: !504, size: 1088, offset: 7936)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !505, line: 72, baseType: !506)
!505 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !505, line: 23, size: 1088, elements: !507)
!507 = !{!508, !509, !510, !511, !512, !515, !516, !524, !525, !550, !551, !552}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !506, file: !505, line: 28, baseType: !423, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !506, file: !505, line: 38, baseType: !431, size: 64, offset: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !506, file: !505, line: 40, baseType: !310, size: 64, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !506, file: !505, line: 43, baseType: !440, size: 320, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !506, file: !505, line: 44, baseType: !513, size: 64, offset: 512)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !505, line: 44, flags: DIFlagFwdDecl)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !506, file: !505, line: 48, baseType: !310, size: 64, offset: 576)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !506, file: !505, line: 59, baseType: !517, size: 256, offset: 640)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !518, line: 66, size: 256, elements: !519)
!518 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!519 = !{!520, !521, !522, !523}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !517, file: !518, line: 67, baseType: !429, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !517, file: !518, line: 68, baseType: !451, size: 32, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !517, file: !518, line: 70, baseType: !446, size: 32, offset: 96)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !517, file: !518, line: 72, baseType: !116, size: 128, offset: 128)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !506, file: !505, line: 60, baseType: !111, size: 64, offset: 896)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !506, file: !505, line: 61, baseType: !526, size: 64, offset: 960)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !528)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !529, line: 13, size: 1216, elements: !530)
!529 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!530 = !{!531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !528, file: !529, line: 14, baseType: !111, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !528, file: !529, line: 15, baseType: !310, size: 64, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !528, file: !529, line: 17, baseType: !310, size: 64, offset: 128)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !528, file: !529, line: 17, baseType: !310, size: 64, offset: 192)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !528, file: !529, line: 18, baseType: !310, size: 64, offset: 256)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !528, file: !529, line: 18, baseType: !310, size: 64, offset: 320)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !528, file: !529, line: 19, baseType: !169, size: 64, offset: 384)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !528, file: !529, line: 21, baseType: !296, size: 64, offset: 448)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !528, file: !529, line: 23, baseType: !296, size: 64, offset: 512)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !528, file: !529, line: 24, baseType: !296, size: 64, offset: 576)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !528, file: !529, line: 25, baseType: !296, size: 64, offset: 640)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !528, file: !529, line: 26, baseType: !296, size: 64, offset: 704)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !528, file: !529, line: 27, baseType: !296, size: 64, offset: 768)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !528, file: !529, line: 28, baseType: !296, size: 64, offset: 832)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !528, file: !529, line: 29, baseType: !296, size: 64, offset: 896)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !528, file: !529, line: 30, baseType: !296, size: 64, offset: 960)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !528, file: !529, line: 31, baseType: !296, size: 64, offset: 1024)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !528, file: !529, line: 32, baseType: !296, size: 64, offset: 1088)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !528, file: !529, line: 33, baseType: !296, size: 64, offset: 1152)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !506, file: !505, line: 63, baseType: !212, size: 32, offset: 1024)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !506, file: !505, line: 69, baseType: !228, size: 16, offset: 1056)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !506, file: !505, line: 70, baseType: !553, size: 16, offset: 1072)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !131, line: 18, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !133, line: 23, baseType: !555)
!555 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !379, file: !338, line: 882, baseType: !310, size: 64, offset: 9024)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !379, file: !338, line: 885, baseType: !192, size: 32, offset: 9088)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !379, file: !338, line: 886, baseType: !559, size: 64, offset: 9152)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !338, line: 732, flags: DIFlagFwdDecl)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !379, file: !338, line: 901, baseType: !562, size: 64, offset: 9216)
!562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !563, size: 64)
!563 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !338, line: 901, flags: DIFlagFwdDecl)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !379, file: !338, line: 904, baseType: !343, size: 64, offset: 9280)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !379, file: !338, line: 906, baseType: !566, size: 64, offset: 9344)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !338, line: 906, flags: DIFlagFwdDecl)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !379, file: !338, line: 930, baseType: !212, size: 32, offset: 9408)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !379, file: !338, line: 933, baseType: !212, size: 32, offset: 9440)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !379, file: !338, line: 935, baseType: !571, size: 64, offset: 9472)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !572, line: 103, size: 64, elements: !573)
!572 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!573 = !{!574}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !571, file: !572, line: 104, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !572, line: 101, flags: DIFlagFwdDecl)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !379, file: !338, line: 940, baseType: !429, size: 64, offset: 9536)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !379, file: !338, line: 942, baseType: !579, size: 256, offset: 9600)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !580, line: 98, size: 256, elements: !581)
!580 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!581 = !{!582, !583, !584}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !579, file: !580, line: 99, baseType: !429, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !579, file: !580, line: 100, baseType: !116, size: 128, offset: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !579, file: !580, line: 101, baseType: !585, size: 64, offset: 192)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !580, line: 21, baseType: !586)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DISubroutineType(types: !588)
!588 = !{null, !589}
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !376, file: !338, line: 986, baseType: !591, offset: 10240)
!591 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, elements: !592)
!592 = !{!593}
!593 = !DISubrange(count: -1)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !355, file: !338, line: 640, baseType: !595, size: 64, offset: 192)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !345, line: 297, baseType: !596)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !345, line: 297, size: 64, elements: !597)
!597 = !{!598}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !596, file: !345, line: 297, baseType: !599, size: 64)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !415, line: 19, baseType: !310)
!600 = !DIDerivedType(tag: DW_TAG_member, scope: !355, file: !338, line: 646, baseType: !601, size: 64, offset: 256)
!601 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !355, file: !338, line: 646, size: 64, elements: !602)
!602 = !{!603, !606}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !601, file: !338, line: 647, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !605)
!605 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !338, line: 542, baseType: !310)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !601, file: !338, line: 648, baseType: !605, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !355, file: !338, line: 666, baseType: !46, size: 32, offset: 320)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !355, file: !338, line: 667, baseType: !609, size: 64, offset: 384)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !338, line: 579, size: 320, elements: !611)
!611 = !{!612}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !610, file: !338, line: 580, baseType: !440, size: 320)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !355, file: !338, line: 670, baseType: !161, size: 8, offset: 448)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !355, file: !338, line: 681, baseType: !615, size: 256, offset: 512)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !355, file: !338, line: 678, size: 256, elements: !616)
!616 = !{!617, !625}
!617 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !615, file: !338, line: 679, baseType: !618, size: 192, align: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !619, line: 5, size: 192, align: 64, elements: !620)
!619 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!620 = !{!621, !622, !624}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !618, file: !619, line: 6, baseType: !310, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !618, file: !619, line: 7, baseType: !623, size: 64, offset: 64)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !618, file: !619, line: 8, baseType: !623, size: 64, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !615, file: !338, line: 680, baseType: !310, size: 64, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !355, file: !338, line: 689, baseType: !116, size: 128, offset: 768)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !355, file: !338, line: 691, baseType: !628, size: 64, offset: 896)
!628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !629, size: 64)
!629 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !338, line: 691, flags: DIFlagFwdDecl)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !355, file: !338, line: 694, baseType: !631, size: 64, offset: 960)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !633)
!633 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !338, line: 694, flags: DIFlagFwdDecl)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !355, file: !338, line: 697, baseType: !310, size: 64, offset: 1024)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !355, file: !338, line: 699, baseType: !343, size: 64, offset: 1088)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !355, file: !338, line: 700, baseType: !111, size: 64, offset: 1152)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !355, file: !338, line: 711, baseType: !429, size: 64, offset: 1216)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !355, file: !338, line: 717, baseType: !639, size: 64, offset: 1280)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !338, line: 717, flags: DIFlagFwdDecl)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !355, file: !338, line: 722, baseType: !642, offset: 1344)
!642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !338, line: 570, elements: !396)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !315, file: !286, line: 90, baseType: !644, size: 64, offset: 192)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !315, file: !286, line: 91, baseType: !646, size: 64, offset: 256)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !276, file: !177, line: 120, baseType: !648, size: 64, offset: 192)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!651, !243}
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !654)
!654 = !{!655, !656, !660, !664, !670, !674}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !653, file: !6, line: 40, baseType: !5, size: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !653, file: !6, line: 41, baseType: !657, size: 64, offset: 64)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DISubroutineType(types: !659)
!659 = !{!161}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !653, file: !6, line: 42, baseType: !661, size: 64, offset: 128)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DISubroutineType(types: !663)
!663 = !{!111}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !653, file: !6, line: 43, baseType: !665, size: 64, offset: 192)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = !DISubroutineType(types: !667)
!667 = !{!169, !668}
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !653, file: !6, line: 44, baseType: !671, size: 64, offset: 256)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DISubroutineType(types: !673)
!673 = !{!169}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !653, file: !6, line: 45, baseType: !675, size: 64, offset: 320)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DISubroutineType(types: !677)
!677 = !{null, !111}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !276, file: !177, line: 121, baseType: !679, size: 64, offset: 256)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DISubroutineType(types: !681)
!681 = !{!169, !243}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !276, file: !177, line: 122, baseType: !683, size: 64, offset: 320)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DISubroutineType(types: !685)
!685 = !{null, !243, !686, !694}
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !688, line: 23, baseType: !689)
!688 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !688, line: 21, size: 32, elements: !690)
!690 = !{!691}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !689, file: !688, line: 22, baseType: !692, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !117, line: 37, baseType: !693)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !294, line: 49, baseType: !7)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !688, line: 28, baseType: !696)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !688, line: 26, size: 32, elements: !697)
!697 = !{!698}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !696, file: !688, line: 27, baseType: !699, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !117, line: 38, baseType: !700)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !294, line: 50, baseType: !7)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !176, file: !177, line: 70, baseType: !702, size: 64, offset: 384)
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !703, size: 64)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !704, line: 190, size: 1152, elements: !705)
!704 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!705 = !{!706, !707, !708, !709, !710, !711, !712, !713, !808, !809, !810, !811, !812, !815}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !703, file: !704, line: 191, baseType: !212, size: 32)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !703, file: !704, line: 192, baseType: !212, size: 32, offset: 32)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !703, file: !704, line: 202, baseType: !702, size: 64, offset: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !703, file: !704, line: 203, baseType: !180, size: 64, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !703, file: !704, line: 205, baseType: !618, size: 192, align: 64, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !703, file: !704, line: 207, baseType: !169, size: 64, offset: 384)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !703, file: !704, line: 208, baseType: !7, size: 32, offset: 448)
!713 = !DIDerivedType(tag: DW_TAG_member, scope: !703, file: !704, line: 209, baseType: !714, size: 256, offset: 512)
!714 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !703, file: !704, line: 209, size: 256, elements: !715)
!715 = !{!716, !728, !732}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !714, file: !704, line: 210, baseType: !717, size: 256)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !704, line: 153, size: 256, elements: !718)
!718 = !{!719, !720, !724, !727}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !717, file: !704, line: 154, baseType: !310, size: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !717, file: !704, line: 156, baseType: !721, size: 64, offset: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !619, line: 12, size: 64, elements: !722)
!722 = !{!723}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !721, file: !619, line: 13, baseType: !623, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !717, file: !704, line: 162, baseType: !725, size: 64, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !704, line: 162, flags: DIFlagFwdDecl)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !717, file: !704, line: 167, baseType: !310, size: 64, offset: 192)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !714, file: !704, line: 211, baseType: !729, size: 64)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !704, line: 170, size: 64, elements: !730)
!730 = !{!731}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !729, file: !704, line: 171, baseType: !702, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !714, file: !704, line: 212, baseType: !733, size: 256)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !704, line: 174, size: 256, elements: !734)
!734 = !{!735, !803, !806, !807}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !733, file: !704, line: 175, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !738)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !704, line: 271, size: 768, elements: !739)
!739 = !{!740, !763, !767, !771, !776, !780, !784, !788, !789, !790, !791, !799}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !738, file: !704, line: 276, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{!46, !744}
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !704, line: 251, size: 1216, elements: !746)
!746 = !{!747, !748, !749, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !745, file: !704, line: 253, baseType: !702, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !745, file: !704, line: 254, baseType: !343, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !745, file: !704, line: 255, baseType: !750, size: 64, offset: 128)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !752, line: 66, flags: DIFlagFwdDecl)
!752 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!753 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !745, file: !704, line: 256, baseType: !111, size: 64, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !745, file: !704, line: 259, baseType: !517, size: 256, offset: 256)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !745, file: !704, line: 260, baseType: !517, size: 256, offset: 512)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !745, file: !704, line: 261, baseType: !46, size: 32, offset: 768)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !745, file: !704, line: 262, baseType: !116, size: 128, offset: 832)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !745, file: !704, line: 263, baseType: !260, size: 64, offset: 960)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !745, file: !704, line: 265, baseType: !307, size: 64, offset: 1024)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !745, file: !704, line: 266, baseType: !161, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !745, file: !704, line: 267, baseType: !161, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !745, file: !704, line: 268, baseType: !631, size: 64, offset: 1152)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !738, file: !704, line: 277, baseType: !764, size: 64, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DISubroutineType(types: !766)
!766 = !{null, !744}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !738, file: !704, line: 290, baseType: !768, size: 64, offset: 128)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!46, !750, !111}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !738, file: !704, line: 292, baseType: !772, size: 64, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!111, !750, !775}
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !738, file: !704, line: 293, baseType: !777, size: 64, offset: 256)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{!111, !750, !111, !775}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !738, file: !704, line: 294, baseType: !781, size: 64, offset: 320)
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !782, size: 64)
!782 = !DISubroutineType(types: !783)
!783 = !{null, !750, !111}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !738, file: !704, line: 296, baseType: !785, size: 64, offset: 384)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{!292, !744, !260, !307, !346}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !738, file: !704, line: 306, baseType: !307, size: 64, offset: 448)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !738, file: !704, line: 313, baseType: !161, size: 8, offset: 512)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !738, file: !704, line: 314, baseType: !785, size: 64, offset: 576)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !738, file: !704, line: 317, baseType: !792, size: 64, offset: 640)
!792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!793 = !DISubroutineType(types: !794)
!794 = !{!795, !744, !797}
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !796, line: 59, baseType: !7)
!796 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !704, line: 31, flags: DIFlagFwdDecl)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !738, file: !704, line: 320, baseType: !800, size: 64, offset: 704)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{!46, !744, !354}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !733, file: !704, line: 176, baseType: !804, size: 64, offset: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !704, line: 35, flags: DIFlagFwdDecl)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !733, file: !704, line: 177, baseType: !346, size: 64, offset: 128)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !733, file: !704, line: 178, baseType: !702, size: 64, offset: 192)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !703, file: !704, line: 215, baseType: !111, size: 64, offset: 768)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !703, file: !704, line: 221, baseType: !423, size: 64, offset: 832)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !703, file: !704, line: 223, baseType: !230, size: 16, offset: 896)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !703, file: !704, line: 224, baseType: !302, size: 16, offset: 912)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !703, file: !704, line: 225, baseType: !813, size: 64, offset: 960)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !704, line: 36, flags: DIFlagFwdDecl)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !703, file: !704, line: 227, baseType: !366, size: 128, align: 64, offset: 1024)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !176, file: !177, line: 71, baseType: !817, size: 32, offset: 448)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !818, line: 19, size: 32, elements: !819)
!818 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!819 = !{!820}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !817, file: !818, line: 20, baseType: !821, size: 32)
!821 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !822, line: 113, baseType: !823)
!822 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !822, line: 111, size: 32, elements: !824)
!824 = !{!825}
!825 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !823, file: !822, line: 112, baseType: !212, size: 32)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !176, file: !177, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !176, file: !177, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !176, file: !177, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !176, file: !177, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !176, file: !177, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !173, file: !26, line: 707, baseType: !832, size: 64, offset: 512)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !173, file: !26, line: 709, baseType: !834, size: 64, offset: 576)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !173, file: !26, line: 711, baseType: !180, size: 64, offset: 640)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !173, file: !26, line: 712, baseType: !838, size: 64, offset: 704)
!838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !840)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !841)
!841 = !{!842, !843, !844, !848, !853, !857}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !840, file: !26, line: 90, baseType: !180, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !840, file: !26, line: 91, baseType: !312, size: 64, offset: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !840, file: !26, line: 92, baseType: !845, size: 64, offset: 128)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DISubroutineType(types: !847)
!847 = !{!46, !171, !255}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !840, file: !26, line: 93, baseType: !849, size: 64, offset: 192)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DISubroutineType(types: !851)
!851 = !{!260, !171, !852, !686, !694}
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !840, file: !26, line: 95, baseType: !854, size: 64, offset: 256)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = !DISubroutineType(types: !856)
!856 = !{null, !832}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !840, file: !26, line: 97, baseType: !858, size: 64, offset: 320)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !860)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !861)
!861 = !{!862, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !882, !883, !884, !885, !886, !887}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !860, file: !38, line: 287, baseType: !863, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{!46, !832}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !860, file: !38, line: 288, baseType: !854, size: 64, offset: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !860, file: !38, line: 289, baseType: !863, size: 64, offset: 128)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !860, file: !38, line: 290, baseType: !863, size: 64, offset: 192)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !860, file: !38, line: 291, baseType: !863, size: 64, offset: 256)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !860, file: !38, line: 292, baseType: !863, size: 64, offset: 320)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !860, file: !38, line: 293, baseType: !863, size: 64, offset: 384)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !860, file: !38, line: 294, baseType: !863, size: 64, offset: 448)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !860, file: !38, line: 295, baseType: !863, size: 64, offset: 512)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !860, file: !38, line: 296, baseType: !863, size: 64, offset: 576)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !860, file: !38, line: 297, baseType: !863, size: 64, offset: 640)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !860, file: !38, line: 298, baseType: !863, size: 64, offset: 704)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !860, file: !38, line: 299, baseType: !863, size: 64, offset: 768)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !860, file: !38, line: 300, baseType: !863, size: 64, offset: 832)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !860, file: !38, line: 301, baseType: !863, size: 64, offset: 896)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !860, file: !38, line: 302, baseType: !863, size: 64, offset: 960)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !860, file: !38, line: 303, baseType: !863, size: 64, offset: 1024)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !860, file: !38, line: 304, baseType: !863, size: 64, offset: 1088)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !860, file: !38, line: 305, baseType: !863, size: 64, offset: 1152)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !860, file: !38, line: 306, baseType: !863, size: 64, offset: 1216)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !860, file: !38, line: 307, baseType: !863, size: 64, offset: 1280)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !860, file: !38, line: 308, baseType: !863, size: 64, offset: 1344)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !860, file: !38, line: 309, baseType: !863, size: 64, offset: 1408)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !173, file: !26, line: 714, baseType: !889, size: 64, offset: 768)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !891)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !892, line: 80, size: 1344, elements: !893)
!892 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!893 = !{!894, !895, !896, !897, !898, !899, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1353}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !891, file: !892, line: 81, baseType: !180, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !891, file: !892, line: 82, baseType: !180, size: 64, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !891, file: !892, line: 83, baseType: !312, size: 64, offset: 128)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !891, file: !892, line: 84, baseType: !312, size: 64, offset: 192)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !891, file: !892, line: 85, baseType: !312, size: 64, offset: 256)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !891, file: !892, line: 87, baseType: !900, size: 64, offset: 320)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DISubroutineType(types: !902)
!902 = !{!46, !832, !903}
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !905)
!905 = !{!906, !907, !908, !1284, !1285, !1286, !1287, !1303, !1316, !1317, !1318, !1319, !1320, !1328, !1329, !1330, !1331, !1332, !1333}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !904, file: !20, line: 97, baseType: !180, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !904, file: !20, line: 98, baseType: !889, size: 64, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !904, file: !20, line: 100, baseType: !909, size: 64, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !911)
!911 = !{!912, !913, !914, !918, !939, !965, !966, !967, !968, !972, !975, !976, !977, !1030, !1031, !1032, !1033, !1034, !1035, !1036, !1037, !1040, !1044, !1064, !1082, !1083, !1084, !1085, !1094, !1117, !1118, !1121, !1124, !1125, !1126, !1127, !1128, !1129, !1130, !1135, !1136, !1242, !1250, !1251, !1252, !1254, !1258, !1259, !1263, !1264, !1265, !1266, !1268, !1269, !1270, !1277, !1278, !1279, !1283}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !910, file: !13, line: 403, baseType: !12, size: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !910, file: !13, line: 406, baseType: !116, size: 128, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !910, file: !13, line: 409, baseType: !915, size: 448, offset: 192)
!915 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 448, elements: !916)
!916 = !{!917}
!917 = !DISubrange(count: 56)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !910, file: !13, line: 417, baseType: !919, size: 768, offset: 640)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !920)
!920 = !{!921, !922, !923, !924, !927}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !919, file: !13, line: 46, baseType: !176, size: 512)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !919, file: !13, line: 47, baseType: !909, size: 64, offset: 512)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !919, file: !13, line: 48, baseType: !185, size: 64, offset: 576)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !919, file: !13, line: 49, baseType: !925, size: 64, offset: 640)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !13, line: 49, flags: DIFlagFwdDecl)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !919, file: !13, line: 50, baseType: !928, size: 64, offset: 704)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !930, line: 26, size: 256, elements: !931)
!930 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!931 = !{!932, !933}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !929, file: !930, line: 27, baseType: !7, size: 32)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !929, file: !930, line: 28, baseType: !934, size: 192, offset: 64)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !935, line: 43, size: 192, elements: !936)
!935 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!936 = !{!937, !938}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !934, file: !935, line: 44, baseType: !451, size: 32)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !934, file: !935, line: 45, baseType: !116, size: 128, offset: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !910, file: !13, line: 418, baseType: !940, size: 64, offset: 1408)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !942)
!942 = !{!943, !944, !949, !953, !957, !961}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !941, file: !13, line: 54, baseType: !298, size: 128)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !941, file: !13, line: 55, baseType: !945, size: 64, offset: 128)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!292, !940, !948, !260}
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !941, file: !13, line: 57, baseType: !950, size: 64, offset: 192)
!950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !951, size: 64)
!951 = !DISubroutineType(types: !952)
!952 = !{!292, !940, !948, !180, !307}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !941, file: !13, line: 59, baseType: !954, size: 64, offset: 256)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DISubroutineType(types: !956)
!956 = !{null, !909, !180}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !941, file: !13, line: 60, baseType: !958, size: 64, offset: 320)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DISubroutineType(types: !960)
!960 = !{!46, !909}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !941, file: !13, line: 61, baseType: !962, size: 64, offset: 384)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DISubroutineType(types: !964)
!964 = !{null, !909}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !910, file: !13, line: 419, baseType: !180, size: 64, offset: 1472)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !910, file: !13, line: 420, baseType: !180, size: 64, offset: 1536)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !910, file: !13, line: 421, baseType: !185, size: 64, offset: 1600)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !910, file: !13, line: 424, baseType: !969, size: 64, offset: 1664)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !971)
!971 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !910, file: !13, line: 425, baseType: !973, size: 64, offset: 1728)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !974, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !496)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !910, file: !13, line: 426, baseType: !7, size: 32, offset: 1792)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !910, file: !13, line: 435, baseType: !517, size: 256, offset: 1856)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !910, file: !13, line: 437, baseType: !978, size: 64, offset: 2112)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !980, line: 69, size: 320, elements: !981)
!980 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!981 = !{!982, !983, !984, !1001, !1003, !1007, !1008}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !979, file: !980, line: 70, baseType: !180, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !979, file: !980, line: 71, baseType: !909, size: 64, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !979, file: !980, line: 72, baseType: !985, size: 64, offset: 128)
!985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !986, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !987)
!987 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !980, line: 47, size: 256, elements: !988)
!988 = !{!989, !990, !996, !1000}
!989 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !987, file: !980, line: 49, baseType: !7, size: 32)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !987, file: !980, line: 51, baseType: !991, size: 64, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{!46, !180, !994}
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !979)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !987, file: !980, line: 53, baseType: !997, size: 64, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!998 = !DISubroutineType(types: !999)
!999 = !{!46, !260, !994}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !987, file: !980, line: 55, baseType: !675, size: 64, offset: 192)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !979, file: !980, line: 73, baseType: !1002, size: 16, offset: 192)
!1002 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !979, file: !980, line: 74, baseType: !1004, size: 8, offset: 208)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !131, line: 16, baseType: !1005)
!1005 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !133, line: 20, baseType: !1006)
!1006 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !979, file: !980, line: 75, baseType: !220, size: 8, offset: 216)
!1008 = !DIDerivedType(tag: DW_TAG_member, scope: !979, file: !980, line: 76, baseType: !1009, size: 64, offset: 256)
!1009 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !979, file: !980, line: 76, size: 64, elements: !1010)
!1010 = !{!1011, !1012, !1019}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1009, file: !980, line: 77, baseType: !111, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1009, file: !980, line: 78, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1015)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !980, line: 86, size: 128, elements: !1016)
!1016 = !{!1017, !1018}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1015, file: !980, line: 87, baseType: !7, size: 32)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1015, file: !980, line: 88, baseType: !260, size: 64, offset: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1009, file: !980, line: 79, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1022)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !980, line: 92, size: 256, elements: !1023)
!1023 = !{!1024, !1025, !1026, !1028, !1029}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1022, file: !980, line: 94, baseType: !7, size: 32)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1022, file: !980, line: 95, baseType: !7, size: 32, offset: 32)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1022, file: !980, line: 96, baseType: !1027, size: 64, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1022, file: !980, line: 97, baseType: !985, size: 64, offset: 128)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1022, file: !980, line: 98, baseType: !111, size: 64, offset: 192)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !910, file: !13, line: 438, baseType: !7, size: 32, offset: 2176)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !910, file: !13, line: 441, baseType: !7, size: 32, offset: 2208)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !910, file: !13, line: 442, baseType: !969, size: 64, offset: 2240)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !910, file: !13, line: 443, baseType: !973, size: 64, offset: 2304)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !910, file: !13, line: 444, baseType: !161, size: 8, offset: 2368)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !910, file: !13, line: 451, baseType: !161, size: 8, offset: 2376)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !910, file: !13, line: 454, baseType: !7, size: 32, offset: 2400)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !910, file: !13, line: 455, baseType: !1038, size: 64, offset: 2432)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !13, line: 43, flags: DIFlagFwdDecl)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !910, file: !13, line: 458, baseType: !1041, size: 64, offset: 2496)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DISubroutineType(types: !1043)
!1043 = !{!46}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !910, file: !13, line: 460, baseType: !1045, size: 4032, align: 512, offset: 2560)
!1045 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1046, size: 4032, elements: !1062)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !13, line: 362, size: 576, elements: !1047)
!1047 = !{!1048, !1049, !1050}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1046, file: !13, line: 363, baseType: !111, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1046, file: !13, line: 364, baseType: !7, size: 32, offset: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1046, file: !13, line: 367, baseType: !1051, size: 448, offset: 128)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !13, line: 319, size: 448, elements: !1052)
!1052 = !{!1053, !1054}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1051, file: !13, line: 320, baseType: !909, size: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1051, file: !13, line: 321, baseType: !1055, size: 384, offset: 64)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1056, line: 40, size: 384, elements: !1057)
!1056 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1057 = !{!1058}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1055, file: !1056, line: 41, baseType: !1059, size: 384, align: 64)
!1059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !618, size: 384, align: 64, elements: !1060)
!1060 = !{!1061}
!1061 = !DISubrange(count: 2)
!1062 = !{!1063}
!1063 = !DISubrange(count: 7)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !910, file: !13, line: 463, baseType: !1065, size: 192, offset: 6592)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1066, line: 8, size: 192, elements: !1067)
!1066 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1067 = !{!1068, !1069, !1071}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1065, file: !1066, line: 10, baseType: !7, size: 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1065, file: !1066, line: 11, baseType: !1070, size: 64, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1065, file: !1066, line: 12, baseType: !1072, size: 64, offset: 128)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1074, line: 59, size: 48, elements: !1075)
!1074 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1075 = !{!1076, !1077, !1078, !1079, !1080, !1081}
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1073, file: !1074, line: 60, baseType: !553, size: 16)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1073, file: !1074, line: 61, baseType: !553, size: 16, offset: 16)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1073, file: !1074, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1073, file: !1074, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1073, file: !1074, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1073, file: !1074, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !910, file: !13, line: 465, baseType: !310, size: 64, offset: 6784)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !910, file: !13, line: 469, baseType: !7, size: 32, offset: 6848)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !910, file: !13, line: 470, baseType: !116, size: 128, offset: 6912)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !910, file: !13, line: 471, baseType: !1086, size: 64, offset: 7040)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1088, line: 33, size: 96, elements: !1089)
!1088 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1089 = !{!1090, !1091, !1092, !1093}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1087, file: !1088, line: 37, baseType: !46, size: 32)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1087, file: !1088, line: 43, baseType: !46, size: 32, offset: 32)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1087, file: !1088, line: 45, baseType: !230, size: 16, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1087, file: !1088, line: 47, baseType: !230, size: 16, offset: 80)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !910, file: !13, line: 476, baseType: !1095, size: 64, offset: 7104)
!1095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1096, size: 64)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !13, line: 378, size: 256, elements: !1097)
!1097 = !{!1098, !1114, !1115, !1116}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1096, file: !13, line: 379, baseType: !1099, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1100, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1101, line: 204, baseType: !1102)
!1101 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1101, line: 197, size: 192, elements: !1103)
!1103 = !{!1104, !1106, !1107, !1108, !1110, !1112}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1102, file: !1101, line: 198, baseType: !1105, size: 32)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1101, line: 21, baseType: !132)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1102, file: !1101, line: 199, baseType: !222, size: 8, offset: 32)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1102, file: !1101, line: 200, baseType: !222, size: 8, offset: 40)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1102, file: !1101, line: 201, baseType: !1109, size: 16, offset: 48)
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1101, line: 17, baseType: !229)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1102, file: !1101, line: 202, baseType: !1111, size: 64, offset: 64)
!1111 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1101, line: 16, baseType: !424)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1102, file: !1101, line: 203, baseType: !1113, size: 64, offset: 128)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1101, line: 22, baseType: !424)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1096, file: !13, line: 380, baseType: !7, size: 32, offset: 64)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1096, file: !13, line: 381, baseType: !260, size: 64, offset: 128)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1096, file: !13, line: 382, baseType: !260, size: 64, offset: 192)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !910, file: !13, line: 477, baseType: !1096, size: 256, offset: 7168)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !910, file: !13, line: 480, baseType: !1119, size: 64, offset: 7424)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !910, file: !13, line: 483, baseType: !1122, size: 64, offset: 7488)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !910, file: !13, line: 488, baseType: !260, size: 64, offset: 7552)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !910, file: !13, line: 492, baseType: !111, size: 64, offset: 7616)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !910, file: !13, line: 493, baseType: !7, size: 32, offset: 7680)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !910, file: !13, line: 495, baseType: !111, size: 64, offset: 7744)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !910, file: !13, line: 496, baseType: !7, size: 32, offset: 7808)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !910, file: !13, line: 499, baseType: !7, size: 32, offset: 7840)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !910, file: !13, line: 500, baseType: !1131, size: 64, offset: 7872)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1133, line: 45, baseType: !1134)
!1133 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !910, file: !13, line: 503, baseType: !7, size: 32, offset: 7936)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !910, file: !13, line: 504, baseType: !1137, size: 64, offset: 8000)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1140, line: 96, size: 192, elements: !1141)
!1140 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1141 = !{!1142, !1143, !1203, !1206}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1139, file: !1140, line: 97, baseType: !7, size: 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1139, file: !1140, line: 98, baseType: !1144, size: 64, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1140, line: 24, size: 3072, elements: !1146)
!1146 = !{!1147, !1149, !1150, !1151, !1152, !1166, !1167, !1168, !1169, !1187, !1188, !1189, !1200, !1201, !1202}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1145, file: !1140, line: 26, baseType: !1148, size: 128)
!1148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !429, size: 128, elements: !1060)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1145, file: !1140, line: 27, baseType: !1148, size: 128, offset: 128)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1145, file: !1140, line: 28, baseType: !46, size: 32, offset: 256)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1145, file: !1140, line: 31, baseType: !192, size: 32, align: 512, offset: 512)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1145, file: !1140, line: 32, baseType: !1153, size: 960, offset: 576)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1154, line: 206, size: 960, elements: !1155)
!1154 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1155 = !{!1156, !1157, !1160, !1162, !1163, !1165}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1153, file: !1154, line: 207, baseType: !369, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1153, file: !1154, line: 208, baseType: !1158, size: 256, offset: 64)
!1158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1159, size: 256, elements: !498)
!1159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1153, file: !1154, line: 209, baseType: !1161, size: 256, offset: 320)
!1161 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 256, elements: !498)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1153, file: !1154, line: 213, baseType: !296, size: 64, offset: 576)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1153, file: !1154, line: 215, baseType: !1164, size: 256, offset: 640)
!1164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !296, size: 256, elements: !498)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1153, file: !1154, line: 216, baseType: !220, size: 8, offset: 896)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1145, file: !1140, line: 33, baseType: !310, size: 64, offset: 1536)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1145, file: !1140, line: 34, baseType: !310, size: 64, offset: 1600)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1145, file: !1140, line: 35, baseType: !161, size: 8, offset: 1664)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1145, file: !1140, line: 36, baseType: !1170, size: 320, offset: 1728)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1171, line: 11, size: 320, elements: !1172)
!1171 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1172 = !{!1173, !1180, !1181, !1186}
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1170, file: !1171, line: 16, baseType: !1174, size: 128)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !117, line: 198, size: 128, elements: !1175)
!1175 = !{!1176, !1178}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1174, file: !117, line: 199, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1174, file: !117, line: 199, baseType: !1179, size: 64, offset: 64)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1170, file: !1171, line: 17, baseType: !310, size: 64, offset: 128)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1170, file: !1171, line: 18, baseType: !1182, size: 64, offset: 192)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{null, !1185}
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1170, file: !1171, line: 19, baseType: !130, size: 32, offset: 256)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1145, file: !1140, line: 37, baseType: !579, size: 256, offset: 2048)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1145, file: !1140, line: 38, baseType: !366, size: 128, align: 64, offset: 2304)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1145, file: !1140, line: 39, baseType: !1190, size: 64, offset: 2432)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1140, line: 49, size: 768, elements: !1192)
!1192 = !{!1193, !1194, !1195, !1196, !1197, !1198, !1199}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1191, file: !1140, line: 50, baseType: !192, size: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1191, file: !1140, line: 51, baseType: !1161, size: 256, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1191, file: !1140, line: 53, baseType: !1161, size: 256, offset: 320)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1191, file: !1140, line: 54, baseType: !310, size: 64, offset: 576)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1191, file: !1140, line: 55, baseType: !1190, size: 64, offset: 640)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1191, file: !1140, line: 56, baseType: !46, size: 32, offset: 704)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1191, file: !1140, line: 57, baseType: !46, size: 32, offset: 736)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1145, file: !1140, line: 40, baseType: !310, size: 64, offset: 2496)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1145, file: !1140, line: 42, baseType: !46, size: 32, offset: 2560)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1145, file: !1140, line: 43, baseType: !1138, size: 64, offset: 2624)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1139, file: !1140, line: 99, baseType: !1204, offset: 128)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1205, line: 211, elements: !396)
!1205 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1139, file: !1140, line: 100, baseType: !1207, size: 64, offset: 128)
!1207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1208, size: 64)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1140, line: 63, size: 3008, elements: !1209)
!1209 = !{!1210, !1211, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1241}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1208, file: !1140, line: 64, baseType: !1190, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1208, file: !1140, line: 65, baseType: !1212, size: 192, offset: 64)
!1212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1190, size: 192, elements: !261)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1208, file: !1140, line: 67, baseType: !46, size: 32, offset: 256)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1208, file: !1140, line: 68, baseType: !517, size: 256, offset: 320)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1208, file: !1140, line: 69, baseType: !192, size: 32, offset: 576)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1208, file: !1140, line: 70, baseType: !517, size: 256, offset: 640)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1208, file: !1140, line: 71, baseType: !310, size: 64, offset: 896)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1208, file: !1140, line: 72, baseType: !310, size: 64, offset: 960)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1208, file: !1140, line: 73, baseType: !310, size: 64, offset: 1024)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1208, file: !1140, line: 74, baseType: !310, size: 64, offset: 1088)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1208, file: !1140, line: 75, baseType: !310, size: 64, offset: 1152)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1208, file: !1140, line: 76, baseType: !310, size: 64, offset: 1216)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1208, file: !1140, line: 77, baseType: !310, size: 64, offset: 1280)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1208, file: !1140, line: 78, baseType: !310, size: 64, offset: 1344)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1208, file: !1140, line: 79, baseType: !161, size: 8, offset: 1408)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1208, file: !1140, line: 80, baseType: !310, size: 64, offset: 1472)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1208, file: !1140, line: 81, baseType: !517, size: 256, offset: 1536)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1208, file: !1140, line: 82, baseType: !929, size: 256, offset: 1792)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1208, file: !1140, line: 84, baseType: !212, size: 32, offset: 2048)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1208, file: !1140, line: 87, baseType: !310, size: 64, offset: 2112)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1208, file: !1140, line: 88, baseType: !310, size: 64, offset: 2176)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1208, file: !1140, line: 89, baseType: !1233, size: 704, offset: 2240)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !580, line: 111, size: 704, elements: !1234)
!1234 = !{!1235, !1236, !1237, !1240}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1233, file: !580, line: 112, baseType: !579, size: 256)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1233, file: !580, line: 113, baseType: !1170, size: 320, offset: 256)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1233, file: !580, line: 116, baseType: !1238, size: 64, offset: 576)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !580, line: 18, flags: DIFlagFwdDecl)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1233, file: !580, line: 117, baseType: !46, size: 32, offset: 640)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1208, file: !1140, line: 90, baseType: !1138, size: 64, offset: 2944)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !910, file: !13, line: 515, baseType: !1243, size: 64, offset: 8064)
!1243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1244, size: 64)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1245, line: 117, size: 128, elements: !1246)
!1245 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1246 = !{!1247, !1248, !1249}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1244, file: !1245, line: 118, baseType: !496, size: 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1244, file: !1245, line: 119, baseType: !496, size: 32, offset: 32)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1244, file: !1245, line: 120, baseType: !296, size: 64, offset: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !910, file: !13, line: 516, baseType: !7, size: 32, offset: 8128)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !910, file: !13, line: 519, baseType: !7, size: 32, offset: 8160)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !910, file: !13, line: 520, baseType: !1253, size: 64, offset: 8192)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !910, file: !13, line: 523, baseType: !1255, size: 64, offset: 8256)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !13, line: 523, flags: DIFlagFwdDecl)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !910, file: !13, line: 524, baseType: !7, size: 32, offset: 8320)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !910, file: !13, line: 525, baseType: !1260, size: 64, offset: 8384)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1262, size: 64)
!1262 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !13, line: 525, flags: DIFlagFwdDecl)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !910, file: !13, line: 526, baseType: !7, size: 32, offset: 8448)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !910, file: !13, line: 533, baseType: !111, size: 64, offset: 8512)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !910, file: !13, line: 534, baseType: !7, size: 32, offset: 8576)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !910, file: !13, line: 535, baseType: !1267, size: 64, offset: 8640)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !910, file: !13, line: 536, baseType: !7, size: 32, offset: 8704)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !910, file: !13, line: 539, baseType: !46, size: 32, offset: 8736)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !910, file: !13, line: 540, baseType: !1271, size: 64, offset: 8768)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1273, line: 32, size: 64, elements: !1274)
!1273 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1274 = !{!1275, !1276}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1272, file: !1273, line: 33, baseType: !496, size: 32)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1272, file: !1273, line: 34, baseType: !496, size: 32, offset: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !910, file: !13, line: 563, baseType: !116, size: 128, offset: 8832)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !910, file: !13, line: 565, baseType: !116, size: 128, offset: 8960)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !910, file: !13, line: 568, baseType: !1280, size: 64, offset: 9088)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{null}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !910, file: !13, line: 570, baseType: !212, size: 32, offset: 9152)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !904, file: !20, line: 101, baseType: !180, size: 64, offset: 192)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !904, file: !20, line: 103, baseType: !161, size: 8, offset: 256)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !904, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !904, file: !20, line: 106, baseType: !1288, size: 64, offset: 320)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1290)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1291, line: 282, size: 1600, elements: !1292)
!1291 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1292 = !{!1293, !1297, !1298, !1302}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1290, file: !1291, line: 283, baseType: !1294, size: 256)
!1294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 256, elements: !1295)
!1295 = !{!1296}
!1296 = !DISubrange(count: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1290, file: !1291, line: 284, baseType: !1294, size: 256, offset: 256)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1290, file: !1291, line: 285, baseType: !1299, size: 1024, offset: 512)
!1299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 1024, elements: !1300)
!1300 = !{!1301}
!1301 = !DISubrange(count: 128)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1290, file: !1291, line: 286, baseType: !169, size: 64, offset: 1536)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !904, file: !20, line: 107, baseType: !1304, size: 64, offset: 384)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1306)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1291, line: 217, size: 256, elements: !1307)
!1307 = !{!1308, !1312, !1314, !1315}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1306, file: !1291, line: 218, baseType: !1309, size: 128)
!1309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !221, size: 128, elements: !1310)
!1310 = !{!1311}
!1311 = !DISubrange(count: 16)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1306, file: !1291, line: 219, baseType: !1313, size: 64, offset: 128)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1291, line: 15, baseType: !310)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1306, file: !1291, line: 220, baseType: !132, size: 32, offset: 192)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1306, file: !1291, line: 221, baseType: !132, size: 32, offset: 224)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !904, file: !20, line: 109, baseType: !863, size: 64, offset: 448)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !904, file: !20, line: 110, baseType: !854, size: 64, offset: 512)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !904, file: !20, line: 111, baseType: !863, size: 64, offset: 576)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !904, file: !20, line: 112, baseType: !854, size: 64, offset: 640)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !904, file: !20, line: 113, baseType: !1321, size: 64, offset: 704)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!46, !832, !1324}
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1325)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1326)
!1326 = !{!1327}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1325, file: !38, line: 59, baseType: !46, size: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !904, file: !20, line: 114, baseType: !863, size: 64, offset: 768)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !904, file: !20, line: 115, baseType: !312, size: 64, offset: 832)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !904, file: !20, line: 116, baseType: !312, size: 64, offset: 896)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !904, file: !20, line: 118, baseType: !858, size: 64, offset: 960)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !904, file: !20, line: 119, baseType: !854, size: 64, offset: 1024)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !904, file: !20, line: 121, baseType: !1334, size: 64, offset: 1088)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !891, file: !892, line: 88, baseType: !845, size: 64, offset: 384)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !891, file: !892, line: 89, baseType: !863, size: 64, offset: 448)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !891, file: !892, line: 90, baseType: !854, size: 64, offset: 512)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !891, file: !892, line: 91, baseType: !854, size: 64, offset: 576)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !891, file: !892, line: 92, baseType: !854, size: 64, offset: 640)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !891, file: !892, line: 94, baseType: !863, size: 64, offset: 704)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !891, file: !892, line: 95, baseType: !863, size: 64, offset: 768)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !891, file: !892, line: 97, baseType: !1321, size: 64, offset: 832)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !891, file: !892, line: 98, baseType: !863, size: 64, offset: 896)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !891, file: !892, line: 100, baseType: !863, size: 64, offset: 960)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !891, file: !892, line: 102, baseType: !863, size: 64, offset: 1024)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !891, file: !892, line: 103, baseType: !854, size: 64, offset: 1088)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !891, file: !892, line: 105, baseType: !858, size: 64, offset: 1152)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !891, file: !892, line: 107, baseType: !1350, size: 64, offset: 1216)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1352)
!1352 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !892, line: 107, flags: DIFlagFwdDecl)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !891, file: !892, line: 109, baseType: !161, size: 8, offset: 1280)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !173, file: !26, line: 715, baseType: !903, size: 64, offset: 832)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !173, file: !26, line: 717, baseType: !111, size: 64, offset: 896)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !173, file: !26, line: 719, baseType: !111, size: 64, offset: 960)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !173, file: !26, line: 721, baseType: !517, size: 256, offset: 1024)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !173, file: !26, line: 725, baseType: !1359, size: 448, offset: 1280)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1360)
!1360 = !{!1361, !1362, !1363, !1364}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1359, file: !26, line: 518, baseType: !116, size: 128)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1359, file: !26, line: 519, baseType: !116, size: 128, offset: 128)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1359, file: !26, line: 520, baseType: !116, size: 128, offset: 256)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1359, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !173, file: !26, line: 726, baseType: !1366, size: 2496, offset: 1728)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1367)
!1367 = !{!1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1412, !1413, !1414, !1415, !1416, !1417, !1488, !1489, !1490, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1528, !1532}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1366, file: !38, line: 664, baseType: !1324, size: 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1366, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1366, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1366, file: !38, line: 667, baseType: !161, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1366, file: !38, line: 668, baseType: !161, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1366, file: !38, line: 669, baseType: !161, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1366, file: !38, line: 670, baseType: !161, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1366, file: !38, line: 671, baseType: !161, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1366, file: !38, line: 672, baseType: !161, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1366, file: !38, line: 673, baseType: !161, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1366, file: !38, line: 674, baseType: !161, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1366, file: !38, line: 675, baseType: !130, size: 32, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1366, file: !38, line: 676, baseType: !192, size: 32, offset: 96)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1366, file: !38, line: 678, baseType: !116, size: 128, offset: 128)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1366, file: !38, line: 679, baseType: !929, size: 256, offset: 256)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1366, file: !38, line: 680, baseType: !1384, size: 64, offset: 512)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1386, line: 43, size: 1536, elements: !1387)
!1386 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1387 = !{!1388, !1389, !1390, !1391, !1392, !1395, !1396, !1397, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1385, file: !1386, line: 44, baseType: !180, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1385, file: !1386, line: 45, baseType: !46, size: 32, offset: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1385, file: !1386, line: 46, baseType: !116, size: 128, offset: 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1385, file: !1386, line: 47, baseType: !192, size: 32, offset: 256)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1385, file: !1386, line: 48, baseType: !1393, size: 64, offset: 320)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1385, file: !1386, line: 49, baseType: !1170, size: 320, offset: 384)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1385, file: !1386, line: 50, baseType: !310, size: 64, offset: 704)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1385, file: !1386, line: 51, baseType: !1398, size: 64, offset: 768)
!1398 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1399, line: 29, baseType: !435)
!1399 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1385, file: !1386, line: 52, baseType: !1398, size: 64, offset: 832)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1385, file: !1386, line: 53, baseType: !1398, size: 64, offset: 896)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1385, file: !1386, line: 54, baseType: !1398, size: 64, offset: 960)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1385, file: !1386, line: 55, baseType: !1398, size: 64, offset: 1024)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1385, file: !1386, line: 56, baseType: !310, size: 64, offset: 1088)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1385, file: !1386, line: 57, baseType: !310, size: 64, offset: 1152)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1385, file: !1386, line: 58, baseType: !310, size: 64, offset: 1216)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1385, file: !1386, line: 59, baseType: !310, size: 64, offset: 1280)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1385, file: !1386, line: 60, baseType: !310, size: 64, offset: 1344)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1385, file: !1386, line: 61, baseType: !832, size: 64, offset: 1408)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1385, file: !1386, line: 62, baseType: !161, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1385, file: !1386, line: 63, baseType: !161, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1366, file: !38, line: 681, baseType: !161, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1366, file: !38, line: 682, baseType: !161, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1366, file: !38, line: 683, baseType: !161, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1366, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1366, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1366, file: !38, line: 690, baseType: !1418, size: 512, offset: 640)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1419)
!1419 = !{!1420, !1426, !1427, !1432, !1484, !1485, !1486, !1487}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1418, file: !33, line: 119, baseType: !1421, size: 256)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1422, line: 9, size: 256, elements: !1423)
!1422 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1423 = !{!1424, !1425}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1421, file: !1422, line: 10, baseType: !618, size: 192, align: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1421, file: !1422, line: 11, baseType: !1398, size: 64, offset: 192)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1418, file: !33, line: 120, baseType: !1398, size: 64, offset: 256)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1418, file: !33, line: 121, baseType: !1428, size: 64, offset: 320)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!32, !1431}
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1418, file: !33, line: 122, baseType: !1433, size: 64, offset: 384)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1435)
!1435 = !{!1436, !1461, !1462, !1465, !1470, !1471, !1479, !1483}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1434, file: !33, line: 160, baseType: !1437, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1438, size: 64)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1439)
!1439 = !{!1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1438, file: !33, line: 216, baseType: !451, size: 32)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1438, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1438, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1438, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1438, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1438, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1438, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1438, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1438, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1438, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1438, file: !33, line: 227, baseType: !230, size: 16, offset: 192)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1438, file: !33, line: 228, baseType: !230, size: 16, offset: 208)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1438, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1438, file: !33, line: 235, baseType: !1398, size: 64, offset: 256)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1438, file: !33, line: 236, baseType: !1431, size: 64, offset: 320)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1438, file: !33, line: 237, baseType: !1398, size: 64, offset: 384)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1438, file: !33, line: 238, baseType: !1431, size: 64, offset: 448)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1438, file: !33, line: 239, baseType: !1458, size: 4096, align: 512, offset: 512)
!1458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1434, size: 4096, align: 512, elements: !1459)
!1459 = !{!1460}
!1460 = !DISubrange(count: 8)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1434, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1434, file: !33, line: 162, baseType: !1463, size: 32, offset: 96)
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !117, line: 32, baseType: !1464)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !294, line: 96, baseType: !46)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1434, file: !33, line: 163, baseType: !1466, size: 32, offset: 128)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !466, line: 274, baseType: !1467)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !466, line: 274, size: 32, elements: !1468)
!1468 = !{!1469}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1467, file: !466, line: 274, baseType: !465, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1434, file: !33, line: 164, baseType: !1431, size: 64, offset: 192)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1434, file: !33, line: 165, baseType: !1472, size: 128, offset: 256)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1422, line: 14, size: 128, elements: !1473)
!1473 = !{!1474}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1472, file: !1422, line: 15, baseType: !1475, size: 128)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !619, line: 26, size: 128, elements: !1476)
!1476 = !{!1477, !1478}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1475, file: !619, line: 27, baseType: !721, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1475, file: !619, line: 28, baseType: !623, size: 64, offset: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1434, file: !33, line: 166, baseType: !1480, size: 64, offset: 384)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!1398}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1434, file: !33, line: 167, baseType: !1398, size: 64, offset: 448)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1418, file: !33, line: 123, baseType: !220, size: 8, offset: 448)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1418, file: !33, line: 124, baseType: !220, size: 8, offset: 456)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1418, file: !33, line: 125, baseType: !220, size: 8, offset: 464)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1418, file: !33, line: 126, baseType: !220, size: 8, offset: 472)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1366, file: !38, line: 691, baseType: !423, size: 64, offset: 1152)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1366, file: !38, line: 692, baseType: !579, size: 256, offset: 1216)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1366, file: !38, line: 693, baseType: !1491, size: 192, offset: 1472)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1492, line: 41, baseType: !1493)
!1492 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1492, line: 37, size: 192, elements: !1494)
!1494 = !{!1495, !1496}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1493, file: !1492, line: 38, baseType: !192, size: 32)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1493, file: !1492, line: 39, baseType: !116, size: 128, offset: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1366, file: !38, line: 694, baseType: !1393, size: 64, offset: 1664)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1366, file: !38, line: 695, baseType: !212, size: 32, offset: 1728)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1366, file: !38, line: 696, baseType: !212, size: 32, offset: 1760)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1366, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1366, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1366, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1366, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1366, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1366, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1366, file: !38, line: 703, baseType: !161, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1366, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1366, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1366, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1366, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1366, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1366, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1366, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1366, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1366, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1366, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1366, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1366, file: !38, line: 715, baseType: !423, size: 64, offset: 2048)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1366, file: !38, line: 716, baseType: !423, size: 64, offset: 2112)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1366, file: !38, line: 717, baseType: !423, size: 64, offset: 2176)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1366, file: !38, line: 718, baseType: !423, size: 64, offset: 2240)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1366, file: !38, line: 720, baseType: !1523, size: 64, offset: 2304)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1525)
!1525 = !{!1526, !1527}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1524, file: !38, line: 633, baseType: !192, size: 32)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1524, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1366, file: !38, line: 721, baseType: !1529, size: 64, offset: 2368)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{null, !832, !496}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1366, file: !38, line: 722, baseType: !1533, size: 64, offset: 2432)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !38, line: 722, flags: DIFlagFwdDecl)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !173, file: !26, line: 727, baseType: !1536, size: 64, offset: 4224)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1538)
!1538 = !{!1539, !1540, !1541, !1545, !1546, !1547}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1537, file: !38, line: 743, baseType: !860, size: 1472)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1537, file: !38, line: 744, baseType: !863, size: 64, offset: 1472)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1537, file: !38, line: 745, baseType: !1542, size: 64, offset: 1536)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{null, !832, !161}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1537, file: !38, line: 746, baseType: !863, size: 64, offset: 1600)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1537, file: !38, line: 747, baseType: !854, size: 64, offset: 1664)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1537, file: !38, line: 748, baseType: !854, size: 64, offset: 1728)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !173, file: !26, line: 736, baseType: !1549, size: 128, offset: 4288)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1550)
!1550 = !{!1551, !1555}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1549, file: !26, line: 531, baseType: !1552, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1554, line: 13, flags: DIFlagFwdDecl)
!1554 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1549, file: !26, line: 532, baseType: !1556, size: 64, offset: 64)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !173, file: !26, line: 738, baseType: !1559, size: 64, offset: 4416)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1561)
!1561 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !173, file: !26, line: 740, baseType: !1563, size: 64, offset: 4480)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !173, file: !26, line: 741, baseType: !423, size: 64, offset: 4544)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !173, file: !26, line: 746, baseType: !423, size: 64, offset: 4608)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !173, file: !26, line: 747, baseType: !1567, size: 64, offset: 4672)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1569)
!1569 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !173, file: !26, line: 749, baseType: !1571, size: 64, offset: 4736)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1573)
!1573 = !{!1574, !1575, !1576}
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1572, file: !26, line: 433, baseType: !7, size: 32)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1572, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1572, file: !26, line: 435, baseType: !310, size: 64, offset: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !173, file: !26, line: 751, baseType: !116, size: 128, offset: 4800)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !173, file: !26, line: 762, baseType: !1579, size: 64, offset: 4928)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !173, file: !26, line: 770, baseType: !1582, offset: 4992)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1583, line: 5, elements: !396)
!1583 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !173, file: !26, line: 772, baseType: !1585, size: 64, offset: 4992)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1587, line: 18, flags: DIFlagFwdDecl)
!1587 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !173, file: !26, line: 773, baseType: !143, size: 64, offset: 5056)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !173, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !173, file: !26, line: 778, baseType: !1591, size: 32, offset: 5152)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !117, line: 21, baseType: !1592)
!1592 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !117, line: 18, baseType: !130)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !173, file: !26, line: 779, baseType: !130, size: 32, offset: 5184)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !173, file: !26, line: 781, baseType: !192, size: 32, offset: 5216)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !173, file: !26, line: 782, baseType: !116, size: 128, offset: 5248)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !173, file: !26, line: 784, baseType: !1597, size: 64, offset: 5376)
!1597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1598, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1599)
!1599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1600, line: 52, size: 768, elements: !1601)
!1600 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1601 = !{!1602, !1603, !1604, !1605, !1606, !1610, !1614, !1615, !1616, !1617, !1621, !1625}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1599, file: !1600, line: 53, baseType: !180, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1599, file: !1600, line: 55, baseType: !312, size: 64, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1599, file: !1600, line: 56, baseType: !312, size: 64, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1599, file: !1600, line: 58, baseType: !845, size: 64, offset: 192)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1599, file: !1600, line: 59, baseType: !1607, size: 64, offset: 256)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!260, !171, !852}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1599, file: !1600, line: 61, baseType: !1611, size: 64, offset: 320)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{null, !1597}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1599, file: !1600, line: 62, baseType: !854, size: 64, offset: 384)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1599, file: !1600, line: 64, baseType: !863, size: 64, offset: 448)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1599, file: !1600, line: 66, baseType: !651, size: 64, offset: 512)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1599, file: !1600, line: 67, baseType: !1618, size: 64, offset: 576)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!169, !171}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1599, file: !1600, line: 69, baseType: !1622, size: 64, offset: 640)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{null, !171, !686, !694}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1599, file: !1600, line: 71, baseType: !858, size: 64, offset: 704)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !173, file: !26, line: 785, baseType: !312, size: 64, offset: 5440)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !173, file: !26, line: 787, baseType: !854, size: 64, offset: 5504)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !173, file: !26, line: 788, baseType: !1629, size: 64, offset: 5568)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !173, file: !26, line: 789, baseType: !1632, size: 64, offset: 5632)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !173, file: !26, line: 791, baseType: !1635, size: 64, offset: 5696)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1637)
!1637 = !{!1638, !1639, !1640, !1641, !1642}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1636, file: !26, line: 598, baseType: !53, size: 32)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1636, file: !26, line: 599, baseType: !62, size: 32, offset: 32)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1636, file: !26, line: 600, baseType: !67, size: 32, offset: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1636, file: !26, line: 601, baseType: !161, size: 8, offset: 96)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1636, file: !26, line: 602, baseType: !161, size: 8, offset: 104)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !173, file: !26, line: 793, baseType: !72, size: 32, offset: 5760)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !173, file: !26, line: 795, baseType: !161, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !173, file: !26, line: 796, baseType: !161, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !173, file: !26, line: 797, baseType: !161, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !173, file: !26, line: 798, baseType: !161, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !173, file: !26, line: 799, baseType: !161, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !147, file: !140, line: 131, baseType: !158, size: 64, offset: 256)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !147, file: !140, line: 133, baseType: !1651, size: 64, offset: 320)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!78, !163}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !147, file: !140, line: 134, baseType: !1655, size: 64, offset: 384)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!161, !163, !180}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !147, file: !140, line: 136, baseType: !1659, size: 64, offset: 448)
!1659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1660, size: 64)
!1660 = !DISubroutineType(types: !1661)
!1661 = !{!46, !163, !180, !7, !111, !307}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !147, file: !140, line: 141, baseType: !1663, size: 64, offset: 512)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!46, !163, !180, !1253, !307}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !147, file: !140, line: 144, baseType: !1667, size: 64, offset: 576)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{!180, !163}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !147, file: !140, line: 145, baseType: !1667, size: 64, offset: 640)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !147, file: !140, line: 146, baseType: !1672, size: 64, offset: 704)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!143, !163}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !147, file: !140, line: 148, baseType: !1676, size: 64, offset: 768)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!143, !163, !143}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !147, file: !140, line: 151, baseType: !1680, size: 64, offset: 832)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!143, !163, !180}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !147, file: !140, line: 153, baseType: !1684, size: 64, offset: 896)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!46, !163, !180, !180, !7, !7, !1687}
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !140, line: 94, size: 640, elements: !1689)
!1689 = !{!1690, !1691, !1692}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1688, file: !140, line: 95, baseType: !143, size: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1688, file: !140, line: 96, baseType: !7, size: 32, offset: 64)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1688, file: !140, line: 97, baseType: !1693, size: 512, offset: 128)
!1693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !423, size: 512, elements: !1459)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !147, file: !140, line: 158, baseType: !1676, size: 64, offset: 960)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !147, file: !140, line: 161, baseType: !1672, size: 64, offset: 1024)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !147, file: !140, line: 163, baseType: !150, size: 64, offset: 1088)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !147, file: !140, line: 164, baseType: !1698, size: 64, offset: 1152)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!46, !163, !1701}
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !140, line: 73, size: 128, elements: !1703)
!1703 = !{!1704, !1705, !1706}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1702, file: !140, line: 74, baseType: !7, size: 32)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1702, file: !140, line: 75, baseType: !7, size: 32, offset: 32)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1702, file: !140, line: 76, baseType: !163, size: 64, offset: 64)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !147, file: !140, line: 166, baseType: !1708, size: 64, offset: 1216)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!111, !143, !46}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !147, file: !140, line: 167, baseType: !1712, size: 64, offset: 1280)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!46, !163, !7}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !147, file: !140, line: 168, baseType: !1716, size: 64, offset: 1344)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!46, !143}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !139, file: !140, line: 44, baseType: !832, size: 64, offset: 128)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !139, file: !140, line: 45, baseType: !116, size: 128, offset: 192)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !139, file: !140, line: 46, baseType: !116, size: 128, offset: 320)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !139, file: !140, line: 47, baseType: !220, size: 8, offset: 448)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !127, file: !85, line: 372, baseType: !116, size: 128, offset: 640)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !127, file: !85, line: 373, baseType: !116, size: 128, offset: 768)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !127, file: !85, line: 374, baseType: !1726, size: 32, offset: 896)
!1726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !85, line: 181, size: 32, elements: !1727)
!1727 = !{!1728, !1729, !1730, !1731, !1732, !1733}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !1726, file: !85, line: 182, baseType: !130, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1726, file: !85, line: 183, baseType: !130, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !1726, file: !85, line: 184, baseType: !130, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !1726, file: !85, line: 185, baseType: !130, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !1726, file: !85, line: 186, baseType: !130, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1726, file: !85, line: 187, baseType: !130, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !127, file: !85, line: 375, baseType: !1735, size: 32, offset: 928)
!1735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !85, line: 192, size: 32, elements: !1736)
!1736 = !{!1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1745, !1746, !1747, !1748, !1749, !1750, !1751}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !1735, file: !85, line: 193, baseType: !130, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1735, file: !85, line: 194, baseType: !130, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !1735, file: !85, line: 195, baseType: !130, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !1735, file: !85, line: 196, baseType: !130, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !1735, file: !85, line: 197, baseType: !130, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !1735, file: !85, line: 198, baseType: !130, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1735, file: !85, line: 199, baseType: !130, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !1735, file: !85, line: 200, baseType: !130, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !1735, file: !85, line: 201, baseType: !130, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !1735, file: !85, line: 202, baseType: !130, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !1735, file: !85, line: 203, baseType: !130, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !1735, file: !85, line: 204, baseType: !130, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !1735, file: !85, line: 205, baseType: !130, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "honor_deps", scope: !1735, file: !85, line: 206, baseType: !130, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1735, file: !85, line: 207, baseType: !130, size: 18, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !127, file: !85, line: 376, baseType: !1753, size: 960, offset: 960)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !85, line: 238, size: 960, elements: !1754)
!1754 = !{!1755, !1758, !1759, !1767, !1769, !1770, !1771, !1776, !1781}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !1753, file: !85, line: 239, baseType: !1756, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !85, line: 220, baseType: !1757)
!1757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 64, elements: !1459)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "instance_no", scope: !1753, file: !85, line: 240, baseType: !46, size: 32, offset: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1753, file: !85, line: 241, baseType: !1760, size: 32, offset: 96)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !85, line: 230, size: 32, elements: !1761)
!1761 = !{!1762, !1763, !1764, !1765, !1766}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !1760, file: !85, line: 231, baseType: !130, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !1760, file: !85, line: 232, baseType: !130, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !1760, file: !85, line: 233, baseType: !130, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "backlight", scope: !1760, file: !85, line: 234, baseType: !130, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1760, file: !85, line: 235, baseType: !130, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !1753, file: !85, line: 242, baseType: !1768, size: 64, offset: 128)
!1768 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !85, line: 221, baseType: !423)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !1753, file: !85, line: 243, baseType: !260, size: 64, offset: 192)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1753, file: !85, line: 244, baseType: !116, size: 128, offset: 256)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !1753, file: !85, line: 245, baseType: !1772, size: 320, offset: 384)
!1772 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !85, line: 222, baseType: !1773)
!1773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 320, elements: !1774)
!1774 = !{!1775}
!1775 = !DISubrange(count: 40)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !1753, file: !85, line: 246, baseType: !1777, size: 160, offset: 704)
!1777 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !85, line: 223, baseType: !1778)
!1778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 160, elements: !1779)
!1779 = !{!1780}
!1780 = !DISubrange(count: 20)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !1753, file: !85, line: 247, baseType: !1782, size: 64, offset: 896)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !137, line: 908, size: 192, elements: !1784)
!1784 = !{!1785, !1787, !1792, !1798, !1805, !1811, !1817, !1825}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1783, file: !137, line: 909, baseType: !1786, size: 32)
!1786 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !137, line: 644, baseType: !130)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1783, file: !137, line: 913, baseType: !1788, size: 128)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1783, file: !137, line: 910, size: 128, elements: !1789)
!1789 = !{!1790, !1791}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1788, file: !137, line: 911, baseType: !1786, size: 32)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1788, file: !137, line: 912, baseType: !423, size: 64, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1783, file: !137, line: 919, baseType: !1793, size: 128)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1783, file: !137, line: 915, size: 128, elements: !1794)
!1794 = !{!1795, !1796, !1797}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1793, file: !137, line: 916, baseType: !1786, size: 32)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1793, file: !137, line: 917, baseType: !130, size: 32, offset: 32)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1793, file: !137, line: 918, baseType: !260, size: 64, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1783, file: !137, line: 925, baseType: !1799, size: 128)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1783, file: !137, line: 921, size: 128, elements: !1800)
!1800 = !{!1801, !1802, !1803}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1799, file: !137, line: 922, baseType: !1786, size: 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1799, file: !137, line: 923, baseType: !130, size: 32, offset: 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1799, file: !137, line: 924, baseType: !1804, size: 64, offset: 64)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !1783, file: !137, line: 931, baseType: !1806, size: 128)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1783, file: !137, line: 927, size: 128, elements: !1807)
!1807 = !{!1808, !1809, !1810}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1806, file: !137, line: 928, baseType: !1786, size: 32)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1806, file: !137, line: 929, baseType: !130, size: 32, offset: 32)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1806, file: !137, line: 930, baseType: !1782, size: 64, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !1783, file: !137, line: 937, baseType: !1812, size: 128)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1783, file: !137, line: 933, size: 128, elements: !1813)
!1813 = !{!1814, !1815, !1816}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1812, file: !137, line: 934, baseType: !1786, size: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !1812, file: !137, line: 935, baseType: !1786, size: 32, offset: 32)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !1812, file: !137, line: 936, baseType: !136, size: 64, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !1783, file: !137, line: 944, baseType: !1818, size: 192)
!1818 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1783, file: !137, line: 939, size: 192, elements: !1819)
!1819 = !{!1820, !1821, !1822, !1824}
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1818, file: !137, line: 940, baseType: !1786, size: 32)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !1818, file: !137, line: 941, baseType: !130, size: 32, offset: 32)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !1818, file: !137, line: 942, baseType: !1823, size: 64, offset: 64)
!1823 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !137, line: 128, baseType: !423)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !1818, file: !137, line: 943, baseType: !130, size: 32, offset: 128)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !1783, file: !137, line: 950, baseType: !1826, size: 96)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1783, file: !137, line: 946, size: 96, elements: !1827)
!1827 = !{!1828, !1829, !1830}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1826, file: !137, line: 947, baseType: !1786, size: 32)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !1826, file: !137, line: 948, baseType: !130, size: 32, offset: 32)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !1826, file: !137, line: 949, baseType: !130, size: 32, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !127, file: !85, line: 377, baseType: !1832, size: 1408, offset: 1920)
!1832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !85, line: 280, size: 1408, elements: !1833)
!1833 = !{!1834, !1835, !1845, !1860}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1832, file: !85, line: 281, baseType: !46, size: 32)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1832, file: !85, line: 282, baseType: !1836, size: 32, offset: 32)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !85, line: 259, size: 32, elements: !1837)
!1837 = !{!1838, !1839, !1840, !1841, !1842, !1843, !1844}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !1836, file: !85, line: 260, baseType: !130, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !1836, file: !85, line: 261, baseType: !130, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !1836, file: !85, line: 262, baseType: !130, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !1836, file: !85, line: 263, baseType: !130, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !1836, file: !85, line: 264, baseType: !130, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !1836, file: !85, line: 265, baseType: !130, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1836, file: !85, line: 266, baseType: !130, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1832, file: !85, line: 283, baseType: !1846, size: 1280, offset: 64)
!1846 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1847, size: 1280, elements: !1858)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !85, line: 269, size: 256, elements: !1848)
!1848 = !{!1849, !1855, !1856, !1857}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1847, file: !85, line: 274, baseType: !1850, size: 8)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1847, file: !85, line: 270, size: 8, elements: !1851)
!1851 = !{!1852, !1853, !1854}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1850, file: !85, line: 271, baseType: !220, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !1850, file: !85, line: 272, baseType: !220, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1850, file: !85, line: 273, baseType: !220, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1847, file: !85, line: 275, baseType: !46, size: 32, offset: 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1847, file: !85, line: 276, baseType: !46, size: 32, offset: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !1847, file: !85, line: 277, baseType: !116, size: 128, offset: 128)
!1858 = !{!1859}
!1859 = !DISubrange(count: 5)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "state_for_enumeration", scope: !1832, file: !85, line: 284, baseType: !220, size: 8, offset: 1344)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !127, file: !85, line: 378, baseType: !1862, size: 640, offset: 3328)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !85, line: 330, size: 640, elements: !1863)
!1863 = !{!1864, !1865, !1866, !1867, !1868, !1873, !1882, !1883, !1884}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !1862, file: !85, line: 331, baseType: !136, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !1862, file: !85, line: 332, baseType: !423, size: 64, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !1862, file: !85, line: 333, baseType: !423, size: 64, offset: 128)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !1862, file: !85, line: 334, baseType: !116, size: 128, offset: 192)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1862, file: !85, line: 335, baseType: !1869, size: 8, offset: 320)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !85, line: 320, size: 8, elements: !1870)
!1870 = !{!1871, !1872}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1869, file: !85, line: 321, baseType: !220, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !1869, file: !85, line: 322, baseType: !220, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1862, file: !85, line: 336, baseType: !1874, size: 128, offset: 384)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !85, line: 325, size: 128, elements: !1875)
!1875 = !{!1876, !1881}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1874, file: !85, line: 326, baseType: !1877, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DISubroutineType(types: !1879)
!1879 = !{null, !1880}
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1874, file: !85, line: 327, baseType: !832, size: 64, offset: 64)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !1862, file: !85, line: 337, baseType: !1384, size: 64, offset: 512)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !1862, file: !85, line: 338, baseType: !46, size: 32, offset: 576)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !1862, file: !85, line: 339, baseType: !46, size: 32, offset: 608)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !127, file: !85, line: 379, baseType: !1886, size: 192, offset: 3968)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !85, line: 312, size: 192, elements: !1887)
!1887 = !{!1888, !1889, !1893, !1894}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1886, file: !85, line: 313, baseType: !46, size: 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1886, file: !85, line: 314, baseType: !1890, size: 8, offset: 32)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !85, line: 298, size: 8, elements: !1891)
!1891 = !{!1892}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1890, file: !85, line: 299, baseType: !220, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !1886, file: !85, line: 315, baseType: !46, size: 32, offset: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1886, file: !85, line: 316, baseType: !1895, size: 64, offset: 128)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !85, line: 302, size: 64, elements: !1897)
!1897 = !{!1898, !1903, !1904, !1905}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1896, file: !85, line: 306, baseType: !1899, size: 8)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1896, file: !85, line: 303, size: 8, elements: !1900)
!1900 = !{!1901, !1902}
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1899, file: !85, line: 304, baseType: !220, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1899, file: !85, line: 305, baseType: !220, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1896, file: !85, line: 307, baseType: !220, size: 8, offset: 8)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !1896, file: !85, line: 308, baseType: !220, size: 8, offset: 16)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1896, file: !85, line: 309, baseType: !46, size: 32, offset: 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !127, file: !85, line: 380, baseType: !1907, size: 64, offset: 4160)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !85, line: 212, size: 64, elements: !1908)
!1908 = !{!1909}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1907, file: !85, line: 213, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !85, line: 86, flags: DIFlagFwdDecl)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !127, file: !85, line: 381, baseType: !1913, size: 384, offset: 4224)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !85, line: 357, size: 384, elements: !1914)
!1914 = !{!1915, !1918, !1919, !1920}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1913, file: !85, line: 358, baseType: !1916, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1783)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1913, file: !85, line: 359, baseType: !116, size: 128, offset: 64)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !1913, file: !85, line: 360, baseType: !1916, size: 64, offset: 192)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !1913, file: !85, line: 361, baseType: !116, size: 128, offset: 256)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !127, file: !85, line: 382, baseType: !1922, size: 64, offset: 4608)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !85, line: 124, size: 1216, elements: !1924)
!1924 = !{!1925, !1926, !1927, !1932, !1937, !1941, !1942, !1943}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1923, file: !85, line: 125, baseType: !1304, size: 64)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !1923, file: !85, line: 126, baseType: !116, size: 128, offset: 64)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1923, file: !85, line: 127, baseType: !1928, size: 64, offset: 192)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!161, !180, !1931}
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1304, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !1923, file: !85, line: 128, baseType: !1933, size: 64, offset: 256)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!46, !1936, !1304}
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1923, file: !85, line: 129, baseType: !1938, size: 64, offset: 320)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{null, !1936}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !1923, file: !85, line: 130, baseType: !854, size: 64, offset: 384)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !1923, file: !85, line: 131, baseType: !854, size: 64, offset: 448)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !1923, file: !85, line: 132, baseType: !1944, size: 704, offset: 512)
!1944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !85, line: 110, size: 704, elements: !1945)
!1945 = !{!1946, !1947, !1951, !1952, !1953}
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1944, file: !85, line: 111, baseType: !176, size: 512)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !1944, file: !85, line: 112, baseType: !1948, size: 64, offset: 512)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{!46, !1936}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !1944, file: !85, line: 113, baseType: !1938, size: 64, offset: 576)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1944, file: !85, line: 114, baseType: !161, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !1944, file: !85, line: 115, baseType: !161, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !127, file: !85, line: 383, baseType: !1955, size: 64, offset: 4672)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !85, line: 140, size: 256, elements: !1957)
!1957 = !{!1958, !1959, !1963, !1967}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !1956, file: !85, line: 141, baseType: !1936, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !1956, file: !85, line: 142, baseType: !1960, size: 64, offset: 64)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!46, !1936, !130}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1956, file: !85, line: 143, baseType: !1964, size: 64, offset: 128)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DISubroutineType(types: !1966)
!1966 = !{null, !1936, !130}
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1956, file: !85, line: 144, baseType: !1938, size: 64, offset: 192)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !127, file: !85, line: 384, baseType: !1969, size: 64, offset: 4736)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1971)
!1971 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !85, line: 364, flags: DIFlagFwdDecl)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !127, file: !85, line: 385, baseType: !111, size: 64, offset: 4800)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !127, file: !85, line: 386, baseType: !173, size: 5824, offset: 4864)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !127, file: !85, line: 387, baseType: !7, size: 32, offset: 10688)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !127, file: !85, line: 388, baseType: !7, size: 32, offset: 10720)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !127, file: !85, line: 389, baseType: !116, size: 128, offset: 10752)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !127, file: !85, line: 390, baseType: !517, size: 256, offset: 10880)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !127, file: !85, line: 391, baseType: !1938, size: 64, offset: 11136)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !124, file: !3, line: 51, baseType: !116, size: 128, offset: 11200)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !124, file: !3, line: 52, baseType: !130, size: 32, offset: 11328)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "order", scope: !124, file: !3, line: 53, baseType: !130, size: 32, offset: 11360)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "ref_count", scope: !124, file: !3, line: 54, baseType: !7, size: 32, offset: 11392)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !124, file: !3, line: 55, baseType: !220, size: 8, offset: 11424)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "resource_lock", scope: !124, file: !3, line: 56, baseType: !517, size: 256, offset: 11456)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "dependents", scope: !124, file: !3, line: 57, baseType: !116, size: 128, offset: 11712)
!1986 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !137, line: 421, baseType: !130)
!1987 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !117, line: 154, baseType: !7)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !120)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_power_dependent_device", file: !3, line: 44, size: 192, elements: !1992)
!1992 = !{!1993, !1994}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1991, file: !3, line: 45, baseType: !832, size: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1991, file: !3, line: 46, baseType: !116, size: 128, offset: 64)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1989)
!1997 = !{!1998, !2001, !2004, !2009, !2011, !2013, !2018, !2020, !2041, !2046, !2051, !2053, !2055, !0, !2057, !2062, !2067, !2069, !2071, !2076, !2079, !2081, !2083, !2088, !2091, !2094, !2108, !2110, !2112, !2114}
!1998 = !DIGlobalVariableExpression(var: !1999, expr: !DIExpression())
!1999 = distinct !DIGlobalVariable(scope: null, file: !3, line: 685, type: !2000, isLocal: true, isDefinition: true)
!2000 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 40, elements: !1858)
!2001 = !DIGlobalVariableExpression(var: !2002, expr: !DIExpression())
!2002 = distinct !DIGlobalVariable(scope: null, file: !3, line: 689, type: !2003, isLocal: true, isDefinition: true)
!2003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 24, elements: !261)
!2004 = !DIGlobalVariableExpression(var: !2005, expr: !DIExpression())
!2005 = distinct !DIGlobalVariable(scope: null, file: !3, line: 689, type: !2006, isLocal: true, isDefinition: true)
!2006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 184, elements: !2007)
!2007 = !{!2008}
!2008 = !DISubrange(count: 23)
!2009 = !DIGlobalVariableExpression(var: !2010, expr: !DIExpression())
!2010 = distinct !DIGlobalVariable(scope: null, file: !3, line: 695, type: !2000, isLocal: true, isDefinition: true)
!2011 = !DIGlobalVariableExpression(var: !2012, expr: !DIExpression())
!2012 = distinct !DIGlobalVariable(scope: null, file: !3, line: 697, type: !2006, isLocal: true, isDefinition: true)
!2013 = !DIGlobalVariableExpression(var: !2014, expr: !DIExpression())
!2014 = distinct !DIGlobalVariable(scope: null, file: !3, line: 728, type: !2015, isLocal: true, isDefinition: true)
!2015 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 312, elements: !2016)
!2016 = !{!2017}
!2017 = !DISubrange(count: 39)
!2018 = !DIGlobalVariableExpression(var: !2019, expr: !DIExpression())
!2019 = distinct !DIGlobalVariable(scope: null, file: !3, line: 793, type: !1773, isLocal: true, isDefinition: true)
!2020 = !DIGlobalVariableExpression(var: !2021, expr: !DIExpression())
!2021 = distinct !DIGlobalVariable(name: "__key", scope: !2022, file: !3, line: 950, type: !2040, isLocal: true, isDefinition: true)
!2022 = distinct !DISubprogram(name: "acpi_add_power_resource", scope: !3, file: !3, line: 930, type: !2023, scopeLine: 931, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2025)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!1936, !136}
!2025 = !{!2026, !2027, !2028, !2029, !2030, !2036, !2037, !2038, !2039}
!2026 = !DILocalVariable(name: "handle", arg: 1, scope: !2022, file: !3, line: 930, type: !136)
!2027 = !DILocalVariable(name: "device", scope: !2022, file: !3, line: 932, type: !1936)
!2028 = !DILocalVariable(name: "resource", scope: !2022, file: !3, line: 933, type: !123)
!2029 = !DILocalVariable(name: "acpi_object", scope: !2022, file: !3, line: 934, type: !1783)
!2030 = !DILocalVariable(name: "buffer", scope: !2022, file: !3, line: 935, type: !2031)
!2031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !137, line: 978, size: 128, elements: !2032)
!2032 = !{!2033, !2035}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2031, file: !137, line: 979, baseType: !2034, size: 64)
!2034 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !137, line: 127, baseType: !423)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2031, file: !137, line: 980, baseType: !111, size: 64, offset: 64)
!2036 = !DILocalVariable(name: "status", scope: !2022, file: !3, line: 936, type: !1986)
!2037 = !DILocalVariable(name: "state_dummy", scope: !2022, file: !3, line: 937, type: !220)
!2038 = !DILocalVariable(name: "result", scope: !2022, file: !3, line: 938, type: !46)
!2039 = !DILabel(scope: !2022, name: "err", file: !3, line: 988)
!2040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1205, line: 206, elements: !396)
!2041 = !DIGlobalVariableExpression(var: !2042, expr: !DIExpression())
!2042 = distinct !DIGlobalVariable(scope: null, file: !3, line: 950, type: !2043, isLocal: true, isDefinition: true)
!2043 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 200, elements: !2044)
!2044 = !{!2045}
!2045 = !DISubrange(count: 25)
!2046 = !DIGlobalVariableExpression(var: !2047, expr: !DIExpression())
!2047 = distinct !DIGlobalVariable(scope: null, file: !3, line: 953, type: !2048, isLocal: true, isDefinition: true)
!2048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 120, elements: !2049)
!2049 = !{!2050}
!2050 = !DISubrange(count: 15)
!2051 = !DIGlobalVariableExpression(var: !2052, expr: !DIExpression())
!2052 = distinct !DIGlobalVariable(scope: null, file: !3, line: 954, type: !2048, isLocal: true, isDefinition: true)
!2053 = !DIGlobalVariableExpression(var: !2054, expr: !DIExpression())
!2054 = distinct !DIGlobalVariable(scope: null, file: !3, line: 971, type: !1778, isLocal: true, isDefinition: true)
!2055 = !DIGlobalVariableExpression(var: !2056, expr: !DIExpression())
!2056 = distinct !DIGlobalVariable(scope: null, file: !3, line: 532, type: !2006, isLocal: true, isDefinition: true)
!2057 = !DIGlobalVariableExpression(var: !2058, expr: !DIExpression())
!2058 = distinct !DIGlobalVariable(name: "attrs", scope: !2, file: !3, line: 508, type: !2059, isLocal: true, isDefinition: true)
!2059 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 64, elements: !2060)
!2060 = !{!2061}
!2061 = !DISubrange(count: 1)
!2062 = !DIGlobalVariableExpression(var: !2063, expr: !DIExpression())
!2063 = distinct !DIGlobalVariable(scope: null, file: !3, line: 514, type: !2064, isLocal: true, isDefinition: true)
!2064 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 152, elements: !2065)
!2065 = !{!2066}
!2066 = !DISubrange(count: 19)
!2067 = !DIGlobalVariableExpression(var: !2068, expr: !DIExpression())
!2068 = distinct !DIGlobalVariable(scope: null, file: !3, line: 518, type: !2064, isLocal: true, isDefinition: true)
!2069 = !DIGlobalVariableExpression(var: !2070, expr: !DIExpression())
!2070 = distinct !DIGlobalVariable(scope: null, file: !3, line: 522, type: !2064, isLocal: true, isDefinition: true)
!2071 = !DIGlobalVariableExpression(var: !2072, expr: !DIExpression())
!2072 = distinct !DIGlobalVariable(scope: null, file: !3, line: 526, type: !2073, isLocal: true, isDefinition: true)
!2073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 176, elements: !2074)
!2074 = !{!2075}
!2075 = !DISubrange(count: 22)
!2076 = !DIGlobalVariableExpression(var: !2077, expr: !DIExpression())
!2077 = distinct !DIGlobalVariable(name: "attr_groups", scope: !2, file: !3, line: 512, type: !2078, isLocal: true, isDefinition: true)
!2078 = !DICompositeType(tag: DW_TAG_array_type, baseType: !314, size: 1280, elements: !498)
!2079 = !DIGlobalVariableExpression(var: !2080, expr: !DIExpression())
!2080 = distinct !DIGlobalVariable(scope: null, file: !3, line: 193, type: !2000, isLocal: true, isDefinition: true)
!2081 = !DIGlobalVariableExpression(var: !2082, expr: !DIExpression())
!2082 = distinct !DIGlobalVariable(scope: null, file: !3, line: 426, type: !2000, isLocal: true, isDefinition: true)
!2083 = !DIGlobalVariableExpression(var: !2084, expr: !DIExpression())
!2084 = distinct !DIGlobalVariable(scope: null, file: !101, line: 480, type: !2085, isLocal: true, isDefinition: true)
!2085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 168, elements: !2086)
!2086 = !{!2087}
!2087 = !DISubrange(count: 21)
!2088 = !DIGlobalVariableExpression(var: !2089, expr: !DIExpression())
!2089 = distinct !DIGlobalVariable(scope: null, file: !3, line: 368, type: !2090, isLocal: true, isDefinition: true)
!2090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 32, elements: !498)
!2091 = !DIGlobalVariableExpression(var: !2092, expr: !DIExpression())
!2092 = distinct !DIGlobalVariable(scope: null, file: !3, line: 904, type: !2093, isLocal: true, isDefinition: true)
!2093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 128, elements: !1310)
!2094 = !DIGlobalVariableExpression(var: !2095, expr: !DIExpression())
!2095 = distinct !DIGlobalVariable(name: "dev_attr_resource_in_use", scope: !2, file: !3, line: 904, type: !2096, isLocal: true, isDefinition: true)
!2096 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !26, line: 106, size: 256, elements: !2097)
!2097 = !{!2098, !2099, !2104}
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2096, file: !26, line: 107, baseType: !298, size: 128)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2096, file: !26, line: 108, baseType: !2100, size: 64, offset: 128)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{!292, !832, !2103, !260}
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2096, file: !26, line: 110, baseType: !2105, size: 64, offset: 192)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DISubroutineType(types: !2107)
!2107 = !{!292, !832, !2103, !180, !307}
!2108 = !DIGlobalVariableExpression(var: !2109, expr: !DIExpression())
!2109 = distinct !DIGlobalVariable(scope: null, file: !3, line: 902, type: !2090, isLocal: true, isDefinition: true)
!2110 = !DIGlobalVariableExpression(var: !2111, expr: !DIExpression())
!2111 = distinct !DIGlobalVariable(name: "power_resource_list_lock", scope: !2, file: !3, line: 66, type: !517, isLocal: true, isDefinition: true)
!2112 = !DIGlobalVariableExpression(var: !2113, expr: !DIExpression())
!2113 = distinct !DIGlobalVariable(name: "acpi_power_resource_list", scope: !2, file: !3, line: 65, type: !116, isLocal: true, isDefinition: true)
!2114 = !DIGlobalVariableExpression(var: !2115, expr: !DIExpression())
!2115 = distinct !DIGlobalVariable(name: "dmi_leave_unused_power_resources_on", scope: !2, file: !3, line: 1026, type: !2116, isLocal: true, isDefinition: true)
!2116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2117, size: 5504, elements: !1060)
!2117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2118)
!2118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_system_id", file: !1291, line: 587, size: 2752, elements: !2119)
!2119 = !{!2120, !2125, !2126, !2136}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "callback", scope: !2118, file: !1291, line: 588, baseType: !2121, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!46, !2124}
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "ident", scope: !2118, file: !1291, line: 589, baseType: !180, size: 64, offset: 64)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "matches", scope: !2118, file: !1291, line: 590, baseType: !2127, size: 2560, offset: 128)
!2127 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2128, size: 2560, elements: !498)
!2128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dmi_strmatch", file: !1291, line: 581, size: 640, elements: !2129)
!2129 = !{!2130, !2131, !2132}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "slot", scope: !2128, file: !1291, line: 582, baseType: !222, size: 7, flags: DIFlagBitField, extraData: i64 0)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "exact_match", scope: !2128, file: !1291, line: 583, baseType: !222, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "substr", scope: !2128, file: !1291, line: 584, baseType: !2133, size: 632, offset: 8)
!2133 = !DICompositeType(tag: DW_TAG_array_type, baseType: !182, size: 632, elements: !2134)
!2134 = !{!2135}
!2135 = !DISubrange(count: 79)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2118, file: !1291, line: 591, baseType: !111, size: 64, offset: 2688)
!2137 = !{i32 7, !"Dwarf Version", i32 5}
!2138 = !{i32 2, !"Debug Info Version", i32 3}
!2139 = !{i32 1, !"wchar_size", i32 2}
!2140 = !{i32 8, !"cf-protection-branch", i32 1}
!2141 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2142 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2143 = !{i32 1, !"Code Model", i32 2}
!2144 = !{i32 1, !"override-stack-alignment", i32 8}
!2145 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2146 = distinct !DISubprogram(name: "acpi_power_resources_list_free", scope: !3, file: !3, line: 120, type: !2147, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2149)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{null, !120}
!2149 = !{!2150, !2151, !2152, !2153, !2156, !2158}
!2150 = !DILocalVariable(name: "list", arg: 1, scope: !2146, file: !3, line: 120, type: !120)
!2151 = !DILocalVariable(name: "entry", scope: !2146, file: !3, line: 122, type: !112)
!2152 = !DILocalVariable(name: "e", scope: !2146, file: !3, line: 122, type: !112)
!2153 = !DILocalVariable(name: "__mptr", scope: !2154, file: !3, line: 124, type: !111)
!2154 = distinct !DILexicalBlock(scope: !2155, file: !3, line: 124, column: 2)
!2155 = distinct !DILexicalBlock(scope: !2146, file: !3, line: 124, column: 2)
!2156 = !DILocalVariable(name: "__mptr", scope: !2157, file: !3, line: 124, type: !111)
!2157 = distinct !DILexicalBlock(scope: !2155, file: !3, line: 124, column: 2)
!2158 = !DILocalVariable(name: "__mptr", scope: !2159, file: !3, line: 124, type: !111)
!2159 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 124, column: 2)
!2160 = distinct !DILexicalBlock(scope: !2155, file: !3, line: 124, column: 2)
!2161 = !DILocation(line: 120, column: 55, scope: !2146)
!2162 = !DILocation(line: 122, column: 2, scope: !2146)
!2163 = !DILocation(line: 122, column: 36, scope: !2146)
!2164 = !DILocation(line: 122, column: 44, scope: !2146)
!2165 = !DILocation(line: 124, column: 2, scope: !2154)
!2166 = !DILocation(line: 124, column: 2, scope: !2155)
!2167 = !DILocation(line: 124, column: 2, scope: !2157)
!2168 = !DILocation(line: 124, column: 2, scope: !2160)
!2169 = !DILocation(line: 125, column: 13, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2160, file: !3, line: 124, column: 49)
!2171 = !DILocation(line: 125, column: 20, scope: !2170)
!2172 = !DILocation(line: 125, column: 3, scope: !2170)
!2173 = !DILocation(line: 126, column: 9, scope: !2170)
!2174 = !DILocation(line: 126, column: 3, scope: !2170)
!2175 = !DILocation(line: 127, column: 2, scope: !2170)
!2176 = !DILocation(line: 124, column: 2, scope: !2159)
!2177 = distinct !{!2177, !2166, !2178, !2179, !2180}
!2178 = !DILocation(line: 127, column: 2, scope: !2155)
!2179 = !{!"llvm.loop.mustprogress"}
!2180 = !{!"llvm.loop.unroll.disable"}
!2181 = !DILocation(line: 128, column: 1, scope: !2146)
!2182 = distinct !DISubprogram(name: "list_del", scope: !2183, file: !2183, line: 227, type: !2147, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2184)
!2183 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!2184 = !{!2185}
!2185 = !DILocalVariable(name: "entry", arg: 1, scope: !2182, file: !2183, line: 227, type: !120)
!2186 = !DILocation(line: 227, column: 47, scope: !2182)
!2187 = !DILocation(line: 229, column: 19, scope: !2182)
!2188 = !DILocation(line: 229, column: 2, scope: !2182)
!2189 = !DILocation(line: 230, column: 2, scope: !2182)
!2190 = !DILocation(line: 230, column: 9, scope: !2182)
!2191 = !DILocation(line: 230, column: 14, scope: !2182)
!2192 = !DILocation(line: 231, column: 2, scope: !2182)
!2193 = !DILocation(line: 231, column: 9, scope: !2182)
!2194 = !DILocation(line: 231, column: 14, scope: !2182)
!2195 = !DILocation(line: 232, column: 1, scope: !2182)
!2196 = !DISubprogram(name: "kfree", scope: !101, file: !101, line: 227, type: !2197, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2197 = !DISubroutineType(types: !2198)
!2198 = !{null, !169}
!2199 = distinct !DISubprogram(name: "acpi_extract_power_resources", scope: !3, file: !3, line: 147, type: !2200, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2202)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!46, !1782, !7, !120}
!2202 = !{!2203, !2204, !2205, !2206, !2207, !2208, !2212, !2213}
!2203 = !DILocalVariable(name: "package", arg: 1, scope: !2199, file: !3, line: 147, type: !1782)
!2204 = !DILocalVariable(name: "start", arg: 2, scope: !2199, file: !3, line: 147, type: !7)
!2205 = !DILocalVariable(name: "list", arg: 3, scope: !2199, file: !3, line: 148, type: !120)
!2206 = !DILocalVariable(name: "i", scope: !2199, file: !3, line: 150, type: !7)
!2207 = !DILocalVariable(name: "err", scope: !2199, file: !3, line: 151, type: !46)
!2208 = !DILocalVariable(name: "element", scope: !2209, file: !3, line: 154, type: !1782)
!2209 = distinct !DILexicalBlock(scope: !2210, file: !3, line: 153, column: 51)
!2210 = distinct !DILexicalBlock(scope: !2211, file: !3, line: 153, column: 2)
!2211 = distinct !DILexicalBlock(scope: !2199, file: !3, line: 153, column: 2)
!2212 = !DILocalVariable(name: "rdev", scope: !2209, file: !3, line: 155, type: !1936)
!2213 = !DILocalVariable(name: "rhandle", scope: !2209, file: !3, line: 156, type: !136)
!2214 = !DILocation(line: 147, column: 53, scope: !2199)
!2215 = !DILocation(line: 147, column: 75, scope: !2199)
!2216 = !DILocation(line: 148, column: 24, scope: !2199)
!2217 = !DILocation(line: 150, column: 2, scope: !2199)
!2218 = !DILocation(line: 150, column: 15, scope: !2199)
!2219 = !DILocation(line: 151, column: 2, scope: !2199)
!2220 = !DILocation(line: 151, column: 6, scope: !2199)
!2221 = !DILocation(line: 153, column: 11, scope: !2211)
!2222 = !DILocation(line: 153, column: 9, scope: !2211)
!2223 = !DILocation(line: 153, column: 7, scope: !2211)
!2224 = !DILocation(line: 153, column: 18, scope: !2210)
!2225 = !DILocation(line: 153, column: 22, scope: !2210)
!2226 = !DILocation(line: 153, column: 39, scope: !2210)
!2227 = !DILocation(line: 153, column: 20, scope: !2210)
!2228 = !DILocation(line: 153, column: 2, scope: !2211)
!2229 = !DILocation(line: 154, column: 3, scope: !2209)
!2230 = !DILocation(line: 154, column: 22, scope: !2209)
!2231 = !DILocation(line: 154, column: 33, scope: !2209)
!2232 = !DILocation(line: 154, column: 50, scope: !2209)
!2233 = !DILocation(line: 154, column: 59, scope: !2209)
!2234 = !DILocation(line: 155, column: 3, scope: !2209)
!2235 = !DILocation(line: 155, column: 23, scope: !2209)
!2236 = !DILocation(line: 156, column: 3, scope: !2209)
!2237 = !DILocation(line: 156, column: 15, scope: !2209)
!2238 = !DILocation(line: 158, column: 7, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2209, file: !3, line: 158, column: 7)
!2240 = !DILocation(line: 158, column: 16, scope: !2239)
!2241 = !DILocation(line: 158, column: 21, scope: !2239)
!2242 = !DILocation(line: 158, column: 7, scope: !2209)
!2243 = !DILocation(line: 159, column: 8, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2239, file: !3, line: 158, column: 51)
!2245 = !DILocation(line: 160, column: 4, scope: !2244)
!2246 = !DILocation(line: 162, column: 13, scope: !2209)
!2247 = !DILocation(line: 162, column: 32, scope: !2209)
!2248 = !DILocation(line: 162, column: 11, scope: !2209)
!2249 = !DILocation(line: 163, column: 8, scope: !2250)
!2250 = distinct !DILexicalBlock(scope: !2209, file: !3, line: 163, column: 7)
!2251 = !DILocation(line: 163, column: 7, scope: !2209)
!2252 = !DILocation(line: 164, column: 8, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2250, file: !3, line: 163, column: 17)
!2254 = !DILocation(line: 165, column: 4, scope: !2253)
!2255 = !DILocation(line: 169, column: 34, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2209, file: !3, line: 169, column: 7)
!2257 = !DILocation(line: 169, column: 43, scope: !2256)
!2258 = !DILocation(line: 169, column: 50, scope: !2256)
!2259 = !DILocation(line: 169, column: 7, scope: !2256)
!2260 = !DILocation(line: 169, column: 7, scope: !2209)
!2261 = !DILocation(line: 170, column: 4, scope: !2256)
!2262 = !DILocation(line: 172, column: 34, scope: !2209)
!2263 = !DILocation(line: 172, column: 10, scope: !2209)
!2264 = !DILocation(line: 172, column: 8, scope: !2209)
!2265 = !DILocation(line: 173, column: 8, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2209, file: !3, line: 173, column: 7)
!2267 = !DILocation(line: 173, column: 7, scope: !2209)
!2268 = !DILocation(line: 174, column: 8, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2266, file: !3, line: 173, column: 14)
!2270 = !DILocation(line: 175, column: 4, scope: !2269)
!2271 = !DILocation(line: 177, column: 39, scope: !2209)
!2272 = !DILocation(line: 177, column: 48, scope: !2209)
!2273 = !DILocation(line: 177, column: 9, scope: !2209)
!2274 = !DILocation(line: 177, column: 7, scope: !2209)
!2275 = !DILocation(line: 178, column: 7, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2209, file: !3, line: 178, column: 7)
!2277 = !DILocation(line: 178, column: 7, scope: !2209)
!2278 = !DILocation(line: 179, column: 4, scope: !2276)
!2279 = !DILocation(line: 180, column: 2, scope: !2210)
!2280 = !DILocation(line: 180, column: 2, scope: !2209)
!2281 = !DILocation(line: 153, column: 47, scope: !2210)
!2282 = !DILocation(line: 153, column: 2, scope: !2210)
!2283 = distinct !{!2283, !2228, !2284, !2179, !2180}
!2284 = !DILocation(line: 180, column: 2, scope: !2211)
!2285 = !DILocation(line: 181, column: 6, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2199, file: !3, line: 181, column: 6)
!2287 = !DILocation(line: 181, column: 6, scope: !2199)
!2288 = !DILocation(line: 182, column: 34, scope: !2286)
!2289 = !DILocation(line: 182, column: 3, scope: !2286)
!2290 = !DILocation(line: 184, column: 9, scope: !2199)
!2291 = !DILocation(line: 185, column: 1, scope: !2199)
!2292 = !DILocation(line: 184, column: 2, scope: !2199)
!2293 = distinct !DISubprogram(name: "acpi_power_resource_is_dup", scope: !3, file: !3, line: 130, type: !2294, scopeLine: 132, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2296)
!2294 = !DISubroutineType(types: !2295)
!2295 = !{!161, !1782, !7, !7}
!2296 = !{!2297, !2298, !2299, !2300, !2301, !2302}
!2297 = !DILocalVariable(name: "package", arg: 1, scope: !2293, file: !3, line: 130, type: !1782)
!2298 = !DILocalVariable(name: "start", arg: 2, scope: !2293, file: !3, line: 131, type: !7)
!2299 = !DILocalVariable(name: "i", arg: 3, scope: !2293, file: !3, line: 131, type: !7)
!2300 = !DILocalVariable(name: "rhandle", scope: !2293, file: !3, line: 133, type: !136)
!2301 = !DILocalVariable(name: "dup", scope: !2293, file: !3, line: 133, type: !136)
!2302 = !DILocalVariable(name: "j", scope: !2293, file: !3, line: 134, type: !7)
!2303 = !DILocation(line: 130, column: 59, scope: !2293)
!2304 = !DILocation(line: 131, column: 25, scope: !2293)
!2305 = !DILocation(line: 131, column: 45, scope: !2293)
!2306 = !DILocation(line: 133, column: 2, scope: !2293)
!2307 = !DILocation(line: 133, column: 14, scope: !2293)
!2308 = !DILocation(line: 133, column: 23, scope: !2293)
!2309 = !DILocation(line: 134, column: 2, scope: !2293)
!2310 = !DILocation(line: 134, column: 15, scope: !2293)
!2311 = !DILocation(line: 137, column: 12, scope: !2293)
!2312 = !DILocation(line: 137, column: 29, scope: !2293)
!2313 = !DILocation(line: 137, column: 38, scope: !2293)
!2314 = !DILocation(line: 137, column: 51, scope: !2293)
!2315 = !DILocation(line: 137, column: 10, scope: !2293)
!2316 = !DILocation(line: 138, column: 11, scope: !2317)
!2317 = distinct !DILexicalBlock(scope: !2293, file: !3, line: 138, column: 2)
!2318 = !DILocation(line: 138, column: 9, scope: !2317)
!2319 = !DILocation(line: 138, column: 7, scope: !2317)
!2320 = !DILocation(line: 138, column: 18, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2317, file: !3, line: 138, column: 2)
!2322 = !DILocation(line: 138, column: 22, scope: !2321)
!2323 = !DILocation(line: 138, column: 20, scope: !2321)
!2324 = !DILocation(line: 138, column: 2, scope: !2317)
!2325 = !DILocation(line: 139, column: 9, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2321, file: !3, line: 138, column: 30)
!2327 = !DILocation(line: 139, column: 26, scope: !2326)
!2328 = !DILocation(line: 139, column: 35, scope: !2326)
!2329 = !DILocation(line: 139, column: 48, scope: !2326)
!2330 = !DILocation(line: 139, column: 7, scope: !2326)
!2331 = !DILocation(line: 140, column: 7, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2326, file: !3, line: 140, column: 7)
!2333 = !DILocation(line: 140, column: 14, scope: !2332)
!2334 = !DILocation(line: 140, column: 11, scope: !2332)
!2335 = !DILocation(line: 140, column: 7, scope: !2326)
!2336 = !DILocation(line: 141, column: 4, scope: !2332)
!2337 = !DILocation(line: 142, column: 2, scope: !2326)
!2338 = !DILocation(line: 138, column: 26, scope: !2321)
!2339 = !DILocation(line: 138, column: 2, scope: !2321)
!2340 = distinct !{!2340, !2324, !2341, !2179, !2180}
!2341 = !DILocation(line: 142, column: 2, scope: !2317)
!2342 = !DILocation(line: 144, column: 2, scope: !2293)
!2343 = !DILocation(line: 145, column: 1, scope: !2293)
!2344 = !DILocation(line: 930, column: 57, scope: !2022)
!2345 = !DILocation(line: 932, column: 2, scope: !2022)
!2346 = !DILocation(line: 932, column: 22, scope: !2022)
!2347 = !DILocation(line: 932, column: 51, scope: !2022)
!2348 = !DILocation(line: 932, column: 31, scope: !2022)
!2349 = !DILocation(line: 933, column: 2, scope: !2022)
!2350 = !DILocation(line: 933, column: 30, scope: !2022)
!2351 = !DILocation(line: 934, column: 2, scope: !2022)
!2352 = !DILocation(line: 934, column: 20, scope: !2022)
!2353 = !DILocation(line: 935, column: 2, scope: !2022)
!2354 = !DILocation(line: 935, column: 21, scope: !2022)
!2355 = !DILocation(line: 935, column: 30, scope: !2022)
!2356 = !DILocation(line: 936, column: 2, scope: !2022)
!2357 = !DILocation(line: 936, column: 14, scope: !2022)
!2358 = !DILocation(line: 937, column: 2, scope: !2022)
!2359 = !DILocation(line: 937, column: 5, scope: !2022)
!2360 = !DILocation(line: 938, column: 2, scope: !2022)
!2361 = !DILocation(line: 938, column: 6, scope: !2022)
!2362 = !DILocation(line: 940, column: 6, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 940, column: 6)
!2364 = !DILocation(line: 940, column: 6, scope: !2022)
!2365 = !DILocation(line: 941, column: 10, scope: !2363)
!2366 = !DILocation(line: 941, column: 3, scope: !2363)
!2367 = !DILocation(line: 943, column: 13, scope: !2022)
!2368 = !DILocation(line: 943, column: 11, scope: !2022)
!2369 = !DILocation(line: 944, column: 7, scope: !2370)
!2370 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 944, column: 6)
!2371 = !DILocation(line: 944, column: 6, scope: !2022)
!2372 = !DILocation(line: 945, column: 3, scope: !2370)
!2373 = !DILocation(line: 947, column: 12, scope: !2022)
!2374 = !DILocation(line: 947, column: 22, scope: !2022)
!2375 = !DILocation(line: 947, column: 9, scope: !2022)
!2376 = !DILocation(line: 948, column: 26, scope: !2022)
!2377 = !DILocation(line: 948, column: 34, scope: !2022)
!2378 = !DILocation(line: 948, column: 2, scope: !2022)
!2379 = !DILocation(line: 950, column: 2, scope: !2022)
!2380 = !DILocation(line: 950, column: 2, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 950, column: 2)
!2382 = !DILocation(line: 951, column: 18, scope: !2022)
!2383 = !DILocation(line: 951, column: 28, scope: !2022)
!2384 = !DILocation(line: 951, column: 2, scope: !2022)
!2385 = !DILocation(line: 952, column: 18, scope: !2022)
!2386 = !DILocation(line: 952, column: 28, scope: !2022)
!2387 = !DILocation(line: 952, column: 2, scope: !2022)
!2388 = !DILocation(line: 953, column: 9, scope: !2022)
!2389 = !DILocation(line: 953, column: 2, scope: !2022)
!2390 = !DILocation(line: 954, column: 9, scope: !2022)
!2391 = !DILocation(line: 954, column: 2, scope: !2022)
!2392 = !DILocation(line: 955, column: 2, scope: !2022)
!2393 = !DILocation(line: 955, column: 10, scope: !2022)
!2394 = !DILocation(line: 955, column: 16, scope: !2022)
!2395 = !DILocation(line: 955, column: 22, scope: !2022)
!2396 = !DILocation(line: 956, column: 2, scope: !2022)
!2397 = !DILocation(line: 956, column: 10, scope: !2022)
!2398 = !DILocation(line: 956, column: 29, scope: !2022)
!2399 = !DILocation(line: 959, column: 32, scope: !2022)
!2400 = !DILocation(line: 959, column: 11, scope: !2022)
!2401 = !DILocation(line: 959, column: 9, scope: !2022)
!2402 = !DILocation(line: 960, column: 6, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 960, column: 6)
!2404 = !DILocation(line: 960, column: 6, scope: !2022)
!2405 = !DILocation(line: 961, column: 3, scope: !2403)
!2406 = !DILocation(line: 963, column: 54, scope: !2022)
!2407 = !DILocation(line: 963, column: 2, scope: !2022)
!2408 = !DILocation(line: 963, column: 12, scope: !2022)
!2409 = !DILocation(line: 963, column: 25, scope: !2022)
!2410 = !DILocation(line: 964, column: 47, scope: !2022)
!2411 = !DILocation(line: 964, column: 2, scope: !2022)
!2412 = !DILocation(line: 964, column: 12, scope: !2022)
!2413 = !DILocation(line: 964, column: 18, scope: !2022)
!2414 = !DILocation(line: 965, column: 2, scope: !2022)
!2415 = !DILocation(line: 965, column: 12, scope: !2022)
!2416 = !DILocation(line: 965, column: 18, scope: !2022)
!2417 = !DILocation(line: 968, column: 27, scope: !2418)
!2418 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 968, column: 6)
!2419 = !DILocation(line: 968, column: 6, scope: !2418)
!2420 = !DILocation(line: 968, column: 6, scope: !2022)
!2421 = !DILocation(line: 969, column: 19, scope: !2418)
!2422 = !DILocation(line: 969, column: 3, scope: !2418)
!2423 = !DILocation(line: 971, column: 2, scope: !2022)
!2424 = !DILocation(line: 973, column: 29, scope: !2022)
!2425 = !DILocation(line: 973, column: 11, scope: !2022)
!2426 = !DILocation(line: 973, column: 9, scope: !2022)
!2427 = !DILocation(line: 974, column: 6, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 974, column: 6)
!2429 = !DILocation(line: 974, column: 6, scope: !2022)
!2430 = !DILocation(line: 975, column: 3, scope: !2428)
!2431 = !DILocation(line: 977, column: 27, scope: !2022)
!2432 = !DILocation(line: 977, column: 11, scope: !2022)
!2433 = !DILocation(line: 977, column: 9, scope: !2022)
!2434 = !DILocation(line: 978, column: 6, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 978, column: 6)
!2436 = !DILocation(line: 978, column: 6, scope: !2022)
!2437 = !DILocation(line: 979, column: 3, scope: !2435)
!2438 = !DILocation(line: 981, column: 27, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2022, file: !3, line: 981, column: 6)
!2440 = !DILocation(line: 981, column: 35, scope: !2439)
!2441 = !DILocation(line: 981, column: 7, scope: !2439)
!2442 = !DILocation(line: 981, column: 6, scope: !2022)
!2443 = !DILocation(line: 982, column: 3, scope: !2439)
!2444 = !DILocation(line: 982, column: 11, scope: !2439)
!2445 = !DILocation(line: 982, column: 18, scope: !2439)
!2446 = !DILocation(line: 984, column: 34, scope: !2022)
!2447 = !DILocation(line: 984, column: 2, scope: !2022)
!2448 = !DILocation(line: 985, column: 27, scope: !2022)
!2449 = !DILocation(line: 985, column: 2, scope: !2022)
!2450 = !DILocation(line: 986, column: 9, scope: !2022)
!2451 = !DILocation(line: 986, column: 2, scope: !2022)
!2452 = !DILocation(line: 988, column: 2, scope: !2022)
!2453 = !DILocation(line: 989, column: 31, scope: !2022)
!2454 = !DILocation(line: 989, column: 39, scope: !2022)
!2455 = !DILocation(line: 989, column: 2, scope: !2022)
!2456 = !DILocation(line: 990, column: 2, scope: !2022)
!2457 = !DILocation(line: 991, column: 1, scope: !2022)
!2458 = distinct !DISubprogram(name: "acpi_power_resources_list_add", scope: !3, file: !3, line: 93, type: !2459, scopeLine: 95, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2461)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!46, !136, !120}
!2461 = !{!2462, !2463, !2464, !2465, !2466, !2469, !2472}
!2462 = !DILocalVariable(name: "handle", arg: 1, scope: !2458, file: !3, line: 93, type: !136)
!2463 = !DILocalVariable(name: "list", arg: 2, scope: !2458, file: !3, line: 94, type: !120)
!2464 = !DILocalVariable(name: "resource", scope: !2458, file: !3, line: 96, type: !123)
!2465 = !DILocalVariable(name: "entry", scope: !2458, file: !3, line: 97, type: !112)
!2466 = !DILocalVariable(name: "e", scope: !2467, file: !3, line: 108, type: !112)
!2467 = distinct !DILexicalBlock(scope: !2468, file: !3, line: 107, column: 25)
!2468 = distinct !DILexicalBlock(scope: !2458, file: !3, line: 107, column: 6)
!2469 = !DILocalVariable(name: "__mptr", scope: !2470, file: !3, line: 110, type: !111)
!2470 = distinct !DILexicalBlock(scope: !2471, file: !3, line: 110, column: 3)
!2471 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 110, column: 3)
!2472 = !DILocalVariable(name: "__mptr", scope: !2473, file: !3, line: 110, type: !111)
!2473 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 110, column: 3)
!2474 = distinct !DILexicalBlock(scope: !2471, file: !3, line: 110, column: 3)
!2475 = !DILocation(line: 93, column: 54, scope: !2458)
!2476 = !DILocation(line: 94, column: 25, scope: !2458)
!2477 = !DILocation(line: 96, column: 2, scope: !2458)
!2478 = !DILocation(line: 96, column: 30, scope: !2458)
!2479 = !DILocation(line: 96, column: 64, scope: !2458)
!2480 = !DILocation(line: 96, column: 41, scope: !2458)
!2481 = !DILocation(line: 97, column: 2, scope: !2458)
!2482 = !DILocation(line: 97, column: 36, scope: !2458)
!2483 = !DILocation(line: 99, column: 7, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2458, file: !3, line: 99, column: 6)
!2485 = !DILocation(line: 99, column: 16, scope: !2484)
!2486 = !DILocation(line: 99, column: 20, scope: !2484)
!2487 = !DILocation(line: 99, column: 6, scope: !2458)
!2488 = !DILocation(line: 100, column: 3, scope: !2484)
!2489 = !DILocation(line: 102, column: 10, scope: !2458)
!2490 = !DILocation(line: 102, column: 8, scope: !2458)
!2491 = !DILocation(line: 103, column: 7, scope: !2492)
!2492 = distinct !DILexicalBlock(scope: !2458, file: !3, line: 103, column: 6)
!2493 = !DILocation(line: 103, column: 6, scope: !2458)
!2494 = !DILocation(line: 104, column: 3, scope: !2492)
!2495 = !DILocation(line: 106, column: 20, scope: !2458)
!2496 = !DILocation(line: 106, column: 2, scope: !2458)
!2497 = !DILocation(line: 106, column: 9, scope: !2458)
!2498 = !DILocation(line: 106, column: 18, scope: !2458)
!2499 = !DILocation(line: 107, column: 18, scope: !2468)
!2500 = !DILocation(line: 107, column: 7, scope: !2468)
!2501 = !DILocation(line: 107, column: 6, scope: !2458)
!2502 = !DILocation(line: 108, column: 3, scope: !2467)
!2503 = !DILocation(line: 108, column: 37, scope: !2467)
!2504 = !DILocation(line: 110, column: 3, scope: !2470)
!2505 = !DILocation(line: 110, column: 3, scope: !2471)
!2506 = !DILocation(line: 110, column: 3, scope: !2474)
!2507 = !DILocation(line: 111, column: 8, scope: !2508)
!2508 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 111, column: 8)
!2509 = !DILocation(line: 111, column: 11, scope: !2508)
!2510 = !DILocation(line: 111, column: 21, scope: !2508)
!2511 = !DILocation(line: 111, column: 29, scope: !2508)
!2512 = !DILocation(line: 111, column: 39, scope: !2508)
!2513 = !DILocation(line: 111, column: 27, scope: !2508)
!2514 = !DILocation(line: 111, column: 8, scope: !2474)
!2515 = !DILocation(line: 112, column: 20, scope: !2516)
!2516 = distinct !DILexicalBlock(scope: !2508, file: !3, line: 111, column: 46)
!2517 = !DILocation(line: 112, column: 27, scope: !2516)
!2518 = !DILocation(line: 112, column: 34, scope: !2516)
!2519 = !DILocation(line: 112, column: 37, scope: !2516)
!2520 = !DILocation(line: 112, column: 5, scope: !2516)
!2521 = !DILocation(line: 113, column: 5, scope: !2516)
!2522 = !DILocation(line: 110, column: 3, scope: !2473)
!2523 = distinct !{!2523, !2505, !2524, !2179, !2180}
!2524 = !DILocation(line: 114, column: 4, scope: !2471)
!2525 = !DILocation(line: 115, column: 2, scope: !2468)
!2526 = !DILocation(line: 115, column: 2, scope: !2467)
!2527 = !DILocation(line: 116, column: 17, scope: !2458)
!2528 = !DILocation(line: 116, column: 24, scope: !2458)
!2529 = !DILocation(line: 116, column: 30, scope: !2458)
!2530 = !DILocation(line: 116, column: 2, scope: !2458)
!2531 = !DILocation(line: 117, column: 2, scope: !2458)
!2532 = !DILocation(line: 118, column: 1, scope: !2458)
!2533 = distinct !DISubprogram(name: "acpi_device_power_add_dependent", scope: !3, file: !3, line: 313, type: !2534, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2536)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!46, !1936, !832}
!2536 = !{!2537, !2538, !2539, !2540, !2541, !2542, !2545, !2548, !2549, !2552}
!2537 = !DILocalVariable(name: "adev", arg: 1, scope: !2533, file: !3, line: 313, type: !1936)
!2538 = !DILocalVariable(name: "dev", arg: 2, scope: !2533, file: !3, line: 314, type: !832)
!2539 = !DILocalVariable(name: "entry", scope: !2533, file: !3, line: 316, type: !112)
!2540 = !DILocalVariable(name: "resources", scope: !2533, file: !3, line: 317, type: !120)
!2541 = !DILocalVariable(name: "ret", scope: !2533, file: !3, line: 318, type: !46)
!2542 = !DILocalVariable(name: "__mptr", scope: !2543, file: !3, line: 324, type: !111)
!2543 = distinct !DILexicalBlock(scope: !2544, file: !3, line: 324, column: 2)
!2544 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 324, column: 2)
!2545 = !DILocalVariable(name: "__mptr", scope: !2546, file: !3, line: 324, type: !111)
!2546 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 324, column: 2)
!2547 = distinct !DILexicalBlock(scope: !2544, file: !3, line: 324, column: 2)
!2548 = !DILabel(scope: !2533, name: "err", file: !3, line: 332)
!2549 = !DILocalVariable(name: "__mptr", scope: !2550, file: !3, line: 333, type: !111)
!2550 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 333, column: 2)
!2551 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 333, column: 2)
!2552 = !DILocalVariable(name: "__mptr", scope: !2553, file: !3, line: 333, type: !111)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !3, line: 333, column: 2)
!2554 = distinct !DILexicalBlock(scope: !2551, file: !3, line: 333, column: 2)
!2555 = !DILocation(line: 313, column: 57, scope: !2533)
!2556 = !DILocation(line: 314, column: 24, scope: !2533)
!2557 = !DILocation(line: 316, column: 2, scope: !2533)
!2558 = !DILocation(line: 316, column: 36, scope: !2533)
!2559 = !DILocation(line: 317, column: 2, scope: !2533)
!2560 = !DILocation(line: 317, column: 20, scope: !2533)
!2561 = !DILocation(line: 318, column: 2, scope: !2533)
!2562 = !DILocation(line: 318, column: 6, scope: !2533)
!2563 = !DILocation(line: 320, column: 7, scope: !2564)
!2564 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 320, column: 6)
!2565 = !DILocation(line: 320, column: 13, scope: !2564)
!2566 = !DILocation(line: 320, column: 19, scope: !2564)
!2567 = !DILocation(line: 320, column: 6, scope: !2533)
!2568 = !DILocation(line: 321, column: 3, scope: !2564)
!2569 = !DILocation(line: 323, column: 15, scope: !2533)
!2570 = !DILocation(line: 323, column: 21, scope: !2533)
!2571 = !DILocation(line: 323, column: 27, scope: !2533)
!2572 = !DILocation(line: 323, column: 49, scope: !2533)
!2573 = !DILocation(line: 323, column: 12, scope: !2533)
!2574 = !DILocation(line: 324, column: 2, scope: !2543)
!2575 = !DILocation(line: 324, column: 2, scope: !2544)
!2576 = !DILocation(line: 324, column: 2, scope: !2547)
!2577 = !DILocation(line: 325, column: 43, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2547, file: !3, line: 324, column: 46)
!2579 = !DILocation(line: 325, column: 50, scope: !2578)
!2580 = !DILocation(line: 325, column: 60, scope: !2578)
!2581 = !DILocation(line: 325, column: 9, scope: !2578)
!2582 = !DILocation(line: 325, column: 7, scope: !2578)
!2583 = !DILocation(line: 326, column: 7, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2578, file: !3, line: 326, column: 7)
!2585 = !DILocation(line: 326, column: 7, scope: !2578)
!2586 = !DILocation(line: 327, column: 4, scope: !2584)
!2587 = !DILocation(line: 328, column: 2, scope: !2578)
!2588 = !DILocation(line: 324, column: 2, scope: !2546)
!2589 = distinct !{!2589, !2575, !2590, !2179, !2180}
!2590 = !DILocation(line: 328, column: 2, scope: !2544)
!2591 = !DILocation(line: 330, column: 2, scope: !2533)
!2592 = !DILocation(line: 332, column: 1, scope: !2533)
!2593 = !DILocation(line: 333, column: 2, scope: !2550)
!2594 = !DILocation(line: 333, column: 2, scope: !2551)
!2595 = !DILocation(line: 333, column: 2, scope: !2554)
!2596 = !DILocation(line: 334, column: 40, scope: !2554)
!2597 = !DILocation(line: 334, column: 47, scope: !2554)
!2598 = !DILocation(line: 334, column: 57, scope: !2554)
!2599 = !DILocation(line: 334, column: 3, scope: !2554)
!2600 = !DILocation(line: 333, column: 2, scope: !2553)
!2601 = distinct !{!2601, !2594, !2602, !2179, !2180}
!2602 = !DILocation(line: 334, column: 60, scope: !2551)
!2603 = !DILocation(line: 336, column: 9, scope: !2533)
!2604 = !DILocation(line: 336, column: 2, scope: !2533)
!2605 = !DILocation(line: 337, column: 1, scope: !2533)
!2606 = distinct !DISubprogram(name: "acpi_power_resource_add_dependent", scope: !3, file: !3, line: 250, type: !2607, scopeLine: 252, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2609)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{!46, !123, !832}
!2609 = !{!2610, !2611, !2612, !2613, !2614, !2617, !2620}
!2610 = !DILocalVariable(name: "resource", arg: 1, scope: !2606, file: !3, line: 250, type: !123)
!2611 = !DILocalVariable(name: "dev", arg: 2, scope: !2606, file: !3, line: 251, type: !832)
!2612 = !DILocalVariable(name: "dep", scope: !2606, file: !3, line: 253, type: !1990)
!2613 = !DILocalVariable(name: "ret", scope: !2606, file: !3, line: 254, type: !46)
!2614 = !DILocalVariable(name: "__mptr", scope: !2615, file: !3, line: 257, type: !111)
!2615 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 257, column: 2)
!2616 = distinct !DILexicalBlock(scope: !2606, file: !3, line: 257, column: 2)
!2617 = !DILocalVariable(name: "__mptr", scope: !2618, file: !3, line: 257, type: !111)
!2618 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 257, column: 2)
!2619 = distinct !DILexicalBlock(scope: !2616, file: !3, line: 257, column: 2)
!2620 = !DILabel(scope: !2606, name: "unlock", file: !3, line: 274)
!2621 = !DILocation(line: 250, column: 63, scope: !2606)
!2622 = !DILocation(line: 251, column: 22, scope: !2606)
!2623 = !DILocation(line: 253, column: 2, scope: !2606)
!2624 = !DILocation(line: 253, column: 38, scope: !2606)
!2625 = !DILocation(line: 254, column: 2, scope: !2606)
!2626 = !DILocation(line: 254, column: 6, scope: !2606)
!2627 = !DILocation(line: 256, column: 14, scope: !2606)
!2628 = !DILocation(line: 256, column: 24, scope: !2606)
!2629 = !DILocation(line: 256, column: 2, scope: !2606)
!2630 = !DILocation(line: 257, column: 2, scope: !2615)
!2631 = !DILocation(line: 257, column: 2, scope: !2616)
!2632 = !DILocation(line: 257, column: 2, scope: !2619)
!2633 = !DILocation(line: 259, column: 7, scope: !2634)
!2634 = distinct !DILexicalBlock(scope: !2635, file: !3, line: 259, column: 7)
!2635 = distinct !DILexicalBlock(scope: !2619, file: !3, line: 257, column: 56)
!2636 = !DILocation(line: 259, column: 12, scope: !2634)
!2637 = !DILocation(line: 259, column: 19, scope: !2634)
!2638 = !DILocation(line: 259, column: 16, scope: !2634)
!2639 = !DILocation(line: 259, column: 7, scope: !2635)
!2640 = !DILocation(line: 260, column: 4, scope: !2634)
!2641 = !DILocation(line: 261, column: 2, scope: !2635)
!2642 = !DILocation(line: 257, column: 2, scope: !2618)
!2643 = distinct !{!2643, !2631, !2644, !2179, !2180}
!2644 = !DILocation(line: 261, column: 2, scope: !2616)
!2645 = !DILocation(line: 263, column: 8, scope: !2606)
!2646 = !DILocation(line: 263, column: 6, scope: !2606)
!2647 = !DILocation(line: 264, column: 7, scope: !2648)
!2648 = distinct !DILexicalBlock(scope: !2606, file: !3, line: 264, column: 6)
!2649 = !DILocation(line: 264, column: 6, scope: !2606)
!2650 = !DILocation(line: 265, column: 7, scope: !2651)
!2651 = distinct !DILexicalBlock(scope: !2648, file: !3, line: 264, column: 12)
!2652 = !DILocation(line: 266, column: 3, scope: !2651)
!2653 = !DILocation(line: 269, column: 13, scope: !2606)
!2654 = !DILocation(line: 269, column: 2, scope: !2606)
!2655 = !DILocation(line: 269, column: 7, scope: !2606)
!2656 = !DILocation(line: 269, column: 11, scope: !2606)
!2657 = !DILocation(line: 270, column: 17, scope: !2606)
!2658 = !DILocation(line: 270, column: 22, scope: !2606)
!2659 = !DILocation(line: 270, column: 29, scope: !2606)
!2660 = !DILocation(line: 270, column: 39, scope: !2606)
!2661 = !DILocation(line: 270, column: 2, scope: !2606)
!2662 = !DILocation(line: 271, column: 2, scope: !2606)
!2663 = !DILocation(line: 274, column: 1, scope: !2606)
!2664 = !DILocation(line: 275, column: 16, scope: !2606)
!2665 = !DILocation(line: 275, column: 26, scope: !2606)
!2666 = !DILocation(line: 275, column: 2, scope: !2606)
!2667 = !DILocation(line: 276, column: 9, scope: !2606)
!2668 = !DILocation(line: 277, column: 1, scope: !2606)
!2669 = !DILocation(line: 276, column: 2, scope: !2606)
!2670 = distinct !DISubprogram(name: "acpi_power_resource_remove_dependent", scope: !3, file: !3, line: 280, type: !2671, scopeLine: 282, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2673)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{null, !123, !832}
!2673 = !{!2674, !2675, !2676, !2677, !2680}
!2674 = !DILocalVariable(name: "resource", arg: 1, scope: !2670, file: !3, line: 280, type: !123)
!2675 = !DILocalVariable(name: "dev", arg: 2, scope: !2670, file: !3, line: 281, type: !832)
!2676 = !DILocalVariable(name: "dep", scope: !2670, file: !3, line: 283, type: !1990)
!2677 = !DILocalVariable(name: "__mptr", scope: !2678, file: !3, line: 286, type: !111)
!2678 = distinct !DILexicalBlock(scope: !2679, file: !3, line: 286, column: 2)
!2679 = distinct !DILexicalBlock(scope: !2670, file: !3, line: 286, column: 2)
!2680 = !DILocalVariable(name: "__mptr", scope: !2681, file: !3, line: 286, type: !111)
!2681 = distinct !DILexicalBlock(scope: !2682, file: !3, line: 286, column: 2)
!2682 = distinct !DILexicalBlock(scope: !2679, file: !3, line: 286, column: 2)
!2683 = !DILocation(line: 280, column: 66, scope: !2670)
!2684 = !DILocation(line: 281, column: 25, scope: !2670)
!2685 = !DILocation(line: 283, column: 2, scope: !2670)
!2686 = !DILocation(line: 283, column: 38, scope: !2670)
!2687 = !DILocation(line: 285, column: 14, scope: !2670)
!2688 = !DILocation(line: 285, column: 24, scope: !2670)
!2689 = !DILocation(line: 285, column: 2, scope: !2670)
!2690 = !DILocation(line: 286, column: 2, scope: !2678)
!2691 = !DILocation(line: 286, column: 2, scope: !2679)
!2692 = !DILocation(line: 286, column: 2, scope: !2682)
!2693 = !DILocation(line: 287, column: 7, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2695, file: !3, line: 287, column: 7)
!2695 = distinct !DILexicalBlock(scope: !2682, file: !3, line: 286, column: 56)
!2696 = !DILocation(line: 287, column: 12, scope: !2694)
!2697 = !DILocation(line: 287, column: 19, scope: !2694)
!2698 = !DILocation(line: 287, column: 16, scope: !2694)
!2699 = !DILocation(line: 287, column: 7, scope: !2695)
!2700 = !DILocation(line: 288, column: 14, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 287, column: 24)
!2702 = !DILocation(line: 288, column: 19, scope: !2701)
!2703 = !DILocation(line: 288, column: 4, scope: !2701)
!2704 = !DILocation(line: 289, column: 10, scope: !2701)
!2705 = !DILocation(line: 289, column: 4, scope: !2701)
!2706 = !DILocation(line: 292, column: 4, scope: !2701)
!2707 = !DILocation(line: 294, column: 2, scope: !2695)
!2708 = !DILocation(line: 286, column: 2, scope: !2681)
!2709 = distinct !{!2709, !2691, !2710, !2179, !2180}
!2710 = !DILocation(line: 294, column: 2, scope: !2679)
!2711 = !DILocation(line: 295, column: 16, scope: !2670)
!2712 = !DILocation(line: 295, column: 26, scope: !2670)
!2713 = !DILocation(line: 295, column: 2, scope: !2670)
!2714 = !DILocation(line: 296, column: 1, scope: !2670)
!2715 = distinct !DISubprogram(name: "acpi_device_power_remove_dependent", scope: !3, file: !3, line: 348, type: !2716, scopeLine: 350, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2718)
!2716 = !DISubroutineType(types: !2717)
!2717 = !{null, !1936, !832}
!2718 = !{!2719, !2720, !2721, !2722, !2723, !2726}
!2719 = !DILocalVariable(name: "adev", arg: 1, scope: !2715, file: !3, line: 348, type: !1936)
!2720 = !DILocalVariable(name: "dev", arg: 2, scope: !2715, file: !3, line: 349, type: !832)
!2721 = !DILocalVariable(name: "entry", scope: !2715, file: !3, line: 351, type: !112)
!2722 = !DILocalVariable(name: "resources", scope: !2715, file: !3, line: 352, type: !120)
!2723 = !DILocalVariable(name: "__mptr", scope: !2724, file: !3, line: 358, type: !111)
!2724 = distinct !DILexicalBlock(scope: !2725, file: !3, line: 358, column: 2)
!2725 = distinct !DILexicalBlock(scope: !2715, file: !3, line: 358, column: 2)
!2726 = !DILocalVariable(name: "__mptr", scope: !2727, file: !3, line: 358, type: !111)
!2727 = distinct !DILexicalBlock(scope: !2728, file: !3, line: 358, column: 2)
!2728 = distinct !DILexicalBlock(scope: !2725, file: !3, line: 358, column: 2)
!2729 = !DILocation(line: 348, column: 61, scope: !2715)
!2730 = !DILocation(line: 349, column: 21, scope: !2715)
!2731 = !DILocation(line: 351, column: 2, scope: !2715)
!2732 = !DILocation(line: 351, column: 36, scope: !2715)
!2733 = !DILocation(line: 352, column: 2, scope: !2715)
!2734 = !DILocation(line: 352, column: 20, scope: !2715)
!2735 = !DILocation(line: 354, column: 7, scope: !2736)
!2736 = distinct !DILexicalBlock(scope: !2715, file: !3, line: 354, column: 6)
!2737 = !DILocation(line: 354, column: 13, scope: !2736)
!2738 = !DILocation(line: 354, column: 19, scope: !2736)
!2739 = !DILocation(line: 354, column: 6, scope: !2715)
!2740 = !DILocation(line: 355, column: 3, scope: !2736)
!2741 = !DILocation(line: 357, column: 15, scope: !2715)
!2742 = !DILocation(line: 357, column: 21, scope: !2715)
!2743 = !DILocation(line: 357, column: 27, scope: !2715)
!2744 = !DILocation(line: 357, column: 49, scope: !2715)
!2745 = !DILocation(line: 357, column: 12, scope: !2715)
!2746 = !DILocation(line: 358, column: 2, scope: !2724)
!2747 = !DILocation(line: 358, column: 2, scope: !2725)
!2748 = !DILocation(line: 358, column: 2, scope: !2728)
!2749 = !DILocation(line: 359, column: 40, scope: !2728)
!2750 = !DILocation(line: 359, column: 47, scope: !2728)
!2751 = !DILocation(line: 359, column: 57, scope: !2728)
!2752 = !DILocation(line: 359, column: 3, scope: !2728)
!2753 = !DILocation(line: 358, column: 2, scope: !2727)
!2754 = distinct !{!2754, !2747, !2755, !2179, !2180}
!2755 = !DILocation(line: 359, column: 60, scope: !2725)
!2756 = !DILocation(line: 360, column: 1, scope: !2715)
!2757 = distinct !DISubprogram(name: "acpi_power_add_remove_device", scope: !3, file: !3, line: 594, type: !2758, scopeLine: 595, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2760)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{null, !1936, !161}
!2760 = !{!2761, !2762, !2763}
!2761 = !DILocalVariable(name: "adev", arg: 1, scope: !2757, file: !3, line: 594, type: !1936)
!2762 = !DILocalVariable(name: "add", arg: 2, scope: !2757, file: !3, line: 594, type: !161)
!2763 = !DILocalVariable(name: "state", scope: !2757, file: !3, line: 596, type: !46)
!2764 = !DILocation(line: 594, column: 55, scope: !2757)
!2765 = !DILocation(line: 594, column: 66, scope: !2757)
!2766 = !DILocation(line: 596, column: 2, scope: !2757)
!2767 = !DILocation(line: 596, column: 6, scope: !2757)
!2768 = !DILocation(line: 598, column: 6, scope: !2769)
!2769 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 598, column: 6)
!2770 = !DILocation(line: 598, column: 12, scope: !2769)
!2771 = !DILocation(line: 598, column: 19, scope: !2769)
!2772 = !DILocation(line: 598, column: 25, scope: !2769)
!2773 = !DILocation(line: 598, column: 6, scope: !2757)
!2774 = !DILocation(line: 599, column: 26, scope: !2769)
!2775 = !DILocation(line: 599, column: 33, scope: !2769)
!2776 = !DILocation(line: 599, column: 39, scope: !2769)
!2777 = !DILocation(line: 599, column: 46, scope: !2769)
!2778 = !DILocation(line: 600, column: 32, scope: !2769)
!2779 = !{i8 0, i8 2}
!2780 = !DILocation(line: 599, column: 3, scope: !2769)
!2781 = !DILocation(line: 602, column: 7, scope: !2782)
!2782 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 602, column: 6)
!2783 = !DILocation(line: 602, column: 13, scope: !2782)
!2784 = !DILocation(line: 602, column: 19, scope: !2782)
!2785 = !DILocation(line: 602, column: 25, scope: !2782)
!2786 = !DILocation(line: 602, column: 6, scope: !2757)
!2787 = !DILocation(line: 603, column: 3, scope: !2782)
!2788 = !DILocation(line: 605, column: 13, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 605, column: 2)
!2790 = !DILocation(line: 605, column: 7, scope: !2789)
!2791 = !DILocation(line: 605, column: 30, scope: !2792)
!2792 = distinct !DILexicalBlock(scope: !2789, file: !3, line: 605, column: 2)
!2793 = !DILocation(line: 605, column: 36, scope: !2792)
!2794 = !DILocation(line: 605, column: 2, scope: !2789)
!2795 = !DILocation(line: 606, column: 26, scope: !2792)
!2796 = !DILocation(line: 607, column: 13, scope: !2792)
!2797 = !DILocation(line: 607, column: 19, scope: !2792)
!2798 = !DILocation(line: 607, column: 25, scope: !2792)
!2799 = !DILocation(line: 607, column: 32, scope: !2792)
!2800 = !DILocation(line: 607, column: 39, scope: !2792)
!2801 = !DILocation(line: 608, column: 25, scope: !2792)
!2802 = !DILocation(line: 608, column: 13, scope: !2792)
!2803 = !DILocation(line: 608, column: 33, scope: !2792)
!2804 = !DILocation(line: 606, column: 3, scope: !2792)
!2805 = !DILocation(line: 605, column: 63, scope: !2792)
!2806 = !DILocation(line: 605, column: 2, scope: !2792)
!2807 = distinct !{!2807, !2794, !2808, !2179, !2180}
!2808 = !DILocation(line: 608, column: 36, scope: !2789)
!2809 = !DILocation(line: 609, column: 1, scope: !2757)
!2810 = distinct !DISubprogram(name: "acpi_power_expose_hide", scope: !3, file: !3, line: 583, type: !2811, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2813)
!2811 = !DISubroutineType(types: !2812)
!2812 = !{null, !1936, !120, !313, !161}
!2813 = !{!2814, !2815, !2816, !2817}
!2814 = !DILocalVariable(name: "adev", arg: 1, scope: !2810, file: !3, line: 583, type: !1936)
!2815 = !DILocalVariable(name: "resources", arg: 2, scope: !2810, file: !3, line: 584, type: !120)
!2816 = !DILocalVariable(name: "attr_group", arg: 3, scope: !2810, file: !3, line: 585, type: !313)
!2817 = !DILocalVariable(name: "expose", arg: 4, scope: !2810, file: !3, line: 586, type: !161)
!2818 = !DILocation(line: 583, column: 56, scope: !2810)
!2819 = !DILocation(line: 584, column: 26, scope: !2810)
!2820 = !DILocation(line: 585, column: 38, scope: !2810)
!2821 = !DILocation(line: 586, column: 13, scope: !2810)
!2822 = !DILocation(line: 588, column: 6, scope: !2823)
!2823 = distinct !DILexicalBlock(scope: !2810, file: !3, line: 588, column: 6)
!2824 = !DILocation(line: 588, column: 6, scope: !2810)
!2825 = !DILocation(line: 589, column: 26, scope: !2823)
!2826 = !DILocation(line: 589, column: 32, scope: !2823)
!2827 = !DILocation(line: 589, column: 43, scope: !2823)
!2828 = !DILocation(line: 589, column: 3, scope: !2823)
!2829 = !DILocation(line: 591, column: 24, scope: !2823)
!2830 = !DILocation(line: 591, column: 30, scope: !2823)
!2831 = !DILocation(line: 591, column: 41, scope: !2823)
!2832 = !DILocation(line: 591, column: 3, scope: !2823)
!2833 = !DILocation(line: 592, column: 1, scope: !2810)
!2834 = distinct !DISubprogram(name: "acpi_power_wakeup_list_init", scope: !3, file: !3, line: 611, type: !2835, scopeLine: 612, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2837)
!2835 = !DISubroutineType(types: !2836)
!2836 = !{!46, !120, !1070}
!2837 = !{!2838, !2839, !2840, !2841, !2842, !2845, !2848, !2849}
!2838 = !DILocalVariable(name: "list", arg: 1, scope: !2834, file: !3, line: 611, type: !120)
!2839 = !DILocalVariable(name: "system_level_p", arg: 2, scope: !2834, file: !3, line: 611, type: !1070)
!2840 = !DILocalVariable(name: "entry", scope: !2834, file: !3, line: 613, type: !112)
!2841 = !DILocalVariable(name: "system_level", scope: !2834, file: !3, line: 614, type: !46)
!2842 = !DILocalVariable(name: "__mptr", scope: !2843, file: !3, line: 616, type: !111)
!2843 = distinct !DILexicalBlock(scope: !2844, file: !3, line: 616, column: 2)
!2844 = distinct !DILexicalBlock(scope: !2834, file: !3, line: 616, column: 2)
!2845 = !DILocalVariable(name: "resource", scope: !2846, file: !3, line: 617, type: !123)
!2846 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 616, column: 41)
!2847 = distinct !DILexicalBlock(scope: !2844, file: !3, line: 616, column: 2)
!2848 = !DILocalVariable(name: "state", scope: !2846, file: !3, line: 618, type: !220)
!2849 = !DILocalVariable(name: "__mptr", scope: !2850, file: !3, line: 616, type: !111)
!2850 = distinct !DILexicalBlock(scope: !2847, file: !3, line: 616, column: 2)
!2851 = !DILocation(line: 611, column: 51, scope: !2834)
!2852 = !DILocation(line: 611, column: 62, scope: !2834)
!2853 = !DILocation(line: 613, column: 2, scope: !2834)
!2854 = !DILocation(line: 613, column: 36, scope: !2834)
!2855 = !DILocation(line: 614, column: 2, scope: !2834)
!2856 = !DILocation(line: 614, column: 6, scope: !2834)
!2857 = !DILocation(line: 616, column: 2, scope: !2843)
!2858 = !DILocation(line: 616, column: 2, scope: !2844)
!2859 = !DILocation(line: 616, column: 2, scope: !2847)
!2860 = !DILocation(line: 617, column: 3, scope: !2846)
!2861 = !DILocation(line: 617, column: 31, scope: !2846)
!2862 = !DILocation(line: 617, column: 42, scope: !2846)
!2863 = !DILocation(line: 617, column: 49, scope: !2846)
!2864 = !DILocation(line: 618, column: 3, scope: !2846)
!2865 = !DILocation(line: 618, column: 6, scope: !2846)
!2866 = !DILocation(line: 620, column: 15, scope: !2846)
!2867 = !DILocation(line: 620, column: 25, scope: !2846)
!2868 = !DILocation(line: 620, column: 3, scope: !2846)
!2869 = !DILocation(line: 626, column: 8, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2846, file: !3, line: 626, column: 7)
!2871 = !DILocation(line: 626, column: 18, scope: !2870)
!2872 = !DILocation(line: 626, column: 28, scope: !2870)
!2873 = !DILocation(line: 627, column: 29, scope: !2870)
!2874 = !DILocation(line: 627, column: 8, scope: !2870)
!2875 = !DILocation(line: 627, column: 47, scope: !2870)
!2876 = !DILocation(line: 628, column: 7, scope: !2870)
!2877 = !DILocation(line: 628, column: 13, scope: !2870)
!2878 = !DILocation(line: 626, column: 7, scope: !2846)
!2879 = !DILocation(line: 629, column: 21, scope: !2870)
!2880 = !DILocation(line: 629, column: 4, scope: !2870)
!2881 = !DILocation(line: 631, column: 7, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2846, file: !3, line: 631, column: 7)
!2883 = !DILocation(line: 631, column: 22, scope: !2882)
!2884 = !DILocation(line: 631, column: 32, scope: !2882)
!2885 = !DILocation(line: 631, column: 20, scope: !2882)
!2886 = !DILocation(line: 631, column: 7, scope: !2846)
!2887 = !DILocation(line: 632, column: 19, scope: !2882)
!2888 = !DILocation(line: 632, column: 29, scope: !2882)
!2889 = !DILocation(line: 632, column: 17, scope: !2882)
!2890 = !DILocation(line: 632, column: 4, scope: !2882)
!2891 = !DILocation(line: 634, column: 17, scope: !2846)
!2892 = !DILocation(line: 634, column: 27, scope: !2846)
!2893 = !DILocation(line: 634, column: 3, scope: !2846)
!2894 = !DILocation(line: 635, column: 2, scope: !2847)
!2895 = !DILocation(line: 635, column: 2, scope: !2846)
!2896 = !DILocation(line: 616, column: 2, scope: !2850)
!2897 = distinct !{!2897, !2858, !2898, !2179, !2180}
!2898 = !DILocation(line: 635, column: 2, scope: !2844)
!2899 = !DILocation(line: 636, column: 20, scope: !2834)
!2900 = !DILocation(line: 636, column: 3, scope: !2834)
!2901 = !DILocation(line: 636, column: 18, scope: !2834)
!2902 = !DILocation(line: 638, column: 1, scope: !2834)
!2903 = !DILocation(line: 637, column: 2, scope: !2834)
!2904 = !DISubprogram(name: "mutex_lock", scope: !518, file: !518, line: 227, type: !2905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2905 = !DISubroutineType(types: !2906)
!2906 = !{null, !2907}
!2907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!2908 = distinct !DISubprogram(name: "acpi_power_get_state", scope: !3, file: !3, line: 206, type: !2909, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2911)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{!46, !123, !1804}
!2911 = !{!2912, !2913, !2914}
!2912 = !DILocalVariable(name: "resource", arg: 1, scope: !2908, file: !3, line: 206, type: !123)
!2913 = !DILocalVariable(name: "state", arg: 2, scope: !2908, file: !3, line: 206, type: !1804)
!2914 = !DILocalVariable(name: "ret", scope: !2915, file: !3, line: 209, type: !46)
!2915 = distinct !DILexicalBlock(scope: !2916, file: !3, line: 208, column: 60)
!2916 = distinct !DILexicalBlock(scope: !2908, file: !3, line: 208, column: 6)
!2917 = !DILocation(line: 206, column: 61, scope: !2908)
!2918 = !DILocation(line: 206, column: 75, scope: !2908)
!2919 = !DILocation(line: 208, column: 6, scope: !2916)
!2920 = !DILocation(line: 208, column: 16, scope: !2916)
!2921 = !DILocation(line: 208, column: 22, scope: !2916)
!2922 = !DILocation(line: 208, column: 6, scope: !2908)
!2923 = !DILocation(line: 209, column: 3, scope: !2915)
!2924 = !DILocation(line: 209, column: 7, scope: !2915)
!2925 = !DILocation(line: 211, column: 21, scope: !2915)
!2926 = !DILocation(line: 211, column: 31, scope: !2915)
!2927 = !DILocation(line: 211, column: 38, scope: !2915)
!2928 = !DILocation(line: 211, column: 47, scope: !2915)
!2929 = !DILocation(line: 211, column: 57, scope: !2915)
!2930 = !DILocation(line: 211, column: 9, scope: !2915)
!2931 = !DILocation(line: 211, column: 7, scope: !2915)
!2932 = !DILocation(line: 212, column: 7, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2915, file: !3, line: 212, column: 7)
!2934 = !DILocation(line: 212, column: 7, scope: !2915)
!2935 = !DILocation(line: 213, column: 11, scope: !2933)
!2936 = !DILocation(line: 213, column: 4, scope: !2933)
!2937 = !DILocation(line: 214, column: 2, scope: !2916)
!2938 = !DILocation(line: 214, column: 2, scope: !2915)
!2939 = !DILocation(line: 216, column: 11, scope: !2908)
!2940 = !DILocation(line: 216, column: 21, scope: !2908)
!2941 = !DILocation(line: 216, column: 3, scope: !2908)
!2942 = !DILocation(line: 216, column: 9, scope: !2908)
!2943 = !DILocation(line: 217, column: 2, scope: !2908)
!2944 = !DILocation(line: 218, column: 1, scope: !2908)
!2945 = distinct !DISubprogram(name: "__acpi_power_off", scope: !3, file: !3, line: 421, type: !2946, scopeLine: 422, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2948)
!2946 = !DISubroutineType(types: !2947)
!2947 = !{!46, !123}
!2948 = !{!2949, !2950, !2951}
!2949 = !DILocalVariable(name: "resource", arg: 1, scope: !2945, file: !3, line: 421, type: !123)
!2950 = !DILocalVariable(name: "handle", scope: !2945, file: !3, line: 423, type: !136)
!2951 = !DILocalVariable(name: "status", scope: !2945, file: !3, line: 424, type: !1986)
!2952 = !DILocation(line: 421, column: 57, scope: !2945)
!2953 = !DILocation(line: 423, column: 2, scope: !2945)
!2954 = !DILocation(line: 423, column: 14, scope: !2945)
!2955 = !DILocation(line: 423, column: 23, scope: !2945)
!2956 = !DILocation(line: 423, column: 33, scope: !2945)
!2957 = !DILocation(line: 423, column: 40, scope: !2945)
!2958 = !DILocation(line: 424, column: 2, scope: !2945)
!2959 = !DILocation(line: 424, column: 14, scope: !2945)
!2960 = !DILocation(line: 426, column: 32, scope: !2945)
!2961 = !DILocation(line: 426, column: 11, scope: !2945)
!2962 = !DILocation(line: 426, column: 9, scope: !2945)
!2963 = !DILocation(line: 427, column: 6, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2945, file: !3, line: 427, column: 6)
!2965 = !DILocation(line: 427, column: 6, scope: !2945)
!2966 = !DILocation(line: 428, column: 3, scope: !2967)
!2967 = distinct !DILexicalBlock(scope: !2964, file: !3, line: 427, column: 28)
!2968 = !DILocation(line: 428, column: 13, scope: !2967)
!2969 = !DILocation(line: 428, column: 19, scope: !2967)
!2970 = !DILocation(line: 429, column: 3, scope: !2967)
!2971 = !DILocation(line: 432, column: 2, scope: !2945)
!2972 = !DILocation(line: 432, column: 12, scope: !2945)
!2973 = !DILocation(line: 432, column: 18, scope: !2945)
!2974 = !DILocation(line: 434, column: 2, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2976, file: !3, line: 434, column: 2)
!2976 = distinct !DILexicalBlock(scope: !2945, file: !3, line: 434, column: 2)
!2977 = !DILocation(line: 434, column: 2, scope: !2976)
!2978 = !DILocation(line: 436, column: 2, scope: !2945)
!2979 = !DILocation(line: 437, column: 1, scope: !2945)
!2980 = !DISubprogram(name: "mutex_unlock", scope: !518, file: !518, line: 246, type: !2905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2981 = distinct !DISubprogram(name: "acpi_device_sleep_wake", scope: !3, file: !3, line: 661, type: !2982, scopeLine: 663, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2984)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{!46, !1936, !46, !46, !46}
!2984 = !{!2985, !2986, !2987, !2988, !2989, !2991, !2996}
!2985 = !DILocalVariable(name: "dev", arg: 1, scope: !2981, file: !3, line: 661, type: !1936)
!2986 = !DILocalVariable(name: "enable", arg: 2, scope: !2981, file: !3, line: 662, type: !46)
!2987 = !DILocalVariable(name: "sleep_state", arg: 3, scope: !2981, file: !3, line: 662, type: !46)
!2988 = !DILocalVariable(name: "dev_state", arg: 4, scope: !2981, file: !3, line: 662, type: !46)
!2989 = !DILocalVariable(name: "in_arg", scope: !2981, file: !3, line: 664, type: !2990)
!2990 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1783, size: 576, elements: !261)
!2991 = !DILocalVariable(name: "arg_list", scope: !2981, file: !3, line: 665, type: !2992)
!2992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_list", file: !137, line: 956, size: 128, elements: !2993)
!2993 = !{!2994, !2995}
!2994 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2992, file: !137, line: 957, baseType: !130, size: 32)
!2995 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2992, file: !137, line: 958, baseType: !1782, size: 64, offset: 64)
!2996 = !DILocalVariable(name: "status", scope: !2981, file: !3, line: 666, type: !1986)
!2997 = !DILocation(line: 661, column: 48, scope: !2981)
!2998 = !DILocation(line: 662, column: 11, scope: !2981)
!2999 = !DILocation(line: 662, column: 23, scope: !2981)
!3000 = !DILocation(line: 662, column: 40, scope: !2981)
!3001 = !DILocation(line: 664, column: 2, scope: !2981)
!3002 = !DILocation(line: 664, column: 20, scope: !2981)
!3003 = !DILocation(line: 665, column: 2, scope: !2981)
!3004 = !DILocation(line: 665, column: 26, scope: !2981)
!3005 = !DILocation(line: 665, column: 37, scope: !2981)
!3006 = !DILocation(line: 665, column: 42, scope: !2981)
!3007 = !DILocation(line: 666, column: 2, scope: !2981)
!3008 = !DILocation(line: 666, column: 14, scope: !2981)
!3009 = !DILocation(line: 679, column: 2, scope: !2981)
!3010 = !DILocation(line: 679, column: 17, scope: !2981)
!3011 = !DILocation(line: 680, column: 28, scope: !2981)
!3012 = !DILocation(line: 680, column: 2, scope: !2981)
!3013 = !DILocation(line: 680, column: 20, scope: !2981)
!3014 = !DILocation(line: 680, column: 26, scope: !2981)
!3015 = !DILocation(line: 681, column: 2, scope: !2981)
!3016 = !DILocation(line: 681, column: 17, scope: !2981)
!3017 = !DILocation(line: 682, column: 28, scope: !2981)
!3018 = !DILocation(line: 682, column: 2, scope: !2981)
!3019 = !DILocation(line: 682, column: 20, scope: !2981)
!3020 = !DILocation(line: 682, column: 26, scope: !2981)
!3021 = !DILocation(line: 683, column: 2, scope: !2981)
!3022 = !DILocation(line: 683, column: 17, scope: !2981)
!3023 = !DILocation(line: 684, column: 28, scope: !2981)
!3024 = !DILocation(line: 684, column: 2, scope: !2981)
!3025 = !DILocation(line: 684, column: 20, scope: !2981)
!3026 = !DILocation(line: 684, column: 26, scope: !2981)
!3027 = !DILocation(line: 685, column: 32, scope: !2981)
!3028 = !DILocation(line: 685, column: 37, scope: !2981)
!3029 = !DILocation(line: 685, column: 11, scope: !2981)
!3030 = !DILocation(line: 685, column: 9, scope: !2981)
!3031 = !DILocation(line: 686, column: 6, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !2981, file: !3, line: 686, column: 6)
!3033 = !DILocation(line: 686, column: 6, scope: !2981)
!3034 = !DILocation(line: 687, column: 3, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 686, column: 28)
!3036 = !DILocation(line: 688, column: 13, scope: !3037)
!3037 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 688, column: 13)
!3038 = !DILocation(line: 688, column: 20, scope: !3037)
!3039 = !DILocation(line: 688, column: 13, scope: !3032)
!3040 = !DILocation(line: 689, column: 3, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3037, file: !3, line: 688, column: 37)
!3042 = !DILocation(line: 690, column: 3, scope: !3041)
!3043 = !DILocation(line: 690, column: 8, scope: !3041)
!3044 = !DILocation(line: 690, column: 15, scope: !3041)
!3045 = !DILocation(line: 690, column: 27, scope: !3041)
!3046 = !DILocation(line: 691, column: 3, scope: !3041)
!3047 = !DILocation(line: 695, column: 38, scope: !2981)
!3048 = !DILocation(line: 695, column: 43, scope: !2981)
!3049 = !DILocation(line: 695, column: 59, scope: !2981)
!3050 = !DILocation(line: 695, column: 11, scope: !2981)
!3051 = !DILocation(line: 695, column: 9, scope: !2981)
!3052 = !DILocation(line: 696, column: 6, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !2981, file: !3, line: 696, column: 6)
!3054 = !DILocation(line: 696, column: 27, scope: !3053)
!3055 = !DILocation(line: 696, column: 31, scope: !3053)
!3056 = !DILocation(line: 696, column: 38, scope: !3053)
!3057 = !DILocation(line: 696, column: 6, scope: !2981)
!3058 = !DILocation(line: 697, column: 3, scope: !3059)
!3059 = distinct !DILexicalBlock(scope: !3053, file: !3, line: 696, column: 56)
!3060 = !DILocation(line: 698, column: 3, scope: !3059)
!3061 = !DILocation(line: 698, column: 8, scope: !3059)
!3062 = !DILocation(line: 698, column: 15, scope: !3059)
!3063 = !DILocation(line: 698, column: 27, scope: !3059)
!3064 = !DILocation(line: 699, column: 3, scope: !3059)
!3065 = !DILocation(line: 702, column: 2, scope: !2981)
!3066 = !DILocation(line: 703, column: 1, scope: !2981)
!3067 = !DISubprogram(name: "acpi_evaluate_object", scope: !3068, file: !3068, line: 549, type: !3069, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3068 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!3069 = !DISubroutineType(types: !3070)
!3070 = !{!1986, !136, !3071, !3072, !3073}
!3071 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !137, line: 423, baseType: !260)
!3072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2992, size: 64)
!3073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!3074 = !DISubprogram(name: "acpi_handle_printk", scope: !3075, file: !3075, line: 1180, type: !3076, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3075 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "087557429ebf4c5c9ef14f260264aa7b")
!3076 = !DISubroutineType(types: !3077)
!3077 = !{null, !180, !136, !180, null}
!3078 = !DISubprogram(name: "acpi_execute_simple_method", scope: !85, file: !85, line: 43, type: !3079, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3079 = !DISubroutineType(types: !3080)
!3080 = !{!1986, !136, !260, !423}
!3081 = distinct !DISubprogram(name: "acpi_enable_wakeup_device_power", scope: !3, file: !3, line: 711, type: !3082, scopeLine: 712, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3084)
!3082 = !DISubroutineType(types: !3083)
!3083 = !{!46, !1936, !46}
!3084 = !{!3085, !3086, !3087, !3088}
!3085 = !DILocalVariable(name: "dev", arg: 1, scope: !3081, file: !3, line: 711, type: !1936)
!3086 = !DILocalVariable(name: "sleep_state", arg: 2, scope: !3081, file: !3, line: 711, type: !46)
!3087 = !DILocalVariable(name: "err", scope: !3081, file: !3, line: 713, type: !46)
!3088 = !DILabel(scope: !3081, name: "out", file: !3, line: 746)
!3089 = !DILocation(line: 711, column: 57, scope: !3081)
!3090 = !DILocation(line: 711, column: 66, scope: !3081)
!3091 = !DILocation(line: 713, column: 2, scope: !3081)
!3092 = !DILocation(line: 713, column: 6, scope: !3081)
!3093 = !DILocation(line: 715, column: 7, scope: !3094)
!3094 = distinct !DILexicalBlock(scope: !3081, file: !3, line: 715, column: 6)
!3095 = !DILocation(line: 715, column: 11, scope: !3094)
!3096 = !DILocation(line: 715, column: 15, scope: !3094)
!3097 = !DILocation(line: 715, column: 20, scope: !3094)
!3098 = !DILocation(line: 715, column: 27, scope: !3094)
!3099 = !DILocation(line: 715, column: 33, scope: !3094)
!3100 = !DILocation(line: 715, column: 6, scope: !3081)
!3101 = !DILocation(line: 716, column: 3, scope: !3094)
!3102 = !DILocation(line: 718, column: 2, scope: !3081)
!3103 = !DILocation(line: 723, column: 6, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3081, file: !3, line: 723, column: 6)
!3105 = !DILocation(line: 723, column: 11, scope: !3104)
!3106 = !DILocation(line: 723, column: 18, scope: !3104)
!3107 = !DILocation(line: 723, column: 31, scope: !3104)
!3108 = !DILocation(line: 723, column: 6, scope: !3081)
!3109 = !DILocation(line: 724, column: 3, scope: !3104)
!3110 = !DILocation(line: 726, column: 28, scope: !3081)
!3111 = !DILocation(line: 726, column: 33, scope: !3081)
!3112 = !DILocation(line: 726, column: 40, scope: !3081)
!3113 = !DILocation(line: 726, column: 8, scope: !3081)
!3114 = !DILocation(line: 726, column: 6, scope: !3081)
!3115 = !DILocation(line: 727, column: 6, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3081, file: !3, line: 727, column: 6)
!3117 = !DILocation(line: 727, column: 6, scope: !3081)
!3118 = !DILocation(line: 728, column: 3, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3120, file: !3, line: 728, column: 3)
!3120 = distinct !DILexicalBlock(scope: !3116, file: !3, line: 727, column: 11)
!3121 = !DILocation(line: 728, column: 3, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3119, file: !3, line: 728, column: 3)
!3123 = !DILocation(line: 729, column: 3, scope: !3120)
!3124 = !DILocation(line: 729, column: 8, scope: !3120)
!3125 = !DILocation(line: 729, column: 15, scope: !3120)
!3126 = !DILocation(line: 729, column: 27, scope: !3120)
!3127 = !DILocation(line: 730, column: 3, scope: !3120)
!3128 = !DILocation(line: 737, column: 31, scope: !3081)
!3129 = !DILocation(line: 737, column: 39, scope: !3081)
!3130 = !DILocation(line: 737, column: 8, scope: !3081)
!3131 = !DILocation(line: 737, column: 6, scope: !3081)
!3132 = !DILocation(line: 738, column: 6, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3081, file: !3, line: 738, column: 6)
!3134 = !DILocation(line: 738, column: 6, scope: !3081)
!3135 = !DILocation(line: 739, column: 24, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3133, file: !3, line: 738, column: 11)
!3137 = !DILocation(line: 739, column: 29, scope: !3136)
!3138 = !DILocation(line: 739, column: 36, scope: !3136)
!3139 = !DILocation(line: 739, column: 3, scope: !3136)
!3140 = !DILocation(line: 740, column: 3, scope: !3136)
!3141 = !DILocation(line: 740, column: 8, scope: !3136)
!3142 = !DILocation(line: 740, column: 15, scope: !3136)
!3143 = !DILocation(line: 740, column: 29, scope: !3136)
!3144 = !DILocation(line: 741, column: 3, scope: !3136)
!3145 = !DILocation(line: 744, column: 2, scope: !3081)
!3146 = !DILocation(line: 746, column: 2, scope: !3081)
!3147 = !DILocation(line: 747, column: 2, scope: !3081)
!3148 = !DILocation(line: 748, column: 9, scope: !3081)
!3149 = !DILocation(line: 748, column: 2, scope: !3081)
!3150 = !DILocation(line: 749, column: 1, scope: !3081)
!3151 = distinct !DISubprogram(name: "acpi_power_on_list", scope: !3, file: !3, line: 489, type: !3152, scopeLine: 490, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3154)
!3152 = !DISubroutineType(types: !3153)
!3153 = !{!46, !120}
!3154 = !{!3155, !3156, !3157, !3158, !3161, !3164, !3165, !3168}
!3155 = !DILocalVariable(name: "list", arg: 1, scope: !3151, file: !3, line: 489, type: !120)
!3156 = !DILocalVariable(name: "entry", scope: !3151, file: !3, line: 491, type: !112)
!3157 = !DILocalVariable(name: "result", scope: !3151, file: !3, line: 492, type: !46)
!3158 = !DILocalVariable(name: "__mptr", scope: !3159, file: !3, line: 494, type: !111)
!3159 = distinct !DILexicalBlock(scope: !3160, file: !3, line: 494, column: 2)
!3160 = distinct !DILexicalBlock(scope: !3151, file: !3, line: 494, column: 2)
!3161 = !DILocalVariable(name: "__mptr", scope: !3162, file: !3, line: 494, type: !111)
!3162 = distinct !DILexicalBlock(scope: !3163, file: !3, line: 494, column: 2)
!3163 = distinct !DILexicalBlock(scope: !3160, file: !3, line: 494, column: 2)
!3164 = !DILabel(scope: !3151, name: "err", file: !3, line: 501)
!3165 = !DILocalVariable(name: "__mptr", scope: !3166, file: !3, line: 502, type: !111)
!3166 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 502, column: 2)
!3167 = distinct !DILexicalBlock(scope: !3151, file: !3, line: 502, column: 2)
!3168 = !DILocalVariable(name: "__mptr", scope: !3169, file: !3, line: 502, type: !111)
!3169 = distinct !DILexicalBlock(scope: !3170, file: !3, line: 502, column: 2)
!3170 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 502, column: 2)
!3171 = !DILocation(line: 489, column: 49, scope: !3151)
!3172 = !DILocation(line: 491, column: 2, scope: !3151)
!3173 = !DILocation(line: 491, column: 36, scope: !3151)
!3174 = !DILocation(line: 492, column: 2, scope: !3151)
!3175 = !DILocation(line: 492, column: 6, scope: !3151)
!3176 = !DILocation(line: 494, column: 2, scope: !3159)
!3177 = !DILocation(line: 494, column: 2, scope: !3160)
!3178 = !DILocation(line: 494, column: 2, scope: !3163)
!3179 = !DILocation(line: 495, column: 26, scope: !3180)
!3180 = distinct !DILexicalBlock(scope: !3163, file: !3, line: 494, column: 41)
!3181 = !DILocation(line: 495, column: 33, scope: !3180)
!3182 = !DILocation(line: 495, column: 12, scope: !3180)
!3183 = !DILocation(line: 495, column: 10, scope: !3180)
!3184 = !DILocation(line: 496, column: 7, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3180, file: !3, line: 496, column: 7)
!3186 = !DILocation(line: 496, column: 7, scope: !3180)
!3187 = !DILocation(line: 497, column: 4, scope: !3185)
!3188 = !DILocation(line: 498, column: 2, scope: !3180)
!3189 = !DILocation(line: 494, column: 2, scope: !3162)
!3190 = distinct !{!3190, !3177, !3191, !2179, !2180}
!3191 = !DILocation(line: 498, column: 2, scope: !3160)
!3192 = !DILocation(line: 499, column: 2, scope: !3151)
!3193 = !DILocation(line: 501, column: 2, scope: !3151)
!3194 = !DILocation(line: 502, column: 2, scope: !3166)
!3195 = !DILocation(line: 502, column: 2, scope: !3167)
!3196 = !DILocation(line: 502, column: 2, scope: !3170)
!3197 = !DILocation(line: 503, column: 18, scope: !3170)
!3198 = !DILocation(line: 503, column: 25, scope: !3170)
!3199 = !DILocation(line: 503, column: 3, scope: !3170)
!3200 = !DILocation(line: 502, column: 2, scope: !3169)
!3201 = distinct !{!3201, !3195, !3202, !2179, !2180}
!3202 = !DILocation(line: 503, column: 33, scope: !3167)
!3203 = !DILocation(line: 505, column: 9, scope: !3151)
!3204 = !DILocation(line: 505, column: 2, scope: !3151)
!3205 = !DILocation(line: 506, column: 1, scope: !3151)
!3206 = !DISubprogram(name: "_dev_err", scope: !3207, file: !3207, line: 50, type: !3208, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3207 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!3208 = !DISubroutineType(types: !3209)
!3209 = !{null, !171, !180, null}
!3210 = distinct !DISubprogram(name: "acpi_power_off_list", scope: !3, file: !3, line: 470, type: !3152, scopeLine: 471, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3211)
!3211 = !{!3212, !3213, !3214, !3215, !3218, !3221, !3222, !3225}
!3212 = !DILocalVariable(name: "list", arg: 1, scope: !3210, file: !3, line: 470, type: !120)
!3213 = !DILocalVariable(name: "entry", scope: !3210, file: !3, line: 472, type: !112)
!3214 = !DILocalVariable(name: "result", scope: !3210, file: !3, line: 473, type: !46)
!3215 = !DILocalVariable(name: "__mptr", scope: !3216, file: !3, line: 475, type: !111)
!3216 = distinct !DILexicalBlock(scope: !3217, file: !3, line: 475, column: 2)
!3217 = distinct !DILexicalBlock(scope: !3210, file: !3, line: 475, column: 2)
!3218 = !DILocalVariable(name: "__mptr", scope: !3219, file: !3, line: 475, type: !111)
!3219 = distinct !DILexicalBlock(scope: !3220, file: !3, line: 475, column: 2)
!3220 = distinct !DILexicalBlock(scope: !3217, file: !3, line: 475, column: 2)
!3221 = !DILabel(scope: !3210, name: "err", file: !3, line: 482)
!3222 = !DILocalVariable(name: "__mptr", scope: !3223, file: !3, line: 483, type: !111)
!3223 = distinct !DILexicalBlock(scope: !3224, file: !3, line: 483, column: 2)
!3224 = distinct !DILexicalBlock(scope: !3210, file: !3, line: 483, column: 2)
!3225 = !DILocalVariable(name: "__mptr", scope: !3226, file: !3, line: 483, type: !111)
!3226 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 483, column: 2)
!3227 = distinct !DILexicalBlock(scope: !3224, file: !3, line: 483, column: 2)
!3228 = !DILocation(line: 470, column: 50, scope: !3210)
!3229 = !DILocation(line: 472, column: 2, scope: !3210)
!3230 = !DILocation(line: 472, column: 36, scope: !3210)
!3231 = !DILocation(line: 473, column: 2, scope: !3210)
!3232 = !DILocation(line: 473, column: 6, scope: !3210)
!3233 = !DILocation(line: 475, column: 2, scope: !3216)
!3234 = !DILocation(line: 475, column: 2, scope: !3217)
!3235 = !DILocation(line: 475, column: 2, scope: !3220)
!3236 = !DILocation(line: 476, column: 27, scope: !3237)
!3237 = distinct !DILexicalBlock(scope: !3220, file: !3, line: 475, column: 49)
!3238 = !DILocation(line: 476, column: 34, scope: !3237)
!3239 = !DILocation(line: 476, column: 12, scope: !3237)
!3240 = !DILocation(line: 476, column: 10, scope: !3237)
!3241 = !DILocation(line: 477, column: 7, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3237, file: !3, line: 477, column: 7)
!3243 = !DILocation(line: 477, column: 7, scope: !3237)
!3244 = !DILocation(line: 478, column: 4, scope: !3242)
!3245 = !DILocation(line: 479, column: 2, scope: !3237)
!3246 = !DILocation(line: 475, column: 2, scope: !3219)
!3247 = distinct !{!3247, !3234, !3248, !2179, !2180}
!3248 = !DILocation(line: 479, column: 2, scope: !3217)
!3249 = !DILocation(line: 480, column: 2, scope: !3210)
!3250 = !DILocation(line: 482, column: 2, scope: !3210)
!3251 = !DILocation(line: 483, column: 2, scope: !3223)
!3252 = !DILocation(line: 483, column: 2, scope: !3224)
!3253 = !DILocation(line: 483, column: 2, scope: !3227)
!3254 = !DILocation(line: 484, column: 17, scope: !3227)
!3255 = !DILocation(line: 484, column: 24, scope: !3227)
!3256 = !DILocation(line: 484, column: 3, scope: !3227)
!3257 = !DILocation(line: 483, column: 2, scope: !3226)
!3258 = distinct !{!3258, !3252, !3259, !2179, !2180}
!3259 = !DILocation(line: 484, column: 32, scope: !3224)
!3260 = !DILocation(line: 486, column: 9, scope: !3210)
!3261 = !DILocation(line: 486, column: 2, scope: !3210)
!3262 = !DILocation(line: 487, column: 1, scope: !3210)
!3263 = distinct !DISubprogram(name: "acpi_disable_wakeup_device_power", scope: !3, file: !3, line: 757, type: !1949, scopeLine: 758, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3264)
!3264 = !{!3265, !3266, !3267, !3268, !3271, !3274, !3276}
!3265 = !DILocalVariable(name: "dev", arg: 1, scope: !3263, file: !3, line: 757, type: !1936)
!3266 = !DILocalVariable(name: "entry", scope: !3263, file: !3, line: 759, type: !112)
!3267 = !DILocalVariable(name: "err", scope: !3263, file: !3, line: 760, type: !46)
!3268 = !DILocalVariable(name: "__mptr", scope: !3269, file: !3, line: 785, type: !111)
!3269 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 785, column: 2)
!3270 = distinct !DILexicalBlock(scope: !3263, file: !3, line: 785, column: 2)
!3271 = !DILocalVariable(name: "ret", scope: !3272, file: !3, line: 786, type: !46)
!3272 = distinct !DILexicalBlock(scope: !3273, file: !3, line: 785, column: 59)
!3273 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 785, column: 2)
!3274 = !DILocalVariable(name: "__mptr", scope: !3275, file: !3, line: 785, type: !111)
!3275 = distinct !DILexicalBlock(scope: !3273, file: !3, line: 785, column: 2)
!3276 = !DILabel(scope: !3263, name: "out", file: !3, line: 800)
!3277 = !DILocation(line: 757, column: 58, scope: !3263)
!3278 = !DILocation(line: 759, column: 2, scope: !3263)
!3279 = !DILocation(line: 759, column: 36, scope: !3263)
!3280 = !DILocation(line: 760, column: 2, scope: !3263)
!3281 = !DILocation(line: 760, column: 6, scope: !3263)
!3282 = !DILocation(line: 762, column: 7, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3263, file: !3, line: 762, column: 6)
!3284 = !DILocation(line: 762, column: 11, scope: !3283)
!3285 = !DILocation(line: 762, column: 15, scope: !3283)
!3286 = !DILocation(line: 762, column: 20, scope: !3283)
!3287 = !DILocation(line: 762, column: 27, scope: !3283)
!3288 = !DILocation(line: 762, column: 33, scope: !3283)
!3289 = !DILocation(line: 762, column: 6, scope: !3263)
!3290 = !DILocation(line: 763, column: 3, scope: !3283)
!3291 = !DILocation(line: 765, column: 2, scope: !3263)
!3292 = !DILocation(line: 771, column: 6, scope: !3293)
!3293 = distinct !DILexicalBlock(scope: !3263, file: !3, line: 771, column: 6)
!3294 = !DILocation(line: 771, column: 11, scope: !3293)
!3295 = !DILocation(line: 771, column: 18, scope: !3293)
!3296 = !DILocation(line: 771, column: 32, scope: !3293)
!3297 = !DILocation(line: 771, column: 6, scope: !3263)
!3298 = !DILocation(line: 772, column: 3, scope: !3293)
!3299 = !DILocation(line: 774, column: 8, scope: !3300)
!3300 = distinct !DILexicalBlock(scope: !3263, file: !3, line: 774, column: 6)
!3301 = !DILocation(line: 774, column: 13, scope: !3300)
!3302 = !DILocation(line: 774, column: 20, scope: !3300)
!3303 = !DILocation(line: 774, column: 6, scope: !3300)
!3304 = !DILocation(line: 774, column: 34, scope: !3300)
!3305 = !DILocation(line: 774, column: 6, scope: !3263)
!3306 = !DILocation(line: 775, column: 3, scope: !3300)
!3307 = !DILocation(line: 777, column: 31, scope: !3263)
!3308 = !DILocation(line: 777, column: 8, scope: !3263)
!3309 = !DILocation(line: 777, column: 6, scope: !3263)
!3310 = !DILocation(line: 778, column: 6, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3263, file: !3, line: 778, column: 6)
!3312 = !DILocation(line: 778, column: 6, scope: !3263)
!3313 = !DILocation(line: 779, column: 3, scope: !3311)
!3314 = !DILocation(line: 785, column: 2, scope: !3269)
!3315 = !DILocation(line: 785, column: 2, scope: !3270)
!3316 = !DILocation(line: 785, column: 2, scope: !3273)
!3317 = !DILocation(line: 786, column: 3, scope: !3272)
!3318 = !DILocation(line: 786, column: 7, scope: !3272)
!3319 = !DILocation(line: 788, column: 24, scope: !3272)
!3320 = !DILocation(line: 788, column: 31, scope: !3272)
!3321 = !DILocation(line: 788, column: 9, scope: !3272)
!3322 = !DILocation(line: 788, column: 7, scope: !3272)
!3323 = !DILocation(line: 789, column: 7, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3272, file: !3, line: 789, column: 7)
!3325 = !DILocation(line: 789, column: 11, scope: !3324)
!3326 = !DILocation(line: 789, column: 15, scope: !3324)
!3327 = !DILocation(line: 789, column: 7, scope: !3272)
!3328 = !DILocation(line: 790, column: 10, scope: !3324)
!3329 = !DILocation(line: 790, column: 8, scope: !3324)
!3330 = !DILocation(line: 790, column: 4, scope: !3324)
!3331 = !DILocation(line: 791, column: 2, scope: !3273)
!3332 = !DILocation(line: 791, column: 2, scope: !3272)
!3333 = !DILocation(line: 785, column: 2, scope: !3275)
!3334 = distinct !{!3334, !3315, !3335, !2179, !2180}
!3335 = !DILocation(line: 791, column: 2, scope: !3270)
!3336 = !DILocation(line: 792, column: 6, scope: !3337)
!3337 = distinct !DILexicalBlock(scope: !3263, file: !3, line: 792, column: 6)
!3338 = !DILocation(line: 792, column: 6, scope: !3263)
!3339 = !DILocation(line: 793, column: 3, scope: !3340)
!3340 = distinct !DILexicalBlock(scope: !3341, file: !3, line: 793, column: 3)
!3341 = distinct !DILexicalBlock(scope: !3337, file: !3, line: 792, column: 11)
!3342 = !DILocation(line: 793, column: 3, scope: !3343)
!3343 = distinct !DILexicalBlock(scope: !3340, file: !3, line: 793, column: 3)
!3344 = !DILocation(line: 794, column: 3, scope: !3341)
!3345 = !DILocation(line: 794, column: 8, scope: !3341)
!3346 = !DILocation(line: 794, column: 15, scope: !3341)
!3347 = !DILocation(line: 794, column: 27, scope: !3341)
!3348 = !DILocation(line: 795, column: 3, scope: !3341)
!3349 = !DILocation(line: 798, column: 2, scope: !3263)
!3350 = !DILocation(line: 800, column: 2, scope: !3263)
!3351 = !DILocation(line: 801, column: 2, scope: !3263)
!3352 = !DILocation(line: 802, column: 9, scope: !3263)
!3353 = !DILocation(line: 802, column: 2, scope: !3263)
!3354 = !DILocation(line: 803, column: 1, scope: !3263)
!3355 = distinct !DISubprogram(name: "acpi_power_off", scope: !3, file: !3, line: 460, type: !2946, scopeLine: 461, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3356)
!3356 = !{!3357, !3358}
!3357 = !DILocalVariable(name: "resource", arg: 1, scope: !3355, file: !3, line: 460, type: !123)
!3358 = !DILocalVariable(name: "result", scope: !3355, file: !3, line: 462, type: !46)
!3359 = !DILocation(line: 460, column: 55, scope: !3355)
!3360 = !DILocation(line: 462, column: 2, scope: !3355)
!3361 = !DILocation(line: 462, column: 6, scope: !3355)
!3362 = !DILocation(line: 464, column: 14, scope: !3355)
!3363 = !DILocation(line: 464, column: 24, scope: !3355)
!3364 = !DILocation(line: 464, column: 2, scope: !3355)
!3365 = !DILocation(line: 465, column: 35, scope: !3355)
!3366 = !DILocation(line: 465, column: 11, scope: !3355)
!3367 = !DILocation(line: 465, column: 9, scope: !3355)
!3368 = !DILocation(line: 466, column: 16, scope: !3355)
!3369 = !DILocation(line: 466, column: 26, scope: !3355)
!3370 = !DILocation(line: 466, column: 2, scope: !3355)
!3371 = !DILocation(line: 467, column: 9, scope: !3355)
!3372 = !DILocation(line: 468, column: 1, scope: !3355)
!3373 = !DILocation(line: 467, column: 2, scope: !3355)
!3374 = distinct !DISubprogram(name: "acpi_power_get_inferred_state", scope: !3, file: !3, line: 805, type: !3375, scopeLine: 806, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3377)
!3375 = !DISubroutineType(types: !3376)
!3376 = !{!46, !1936, !1070}
!3377 = !{!3378, !3379, !3380, !3381, !3382, !3383}
!3378 = !DILocalVariable(name: "device", arg: 1, scope: !3374, file: !3, line: 805, type: !1936)
!3379 = !DILocalVariable(name: "state", arg: 2, scope: !3374, file: !3, line: 805, type: !1070)
!3380 = !DILocalVariable(name: "list_state", scope: !3374, file: !3, line: 807, type: !220)
!3381 = !DILocalVariable(name: "result", scope: !3374, file: !3, line: 808, type: !46)
!3382 = !DILocalVariable(name: "i", scope: !3374, file: !3, line: 809, type: !46)
!3383 = !DILocalVariable(name: "list", scope: !3384, file: !3, line: 819, type: !120)
!3384 = distinct !DILexicalBlock(scope: !3385, file: !3, line: 818, column: 55)
!3385 = distinct !DILexicalBlock(scope: !3386, file: !3, line: 818, column: 2)
!3386 = distinct !DILexicalBlock(scope: !3374, file: !3, line: 818, column: 2)
!3387 = !DILocation(line: 805, column: 55, scope: !3374)
!3388 = !DILocation(line: 805, column: 68, scope: !3374)
!3389 = !DILocation(line: 807, column: 2, scope: !3374)
!3390 = !DILocation(line: 807, column: 5, scope: !3374)
!3391 = !DILocation(line: 808, column: 2, scope: !3374)
!3392 = !DILocation(line: 808, column: 6, scope: !3374)
!3393 = !DILocation(line: 809, column: 2, scope: !3374)
!3394 = !DILocation(line: 809, column: 6, scope: !3374)
!3395 = !DILocation(line: 811, column: 7, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3374, file: !3, line: 811, column: 6)
!3397 = !DILocation(line: 811, column: 14, scope: !3396)
!3398 = !DILocation(line: 811, column: 18, scope: !3396)
!3399 = !DILocation(line: 811, column: 6, scope: !3374)
!3400 = !DILocation(line: 812, column: 3, scope: !3396)
!3401 = !DILocation(line: 818, column: 9, scope: !3386)
!3402 = !DILocation(line: 818, column: 7, scope: !3386)
!3403 = !DILocation(line: 818, column: 26, scope: !3385)
!3404 = !DILocation(line: 818, column: 28, scope: !3385)
!3405 = !DILocation(line: 818, column: 2, scope: !3386)
!3406 = !DILocation(line: 819, column: 3, scope: !3384)
!3407 = !DILocation(line: 819, column: 21, scope: !3384)
!3408 = !DILocation(line: 819, column: 29, scope: !3384)
!3409 = !DILocation(line: 819, column: 37, scope: !3384)
!3410 = !DILocation(line: 819, column: 43, scope: !3384)
!3411 = !DILocation(line: 819, column: 50, scope: !3384)
!3412 = !DILocation(line: 819, column: 53, scope: !3384)
!3413 = !DILocation(line: 821, column: 18, scope: !3414)
!3414 = distinct !DILexicalBlock(scope: !3384, file: !3, line: 821, column: 7)
!3415 = !DILocation(line: 821, column: 7, scope: !3414)
!3416 = !DILocation(line: 821, column: 7, scope: !3384)
!3417 = !DILocation(line: 822, column: 4, scope: !3414)
!3418 = !DILocation(line: 824, column: 38, scope: !3384)
!3419 = !DILocation(line: 824, column: 12, scope: !3384)
!3420 = !DILocation(line: 824, column: 10, scope: !3384)
!3421 = !DILocation(line: 825, column: 7, scope: !3422)
!3422 = distinct !DILexicalBlock(scope: !3384, file: !3, line: 825, column: 7)
!3423 = !DILocation(line: 825, column: 7, scope: !3384)
!3424 = !DILocation(line: 826, column: 11, scope: !3422)
!3425 = !DILocation(line: 826, column: 4, scope: !3422)
!3426 = !DILocation(line: 828, column: 7, scope: !3427)
!3427 = distinct !DILexicalBlock(scope: !3384, file: !3, line: 828, column: 7)
!3428 = !DILocation(line: 828, column: 18, scope: !3427)
!3429 = !DILocation(line: 828, column: 7, scope: !3384)
!3430 = !DILocation(line: 829, column: 13, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3427, file: !3, line: 828, column: 51)
!3432 = !DILocation(line: 829, column: 5, scope: !3431)
!3433 = !DILocation(line: 829, column: 11, scope: !3431)
!3434 = !DILocation(line: 830, column: 4, scope: !3431)
!3435 = !DILocation(line: 832, column: 2, scope: !3385)
!3436 = !DILocation(line: 832, column: 2, scope: !3384)
!3437 = !DILocation(line: 818, column: 51, scope: !3385)
!3438 = !DILocation(line: 818, column: 2, scope: !3385)
!3439 = distinct !{!3439, !3405, !3440, !2179, !2180}
!3440 = !DILocation(line: 832, column: 2, scope: !3386)
!3441 = !DILocation(line: 834, column: 11, scope: !3374)
!3442 = !DILocation(line: 834, column: 19, scope: !3374)
!3443 = !DILocation(line: 834, column: 25, scope: !3374)
!3444 = !DILocation(line: 834, column: 52, scope: !3374)
!3445 = !DILocation(line: 834, column: 58, scope: !3374)
!3446 = !DILocation(line: 834, column: 3, scope: !3374)
!3447 = !DILocation(line: 834, column: 9, scope: !3374)
!3448 = !DILocation(line: 836, column: 2, scope: !3374)
!3449 = !DILocation(line: 837, column: 1, scope: !3374)
!3450 = distinct !DISubprogram(name: "list_empty", scope: !2183, file: !2183, line: 371, type: !3451, scopeLine: 372, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3455)
!3451 = !DISubroutineType(types: !3452)
!3452 = !{!46, !3453}
!3453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3454, size: 64)
!3454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!3455 = !{!3456}
!3456 = !DILocalVariable(name: "head", arg: 1, scope: !3450, file: !2183, line: 371, type: !3453)
!3457 = !DILocation(line: 371, column: 54, scope: !3450)
!3458 = !DILocation(line: 373, column: 9, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3450, file: !2183, line: 373, column: 9)
!3460 = !DILocation(line: 373, column: 9, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3459, file: !2183, line: 373, column: 9)
!3462 = !DILocation(line: 373, column: 34, scope: !3450)
!3463 = !DILocation(line: 373, column: 31, scope: !3450)
!3464 = !DILocation(line: 373, column: 2, scope: !3450)
!3465 = distinct !DISubprogram(name: "acpi_power_get_list_state", scope: !3, file: !3, line: 220, type: !3466, scopeLine: 221, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3468)
!3466 = !DISubroutineType(types: !3467)
!3467 = !{!46, !120, !1804}
!3468 = !{!3469, !3470, !3471, !3472, !3473, !3476, !3479, !3480}
!3469 = !DILocalVariable(name: "list", arg: 1, scope: !3465, file: !3, line: 220, type: !120)
!3470 = !DILocalVariable(name: "state", arg: 2, scope: !3465, file: !3, line: 220, type: !1804)
!3471 = !DILocalVariable(name: "entry", scope: !3465, file: !3, line: 222, type: !112)
!3472 = !DILocalVariable(name: "cur_state", scope: !3465, file: !3, line: 223, type: !220)
!3473 = !DILocalVariable(name: "__mptr", scope: !3474, file: !3, line: 229, type: !111)
!3474 = distinct !DILexicalBlock(scope: !3475, file: !3, line: 229, column: 2)
!3475 = distinct !DILexicalBlock(scope: !3465, file: !3, line: 229, column: 2)
!3476 = !DILocalVariable(name: "resource", scope: !3477, file: !3, line: 230, type: !123)
!3477 = distinct !DILexicalBlock(scope: !3478, file: !3, line: 229, column: 41)
!3478 = distinct !DILexicalBlock(scope: !3475, file: !3, line: 229, column: 2)
!3479 = !DILocalVariable(name: "result", scope: !3477, file: !3, line: 231, type: !46)
!3480 = !DILocalVariable(name: "__mptr", scope: !3481, file: !3, line: 229, type: !111)
!3481 = distinct !DILexicalBlock(scope: !3478, file: !3, line: 229, column: 2)
!3482 = !DILocation(line: 220, column: 56, scope: !3465)
!3483 = !DILocation(line: 220, column: 66, scope: !3465)
!3484 = !DILocation(line: 222, column: 2, scope: !3465)
!3485 = !DILocation(line: 222, column: 36, scope: !3465)
!3486 = !DILocation(line: 223, column: 2, scope: !3465)
!3487 = !DILocation(line: 223, column: 5, scope: !3465)
!3488 = !DILocation(line: 225, column: 7, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3465, file: !3, line: 225, column: 6)
!3490 = !DILocation(line: 225, column: 12, scope: !3489)
!3491 = !DILocation(line: 225, column: 16, scope: !3489)
!3492 = !DILocation(line: 225, column: 6, scope: !3465)
!3493 = !DILocation(line: 226, column: 3, scope: !3489)
!3494 = !DILocation(line: 229, column: 2, scope: !3474)
!3495 = !DILocation(line: 229, column: 2, scope: !3475)
!3496 = !DILocation(line: 229, column: 2, scope: !3478)
!3497 = !DILocation(line: 230, column: 3, scope: !3477)
!3498 = !DILocation(line: 230, column: 31, scope: !3477)
!3499 = !DILocation(line: 230, column: 42, scope: !3477)
!3500 = !DILocation(line: 230, column: 49, scope: !3477)
!3501 = !DILocation(line: 231, column: 3, scope: !3477)
!3502 = !DILocation(line: 231, column: 7, scope: !3477)
!3503 = !DILocation(line: 233, column: 15, scope: !3477)
!3504 = !DILocation(line: 233, column: 25, scope: !3477)
!3505 = !DILocation(line: 233, column: 3, scope: !3477)
!3506 = !DILocation(line: 234, column: 33, scope: !3477)
!3507 = !DILocation(line: 234, column: 12, scope: !3477)
!3508 = !DILocation(line: 234, column: 10, scope: !3477)
!3509 = !DILocation(line: 235, column: 17, scope: !3477)
!3510 = !DILocation(line: 235, column: 27, scope: !3477)
!3511 = !DILocation(line: 235, column: 3, scope: !3477)
!3512 = !DILocation(line: 236, column: 7, scope: !3513)
!3513 = distinct !DILexicalBlock(scope: !3477, file: !3, line: 236, column: 7)
!3514 = !DILocation(line: 236, column: 7, scope: !3477)
!3515 = !DILocation(line: 237, column: 11, scope: !3513)
!3516 = !DILocation(line: 237, column: 4, scope: !3513)
!3517 = !DILocation(line: 239, column: 7, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3477, file: !3, line: 239, column: 7)
!3519 = !DILocation(line: 239, column: 17, scope: !3518)
!3520 = !DILocation(line: 239, column: 7, scope: !3477)
!3521 = !DILocation(line: 240, column: 4, scope: !3518)
!3522 = !DILocation(line: 241, column: 2, scope: !3478)
!3523 = !DILocation(line: 241, column: 2, scope: !3477)
!3524 = !DILocation(line: 229, column: 2, scope: !3481)
!3525 = distinct !{!3525, !3495, !3526, !2179, !2180}
!3526 = !DILocation(line: 241, column: 2, scope: !3475)
!3527 = !DILocation(line: 243, column: 2, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3529, file: !3, line: 243, column: 2)
!3529 = distinct !DILexicalBlock(scope: !3465, file: !3, line: 243, column: 2)
!3530 = !DILocation(line: 243, column: 2, scope: !3529)
!3531 = !DILocation(line: 245, column: 11, scope: !3465)
!3532 = !DILocation(line: 245, column: 3, scope: !3465)
!3533 = !DILocation(line: 245, column: 9, scope: !3465)
!3534 = !DILocation(line: 246, column: 2, scope: !3465)
!3535 = !DILocation(line: 247, column: 1, scope: !3465)
!3536 = distinct !DISubprogram(name: "acpi_power_on_resources", scope: !3, file: !3, line: 839, type: !3082, scopeLine: 840, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3537)
!3537 = !{!3538, !3539}
!3538 = !DILocalVariable(name: "device", arg: 1, scope: !3536, file: !3, line: 839, type: !1936)
!3539 = !DILocalVariable(name: "state", arg: 2, scope: !3536, file: !3, line: 839, type: !46)
!3540 = !DILocation(line: 839, column: 49, scope: !3536)
!3541 = !DILocation(line: 839, column: 61, scope: !3536)
!3542 = !DILocation(line: 841, column: 7, scope: !3543)
!3543 = distinct !DILexicalBlock(scope: !3536, file: !3, line: 841, column: 6)
!3544 = !DILocation(line: 841, column: 14, scope: !3543)
!3545 = !DILocation(line: 841, column: 17, scope: !3543)
!3546 = !DILocation(line: 841, column: 23, scope: !3543)
!3547 = !DILocation(line: 841, column: 39, scope: !3543)
!3548 = !DILocation(line: 841, column: 42, scope: !3543)
!3549 = !DILocation(line: 841, column: 48, scope: !3543)
!3550 = !DILocation(line: 841, column: 6, scope: !3536)
!3551 = !DILocation(line: 842, column: 3, scope: !3543)
!3552 = !DILocation(line: 844, column: 29, scope: !3536)
!3553 = !DILocation(line: 844, column: 37, scope: !3536)
!3554 = !DILocation(line: 844, column: 43, scope: !3536)
!3555 = !DILocation(line: 844, column: 50, scope: !3536)
!3556 = !DILocation(line: 844, column: 57, scope: !3536)
!3557 = !DILocation(line: 844, column: 9, scope: !3536)
!3558 = !DILocation(line: 844, column: 2, scope: !3536)
!3559 = !DILocation(line: 845, column: 1, scope: !3536)
!3560 = distinct !DISubprogram(name: "acpi_power_transition", scope: !3, file: !3, line: 847, type: !3082, scopeLine: 848, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3561)
!3561 = !{!3562, !3563, !3564}
!3562 = !DILocalVariable(name: "device", arg: 1, scope: !3560, file: !3, line: 847, type: !1936)
!3563 = !DILocalVariable(name: "state", arg: 2, scope: !3560, file: !3, line: 847, type: !46)
!3564 = !DILocalVariable(name: "result", scope: !3560, file: !3, line: 849, type: !46)
!3565 = !DILocation(line: 847, column: 47, scope: !3560)
!3566 = !DILocation(line: 847, column: 59, scope: !3560)
!3567 = !DILocation(line: 849, column: 2, scope: !3560)
!3568 = !DILocation(line: 849, column: 6, scope: !3560)
!3569 = !DILocation(line: 851, column: 7, scope: !3570)
!3570 = distinct !DILexicalBlock(scope: !3560, file: !3, line: 851, column: 6)
!3571 = !DILocation(line: 851, column: 14, scope: !3570)
!3572 = !DILocation(line: 851, column: 18, scope: !3570)
!3573 = !DILocation(line: 851, column: 24, scope: !3570)
!3574 = !DILocation(line: 851, column: 41, scope: !3570)
!3575 = !DILocation(line: 851, column: 45, scope: !3570)
!3576 = !DILocation(line: 851, column: 51, scope: !3570)
!3577 = !DILocation(line: 851, column: 6, scope: !3560)
!3578 = !DILocation(line: 852, column: 3, scope: !3570)
!3579 = !DILocation(line: 854, column: 6, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3560, file: !3, line: 854, column: 6)
!3581 = !DILocation(line: 854, column: 14, scope: !3580)
!3582 = !DILocation(line: 854, column: 20, scope: !3580)
!3583 = !DILocation(line: 854, column: 29, scope: !3580)
!3584 = !DILocation(line: 854, column: 26, scope: !3580)
!3585 = !DILocation(line: 854, column: 35, scope: !3580)
!3586 = !DILocation(line: 854, column: 39, scope: !3580)
!3587 = !DILocation(line: 854, column: 47, scope: !3580)
!3588 = !DILocation(line: 854, column: 53, scope: !3580)
!3589 = !DILocation(line: 854, column: 6, scope: !3560)
!3590 = !DILocation(line: 855, column: 3, scope: !3580)
!3591 = !DILocation(line: 857, column: 7, scope: !3592)
!3592 = distinct !DILexicalBlock(scope: !3560, file: !3, line: 857, column: 6)
!3593 = !DILocation(line: 857, column: 15, scope: !3592)
!3594 = !DILocation(line: 857, column: 21, scope: !3592)
!3595 = !DILocation(line: 857, column: 27, scope: !3592)
!3596 = !DILocation(line: 858, column: 6, scope: !3592)
!3597 = !DILocation(line: 858, column: 10, scope: !3592)
!3598 = !DILocation(line: 858, column: 18, scope: !3592)
!3599 = !DILocation(line: 858, column: 24, scope: !3592)
!3600 = !DILocation(line: 858, column: 30, scope: !3592)
!3601 = !DILocation(line: 857, column: 6, scope: !3560)
!3602 = !DILocation(line: 859, column: 3, scope: !3592)
!3603 = !DILocation(line: 866, column: 6, scope: !3604)
!3604 = distinct !DILexicalBlock(scope: !3560, file: !3, line: 866, column: 6)
!3605 = !DILocation(line: 866, column: 12, scope: !3604)
!3606 = !DILocation(line: 866, column: 6, scope: !3560)
!3607 = !DILocation(line: 868, column: 5, scope: !3604)
!3608 = !DILocation(line: 868, column: 13, scope: !3604)
!3609 = !DILocation(line: 868, column: 19, scope: !3604)
!3610 = !DILocation(line: 868, column: 26, scope: !3604)
!3611 = !DILocation(line: 868, column: 33, scope: !3604)
!3612 = !DILocation(line: 867, column: 12, scope: !3604)
!3613 = !DILocation(line: 867, column: 10, scope: !3604)
!3614 = !DILocation(line: 867, column: 3, scope: !3604)
!3615 = !DILocation(line: 870, column: 7, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3560, file: !3, line: 870, column: 6)
!3617 = !DILocation(line: 870, column: 14, scope: !3616)
!3618 = !DILocation(line: 870, column: 17, scope: !3616)
!3619 = !DILocation(line: 870, column: 25, scope: !3616)
!3620 = !DILocation(line: 870, column: 31, scope: !3616)
!3621 = !DILocation(line: 870, column: 37, scope: !3616)
!3622 = !DILocation(line: 870, column: 6, scope: !3560)
!3623 = !DILocation(line: 872, column: 5, scope: !3616)
!3624 = !DILocation(line: 872, column: 13, scope: !3616)
!3625 = !DILocation(line: 872, column: 19, scope: !3616)
!3626 = !DILocation(line: 872, column: 26, scope: !3616)
!3627 = !DILocation(line: 872, column: 34, scope: !3616)
!3628 = !DILocation(line: 872, column: 40, scope: !3616)
!3629 = !DILocation(line: 872, column: 47, scope: !3616)
!3630 = !DILocation(line: 871, column: 3, scope: !3616)
!3631 = !DILocation(line: 875, column: 24, scope: !3560)
!3632 = !DILocation(line: 875, column: 54, scope: !3560)
!3633 = !DILocation(line: 875, column: 2, scope: !3560)
!3634 = !DILocation(line: 875, column: 10, scope: !3560)
!3635 = !DILocation(line: 875, column: 16, scope: !3560)
!3636 = !DILocation(line: 875, column: 22, scope: !3560)
!3637 = !DILocation(line: 877, column: 9, scope: !3560)
!3638 = !DILocation(line: 877, column: 2, scope: !3560)
!3639 = !DILocation(line: 878, column: 1, scope: !3560)
!3640 = !DISubprogram(name: "acpi_fetch_acpi_dev", scope: !85, file: !85, line: 813, type: !2023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3641 = distinct !DISubprogram(name: "kzalloc", scope: !101, file: !101, line: 719, type: !3642, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3644)
!3642 = !DISubroutineType(types: !3643)
!3643 = !{!111, !307, !1987}
!3644 = !{!3645, !3646}
!3645 = !DILocalVariable(name: "size", arg: 1, scope: !3641, file: !101, line: 719, type: !307)
!3646 = !DILocalVariable(name: "flags", arg: 2, scope: !3641, file: !101, line: 719, type: !1987)
!3647 = !DILocation(line: 719, column: 52, scope: !3641)
!3648 = !DILocation(line: 719, column: 64, scope: !3641)
!3649 = !DILocation(line: 721, column: 17, scope: !3641)
!3650 = !DILocation(line: 721, column: 23, scope: !3641)
!3651 = !DILocation(line: 721, column: 29, scope: !3641)
!3652 = !DILocation(line: 721, column: 9, scope: !3641)
!3653 = !DILocation(line: 721, column: 2, scope: !3641)
!3654 = !DISubprogram(name: "acpi_init_device_object", scope: !3655, file: !3655, line: 102, type: !3656, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3655 = !DIFile(filename: "drivers/acpi/internal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5cf5cbbce8a2c7457da3066f6da7b3bd")
!3656 = !DISubroutineType(types: !3657)
!3657 = !{null, !1936, !136, !46, !854}
!3658 = distinct !DISubprogram(name: "acpi_release_power_resource", scope: !3, file: !3, line: 880, type: !855, scopeLine: 881, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3659)
!3659 = !{!3660, !3661, !3662, !3664, !3665}
!3660 = !DILocalVariable(name: "dev", arg: 1, scope: !3658, file: !3, line: 880, type: !832)
!3661 = !DILocalVariable(name: "device", scope: !3658, file: !3, line: 882, type: !1936)
!3662 = !DILocalVariable(name: "__mptr", scope: !3663, file: !3, line: 882, type: !111)
!3663 = distinct !DILexicalBlock(scope: !3658, file: !3, line: 882, column: 31)
!3664 = !DILocalVariable(name: "resource", scope: !3658, file: !3, line: 883, type: !123)
!3665 = !DILocalVariable(name: "__mptr", scope: !3666, file: !3, line: 885, type: !111)
!3666 = distinct !DILexicalBlock(scope: !3658, file: !3, line: 885, column: 13)
!3667 = !DILocation(line: 880, column: 56, scope: !3658)
!3668 = !DILocation(line: 882, column: 2, scope: !3658)
!3669 = !DILocation(line: 882, column: 22, scope: !3658)
!3670 = !DILocation(line: 882, column: 31, scope: !3663)
!3671 = !DILocation(line: 882, column: 31, scope: !3658)
!3672 = !DILocation(line: 883, column: 2, scope: !3658)
!3673 = !DILocation(line: 883, column: 30, scope: !3658)
!3674 = !DILocation(line: 885, column: 13, scope: !3666)
!3675 = !DILocation(line: 885, column: 13, scope: !3658)
!3676 = !DILocation(line: 885, column: 11, scope: !3658)
!3677 = !DILocation(line: 887, column: 2, scope: !3658)
!3678 = !DILocation(line: 888, column: 12, scope: !3658)
!3679 = !DILocation(line: 888, column: 22, scope: !3658)
!3680 = !DILocation(line: 888, column: 2, scope: !3658)
!3681 = !DILocation(line: 889, column: 2, scope: !3658)
!3682 = !DILocation(line: 891, column: 21, scope: !3658)
!3683 = !DILocation(line: 891, column: 29, scope: !3658)
!3684 = !DILocation(line: 891, column: 2, scope: !3658)
!3685 = !DILocation(line: 892, column: 8, scope: !3658)
!3686 = !DILocation(line: 892, column: 2, scope: !3658)
!3687 = !DILocation(line: 893, column: 1, scope: !3658)
!3688 = !DISubprogram(name: "__mutex_init", scope: !518, file: !518, line: 121, type: !3689, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3689 = !DISubroutineType(types: !3690)
!3690 = !{null, !2907, !180, !3691}
!3691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!3692 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !2183, file: !2183, line: 35, type: !2147, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3693)
!3693 = !{!3694}
!3694 = !DILocalVariable(name: "list", arg: 1, scope: !3692, file: !2183, line: 35, type: !120)
!3695 = !DILocation(line: 35, column: 53, scope: !3692)
!3696 = !DILocation(line: 37, column: 2, scope: !3692)
!3697 = !DILocation(line: 37, column: 2, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3692, file: !2183, line: 37, column: 2)
!3699 = !DILocation(line: 37, column: 2, scope: !3700)
!3700 = distinct !DILexicalBlock(scope: !3698, file: !2183, line: 37, column: 2)
!3701 = !DILocation(line: 37, column: 2, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3698, file: !2183, line: 37, column: 2)
!3703 = !DILocation(line: 38, column: 2, scope: !3692)
!3704 = !DILocation(line: 38, column: 2, scope: !3705)
!3705 = distinct !DILexicalBlock(scope: !3692, file: !2183, line: 38, column: 2)
!3706 = !DILocation(line: 38, column: 2, scope: !3707)
!3707 = distinct !DILexicalBlock(scope: !3705, file: !2183, line: 38, column: 2)
!3708 = !DILocation(line: 38, column: 2, scope: !3709)
!3709 = distinct !DILexicalBlock(scope: !3705, file: !2183, line: 38, column: 2)
!3710 = !DILocation(line: 39, column: 1, scope: !3692)
!3711 = !DISubprogram(name: "strcpy", scope: !3712, file: !3712, line: 63, type: !3713, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3712 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!3713 = !DISubroutineType(types: !3714)
!3714 = !{!260, !260, !180}
!3715 = distinct !DISubprogram(name: "__acpi_power_on", scope: !3, file: !3, line: 362, type: !2946, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3716)
!3716 = !{!3717, !3718, !3719, !3720, !3721, !3724}
!3717 = !DILocalVariable(name: "resource", arg: 1, scope: !3715, file: !3, line: 362, type: !123)
!3718 = !DILocalVariable(name: "handle", scope: !3715, file: !3, line: 364, type: !136)
!3719 = !DILocalVariable(name: "dep", scope: !3715, file: !3, line: 365, type: !1990)
!3720 = !DILocalVariable(name: "status", scope: !3715, file: !3, line: 366, type: !1986)
!3721 = !DILocalVariable(name: "__mptr", scope: !3722, file: !3, line: 387, type: !111)
!3722 = distinct !DILexicalBlock(scope: !3723, file: !3, line: 387, column: 2)
!3723 = distinct !DILexicalBlock(scope: !3715, file: !3, line: 387, column: 2)
!3724 = !DILocalVariable(name: "__mptr", scope: !3725, file: !3, line: 387, type: !111)
!3725 = distinct !DILexicalBlock(scope: !3726, file: !3, line: 387, column: 2)
!3726 = distinct !DILexicalBlock(scope: !3723, file: !3, line: 387, column: 2)
!3727 = !DILocation(line: 362, column: 56, scope: !3715)
!3728 = !DILocation(line: 364, column: 2, scope: !3715)
!3729 = !DILocation(line: 364, column: 14, scope: !3715)
!3730 = !DILocation(line: 364, column: 23, scope: !3715)
!3731 = !DILocation(line: 364, column: 33, scope: !3715)
!3732 = !DILocation(line: 364, column: 40, scope: !3715)
!3733 = !DILocation(line: 365, column: 2, scope: !3715)
!3734 = !DILocation(line: 365, column: 38, scope: !3715)
!3735 = !DILocation(line: 366, column: 2, scope: !3715)
!3736 = !DILocation(line: 366, column: 14, scope: !3715)
!3737 = !DILocation(line: 368, column: 32, scope: !3715)
!3738 = !DILocation(line: 368, column: 11, scope: !3715)
!3739 = !DILocation(line: 368, column: 9, scope: !3715)
!3740 = !DILocation(line: 369, column: 6, scope: !3741)
!3741 = distinct !DILexicalBlock(scope: !3715, file: !3, line: 369, column: 6)
!3742 = !DILocation(line: 369, column: 6, scope: !3715)
!3743 = !DILocation(line: 370, column: 3, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3741, file: !3, line: 369, column: 28)
!3745 = !DILocation(line: 370, column: 13, scope: !3744)
!3746 = !DILocation(line: 370, column: 19, scope: !3744)
!3747 = !DILocation(line: 371, column: 3, scope: !3744)
!3748 = !DILocation(line: 374, column: 2, scope: !3715)
!3749 = !DILocation(line: 374, column: 12, scope: !3715)
!3750 = !DILocation(line: 374, column: 18, scope: !3715)
!3751 = !DILocation(line: 376, column: 2, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3753, file: !3, line: 376, column: 2)
!3753 = distinct !DILexicalBlock(scope: !3715, file: !3, line: 376, column: 2)
!3754 = !DILocation(line: 376, column: 2, scope: !3753)
!3755 = !DILocation(line: 383, column: 18, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3715, file: !3, line: 383, column: 6)
!3757 = !DILocation(line: 383, column: 28, scope: !3756)
!3758 = !DILocation(line: 383, column: 6, scope: !3756)
!3759 = !DILocation(line: 383, column: 40, scope: !3756)
!3760 = !DILocation(line: 384, column: 24, scope: !3756)
!3761 = !DILocation(line: 384, column: 34, scope: !3756)
!3762 = !DILocation(line: 384, column: 6, scope: !3756)
!3763 = !DILocation(line: 383, column: 6, scope: !3715)
!3764 = !DILocation(line: 385, column: 3, scope: !3756)
!3765 = !DILocation(line: 387, column: 2, scope: !3722)
!3766 = !DILocation(line: 387, column: 2, scope: !3723)
!3767 = !DILocation(line: 387, column: 2, scope: !3726)
!3768 = !DILocation(line: 390, column: 21, scope: !3769)
!3769 = distinct !DILexicalBlock(scope: !3726, file: !3, line: 387, column: 56)
!3770 = !DILocation(line: 390, column: 26, scope: !3769)
!3771 = !DILocation(line: 390, column: 3, scope: !3769)
!3772 = !DILocation(line: 391, column: 2, scope: !3769)
!3773 = !DILocation(line: 387, column: 2, scope: !3725)
!3774 = distinct !{!3774, !3766, !3775, !2179, !2180}
!3775 = !DILocation(line: 391, column: 2, scope: !3723)
!3776 = !DILocation(line: 393, column: 2, scope: !3715)
!3777 = !DILocation(line: 394, column: 1, scope: !3715)
!3778 = !DISubprogram(name: "acpi_tie_acpi_dev", scope: !3655, file: !3655, line: 104, type: !1949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3779 = !DISubprogram(name: "acpi_device_add", scope: !3655, file: !3655, line: 105, type: !1949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3780 = !DISubprogram(name: "device_create_file", scope: !26, file: !26, line: 259, type: !3781, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3781 = !DISubroutineType(types: !3782)
!3782 = !{!46, !832, !3783}
!3783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3784, size: 64)
!3784 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2096)
!3785 = distinct !DISubprogram(name: "acpi_power_sysfs_remove", scope: !3, file: !3, line: 906, type: !1939, scopeLine: 907, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3786)
!3786 = !{!3787}
!3787 = !DILocalVariable(name: "device", arg: 1, scope: !3785, file: !3, line: 906, type: !1936)
!3788 = !DILocation(line: 906, column: 57, scope: !3785)
!3789 = !DILocation(line: 908, column: 22, scope: !3785)
!3790 = !DILocation(line: 908, column: 30, scope: !3785)
!3791 = !DILocation(line: 908, column: 2, scope: !3785)
!3792 = !DILocation(line: 909, column: 1, scope: !3785)
!3793 = distinct !DISubprogram(name: "acpi_power_add_resource_to_list", scope: !3, file: !3, line: 911, type: !3794, scopeLine: 912, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3796)
!3794 = !DISubroutineType(types: !3795)
!3795 = !{null, !123}
!3796 = !{!3797, !3798, !3801, !3804, !3807}
!3797 = !DILocalVariable(name: "resource", arg: 1, scope: !3793, file: !3, line: 911, type: !123)
!3798 = !DILocalVariable(name: "r", scope: !3799, file: !3, line: 916, type: !123)
!3799 = distinct !DILexicalBlock(scope: !3800, file: !3, line: 915, column: 46)
!3800 = distinct !DILexicalBlock(scope: !3793, file: !3, line: 915, column: 6)
!3801 = !DILocalVariable(name: "__mptr", scope: !3802, file: !3, line: 918, type: !111)
!3802 = distinct !DILexicalBlock(scope: !3803, file: !3, line: 918, column: 3)
!3803 = distinct !DILexicalBlock(scope: !3799, file: !3, line: 918, column: 3)
!3804 = !DILocalVariable(name: "__mptr", scope: !3805, file: !3, line: 918, type: !111)
!3805 = distinct !DILexicalBlock(scope: !3806, file: !3, line: 918, column: 3)
!3806 = distinct !DILexicalBlock(scope: !3803, file: !3, line: 918, column: 3)
!3807 = !DILabel(scope: !3793, name: "out", file: !3, line: 926)
!3808 = !DILocation(line: 911, column: 73, scope: !3793)
!3809 = !DILocation(line: 913, column: 2, scope: !3793)
!3810 = !DILocation(line: 915, column: 7, scope: !3800)
!3811 = !DILocation(line: 915, column: 6, scope: !3793)
!3812 = !DILocation(line: 916, column: 3, scope: !3799)
!3813 = !DILocation(line: 916, column: 31, scope: !3799)
!3814 = !DILocation(line: 918, column: 3, scope: !3802)
!3815 = !DILocation(line: 918, column: 3, scope: !3803)
!3816 = !DILocation(line: 918, column: 3, scope: !3806)
!3817 = !DILocation(line: 919, column: 8, scope: !3818)
!3818 = distinct !DILexicalBlock(scope: !3806, file: !3, line: 919, column: 8)
!3819 = !DILocation(line: 919, column: 11, scope: !3818)
!3820 = !DILocation(line: 919, column: 19, scope: !3818)
!3821 = !DILocation(line: 919, column: 29, scope: !3818)
!3822 = !DILocation(line: 919, column: 17, scope: !3818)
!3823 = !DILocation(line: 919, column: 8, scope: !3806)
!3824 = !DILocation(line: 920, column: 20, scope: !3825)
!3825 = distinct !DILexicalBlock(scope: !3818, file: !3, line: 919, column: 36)
!3826 = !DILocation(line: 920, column: 30, scope: !3825)
!3827 = !DILocation(line: 920, column: 42, scope: !3825)
!3828 = !DILocation(line: 920, column: 45, scope: !3825)
!3829 = !DILocation(line: 920, column: 5, scope: !3825)
!3830 = !DILocation(line: 921, column: 5, scope: !3825)
!3831 = !DILocation(line: 918, column: 3, scope: !3805)
!3832 = distinct !{!3832, !3815, !3833, !2179, !2180}
!3833 = !DILocation(line: 922, column: 4, scope: !3803)
!3834 = !DILocation(line: 923, column: 2, scope: !3800)
!3835 = !DILocation(line: 923, column: 2, scope: !3799)
!3836 = !DILocation(line: 924, column: 17, scope: !3793)
!3837 = !DILocation(line: 924, column: 27, scope: !3793)
!3838 = !DILocation(line: 924, column: 2, scope: !3793)
!3839 = !DILocation(line: 926, column: 2, scope: !3793)
!3840 = !DILocation(line: 927, column: 2, scope: !3793)
!3841 = !DILocation(line: 928, column: 1, scope: !3793)
!3842 = !DISubprogram(name: "acpi_device_add_finalize", scope: !3655, file: !3655, line: 108, type: !1939, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3843 = distinct !DISubprogram(name: "acpi_resume_power_resources", scope: !3, file: !3, line: 994, type: !1281, scopeLine: 995, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3844)
!3844 = !{!3845, !3846, !3849, !3852, !3853}
!3845 = !DILocalVariable(name: "resource", scope: !3843, file: !3, line: 996, type: !123)
!3846 = !DILocalVariable(name: "__mptr", scope: !3847, file: !3, line: 1000, type: !111)
!3847 = distinct !DILexicalBlock(scope: !3848, file: !3, line: 1000, column: 2)
!3848 = distinct !DILexicalBlock(scope: !3843, file: !3, line: 1000, column: 2)
!3849 = !DILocalVariable(name: "result", scope: !3850, file: !3, line: 1001, type: !46)
!3850 = distinct !DILexicalBlock(scope: !3851, file: !3, line: 1000, column: 70)
!3851 = distinct !DILexicalBlock(scope: !3848, file: !3, line: 1000, column: 2)
!3852 = !DILocalVariable(name: "state", scope: !3850, file: !3, line: 1002, type: !220)
!3853 = !DILocalVariable(name: "__mptr", scope: !3854, file: !3, line: 1000, type: !111)
!3854 = distinct !DILexicalBlock(scope: !3851, file: !3, line: 1000, column: 2)
!3855 = !DILocation(line: 996, column: 2, scope: !3843)
!3856 = !DILocation(line: 996, column: 30, scope: !3843)
!3857 = !DILocation(line: 998, column: 2, scope: !3843)
!3858 = !DILocation(line: 1000, column: 2, scope: !3847)
!3859 = !DILocation(line: 1000, column: 2, scope: !3848)
!3860 = !DILocation(line: 1000, column: 2, scope: !3851)
!3861 = !DILocation(line: 1001, column: 3, scope: !3850)
!3862 = !DILocation(line: 1001, column: 7, scope: !3850)
!3863 = !DILocation(line: 1002, column: 3, scope: !3850)
!3864 = !DILocation(line: 1002, column: 6, scope: !3850)
!3865 = !DILocation(line: 1004, column: 15, scope: !3850)
!3866 = !DILocation(line: 1004, column: 25, scope: !3850)
!3867 = !DILocation(line: 1004, column: 3, scope: !3850)
!3868 = !DILocation(line: 1006, column: 3, scope: !3850)
!3869 = !DILocation(line: 1006, column: 13, scope: !3850)
!3870 = !DILocation(line: 1006, column: 19, scope: !3850)
!3871 = !DILocation(line: 1007, column: 33, scope: !3850)
!3872 = !DILocation(line: 1007, column: 12, scope: !3850)
!3873 = !DILocation(line: 1007, column: 10, scope: !3850)
!3874 = !DILocation(line: 1008, column: 7, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3850, file: !3, line: 1008, column: 7)
!3876 = !DILocation(line: 1008, column: 7, scope: !3850)
!3877 = !DILocation(line: 1009, column: 18, scope: !3878)
!3878 = distinct !DILexicalBlock(scope: !3875, file: !3, line: 1008, column: 15)
!3879 = !DILocation(line: 1009, column: 28, scope: !3878)
!3880 = !DILocation(line: 1009, column: 4, scope: !3878)
!3881 = !DILocation(line: 1010, column: 4, scope: !3878)
!3882 = !DILocation(line: 1013, column: 7, scope: !3883)
!3883 = distinct !DILexicalBlock(scope: !3850, file: !3, line: 1013, column: 7)
!3884 = !DILocation(line: 1013, column: 13, scope: !3883)
!3885 = !DILocation(line: 1014, column: 7, scope: !3883)
!3886 = !DILocation(line: 1014, column: 10, scope: !3883)
!3887 = !DILocation(line: 1014, column: 20, scope: !3883)
!3888 = !DILocation(line: 1013, column: 7, scope: !3850)
!3889 = !DILocation(line: 1015, column: 4, scope: !3890)
!3890 = distinct !DILexicalBlock(scope: !3891, file: !3, line: 1015, column: 4)
!3891 = distinct !DILexicalBlock(scope: !3892, file: !3, line: 1015, column: 4)
!3892 = distinct !DILexicalBlock(scope: !3883, file: !3, line: 1014, column: 31)
!3893 = !DILocation(line: 1015, column: 4, scope: !3891)
!3894 = !DILocation(line: 1016, column: 20, scope: !3892)
!3895 = !DILocation(line: 1016, column: 4, scope: !3892)
!3896 = !DILocation(line: 1017, column: 3, scope: !3892)
!3897 = !DILocation(line: 1019, column: 17, scope: !3850)
!3898 = !DILocation(line: 1019, column: 27, scope: !3850)
!3899 = !DILocation(line: 1019, column: 3, scope: !3850)
!3900 = !DILocation(line: 1020, column: 2, scope: !3851)
!3901 = !DILocation(line: 1020, column: 2, scope: !3850)
!3902 = !DILocation(line: 1000, column: 2, scope: !3854)
!3903 = distinct !{!3903, !3859, !3904, !2179, !2180}
!3904 = !DILocation(line: 1020, column: 2, scope: !3848)
!3905 = !DILocation(line: 1022, column: 2, scope: !3843)
!3906 = !DILocation(line: 1023, column: 1, scope: !3843)
!3907 = distinct !DISubprogram(name: "acpi_turn_off_unused_power_resources", scope: !3, file: !3, line: 1044, type: !1281, scopeLine: 1045, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3908)
!3908 = !{!3909, !3910, !3913}
!3909 = !DILocalVariable(name: "resource", scope: !3907, file: !3, line: 1046, type: !123)
!3910 = !DILocalVariable(name: "__mptr", scope: !3911, file: !3, line: 1053, type: !111)
!3911 = distinct !DILexicalBlock(scope: !3912, file: !3, line: 1053, column: 2)
!3912 = distinct !DILexicalBlock(scope: !3907, file: !3, line: 1053, column: 2)
!3913 = !DILocalVariable(name: "__mptr", scope: !3914, file: !3, line: 1053, type: !111)
!3914 = distinct !DILexicalBlock(scope: !3915, file: !3, line: 1053, column: 2)
!3915 = distinct !DILexicalBlock(scope: !3912, file: !3, line: 1053, column: 2)
!3916 = !DILocation(line: 1046, column: 2, scope: !3907)
!3917 = !DILocation(line: 1046, column: 30, scope: !3907)
!3918 = !DILocation(line: 1048, column: 6, scope: !3919)
!3919 = distinct !DILexicalBlock(scope: !3907, file: !3, line: 1048, column: 6)
!3920 = !DILocation(line: 1048, column: 6, scope: !3907)
!3921 = !DILocation(line: 1049, column: 3, scope: !3919)
!3922 = !DILocation(line: 1051, column: 2, scope: !3907)
!3923 = !DILocation(line: 1053, column: 2, scope: !3911)
!3924 = !DILocation(line: 1053, column: 2, scope: !3912)
!3925 = !DILocation(line: 1053, column: 2, scope: !3915)
!3926 = !DILocation(line: 1054, column: 15, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3915, file: !3, line: 1053, column: 78)
!3928 = !DILocation(line: 1054, column: 25, scope: !3927)
!3929 = !DILocation(line: 1054, column: 3, scope: !3927)
!3930 = !DILocation(line: 1056, column: 8, scope: !3931)
!3931 = distinct !DILexicalBlock(scope: !3927, file: !3, line: 1056, column: 7)
!3932 = !DILocation(line: 1056, column: 18, scope: !3931)
!3933 = !DILocation(line: 1056, column: 28, scope: !3931)
!3934 = !DILocation(line: 1057, column: 7, scope: !3931)
!3935 = !DILocation(line: 1057, column: 17, scope: !3931)
!3936 = !DILocation(line: 1057, column: 23, scope: !3931)
!3937 = !DILocation(line: 1056, column: 7, scope: !3927)
!3938 = !DILocation(line: 1058, column: 4, scope: !3939)
!3939 = distinct !DILexicalBlock(scope: !3940, file: !3, line: 1058, column: 4)
!3940 = distinct !DILexicalBlock(scope: !3941, file: !3, line: 1058, column: 4)
!3941 = distinct !DILexicalBlock(scope: !3931, file: !3, line: 1057, column: 56)
!3942 = !DILocation(line: 1058, column: 4, scope: !3940)
!3943 = !DILocation(line: 1059, column: 21, scope: !3941)
!3944 = !DILocation(line: 1059, column: 4, scope: !3941)
!3945 = !DILocation(line: 1060, column: 3, scope: !3941)
!3946 = !DILocation(line: 1062, column: 17, scope: !3927)
!3947 = !DILocation(line: 1062, column: 27, scope: !3927)
!3948 = !DILocation(line: 1062, column: 3, scope: !3927)
!3949 = !DILocation(line: 1063, column: 2, scope: !3927)
!3950 = !DILocation(line: 1053, column: 2, scope: !3914)
!3951 = distinct !{!3951, !3924, !3952, !2179, !2180}
!3952 = !DILocation(line: 1063, column: 2, scope: !3912)
!3953 = !DILocation(line: 1065, column: 2, scope: !3907)
!3954 = !DILocation(line: 1066, column: 1, scope: !3907)
!3955 = !DISubprogram(name: "dmi_check_system", scope: !3956, file: !3956, line: 100, type: !2122, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3956 = !DIFile(filename: "./include/linux/dmi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "584668c1a977c762cee0c948ef4e5d85")
!3957 = distinct !DISubprogram(name: "__list_del_entry", scope: !2183, file: !2183, line: 213, type: !2147, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3958)
!3958 = !{!3959}
!3959 = !DILocalVariable(name: "entry", arg: 1, scope: !3957, file: !2183, line: 213, type: !120)
!3960 = !DILocation(line: 213, column: 55, scope: !3957)
!3961 = !DILocation(line: 215, column: 30, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !3957, file: !2183, line: 215, column: 6)
!3963 = !DILocation(line: 215, column: 7, scope: !3962)
!3964 = !DILocation(line: 215, column: 6, scope: !3957)
!3965 = !DILocation(line: 216, column: 3, scope: !3962)
!3966 = !DILocation(line: 218, column: 13, scope: !3957)
!3967 = !DILocation(line: 218, column: 20, scope: !3957)
!3968 = !DILocation(line: 218, column: 26, scope: !3957)
!3969 = !DILocation(line: 218, column: 33, scope: !3957)
!3970 = !DILocation(line: 218, column: 2, scope: !3957)
!3971 = !DILocation(line: 219, column: 1, scope: !3957)
!3972 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !2183, file: !2183, line: 134, type: !3973, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3975)
!3973 = !DISubroutineType(types: !3974)
!3974 = !{!161, !120}
!3975 = !{!3976}
!3976 = !DILocalVariable(name: "entry", arg: 1, scope: !3972, file: !2183, line: 134, type: !120)
!3977 = !DILocation(line: 134, column: 61, scope: !3972)
!3978 = !DILocation(line: 136, column: 2, scope: !3972)
!3979 = distinct !DISubprogram(name: "__list_del", scope: !2183, file: !2183, line: 193, type: !3980, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3982)
!3980 = !DISubroutineType(types: !3981)
!3981 = !{null, !120, !120}
!3982 = !{!3983, !3984}
!3983 = !DILocalVariable(name: "prev", arg: 1, scope: !3979, file: !2183, line: 193, type: !120)
!3984 = !DILocalVariable(name: "next", arg: 2, scope: !3979, file: !2183, line: 193, type: !120)
!3985 = !DILocation(line: 193, column: 50, scope: !3979)
!3986 = !DILocation(line: 193, column: 75, scope: !3979)
!3987 = !DILocation(line: 195, column: 15, scope: !3979)
!3988 = !DILocation(line: 195, column: 2, scope: !3979)
!3989 = !DILocation(line: 195, column: 8, scope: !3979)
!3990 = !DILocation(line: 195, column: 13, scope: !3979)
!3991 = !DILocation(line: 196, column: 2, scope: !3979)
!3992 = !DILocation(line: 196, column: 2, scope: !3993)
!3993 = distinct !DILexicalBlock(scope: !3979, file: !2183, line: 196, column: 2)
!3994 = !DILocation(line: 196, column: 2, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3993, file: !2183, line: 196, column: 2)
!3996 = !DILocation(line: 196, column: 2, scope: !3997)
!3997 = distinct !DILexicalBlock(scope: !3993, file: !2183, line: 196, column: 2)
!3998 = !DILocation(line: 197, column: 1, scope: !3979)
!3999 = distinct !DISubprogram(name: "acpi_power_get_context", scope: !3, file: !3, line: 83, type: !4000, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4002)
!4000 = !DISubroutineType(types: !4001)
!4001 = !{!123, !136}
!4002 = !{!4003, !4004}
!4003 = !DILocalVariable(name: "handle", arg: 1, scope: !3999, file: !3, line: 83, type: !136)
!4004 = !DILocalVariable(name: "device", scope: !3999, file: !3, line: 85, type: !1936)
!4005 = !DILocation(line: 83, column: 71, scope: !3999)
!4006 = !DILocation(line: 85, column: 2, scope: !3999)
!4007 = !DILocation(line: 85, column: 22, scope: !3999)
!4008 = !DILocation(line: 85, column: 51, scope: !3999)
!4009 = !DILocation(line: 85, column: 31, scope: !3999)
!4010 = !DILocation(line: 87, column: 7, scope: !4011)
!4011 = distinct !DILexicalBlock(scope: !3999, file: !3, line: 87, column: 6)
!4012 = !DILocation(line: 87, column: 6, scope: !3999)
!4013 = !DILocation(line: 88, column: 3, scope: !4011)
!4014 = !DILocation(line: 90, column: 27, scope: !3999)
!4015 = !DILocation(line: 90, column: 9, scope: !3999)
!4016 = !DILocation(line: 90, column: 2, scope: !3999)
!4017 = !DILocation(line: 91, column: 1, scope: !3999)
!4018 = distinct !DISubprogram(name: "list_add_tail", scope: !2183, file: !2183, line: 181, type: !3980, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4019)
!4019 = !{!4020, !4021}
!4020 = !DILocalVariable(name: "new", arg: 1, scope: !4018, file: !2183, line: 181, type: !120)
!4021 = !DILocalVariable(name: "head", arg: 2, scope: !4018, file: !2183, line: 181, type: !120)
!4022 = !DILocation(line: 181, column: 52, scope: !4018)
!4023 = !DILocation(line: 181, column: 75, scope: !4018)
!4024 = !DILocation(line: 183, column: 13, scope: !4018)
!4025 = !DILocation(line: 183, column: 18, scope: !4018)
!4026 = !DILocation(line: 183, column: 24, scope: !4018)
!4027 = !DILocation(line: 183, column: 30, scope: !4018)
!4028 = !DILocation(line: 183, column: 2, scope: !4018)
!4029 = !DILocation(line: 184, column: 1, scope: !4018)
!4030 = distinct !DISubprogram(name: "to_power_resource", scope: !3, file: !3, line: 78, type: !4031, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4033)
!4031 = !DISubroutineType(types: !4032)
!4032 = !{!123, !1936}
!4033 = !{!4034, !4035}
!4034 = !DILocalVariable(name: "device", arg: 1, scope: !4030, file: !3, line: 78, type: !1936)
!4035 = !DILocalVariable(name: "__mptr", scope: !4036, file: !3, line: 80, type: !111)
!4036 = distinct !DILexicalBlock(scope: !4030, file: !3, line: 80, column: 9)
!4037 = !DILocation(line: 78, column: 67, scope: !4030)
!4038 = !DILocation(line: 80, column: 9, scope: !4036)
!4039 = !DILocation(line: 80, column: 9, scope: !4030)
!4040 = !DILocation(line: 80, column: 2, scope: !4030)
!4041 = distinct !DISubprogram(name: "__list_add", scope: !2183, file: !2183, line: 146, type: !4042, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4044)
!4042 = !DISubroutineType(types: !4043)
!4043 = !{null, !120, !120, !120}
!4044 = !{!4045, !4046, !4047}
!4045 = !DILocalVariable(name: "new", arg: 1, scope: !4041, file: !2183, line: 146, type: !120)
!4046 = !DILocalVariable(name: "prev", arg: 2, scope: !4041, file: !2183, line: 147, type: !120)
!4047 = !DILocalVariable(name: "next", arg: 3, scope: !4041, file: !2183, line: 148, type: !120)
!4048 = !DILocation(line: 146, column: 49, scope: !4041)
!4049 = !DILocation(line: 147, column: 28, scope: !4041)
!4050 = !DILocation(line: 148, column: 28, scope: !4041)
!4051 = !DILocation(line: 150, column: 24, scope: !4052)
!4052 = distinct !DILexicalBlock(scope: !4041, file: !2183, line: 150, column: 6)
!4053 = !DILocation(line: 150, column: 29, scope: !4052)
!4054 = !DILocation(line: 150, column: 35, scope: !4052)
!4055 = !DILocation(line: 150, column: 7, scope: !4052)
!4056 = !DILocation(line: 150, column: 6, scope: !4041)
!4057 = !DILocation(line: 151, column: 3, scope: !4052)
!4058 = !DILocation(line: 153, column: 15, scope: !4041)
!4059 = !DILocation(line: 153, column: 2, scope: !4041)
!4060 = !DILocation(line: 153, column: 8, scope: !4041)
!4061 = !DILocation(line: 153, column: 13, scope: !4041)
!4062 = !DILocation(line: 154, column: 14, scope: !4041)
!4063 = !DILocation(line: 154, column: 2, scope: !4041)
!4064 = !DILocation(line: 154, column: 7, scope: !4041)
!4065 = !DILocation(line: 154, column: 12, scope: !4041)
!4066 = !DILocation(line: 155, column: 14, scope: !4041)
!4067 = !DILocation(line: 155, column: 2, scope: !4041)
!4068 = !DILocation(line: 155, column: 7, scope: !4041)
!4069 = !DILocation(line: 155, column: 12, scope: !4041)
!4070 = !DILocation(line: 156, column: 2, scope: !4041)
!4071 = !DILocation(line: 156, column: 2, scope: !4072)
!4072 = distinct !DILexicalBlock(scope: !4041, file: !2183, line: 156, column: 2)
!4073 = !DILocation(line: 156, column: 2, scope: !4074)
!4074 = distinct !DILexicalBlock(scope: !4072, file: !2183, line: 156, column: 2)
!4075 = !DILocation(line: 156, column: 2, scope: !4076)
!4076 = distinct !DILexicalBlock(scope: !4072, file: !2183, line: 156, column: 2)
!4077 = !DILocation(line: 157, column: 1, scope: !4041)
!4078 = distinct !DISubprogram(name: "__list_add_valid", scope: !2183, file: !2183, line: 128, type: !4079, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4081)
!4079 = !DISubroutineType(types: !4080)
!4080 = !{!161, !120, !120, !120}
!4081 = !{!4082, !4083, !4084}
!4082 = !DILocalVariable(name: "new", arg: 1, scope: !4078, file: !2183, line: 128, type: !120)
!4083 = !DILocalVariable(name: "prev", arg: 2, scope: !4078, file: !2183, line: 129, type: !120)
!4084 = !DILocalVariable(name: "next", arg: 3, scope: !4078, file: !2183, line: 130, type: !120)
!4085 = !DILocation(line: 128, column: 55, scope: !4078)
!4086 = !DILocation(line: 129, column: 23, scope: !4078)
!4087 = !DILocation(line: 130, column: 23, scope: !4078)
!4088 = !DILocation(line: 132, column: 2, scope: !4078)
!4089 = distinct !DISubprogram(name: "acpi_power_expose_list", scope: !3, file: !3, line: 555, type: !4090, scopeLine: 558, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4092)
!4090 = !DISubroutineType(types: !4091)
!4091 = !{null, !1936, !120, !313}
!4092 = !{!4093, !4094, !4095, !4096, !4097, !4098, !4101, !4104}
!4093 = !DILocalVariable(name: "adev", arg: 1, scope: !4089, file: !3, line: 555, type: !1936)
!4094 = !DILocalVariable(name: "resources", arg: 2, scope: !4089, file: !3, line: 556, type: !120)
!4095 = !DILocalVariable(name: "attr_group", arg: 3, scope: !4089, file: !3, line: 557, type: !313)
!4096 = !DILocalVariable(name: "entry", scope: !4089, file: !3, line: 559, type: !112)
!4097 = !DILocalVariable(name: "ret", scope: !4089, file: !3, line: 560, type: !46)
!4098 = !DILocalVariable(name: "__mptr", scope: !4099, file: !3, line: 569, type: !111)
!4099 = distinct !DILexicalBlock(scope: !4100, file: !3, line: 569, column: 2)
!4100 = distinct !DILexicalBlock(scope: !4089, file: !3, line: 569, column: 2)
!4101 = !DILocalVariable(name: "res_dev", scope: !4102, file: !3, line: 570, type: !1936)
!4102 = distinct !DILexicalBlock(scope: !4103, file: !3, line: 569, column: 46)
!4103 = distinct !DILexicalBlock(scope: !4100, file: !3, line: 569, column: 2)
!4104 = !DILocalVariable(name: "__mptr", scope: !4105, file: !3, line: 569, type: !111)
!4105 = distinct !DILexicalBlock(scope: !4103, file: !3, line: 569, column: 2)
!4106 = !DILocation(line: 555, column: 56, scope: !4089)
!4107 = !DILocation(line: 556, column: 26, scope: !4089)
!4108 = !DILocation(line: 557, column: 38, scope: !4089)
!4109 = !DILocation(line: 559, column: 2, scope: !4089)
!4110 = !DILocation(line: 559, column: 36, scope: !4089)
!4111 = !DILocation(line: 560, column: 2, scope: !4089)
!4112 = !DILocation(line: 560, column: 6, scope: !4089)
!4113 = !DILocation(line: 562, column: 17, scope: !4114)
!4114 = distinct !DILexicalBlock(scope: !4089, file: !3, line: 562, column: 6)
!4115 = !DILocation(line: 562, column: 6, scope: !4114)
!4116 = !DILocation(line: 562, column: 6, scope: !4089)
!4117 = !DILocation(line: 563, column: 3, scope: !4114)
!4118 = !DILocation(line: 565, column: 28, scope: !4089)
!4119 = !DILocation(line: 565, column: 34, scope: !4089)
!4120 = !DILocation(line: 565, column: 38, scope: !4089)
!4121 = !DILocation(line: 565, column: 44, scope: !4089)
!4122 = !DILocation(line: 565, column: 8, scope: !4089)
!4123 = !DILocation(line: 565, column: 6, scope: !4089)
!4124 = !DILocation(line: 566, column: 6, scope: !4125)
!4125 = distinct !DILexicalBlock(scope: !4089, file: !3, line: 566, column: 6)
!4126 = !DILocation(line: 566, column: 6, scope: !4089)
!4127 = !DILocation(line: 567, column: 3, scope: !4125)
!4128 = !DILocation(line: 569, column: 2, scope: !4099)
!4129 = !DILocation(line: 569, column: 2, scope: !4100)
!4130 = !DILocation(line: 569, column: 2, scope: !4103)
!4131 = !DILocation(line: 570, column: 3, scope: !4102)
!4132 = !DILocation(line: 570, column: 23, scope: !4102)
!4133 = !DILocation(line: 570, column: 34, scope: !4102)
!4134 = !DILocation(line: 570, column: 41, scope: !4102)
!4135 = !DILocation(line: 570, column: 51, scope: !4102)
!4136 = !DILocation(line: 572, column: 34, scope: !4102)
!4137 = !DILocation(line: 572, column: 40, scope: !4102)
!4138 = !DILocation(line: 572, column: 44, scope: !4102)
!4139 = !DILocation(line: 573, column: 12, scope: !4102)
!4140 = !DILocation(line: 573, column: 24, scope: !4102)
!4141 = !DILocation(line: 574, column: 13, scope: !4102)
!4142 = !DILocation(line: 574, column: 22, scope: !4102)
!4143 = !DILocation(line: 574, column: 26, scope: !4102)
!4144 = !DILocation(line: 575, column: 22, scope: !4102)
!4145 = !DILocation(line: 575, column: 31, scope: !4102)
!4146 = !DILocation(line: 575, column: 12, scope: !4102)
!4147 = !DILocation(line: 572, column: 9, scope: !4102)
!4148 = !DILocation(line: 572, column: 7, scope: !4102)
!4149 = !DILocation(line: 576, column: 7, scope: !4150)
!4150 = distinct !DILexicalBlock(scope: !4102, file: !3, line: 576, column: 7)
!4151 = !DILocation(line: 576, column: 7, scope: !4102)
!4152 = !DILocation(line: 577, column: 25, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4150, file: !3, line: 576, column: 12)
!4154 = !DILocation(line: 577, column: 31, scope: !4153)
!4155 = !DILocation(line: 577, column: 42, scope: !4153)
!4156 = !DILocation(line: 577, column: 4, scope: !4153)
!4157 = !DILocation(line: 578, column: 4, scope: !4153)
!4158 = !DILocation(line: 580, column: 2, scope: !4103)
!4159 = !DILocation(line: 580, column: 2, scope: !4102)
!4160 = !DILocation(line: 569, column: 2, scope: !4105)
!4161 = distinct !{!4161, !4129, !4162, !2179, !2180}
!4162 = !DILocation(line: 580, column: 2, scope: !4100)
!4163 = !DILocation(line: 581, column: 1, scope: !4089)
!4164 = distinct !DISubprogram(name: "acpi_power_hide_list", scope: !3, file: !3, line: 536, type: !4090, scopeLine: 539, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4165)
!4165 = !{!4166, !4167, !4168, !4169, !4170, !4173, !4176}
!4166 = !DILocalVariable(name: "adev", arg: 1, scope: !4164, file: !3, line: 536, type: !1936)
!4167 = !DILocalVariable(name: "resources", arg: 2, scope: !4164, file: !3, line: 537, type: !120)
!4168 = !DILocalVariable(name: "attr_group", arg: 3, scope: !4164, file: !3, line: 538, type: !313)
!4169 = !DILocalVariable(name: "entry", scope: !4164, file: !3, line: 540, type: !112)
!4170 = !DILocalVariable(name: "__mptr", scope: !4171, file: !3, line: 545, type: !111)
!4171 = distinct !DILexicalBlock(scope: !4172, file: !3, line: 545, column: 2)
!4172 = distinct !DILexicalBlock(scope: !4164, file: !3, line: 545, column: 2)
!4173 = !DILocalVariable(name: "res_dev", scope: !4174, file: !3, line: 546, type: !1936)
!4174 = distinct !DILexicalBlock(scope: !4175, file: !3, line: 545, column: 54)
!4175 = distinct !DILexicalBlock(scope: !4172, file: !3, line: 545, column: 2)
!4176 = !DILocalVariable(name: "__mptr", scope: !4177, file: !3, line: 545, type: !111)
!4177 = distinct !DILexicalBlock(scope: !4175, file: !3, line: 545, column: 2)
!4178 = !DILocation(line: 536, column: 54, scope: !4164)
!4179 = !DILocation(line: 537, column: 24, scope: !4164)
!4180 = !DILocation(line: 538, column: 36, scope: !4164)
!4181 = !DILocation(line: 540, column: 2, scope: !4164)
!4182 = !DILocation(line: 540, column: 36, scope: !4164)
!4183 = !DILocation(line: 542, column: 17, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4164, file: !3, line: 542, column: 6)
!4185 = !DILocation(line: 542, column: 6, scope: !4184)
!4186 = !DILocation(line: 542, column: 6, scope: !4164)
!4187 = !DILocation(line: 543, column: 3, scope: !4184)
!4188 = !DILocation(line: 545, column: 2, scope: !4171)
!4189 = !DILocation(line: 545, column: 2, scope: !4172)
!4190 = !DILocation(line: 545, column: 2, scope: !4175)
!4191 = !DILocation(line: 546, column: 3, scope: !4174)
!4192 = !DILocation(line: 546, column: 23, scope: !4174)
!4193 = !DILocation(line: 546, column: 34, scope: !4174)
!4194 = !DILocation(line: 546, column: 41, scope: !4174)
!4195 = !DILocation(line: 546, column: 51, scope: !4174)
!4196 = !DILocation(line: 548, column: 33, scope: !4174)
!4197 = !DILocation(line: 548, column: 39, scope: !4174)
!4198 = !DILocation(line: 548, column: 43, scope: !4174)
!4199 = !DILocation(line: 549, column: 11, scope: !4174)
!4200 = !DILocation(line: 549, column: 23, scope: !4174)
!4201 = !DILocation(line: 550, column: 21, scope: !4174)
!4202 = !DILocation(line: 550, column: 30, scope: !4174)
!4203 = !DILocation(line: 550, column: 11, scope: !4174)
!4204 = !DILocation(line: 548, column: 3, scope: !4174)
!4205 = !DILocation(line: 551, column: 2, scope: !4175)
!4206 = !DILocation(line: 551, column: 2, scope: !4174)
!4207 = !DILocation(line: 545, column: 2, scope: !4177)
!4208 = distinct !{!4208, !4189, !4209, !2179, !2180}
!4209 = !DILocation(line: 551, column: 2, scope: !4172)
!4210 = !DILocation(line: 552, column: 22, scope: !4164)
!4211 = !DILocation(line: 552, column: 28, scope: !4164)
!4212 = !DILocation(line: 552, column: 32, scope: !4164)
!4213 = !DILocation(line: 552, column: 38, scope: !4164)
!4214 = !DILocation(line: 552, column: 2, scope: !4164)
!4215 = !DILocation(line: 553, column: 1, scope: !4164)
!4216 = !DISubprogram(name: "sysfs_create_group", scope: !286, file: !286, line: 307, type: !4217, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4217 = !DISubroutineType(types: !4218)
!4218 = !{!46, !185, !313}
!4219 = !DISubprogram(name: "sysfs_add_link_to_group", scope: !286, file: !286, line: 327, type: !4220, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4220 = !DISubroutineType(types: !4221)
!4221 = !{!46, !185, !180, !185, !180}
!4222 = distinct !DISubprogram(name: "dev_name", scope: !26, file: !26, line: 858, type: !4223, scopeLine: 859, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4225)
!4223 = !DISubroutineType(types: !4224)
!4224 = !{!180, !171}
!4225 = !{!4226}
!4226 = !DILocalVariable(name: "dev", arg: 1, scope: !4222, file: !26, line: 858, type: !171)
!4227 = !DILocation(line: 858, column: 57, scope: !4222)
!4228 = !DILocation(line: 861, column: 6, scope: !4229)
!4229 = distinct !DILexicalBlock(scope: !4222, file: !26, line: 861, column: 6)
!4230 = !DILocation(line: 861, column: 11, scope: !4229)
!4231 = !DILocation(line: 861, column: 6, scope: !4222)
!4232 = !DILocation(line: 862, column: 10, scope: !4229)
!4233 = !DILocation(line: 862, column: 15, scope: !4229)
!4234 = !DILocation(line: 862, column: 3, scope: !4229)
!4235 = !DILocation(line: 864, column: 23, scope: !4222)
!4236 = !DILocation(line: 864, column: 28, scope: !4222)
!4237 = !DILocation(line: 864, column: 9, scope: !4222)
!4238 = !DILocation(line: 864, column: 2, scope: !4222)
!4239 = !DILocation(line: 865, column: 1, scope: !4222)
!4240 = distinct !DISubprogram(name: "kobject_name", scope: !177, file: !177, line: 87, type: !248, scopeLine: 88, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4241)
!4241 = !{!4242}
!4242 = !DILocalVariable(name: "kobj", arg: 1, scope: !4240, file: !177, line: 87, type: !243)
!4243 = !DILocation(line: 87, column: 62, scope: !4240)
!4244 = !DILocation(line: 89, column: 9, scope: !4240)
!4245 = !DILocation(line: 89, column: 15, scope: !4240)
!4246 = !DILocation(line: 89, column: 2, scope: !4240)
!4247 = !DISubprogram(name: "sysfs_remove_link_from_group", scope: !286, file: !286, line: 329, type: !4248, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4248 = !DISubroutineType(types: !4249)
!4249 = !{null, !185, !180, !180}
!4250 = !DISubprogram(name: "sysfs_remove_group", scope: !286, file: !286, line: 315, type: !4251, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4251 = !DISubroutineType(types: !4252)
!4252 = !{null, !185, !313}
!4253 = distinct !DISubprogram(name: "__get_state", scope: !3, file: !3, line: 187, type: !4254, scopeLine: 188, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4256)
!4254 = !DISubroutineType(types: !4255)
!4255 = !{!46, !136, !1804}
!4256 = !{!4257, !4258, !4259, !4260, !4261}
!4257 = !DILocalVariable(name: "handle", arg: 1, scope: !4253, file: !3, line: 187, type: !136)
!4258 = !DILocalVariable(name: "state", arg: 2, scope: !4253, file: !3, line: 187, type: !1804)
!4259 = !DILocalVariable(name: "status", scope: !4253, file: !3, line: 189, type: !1986)
!4260 = !DILocalVariable(name: "sta", scope: !4253, file: !3, line: 190, type: !425)
!4261 = !DILocalVariable(name: "cur_state", scope: !4253, file: !3, line: 191, type: !220)
!4262 = !DILocation(line: 187, column: 36, scope: !4253)
!4263 = !DILocation(line: 187, column: 48, scope: !4253)
!4264 = !DILocation(line: 189, column: 2, scope: !4253)
!4265 = !DILocation(line: 189, column: 14, scope: !4253)
!4266 = !DILocation(line: 190, column: 2, scope: !4253)
!4267 = !DILocation(line: 190, column: 21, scope: !4253)
!4268 = !DILocation(line: 191, column: 2, scope: !4253)
!4269 = !DILocation(line: 191, column: 5, scope: !4253)
!4270 = !DILocation(line: 193, column: 33, scope: !4253)
!4271 = !DILocation(line: 193, column: 11, scope: !4253)
!4272 = !DILocation(line: 193, column: 9, scope: !4253)
!4273 = !DILocation(line: 194, column: 6, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4253, file: !3, line: 194, column: 6)
!4275 = !DILocation(line: 194, column: 6, scope: !4253)
!4276 = !DILocation(line: 195, column: 3, scope: !4274)
!4277 = !DILocation(line: 197, column: 14, scope: !4253)
!4278 = !DILocation(line: 197, column: 18, scope: !4253)
!4279 = !DILocation(line: 197, column: 12, scope: !4253)
!4280 = !DILocation(line: 199, column: 2, scope: !4281)
!4281 = distinct !DILexicalBlock(scope: !4282, file: !3, line: 199, column: 2)
!4282 = distinct !DILexicalBlock(scope: !4253, file: !3, line: 199, column: 2)
!4283 = !DILocation(line: 199, column: 2, scope: !4282)
!4284 = !DILocation(line: 202, column: 11, scope: !4253)
!4285 = !DILocation(line: 202, column: 3, scope: !4253)
!4286 = !DILocation(line: 202, column: 9, scope: !4253)
!4287 = !DILocation(line: 203, column: 2, scope: !4253)
!4288 = !DILocation(line: 204, column: 1, scope: !4253)
!4289 = !DISubprogram(name: "acpi_evaluate_integer", scope: !85, file: !85, line: 27, type: !4290, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4290 = !DISubroutineType(types: !4291)
!4291 = !{!1986, !136, !3071, !3072, !4292}
!4292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!4293 = distinct !DISubprogram(name: "acpi_power_on", scope: !3, file: !3, line: 411, type: !2946, scopeLine: 412, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4294)
!4294 = !{!4295, !4296}
!4295 = !DILocalVariable(name: "resource", arg: 1, scope: !4293, file: !3, line: 411, type: !123)
!4296 = !DILocalVariable(name: "result", scope: !4293, file: !3, line: 413, type: !46)
!4297 = !DILocation(line: 411, column: 54, scope: !4293)
!4298 = !DILocation(line: 413, column: 2, scope: !4293)
!4299 = !DILocation(line: 413, column: 6, scope: !4293)
!4300 = !DILocation(line: 415, column: 14, scope: !4293)
!4301 = !DILocation(line: 415, column: 24, scope: !4293)
!4302 = !DILocation(line: 415, column: 2, scope: !4293)
!4303 = !DILocation(line: 416, column: 34, scope: !4293)
!4304 = !DILocation(line: 416, column: 11, scope: !4293)
!4305 = !DILocation(line: 416, column: 9, scope: !4293)
!4306 = !DILocation(line: 417, column: 16, scope: !4293)
!4307 = !DILocation(line: 417, column: 26, scope: !4293)
!4308 = !DILocation(line: 417, column: 2, scope: !4293)
!4309 = !DILocation(line: 418, column: 9, scope: !4293)
!4310 = !DILocation(line: 419, column: 1, scope: !4293)
!4311 = !DILocation(line: 418, column: 2, scope: !4293)
!4312 = distinct !DISubprogram(name: "acpi_power_on_unlocked", scope: !3, file: !3, line: 396, type: !2946, scopeLine: 397, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4313)
!4313 = !{!4314, !4315}
!4314 = !DILocalVariable(name: "resource", arg: 1, scope: !4312, file: !3, line: 396, type: !123)
!4315 = !DILocalVariable(name: "result", scope: !4312, file: !3, line: 398, type: !46)
!4316 = !DILocation(line: 396, column: 63, scope: !4312)
!4317 = !DILocation(line: 398, column: 2, scope: !4312)
!4318 = !DILocation(line: 398, column: 6, scope: !4312)
!4319 = !DILocation(line: 400, column: 6, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4312, file: !3, line: 400, column: 6)
!4321 = !DILocation(line: 400, column: 16, scope: !4320)
!4322 = !DILocation(line: 400, column: 25, scope: !4320)
!4323 = !DILocation(line: 400, column: 6, scope: !4312)
!4324 = !DILocation(line: 401, column: 3, scope: !4325)
!4325 = distinct !DILexicalBlock(scope: !4326, file: !3, line: 401, column: 3)
!4326 = distinct !DILexicalBlock(scope: !4327, file: !3, line: 401, column: 3)
!4327 = distinct !DILexicalBlock(scope: !4320, file: !3, line: 400, column: 29)
!4328 = !DILocation(line: 401, column: 3, scope: !4326)
!4329 = !DILocation(line: 403, column: 2, scope: !4327)
!4330 = !DILocation(line: 404, column: 28, scope: !4331)
!4331 = distinct !DILexicalBlock(scope: !4320, file: !3, line: 403, column: 9)
!4332 = !DILocation(line: 404, column: 12, scope: !4331)
!4333 = !DILocation(line: 404, column: 10, scope: !4331)
!4334 = !DILocation(line: 405, column: 7, scope: !4335)
!4335 = distinct !DILexicalBlock(scope: !4331, file: !3, line: 405, column: 7)
!4336 = !DILocation(line: 405, column: 7, scope: !4331)
!4337 = !DILocation(line: 406, column: 4, scope: !4335)
!4338 = !DILocation(line: 406, column: 14, scope: !4335)
!4339 = !DILocation(line: 406, column: 23, scope: !4335)
!4340 = !DILocation(line: 408, column: 9, scope: !4312)
!4341 = !DILocation(line: 409, column: 1, scope: !4312)
!4342 = !DILocation(line: 408, column: 2, scope: !4312)
!4343 = distinct !DISubprogram(name: "acpi_power_off_unlocked", scope: !3, file: !3, line: 439, type: !2946, scopeLine: 440, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4344)
!4344 = !{!4345, !4346}
!4345 = !DILocalVariable(name: "resource", arg: 1, scope: !4343, file: !3, line: 439, type: !123)
!4346 = !DILocalVariable(name: "result", scope: !4343, file: !3, line: 441, type: !46)
!4347 = !DILocation(line: 439, column: 64, scope: !4343)
!4348 = !DILocation(line: 441, column: 2, scope: !4343)
!4349 = !DILocation(line: 441, column: 6, scope: !4343)
!4350 = !DILocation(line: 443, column: 7, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4343, file: !3, line: 443, column: 6)
!4352 = !DILocation(line: 443, column: 17, scope: !4351)
!4353 = !DILocation(line: 443, column: 6, scope: !4343)
!4354 = !DILocation(line: 444, column: 3, scope: !4355)
!4355 = distinct !DILexicalBlock(scope: !4356, file: !3, line: 444, column: 3)
!4356 = distinct !DILexicalBlock(scope: !4357, file: !3, line: 444, column: 3)
!4357 = distinct !DILexicalBlock(scope: !4351, file: !3, line: 443, column: 28)
!4358 = !DILocation(line: 444, column: 3, scope: !4356)
!4359 = !DILocation(line: 446, column: 3, scope: !4357)
!4360 = !DILocation(line: 449, column: 8, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !4343, file: !3, line: 449, column: 6)
!4362 = !DILocation(line: 449, column: 18, scope: !4361)
!4363 = !DILocation(line: 449, column: 6, scope: !4361)
!4364 = !DILocation(line: 449, column: 6, scope: !4343)
!4365 = !DILocation(line: 450, column: 3, scope: !4366)
!4366 = distinct !DILexicalBlock(scope: !4367, file: !3, line: 450, column: 3)
!4367 = distinct !DILexicalBlock(scope: !4368, file: !3, line: 450, column: 3)
!4368 = distinct !DILexicalBlock(scope: !4361, file: !3, line: 449, column: 29)
!4369 = !DILocation(line: 450, column: 3, scope: !4367)
!4370 = !DILocation(line: 452, column: 2, scope: !4368)
!4371 = !DILocation(line: 453, column: 29, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4361, file: !3, line: 452, column: 9)
!4373 = !DILocation(line: 453, column: 12, scope: !4372)
!4374 = !DILocation(line: 453, column: 10, scope: !4372)
!4375 = !DILocation(line: 454, column: 7, scope: !4376)
!4376 = distinct !DILexicalBlock(scope: !4372, file: !3, line: 454, column: 7)
!4377 = !DILocation(line: 454, column: 7, scope: !4372)
!4378 = !DILocation(line: 455, column: 4, scope: !4376)
!4379 = !DILocation(line: 455, column: 14, scope: !4376)
!4380 = !DILocation(line: 455, column: 23, scope: !4376)
!4381 = !DILocation(line: 457, column: 9, scope: !4343)
!4382 = !DILocation(line: 457, column: 2, scope: !4343)
!4383 = !DILocation(line: 458, column: 1, scope: !4343)
!4384 = distinct !DISubprogram(name: "kmalloc", scope: !101, file: !101, line: 591, type: !3642, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4385)
!4385 = !{!4386, !4387, !4388}
!4386 = !DILocalVariable(name: "size", arg: 1, scope: !4384, file: !101, line: 591, type: !307)
!4387 = !DILocalVariable(name: "flags", arg: 2, scope: !4384, file: !101, line: 591, type: !1987)
!4388 = !DILocalVariable(name: "index", scope: !4389, file: !101, line: 594, type: !7)
!4389 = distinct !DILexicalBlock(scope: !4390, file: !101, line: 593, column: 42)
!4390 = distinct !DILexicalBlock(scope: !4384, file: !101, line: 593, column: 6)
!4391 = !DILocation(line: 591, column: 61, scope: !4384)
!4392 = !DILocation(line: 591, column: 73, scope: !4384)
!4393 = !DILocation(line: 593, column: 27, scope: !4390)
!4394 = !DILocation(line: 593, column: 6, scope: !4390)
!4395 = !DILocation(line: 593, column: 33, scope: !4390)
!4396 = !DILocation(line: 593, column: 36, scope: !4390)
!4397 = !DILocation(line: 593, column: 6, scope: !4384)
!4398 = !DILocation(line: 594, column: 3, scope: !4389)
!4399 = !DILocation(line: 594, column: 16, scope: !4389)
!4400 = !DILocation(line: 596, column: 7, scope: !4401)
!4401 = distinct !DILexicalBlock(scope: !4389, file: !101, line: 596, column: 7)
!4402 = !DILocation(line: 596, column: 12, scope: !4401)
!4403 = !DILocation(line: 596, column: 7, scope: !4389)
!4404 = !DILocation(line: 597, column: 25, scope: !4401)
!4405 = !DILocation(line: 597, column: 31, scope: !4401)
!4406 = !DILocation(line: 597, column: 11, scope: !4401)
!4407 = !DILocation(line: 597, column: 4, scope: !4401)
!4408 = !DILocation(line: 599, column: 11, scope: !4389)
!4409 = !DILocation(line: 599, column: 9, scope: !4389)
!4410 = !DILocation(line: 601, column: 33, scope: !4389)
!4411 = !DILocation(line: 601, column: 40, scope: !4389)
!4412 = !DILocation(line: 601, column: 20, scope: !4389)
!4413 = !DILocation(line: 601, column: 5, scope: !4389)
!4414 = !DILocation(line: 601, column: 51, scope: !4389)
!4415 = !DILocation(line: 602, column: 5, scope: !4389)
!4416 = !DILocation(line: 602, column: 12, scope: !4389)
!4417 = !DILocation(line: 600, column: 10, scope: !4389)
!4418 = !DILocation(line: 600, column: 3, scope: !4389)
!4419 = !DILocation(line: 603, column: 2, scope: !4390)
!4420 = !DILocation(line: 604, column: 19, scope: !4384)
!4421 = !DILocation(line: 604, column: 25, scope: !4384)
!4422 = !DILocation(line: 604, column: 9, scope: !4384)
!4423 = !DILocation(line: 604, column: 2, scope: !4384)
!4424 = !DILocation(line: 605, column: 1, scope: !4384)
!4425 = !DISubprogram(name: "kmalloc_large", scope: !101, file: !101, line: 531, type: !3642, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4426 = distinct !DISubprogram(name: "__kmalloc_index", scope: !101, file: !101, line: 444, type: !4427, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4429)
!4427 = !DISubroutineType(types: !4428)
!4428 = !{!7, !307, !161}
!4429 = !{!4430, !4431}
!4430 = !DILocalVariable(name: "size", arg: 1, scope: !4426, file: !101, line: 444, type: !307)
!4431 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !4426, file: !101, line: 445, type: !161)
!4432 = !DILocation(line: 444, column: 60, scope: !4426)
!4433 = !DILocation(line: 445, column: 16, scope: !4426)
!4434 = !DILocation(line: 447, column: 7, scope: !4435)
!4435 = distinct !DILexicalBlock(scope: !4426, file: !101, line: 447, column: 6)
!4436 = !DILocation(line: 447, column: 6, scope: !4426)
!4437 = !DILocation(line: 448, column: 3, scope: !4435)
!4438 = !DILocation(line: 450, column: 6, scope: !4439)
!4439 = distinct !DILexicalBlock(scope: !4426, file: !101, line: 450, column: 6)
!4440 = !DILocation(line: 450, column: 11, scope: !4439)
!4441 = !DILocation(line: 450, column: 6, scope: !4426)
!4442 = !DILocation(line: 451, column: 3, scope: !4439)
!4443 = !DILocation(line: 453, column: 32, scope: !4444)
!4444 = distinct !DILexicalBlock(scope: !4426, file: !101, line: 453, column: 6)
!4445 = !DILocation(line: 453, column: 37, scope: !4444)
!4446 = !DILocation(line: 453, column: 42, scope: !4444)
!4447 = !DILocation(line: 453, column: 45, scope: !4444)
!4448 = !DILocation(line: 453, column: 50, scope: !4444)
!4449 = !DILocation(line: 453, column: 6, scope: !4426)
!4450 = !DILocation(line: 454, column: 3, scope: !4444)
!4451 = !DILocation(line: 455, column: 32, scope: !4452)
!4452 = distinct !DILexicalBlock(scope: !4426, file: !101, line: 455, column: 6)
!4453 = !DILocation(line: 455, column: 37, scope: !4452)
!4454 = !DILocation(line: 455, column: 43, scope: !4452)
!4455 = !DILocation(line: 455, column: 46, scope: !4452)
!4456 = !DILocation(line: 455, column: 51, scope: !4452)
!4457 = !DILocation(line: 455, column: 6, scope: !4426)
!4458 = !DILocation(line: 456, column: 3, scope: !4452)
!4459 = !DILocation(line: 457, column: 6, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !4426, file: !101, line: 457, column: 6)
!4461 = !DILocation(line: 457, column: 11, scope: !4460)
!4462 = !DILocation(line: 457, column: 6, scope: !4426)
!4463 = !DILocation(line: 457, column: 26, scope: !4460)
!4464 = !DILocation(line: 458, column: 6, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4426, file: !101, line: 458, column: 6)
!4466 = !DILocation(line: 458, column: 11, scope: !4465)
!4467 = !DILocation(line: 458, column: 6, scope: !4426)
!4468 = !DILocation(line: 458, column: 26, scope: !4465)
!4469 = !DILocation(line: 459, column: 6, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4426, file: !101, line: 459, column: 6)
!4471 = !DILocation(line: 459, column: 11, scope: !4470)
!4472 = !DILocation(line: 459, column: 6, scope: !4426)
!4473 = !DILocation(line: 459, column: 26, scope: !4470)
!4474 = !DILocation(line: 460, column: 6, scope: !4475)
!4475 = distinct !DILexicalBlock(scope: !4426, file: !101, line: 460, column: 6)
!4476 = !DILocation(line: 460, column: 11, scope: !4475)
!4477 = !DILocation(line: 460, column: 6, scope: !4426)
!4478 = !DILocation(line: 460, column: 26, scope: !4475)
!4479 = !DILocation(line: 461, column: 6, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4426, file: !101, line: 461, column: 6)
!4481 = !DILocation(line: 461, column: 11, scope: !4480)
!4482 = !DILocation(line: 461, column: 6, scope: !4426)
!4483 = !DILocation(line: 461, column: 26, scope: !4480)
!4484 = !DILocation(line: 462, column: 6, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4426, file: !101, line: 462, column: 6)
!4486 = !DILocation(line: 462, column: 11, scope: !4485)
!4487 = !DILocation(line: 462, column: 6, scope: !4426)
!4488 = !DILocation(line: 462, column: 26, scope: !4485)
!4489 = !DILocation(line: 463, column: 6, scope: !4490)
!4490 = distinct !DILexicalBlock(scope: !4426, file: !101, line: 463, column: 6)
!4491 = !DILocation(line: 463, column: 11, scope: !4490)
!4492 = !DILocation(line: 463, column: 6, scope: !4426)
!4493 = !DILocation(line: 463, column: 26, scope: !4490)
!4494 = !DILocation(line: 464, column: 6, scope: !4495)
!4495 = distinct !DILexicalBlock(scope: !4426, file: !101, line: 464, column: 6)
!4496 = !DILocation(line: 464, column: 11, scope: !4495)
!4497 = !DILocation(line: 464, column: 6, scope: !4426)
!4498 = !DILocation(line: 464, column: 26, scope: !4495)
!4499 = !DILocation(line: 465, column: 6, scope: !4500)
!4500 = distinct !DILexicalBlock(scope: !4426, file: !101, line: 465, column: 6)
!4501 = !DILocation(line: 465, column: 11, scope: !4500)
!4502 = !DILocation(line: 465, column: 6, scope: !4426)
!4503 = !DILocation(line: 465, column: 26, scope: !4500)
!4504 = !DILocation(line: 466, column: 6, scope: !4505)
!4505 = distinct !DILexicalBlock(scope: !4426, file: !101, line: 466, column: 6)
!4506 = !DILocation(line: 466, column: 11, scope: !4505)
!4507 = !DILocation(line: 466, column: 6, scope: !4426)
!4508 = !DILocation(line: 466, column: 26, scope: !4505)
!4509 = !DILocation(line: 467, column: 6, scope: !4510)
!4510 = distinct !DILexicalBlock(scope: !4426, file: !101, line: 467, column: 6)
!4511 = !DILocation(line: 467, column: 11, scope: !4510)
!4512 = !DILocation(line: 467, column: 6, scope: !4426)
!4513 = !DILocation(line: 467, column: 26, scope: !4510)
!4514 = !DILocation(line: 468, column: 6, scope: !4515)
!4515 = distinct !DILexicalBlock(scope: !4426, file: !101, line: 468, column: 6)
!4516 = !DILocation(line: 468, column: 11, scope: !4515)
!4517 = !DILocation(line: 468, column: 6, scope: !4426)
!4518 = !DILocation(line: 468, column: 26, scope: !4515)
!4519 = !DILocation(line: 469, column: 6, scope: !4520)
!4520 = distinct !DILexicalBlock(scope: !4426, file: !101, line: 469, column: 6)
!4521 = !DILocation(line: 469, column: 11, scope: !4520)
!4522 = !DILocation(line: 469, column: 6, scope: !4426)
!4523 = !DILocation(line: 469, column: 26, scope: !4520)
!4524 = !DILocation(line: 470, column: 6, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4426, file: !101, line: 470, column: 6)
!4526 = !DILocation(line: 470, column: 11, scope: !4525)
!4527 = !DILocation(line: 470, column: 6, scope: !4426)
!4528 = !DILocation(line: 470, column: 26, scope: !4525)
!4529 = !DILocation(line: 471, column: 6, scope: !4530)
!4530 = distinct !DILexicalBlock(scope: !4426, file: !101, line: 471, column: 6)
!4531 = !DILocation(line: 471, column: 11, scope: !4530)
!4532 = !DILocation(line: 471, column: 6, scope: !4426)
!4533 = !DILocation(line: 471, column: 26, scope: !4530)
!4534 = !DILocation(line: 472, column: 6, scope: !4535)
!4535 = distinct !DILexicalBlock(scope: !4426, file: !101, line: 472, column: 6)
!4536 = !DILocation(line: 472, column: 11, scope: !4535)
!4537 = !DILocation(line: 472, column: 6, scope: !4426)
!4538 = !DILocation(line: 472, column: 26, scope: !4535)
!4539 = !DILocation(line: 473, column: 6, scope: !4540)
!4540 = distinct !DILexicalBlock(scope: !4426, file: !101, line: 473, column: 6)
!4541 = !DILocation(line: 473, column: 11, scope: !4540)
!4542 = !DILocation(line: 473, column: 6, scope: !4426)
!4543 = !DILocation(line: 473, column: 26, scope: !4540)
!4544 = !DILocation(line: 474, column: 6, scope: !4545)
!4545 = distinct !DILexicalBlock(scope: !4426, file: !101, line: 474, column: 6)
!4546 = !DILocation(line: 474, column: 11, scope: !4545)
!4547 = !DILocation(line: 474, column: 6, scope: !4426)
!4548 = !DILocation(line: 474, column: 27, scope: !4545)
!4549 = !DILocation(line: 475, column: 6, scope: !4550)
!4550 = distinct !DILexicalBlock(scope: !4426, file: !101, line: 475, column: 6)
!4551 = !DILocation(line: 475, column: 11, scope: !4550)
!4552 = !DILocation(line: 475, column: 6, scope: !4426)
!4553 = !DILocation(line: 475, column: 32, scope: !4550)
!4554 = !DILocation(line: 477, column: 50, scope: !4555)
!4555 = distinct !DILexicalBlock(scope: !4426, file: !101, line: 477, column: 6)
!4556 = !DILocation(line: 477, column: 6, scope: !4426)
!4557 = !DILocation(line: 478, column: 3, scope: !4555)
!4558 = !DILocation(line: 478, column: 3, scope: !4559)
!4559 = distinct !DILexicalBlock(scope: !4560, file: !101, line: 478, column: 3)
!4560 = distinct !DILexicalBlock(scope: !4555, file: !101, line: 478, column: 3)
!4561 = !{i32 -2142539353}
!4562 = !DILocation(line: 478, column: 3, scope: !4560)
!4563 = !DILocation(line: 480, column: 3, scope: !4555)
!4564 = !DILocation(line: 480, column: 3, scope: !4565)
!4565 = distinct !DILexicalBlock(scope: !4555, file: !101, line: 480, column: 3)
!4566 = !DILocation(line: 480, column: 3, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4565, file: !101, line: 480, column: 3)
!4568 = !DILocation(line: 480, column: 3, scope: !4569)
!4569 = distinct !DILexicalBlock(scope: !4565, file: !101, line: 480, column: 3)
!4570 = !{i64 2152428146, i64 2152428175, i64 2152428221, i64 2152428279, i64 2152428333, i64 2152428387, i64 2152428442, i64 2152428473}
!4571 = !DILocation(line: 483, column: 2, scope: !4426)
!4572 = !DILocation(line: 484, column: 1, scope: !4426)
!4573 = !DISubprogram(name: "kmalloc_trace", scope: !101, file: !101, line: 525, type: !4574, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4574 = !DISubroutineType(types: !4575)
!4575 = !{!111, !4576, !1987, !307}
!4576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4577, size: 64)
!4577 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !4578, line: 11, flags: DIFlagFwdDecl)
!4578 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!4579 = distinct !DISubprogram(name: "kmalloc_type", scope: !101, file: !101, line: 401, type: !4580, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4582)
!4580 = !DISubroutineType(types: !4581)
!4581 = !{!100, !1987, !310}
!4582 = !{!4583, !4584}
!4583 = !DILocalVariable(name: "flags", arg: 1, scope: !4579, file: !101, line: 401, type: !1987)
!4584 = !DILocalVariable(name: "caller", arg: 2, scope: !4579, file: !101, line: 401, type: !310)
!4585 = !DILocation(line: 401, column: 67, scope: !4579)
!4586 = !DILocation(line: 401, column: 88, scope: !4579)
!4587 = !DILocation(line: 407, column: 6, scope: !4588)
!4588 = distinct !DILexicalBlock(scope: !4579, file: !101, line: 407, column: 6)
!4589 = !DILocation(line: 407, column: 6, scope: !4579)
!4590 = !DILocation(line: 413, column: 3, scope: !4588)
!4591 = !DILocation(line: 423, column: 38, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4579, file: !101, line: 423, column: 6)
!4593 = !DILocation(line: 423, column: 44, scope: !4592)
!4594 = !DILocation(line: 423, column: 6, scope: !4579)
!4595 = !DILocation(line: 424, column: 3, scope: !4592)
!4596 = !DILocation(line: 426, column: 3, scope: !4597)
!4597 = distinct !DILexicalBlock(scope: !4579, file: !101, line: 425, column: 6)
!4598 = !DILocation(line: 429, column: 1, scope: !4579)
!4599 = !DISubprogram(name: "__kmalloc", scope: !101, file: !101, line: 488, type: !3642, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4600 = !DISubprogram(name: "__compiletime_assert_196", scope: !101, file: !101, line: 478, type: !1281, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!4601 = !DISubprogram(name: "acpi_free_pnp_ids", scope: !3655, file: !3655, line: 109, type: !4602, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4602 = !DISubroutineType(types: !4603)
!4603 = !{null, !4604}
!4604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!4605 = distinct !DISubprogram(name: "list_is_singular", scope: !2183, file: !2183, line: 449, type: !3451, scopeLine: 450, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4606)
!4606 = !{!4607}
!4607 = !DILocalVariable(name: "head", arg: 1, scope: !4605, file: !2183, line: 449, type: !3453)
!4608 = !DILocation(line: 449, column: 60, scope: !4605)
!4609 = !DILocation(line: 451, column: 21, scope: !4605)
!4610 = !DILocation(line: 451, column: 10, scope: !4605)
!4611 = !DILocation(line: 451, column: 27, scope: !4605)
!4612 = !DILocation(line: 451, column: 31, scope: !4605)
!4613 = !DILocation(line: 451, column: 37, scope: !4605)
!4614 = !DILocation(line: 451, column: 45, scope: !4605)
!4615 = !DILocation(line: 451, column: 51, scope: !4605)
!4616 = !DILocation(line: 451, column: 42, scope: !4605)
!4617 = !DILocation(line: 0, scope: !4605)
!4618 = !DILocation(line: 451, column: 2, scope: !4605)
!4619 = distinct !DISubprogram(name: "pm_request_resume", scope: !4620, file: !4620, line: 382, type: !864, scopeLine: 383, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4621)
!4620 = !DIFile(filename: "./include/linux/pm_runtime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "95dc537c0e4be945b3dc143d0bbabcd4")
!4621 = !{!4622}
!4622 = !DILocalVariable(name: "dev", arg: 1, scope: !4619, file: !4620, line: 382, type: !832)
!4623 = !DILocation(line: 382, column: 52, scope: !4619)
!4624 = !DILocation(line: 384, column: 29, scope: !4619)
!4625 = !DILocation(line: 384, column: 9, scope: !4619)
!4626 = !DILocation(line: 384, column: 2, scope: !4619)
!4627 = !DISubprogram(name: "__pm_runtime_resume", scope: !4620, file: !4620, line: 74, type: !4628, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4628 = !DISubroutineType(types: !4629)
!4629 = !{!46, !832, !46}
!4630 = distinct !DISubprogram(name: "resource_in_use_show", scope: !3, file: !3, line: 895, type: !2101, scopeLine: 898, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !4631)
!4631 = !{!4632, !4633, !4634, !4635, !4636}
!4632 = !DILocalVariable(name: "dev", arg: 1, scope: !4630, file: !3, line: 895, type: !832)
!4633 = !DILocalVariable(name: "attr", arg: 2, scope: !4630, file: !3, line: 896, type: !2103)
!4634 = !DILocalVariable(name: "buf", arg: 3, scope: !4630, file: !3, line: 897, type: !260)
!4635 = !DILocalVariable(name: "resource", scope: !4630, file: !3, line: 899, type: !123)
!4636 = !DILocalVariable(name: "__mptr", scope: !4637, file: !3, line: 901, type: !111)
!4637 = distinct !DILexicalBlock(scope: !4630, file: !3, line: 901, column: 31)
!4638 = !DILocation(line: 895, column: 52, scope: !4630)
!4639 = !DILocation(line: 896, column: 34, scope: !4630)
!4640 = !DILocation(line: 897, column: 15, scope: !4630)
!4641 = !DILocation(line: 899, column: 2, scope: !4630)
!4642 = !DILocation(line: 899, column: 30, scope: !4630)
!4643 = !DILocation(line: 901, column: 31, scope: !4637)
!4644 = !DILocation(line: 901, column: 31, scope: !4630)
!4645 = !DILocation(line: 901, column: 13, scope: !4630)
!4646 = !DILocation(line: 901, column: 11, scope: !4630)
!4647 = !DILocation(line: 902, column: 17, scope: !4630)
!4648 = !DILocation(line: 902, column: 32, scope: !4630)
!4649 = !DILocation(line: 902, column: 42, scope: !4630)
!4650 = !DILocation(line: 902, column: 31, scope: !4630)
!4651 = !DILocation(line: 902, column: 30, scope: !4630)
!4652 = !DILocation(line: 902, column: 9, scope: !4630)
!4653 = !DILocation(line: 903, column: 1, scope: !4630)
!4654 = !DILocation(line: 902, column: 2, scope: !4630)
!4655 = !DISubprogram(name: "sprintf", scope: !4656, file: !4656, line: 10, type: !4657, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4656 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!4657 = !DISubroutineType(types: !4658)
!4658 = !{!46, !260, !180, null}
!4659 = !DISubprogram(name: "device_remove_file", scope: !26, file: !26, line: 261, type: !4660, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!4660 = !DISubroutineType(types: !4661)
!4661 = !{null, !832, !3783}
