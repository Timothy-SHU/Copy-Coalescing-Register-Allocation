; ModuleID = 'drivers/thermal/gov_step_wise.c'
source_filename = "drivers/thermal/gov_step_wise.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.thermal_governor = type { [20 x i8], ptr, ptr, ptr, %struct.list_head }
%struct.list_head = type { ptr, ptr }
%struct.tracepoint = type { ptr, %struct.static_key, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.static_key = type { %struct.atomic_t, %union.anon.2 }
%struct.atomic_t = type { i32 }
%union.anon.2 = type { i64 }
%struct.pcpu_hot = type { %union.anon.3 }
%union.anon.3 = type { %struct.anon.4, [16 x i8] }
%struct.anon.4 = type { ptr, i32, i32, i64, i64, ptr, i16, i8 }
%struct.static_call_key = type { ptr, %union.anon.5 }
%union.anon.5 = type { i64 }
%struct.cpumask = type { [1 x i64] }
%struct.thermal_zone_device = type { i32, [20 x i8], %struct.device, %struct.completion, %struct.attribute_group, ptr, ptr, ptr, i32, ptr, ptr, i32, i64, i64, i64, i32, i32, i32, i32, i32, i32, %struct.atomic_t, ptr, ptr, ptr, ptr, %struct.list_head, %struct.ida, %struct.mutex, %struct.list_head, %struct.delayed_work, i32, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
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
%struct.raw_spinlock = type { %struct.qspinlock }
%struct.qspinlock = type { %union.anon }
%union.anon = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.thermal_instance = type { i32, [20 x i8], ptr, ptr, ptr, i8, i64, i64, i64, [20 x i8], %struct.device_attribute, [20 x i8], %struct.device_attribute, %struct.list_head, %struct.list_head, i32, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.thermal_trip = type { i32, i32, i32, ptr }
%struct.thermal_cooling_device = type { i32, ptr, i64, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.thermal_cooling_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }

@thermal_gov_step_wise = internal global %struct.thermal_governor { [20 x i8] c"step_wise\00\00\00\00\00\00\00\00\00\00\00", ptr null, ptr null, ptr @step_wise_throttle, %struct.list_head zeroinitializer }, align 8, !dbg !0
@__thermal_table_entry_thermal_gov_step_wise = internal global ptr @thermal_gov_step_wise, section "__governor_thermal_table", align 8, !dbg !2045
@__tracepoint_thermal_zone_trip = external dso_local global %struct.tracepoint, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str = private unnamed_addr constant [32 x i8] c"drivers/thermal/thermal_trace.h\00", align 1, !dbg !2047
@trace_thermal_zone_trip.__UNIQUE_ID___addressable___SCK__tp_func_thermal_zone_trip221 = internal global ptr @__SCK__tp_func_thermal_zone_trip, section ".discard.addressable", align 8, !dbg !2050
@__SCK__tp_func_thermal_zone_trip = external dso_local global %struct.static_call_key, align 8
@trace_thermal_zone_trip.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace222 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !2080
@__SCK__preempt_schedule_notrace = external dso_local global %struct.static_call_key, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@llvm.compiler.used = appending global [3 x ptr] [ptr @__thermal_table_entry_thermal_gov_step_wise, ptr @trace_thermal_zone_trip.__UNIQUE_ID___addressable___SCK__tp_func_thermal_zone_trip221, ptr @trace_thermal_zone_trip.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace222], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @step_wise_throttle(ptr noundef %tz, i32 noundef %trip) #0 align 16 !dbg !2092 {
entry:
  %tz.addr = alloca ptr, align 8
  %trip.addr = alloca i32, align 4
  %instance = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !2094, metadata !DIExpression()), !dbg !2103
  store i32 %trip, ptr %trip.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %trip.addr, metadata !2095, metadata !DIExpression()), !dbg !2104
  call void @llvm.lifetime.start.p0(i64 8, ptr %instance) #11, !dbg !2105
  call void @llvm.dbg.declare(metadata ptr %instance, metadata !2096, metadata !DIExpression()), !dbg !2106
  br label %do.body, !dbg !2107

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %tz.addr, align 8, !dbg !2108
  %lock = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 28, !dbg !2108
  br label %do.cond, !dbg !2108

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2108

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %tz.addr, align 8, !dbg !2110
  %2 = load i32, ptr %trip.addr, align 4, !dbg !2111
  call void @thermal_zone_trip_update(ptr noundef %1, i32 noundef %2) #12, !dbg !2112
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !2113
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2097, metadata !DIExpression()), !dbg !2113
  %3 = load ptr, ptr %tz.addr, align 8, !dbg !2113
  %thermal_instances = getelementptr inbounds %struct.thermal_zone_device, ptr %3, i32 0, i32 26, !dbg !2113
  %next = getelementptr inbounds %struct.list_head, ptr %thermal_instances, i32 0, i32 0, !dbg !2113
  %4 = load ptr, ptr %next, align 8, !dbg !2113
  store ptr %4, ptr %__mptr, align 8, !dbg !2113
  %5 = load ptr, ptr %__mptr, align 8, !dbg !2113
  %add.ptr = getelementptr i8, ptr %5, i64 -192, !dbg !2113
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2113
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !2114
  %6 = load ptr, ptr %tmp, align 8, !dbg !2113
  store ptr %6, ptr %instance, align 8, !dbg !2114
  br label %for.cond, !dbg !2114

for.cond:                                         ; preds = %for.inc, %do.end
  %7 = load ptr, ptr %instance, align 8, !dbg !2115
  %tz_node = getelementptr inbounds %struct.thermal_instance, ptr %7, i32 0, i32 13, !dbg !2115
  %8 = load ptr, ptr %tz.addr, align 8, !dbg !2115
  %thermal_instances1 = getelementptr inbounds %struct.thermal_zone_device, ptr %8, i32 0, i32 26, !dbg !2115
  %cmp = icmp eq ptr %tz_node, %thermal_instances1, !dbg !2115
  %lnot = xor i1 %cmp, true, !dbg !2115
  br i1 %lnot, label %for.body, label %for.end, !dbg !2114

for.body:                                         ; preds = %for.cond
  %9 = load ptr, ptr %instance, align 8, !dbg !2116
  %cdev = getelementptr inbounds %struct.thermal_instance, ptr %9, i32 0, i32 3, !dbg !2117
  %10 = load ptr, ptr %cdev, align 8, !dbg !2117
  call void @thermal_cdev_update(ptr noundef %10) #12, !dbg !2118
  br label %for.inc, !dbg !2118

for.inc:                                          ; preds = %for.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #11, !dbg !2119
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !2100, metadata !DIExpression()), !dbg !2119
  %11 = load ptr, ptr %instance, align 8, !dbg !2119
  %tz_node3 = getelementptr inbounds %struct.thermal_instance, ptr %11, i32 0, i32 13, !dbg !2119
  %next4 = getelementptr inbounds %struct.list_head, ptr %tz_node3, i32 0, i32 0, !dbg !2119
  %12 = load ptr, ptr %next4, align 8, !dbg !2119
  store ptr %12, ptr %__mptr2, align 8, !dbg !2119
  %13 = load ptr, ptr %__mptr2, align 8, !dbg !2119
  %add.ptr6 = getelementptr i8, ptr %13, i64 -192, !dbg !2119
  store ptr %add.ptr6, ptr %tmp5, align 8, !dbg !2119
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #11, !dbg !2115
  %14 = load ptr, ptr %tmp5, align 8, !dbg !2119
  store ptr %14, ptr %instance, align 8, !dbg !2115
  br label %for.cond, !dbg !2115, !llvm.loop !2120

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %instance) #11, !dbg !2124
  ret i32 0, !dbg !2125
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @thermal_zone_trip_update(ptr noundef %tz, i32 noundef %trip_id) #0 align 16 !dbg !2126 {
entry:
  %tz.addr = alloca ptr, align 8
  %trip_id.addr = alloca i32, align 4
  %trip = alloca ptr, align 8
  %trend = alloca i32, align 4
  %instance = alloca ptr, align 8
  %throttle = alloca i8, align 1
  %old_target = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !2130, metadata !DIExpression()), !dbg !2143
  store i32 %trip_id, ptr %trip_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %trip_id.addr, metadata !2131, metadata !DIExpression()), !dbg !2144
  call void @llvm.lifetime.start.p0(i64 8, ptr %trip) #11, !dbg !2145
  call void @llvm.dbg.declare(metadata ptr %trip, metadata !2132, metadata !DIExpression()), !dbg !2146
  %0 = load ptr, ptr %tz.addr, align 8, !dbg !2147
  %trips = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 10, !dbg !2148
  %1 = load ptr, ptr %trips, align 8, !dbg !2148
  %2 = load i32, ptr %trip_id.addr, align 4, !dbg !2149
  %idxprom = sext i32 %2 to i64, !dbg !2147
  %arrayidx = getelementptr %struct.thermal_trip, ptr %1, i64 %idxprom, !dbg !2147
  store ptr %arrayidx, ptr %trip, align 8, !dbg !2146
  call void @llvm.lifetime.start.p0(i64 4, ptr %trend) #11, !dbg !2150
  call void @llvm.dbg.declare(metadata ptr %trend, metadata !2133, metadata !DIExpression()), !dbg !2151
  call void @llvm.lifetime.start.p0(i64 8, ptr %instance) #11, !dbg !2152
  call void @llvm.dbg.declare(metadata ptr %instance, metadata !2134, metadata !DIExpression()), !dbg !2153
  call void @llvm.lifetime.start.p0(i64 1, ptr %throttle) #11, !dbg !2154
  call void @llvm.dbg.declare(metadata ptr %throttle, metadata !2135, metadata !DIExpression()), !dbg !2155
  store i8 0, ptr %throttle, align 1, !dbg !2155
  call void @llvm.lifetime.start.p0(i64 4, ptr %old_target) #11, !dbg !2156
  call void @llvm.dbg.declare(metadata ptr %old_target, metadata !2136, metadata !DIExpression()), !dbg !2157
  %3 = load ptr, ptr %tz.addr, align 8, !dbg !2158
  %4 = load i32, ptr %trip_id.addr, align 4, !dbg !2159
  %call = call i32 @get_tz_trend(ptr noundef %3, i32 noundef %4) #12, !dbg !2160
  store i32 %call, ptr %trend, align 4, !dbg !2161
  %5 = load ptr, ptr %tz.addr, align 8, !dbg !2162
  %temperature = getelementptr inbounds %struct.thermal_zone_device, ptr %5, i32 0, i32 15, !dbg !2164
  %6 = load i32, ptr %temperature, align 8, !dbg !2164
  %7 = load ptr, ptr %trip, align 8, !dbg !2165
  %temperature1 = getelementptr inbounds %struct.thermal_trip, ptr %7, i32 0, i32 0, !dbg !2166
  %8 = load i32, ptr %temperature1, align 8, !dbg !2166
  %cmp = icmp sge i32 %6, %8, !dbg !2167
  br i1 %cmp, label %if.then, label %if.end, !dbg !2168

if.then:                                          ; preds = %entry
  store i8 1, ptr %throttle, align 1, !dbg !2169
  %9 = load ptr, ptr %tz.addr, align 8, !dbg !2171
  %10 = load i32, ptr %trip_id.addr, align 4, !dbg !2172
  %11 = load ptr, ptr %trip, align 8, !dbg !2173
  %type = getelementptr inbounds %struct.thermal_trip, ptr %11, i32 0, i32 2, !dbg !2174
  %12 = load i32, ptr %type, align 8, !dbg !2174
  call void @trace_thermal_zone_trip(ptr noundef %9, i32 noundef %10, i32 noundef %12) #12, !dbg !2175
  br label %if.end, !dbg !2176

if.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !2177
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2137, metadata !DIExpression()), !dbg !2177
  %13 = load ptr, ptr %tz.addr, align 8, !dbg !2177
  %thermal_instances = getelementptr inbounds %struct.thermal_zone_device, ptr %13, i32 0, i32 26, !dbg !2177
  %next = getelementptr inbounds %struct.list_head, ptr %thermal_instances, i32 0, i32 0, !dbg !2177
  %14 = load ptr, ptr %next, align 8, !dbg !2177
  store ptr %14, ptr %__mptr, align 8, !dbg !2177
  %15 = load ptr, ptr %__mptr, align 8, !dbg !2177
  %add.ptr = getelementptr i8, ptr %15, i64 -192, !dbg !2177
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2177
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !2178
  %16 = load ptr, ptr %tmp, align 8, !dbg !2177
  store ptr %16, ptr %instance, align 8, !dbg !2178
  br label %for.cond, !dbg !2178

for.cond:                                         ; preds = %for.inc, %if.end
  %17 = load ptr, ptr %instance, align 8, !dbg !2179
  %tz_node = getelementptr inbounds %struct.thermal_instance, ptr %17, i32 0, i32 13, !dbg !2179
  %18 = load ptr, ptr %tz.addr, align 8, !dbg !2179
  %thermal_instances2 = getelementptr inbounds %struct.thermal_zone_device, ptr %18, i32 0, i32 26, !dbg !2179
  %cmp3 = icmp eq ptr %tz_node, %thermal_instances2, !dbg !2179
  %lnot = xor i1 %cmp3, true, !dbg !2179
  br i1 %lnot, label %for.body, label %for.end, !dbg !2178

for.body:                                         ; preds = %for.cond
  %19 = load ptr, ptr %instance, align 8, !dbg !2180
  %trip4 = getelementptr inbounds %struct.thermal_instance, ptr %19, i32 0, i32 4, !dbg !2183
  %20 = load ptr, ptr %trip4, align 8, !dbg !2183
  %21 = load ptr, ptr %trip, align 8, !dbg !2184
  %cmp5 = icmp ne ptr %20, %21, !dbg !2185
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !2186

if.then6:                                         ; preds = %for.body
  br label %for.inc, !dbg !2187

if.end7:                                          ; preds = %for.body
  %22 = load ptr, ptr %instance, align 8, !dbg !2188
  %target = getelementptr inbounds %struct.thermal_instance, ptr %22, i32 0, i32 8, !dbg !2189
  %23 = load i64, ptr %target, align 8, !dbg !2189
  %conv = trunc i64 %23 to i32, !dbg !2188
  store i32 %conv, ptr %old_target, align 4, !dbg !2190
  %24 = load ptr, ptr %instance, align 8, !dbg !2191
  %25 = load i32, ptr %trend, align 4, !dbg !2192
  %26 = load i8, ptr %throttle, align 1, !dbg !2193, !range !2194, !noundef !383
  %tobool = trunc i8 %26 to i1, !dbg !2193
  %call8 = call i64 @get_target_state(ptr noundef %24, i32 noundef %25, i1 noundef zeroext %tobool) #12, !dbg !2195
  %27 = load ptr, ptr %instance, align 8, !dbg !2196
  %target9 = getelementptr inbounds %struct.thermal_instance, ptr %27, i32 0, i32 8, !dbg !2197
  store i64 %call8, ptr %target9, align 8, !dbg !2198
  %28 = load ptr, ptr %instance, align 8, !dbg !2199
  %initialized = getelementptr inbounds %struct.thermal_instance, ptr %28, i32 0, i32 5, !dbg !2201
  %29 = load i8, ptr %initialized, align 8, !dbg !2201, !range !2194, !noundef !383
  %tobool10 = trunc i8 %29 to i1, !dbg !2201
  br i1 %tobool10, label %land.lhs.true, label %if.end17, !dbg !2202

land.lhs.true:                                    ; preds = %if.end7
  %30 = load i32, ptr %old_target, align 4, !dbg !2203
  %conv12 = sext i32 %30 to i64, !dbg !2203
  %31 = load ptr, ptr %instance, align 8, !dbg !2204
  %target13 = getelementptr inbounds %struct.thermal_instance, ptr %31, i32 0, i32 8, !dbg !2205
  %32 = load i64, ptr %target13, align 8, !dbg !2205
  %cmp14 = icmp eq i64 %conv12, %32, !dbg !2206
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !2207

if.then16:                                        ; preds = %land.lhs.true
  br label %for.inc, !dbg !2208

if.end17:                                         ; preds = %land.lhs.true, %if.end7
  %33 = load i32, ptr %old_target, align 4, !dbg !2209
  %conv18 = sext i32 %33 to i64, !dbg !2209
  %cmp19 = icmp eq i64 %conv18, -1, !dbg !2211
  br i1 %cmp19, label %land.lhs.true21, label %if.else, !dbg !2212

land.lhs.true21:                                  ; preds = %if.end17
  %34 = load ptr, ptr %instance, align 8, !dbg !2213
  %target22 = getelementptr inbounds %struct.thermal_instance, ptr %34, i32 0, i32 8, !dbg !2214
  %35 = load i64, ptr %target22, align 8, !dbg !2214
  %cmp23 = icmp ne i64 %35, -1, !dbg !2215
  br i1 %cmp23, label %if.then25, label %if.else, !dbg !2216

if.then25:                                        ; preds = %land.lhs.true21
  %36 = load ptr, ptr %tz.addr, align 8, !dbg !2217
  %37 = load ptr, ptr %trip, align 8, !dbg !2218
  %type26 = getelementptr inbounds %struct.thermal_trip, ptr %37, i32 0, i32 2, !dbg !2219
  %38 = load i32, ptr %type26, align 8, !dbg !2219
  call void @update_passive_instance(ptr noundef %36, i32 noundef %38, i32 noundef 1) #12, !dbg !2220
  br label %if.end37, !dbg !2220

if.else:                                          ; preds = %land.lhs.true21, %if.end17
  %39 = load i32, ptr %old_target, align 4, !dbg !2221
  %conv27 = sext i32 %39 to i64, !dbg !2221
  %cmp28 = icmp ne i64 %conv27, -1, !dbg !2223
  br i1 %cmp28, label %land.lhs.true30, label %if.end36, !dbg !2224

land.lhs.true30:                                  ; preds = %if.else
  %40 = load ptr, ptr %instance, align 8, !dbg !2225
  %target31 = getelementptr inbounds %struct.thermal_instance, ptr %40, i32 0, i32 8, !dbg !2226
  %41 = load i64, ptr %target31, align 8, !dbg !2226
  %cmp32 = icmp eq i64 %41, -1, !dbg !2227
  br i1 %cmp32, label %if.then34, label %if.end36, !dbg !2228

if.then34:                                        ; preds = %land.lhs.true30
  %42 = load ptr, ptr %tz.addr, align 8, !dbg !2229
  %43 = load ptr, ptr %trip, align 8, !dbg !2230
  %type35 = getelementptr inbounds %struct.thermal_trip, ptr %43, i32 0, i32 2, !dbg !2231
  %44 = load i32, ptr %type35, align 8, !dbg !2231
  call void @update_passive_instance(ptr noundef %42, i32 noundef %44, i32 noundef -1) #12, !dbg !2232
  br label %if.end36, !dbg !2232

if.end36:                                         ; preds = %if.then34, %land.lhs.true30, %if.else
  br label %if.end37

if.end37:                                         ; preds = %if.end36, %if.then25
  %45 = load ptr, ptr %instance, align 8, !dbg !2233
  %initialized38 = getelementptr inbounds %struct.thermal_instance, ptr %45, i32 0, i32 5, !dbg !2234
  store i8 1, ptr %initialized38, align 8, !dbg !2235
  %46 = load ptr, ptr %instance, align 8, !dbg !2236
  %cdev = getelementptr inbounds %struct.thermal_instance, ptr %46, i32 0, i32 3, !dbg !2237
  %47 = load ptr, ptr %cdev, align 8, !dbg !2237
  %lock = getelementptr inbounds %struct.thermal_cooling_device, ptr %47, i32 0, i32 9, !dbg !2238
  call void @mutex_lock(ptr noundef %lock) #12, !dbg !2239
  %48 = load ptr, ptr %instance, align 8, !dbg !2240
  %cdev39 = getelementptr inbounds %struct.thermal_instance, ptr %48, i32 0, i32 3, !dbg !2241
  %49 = load ptr, ptr %cdev39, align 8, !dbg !2241
  %updated = getelementptr inbounds %struct.thermal_cooling_device, ptr %49, i32 0, i32 8, !dbg !2242
  store i8 0, ptr %updated, align 8, !dbg !2243
  %50 = load ptr, ptr %instance, align 8, !dbg !2244
  %cdev40 = getelementptr inbounds %struct.thermal_instance, ptr %50, i32 0, i32 3, !dbg !2245
  %51 = load ptr, ptr %cdev40, align 8, !dbg !2245
  %lock41 = getelementptr inbounds %struct.thermal_cooling_device, ptr %51, i32 0, i32 9, !dbg !2246
  call void @mutex_unlock(ptr noundef %lock41) #12, !dbg !2247
  br label %for.inc, !dbg !2248

for.inc:                                          ; preds = %if.end37, %if.then16, %if.then6
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr42) #11, !dbg !2249
  call void @llvm.dbg.declare(metadata ptr %__mptr42, metadata !2140, metadata !DIExpression()), !dbg !2249
  %52 = load ptr, ptr %instance, align 8, !dbg !2249
  %tz_node43 = getelementptr inbounds %struct.thermal_instance, ptr %52, i32 0, i32 13, !dbg !2249
  %next44 = getelementptr inbounds %struct.list_head, ptr %tz_node43, i32 0, i32 0, !dbg !2249
  %53 = load ptr, ptr %next44, align 8, !dbg !2249
  store ptr %53, ptr %__mptr42, align 8, !dbg !2249
  %54 = load ptr, ptr %__mptr42, align 8, !dbg !2249
  %add.ptr46 = getelementptr i8, ptr %54, i64 -192, !dbg !2249
  store ptr %add.ptr46, ptr %tmp45, align 8, !dbg !2249
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr42) #11, !dbg !2179
  %55 = load ptr, ptr %tmp45, align 8, !dbg !2249
  store ptr %55, ptr %instance, align 8, !dbg !2179
  br label %for.cond, !dbg !2179, !llvm.loop !2250

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 4, ptr %old_target) #11, !dbg !2252
  call void @llvm.lifetime.end.p0(i64 1, ptr %throttle) #11, !dbg !2252
  call void @llvm.lifetime.end.p0(i64 8, ptr %instance) #11, !dbg !2252
  call void @llvm.lifetime.end.p0(i64 4, ptr %trend) #11, !dbg !2252
  call void @llvm.lifetime.end.p0(i64 8, ptr %trip) #11, !dbg !2252
  ret void, !dbg !2252
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2253 dso_local void @thermal_cdev_update(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2256 dso_local i32 @get_tz_trend(ptr noundef, i32 noundef) #3

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_thermal_zone_trip(ptr noundef %tz, i32 noundef %trip, i32 noundef %trip_type) #4 align 16 !dbg !2052 {
entry:
  %tz.addr = alloca ptr, align 8
  %trip.addr = alloca i32, align 4
  %trip_type.addr = alloca i32, align 4
  %__idx = alloca i32, align 4
  %pscr_ret__ = alloca i32, align 4
  %__vpp_verify = alloca ptr, align 8
  %pfo_val__ = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp3 = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %__flags = alloca i32, align 4
  %tmp23 = alloca i64, align 8
  %it_func_ptr = alloca ptr, align 8
  %__data = alloca ptr, align 8
  %__UNIQUE_ID_rcu219 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !2056, metadata !DIExpression()), !dbg !2257
  store i32 %trip, ptr %trip.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %trip.addr, metadata !2057, metadata !DIExpression()), !dbg !2257
  store i32 %trip_type, ptr %trip_type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %trip_type.addr, metadata !2058, metadata !DIExpression()), !dbg !2257
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_thermal_zone_trip, i32 0, i32 1)) #12, !dbg !2258
  br i1 %call, label %if.then, label %if.end68, !dbg !2257

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2258

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #11, !dbg !2259
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !2059, metadata !DIExpression()), !dbg !2259
  store i32 0, ptr %__idx, align 4, !dbg !2259
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #11, !dbg !2260
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !2062, metadata !DIExpression()), !dbg !2260
  br label %do.body1, !dbg !2260

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !2261
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2065, metadata !DIExpression()), !dbg !2261
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2261
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2261
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !2260
  br label %do.cond, !dbg !2261

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !2261

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #11, !dbg !2262
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2067, metadata !DIExpression()), !dbg !2262
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 2)) #11, !dbg !2262, !srcloc !2263
  store i32 %1, ptr %pfo_val__, align 4, !dbg !2262
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !2262
  %conv = zext i32 %2 to i64, !dbg !2262
  %conv2 = trunc i64 %conv to i32, !dbg !2262
  store i32 %conv2, ptr %tmp, align 4, !dbg !2262
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #11, !dbg !2260
  %3 = load i32, ptr %tmp, align 4, !dbg !2262
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !2260
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !2260
  store i32 %4, ptr %tmp3, align 4, !dbg !2260
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #11, !dbg !2264
  %5 = load i32, ptr %tmp3, align 4, !dbg !2260
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #12, !dbg !2264
  br i1 %call4, label %if.end, label %if.then5, !dbg !2259

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2264

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !2265
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2069, metadata !DIExpression()), !dbg !2265
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !2265
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !2266
  %tobool = icmp ne i32 %6, 0, !dbg !2266
  %lnot = xor i1 %tobool, true, !dbg !2266
  %lnot6 = xor i1 %lnot, true, !dbg !2266
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !2266
  %conv7 = sext i32 %lnot.ext to i64, !dbg !2266
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !2266
  %tobool8 = icmp ne i64 %expval, 0, !dbg !2266
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !2265

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !2266

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !2267
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2072, metadata !DIExpression()), !dbg !2267
  store i32 2307, ptr %__flags, align 4, !dbg !2267
  br label %do.body11, !dbg !2267

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !2268

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !2268

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !2267

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !2270
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 92, i32 %7, i64 12) #11, !dbg !2270, !srcloc !2272
  br label %do.cond15, !dbg !2270

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !2270

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !2267

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !2273

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !2273

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !2266
  br label %do.cond20, !dbg !2267

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !2267

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !2267

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !2265
  %tobool24 = icmp ne i32 %8, 0, !dbg !2265
  %lnot25 = xor i1 %tobool24, true, !dbg !2265
  %lnot27 = xor i1 %lnot25, true, !dbg !2265
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !2265
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !2265
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !2265
  store i64 %expval30, ptr %tmp23, align 8, !dbg !2266
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !2275
  %9 = load i64, ptr %tmp23, align 8, !dbg !2265
  %tobool31 = icmp ne i64 %9, 0, !dbg !2275
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !2259

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2275

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !2259

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #12, !dbg !2276
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !2276, !srcloc !2278
  br label %do.cond35, !dbg !2276

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !2276

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !2259

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #11, !dbg !2279
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !2075, metadata !DIExpression()), !dbg !2279
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #11, !dbg !2279
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !2077, metadata !DIExpression()), !dbg !2279
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu219) #11, !dbg !2280
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu219, metadata !2078, metadata !DIExpression()), !dbg !2280
  br label %do.body38, !dbg !2281

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !2283

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !2283

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_thermal_zone_trip, i32 0, i32 8), align 8, !dbg !2281
  store ptr %10, ptr %tmp41, align 8, !dbg !2283
  %11 = load ptr, ptr %tmp41, align 8, !dbg !2281
  store ptr %11, ptr %__UNIQUE_ID_rcu219, align 8, !dbg !2280
  %12 = load ptr, ptr %__UNIQUE_ID_rcu219, align 8, !dbg !2280
  store ptr %12, ptr %tmp42, align 8, !dbg !2280
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu219) #11, !dbg !2279
  %13 = load ptr, ptr %tmp42, align 8, !dbg !2280
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !2279
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !2285
  %tobool43 = icmp ne ptr %14, null, !dbg !2285
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !2279

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !2287
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !2287
  %16 = load ptr, ptr %data, align 8, !dbg !2287
  store ptr %16, ptr %__data, align 8, !dbg !2287
  store ptr @__SCT__tp_func_thermal_zone_trip, ptr %tmp45, align 8, !dbg !2289
  %17 = load ptr, ptr %tmp45, align 8, !dbg !2289
  %18 = load ptr, ptr %__data, align 8, !dbg !2287
  %19 = load ptr, ptr %tz.addr, align 8, !dbg !2287
  %20 = load i32, ptr %trip.addr, align 4, !dbg !2287
  %21 = load i32, ptr %trip_type.addr, align 4, !dbg !2287
  %call46 = call i32 %17(ptr noundef %18, ptr noundef %19, i32 noundef %20, i32 noundef %21) #12, !dbg !2287
  br label %if.end47, !dbg !2287

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #11, !dbg !2259
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #11, !dbg !2259
  br label %do.cond48, !dbg !2279

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !2279

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !2259

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !2291, !srcloc !2293
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #12, !dbg !2294
  %lnot52 = xor i1 %call51, true, !dbg !2294
  %lnot54 = xor i1 %lnot52, true, !dbg !2294
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !2294
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !2294
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !2294
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !2294
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !2291

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !2294

do.body60:                                        ; preds = %if.then59
  %22 = call i64 @llvm.read_register.i64(metadata !2082), !dbg !2296
  %23 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %22) #11, !dbg !2296, !srcloc !2298
  call void @llvm.write_register.i64(metadata !2082, i64 %23), !dbg !2296
  br label %do.cond61, !dbg !2296

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !2296

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !2296

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !2291

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !2291

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2258
  br label %cleanup, !dbg !2258

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #11, !dbg !2258
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !2259

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !2259

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !2257

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @get_target_state(ptr noundef %instance, i32 noundef %trend, i1 noundef zeroext %throttle) #0 align 16 !dbg !2299 {
entry:
  %retval = alloca i64, align 8
  %instance.addr = alloca ptr, align 8
  %trend.addr = alloca i32, align 4
  %throttle.addr = alloca i8, align 1
  %cdev = alloca ptr, align 8
  %cur_state = alloca i64, align 8
  %next_target = alloca i64, align 8
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___val227 = alloca i64, align 8
  %__UNIQUE_ID___lo228 = alloca i64, align 8
  %__UNIQUE_ID___hi229 = alloca i64, align 8
  %tmp4 = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %tmp15 = alloca i64, align 8
  %__UNIQUE_ID___val230 = alloca i64, align 8
  %__UNIQUE_ID___lo231 = alloca i64, align 8
  %__UNIQUE_ID___hi232 = alloca i64, align 8
  %tmp19 = alloca i64, align 8
  %tmp38 = alloca i64, align 8
  %__UNIQUE_ID___val233 = alloca i64, align 8
  %__UNIQUE_ID___lo234 = alloca i64, align 8
  %__UNIQUE_ID___hi235 = alloca i64, align 8
  %tmp41 = alloca i64, align 8
  store ptr %instance, ptr %instance.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %instance.addr, metadata !2303, metadata !DIExpression()), !dbg !2335
  store i32 %trend, ptr %trend.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %trend.addr, metadata !2304, metadata !DIExpression()), !dbg !2336
  %frombool = zext i1 %throttle to i8
  store i8 %frombool, ptr %throttle.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %throttle.addr, metadata !2305, metadata !DIExpression()), !dbg !2337
  call void @llvm.lifetime.start.p0(i64 8, ptr %cdev) #11, !dbg !2338
  call void @llvm.dbg.declare(metadata ptr %cdev, metadata !2306, metadata !DIExpression()), !dbg !2339
  %0 = load ptr, ptr %instance.addr, align 8, !dbg !2340
  %cdev1 = getelementptr inbounds %struct.thermal_instance, ptr %0, i32 0, i32 3, !dbg !2341
  %1 = load ptr, ptr %cdev1, align 8, !dbg !2341
  store ptr %1, ptr %cdev, align 8, !dbg !2339
  call void @llvm.lifetime.start.p0(i64 8, ptr %cur_state) #11, !dbg !2342
  call void @llvm.dbg.declare(metadata ptr %cur_state, metadata !2307, metadata !DIExpression()), !dbg !2343
  call void @llvm.lifetime.start.p0(i64 8, ptr %next_target) #11, !dbg !2344
  call void @llvm.dbg.declare(metadata ptr %next_target, metadata !2308, metadata !DIExpression()), !dbg !2345
  %2 = load ptr, ptr %cdev, align 8, !dbg !2346
  %ops = getelementptr inbounds %struct.thermal_cooling_device, ptr %2, i32 0, i32 7, !dbg !2347
  %3 = load ptr, ptr %ops, align 8, !dbg !2347
  %get_cur_state = getelementptr inbounds %struct.thermal_cooling_device_ops, ptr %3, i32 0, i32 1, !dbg !2348
  %4 = load ptr, ptr %get_cur_state, align 8, !dbg !2348
  %5 = load ptr, ptr %cdev, align 8, !dbg !2349
  %call = call i32 %4(ptr noundef %5, ptr noundef %cur_state) #12, !dbg !2346
  %6 = load ptr, ptr %instance.addr, align 8, !dbg !2350
  %target = getelementptr inbounds %struct.thermal_instance, ptr %6, i32 0, i32 8, !dbg !2351
  %7 = load i64, ptr %target, align 8, !dbg !2351
  store i64 %7, ptr %next_target, align 8, !dbg !2352
  %8 = load ptr, ptr %instance.addr, align 8, !dbg !2353
  %initialized = getelementptr inbounds %struct.thermal_instance, ptr %8, i32 0, i32 5, !dbg !2354
  %9 = load i8, ptr %initialized, align 8, !dbg !2354, !range !2194, !noundef !383
  %tobool = trunc i8 %9 to i1, !dbg !2354
  br i1 %tobool, label %if.end10, label %if.then, !dbg !2355

if.then:                                          ; preds = %entry
  %10 = load i8, ptr %throttle.addr, align 1, !dbg !2356, !range !2194, !noundef !383
  %tobool2 = trunc i8 %10 to i1, !dbg !2356
  br i1 %tobool2, label %if.then3, label %if.else, !dbg !2357

if.then3:                                         ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___val227) #11, !dbg !2358
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___val227, metadata !2309, metadata !DIExpression()), !dbg !2358
  %11 = load i64, ptr %cur_state, align 8, !dbg !2358
  %add = add i64 %11, 1, !dbg !2358
  store i64 %add, ptr %__UNIQUE_ID___val227, align 8, !dbg !2358
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___lo228) #11, !dbg !2358
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___lo228, metadata !2316, metadata !DIExpression()), !dbg !2358
  %12 = load ptr, ptr %instance.addr, align 8, !dbg !2358
  %lower = getelementptr inbounds %struct.thermal_instance, ptr %12, i32 0, i32 7, !dbg !2358
  %13 = load i64, ptr %lower, align 8, !dbg !2358
  store i64 %13, ptr %__UNIQUE_ID___lo228, align 8, !dbg !2358
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___hi229) #11, !dbg !2358
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___hi229, metadata !2317, metadata !DIExpression()), !dbg !2358
  %14 = load ptr, ptr %instance.addr, align 8, !dbg !2358
  %upper = getelementptr inbounds %struct.thermal_instance, ptr %14, i32 0, i32 6, !dbg !2358
  %15 = load i64, ptr %upper, align 8, !dbg !2358
  store i64 %15, ptr %__UNIQUE_ID___hi229, align 8, !dbg !2358
  %16 = load i64, ptr %__UNIQUE_ID___val227, align 8, !dbg !2358
  %17 = load i64, ptr %__UNIQUE_ID___hi229, align 8, !dbg !2358
  %cmp = icmp uge i64 %16, %17, !dbg !2358
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !2358

cond.true:                                        ; preds = %if.then3
  %18 = load i64, ptr %__UNIQUE_ID___hi229, align 8, !dbg !2358
  br label %cond.end8, !dbg !2358

cond.false:                                       ; preds = %if.then3
  %19 = load i64, ptr %__UNIQUE_ID___val227, align 8, !dbg !2358
  %20 = load i64, ptr %__UNIQUE_ID___lo228, align 8, !dbg !2358
  %cmp5 = icmp ule i64 %19, %20, !dbg !2358
  br i1 %cmp5, label %cond.true6, label %cond.false7, !dbg !2358

cond.true6:                                       ; preds = %cond.false
  %21 = load i64, ptr %__UNIQUE_ID___lo228, align 8, !dbg !2358
  br label %cond.end, !dbg !2358

cond.false7:                                      ; preds = %cond.false
  %22 = load i64, ptr %__UNIQUE_ID___val227, align 8, !dbg !2358
  br label %cond.end, !dbg !2358

cond.end:                                         ; preds = %cond.false7, %cond.true6
  %cond = phi i64 [ %21, %cond.true6 ], [ %22, %cond.false7 ], !dbg !2358
  br label %cond.end8, !dbg !2358

cond.end8:                                        ; preds = %cond.end, %cond.true
  %cond9 = phi i64 [ %18, %cond.true ], [ %cond, %cond.end ], !dbg !2358
  store i64 %cond9, ptr %tmp4, align 8, !dbg !2358
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___hi229) #11, !dbg !2359
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___lo228) #11, !dbg !2359
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___val227) #11, !dbg !2359
  %23 = load i64, ptr %tmp4, align 8, !dbg !2358
  store i64 %23, ptr %tmp, align 8, !dbg !2360
  %24 = load i64, ptr %tmp, align 8, !dbg !2359
  store i64 %24, ptr %next_target, align 8, !dbg !2361
  br label %if.end, !dbg !2362

if.else:                                          ; preds = %if.then
  store i64 -1, ptr %next_target, align 8, !dbg !2363
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.end8
  %25 = load i64, ptr %next_target, align 8, !dbg !2365
  store i64 %25, ptr %retval, align 8, !dbg !2366
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2366

if.end10:                                         ; preds = %entry
  %26 = load i8, ptr %throttle.addr, align 1, !dbg !2367, !range !2194, !noundef !383
  %tobool11 = trunc i8 %26 to i1, !dbg !2367
  br i1 %tobool11, label %if.then12, label %if.else31, !dbg !2368

if.then12:                                        ; preds = %if.end10
  %27 = load i32, ptr %trend.addr, align 4, !dbg !2369
  %cmp13 = icmp eq i32 %27, 1, !dbg !2370
  br i1 %cmp13, label %if.then14, label %if.end30, !dbg !2371

if.then14:                                        ; preds = %if.then12
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___val230) #11, !dbg !2372
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___val230, metadata !2318, metadata !DIExpression()), !dbg !2372
  %28 = load i64, ptr %cur_state, align 8, !dbg !2372
  %add16 = add i64 %28, 1, !dbg !2372
  store i64 %add16, ptr %__UNIQUE_ID___val230, align 8, !dbg !2372
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___lo231) #11, !dbg !2372
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___lo231, metadata !2324, metadata !DIExpression()), !dbg !2372
  %29 = load ptr, ptr %instance.addr, align 8, !dbg !2372
  %lower17 = getelementptr inbounds %struct.thermal_instance, ptr %29, i32 0, i32 7, !dbg !2372
  %30 = load i64, ptr %lower17, align 8, !dbg !2372
  store i64 %30, ptr %__UNIQUE_ID___lo231, align 8, !dbg !2372
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___hi232) #11, !dbg !2372
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___hi232, metadata !2325, metadata !DIExpression()), !dbg !2372
  %31 = load ptr, ptr %instance.addr, align 8, !dbg !2372
  %upper18 = getelementptr inbounds %struct.thermal_instance, ptr %31, i32 0, i32 6, !dbg !2372
  %32 = load i64, ptr %upper18, align 8, !dbg !2372
  store i64 %32, ptr %__UNIQUE_ID___hi232, align 8, !dbg !2372
  %33 = load i64, ptr %__UNIQUE_ID___val230, align 8, !dbg !2372
  %34 = load i64, ptr %__UNIQUE_ID___hi232, align 8, !dbg !2372
  %cmp20 = icmp uge i64 %33, %34, !dbg !2372
  br i1 %cmp20, label %cond.true21, label %cond.false22, !dbg !2372

cond.true21:                                      ; preds = %if.then14
  %35 = load i64, ptr %__UNIQUE_ID___hi232, align 8, !dbg !2372
  br label %cond.end28, !dbg !2372

cond.false22:                                     ; preds = %if.then14
  %36 = load i64, ptr %__UNIQUE_ID___val230, align 8, !dbg !2372
  %37 = load i64, ptr %__UNIQUE_ID___lo231, align 8, !dbg !2372
  %cmp23 = icmp ule i64 %36, %37, !dbg !2372
  br i1 %cmp23, label %cond.true24, label %cond.false25, !dbg !2372

cond.true24:                                      ; preds = %cond.false22
  %38 = load i64, ptr %__UNIQUE_ID___lo231, align 8, !dbg !2372
  br label %cond.end26, !dbg !2372

cond.false25:                                     ; preds = %cond.false22
  %39 = load i64, ptr %__UNIQUE_ID___val230, align 8, !dbg !2372
  br label %cond.end26, !dbg !2372

cond.end26:                                       ; preds = %cond.false25, %cond.true24
  %cond27 = phi i64 [ %38, %cond.true24 ], [ %39, %cond.false25 ], !dbg !2372
  br label %cond.end28, !dbg !2372

cond.end28:                                       ; preds = %cond.end26, %cond.true21
  %cond29 = phi i64 [ %35, %cond.true21 ], [ %cond27, %cond.end26 ], !dbg !2372
  store i64 %cond29, ptr %tmp19, align 8, !dbg !2372
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___hi232) #11, !dbg !2373
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___lo231) #11, !dbg !2373
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___val230) #11, !dbg !2373
  %40 = load i64, ptr %tmp19, align 8, !dbg !2372
  store i64 %40, ptr %tmp15, align 8, !dbg !2374
  %41 = load i64, ptr %tmp15, align 8, !dbg !2373
  store i64 %41, ptr %next_target, align 8, !dbg !2375
  br label %if.end30, !dbg !2376

if.end30:                                         ; preds = %cond.end28, %if.then12
  br label %if.end54, !dbg !2377

if.else31:                                        ; preds = %if.end10
  %42 = load i32, ptr %trend.addr, align 4, !dbg !2378
  %cmp32 = icmp eq i32 %42, 2, !dbg !2379
  br i1 %cmp32, label %if.then33, label %if.end53, !dbg !2380

if.then33:                                        ; preds = %if.else31
  %43 = load i64, ptr %cur_state, align 8, !dbg !2381
  %44 = load ptr, ptr %instance.addr, align 8, !dbg !2382
  %lower34 = getelementptr inbounds %struct.thermal_instance, ptr %44, i32 0, i32 7, !dbg !2383
  %45 = load i64, ptr %lower34, align 8, !dbg !2383
  %cmp35 = icmp ule i64 %43, %45, !dbg !2384
  br i1 %cmp35, label %if.then36, label %if.else37, !dbg !2385

if.then36:                                        ; preds = %if.then33
  store i64 -1, ptr %next_target, align 8, !dbg !2386
  br label %if.end52, !dbg !2387

if.else37:                                        ; preds = %if.then33
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___val233) #11, !dbg !2388
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___val233, metadata !2326, metadata !DIExpression()), !dbg !2388
  %46 = load i64, ptr %cur_state, align 8, !dbg !2388
  %sub = sub i64 %46, 1, !dbg !2388
  store i64 %sub, ptr %__UNIQUE_ID___val233, align 8, !dbg !2388
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___lo234) #11, !dbg !2388
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___lo234, metadata !2333, metadata !DIExpression()), !dbg !2388
  %47 = load ptr, ptr %instance.addr, align 8, !dbg !2388
  %lower39 = getelementptr inbounds %struct.thermal_instance, ptr %47, i32 0, i32 7, !dbg !2388
  %48 = load i64, ptr %lower39, align 8, !dbg !2388
  store i64 %48, ptr %__UNIQUE_ID___lo234, align 8, !dbg !2388
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID___hi235) #11, !dbg !2388
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID___hi235, metadata !2334, metadata !DIExpression()), !dbg !2388
  %49 = load ptr, ptr %instance.addr, align 8, !dbg !2388
  %upper40 = getelementptr inbounds %struct.thermal_instance, ptr %49, i32 0, i32 6, !dbg !2388
  %50 = load i64, ptr %upper40, align 8, !dbg !2388
  store i64 %50, ptr %__UNIQUE_ID___hi235, align 8, !dbg !2388
  %51 = load i64, ptr %__UNIQUE_ID___val233, align 8, !dbg !2388
  %52 = load i64, ptr %__UNIQUE_ID___hi235, align 8, !dbg !2388
  %cmp42 = icmp uge i64 %51, %52, !dbg !2388
  br i1 %cmp42, label %cond.true43, label %cond.false44, !dbg !2388

cond.true43:                                      ; preds = %if.else37
  %53 = load i64, ptr %__UNIQUE_ID___hi235, align 8, !dbg !2388
  br label %cond.end50, !dbg !2388

cond.false44:                                     ; preds = %if.else37
  %54 = load i64, ptr %__UNIQUE_ID___val233, align 8, !dbg !2388
  %55 = load i64, ptr %__UNIQUE_ID___lo234, align 8, !dbg !2388
  %cmp45 = icmp ule i64 %54, %55, !dbg !2388
  br i1 %cmp45, label %cond.true46, label %cond.false47, !dbg !2388

cond.true46:                                      ; preds = %cond.false44
  %56 = load i64, ptr %__UNIQUE_ID___lo234, align 8, !dbg !2388
  br label %cond.end48, !dbg !2388

cond.false47:                                     ; preds = %cond.false44
  %57 = load i64, ptr %__UNIQUE_ID___val233, align 8, !dbg !2388
  br label %cond.end48, !dbg !2388

cond.end48:                                       ; preds = %cond.false47, %cond.true46
  %cond49 = phi i64 [ %56, %cond.true46 ], [ %57, %cond.false47 ], !dbg !2388
  br label %cond.end50, !dbg !2388

cond.end50:                                       ; preds = %cond.end48, %cond.true43
  %cond51 = phi i64 [ %53, %cond.true43 ], [ %cond49, %cond.end48 ], !dbg !2388
  store i64 %cond51, ptr %tmp41, align 8, !dbg !2388
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___hi235) #11, !dbg !2389
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___lo234) #11, !dbg !2389
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID___val233) #11, !dbg !2389
  %58 = load i64, ptr %tmp41, align 8, !dbg !2388
  store i64 %58, ptr %tmp38, align 8, !dbg !2390
  %59 = load i64, ptr %tmp38, align 8, !dbg !2389
  store i64 %59, ptr %next_target, align 8, !dbg !2391
  br label %if.end52

if.end52:                                         ; preds = %cond.end50, %if.then36
  br label %if.end53, !dbg !2392

if.end53:                                         ; preds = %if.end52, %if.else31
  br label %if.end54

if.end54:                                         ; preds = %if.end53, %if.end30
  %60 = load i64, ptr %next_target, align 8, !dbg !2393
  store i64 %60, ptr %retval, align 8, !dbg !2394
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2394

cleanup:                                          ; preds = %if.end54, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %next_target) #11, !dbg !2395
  call void @llvm.lifetime.end.p0(i64 8, ptr %cur_state) #11, !dbg !2395
  call void @llvm.lifetime.end.p0(i64 8, ptr %cdev) #11, !dbg !2395
  %61 = load i64, ptr %retval, align 8, !dbg !2395
  ret i64 %61, !dbg !2395
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @update_passive_instance(ptr noundef %tz, i32 noundef %type, i32 noundef %value) #0 align 16 !dbg !2396 {
entry:
  %tz.addr = alloca ptr, align 8
  %type.addr = alloca i32, align 4
  %value.addr = alloca i32, align 4
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !2400, metadata !DIExpression()), !dbg !2403
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2401, metadata !DIExpression()), !dbg !2404
  store i32 %value, ptr %value.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %value.addr, metadata !2402, metadata !DIExpression()), !dbg !2405
  %0 = load i32, ptr %type.addr, align 4, !dbg !2406
  %cmp = icmp eq i32 %0, 1, !dbg !2408
  br i1 %cmp, label %if.then, label %if.end, !dbg !2409

if.then:                                          ; preds = %entry
  %1 = load i32, ptr %value.addr, align 4, !dbg !2410
  %2 = load ptr, ptr %tz.addr, align 8, !dbg !2411
  %passive = getelementptr inbounds %struct.thermal_zone_device, ptr %2, i32 0, i32 18, !dbg !2412
  %3 = load i32, ptr %passive, align 4, !dbg !2413
  %add = add i32 %3, %1, !dbg !2413
  store i32 %add, ptr %passive, align 4, !dbg !2413
  br label %if.end, !dbg !2411

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !2414
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2415 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2419 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #5 align 16 !dbg !2420 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2436, metadata !DIExpression()), !dbg !2437
  %0 = load ptr, ptr %key.addr, align 8, !dbg !2438
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #12, !dbg !2439
  ret i1 %call, !dbg !2440
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_online(i32 noundef %cpu) #4 align 16 !dbg !2441 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2445, metadata !DIExpression()), !dbg !2446
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !2447
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_online_mask) #12, !dbg !2448
  ret i1 %call, !dbg !2449
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #5 align 16 !dbg !2450 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !2455, metadata !DIExpression()), !dbg !2462
  br label %do.body, !dbg !2463

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #11, !dbg !2464
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !2456, metadata !DIExpression()), !dbg !2464
  %0 = load i32, ptr %val.addr, align 4, !dbg !2464
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !2464
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !2464

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !2464
  %cmp = icmp eq i32 %2, 1, !dbg !2464
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !2464

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !2464
  %cmp1 = icmp eq i32 %3, -1, !dbg !2464
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !2464

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !2464
  br label %cond.end, !dbg !2464

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !2464

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !2464
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !2464
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !2465
  %cmp2 = icmp eq i32 %5, 1, !dbg !2465
  br i1 %cmp2, label %if.then, label %if.else, !dbg !2464

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1)) #11, !dbg !2466, !srcloc !2468
  br label %if.end8, !dbg !2465

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !2469
  %cmp3 = icmp eq i32 %6, -1, !dbg !2469
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !2465

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1)) #11, !dbg !2470, !srcloc !2472
  br label %if.end, !dbg !2469

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !2469

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #11, !dbg !2473
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !2458, metadata !DIExpression()), !dbg !2473
  %7 = load i32, ptr %val.addr, align 4, !dbg !2473
  %conv = sext i32 %7 to i64, !dbg !2473
  %and = and i64 %conv, 4294967295, !dbg !2473
  %conv7 = trunc i64 %and to i32, !dbg !2473
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !2473
  %8 = load i32, ptr %pto_val__, align 4, !dbg !2473
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1)) #11, !dbg !2473, !srcloc !2474
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #11, !dbg !2469
  br label %do.cond, !dbg !2473

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !2473

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #11, !dbg !2463
  br label %do.end10, !dbg !2464

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !2475
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_thermal_zone_trip(ptr noundef, ptr noundef, i32 noundef, i32 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #5 align 16 !dbg !2476 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #11, !dbg !2480
  call void @llvm.dbg.declare(metadata ptr %c, metadata !2478, metadata !DIExpression()), !dbg !2480
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1)) #11, !dbg !2480, !srcloc !2481
  %1 = icmp ult i8 %0, 2, !dbg !2480
  call void @llvm.assume(i1 %1), !dbg !2480
  store i8 %0, ptr %c, align 1, !dbg !2480
  %2 = load i8, ptr %c, align 1, !dbg !2480, !range !2194, !noundef !383
  %tobool = trunc i8 %2 to i1, !dbg !2480
  %frombool = zext i1 %tobool to i8, !dbg !2480
  store i8 %frombool, ptr %tmp, align 1, !dbg !2480
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #11, !dbg !2482
  %3 = load i8, ptr %tmp, align 1, !dbg !2480, !range !2194, !noundef !383
  %tobool1 = trunc i8 %3 to i1, !dbg !2480
  ret i1 %tobool1, !dbg !2483
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #5 align 16 !dbg !2484 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2489, metadata !DIExpression()), !dbg !2492
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !2490, metadata !DIExpression()), !dbg !2493
  %0 = load ptr, ptr %key.addr, align 8, !dbg !2494
  %1 = load i8, ptr %branch.addr, align 1, !dbg !2495, !range !2194, !noundef !383
  %tobool = trunc i8 %1 to i1, !dbg !2495
  %conv = zext i1 %tobool to i32, !dbg !2495
  %or = or i32 2, %conv, !dbg !2496
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #11
          to label %asm.fallthrough [label %l_yes], !dbg !2497, !srcloc !2498

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !2499
  br label %return, !dbg !2499

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !2491), !dbg !2500
  store i1 true, ptr %retval, align 1, !dbg !2501
  br label %return, !dbg !2501

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !2502
  ret i1 %2, !dbg !2502
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #5 align 16 !dbg !2503 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2507, metadata !DIExpression()), !dbg !2509
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !2508, metadata !DIExpression()), !dbg !2510
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !2511
  %call = call i32 @cpumask_check(i32 noundef %0) #12, !dbg !2511
  %conv = zext i32 %call to i64, !dbg !2511
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !2511
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !2511
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !2511
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #12, !dbg !2511
  ret i1 %call1, !dbg !2512
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !2513 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2521, metadata !DIExpression()), !dbg !2523
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2522, metadata !DIExpression()), !dbg !2524
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2525
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2526
  %div = udiv i64 %1, 64, !dbg !2526
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !2527
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #12, !dbg !2528
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2529
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2530
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !2531
  ret i1 %call, !dbg !2532
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #5 align 16 !dbg !2533 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2537, metadata !DIExpression()), !dbg !2538
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !2539
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #12, !dbg !2540
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !2541
  ret i32 %1, !dbg !2542
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #5 align 16 !dbg !2543 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2551, metadata !DIExpression()), !dbg !2553
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2552, metadata !DIExpression()), !dbg !2554
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2555
  %1 = load i64, ptr %size.addr, align 8, !dbg !2556
  %conv = trunc i64 %1 to i32, !dbg !2556
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #12, !dbg !2557
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2558
  %3 = load i64, ptr %size.addr, align 8, !dbg !2558
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #12, !dbg !2558
  ret void, !dbg !2559
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !2560 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2563, metadata !DIExpression()), !dbg !2565
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2564, metadata !DIExpression()), !dbg !2566
  %0 = load i64, ptr %nr.addr, align 8, !dbg !2567
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2568
  br i1 %1, label %cond.true, label %cond.false, !dbg !2568

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2569
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2570
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !2571
  %conv = zext i1 %call to i32, !dbg !2571
  br label %cond.end, !dbg !2568

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !2572
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !2573
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #12, !dbg !2574
  %conv2 = zext i1 %call1 to i32, !dbg !2574
  br label %cond.end, !dbg !2568

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !2568
  %tobool = icmp ne i32 %cond, 0, !dbg !2568
  ret i1 %tobool, !dbg !2575
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !2576 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2581, metadata !DIExpression()), !dbg !2583
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2582, metadata !DIExpression()), !dbg !2584
  ret i1 true, !dbg !2585
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !2586 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2591, metadata !DIExpression()), !dbg !2594
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2592, metadata !DIExpression()), !dbg !2595
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2593, metadata !DIExpression()), !dbg !2596
  ret void, !dbg !2597
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !2598 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2602, metadata !DIExpression()), !dbg !2604
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2603, metadata !DIExpression()), !dbg !2605
  %0 = load i64, ptr %nr.addr, align 8, !dbg !2606
  %and = and i64 %0, 63, !dbg !2607
  %shl = shl i64 1, %and, !dbg !2608
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !2609
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2610
  %shr = ashr i64 %2, 6, !dbg !2611
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !2609
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !2609
  %and1 = and i64 %shl, %3, !dbg !2612
  %cmp = icmp ne i64 %and1, 0, !dbg !2613
  ret i1 %cmp, !dbg !2614
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #5 align 16 !dbg !2615 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2617, metadata !DIExpression()), !dbg !2620
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2618, metadata !DIExpression()), !dbg !2621
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #11, !dbg !2622
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !2619, metadata !DIExpression()), !dbg !2623
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2624
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2625
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #11, !dbg !2626, !srcloc !2627
  %3 = icmp ult i8 %2, 2, !dbg !2626
  call void @llvm.assume(i1 %3), !dbg !2626
  store i8 %2, ptr %oldbit, align 1, !dbg !2626
  %4 = load i8, ptr %oldbit, align 1, !dbg !2628, !range !2194, !noundef !383
  %tobool = trunc i8 %4 to i1, !dbg !2628
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #11, !dbg !2629
  ret i1 %tobool, !dbg !2630
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #5 align 16 !dbg !2631 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2635, metadata !DIExpression()), !dbg !2637
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !2636, metadata !DIExpression()), !dbg !2638
  ret void, !dbg !2639
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #8 = { nocallback nounwind }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!2082}
!llvm.module.flags = !{!2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090}
!llvm.ident = !{!2091}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "thermal_gov_step_wise", scope: !2, file: !3, line: 153, type: !1983, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/thermal/.gov_step_wise.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/thermal/thermal_sys\22 -D KBUILD_BASENAME=\22gov_step_wise\22 -D KBUILD_MODNAME=\22thermal_sys\22 -D __KBUILD_MODNAME=kmod_thermal_sys -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/thermal/gov_step_wise.ll drivers/thermal/gov_step_wise.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !134, globals: !2044, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/thermal/gov_step_wise.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0bdd77680829a0878e65a5823e4dea9b")
!4 = !{!5, !12, !19, !25, !32, !37, !45, !53, !59, !66, !70, !76, !85, !90, !95, !101, !106, !112, !118, !129}
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
!70 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !71, line: 30, baseType: !7, size: 32, elements: !72)
!71 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!72 = !{!73, !74, !75}
!73 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!74 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!75 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!76 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !26, line: 547, baseType: !7, size: 32, elements: !77)
!77 = !{!78, !79, !80, !81, !82, !83, !84}
!78 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!79 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!80 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!81 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!82 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!83 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!84 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!85 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !26, line: 564, baseType: !7, size: 32, elements: !86)
!86 = !{!87, !88, !89}
!87 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!88 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!89 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !26, line: 577, baseType: !7, size: 32, elements: !91)
!91 = !{!92, !93, !94}
!92 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!93 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!94 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !26, line: 503, baseType: !7, size: 32, elements: !96)
!96 = !{!97, !98, !99, !100}
!97 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!98 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!99 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!100 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_device_mode", file: !102, line: 7, baseType: !7, size: 32, elements: !103)
!102 = !DIFile(filename: "./include/uapi/linux/thermal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0988915424caf116c4c8a170acf5e63")
!103 = !{!104, !105}
!104 = !DIEnumerator(name: "THERMAL_DEVICE_DISABLED", value: 0)
!105 = !DIEnumerator(name: "THERMAL_DEVICE_ENABLED", value: 1)
!106 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_trip_type", file: !102, line: 12, baseType: !7, size: 32, elements: !107)
!107 = !{!108, !109, !110, !111}
!108 = !DIEnumerator(name: "THERMAL_TRIP_ACTIVE", value: 0)
!109 = !DIEnumerator(name: "THERMAL_TRIP_PASSIVE", value: 1)
!110 = !DIEnumerator(name: "THERMAL_TRIP_HOT", value: 2)
!111 = !DIEnumerator(name: "THERMAL_TRIP_CRITICAL", value: 3)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_trend", file: !113, line: 37, baseType: !7, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/linux/thermal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0720786b938087c9219e0058826384af")
!114 = !{!115, !116, !117}
!115 = !DIEnumerator(name: "THERMAL_TREND_STABLE", value: 0)
!116 = !DIEnumerator(name: "THERMAL_TREND_RAISING", value: 1)
!117 = !DIEnumerator(name: "THERMAL_TREND_DROPPING", value: 2)
!118 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_notify_event", file: !113, line: 44, baseType: !7, size: 32, elements: !119)
!119 = !{!120, !121, !122, !123, !124, !125, !126, !127, !128}
!120 = !DIEnumerator(name: "THERMAL_EVENT_UNSPECIFIED", value: 0)
!121 = !DIEnumerator(name: "THERMAL_EVENT_TEMP_SAMPLE", value: 1)
!122 = !DIEnumerator(name: "THERMAL_TRIP_VIOLATED", value: 2)
!123 = !DIEnumerator(name: "THERMAL_TRIP_CHANGED", value: 3)
!124 = !DIEnumerator(name: "THERMAL_DEVICE_DOWN", value: 4)
!125 = !DIEnumerator(name: "THERMAL_DEVICE_UP", value: 5)
!126 = !DIEnumerator(name: "THERMAL_DEVICE_POWER_CAPABILITY_CHANGED", value: 6)
!127 = !DIEnumerator(name: "THERMAL_TABLE_CHANGED", value: 7)
!128 = !DIEnumerator(name: "THERMAL_EVENT_KEEP_ALIVE", value: 8)
!129 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !130, line: 10, baseType: !7, size: 32, elements: !131)
!130 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!131 = !{!132, !133}
!132 = !DIEnumerator(name: "false", value: 0)
!133 = !DIEnumerator(name: "true", value: 1)
!134 = !{!135, !136, !1063, !46, !297, !2026, !2029, !2035, !1267, !7, !1181}
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_instance", file: !138, line: 85, size: 1856, elements: !139)
!138 = !DIFile(filename: "drivers/thermal/thermal_core.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f61e469943239d2bc6fea21f68a30bb4")
!139 = !{!140, !141, !146, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !137, file: !138, line: 86, baseType: !46, size: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !137, file: !138, line: 87, baseType: !142, size: 160, offset: 32)
!142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 160, elements: !144)
!143 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!144 = !{!145}
!145 = !DISubrange(count: 20)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "tz", scope: !137, file: !138, line: 88, baseType: !147, size: 64, offset: 192)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device", file: !113, line: 156, size: 9152, elements: !149)
!149 = !{!150, !151, !152, !1843, !1844, !1845, !1863, !1864, !1865, !1866, !1867, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1967, !1981, !1993, !1994, !1995, !2007, !2008, !2009, !2010, !2011}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !148, file: !113, line: 157, baseType: !46, size: 32)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !148, file: !113, line: 158, baseType: !142, size: 160, offset: 32)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !148, file: !113, line: 159, baseType: !153, size: 5824, offset: 192)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !154)
!154 = !{!155, !822, !824, !827, !828, !881, !1354, !1355, !1356, !1357, !1358, !1365, !1607, !1620, !1630, !1634, !1636, !1637, !1638, !1642, !1649, !1650, !1653, !1656, !1782, !1783, !1784, !1787, !1788, !1789, !1790, !1820, !1821, !1822, !1825, !1828, !1837, !1838, !1839, !1840, !1841, !1842}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !153, file: !26, line: 706, baseType: !156, size: 512)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !157, line: 64, size: 512, elements: !158)
!157 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!158 = !{!159, !162, !169, !171, !260, !692, !807, !817, !818, !819, !820, !821}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !156, file: !157, line: 65, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !156, file: !157, line: 66, baseType: !163, size: 128, offset: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !164, line: 190, size: 128, elements: !165)
!164 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!165 = !{!166, !168}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !163, file: !164, line: 191, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !163, file: !164, line: 191, baseType: !167, size: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !156, file: !157, line: 67, baseType: !170, size: 64, offset: 192)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !156, file: !157, line: 68, baseType: !172, size: 64, offset: 256)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !157, line: 168, size: 768, elements: !174)
!174 = !{!175, !176, !219, !220}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !173, file: !157, line: 169, baseType: !163, size: 128)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !173, file: !157, line: 170, baseType: !177, size: 32, offset: 128)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !178, line: 29, baseType: !179)
!178 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !178, line: 17, size: 32, elements: !180)
!180 = !{!181}
!181 = !DIDerivedType(tag: DW_TAG_member, scope: !179, file: !178, line: 18, baseType: !182, size: 32)
!182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !179, file: !178, line: 18, size: 32, elements: !183)
!183 = !{!184}
!184 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !182, file: !178, line: 19, baseType: !185, size: 32)
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !186, line: 14, size: 32, elements: !187)
!186 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!187 = !{!188}
!188 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !185, file: !186, line: 15, baseType: !189, size: 32)
!189 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !190, line: 44, baseType: !191)
!190 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !190, line: 14, size: 32, elements: !192)
!192 = !{!193}
!193 = !DIDerivedType(tag: DW_TAG_member, scope: !191, file: !190, line: 15, baseType: !194, size: 32)
!194 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !191, file: !190, line: 15, size: 32, elements: !195)
!195 = !{!196, !201, !211}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !194, file: !190, line: 16, baseType: !197, size: 32)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !164, line: 174, baseType: !198)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !164, line: 172, size: 32, elements: !199)
!199 = !{!200}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !198, file: !164, line: 173, baseType: !46, size: 32)
!201 = !DIDerivedType(tag: DW_TAG_member, scope: !194, file: !190, line: 24, baseType: !202, size: 16)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !194, file: !190, line: 24, size: 16, elements: !203)
!203 = !{!204, !210}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !202, file: !190, line: 25, baseType: !205, size: 8)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !206, line: 17, baseType: !207)
!206 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !208, line: 21, baseType: !209)
!208 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!209 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !202, file: !190, line: 26, baseType: !205, size: 8, offset: 8)
!211 = !DIDerivedType(tag: DW_TAG_member, scope: !194, file: !190, line: 28, baseType: !212, size: 32)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !194, file: !190, line: 28, size: 32, elements: !213)
!213 = !{!214, !218}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !212, file: !190, line: 29, baseType: !215, size: 16)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !206, line: 19, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !208, line: 24, baseType: !217)
!217 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !212, file: !190, line: 30, baseType: !215, size: 16, offset: 16)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !173, file: !157, line: 171, baseType: !156, size: 512, offset: 192)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !173, file: !157, line: 172, baseType: !221, size: 64, offset: 704)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !223)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !157, line: 133, size: 192, elements: !224)
!224 = !{!225, !232, !237}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !223, file: !157, line: 134, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!46, !230}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !223, file: !157, line: 135, baseType: !233, size: 64, offset: 64)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!160, !230}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !223, file: !157, line: 136, baseType: !238, size: 64, offset: 128)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!46, !230, !242}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !157, line: 125, size: 20736, elements: !244)
!244 = !{!245, !250, !254, !255, !259}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !243, file: !157, line: 126, baseType: !246, size: 192)
!246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 192, elements: !248)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!248 = !{!249}
!249 = !DISubrange(count: 3)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !243, file: !157, line: 127, baseType: !251, size: 4096, offset: 192)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !247, size: 4096, elements: !252)
!252 = !{!253}
!253 = !DISubrange(count: 64)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !243, file: !157, line: 128, baseType: !46, size: 32, offset: 4288)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !243, file: !157, line: 129, baseType: !256, size: 16384, offset: 4320)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 16384, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 2048)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !243, file: !157, line: 130, baseType: !46, size: 32, offset: 20704)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !156, file: !157, line: 69, baseType: !261, size: 64, offset: 320)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !263)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !157, line: 116, size: 384, elements: !264)
!264 = !{!265, !269, !298, !638, !669, !673}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !263, file: !157, line: 117, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = !DISubroutineType(types: !268)
!268 = !{null, !170}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !263, file: !157, line: 118, baseType: !270, size: 64, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !272)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !273, line: 254, size: 128, elements: !274)
!273 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!274 = !{!275, !290}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !272, file: !273, line: 255, baseType: !276, size: 64)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!279, !170, !284, !247}
!279 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !164, line: 66, baseType: !280)
!280 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !281, line: 73, baseType: !282)
!281 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!282 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !281, line: 15, baseType: !283)
!283 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !273, line: 30, size: 128, elements: !286)
!286 = !{!287, !288}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !285, file: !273, line: 31, baseType: !160, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !285, file: !273, line: 32, baseType: !289, size: 16, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !164, line: 24, baseType: !217)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !272, file: !273, line: 256, baseType: !291, size: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!279, !170, !284, !160, !294}
!294 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !164, line: 61, baseType: !295)
!295 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !281, line: 72, baseType: !296)
!296 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !281, line: 16, baseType: !297)
!297 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !263, file: !157, line: 119, baseType: !299, size: 64, offset: 128)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !302)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !273, line: 84, size: 320, elements: !303)
!303 = !{!304, !305, !309, !634, !636}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !302, file: !273, line: 85, baseType: !160, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !302, file: !273, line: 86, baseType: !306, size: 64, offset: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DISubroutineType(types: !308)
!308 = !{!289, !170, !284, !46}
!309 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !302, file: !273, line: 88, baseType: !310, size: 64, offset: 128)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!289, !170, !313, !46}
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !273, line: 175, size: 512, elements: !315)
!315 = !{!316, !317, !318, !319, !326, !336, !337}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !314, file: !273, line: 176, baseType: !285, size: 128)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !314, file: !273, line: 177, baseType: !294, size: 64, offset: 128)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !314, file: !273, line: 178, baseType: !135, size: 64, offset: 192)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !314, file: !273, line: 179, baseType: !320, size: 64, offset: 256)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!323}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !325, line: 32, flags: DIFlagFwdDecl)
!325 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!326 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !314, file: !273, line: 180, baseType: !327, size: 64, offset: 320)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{!279, !330, !170, !313, !247, !333, !294}
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !332, line: 537, flags: DIFlagFwdDecl)
!332 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !164, line: 52, baseType: !334)
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !281, line: 88, baseType: !335)
!335 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !314, file: !273, line: 182, baseType: !327, size: 64, offset: 384)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !314, file: !273, line: 184, baseType: !338, size: 64, offset: 448)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{!46, !330, !170, !313, !341}
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !325, line: 625, size: 1344, elements: !343)
!343 = !{!344, !361, !583, !589, !596, !597, !602, !605, !617, !618, !621, !625, !626, !627, !628, !629, !632}
!344 = !DIDerivedType(tag: DW_TAG_member, scope: !342, file: !325, line: 628, baseType: !345, size: 128)
!345 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !342, file: !325, line: 628, size: 128, elements: !346)
!346 = !{!347, !352}
!347 = !DIDerivedType(tag: DW_TAG_member, scope: !345, file: !325, line: 629, baseType: !348, size: 128)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !345, file: !325, line: 629, size: 128, elements: !349)
!349 = !{!350, !351}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !348, file: !325, line: 631, baseType: !297, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !348, file: !325, line: 632, baseType: !297, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !345, file: !325, line: 635, baseType: !353, size: 128, align: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !164, line: 232, size: 128, align: 64, elements: !354)
!354 = !{!355, !357}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !353, file: !164, line: 233, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !353, file: !164, line: 234, baseType: !358, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!359 = !DISubroutineType(types: !360)
!360 = !{null, !356}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !342, file: !325, line: 639, baseType: !362, size: 64, offset: 128)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !325, line: 733, size: 10240, elements: !364)
!364 = !{!365, !579}
!365 = !DIDerivedType(tag: DW_TAG_member, scope: !363, file: !325, line: 734, baseType: !366, size: 10240)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !363, file: !325, line: 734, size: 10240, elements: !367)
!367 = !{!368, !372, !386, !390, !391, !392, !393, !394, !395, !403, !404, !405, !414, !415, !424, !425, !426, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !473, !487, !490, !545, !546, !547, !550, !553, !554, !557, !558, !559, !566, !567}
!368 = !DIDerivedType(tag: DW_TAG_member, scope: !366, file: !325, line: 739, baseType: !369, size: 512, align: 512)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !366, file: !325, line: 739, size: 512, align: 512, elements: !370)
!370 = !{!371}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !369, file: !325, line: 747, baseType: !197, size: 32)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !366, file: !325, line: 750, baseType: !373, size: 128, offset: 512)
!373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !374, line: 218, size: 128, elements: !375)
!374 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!375 = !{!376, !384, !385}
!376 = !DIDerivedType(tag: DW_TAG_member, scope: !373, file: !374, line: 219, baseType: !377, size: 32)
!377 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !373, file: !374, line: 219, size: 32, elements: !378)
!378 = !{!379, !380}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !377, file: !374, line: 220, baseType: !177, size: 32)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !377, file: !374, line: 221, baseType: !381)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !374, line: 197, baseType: !382)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !374, line: 197, elements: !383)
!383 = !{}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !373, file: !374, line: 223, baseType: !7, size: 32, offset: 32)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !373, file: !374, line: 224, baseType: !135, size: 64, offset: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !366, file: !325, line: 752, baseType: !387, size: 64, offset: 640)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{!297, !330, !297, !297, !297, !297}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !366, file: !325, line: 756, baseType: !297, size: 64, offset: 704)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !366, file: !325, line: 757, baseType: !297, size: 64, offset: 768)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !366, file: !325, line: 760, baseType: !297, size: 64, offset: 832)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !366, file: !325, line: 761, baseType: !297, size: 64, offset: 896)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !366, file: !325, line: 763, baseType: !297, size: 64, offset: 960)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !366, file: !325, line: 764, baseType: !396, size: 64, offset: 1024)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !332, line: 299, baseType: !398)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !332, line: 299, size: 64, elements: !399)
!399 = !{!400}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !398, file: !332, line: 299, baseType: !401, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !402, line: 18, baseType: !297)
!402 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!403 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !366, file: !325, line: 773, baseType: !197, size: 32, offset: 1088)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !366, file: !325, line: 785, baseType: !197, size: 32, offset: 1120)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !366, file: !325, line: 795, baseType: !406, size: 64, offset: 1152)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !325, line: 726, size: 128, elements: !408)
!408 = !{!409, !413}
!409 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !407, file: !325, line: 727, baseType: !410, size: 64)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !206, line: 23, baseType: !411)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !208, line: 31, baseType: !412)
!412 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !407, file: !325, line: 728, baseType: !46, size: 32, offset: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !366, file: !325, line: 801, baseType: !297, size: 64, offset: 1216)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !366, file: !325, line: 804, baseType: !416, size: 64, offset: 1280)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !417, line: 13, baseType: !418)
!417 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !164, line: 181, baseType: !419)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !164, line: 179, size: 64, elements: !420)
!420 = !{!421}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !419, file: !164, line: 180, baseType: !422, size: 64)
!422 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !206, line: 22, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !208, line: 30, baseType: !335)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !366, file: !325, line: 806, baseType: !46, size: 32, offset: 1344)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !366, file: !325, line: 808, baseType: !177, size: 32, offset: 1376)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !366, file: !325, line: 823, baseType: !427, size: 320, offset: 1408)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !428, line: 48, size: 320, elements: !429)
!428 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!429 = !{!430, !431, !432, !437, !439}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !427, file: !428, line: 49, baseType: !416, size: 64)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !427, file: !428, line: 55, baseType: !416, size: 64, offset: 64)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !427, file: !428, line: 57, baseType: !433, size: 32, offset: 128)
!433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !434, line: 15, size: 32, elements: !435)
!434 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!435 = !{!436}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !433, file: !434, line: 20, baseType: !197, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !427, file: !428, line: 59, baseType: !438, size: 32, offset: 160)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !186, line: 23, baseType: !185)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !427, file: !428, line: 60, baseType: !163, size: 128, offset: 192)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !366, file: !325, line: 825, baseType: !163, size: 128, offset: 1728)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !366, file: !325, line: 845, baseType: !46, size: 32, offset: 1856)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !366, file: !325, line: 849, baseType: !297, size: 64, offset: 1920)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !366, file: !325, line: 850, baseType: !297, size: 64, offset: 1984)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !366, file: !325, line: 852, baseType: !297, size: 64, offset: 2048)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !366, file: !325, line: 853, baseType: !297, size: 64, offset: 2112)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !366, file: !325, line: 854, baseType: !418, size: 64, offset: 2176)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !366, file: !325, line: 855, baseType: !297, size: 64, offset: 2240)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !366, file: !325, line: 856, baseType: !297, size: 64, offset: 2304)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !366, file: !325, line: 857, baseType: !297, size: 64, offset: 2368)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !366, file: !325, line: 858, baseType: !297, size: 64, offset: 2432)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !366, file: !325, line: 865, baseType: !452, size: 32, offset: 2496)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !453, line: 69, baseType: !454)
!453 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !453, line: 64, size: 32, elements: !455)
!455 = !{!456}
!456 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !454, file: !453, line: 65, baseType: !7, size: 32)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !366, file: !325, line: 867, baseType: !177, size: 32, offset: 2528)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !366, file: !325, line: 869, baseType: !297, size: 64, offset: 2560)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !366, file: !325, line: 869, baseType: !297, size: 64, offset: 2624)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !366, file: !325, line: 869, baseType: !297, size: 64, offset: 2688)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !366, file: !325, line: 869, baseType: !297, size: 64, offset: 2752)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !366, file: !325, line: 870, baseType: !297, size: 64, offset: 2816)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !366, file: !325, line: 870, baseType: !297, size: 64, offset: 2880)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !366, file: !325, line: 870, baseType: !297, size: 64, offset: 2944)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !366, file: !325, line: 871, baseType: !297, size: 64, offset: 3008)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !366, file: !325, line: 871, baseType: !297, size: 64, offset: 3072)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !366, file: !325, line: 871, baseType: !297, size: 64, offset: 3136)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !366, file: !325, line: 871, baseType: !297, size: 64, offset: 3200)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !366, file: !325, line: 873, baseType: !470, size: 3328, offset: 3264)
!470 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 3328, elements: !471)
!471 = !{!472}
!472 = !DISubrange(count: 52)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !366, file: !325, line: 875, baseType: !474, size: 1280, offset: 6592)
!474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !475, size: 1280, elements: !485)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !476, line: 22, size: 320, elements: !477)
!476 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!477 = !{!478, !479, !480, !481}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !475, file: !476, line: 23, baseType: !438, size: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !475, file: !476, line: 24, baseType: !422, size: 64, offset: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !475, file: !476, line: 26, baseType: !163, size: 128, offset: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !475, file: !476, line: 28, baseType: !482, size: 64, offset: 256)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !206, line: 20, baseType: !484)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !208, line: 26, baseType: !46)
!485 = !{!486}
!486 = !DISubrange(count: 4)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !366, file: !325, line: 877, baseType: !488, size: 64, offset: 7872)
!488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!489 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !325, line: 877, flags: DIFlagFwdDecl)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !366, file: !325, line: 880, baseType: !491, size: 1088, offset: 7936)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !492, line: 72, baseType: !493)
!492 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !492, line: 23, size: 1088, elements: !494)
!494 = !{!495, !496, !497, !498, !499, !502, !503, !511, !512, !539, !540, !541}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !493, file: !492, line: 28, baseType: !410, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !493, file: !492, line: 38, baseType: !418, size: 64, offset: 64)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !493, file: !492, line: 40, baseType: !297, size: 64, offset: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !493, file: !492, line: 43, baseType: !427, size: 320, offset: 192)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !493, file: !492, line: 44, baseType: !500, size: 64, offset: 512)
!500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !501, size: 64)
!501 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !492, line: 44, flags: DIFlagFwdDecl)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !493, file: !492, line: 48, baseType: !297, size: 64, offset: 576)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !493, file: !492, line: 59, baseType: !504, size: 256, offset: 640)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !505, line: 66, size: 256, elements: !506)
!505 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!506 = !{!507, !508, !509, !510}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !504, file: !505, line: 67, baseType: !416, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !504, file: !505, line: 68, baseType: !438, size: 32, offset: 64)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !504, file: !505, line: 70, baseType: !433, size: 32, offset: 96)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !504, file: !505, line: 72, baseType: !163, size: 128, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !493, file: !492, line: 60, baseType: !135, size: 64, offset: 896)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !493, file: !492, line: 61, baseType: !513, size: 64, offset: 960)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !515)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !516, line: 13, size: 1216, elements: !517)
!516 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!517 = !{!518, !519, !520, !521, !522, !523, !524, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !515, file: !516, line: 14, baseType: !135, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !515, file: !516, line: 15, baseType: !297, size: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !515, file: !516, line: 17, baseType: !297, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !515, file: !516, line: 17, baseType: !297, size: 64, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !515, file: !516, line: 18, baseType: !297, size: 64, offset: 256)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !515, file: !516, line: 18, baseType: !297, size: 64, offset: 320)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !515, file: !516, line: 19, baseType: !525, size: 64, offset: 384)
!525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !515, file: !516, line: 21, baseType: !283, size: 64, offset: 448)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !515, file: !516, line: 23, baseType: !283, size: 64, offset: 512)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !515, file: !516, line: 24, baseType: !283, size: 64, offset: 576)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !515, file: !516, line: 25, baseType: !283, size: 64, offset: 640)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !515, file: !516, line: 26, baseType: !283, size: 64, offset: 704)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !515, file: !516, line: 27, baseType: !283, size: 64, offset: 768)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !515, file: !516, line: 28, baseType: !283, size: 64, offset: 832)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !515, file: !516, line: 29, baseType: !283, size: 64, offset: 896)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !515, file: !516, line: 30, baseType: !283, size: 64, offset: 960)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !515, file: !516, line: 31, baseType: !283, size: 64, offset: 1024)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !515, file: !516, line: 32, baseType: !283, size: 64, offset: 1088)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !515, file: !516, line: 33, baseType: !283, size: 64, offset: 1152)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !493, file: !492, line: 63, baseType: !197, size: 32, offset: 1024)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !493, file: !492, line: 69, baseType: !215, size: 16, offset: 1056)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !493, file: !492, line: 70, baseType: !542, size: 16, offset: 1072)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !206, line: 18, baseType: !543)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !208, line: 23, baseType: !544)
!544 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !366, file: !325, line: 882, baseType: !297, size: 64, offset: 9024)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !366, file: !325, line: 885, baseType: !177, size: 32, offset: 9088)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !366, file: !325, line: 886, baseType: !548, size: 64, offset: 9152)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !325, line: 732, flags: DIFlagFwdDecl)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !366, file: !325, line: 901, baseType: !551, size: 64, offset: 9216)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !325, line: 901, flags: DIFlagFwdDecl)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !366, file: !325, line: 904, baseType: !330, size: 64, offset: 9280)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !366, file: !325, line: 906, baseType: !555, size: 64, offset: 9344)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !325, line: 906, flags: DIFlagFwdDecl)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !366, file: !325, line: 930, baseType: !197, size: 32, offset: 9408)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !366, file: !325, line: 933, baseType: !197, size: 32, offset: 9440)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !366, file: !325, line: 935, baseType: !560, size: 64, offset: 9472)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !561, line: 103, size: 64, elements: !562)
!561 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!562 = !{!563}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !560, file: !561, line: 104, baseType: !564, size: 64)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !561, line: 101, flags: DIFlagFwdDecl)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !366, file: !325, line: 940, baseType: !416, size: 64, offset: 9536)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !366, file: !325, line: 942, baseType: !568, size: 256, offset: 9600)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !569, line: 98, size: 256, elements: !570)
!569 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!570 = !{!571, !572, !573}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !568, file: !569, line: 99, baseType: !416, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !568, file: !569, line: 100, baseType: !163, size: 128, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !568, file: !569, line: 101, baseType: !574, size: 64, offset: 192)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !569, line: 21, baseType: !575)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DISubroutineType(types: !577)
!577 = !{null, !578}
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !363, file: !325, line: 986, baseType: !580, offset: 10240)
!580 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, elements: !581)
!581 = !{!582}
!582 = !DISubrange(count: -1)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !342, file: !325, line: 640, baseType: !584, size: 64, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !332, line: 297, baseType: !585)
!585 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !332, line: 297, size: 64, elements: !586)
!586 = !{!587}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !585, file: !332, line: 297, baseType: !588, size: 64)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !402, line: 19, baseType: !297)
!589 = !DIDerivedType(tag: DW_TAG_member, scope: !342, file: !325, line: 646, baseType: !590, size: 64, offset: 256)
!590 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !342, file: !325, line: 646, size: 64, elements: !591)
!591 = !{!592, !595}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !590, file: !325, line: 647, baseType: !593, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !594)
!594 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !325, line: 542, baseType: !297)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !590, file: !325, line: 648, baseType: !594, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !342, file: !325, line: 666, baseType: !46, size: 32, offset: 320)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !342, file: !325, line: 667, baseType: !598, size: 64, offset: 384)
!598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !599, size: 64)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !325, line: 579, size: 320, elements: !600)
!600 = !{!601}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !599, file: !325, line: 580, baseType: !427, size: 320)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !342, file: !325, line: 670, baseType: !603, size: 8, offset: 448)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !164, line: 35, baseType: !604)
!604 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !342, file: !325, line: 681, baseType: !606, size: 256, offset: 512)
!606 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !342, file: !325, line: 678, size: 256, elements: !607)
!607 = !{!608, !616}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !606, file: !325, line: 679, baseType: !609, size: 192, align: 64)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !610, line: 5, size: 192, align: 64, elements: !611)
!610 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!611 = !{!612, !613, !615}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !609, file: !610, line: 6, baseType: !297, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !609, file: !610, line: 7, baseType: !614, size: 64, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !609, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !609, file: !610, line: 8, baseType: !614, size: 64, offset: 128)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !606, file: !325, line: 680, baseType: !297, size: 64, offset: 192)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !342, file: !325, line: 689, baseType: !163, size: 128, offset: 768)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !342, file: !325, line: 691, baseType: !619, size: 64, offset: 896)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !325, line: 691, flags: DIFlagFwdDecl)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !342, file: !325, line: 694, baseType: !622, size: 64, offset: 960)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !624)
!624 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !325, line: 694, flags: DIFlagFwdDecl)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !342, file: !325, line: 697, baseType: !297, size: 64, offset: 1024)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !342, file: !325, line: 699, baseType: !330, size: 64, offset: 1088)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !342, file: !325, line: 700, baseType: !135, size: 64, offset: 1152)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !342, file: !325, line: 711, baseType: !416, size: 64, offset: 1216)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !342, file: !325, line: 717, baseType: !630, size: 64, offset: 1280)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !325, line: 717, flags: DIFlagFwdDecl)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !342, file: !325, line: 722, baseType: !633, offset: 1344)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !325, line: 570, elements: !383)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !302, file: !273, line: 90, baseType: !635, size: 64, offset: 192)
!635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !302, file: !273, line: 91, baseType: !637, size: 64, offset: 256)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !263, file: !157, line: 120, baseType: !639, size: 64, offset: 192)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!642, !230}
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !644)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !645)
!645 = !{!646, !647, !651, !655, !661, !665}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !644, file: !6, line: 40, baseType: !5, size: 32)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !644, file: !6, line: 41, baseType: !648, size: 64, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !649, size: 64)
!649 = !DISubroutineType(types: !650)
!650 = !{!603}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !644, file: !6, line: 42, baseType: !652, size: 64, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !653, size: 64)
!653 = !DISubroutineType(types: !654)
!654 = !{!135}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !644, file: !6, line: 43, baseType: !656, size: 64, offset: 192)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!525, !659}
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !644, file: !6, line: 44, baseType: !662, size: 64, offset: 256)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{!525}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !644, file: !6, line: 45, baseType: !666, size: 64, offset: 320)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{null, !135}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !263, file: !157, line: 121, baseType: !670, size: 64, offset: 256)
!670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !671, size: 64)
!671 = !DISubroutineType(types: !672)
!672 = !{!525, !230}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !263, file: !157, line: 122, baseType: !674, size: 64, offset: 320)
!674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !675, size: 64)
!675 = !DISubroutineType(types: !676)
!676 = !{null, !230, !677, !685}
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !679, line: 23, baseType: !680)
!679 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !679, line: 21, size: 32, elements: !681)
!681 = !{!682}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !680, file: !679, line: 22, baseType: !683, size: 32)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !164, line: 37, baseType: !684)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !281, line: 49, baseType: !7)
!685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!686 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !679, line: 28, baseType: !687)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !679, line: 26, size: 32, elements: !688)
!688 = !{!689}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !687, file: !679, line: 27, baseType: !690, size: 32)
!690 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !164, line: 38, baseType: !691)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !281, line: 50, baseType: !7)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !156, file: !157, line: 70, baseType: !693, size: 64, offset: 384)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !695, line: 190, size: 1152, elements: !696)
!695 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!696 = !{!697, !698, !699, !700, !701, !702, !703, !704, !799, !800, !801, !802, !803, !806}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !694, file: !695, line: 191, baseType: !197, size: 32)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !694, file: !695, line: 192, baseType: !197, size: 32, offset: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !694, file: !695, line: 202, baseType: !693, size: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !694, file: !695, line: 203, baseType: !160, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !694, file: !695, line: 205, baseType: !609, size: 192, align: 64, offset: 192)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !694, file: !695, line: 207, baseType: !525, size: 64, offset: 384)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !694, file: !695, line: 208, baseType: !7, size: 32, offset: 448)
!704 = !DIDerivedType(tag: DW_TAG_member, scope: !694, file: !695, line: 209, baseType: !705, size: 256, offset: 512)
!705 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !694, file: !695, line: 209, size: 256, elements: !706)
!706 = !{!707, !719, !723}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !705, file: !695, line: 210, baseType: !708, size: 256)
!708 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !695, line: 153, size: 256, elements: !709)
!709 = !{!710, !711, !715, !718}
!710 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !708, file: !695, line: 154, baseType: !297, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !708, file: !695, line: 156, baseType: !712, size: 64, offset: 64)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !610, line: 12, size: 64, elements: !713)
!713 = !{!714}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !712, file: !610, line: 13, baseType: !614, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !708, file: !695, line: 162, baseType: !716, size: 64, offset: 128)
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !717, size: 64)
!717 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !695, line: 162, flags: DIFlagFwdDecl)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !708, file: !695, line: 167, baseType: !297, size: 64, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !705, file: !695, line: 211, baseType: !720, size: 64)
!720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !695, line: 170, size: 64, elements: !721)
!721 = !{!722}
!722 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !720, file: !695, line: 171, baseType: !693, size: 64)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !705, file: !695, line: 212, baseType: !724, size: 256)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !695, line: 174, size: 256, elements: !725)
!725 = !{!726, !794, !797, !798}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !724, file: !695, line: 175, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !729)
!729 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !695, line: 271, size: 768, elements: !730)
!730 = !{!731, !754, !758, !762, !767, !771, !775, !779, !780, !781, !782, !790}
!731 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !729, file: !695, line: 276, baseType: !732, size: 64)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = !DISubroutineType(types: !734)
!734 = !{!46, !735}
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !695, line: 251, size: 1216, elements: !737)
!737 = !{!738, !739, !740, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !736, file: !695, line: 253, baseType: !693, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !736, file: !695, line: 254, baseType: !330, size: 64, offset: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !736, file: !695, line: 255, baseType: !741, size: 64, offset: 128)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !743, line: 66, flags: DIFlagFwdDecl)
!743 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!744 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !736, file: !695, line: 256, baseType: !135, size: 64, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !736, file: !695, line: 259, baseType: !504, size: 256, offset: 256)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !736, file: !695, line: 260, baseType: !504, size: 256, offset: 512)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !736, file: !695, line: 261, baseType: !46, size: 32, offset: 768)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !736, file: !695, line: 262, baseType: !163, size: 128, offset: 832)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !736, file: !695, line: 263, baseType: !247, size: 64, offset: 960)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !736, file: !695, line: 265, baseType: !294, size: 64, offset: 1024)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !736, file: !695, line: 266, baseType: !603, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !736, file: !695, line: 267, baseType: !603, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !736, file: !695, line: 268, baseType: !622, size: 64, offset: 1152)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !729, file: !695, line: 277, baseType: !755, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{null, !735}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !729, file: !695, line: 290, baseType: !759, size: 64, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!46, !741, !135}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !729, file: !695, line: 292, baseType: !763, size: 64, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!135, !741, !766}
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !729, file: !695, line: 293, baseType: !768, size: 64, offset: 256)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!135, !741, !135, !766}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !729, file: !695, line: 294, baseType: !772, size: 64, offset: 320)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{null, !741, !135}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !729, file: !695, line: 296, baseType: !776, size: 64, offset: 384)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!279, !735, !247, !294, !333}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !729, file: !695, line: 306, baseType: !294, size: 64, offset: 448)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !729, file: !695, line: 313, baseType: !603, size: 8, offset: 512)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !729, file: !695, line: 314, baseType: !776, size: 64, offset: 576)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !729, file: !695, line: 317, baseType: !783, size: 64, offset: 640)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{!786, !735, !788}
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !787, line: 59, baseType: !7)
!787 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !695, line: 31, flags: DIFlagFwdDecl)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !729, file: !695, line: 320, baseType: !791, size: 64, offset: 704)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!46, !735, !341}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !724, file: !695, line: 176, baseType: !795, size: 64, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !695, line: 35, flags: DIFlagFwdDecl)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !724, file: !695, line: 177, baseType: !333, size: 64, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !724, file: !695, line: 178, baseType: !693, size: 64, offset: 192)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !694, file: !695, line: 215, baseType: !135, size: 64, offset: 768)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !694, file: !695, line: 221, baseType: !410, size: 64, offset: 832)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !694, file: !695, line: 223, baseType: !217, size: 16, offset: 896)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !694, file: !695, line: 224, baseType: !289, size: 16, offset: 912)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !694, file: !695, line: 225, baseType: !804, size: 64, offset: 960)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !695, line: 36, flags: DIFlagFwdDecl)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !694, file: !695, line: 227, baseType: !353, size: 128, align: 64, offset: 1024)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !156, file: !157, line: 71, baseType: !808, size: 32, offset: 448)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !809, line: 19, size: 32, elements: !810)
!809 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!810 = !{!811}
!811 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !808, file: !809, line: 20, baseType: !812, size: 32)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !813, line: 113, baseType: !814)
!813 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !813, line: 111, size: 32, elements: !815)
!815 = !{!816}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !814, file: !813, line: 112, baseType: !197, size: 32)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !156, file: !157, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !156, file: !157, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !156, file: !157, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !156, file: !157, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !156, file: !157, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !153, file: !26, line: 707, baseType: !823, size: 64, offset: 512)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !153, file: !26, line: 709, baseType: !825, size: 64, offset: 576)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !153, file: !26, line: 711, baseType: !160, size: 64, offset: 640)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !153, file: !26, line: 712, baseType: !829, size: 64, offset: 704)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !831)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !832)
!832 = !{!833, !834, !835, !841, !846, !850}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !831, file: !26, line: 90, baseType: !160, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !831, file: !26, line: 91, baseType: !299, size: 64, offset: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !831, file: !26, line: 92, baseType: !836, size: 64, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!46, !839, !242}
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !831, file: !26, line: 93, baseType: !842, size: 64, offset: 192)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DISubroutineType(types: !844)
!844 = !{!247, !839, !845, !677, !685}
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !831, file: !26, line: 95, baseType: !847, size: 64, offset: 256)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DISubroutineType(types: !849)
!849 = !{null, !823}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !831, file: !26, line: 97, baseType: !851, size: 64, offset: 320)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !853)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !854)
!854 = !{!855, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !853, file: !38, line: 287, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{!46, !823}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !853, file: !38, line: 288, baseType: !847, size: 64, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !853, file: !38, line: 289, baseType: !856, size: 64, offset: 128)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !853, file: !38, line: 290, baseType: !856, size: 64, offset: 192)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !853, file: !38, line: 291, baseType: !856, size: 64, offset: 256)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !853, file: !38, line: 292, baseType: !856, size: 64, offset: 320)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !853, file: !38, line: 293, baseType: !856, size: 64, offset: 384)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !853, file: !38, line: 294, baseType: !856, size: 64, offset: 448)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !853, file: !38, line: 295, baseType: !856, size: 64, offset: 512)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !853, file: !38, line: 296, baseType: !856, size: 64, offset: 576)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !853, file: !38, line: 297, baseType: !856, size: 64, offset: 640)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !853, file: !38, line: 298, baseType: !856, size: 64, offset: 704)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !853, file: !38, line: 299, baseType: !856, size: 64, offset: 768)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !853, file: !38, line: 300, baseType: !856, size: 64, offset: 832)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !853, file: !38, line: 301, baseType: !856, size: 64, offset: 896)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !853, file: !38, line: 302, baseType: !856, size: 64, offset: 960)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !853, file: !38, line: 303, baseType: !856, size: 64, offset: 1024)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !853, file: !38, line: 304, baseType: !856, size: 64, offset: 1088)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !853, file: !38, line: 305, baseType: !856, size: 64, offset: 1152)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !853, file: !38, line: 306, baseType: !856, size: 64, offset: 1216)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !853, file: !38, line: 307, baseType: !856, size: 64, offset: 1280)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !853, file: !38, line: 308, baseType: !856, size: 64, offset: 1344)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !853, file: !38, line: 309, baseType: !856, size: 64, offset: 1408)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !153, file: !26, line: 714, baseType: !882, size: 64, offset: 768)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !884)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !885, line: 80, size: 1344, elements: !886)
!885 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!886 = !{!887, !888, !889, !890, !891, !892, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1353}
!887 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !884, file: !885, line: 81, baseType: !160, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !884, file: !885, line: 82, baseType: !160, size: 64, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !884, file: !885, line: 83, baseType: !299, size: 64, offset: 128)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !884, file: !885, line: 84, baseType: !299, size: 64, offset: 192)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !884, file: !885, line: 85, baseType: !299, size: 64, offset: 256)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !884, file: !885, line: 87, baseType: !893, size: 64, offset: 320)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = !DISubroutineType(types: !895)
!895 = !{!46, !823, !896}
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !898)
!898 = !{!899, !900, !901, !1284, !1285, !1286, !1287, !1303, !1316, !1317, !1318, !1319, !1320, !1328, !1329, !1330, !1331, !1332, !1333}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !897, file: !20, line: 97, baseType: !160, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !897, file: !20, line: 98, baseType: !882, size: 64, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !897, file: !20, line: 100, baseType: !902, size: 64, offset: 128)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !904)
!904 = !{!905, !906, !907, !911, !932, !958, !959, !960, !961, !965, !968, !969, !970, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1030, !1033, !1037, !1057, !1075, !1076, !1077, !1078, !1087, !1111, !1112, !1115, !1118, !1119, !1120, !1121, !1122, !1123, !1124, !1129, !1130, !1237, !1245, !1246, !1247, !1249, !1253, !1254, !1263, !1264, !1265, !1266, !1268, !1269, !1270, !1277, !1278, !1279, !1283}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !903, file: !13, line: 403, baseType: !12, size: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !903, file: !13, line: 406, baseType: !163, size: 128, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !903, file: !13, line: 409, baseType: !908, size: 448, offset: 192)
!908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 448, elements: !909)
!909 = !{!910}
!910 = !DISubrange(count: 56)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !903, file: !13, line: 417, baseType: !912, size: 768, offset: 640)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !913)
!913 = !{!914, !915, !916, !917, !920}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !912, file: !13, line: 46, baseType: !156, size: 512)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !912, file: !13, line: 47, baseType: !902, size: 64, offset: 512)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !912, file: !13, line: 48, baseType: !170, size: 64, offset: 576)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !912, file: !13, line: 49, baseType: !918, size: 64, offset: 640)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !13, line: 49, flags: DIFlagFwdDecl)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !912, file: !13, line: 50, baseType: !921, size: 64, offset: 704)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !923, line: 26, size: 256, elements: !924)
!923 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!924 = !{!925, !926}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !922, file: !923, line: 27, baseType: !7, size: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !922, file: !923, line: 28, baseType: !927, size: 192, offset: 64)
!927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !928, line: 43, size: 192, elements: !929)
!928 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!929 = !{!930, !931}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !927, file: !928, line: 44, baseType: !438, size: 32)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !927, file: !928, line: 45, baseType: !163, size: 128, offset: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !903, file: !13, line: 418, baseType: !933, size: 64, offset: 1408)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !935)
!935 = !{!936, !937, !942, !946, !950, !954}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !934, file: !13, line: 54, baseType: !285, size: 128)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !934, file: !13, line: 55, baseType: !938, size: 64, offset: 128)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DISubroutineType(types: !940)
!940 = !{!279, !933, !941, !247}
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !934, file: !13, line: 57, baseType: !943, size: 64, offset: 192)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = !DISubroutineType(types: !945)
!945 = !{!279, !933, !941, !160, !294}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !934, file: !13, line: 59, baseType: !947, size: 64, offset: 256)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DISubroutineType(types: !949)
!949 = !{null, !902, !160}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !934, file: !13, line: 60, baseType: !951, size: 64, offset: 320)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DISubroutineType(types: !953)
!953 = !{!46, !902}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !934, file: !13, line: 61, baseType: !955, size: 64, offset: 384)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DISubroutineType(types: !957)
!957 = !{null, !902}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !903, file: !13, line: 419, baseType: !160, size: 64, offset: 1472)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !903, file: !13, line: 420, baseType: !160, size: 64, offset: 1536)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !903, file: !13, line: 421, baseType: !170, size: 64, offset: 1600)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !903, file: !13, line: 424, baseType: !962, size: 64, offset: 1664)
!962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !963, size: 64)
!963 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !964)
!964 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !903, file: !13, line: 425, baseType: !966, size: 64, offset: 1728)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !483)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !903, file: !13, line: 426, baseType: !7, size: 32, offset: 1792)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !903, file: !13, line: 435, baseType: !504, size: 256, offset: 1856)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !903, file: !13, line: 437, baseType: !971, size: 64, offset: 2112)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !973, line: 69, size: 320, elements: !974)
!973 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!974 = !{!975, !976, !977, !994, !996, !1000, !1001}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !972, file: !973, line: 70, baseType: !160, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !972, file: !973, line: 71, baseType: !902, size: 64, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !972, file: !973, line: 72, baseType: !978, size: 64, offset: 128)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !980)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !973, line: 47, size: 256, elements: !981)
!981 = !{!982, !983, !989, !993}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !980, file: !973, line: 49, baseType: !7, size: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !980, file: !973, line: 51, baseType: !984, size: 64, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DISubroutineType(types: !986)
!986 = !{!46, !160, !987}
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !972)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !980, file: !973, line: 53, baseType: !990, size: 64, offset: 128)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DISubroutineType(types: !992)
!992 = !{!46, !247, !987}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !980, file: !973, line: 55, baseType: !666, size: 64, offset: 192)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !972, file: !973, line: 73, baseType: !995, size: 16, offset: 192)
!995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !972, file: !973, line: 74, baseType: !997, size: 8, offset: 208)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !206, line: 16, baseType: !998)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !208, line: 20, baseType: !999)
!999 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !972, file: !973, line: 75, baseType: !205, size: 8, offset: 216)
!1001 = !DIDerivedType(tag: DW_TAG_member, scope: !972, file: !973, line: 76, baseType: !1002, size: 64, offset: 256)
!1002 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !972, file: !973, line: 76, size: 64, elements: !1003)
!1003 = !{!1004, !1005, !1012}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1002, file: !973, line: 77, baseType: !135, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1002, file: !973, line: 78, baseType: !1006, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1008)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !973, line: 86, size: 128, elements: !1009)
!1009 = !{!1010, !1011}
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1008, file: !973, line: 87, baseType: !7, size: 32)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1008, file: !973, line: 88, baseType: !247, size: 64, offset: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1002, file: !973, line: 79, baseType: !1013, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1015)
!1015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !973, line: 92, size: 256, elements: !1016)
!1016 = !{!1017, !1018, !1019, !1021, !1022}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1015, file: !973, line: 94, baseType: !7, size: 32)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1015, file: !973, line: 95, baseType: !7, size: 32, offset: 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1015, file: !973, line: 96, baseType: !1020, size: 64, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1015, file: !973, line: 97, baseType: !978, size: 64, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1015, file: !973, line: 98, baseType: !135, size: 64, offset: 192)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !903, file: !13, line: 438, baseType: !7, size: 32, offset: 2176)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !903, file: !13, line: 441, baseType: !7, size: 32, offset: 2208)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !903, file: !13, line: 442, baseType: !962, size: 64, offset: 2240)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !903, file: !13, line: 443, baseType: !966, size: 64, offset: 2304)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !903, file: !13, line: 444, baseType: !603, size: 8, offset: 2368)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !903, file: !13, line: 451, baseType: !603, size: 8, offset: 2376)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !903, file: !13, line: 454, baseType: !7, size: 32, offset: 2400)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !903, file: !13, line: 455, baseType: !1031, size: 64, offset: 2432)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !13, line: 43, flags: DIFlagFwdDecl)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !903, file: !13, line: 458, baseType: !1034, size: 64, offset: 2496)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DISubroutineType(types: !1036)
!1036 = !{!46}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !903, file: !13, line: 460, baseType: !1038, size: 4032, align: 512, offset: 2560)
!1038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1039, size: 4032, elements: !1055)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !13, line: 362, size: 576, elements: !1040)
!1040 = !{!1041, !1042, !1043}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1039, file: !13, line: 363, baseType: !135, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1039, file: !13, line: 364, baseType: !7, size: 32, offset: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1039, file: !13, line: 367, baseType: !1044, size: 448, offset: 128)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !13, line: 319, size: 448, elements: !1045)
!1045 = !{!1046, !1047}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1044, file: !13, line: 320, baseType: !902, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1044, file: !13, line: 321, baseType: !1048, size: 384, offset: 64)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1049, line: 40, size: 384, elements: !1050)
!1049 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1050 = !{!1051}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1048, file: !1049, line: 41, baseType: !1052, size: 384, align: 64)
!1052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !609, size: 384, align: 64, elements: !1053)
!1053 = !{!1054}
!1054 = !DISubrange(count: 2)
!1055 = !{!1056}
!1056 = !DISubrange(count: 7)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !903, file: !13, line: 463, baseType: !1058, size: 192, offset: 6592)
!1058 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1059, line: 8, size: 192, elements: !1060)
!1059 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1060 = !{!1061, !1062, !1064}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1058, file: !1059, line: 10, baseType: !7, size: 32)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1058, file: !1059, line: 11, baseType: !1063, size: 64, offset: 64)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1058, file: !1059, line: 12, baseType: !1065, size: 64, offset: 128)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1067, line: 59, size: 48, elements: !1068)
!1067 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1068 = !{!1069, !1070, !1071, !1072, !1073, !1074}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1066, file: !1067, line: 60, baseType: !542, size: 16)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1066, file: !1067, line: 61, baseType: !542, size: 16, offset: 16)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1066, file: !1067, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1066, file: !1067, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1066, file: !1067, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1066, file: !1067, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !903, file: !13, line: 465, baseType: !297, size: 64, offset: 6784)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !903, file: !13, line: 469, baseType: !7, size: 32, offset: 6848)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !903, file: !13, line: 470, baseType: !163, size: 128, offset: 6912)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !903, file: !13, line: 471, baseType: !1079, size: 64, offset: 7040)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1081, line: 33, size: 96, elements: !1082)
!1081 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1082 = !{!1083, !1084, !1085, !1086}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1080, file: !1081, line: 37, baseType: !46, size: 32)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1080, file: !1081, line: 43, baseType: !46, size: 32, offset: 32)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1080, file: !1081, line: 45, baseType: !217, size: 16, offset: 64)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1080, file: !1081, line: 47, baseType: !217, size: 16, offset: 80)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !903, file: !13, line: 476, baseType: !1088, size: 64, offset: 7104)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !13, line: 378, size: 256, elements: !1090)
!1090 = !{!1091, !1108, !1109, !1110}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1089, file: !13, line: 379, baseType: !1092, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1093, size: 64)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1094, line: 204, baseType: !1095)
!1094 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1094, line: 197, size: 192, elements: !1096)
!1096 = !{!1097, !1100, !1101, !1102, !1104, !1106}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1095, file: !1094, line: 198, baseType: !1098, size: 32)
!1098 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1094, line: 21, baseType: !1099)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !208, line: 27, baseType: !7)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1095, file: !1094, line: 199, baseType: !209, size: 8, offset: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1095, file: !1094, line: 200, baseType: !209, size: 8, offset: 40)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1095, file: !1094, line: 201, baseType: !1103, size: 16, offset: 48)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1094, line: 17, baseType: !216)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1095, file: !1094, line: 202, baseType: !1105, size: 64, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1094, line: 16, baseType: !411)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1095, file: !1094, line: 203, baseType: !1107, size: 64, offset: 128)
!1107 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1094, line: 22, baseType: !411)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1089, file: !13, line: 380, baseType: !7, size: 32, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1089, file: !13, line: 381, baseType: !247, size: 64, offset: 128)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1089, file: !13, line: 382, baseType: !247, size: 64, offset: 192)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !903, file: !13, line: 477, baseType: !1089, size: 256, offset: 7168)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !903, file: !13, line: 480, baseType: !1113, size: 64, offset: 7424)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !903, file: !13, line: 483, baseType: !1116, size: 64, offset: 7488)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !903, file: !13, line: 488, baseType: !247, size: 64, offset: 7552)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !903, file: !13, line: 492, baseType: !135, size: 64, offset: 7616)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !903, file: !13, line: 493, baseType: !7, size: 32, offset: 7680)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !903, file: !13, line: 495, baseType: !135, size: 64, offset: 7744)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !903, file: !13, line: 496, baseType: !7, size: 32, offset: 7808)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !903, file: !13, line: 499, baseType: !7, size: 32, offset: 7840)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !903, file: !13, line: 500, baseType: !1125, size: 64, offset: 7872)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1127, line: 45, baseType: !1128)
!1127 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1128 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !903, file: !13, line: 503, baseType: !7, size: 32, offset: 7936)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !903, file: !13, line: 504, baseType: !1131, size: 64, offset: 8000)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1134, line: 96, size: 192, elements: !1135)
!1134 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1135 = !{!1136, !1137, !1198, !1201}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1133, file: !1134, line: 97, baseType: !7, size: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1133, file: !1134, line: 98, baseType: !1138, size: 64, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1134, line: 24, size: 3072, elements: !1140)
!1140 = !{!1141, !1143, !1144, !1145, !1146, !1160, !1161, !1162, !1163, !1182, !1183, !1184, !1195, !1196, !1197}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1139, file: !1134, line: 26, baseType: !1142, size: 128)
!1142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !416, size: 128, elements: !1053)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1139, file: !1134, line: 27, baseType: !1142, size: 128, offset: 128)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1139, file: !1134, line: 28, baseType: !46, size: 32, offset: 256)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1139, file: !1134, line: 31, baseType: !177, size: 32, align: 512, offset: 512)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1139, file: !1134, line: 32, baseType: !1147, size: 960, offset: 576)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1148, line: 206, size: 960, elements: !1149)
!1148 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1149 = !{!1150, !1151, !1154, !1156, !1157, !1159}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1147, file: !1148, line: 207, baseType: !356, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1147, file: !1148, line: 208, baseType: !1152, size: 256, offset: 64)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1153, size: 256, elements: !485)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !356, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1147, file: !1148, line: 209, baseType: !1155, size: 256, offset: 320)
!1155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 256, elements: !485)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1147, file: !1148, line: 213, baseType: !283, size: 64, offset: 576)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1147, file: !1148, line: 215, baseType: !1158, size: 256, offset: 640)
!1158 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 256, elements: !485)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1147, file: !1148, line: 216, baseType: !205, size: 8, offset: 896)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1139, file: !1134, line: 33, baseType: !297, size: 64, offset: 1536)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1139, file: !1134, line: 34, baseType: !297, size: 64, offset: 1600)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1139, file: !1134, line: 35, baseType: !603, size: 8, offset: 1664)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1139, file: !1134, line: 36, baseType: !1164, size: 320, offset: 1728)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1165, line: 11, size: 320, elements: !1166)
!1165 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1166 = !{!1167, !1174, !1175, !1180}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1164, file: !1165, line: 16, baseType: !1168, size: 128)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !164, line: 198, size: 128, elements: !1169)
!1169 = !{!1170, !1172}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1168, file: !164, line: 199, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1168, file: !164, line: 199, baseType: !1173, size: 64, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1164, file: !1165, line: 17, baseType: !297, size: 64, offset: 128)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1164, file: !1165, line: 18, baseType: !1176, size: 64, offset: 192)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{null, !1179}
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1164, file: !1165, line: 19, baseType: !1181, size: 32, offset: 256)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !206, line: 21, baseType: !1099)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1139, file: !1134, line: 37, baseType: !568, size: 256, offset: 2048)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1139, file: !1134, line: 38, baseType: !353, size: 128, align: 64, offset: 2304)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1139, file: !1134, line: 39, baseType: !1185, size: 64, offset: 2432)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1134, line: 49, size: 768, elements: !1187)
!1187 = !{!1188, !1189, !1190, !1191, !1192, !1193, !1194}
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1186, file: !1134, line: 50, baseType: !177, size: 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1186, file: !1134, line: 51, baseType: !1155, size: 256, offset: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1186, file: !1134, line: 53, baseType: !1155, size: 256, offset: 320)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1186, file: !1134, line: 54, baseType: !297, size: 64, offset: 576)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1186, file: !1134, line: 55, baseType: !1185, size: 64, offset: 640)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1186, file: !1134, line: 56, baseType: !46, size: 32, offset: 704)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1186, file: !1134, line: 57, baseType: !46, size: 32, offset: 736)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1139, file: !1134, line: 40, baseType: !297, size: 64, offset: 2496)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1139, file: !1134, line: 42, baseType: !46, size: 32, offset: 2560)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1139, file: !1134, line: 43, baseType: !1132, size: 64, offset: 2624)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1133, file: !1134, line: 99, baseType: !1199, offset: 128)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1200, line: 211, elements: !383)
!1200 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1133, file: !1134, line: 100, baseType: !1202, size: 64, offset: 128)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1134, line: 63, size: 3008, elements: !1204)
!1204 = !{!1205, !1206, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1236}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1203, file: !1134, line: 64, baseType: !1185, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1203, file: !1134, line: 65, baseType: !1207, size: 192, offset: 64)
!1207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1185, size: 192, elements: !248)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1203, file: !1134, line: 67, baseType: !46, size: 32, offset: 256)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1203, file: !1134, line: 68, baseType: !504, size: 256, offset: 320)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1203, file: !1134, line: 69, baseType: !177, size: 32, offset: 576)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1203, file: !1134, line: 70, baseType: !504, size: 256, offset: 640)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1203, file: !1134, line: 71, baseType: !297, size: 64, offset: 896)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1203, file: !1134, line: 72, baseType: !297, size: 64, offset: 960)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1203, file: !1134, line: 73, baseType: !297, size: 64, offset: 1024)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1203, file: !1134, line: 74, baseType: !297, size: 64, offset: 1088)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1203, file: !1134, line: 75, baseType: !297, size: 64, offset: 1152)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1203, file: !1134, line: 76, baseType: !297, size: 64, offset: 1216)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1203, file: !1134, line: 77, baseType: !297, size: 64, offset: 1280)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1203, file: !1134, line: 78, baseType: !297, size: 64, offset: 1344)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1203, file: !1134, line: 79, baseType: !603, size: 8, offset: 1408)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1203, file: !1134, line: 80, baseType: !297, size: 64, offset: 1472)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1203, file: !1134, line: 81, baseType: !504, size: 256, offset: 1536)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1203, file: !1134, line: 82, baseType: !922, size: 256, offset: 1792)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1203, file: !1134, line: 84, baseType: !197, size: 32, offset: 2048)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1203, file: !1134, line: 87, baseType: !297, size: 64, offset: 2112)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1203, file: !1134, line: 88, baseType: !297, size: 64, offset: 2176)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1203, file: !1134, line: 89, baseType: !1228, size: 704, offset: 2240)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !569, line: 111, size: 704, elements: !1229)
!1229 = !{!1230, !1231, !1232, !1235}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1228, file: !569, line: 112, baseType: !568, size: 256)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1228, file: !569, line: 113, baseType: !1164, size: 320, offset: 256)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1228, file: !569, line: 116, baseType: !1233, size: 64, offset: 576)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !569, line: 18, flags: DIFlagFwdDecl)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1228, file: !569, line: 117, baseType: !46, size: 32, offset: 640)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1203, file: !1134, line: 90, baseType: !1132, size: 64, offset: 2944)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !903, file: !13, line: 515, baseType: !1238, size: 64, offset: 8064)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1240, line: 117, size: 128, elements: !1241)
!1240 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1241 = !{!1242, !1243, !1244}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1239, file: !1240, line: 118, baseType: !483, size: 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1239, file: !1240, line: 119, baseType: !483, size: 32, offset: 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1239, file: !1240, line: 120, baseType: !283, size: 64, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !903, file: !13, line: 516, baseType: !7, size: 32, offset: 8128)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !903, file: !13, line: 519, baseType: !7, size: 32, offset: 8160)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !903, file: !13, line: 520, baseType: !1248, size: 64, offset: 8192)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !903, file: !13, line: 523, baseType: !1250, size: 64, offset: 8256)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1252, size: 64)
!1252 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !13, line: 523, flags: DIFlagFwdDecl)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !903, file: !13, line: 524, baseType: !7, size: 32, offset: 8320)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !903, file: !13, line: 525, baseType: !1255, size: 64, offset: 8384)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !1258, line: 28, size: 192, elements: !1259)
!1258 = !DIFile(filename: "./include/linux/tracepoint.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "aeb3837c9edbef1074628f52e8cfdb75")
!1259 = !{!1260, !1261, !1262}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "system", scope: !1257, file: !1258, line: 29, baseType: !160, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "eval_string", scope: !1257, file: !1258, line: 30, baseType: !160, size: 64, offset: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "eval_value", scope: !1257, file: !1258, line: 31, baseType: !297, size: 64, offset: 128)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !903, file: !13, line: 526, baseType: !7, size: 32, offset: 8448)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !903, file: !13, line: 533, baseType: !135, size: 64, offset: 8512)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !903, file: !13, line: 534, baseType: !7, size: 32, offset: 8576)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !903, file: !13, line: 535, baseType: !1267, size: 64, offset: 8640)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !903, file: !13, line: 536, baseType: !7, size: 32, offset: 8704)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !903, file: !13, line: 539, baseType: !46, size: 32, offset: 8736)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !903, file: !13, line: 540, baseType: !1271, size: 64, offset: 8768)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1273, line: 32, size: 64, elements: !1274)
!1273 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1274 = !{!1275, !1276}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1272, file: !1273, line: 33, baseType: !483, size: 32)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1272, file: !1273, line: 34, baseType: !483, size: 32, offset: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !903, file: !13, line: 563, baseType: !163, size: 128, offset: 8832)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !903, file: !13, line: 565, baseType: !163, size: 128, offset: 8960)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !903, file: !13, line: 568, baseType: !1280, size: 64, offset: 9088)
!1280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1281, size: 64)
!1281 = !DISubroutineType(types: !1282)
!1282 = !{null}
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !903, file: !13, line: 570, baseType: !197, size: 32, offset: 9152)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !897, file: !20, line: 101, baseType: !160, size: 64, offset: 192)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !897, file: !20, line: 103, baseType: !603, size: 8, offset: 256)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !897, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !897, file: !20, line: 106, baseType: !1288, size: 64, offset: 320)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1290)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1291, line: 282, size: 1600, elements: !1292)
!1291 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1292 = !{!1293, !1297, !1298, !1302}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1290, file: !1291, line: 283, baseType: !1294, size: 256)
!1294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 256, elements: !1295)
!1295 = !{!1296}
!1296 = !DISubrange(count: 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1290, file: !1291, line: 284, baseType: !1294, size: 256, offset: 256)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1290, file: !1291, line: 285, baseType: !1299, size: 1024, offset: 512)
!1299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 1024, elements: !1300)
!1300 = !{!1301}
!1301 = !DISubrange(count: 128)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1290, file: !1291, line: 286, baseType: !525, size: 64, offset: 1536)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !897, file: !20, line: 107, baseType: !1304, size: 64, offset: 384)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1306)
!1306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1291, line: 217, size: 256, elements: !1307)
!1307 = !{!1308, !1312, !1314, !1315}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1306, file: !1291, line: 218, baseType: !1309, size: 128)
!1309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 128, elements: !1310)
!1310 = !{!1311}
!1311 = !DISubrange(count: 16)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1306, file: !1291, line: 219, baseType: !1313, size: 64, offset: 128)
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1291, line: 15, baseType: !297)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1306, file: !1291, line: 220, baseType: !1099, size: 32, offset: 192)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1306, file: !1291, line: 221, baseType: !1099, size: 32, offset: 224)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !897, file: !20, line: 109, baseType: !856, size: 64, offset: 448)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !897, file: !20, line: 110, baseType: !847, size: 64, offset: 512)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !897, file: !20, line: 111, baseType: !856, size: 64, offset: 576)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !897, file: !20, line: 112, baseType: !847, size: 64, offset: 640)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !897, file: !20, line: 113, baseType: !1321, size: 64, offset: 704)
!1321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1322, size: 64)
!1322 = !DISubroutineType(types: !1323)
!1323 = !{!46, !823, !1324}
!1324 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1325)
!1325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1326)
!1326 = !{!1327}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1325, file: !38, line: 59, baseType: !46, size: 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !897, file: !20, line: 114, baseType: !856, size: 64, offset: 768)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !897, file: !20, line: 115, baseType: !299, size: 64, offset: 832)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !897, file: !20, line: 116, baseType: !299, size: 64, offset: 896)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !897, file: !20, line: 118, baseType: !851, size: 64, offset: 960)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !897, file: !20, line: 119, baseType: !847, size: 64, offset: 1024)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !897, file: !20, line: 121, baseType: !1334, size: 64, offset: 1088)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !884, file: !885, line: 88, baseType: !836, size: 64, offset: 384)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !884, file: !885, line: 89, baseType: !856, size: 64, offset: 448)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !884, file: !885, line: 90, baseType: !847, size: 64, offset: 512)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !884, file: !885, line: 91, baseType: !847, size: 64, offset: 576)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !884, file: !885, line: 92, baseType: !847, size: 64, offset: 640)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !884, file: !885, line: 94, baseType: !856, size: 64, offset: 704)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !884, file: !885, line: 95, baseType: !856, size: 64, offset: 768)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !884, file: !885, line: 97, baseType: !1321, size: 64, offset: 832)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !884, file: !885, line: 98, baseType: !856, size: 64, offset: 896)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !884, file: !885, line: 100, baseType: !856, size: 64, offset: 960)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !884, file: !885, line: 102, baseType: !856, size: 64, offset: 1024)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !884, file: !885, line: 103, baseType: !847, size: 64, offset: 1088)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !884, file: !885, line: 105, baseType: !851, size: 64, offset: 1152)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !884, file: !885, line: 107, baseType: !1350, size: 64, offset: 1216)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1352)
!1352 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !885, line: 107, flags: DIFlagFwdDecl)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !884, file: !885, line: 109, baseType: !603, size: 8, offset: 1280)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !153, file: !26, line: 715, baseType: !896, size: 64, offset: 832)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !153, file: !26, line: 717, baseType: !135, size: 64, offset: 896)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !153, file: !26, line: 719, baseType: !135, size: 64, offset: 960)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !153, file: !26, line: 721, baseType: !504, size: 256, offset: 1024)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !153, file: !26, line: 725, baseType: !1359, size: 448, offset: 1280)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1360)
!1360 = !{!1361, !1362, !1363, !1364}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1359, file: !26, line: 518, baseType: !163, size: 128)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1359, file: !26, line: 519, baseType: !163, size: 128, offset: 128)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1359, file: !26, line: 520, baseType: !163, size: 128, offset: 256)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1359, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !153, file: !26, line: 726, baseType: !1366, size: 2496, offset: 1728)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1367)
!1367 = !{!1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1412, !1413, !1414, !1415, !1416, !1417, !1488, !1489, !1490, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1528, !1532}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1366, file: !38, line: 664, baseType: !1324, size: 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1366, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1366, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1366, file: !38, line: 667, baseType: !603, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1366, file: !38, line: 668, baseType: !603, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1366, file: !38, line: 669, baseType: !603, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1366, file: !38, line: 670, baseType: !603, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1366, file: !38, line: 671, baseType: !603, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1366, file: !38, line: 672, baseType: !603, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1366, file: !38, line: 673, baseType: !603, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1366, file: !38, line: 674, baseType: !603, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1366, file: !38, line: 675, baseType: !1181, size: 32, offset: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1366, file: !38, line: 676, baseType: !177, size: 32, offset: 96)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1366, file: !38, line: 678, baseType: !163, size: 128, offset: 128)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1366, file: !38, line: 679, baseType: !922, size: 256, offset: 256)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1366, file: !38, line: 680, baseType: !1384, size: 64, offset: 512)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1386, line: 43, size: 1536, elements: !1387)
!1386 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1387 = !{!1388, !1389, !1390, !1391, !1392, !1395, !1396, !1397, !1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1385, file: !1386, line: 44, baseType: !160, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1385, file: !1386, line: 45, baseType: !46, size: 32, offset: 64)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1385, file: !1386, line: 46, baseType: !163, size: 128, offset: 128)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1385, file: !1386, line: 47, baseType: !177, size: 32, offset: 256)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1385, file: !1386, line: 48, baseType: !1393, size: 64, offset: 320)
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1385, file: !1386, line: 49, baseType: !1164, size: 320, offset: 384)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1385, file: !1386, line: 50, baseType: !297, size: 64, offset: 704)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1385, file: !1386, line: 51, baseType: !1398, size: 64, offset: 768)
!1398 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1399, line: 29, baseType: !422)
!1399 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1385, file: !1386, line: 52, baseType: !1398, size: 64, offset: 832)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1385, file: !1386, line: 53, baseType: !1398, size: 64, offset: 896)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1385, file: !1386, line: 54, baseType: !1398, size: 64, offset: 960)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1385, file: !1386, line: 55, baseType: !1398, size: 64, offset: 1024)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1385, file: !1386, line: 56, baseType: !297, size: 64, offset: 1088)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1385, file: !1386, line: 57, baseType: !297, size: 64, offset: 1152)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1385, file: !1386, line: 58, baseType: !297, size: 64, offset: 1216)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1385, file: !1386, line: 59, baseType: !297, size: 64, offset: 1280)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1385, file: !1386, line: 60, baseType: !297, size: 64, offset: 1344)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1385, file: !1386, line: 61, baseType: !823, size: 64, offset: 1408)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1385, file: !1386, line: 62, baseType: !603, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1385, file: !1386, line: 63, baseType: !603, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1366, file: !38, line: 681, baseType: !603, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1366, file: !38, line: 682, baseType: !603, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1366, file: !38, line: 683, baseType: !603, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1366, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1366, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1366, file: !38, line: 690, baseType: !1418, size: 512, offset: 640)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1419)
!1419 = !{!1420, !1426, !1427, !1432, !1484, !1485, !1486, !1487}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1418, file: !33, line: 119, baseType: !1421, size: 256)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1422, line: 9, size: 256, elements: !1423)
!1422 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1423 = !{!1424, !1425}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1421, file: !1422, line: 10, baseType: !609, size: 192, align: 64)
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
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1438, file: !33, line: 216, baseType: !438, size: 32)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1438, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1438, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1438, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1438, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1438, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1438, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1438, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1438, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1438, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1438, file: !33, line: 227, baseType: !217, size: 16, offset: 192)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1438, file: !33, line: 228, baseType: !217, size: 16, offset: 208)
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
!1463 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !164, line: 32, baseType: !1464)
!1464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !281, line: 96, baseType: !46)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1434, file: !33, line: 163, baseType: !1466, size: 32, offset: 128)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !453, line: 274, baseType: !1467)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !453, line: 274, size: 32, elements: !1468)
!1468 = !{!1469}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1467, file: !453, line: 274, baseType: !452, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1434, file: !33, line: 164, baseType: !1431, size: 64, offset: 192)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1434, file: !33, line: 165, baseType: !1472, size: 128, offset: 256)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1422, line: 14, size: 128, elements: !1473)
!1473 = !{!1474}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1472, file: !1422, line: 15, baseType: !1475, size: 128)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !610, line: 26, size: 128, elements: !1476)
!1476 = !{!1477, !1478}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1475, file: !610, line: 27, baseType: !712, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1475, file: !610, line: 28, baseType: !614, size: 64, offset: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1434, file: !33, line: 166, baseType: !1480, size: 64, offset: 384)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DISubroutineType(types: !1482)
!1482 = !{!1398}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1434, file: !33, line: 167, baseType: !1398, size: 64, offset: 448)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1418, file: !33, line: 123, baseType: !205, size: 8, offset: 448)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1418, file: !33, line: 124, baseType: !205, size: 8, offset: 456)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1418, file: !33, line: 125, baseType: !205, size: 8, offset: 464)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1418, file: !33, line: 126, baseType: !205, size: 8, offset: 472)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1366, file: !38, line: 691, baseType: !410, size: 64, offset: 1152)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1366, file: !38, line: 692, baseType: !568, size: 256, offset: 1216)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1366, file: !38, line: 693, baseType: !1491, size: 192, offset: 1472)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1492, line: 41, baseType: !1493)
!1492 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1492, line: 37, size: 192, elements: !1494)
!1494 = !{!1495, !1496}
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1493, file: !1492, line: 38, baseType: !177, size: 32)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1493, file: !1492, line: 39, baseType: !163, size: 128, offset: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1366, file: !38, line: 694, baseType: !1393, size: 64, offset: 1664)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1366, file: !38, line: 695, baseType: !197, size: 32, offset: 1728)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1366, file: !38, line: 696, baseType: !197, size: 32, offset: 1760)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1366, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1366, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1366, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1366, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1366, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1366, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1366, file: !38, line: 703, baseType: !603, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
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
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1366, file: !38, line: 715, baseType: !410, size: 64, offset: 2048)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1366, file: !38, line: 716, baseType: !410, size: 64, offset: 2112)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1366, file: !38, line: 717, baseType: !410, size: 64, offset: 2176)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1366, file: !38, line: 718, baseType: !410, size: 64, offset: 2240)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1366, file: !38, line: 720, baseType: !1523, size: 64, offset: 2304)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1525)
!1525 = !{!1526, !1527}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1524, file: !38, line: 633, baseType: !177, size: 32)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1524, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1366, file: !38, line: 721, baseType: !1529, size: 64, offset: 2368)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{null, !823, !483}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1366, file: !38, line: 722, baseType: !1533, size: 64, offset: 2432)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !54, line: 117, size: 2432, elements: !1535)
!1535 = !{!1536, !1565, !1566, !1573, !1578, !1605, !1606}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency", scope: !1534, file: !54, line: 118, baseType: !1537, size: 320)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_constraints", file: !54, line: 52, size: 320, elements: !1538)
!1538 = !{!1539, !1544, !1545, !1546, !1547, !1548}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1537, file: !54, line: 53, baseType: !1540, size: 128)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_head", file: !1541, line: 82, size: 128, elements: !1542)
!1541 = !DIFile(filename: "./include/linux/plist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "36be10d36c9bfc89112b5a3da719ae9b")
!1542 = !{!1543}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1540, file: !1541, line: 83, baseType: !163, size: 128)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "target_value", scope: !1537, file: !54, line: 54, baseType: !483, size: 32, offset: 128)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "default_value", scope: !1537, file: !54, line: 55, baseType: !483, size: 32, offset: 160)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "no_constraint_value", scope: !1537, file: !54, line: 56, baseType: !483, size: 32, offset: 192)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1537, file: !54, line: 57, baseType: !53, size: 32, offset: 224)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "notifiers", scope: !1537, file: !54, line: 58, baseType: !1549, size: 64, offset: 256)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !1551, line: 65, size: 384, elements: !1552)
!1551 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "64ed342c7a5ca8998efd49f7b2982228")
!1552 = !{!1553, !1554}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !1550, file: !1551, line: 66, baseType: !427, size: 320)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1550, file: !1551, line: 67, baseType: !1555, size: 64, offset: 320)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !1551, line: 54, size: 192, elements: !1557)
!1557 = !{!1558, !1563, !1564}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !1556, file: !1551, line: 55, baseType: !1559, size: 64)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !1551, line: 51, baseType: !1560)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{!46, !1555, !297, !135}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1556, file: !1551, line: 56, baseType: !1555, size: 64, offset: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !1556, file: !1551, line: 57, baseType: !46, size: 32, offset: 128)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance", scope: !1534, file: !54, line: 119, baseType: !1537, size: 320, offset: 320)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1534, file: !54, line: 120, baseType: !1567, size: 1408, offset: 640)
!1567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_constraints", file: !54, line: 85, size: 1408, elements: !1568)
!1568 = !{!1569, !1570, !1571, !1572}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq", scope: !1567, file: !54, line: 86, baseType: !1537, size: 320)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "min_freq_notifiers", scope: !1567, file: !54, line: 87, baseType: !1550, size: 384, offset: 320)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq", scope: !1567, file: !54, line: 88, baseType: !1537, size: 320, offset: 704)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "max_freq_notifiers", scope: !1567, file: !54, line: 89, baseType: !1550, size: 384, offset: 1024)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1534, file: !54, line: 121, baseType: !1574, size: 192, offset: 2048)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags", file: !54, line: 71, size: 192, elements: !1575)
!1575 = !{!1576, !1577}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1574, file: !54, line: 72, baseType: !163, size: 128)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "effective_flags", scope: !1574, file: !54, line: 73, baseType: !483, size: 32, offset: 128)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "resume_latency_req", scope: !1534, file: !54, line: 122, baseType: !1579, size: 64, offset: 2240)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos_request", file: !54, line: 107, size: 576, elements: !1581)
!1581 = !{!1582, !1583, !1604}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1580, file: !54, line: 108, baseType: !59, size: 32)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1580, file: !54, line: 113, baseType: !1584, size: 448, offset: 64)
!1584 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1580, file: !54, line: 109, size: 448, elements: !1585)
!1585 = !{!1586, !1592, !1597}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !1584, file: !54, line: 110, baseType: !1587, size: 320)
!1587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "plist_node", file: !1541, line: 86, size: 320, elements: !1588)
!1588 = !{!1589, !1590, !1591}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !1587, file: !1541, line: 87, baseType: !46, size: 32)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "prio_list", scope: !1587, file: !1541, line: 88, baseType: !163, size: 128, offset: 64)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "node_list", scope: !1587, file: !1541, line: 89, baseType: !163, size: 128, offset: 192)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flr", scope: !1584, file: !54, line: 111, baseType: !1593, size: 192)
!1593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_qos_flags_request", file: !54, line: 66, size: 192, elements: !1594)
!1594 = !{!1595, !1596}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1593, file: !54, line: 67, baseType: !163, size: 128)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1593, file: !54, line: 68, baseType: !483, size: 32, offset: 128)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "freq", scope: !1584, file: !54, line: 112, baseType: !1598, size: 448)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "freq_qos_request", file: !54, line: 92, size: 448, elements: !1599)
!1599 = !{!1600, !1601, !1602}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1598, file: !54, line: 93, baseType: !66, size: 32)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "pnode", scope: !1598, file: !54, line: 94, baseType: !1587, size: 320, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1598, file: !54, line: 95, baseType: !1603, size: 64, offset: 384)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1580, file: !54, line: 114, baseType: !823, size: 64, offset: 512)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "latency_tolerance_req", scope: !1534, file: !54, line: 123, baseType: !1579, size: 64, offset: 2304)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flags_req", scope: !1534, file: !54, line: 124, baseType: !1579, size: 64, offset: 2368)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !153, file: !26, line: 727, baseType: !1608, size: 64, offset: 4224)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1610)
!1610 = !{!1611, !1612, !1613, !1617, !1618, !1619}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1609, file: !38, line: 743, baseType: !853, size: 1472)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1609, file: !38, line: 744, baseType: !856, size: 64, offset: 1472)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1609, file: !38, line: 745, baseType: !1614, size: 64, offset: 1536)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{null, !823, !603}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1609, file: !38, line: 746, baseType: !856, size: 64, offset: 1600)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1609, file: !38, line: 747, baseType: !847, size: 64, offset: 1664)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1609, file: !38, line: 748, baseType: !847, size: 64, offset: 1728)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !153, file: !26, line: 736, baseType: !1621, size: 128, offset: 4288)
!1621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1622)
!1622 = !{!1623, !1627}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1621, file: !26, line: 531, baseType: !1624, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1626, line: 13, flags: DIFlagFwdDecl)
!1626 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1621, file: !26, line: 532, baseType: !1628, size: 64, offset: 64)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !153, file: !26, line: 738, baseType: !1631, size: 64, offset: 4416)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1633)
!1633 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !153, file: !26, line: 740, baseType: !1635, size: 64, offset: 4480)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !153, file: !26, line: 741, baseType: !410, size: 64, offset: 4544)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !153, file: !26, line: 746, baseType: !410, size: 64, offset: 4608)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !153, file: !26, line: 747, baseType: !1639, size: 64, offset: 4672)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1641)
!1641 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !153, file: !26, line: 749, baseType: !1643, size: 64, offset: 4736)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1645)
!1645 = !{!1646, !1647, !1648}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1644, file: !26, line: 433, baseType: !7, size: 32)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1644, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1644, file: !26, line: 435, baseType: !297, size: 64, offset: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !153, file: !26, line: 751, baseType: !163, size: 128, offset: 4800)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !153, file: !26, line: 762, baseType: !1651, size: 64, offset: 4928)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !153, file: !26, line: 770, baseType: !1654, offset: 4992)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1655, line: 5, elements: !383)
!1655 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !153, file: !26, line: 772, baseType: !1657, size: 64, offset: 4992)
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1659, line: 48, size: 1152, elements: !1660)
!1659 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!1660 = !{!1661, !1662, !1664, !1665, !1768, !1776, !1777, !1778, !1779, !1780, !1781}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1658, file: !1659, line: 49, baseType: !160, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1658, file: !1659, line: 50, baseType: !1663, size: 32, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1659, line: 25, baseType: !1181)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1658, file: !1659, line: 51, baseType: !160, size: 64, offset: 128)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1658, file: !1659, line: 52, baseType: !1666, size: 512, offset: 192)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1667, line: 41, size: 512, elements: !1668)
!1667 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!1668 = !{!1669, !1671, !1764, !1765, !1766, !1767}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1666, file: !1667, line: 42, baseType: !1670, size: 64)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1666, file: !1667, line: 43, baseType: !1672, size: 64, offset: 64)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1674)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1667, line: 125, size: 1408, elements: !1675)
!1675 = !{!1676, !1680, !1684, !1690, !1694, !1695, !1699, !1703, !1707, !1711, !1715, !1716, !1720, !1724, !1728, !1739, !1740, !1741, !1742, !1752, !1756, !1760}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1674, file: !1667, line: 126, baseType: !1677, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!1670, !1670}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1674, file: !1667, line: 127, baseType: !1681, size: 64, offset: 64)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{null, !1670}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1674, file: !1667, line: 128, baseType: !1685, size: 64, offset: 128)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!603, !1688}
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1666)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1674, file: !1667, line: 129, baseType: !1691, size: 64, offset: 192)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!525, !1688, !839}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !1674, file: !1667, line: 131, baseType: !1685, size: 64, offset: 256)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !1674, file: !1667, line: 133, baseType: !1696, size: 64, offset: 320)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!70, !1688}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1674, file: !1667, line: 134, baseType: !1700, size: 64, offset: 384)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!603, !1688, !160}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1674, file: !1667, line: 136, baseType: !1704, size: 64, offset: 448)
!1704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1705, size: 64)
!1705 = !DISubroutineType(types: !1706)
!1706 = !{!46, !1688, !160, !7, !135, !294}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1674, file: !1667, line: 141, baseType: !1708, size: 64, offset: 512)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!46, !1688, !160, !1248, !294}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1674, file: !1667, line: 144, baseType: !1712, size: 64, offset: 576)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!160, !1688}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1674, file: !1667, line: 145, baseType: !1712, size: 64, offset: 640)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1674, file: !1667, line: 146, baseType: !1717, size: 64, offset: 704)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!1670, !1688}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1674, file: !1667, line: 148, baseType: !1721, size: 64, offset: 768)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!1670, !1688, !1670}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1674, file: !1667, line: 151, baseType: !1725, size: 64, offset: 832)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!1670, !1688, !160}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1674, file: !1667, line: 153, baseType: !1729, size: 64, offset: 896)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!46, !1688, !160, !160, !7, !7, !1732}
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1667, line: 94, size: 640, elements: !1734)
!1734 = !{!1735, !1736, !1737}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1733, file: !1667, line: 95, baseType: !1670, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1733, file: !1667, line: 96, baseType: !7, size: 32, offset: 64)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1733, file: !1667, line: 97, baseType: !1738, size: 512, offset: 128)
!1738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 512, elements: !1459)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1674, file: !1667, line: 158, baseType: !1721, size: 64, offset: 960)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1674, file: !1667, line: 161, baseType: !1717, size: 64, offset: 1024)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1674, file: !1667, line: 163, baseType: !1677, size: 64, offset: 1088)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1674, file: !1667, line: 164, baseType: !1743, size: 64, offset: 1152)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!46, !1688, !1746}
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1667, line: 73, size: 128, elements: !1748)
!1748 = !{!1749, !1750, !1751}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1747, file: !1667, line: 74, baseType: !7, size: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1747, file: !1667, line: 75, baseType: !7, size: 32, offset: 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1747, file: !1667, line: 76, baseType: !1688, size: 64, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !1674, file: !1667, line: 166, baseType: !1753, size: 64, offset: 1216)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{!135, !1670, !46}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !1674, file: !1667, line: 167, baseType: !1757, size: 64, offset: 1280)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DISubroutineType(types: !1759)
!1759 = !{!46, !1688, !7}
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1674, file: !1667, line: 168, baseType: !1761, size: 64, offset: 1344)
!1761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1762, size: 64)
!1762 = !DISubroutineType(types: !1763)
!1763 = !{!46, !1670}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1666, file: !1667, line: 44, baseType: !823, size: 64, offset: 128)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1666, file: !1667, line: 45, baseType: !163, size: 128, offset: 192)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1666, file: !1667, line: 46, baseType: !163, size: 128, offset: 320)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1666, file: !1667, line: 47, baseType: !205, size: 8, offset: 448)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1658, file: !1659, line: 54, baseType: !1769, size: 64, offset: 704)
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1770, size: 64)
!1770 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1659, line: 28, size: 256, elements: !1771)
!1771 = !{!1772, !1773, !1774, !1775}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1770, file: !1659, line: 29, baseType: !247, size: 64)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1770, file: !1659, line: 30, baseType: !46, size: 32, offset: 64)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1770, file: !1659, line: 31, baseType: !135, size: 64, offset: 128)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1770, file: !1659, line: 32, baseType: !1769, size: 64, offset: 192)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1658, file: !1659, line: 55, baseType: !1769, size: 64, offset: 768)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1658, file: !1659, line: 56, baseType: !1657, size: 64, offset: 832)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1658, file: !1659, line: 57, baseType: !1657, size: 64, offset: 896)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1658, file: !1659, line: 58, baseType: !1657, size: 64, offset: 960)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1658, file: !1659, line: 62, baseType: !297, size: 64, offset: 1024)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1658, file: !1659, line: 63, baseType: !135, size: 64, offset: 1088)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !153, file: !26, line: 773, baseType: !1670, size: 64, offset: 5056)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !153, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !153, file: !26, line: 778, baseType: !1785, size: 32, offset: 5152)
!1785 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !164, line: 21, baseType: !1786)
!1786 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !164, line: 18, baseType: !1181)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !153, file: !26, line: 779, baseType: !1181, size: 32, offset: 5184)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !153, file: !26, line: 781, baseType: !177, size: 32, offset: 5216)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !153, file: !26, line: 782, baseType: !163, size: 128, offset: 5248)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !153, file: !26, line: 784, baseType: !1791, size: 64, offset: 5376)
!1791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1792, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1793)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1794, line: 52, size: 768, elements: !1795)
!1794 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1795 = !{!1796, !1797, !1798, !1799, !1800, !1804, !1808, !1809, !1810, !1811, !1815, !1819}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1793, file: !1794, line: 53, baseType: !160, size: 64)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1793, file: !1794, line: 55, baseType: !299, size: 64, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1793, file: !1794, line: 56, baseType: !299, size: 64, offset: 128)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1793, file: !1794, line: 58, baseType: !836, size: 64, offset: 192)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1793, file: !1794, line: 59, baseType: !1801, size: 64, offset: 256)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DISubroutineType(types: !1803)
!1803 = !{!247, !839, !845}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1793, file: !1794, line: 61, baseType: !1805, size: 64, offset: 320)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{null, !1791}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1793, file: !1794, line: 62, baseType: !847, size: 64, offset: 384)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1793, file: !1794, line: 64, baseType: !856, size: 64, offset: 448)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1793, file: !1794, line: 66, baseType: !642, size: 64, offset: 512)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1793, file: !1794, line: 67, baseType: !1812, size: 64, offset: 576)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{!525, !839}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1793, file: !1794, line: 69, baseType: !1816, size: 64, offset: 640)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{null, !839, !677, !685}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1793, file: !1794, line: 71, baseType: !851, size: 64, offset: 704)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !153, file: !26, line: 785, baseType: !299, size: 64, offset: 5440)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !153, file: !26, line: 787, baseType: !847, size: 64, offset: 5504)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !153, file: !26, line: 788, baseType: !1823, size: 64, offset: 5568)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !153, file: !26, line: 789, baseType: !1826, size: 64, offset: 5632)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !153, file: !26, line: 791, baseType: !1829, size: 64, offset: 5696)
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1830, size: 64)
!1830 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1831)
!1831 = !{!1832, !1833, !1834, !1835, !1836}
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1830, file: !26, line: 598, baseType: !76, size: 32)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1830, file: !26, line: 599, baseType: !85, size: 32, offset: 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1830, file: !26, line: 600, baseType: !90, size: 32, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1830, file: !26, line: 601, baseType: !603, size: 8, offset: 96)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1830, file: !26, line: 602, baseType: !603, size: 8, offset: 104)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !153, file: !26, line: 793, baseType: !95, size: 32, offset: 5760)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !153, file: !26, line: 795, baseType: !603, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !153, file: !26, line: 796, baseType: !603, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !153, file: !26, line: 797, baseType: !603, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !153, file: !26, line: 798, baseType: !603, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !153, file: !26, line: 799, baseType: !603, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "removal", scope: !148, file: !113, line: 160, baseType: !922, size: 256, offset: 6016)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "trips_attribute_group", scope: !148, file: !113, line: 161, baseType: !302, size: 320, offset: 6272)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "trip_temp_attrs", scope: !148, file: !113, line: 162, baseType: !1846, size: 64, offset: 6592)
!1846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1847, size: 64)
!1847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_attr", file: !138, line: 59, size: 448, elements: !1848)
!1848 = !{!1849, !1862}
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1847, file: !138, line: 60, baseType: !1850, size: 256)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !26, line: 106, size: 256, elements: !1851)
!1851 = !{!1852, !1853, !1858}
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1850, file: !26, line: 107, baseType: !285, size: 128)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1850, file: !26, line: 108, baseType: !1854, size: 64, offset: 128)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!279, !823, !1857, !247}
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1850, file: !26, line: 110, baseType: !1859, size: 64, offset: 192)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{!279, !823, !1857, !160, !294}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1847, file: !138, line: 61, baseType: !142, size: 160, offset: 256)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "trip_type_attrs", scope: !148, file: !113, line: 163, baseType: !1846, size: 64, offset: 6656)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "trip_hyst_attrs", scope: !148, file: !113, line: 164, baseType: !1846, size: 64, offset: 6720)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !148, file: !113, line: 165, baseType: !101, size: 32, offset: 6784)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !148, file: !113, line: 166, baseType: !135, size: 64, offset: 6848)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "trips", scope: !148, file: !113, line: 167, baseType: !1868, size: 64, offset: 6912)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_trip", file: !113, line: 63, size: 192, elements: !1870)
!1870 = !{!1871, !1872, !1873, !1874}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "temperature", scope: !1869, file: !113, line: 64, baseType: !46, size: 32)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "hysteresis", scope: !1869, file: !113, line: 65, baseType: !46, size: 32, offset: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1869, file: !113, line: 66, baseType: !106, size: 32, offset: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1869, file: !113, line: 67, baseType: !135, size: 64, offset: 128)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "num_trips", scope: !148, file: !113, line: 168, baseType: !46, size: 32, offset: 6976)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "trips_disabled", scope: !148, file: !113, line: 169, baseType: !297, size: 64, offset: 7040)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "passive_delay_jiffies", scope: !148, file: !113, line: 170, baseType: !297, size: 64, offset: 7104)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "polling_delay_jiffies", scope: !148, file: !113, line: 171, baseType: !297, size: 64, offset: 7168)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "temperature", scope: !148, file: !113, line: 172, baseType: !46, size: 32, offset: 7232)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "last_temperature", scope: !148, file: !113, line: 173, baseType: !46, size: 32, offset: 7264)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "emul_temperature", scope: !148, file: !113, line: 174, baseType: !46, size: 32, offset: 7296)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "passive", scope: !148, file: !113, line: 175, baseType: !46, size: 32, offset: 7328)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "prev_low_trip", scope: !148, file: !113, line: 176, baseType: !46, size: 32, offset: 7360)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "prev_high_trip", scope: !148, file: !113, line: 177, baseType: !46, size: 32, offset: 7392)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "need_update", scope: !148, file: !113, line: 178, baseType: !197, size: 32, offset: 7424)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !148, file: !113, line: 179, baseType: !1887, size: 64, offset: 7488)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device_ops", file: !113, line: 70, size: 768, elements: !1889)
!1889 = !{!1890, !1935, !1936, !1940, !1944, !1948, !1949, !1950, !1951, !1955, !1962, !1966}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !1888, file: !113, line: 71, baseType: !1891, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = !DISubroutineType(types: !1893)
!1893 = !{!46, !147, !1894}
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !113, line: 98, size: 6848, elements: !1896)
!1896 = !{!1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1931, !1932, !1933, !1934}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1895, file: !113, line: 99, baseType: !46, size: 32)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1895, file: !113, line: 100, baseType: !247, size: 64, offset: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "max_state", scope: !1895, file: !113, line: 101, baseType: !297, size: 64, offset: 128)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !1895, file: !113, line: 102, baseType: !153, size: 5824, offset: 192)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !1895, file: !113, line: 103, baseType: !1657, size: 64, offset: 6016)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !1895, file: !113, line: 104, baseType: !135, size: 64, offset: 6080)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1895, file: !113, line: 105, baseType: !135, size: 64, offset: 6144)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1895, file: !113, line: 106, baseType: !1905, size: 64, offset: 6208)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1907)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device_ops", file: !113, line: 89, size: 384, elements: !1908)
!1908 = !{!1909, !1913, !1914, !1918, !1923, !1927}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "get_max_state", scope: !1907, file: !113, line: 90, baseType: !1910, size: 64)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DISubroutineType(types: !1912)
!1912 = !{!46, !1894, !1267}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "get_cur_state", scope: !1907, file: !113, line: 91, baseType: !1910, size: 64, offset: 64)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "set_cur_state", scope: !1907, file: !113, line: 92, baseType: !1915, size: 64, offset: 128)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!46, !1894, !297}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "get_requested_power", scope: !1907, file: !113, line: 93, baseType: !1919, size: 64, offset: 192)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{!46, !1894, !1922}
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "state2power", scope: !1907, file: !113, line: 94, baseType: !1924, size: 64, offset: 256)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DISubroutineType(types: !1926)
!1926 = !{!46, !1894, !297, !1922}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "power2state", scope: !1907, file: !113, line: 95, baseType: !1928, size: 64, offset: 320)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = !DISubroutineType(types: !1930)
!1930 = !{!46, !1894, !1181, !1267}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !1895, file: !113, line: 107, baseType: !603, size: 8, offset: 6272)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1895, file: !113, line: 108, baseType: !504, size: 256, offset: 6336)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !1895, file: !113, line: 109, baseType: !163, size: 128, offset: 6592)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1895, file: !113, line: 110, baseType: !163, size: 128, offset: 6720)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !1888, file: !113, line: 73, baseType: !1891, size: 64, offset: 64)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "get_temp", scope: !1888, file: !113, line: 75, baseType: !1937, size: 64, offset: 128)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!46, !147, !1063}
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "set_trips", scope: !1888, file: !113, line: 76, baseType: !1941, size: 64, offset: 192)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!46, !147, !46, !46}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "change_mode", scope: !1888, file: !113, line: 77, baseType: !1945, size: 64, offset: 256)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!46, !147, !101}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_temp", scope: !1888, file: !113, line: 79, baseType: !1941, size: 64, offset: 320)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_hyst", scope: !1888, file: !113, line: 80, baseType: !1941, size: 64, offset: 384)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "get_crit_temp", scope: !1888, file: !113, line: 81, baseType: !1937, size: 64, offset: 448)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "set_emul_temp", scope: !1888, file: !113, line: 82, baseType: !1952, size: 64, offset: 512)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!46, !147, !46}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "get_trend", scope: !1888, file: !113, line: 83, baseType: !1956, size: 64, offset: 576)
!1956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1957, size: 64)
!1957 = !DISubroutineType(types: !1958)
!1958 = !{!46, !147, !1959, !1961}
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1869)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "hot", scope: !1888, file: !113, line: 85, baseType: !1963, size: 64, offset: 640)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{null, !147}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "critical", scope: !1888, file: !113, line: 86, baseType: !1963, size: 64, offset: 704)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "tzp", scope: !148, file: !113, line: 180, baseType: !1968, size: 64, offset: 7552)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_params", file: !113, line: 213, size: 448, elements: !1970)
!1970 = !{!1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "governor_name", scope: !1969, file: !113, line: 214, baseType: !142, size: 160)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "no_hwmon", scope: !1969, file: !113, line: 221, baseType: !603, size: 8, offset: 160)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "sustainable_power", scope: !1969, file: !113, line: 227, baseType: !1181, size: 32, offset: 192)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "k_po", scope: !1969, file: !113, line: 233, baseType: !483, size: 32, offset: 224)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "k_pu", scope: !1969, file: !113, line: 239, baseType: !483, size: 32, offset: 256)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "k_i", scope: !1969, file: !113, line: 242, baseType: !483, size: 32, offset: 288)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "k_d", scope: !1969, file: !113, line: 245, baseType: !483, size: 32, offset: 320)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "integral_cutoff", scope: !1969, file: !113, line: 248, baseType: !483, size: 32, offset: 352)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "slope", scope: !1969, file: !113, line: 254, baseType: !46, size: 32, offset: 384)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1969, file: !113, line: 259, baseType: !46, size: 32, offset: 416)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !148, file: !113, line: 181, baseType: !1982, size: 64, offset: 7616)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_governor", file: !113, line: 204, size: 512, elements: !1984)
!1984 = !{!1985, !1986, !1990, !1991, !1992}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1983, file: !113, line: 205, baseType: !142, size: 160)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "bind_to_tz", scope: !1983, file: !113, line: 206, baseType: !1987, size: 64, offset: 192)
!1987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1988, size: 64)
!1988 = !DISubroutineType(types: !1989)
!1989 = !{!46, !147}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "unbind_from_tz", scope: !1983, file: !113, line: 207, baseType: !1963, size: 64, offset: 256)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !1983, file: !113, line: 208, baseType: !1952, size: 64, offset: 320)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "governor_list", scope: !1983, file: !113, line: 209, baseType: !163, size: 128, offset: 384)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "governor_data", scope: !148, file: !113, line: 182, baseType: !135, size: 64, offset: 7680)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !148, file: !113, line: 183, baseType: !163, size: 128, offset: 7744)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "ida", scope: !148, file: !113, line: 184, baseType: !1996, size: 128, offset: 7872)
!1996 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1997, line: 246, size: 128, elements: !1998)
!1997 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!1998 = !{!1999}
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1996, file: !1997, line: 247, baseType: !2000, size: 128)
!2000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !2001, line: 296, size: 128, elements: !2002)
!2001 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!2002 = !{!2003, !2004, !2006}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !2000, file: !2001, line: 297, baseType: !177, size: 32)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !2000, file: !2001, line: 299, baseType: !2005, size: 32, offset: 32)
!2005 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !164, line: 154, baseType: !7)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !2000, file: !2001, line: 300, baseType: !135, size: 64, offset: 64)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !148, file: !113, line: 185, baseType: !504, size: 256, offset: 8000)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !148, file: !113, line: 186, baseType: !163, size: 128, offset: 8256)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "poll_queue", scope: !148, file: !113, line: 187, baseType: !1228, size: 704, offset: 8384)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "notify_event", scope: !148, file: !113, line: 188, baseType: !118, size: 32, offset: 9088)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !148, file: !113, line: 189, baseType: !603, size: 8, offset: 9120)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !137, file: !138, line: 89, baseType: !1894, size: 64, offset: 256)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "trip", scope: !137, file: !138, line: 90, baseType: !1959, size: 64, offset: 320)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !137, file: !138, line: 91, baseType: !603, size: 8, offset: 384)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "upper", scope: !137, file: !138, line: 92, baseType: !297, size: 64, offset: 448)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "lower", scope: !137, file: !138, line: 93, baseType: !297, size: 64, offset: 512)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !137, file: !138, line: 94, baseType: !297, size: 64, offset: 576)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "attr_name", scope: !137, file: !138, line: 95, baseType: !142, size: 160, offset: 640)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !137, file: !138, line: 96, baseType: !1850, size: 256, offset: 832)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "weight_attr_name", scope: !137, file: !138, line: 97, baseType: !142, size: 160, offset: 1088)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "weight_attr", scope: !137, file: !138, line: 98, baseType: !1850, size: 256, offset: 1280)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "tz_node", scope: !137, file: !138, line: 99, baseType: !163, size: 128, offset: 1536)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "cdev_node", scope: !137, file: !138, line: 100, baseType: !163, size: 128, offset: 1664)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !137, file: !138, line: 101, baseType: !7, size: 32, offset: 1792)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "upper_no_limit", scope: !137, file: !138, line: 102, baseType: !603, size: 8, offset: 1824)
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2028)
!2028 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !2029)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tracepoint_func", file: !1127, line: 26, size: 192, elements: !2031)
!2031 = !{!2032, !2033, !2034}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2030, file: !1127, line: 27, baseType: !135, size: 64)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2030, file: !1127, line: 28, baseType: !135, size: 64, offset: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !2030, file: !1127, line: 29, baseType: !46, size: 32, offset: 128)
!2035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2036 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2037)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !2038, line: 19, size: 64, elements: !2039)
!2038 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f818e2b96df21b4f4e8520893bceb65c")
!2039 = !{!2040}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !2037, file: !2038, line: 19, baseType: !2041, size: 64)
!2041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, size: 64, elements: !2042)
!2042 = !{!2043}
!2043 = !DISubrange(count: 1)
!2044 = !{!2045, !0, !2047, !2050, !2080}
!2045 = !DIGlobalVariableExpression(var: !2046, expr: !DIExpression())
!2046 = distinct !DIGlobalVariable(name: "__thermal_table_entry_thermal_gov_step_wise", scope: !2, file: !3, line: 157, type: !1982, isLocal: true, isDefinition: true)
!2047 = !DIGlobalVariableExpression(var: !2048, expr: !DIExpression())
!2048 = distinct !DIGlobalVariable(scope: null, file: !2049, line: 68, type: !1294, isLocal: true, isDefinition: true)
!2049 = !DIFile(filename: "drivers/thermal/thermal_trace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9ea179728c9670b77b40dbcdf5402804")
!2050 = !DIGlobalVariableExpression(var: !2051, expr: !DIExpression())
!2051 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_thermal_zone_trip221", scope: !2052, file: !2049, line: 68, type: !135, isLocal: true, isDefinition: true)
!2052 = distinct !DISubprogram(name: "trace_thermal_zone_trip", scope: !2049, file: !2049, line: 68, type: !2053, scopeLine: 68, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2055)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{null, !147, !46, !106}
!2055 = !{!2056, !2057, !2058, !2059, !2062, !2065, !2067, !2069, !2072, !2075, !2077, !2078}
!2056 = !DILocalVariable(name: "tz", arg: 1, scope: !2052, file: !2049, line: 68, type: !147)
!2057 = !DILocalVariable(name: "trip", arg: 2, scope: !2052, file: !2049, line: 68, type: !46)
!2058 = !DILocalVariable(name: "trip_type", arg: 3, scope: !2052, file: !2049, line: 68, type: !106)
!2059 = !DILocalVariable(name: "__idx", scope: !2060, file: !2049, line: 68, type: !46)
!2060 = distinct !DILexicalBlock(scope: !2061, file: !2049, line: 68, column: 1)
!2061 = distinct !DILexicalBlock(scope: !2052, file: !2049, line: 68, column: 1)
!2062 = !DILocalVariable(name: "pscr_ret__", scope: !2063, file: !2049, line: 68, type: !46)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !2049, line: 68, column: 1)
!2064 = distinct !DILexicalBlock(scope: !2060, file: !2049, line: 68, column: 1)
!2065 = !DILocalVariable(name: "__vpp_verify", scope: !2066, file: !2049, line: 68, type: !525)
!2066 = distinct !DILexicalBlock(scope: !2063, file: !2049, line: 68, column: 1)
!2067 = !DILocalVariable(name: "pfo_val__", scope: !2068, file: !2049, line: 68, type: !1181)
!2068 = distinct !DILexicalBlock(scope: !2063, file: !2049, line: 68, column: 1)
!2069 = !DILocalVariable(name: "__ret_warn_on", scope: !2070, file: !2049, line: 68, type: !46)
!2070 = distinct !DILexicalBlock(scope: !2071, file: !2049, line: 68, column: 1)
!2071 = distinct !DILexicalBlock(scope: !2060, file: !2049, line: 68, column: 1)
!2072 = !DILocalVariable(name: "__flags", scope: !2073, file: !2049, line: 68, type: !46)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !2049, line: 68, column: 1)
!2074 = distinct !DILexicalBlock(scope: !2070, file: !2049, line: 68, column: 1)
!2075 = !DILocalVariable(name: "it_func_ptr", scope: !2076, file: !2049, line: 68, type: !2029)
!2076 = distinct !DILexicalBlock(scope: !2060, file: !2049, line: 68, column: 1)
!2077 = !DILocalVariable(name: "__data", scope: !2076, file: !2049, line: 68, type: !135)
!2078 = !DILocalVariable(name: "__UNIQUE_ID_rcu219", scope: !2079, file: !2049, line: 68, type: !2029)
!2079 = distinct !DILexicalBlock(scope: !2076, file: !2049, line: 68, column: 1)
!2080 = !DIGlobalVariableExpression(var: !2081, expr: !DIExpression())
!2081 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace222", scope: !2052, file: !2049, line: 68, type: !135, isLocal: true, isDefinition: true)
!2082 = !{!"rsp"}
!2083 = !{i32 7, !"Dwarf Version", i32 5}
!2084 = !{i32 2, !"Debug Info Version", i32 3}
!2085 = !{i32 1, !"wchar_size", i32 2}
!2086 = !{i32 8, !"cf-protection-branch", i32 1}
!2087 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2088 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2089 = !{i32 1, !"Code Model", i32 2}
!2090 = !{i32 1, !"override-stack-alignment", i32 8}
!2091 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2092 = distinct !DISubprogram(name: "step_wise_throttle", scope: !3, file: !3, line: 139, type: !1953, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2093)
!2093 = !{!2094, !2095, !2096, !2097, !2100}
!2094 = !DILocalVariable(name: "tz", arg: 1, scope: !2092, file: !3, line: 139, type: !147)
!2095 = !DILocalVariable(name: "trip", arg: 2, scope: !2092, file: !3, line: 139, type: !46)
!2096 = !DILocalVariable(name: "instance", scope: !2092, file: !3, line: 141, type: !136)
!2097 = !DILocalVariable(name: "__mptr", scope: !2098, file: !3, line: 147, type: !135)
!2098 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 147, column: 2)
!2099 = distinct !DILexicalBlock(scope: !2092, file: !3, line: 147, column: 2)
!2100 = !DILocalVariable(name: "__mptr", scope: !2101, file: !3, line: 147, type: !135)
!2101 = distinct !DILexicalBlock(scope: !2102, file: !3, line: 147, column: 2)
!2102 = distinct !DILexicalBlock(scope: !2099, file: !3, line: 147, column: 2)
!2103 = !DILocation(line: 139, column: 59, scope: !2092)
!2104 = !DILocation(line: 139, column: 67, scope: !2092)
!2105 = !DILocation(line: 141, column: 2, scope: !2092)
!2106 = !DILocation(line: 141, column: 27, scope: !2092)
!2107 = !DILocation(line: 143, column: 2, scope: !2092)
!2108 = !DILocation(line: 143, column: 2, scope: !2109)
!2109 = distinct !DILexicalBlock(scope: !2092, file: !3, line: 143, column: 2)
!2110 = !DILocation(line: 145, column: 27, scope: !2092)
!2111 = !DILocation(line: 145, column: 31, scope: !2092)
!2112 = !DILocation(line: 145, column: 2, scope: !2092)
!2113 = !DILocation(line: 147, column: 2, scope: !2098)
!2114 = !DILocation(line: 147, column: 2, scope: !2099)
!2115 = !DILocation(line: 147, column: 2, scope: !2102)
!2116 = !DILocation(line: 148, column: 23, scope: !2102)
!2117 = !DILocation(line: 148, column: 33, scope: !2102)
!2118 = !DILocation(line: 148, column: 3, scope: !2102)
!2119 = !DILocation(line: 147, column: 2, scope: !2101)
!2120 = distinct !{!2120, !2114, !2121, !2122, !2123}
!2121 = !DILocation(line: 148, column: 37, scope: !2099)
!2122 = !{!"llvm.loop.mustprogress"}
!2123 = !{!"llvm.loop.unroll.disable"}
!2124 = !DILocation(line: 151, column: 1, scope: !2092)
!2125 = !DILocation(line: 150, column: 2, scope: !2092)
!2126 = distinct !DISubprogram(name: "thermal_zone_trip_update", scope: !3, file: !3, line: 82, type: !2127, scopeLine: 83, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2129)
!2127 = !DISubroutineType(types: !2128)
!2128 = !{null, !147, !46}
!2129 = !{!2130, !2131, !2132, !2133, !2134, !2135, !2136, !2137, !2140}
!2130 = !DILocalVariable(name: "tz", arg: 1, scope: !2126, file: !3, line: 82, type: !147)
!2131 = !DILocalVariable(name: "trip_id", arg: 2, scope: !2126, file: !3, line: 82, type: !46)
!2132 = !DILocalVariable(name: "trip", scope: !2126, file: !3, line: 84, type: !1959)
!2133 = !DILocalVariable(name: "trend", scope: !2126, file: !3, line: 85, type: !112)
!2134 = !DILocalVariable(name: "instance", scope: !2126, file: !3, line: 86, type: !136)
!2135 = !DILocalVariable(name: "throttle", scope: !2126, file: !3, line: 87, type: !603)
!2136 = !DILocalVariable(name: "old_target", scope: !2126, file: !3, line: 88, type: !46)
!2137 = !DILocalVariable(name: "__mptr", scope: !2138, file: !3, line: 100, type: !135)
!2138 = distinct !DILexicalBlock(scope: !2139, file: !3, line: 100, column: 2)
!2139 = distinct !DILexicalBlock(scope: !2126, file: !3, line: 100, column: 2)
!2140 = !DILocalVariable(name: "__mptr", scope: !2141, file: !3, line: 100, type: !135)
!2141 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 100, column: 2)
!2142 = distinct !DILexicalBlock(scope: !2139, file: !3, line: 100, column: 2)
!2143 = !DILocation(line: 82, column: 66, scope: !2126)
!2144 = !DILocation(line: 82, column: 74, scope: !2126)
!2145 = !DILocation(line: 84, column: 2, scope: !2126)
!2146 = !DILocation(line: 84, column: 29, scope: !2126)
!2147 = !DILocation(line: 84, column: 37, scope: !2126)
!2148 = !DILocation(line: 84, column: 41, scope: !2126)
!2149 = !DILocation(line: 84, column: 47, scope: !2126)
!2150 = !DILocation(line: 85, column: 2, scope: !2126)
!2151 = !DILocation(line: 85, column: 21, scope: !2126)
!2152 = !DILocation(line: 86, column: 2, scope: !2126)
!2153 = !DILocation(line: 86, column: 27, scope: !2126)
!2154 = !DILocation(line: 87, column: 2, scope: !2126)
!2155 = !DILocation(line: 87, column: 7, scope: !2126)
!2156 = !DILocation(line: 88, column: 2, scope: !2126)
!2157 = !DILocation(line: 88, column: 6, scope: !2126)
!2158 = !DILocation(line: 90, column: 23, scope: !2126)
!2159 = !DILocation(line: 90, column: 27, scope: !2126)
!2160 = !DILocation(line: 90, column: 10, scope: !2126)
!2161 = !DILocation(line: 90, column: 8, scope: !2126)
!2162 = !DILocation(line: 92, column: 6, scope: !2163)
!2163 = distinct !DILexicalBlock(scope: !2126, file: !3, line: 92, column: 6)
!2164 = !DILocation(line: 92, column: 10, scope: !2163)
!2165 = !DILocation(line: 92, column: 25, scope: !2163)
!2166 = !DILocation(line: 92, column: 31, scope: !2163)
!2167 = !DILocation(line: 92, column: 22, scope: !2163)
!2168 = !DILocation(line: 92, column: 6, scope: !2126)
!2169 = !DILocation(line: 93, column: 12, scope: !2170)
!2170 = distinct !DILexicalBlock(scope: !2163, file: !3, line: 92, column: 44)
!2171 = !DILocation(line: 94, column: 27, scope: !2170)
!2172 = !DILocation(line: 94, column: 31, scope: !2170)
!2173 = !DILocation(line: 94, column: 40, scope: !2170)
!2174 = !DILocation(line: 94, column: 46, scope: !2170)
!2175 = !DILocation(line: 94, column: 3, scope: !2170)
!2176 = !DILocation(line: 95, column: 2, scope: !2170)
!2177 = !DILocation(line: 100, column: 2, scope: !2138)
!2178 = !DILocation(line: 100, column: 2, scope: !2139)
!2179 = !DILocation(line: 100, column: 2, scope: !2142)
!2180 = !DILocation(line: 101, column: 7, scope: !2181)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !3, line: 101, column: 7)
!2182 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 100, column: 65)
!2183 = !DILocation(line: 101, column: 17, scope: !2181)
!2184 = !DILocation(line: 101, column: 25, scope: !2181)
!2185 = !DILocation(line: 101, column: 22, scope: !2181)
!2186 = !DILocation(line: 101, column: 7, scope: !2182)
!2187 = !DILocation(line: 102, column: 4, scope: !2181)
!2188 = !DILocation(line: 104, column: 16, scope: !2182)
!2189 = !DILocation(line: 104, column: 26, scope: !2182)
!2190 = !DILocation(line: 104, column: 14, scope: !2182)
!2191 = !DILocation(line: 105, column: 39, scope: !2182)
!2192 = !DILocation(line: 105, column: 49, scope: !2182)
!2193 = !DILocation(line: 105, column: 56, scope: !2182)
!2194 = !{i8 0, i8 2}
!2195 = !DILocation(line: 105, column: 22, scope: !2182)
!2196 = !DILocation(line: 105, column: 3, scope: !2182)
!2197 = !DILocation(line: 105, column: 13, scope: !2182)
!2198 = !DILocation(line: 105, column: 20, scope: !2182)
!2199 = !DILocation(line: 109, column: 7, scope: !2200)
!2200 = distinct !DILexicalBlock(scope: !2182, file: !3, line: 109, column: 7)
!2201 = !DILocation(line: 109, column: 17, scope: !2200)
!2202 = !DILocation(line: 109, column: 29, scope: !2200)
!2203 = !DILocation(line: 109, column: 32, scope: !2200)
!2204 = !DILocation(line: 109, column: 46, scope: !2200)
!2205 = !DILocation(line: 109, column: 56, scope: !2200)
!2206 = !DILocation(line: 109, column: 43, scope: !2200)
!2207 = !DILocation(line: 109, column: 7, scope: !2182)
!2208 = !DILocation(line: 110, column: 4, scope: !2200)
!2209 = !DILocation(line: 113, column: 7, scope: !2210)
!2210 = distinct !DILexicalBlock(scope: !2182, file: !3, line: 113, column: 7)
!2211 = !DILocation(line: 113, column: 18, scope: !2210)
!2212 = !DILocation(line: 113, column: 39, scope: !2210)
!2213 = !DILocation(line: 114, column: 4, scope: !2210)
!2214 = !DILocation(line: 114, column: 14, scope: !2210)
!2215 = !DILocation(line: 114, column: 21, scope: !2210)
!2216 = !DILocation(line: 113, column: 7, scope: !2182)
!2217 = !DILocation(line: 115, column: 28, scope: !2210)
!2218 = !DILocation(line: 115, column: 32, scope: !2210)
!2219 = !DILocation(line: 115, column: 38, scope: !2210)
!2220 = !DILocation(line: 115, column: 4, scope: !2210)
!2221 = !DILocation(line: 117, column: 12, scope: !2222)
!2222 = distinct !DILexicalBlock(scope: !2210, file: !3, line: 117, column: 12)
!2223 = !DILocation(line: 117, column: 23, scope: !2222)
!2224 = !DILocation(line: 117, column: 44, scope: !2222)
!2225 = !DILocation(line: 118, column: 4, scope: !2222)
!2226 = !DILocation(line: 118, column: 14, scope: !2222)
!2227 = !DILocation(line: 118, column: 21, scope: !2222)
!2228 = !DILocation(line: 117, column: 12, scope: !2210)
!2229 = !DILocation(line: 119, column: 28, scope: !2222)
!2230 = !DILocation(line: 119, column: 32, scope: !2222)
!2231 = !DILocation(line: 119, column: 38, scope: !2222)
!2232 = !DILocation(line: 119, column: 4, scope: !2222)
!2233 = !DILocation(line: 121, column: 3, scope: !2182)
!2234 = !DILocation(line: 121, column: 13, scope: !2182)
!2235 = !DILocation(line: 121, column: 25, scope: !2182)
!2236 = !DILocation(line: 122, column: 15, scope: !2182)
!2237 = !DILocation(line: 122, column: 25, scope: !2182)
!2238 = !DILocation(line: 122, column: 31, scope: !2182)
!2239 = !DILocation(line: 122, column: 3, scope: !2182)
!2240 = !DILocation(line: 123, column: 3, scope: !2182)
!2241 = !DILocation(line: 123, column: 13, scope: !2182)
!2242 = !DILocation(line: 123, column: 19, scope: !2182)
!2243 = !DILocation(line: 123, column: 27, scope: !2182)
!2244 = !DILocation(line: 124, column: 17, scope: !2182)
!2245 = !DILocation(line: 124, column: 27, scope: !2182)
!2246 = !DILocation(line: 124, column: 33, scope: !2182)
!2247 = !DILocation(line: 124, column: 3, scope: !2182)
!2248 = !DILocation(line: 125, column: 2, scope: !2182)
!2249 = !DILocation(line: 100, column: 2, scope: !2141)
!2250 = distinct !{!2250, !2178, !2251, !2122, !2123}
!2251 = !DILocation(line: 125, column: 2, scope: !2139)
!2252 = !DILocation(line: 126, column: 1, scope: !2126)
!2253 = !DISubprogram(name: "thermal_cdev_update", scope: !138, file: !138, line: 70, type: !2254, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{null, !1894}
!2256 = !DISubprogram(name: "get_tz_trend", scope: !138, file: !138, line: 73, type: !1953, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2257 = !DILocation(line: 68, column: 1, scope: !2052)
!2258 = !DILocation(line: 68, column: 1, scope: !2061)
!2259 = !DILocation(line: 68, column: 1, scope: !2060)
!2260 = !DILocation(line: 68, column: 1, scope: !2063)
!2261 = !DILocation(line: 68, column: 1, scope: !2066)
!2262 = !DILocation(line: 68, column: 1, scope: !2068)
!2263 = !{i64 2152947894}
!2264 = !DILocation(line: 68, column: 1, scope: !2064)
!2265 = !DILocation(line: 68, column: 1, scope: !2070)
!2266 = !DILocation(line: 68, column: 1, scope: !2074)
!2267 = !DILocation(line: 68, column: 1, scope: !2073)
!2268 = !DILocation(line: 68, column: 1, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2073, file: !2049, line: 68, column: 1)
!2270 = !DILocation(line: 68, column: 1, scope: !2271)
!2271 = distinct !DILexicalBlock(scope: !2073, file: !2049, line: 68, column: 1)
!2272 = !{i64 2152949113, i64 2152949142, i64 2152949188, i64 2152949246, i64 2152949300, i64 2152949354, i64 2152949409, i64 2152949440, i64 2152949748, i64 2152949754, i64 2152949801, i64 2152949824, i64 2152949850}
!2273 = !DILocation(line: 68, column: 1, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2073, file: !2049, line: 68, column: 1)
!2275 = !DILocation(line: 68, column: 1, scope: !2071)
!2276 = !DILocation(line: 68, column: 1, scope: !2277)
!2277 = distinct !DILexicalBlock(scope: !2060, file: !2049, line: 68, column: 1)
!2278 = !{i64 2152950205}
!2279 = !DILocation(line: 68, column: 1, scope: !2076)
!2280 = !DILocation(line: 68, column: 1, scope: !2079)
!2281 = !DILocation(line: 68, column: 1, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2079, file: !2049, line: 68, column: 1)
!2283 = !DILocation(line: 68, column: 1, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2282, file: !2049, line: 68, column: 1)
!2285 = !DILocation(line: 68, column: 1, scope: !2286)
!2286 = distinct !DILexicalBlock(scope: !2076, file: !2049, line: 68, column: 1)
!2287 = !DILocation(line: 68, column: 1, scope: !2288)
!2288 = distinct !DILexicalBlock(scope: !2286, file: !2049, line: 68, column: 1)
!2289 = !DILocation(line: 68, column: 1, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2288, file: !2049, line: 68, column: 1)
!2291 = !DILocation(line: 68, column: 1, scope: !2292)
!2292 = distinct !DILexicalBlock(scope: !2060, file: !2049, line: 68, column: 1)
!2293 = !{i64 2152956767}
!2294 = !DILocation(line: 68, column: 1, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2292, file: !2049, line: 68, column: 1)
!2296 = !DILocation(line: 68, column: 1, scope: !2297)
!2297 = distinct !DILexicalBlock(scope: !2295, file: !2049, line: 68, column: 1)
!2298 = !{i64 2152956926}
!2299 = distinct !DISubprogram(name: "get_target_state", scope: !3, file: !3, line: 30, type: !2300, scopeLine: 32, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2302)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{!297, !136, !112, !603}
!2302 = !{!2303, !2304, !2305, !2306, !2307, !2308, !2309, !2316, !2317, !2318, !2324, !2325, !2326, !2333, !2334}
!2303 = !DILocalVariable(name: "instance", arg: 1, scope: !2299, file: !3, line: 30, type: !136)
!2304 = !DILocalVariable(name: "trend", arg: 2, scope: !2299, file: !3, line: 31, type: !112)
!2305 = !DILocalVariable(name: "throttle", arg: 3, scope: !2299, file: !3, line: 31, type: !603)
!2306 = !DILocalVariable(name: "cdev", scope: !2299, file: !3, line: 33, type: !1894)
!2307 = !DILocalVariable(name: "cur_state", scope: !2299, file: !3, line: 34, type: !297)
!2308 = !DILocalVariable(name: "next_target", scope: !2299, file: !3, line: 35, type: !297)
!2309 = !DILocalVariable(name: "__UNIQUE_ID___val227", scope: !2310, file: !3, line: 48, type: !297)
!2310 = distinct !DILexicalBlock(scope: !2311, file: !3, line: 48, column: 18)
!2311 = distinct !DILexicalBlock(scope: !2312, file: !3, line: 48, column: 18)
!2312 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 47, column: 17)
!2313 = distinct !DILexicalBlock(scope: !2314, file: !3, line: 47, column: 7)
!2314 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 46, column: 30)
!2315 = distinct !DILexicalBlock(scope: !2299, file: !3, line: 46, column: 6)
!2316 = !DILocalVariable(name: "__UNIQUE_ID___lo228", scope: !2310, file: !3, line: 48, type: !297)
!2317 = !DILocalVariable(name: "__UNIQUE_ID___hi229", scope: !2310, file: !3, line: 48, type: !297)
!2318 = !DILocalVariable(name: "__UNIQUE_ID___val230", scope: !2319, file: !3, line: 58, type: !297)
!2319 = distinct !DILexicalBlock(scope: !2320, file: !3, line: 58, column: 18)
!2320 = distinct !DILexicalBlock(scope: !2321, file: !3, line: 58, column: 18)
!2321 = distinct !DILexicalBlock(scope: !2322, file: !3, line: 57, column: 7)
!2322 = distinct !DILexicalBlock(scope: !2323, file: !3, line: 56, column: 16)
!2323 = distinct !DILexicalBlock(scope: !2299, file: !3, line: 56, column: 6)
!2324 = !DILocalVariable(name: "__UNIQUE_ID___lo231", scope: !2319, file: !3, line: 58, type: !297)
!2325 = !DILocalVariable(name: "__UNIQUE_ID___hi232", scope: !2319, file: !3, line: 58, type: !297)
!2326 = !DILocalVariable(name: "__UNIQUE_ID___val233", scope: !2327, file: !3, line: 64, type: !297)
!2327 = distinct !DILexicalBlock(scope: !2328, file: !3, line: 64, column: 19)
!2328 = distinct !DILexicalBlock(scope: !2329, file: !3, line: 64, column: 19)
!2329 = distinct !DILexicalBlock(scope: !2330, file: !3, line: 61, column: 8)
!2330 = distinct !DILexicalBlock(scope: !2331, file: !3, line: 60, column: 40)
!2331 = distinct !DILexicalBlock(scope: !2332, file: !3, line: 60, column: 7)
!2332 = distinct !DILexicalBlock(scope: !2323, file: !3, line: 59, column: 9)
!2333 = !DILocalVariable(name: "__UNIQUE_ID___lo234", scope: !2327, file: !3, line: 64, type: !297)
!2334 = !DILocalVariable(name: "__UNIQUE_ID___hi235", scope: !2327, file: !3, line: 64, type: !297)
!2335 = !DILocation(line: 30, column: 64, scope: !2299)
!2336 = !DILocation(line: 31, column: 24, scope: !2299)
!2337 = !DILocation(line: 31, column: 36, scope: !2299)
!2338 = !DILocation(line: 33, column: 2, scope: !2299)
!2339 = !DILocation(line: 33, column: 33, scope: !2299)
!2340 = !DILocation(line: 33, column: 40, scope: !2299)
!2341 = !DILocation(line: 33, column: 50, scope: !2299)
!2342 = !DILocation(line: 34, column: 2, scope: !2299)
!2343 = !DILocation(line: 34, column: 16, scope: !2299)
!2344 = !DILocation(line: 35, column: 2, scope: !2299)
!2345 = !DILocation(line: 35, column: 16, scope: !2299)
!2346 = !DILocation(line: 42, column: 2, scope: !2299)
!2347 = !DILocation(line: 42, column: 8, scope: !2299)
!2348 = !DILocation(line: 42, column: 13, scope: !2299)
!2349 = !DILocation(line: 42, column: 27, scope: !2299)
!2350 = !DILocation(line: 43, column: 16, scope: !2299)
!2351 = !DILocation(line: 43, column: 26, scope: !2299)
!2352 = !DILocation(line: 43, column: 14, scope: !2299)
!2353 = !DILocation(line: 46, column: 7, scope: !2315)
!2354 = !DILocation(line: 46, column: 17, scope: !2315)
!2355 = !DILocation(line: 46, column: 6, scope: !2299)
!2356 = !DILocation(line: 47, column: 7, scope: !2313)
!2357 = !DILocation(line: 47, column: 7, scope: !2314)
!2358 = !DILocation(line: 48, column: 18, scope: !2310)
!2359 = !DILocation(line: 48, column: 18, scope: !2311)
!2360 = !DILocation(line: 48, column: 18, scope: !2312)
!2361 = !DILocation(line: 48, column: 16, scope: !2312)
!2362 = !DILocation(line: 49, column: 3, scope: !2312)
!2363 = !DILocation(line: 50, column: 16, scope: !2364)
!2364 = distinct !DILexicalBlock(scope: !2313, file: !3, line: 49, column: 10)
!2365 = !DILocation(line: 53, column: 10, scope: !2314)
!2366 = !DILocation(line: 53, column: 3, scope: !2314)
!2367 = !DILocation(line: 56, column: 6, scope: !2323)
!2368 = !DILocation(line: 56, column: 6, scope: !2299)
!2369 = !DILocation(line: 57, column: 7, scope: !2321)
!2370 = !DILocation(line: 57, column: 13, scope: !2321)
!2371 = !DILocation(line: 57, column: 7, scope: !2322)
!2372 = !DILocation(line: 58, column: 18, scope: !2319)
!2373 = !DILocation(line: 58, column: 18, scope: !2320)
!2374 = !DILocation(line: 58, column: 18, scope: !2321)
!2375 = !DILocation(line: 58, column: 16, scope: !2321)
!2376 = !DILocation(line: 58, column: 4, scope: !2321)
!2377 = !DILocation(line: 59, column: 2, scope: !2322)
!2378 = !DILocation(line: 60, column: 7, scope: !2331)
!2379 = !DILocation(line: 60, column: 13, scope: !2331)
!2380 = !DILocation(line: 60, column: 7, scope: !2332)
!2381 = !DILocation(line: 61, column: 8, scope: !2329)
!2382 = !DILocation(line: 61, column: 21, scope: !2329)
!2383 = !DILocation(line: 61, column: 31, scope: !2329)
!2384 = !DILocation(line: 61, column: 18, scope: !2329)
!2385 = !DILocation(line: 61, column: 8, scope: !2330)
!2386 = !DILocation(line: 62, column: 17, scope: !2329)
!2387 = !DILocation(line: 62, column: 5, scope: !2329)
!2388 = !DILocation(line: 64, column: 19, scope: !2327)
!2389 = !DILocation(line: 64, column: 19, scope: !2328)
!2390 = !DILocation(line: 64, column: 19, scope: !2329)
!2391 = !DILocation(line: 64, column: 17, scope: !2329)
!2392 = !DILocation(line: 65, column: 3, scope: !2330)
!2393 = !DILocation(line: 68, column: 9, scope: !2299)
!2394 = !DILocation(line: 68, column: 2, scope: !2299)
!2395 = !DILocation(line: 69, column: 1, scope: !2299)
!2396 = distinct !DISubprogram(name: "update_passive_instance", scope: !3, file: !3, line: 71, type: !2397, scopeLine: 73, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2399)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{null, !147, !106, !46}
!2399 = !{!2400, !2401, !2402}
!2400 = !DILocalVariable(name: "tz", arg: 1, scope: !2396, file: !3, line: 71, type: !147)
!2401 = !DILocalVariable(name: "type", arg: 2, scope: !2396, file: !3, line: 72, type: !106)
!2402 = !DILocalVariable(name: "value", arg: 3, scope: !2396, file: !3, line: 72, type: !46)
!2403 = !DILocation(line: 71, column: 65, scope: !2396)
!2404 = !DILocation(line: 72, column: 28, scope: !2396)
!2405 = !DILocation(line: 72, column: 38, scope: !2396)
!2406 = !DILocation(line: 78, column: 6, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2396, file: !3, line: 78, column: 6)
!2408 = !DILocation(line: 78, column: 11, scope: !2407)
!2409 = !DILocation(line: 78, column: 6, scope: !2396)
!2410 = !DILocation(line: 79, column: 18, scope: !2407)
!2411 = !DILocation(line: 79, column: 3, scope: !2407)
!2412 = !DILocation(line: 79, column: 7, scope: !2407)
!2413 = !DILocation(line: 79, column: 15, scope: !2407)
!2414 = !DILocation(line: 80, column: 1, scope: !2396)
!2415 = !DISubprogram(name: "mutex_lock", scope: !505, file: !505, line: 227, type: !2416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2416 = !DISubroutineType(types: !2417)
!2417 = !{null, !2418}
!2418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!2419 = !DISubprogram(name: "mutex_unlock", scope: !505, file: !505, line: 246, type: !2416, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2420 = distinct !DISubprogram(name: "static_key_false", scope: !1240, file: !1240, line: 205, type: !2421, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2435)
!2421 = !DISubroutineType(types: !2422)
!2422 = !{!603, !2423}
!2423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2424, size: 64)
!2424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !1240, line: 85, size: 128, elements: !2425)
!2425 = !{!2426, !2427}
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2424, file: !1240, line: 86, baseType: !197, size: 32)
!2427 = !DIDerivedType(tag: DW_TAG_member, scope: !2424, file: !1240, line: 101, baseType: !2428, size: 64, offset: 64)
!2428 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2424, file: !1240, line: 101, size: 64, elements: !2429)
!2429 = !{!2430, !2431, !2432}
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2428, file: !1240, line: 102, baseType: !297, size: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2428, file: !1240, line: 103, baseType: !1238, size: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2428, file: !1240, line: 104, baseType: !2433, size: 64)
!2433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2434, size: 64)
!2434 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !1240, line: 104, flags: DIFlagFwdDecl)
!2435 = !{!2436}
!2436 = !DILocalVariable(name: "key", arg: 1, scope: !2420, file: !1240, line: 205, type: !2423)
!2437 = !DILocation(line: 205, column: 65, scope: !2420)
!2438 = !DILocation(line: 207, column: 28, scope: !2420)
!2439 = !DILocation(line: 207, column: 9, scope: !2420)
!2440 = !DILocation(line: 207, column: 2, scope: !2420)
!2441 = distinct !DISubprogram(name: "cpu_online", scope: !2038, file: !2038, line: 1080, type: !2442, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2444)
!2442 = !DISubroutineType(types: !2443)
!2443 = !{!603, !7}
!2444 = !{!2445}
!2445 = !DILocalVariable(name: "cpu", arg: 1, scope: !2441, file: !2038, line: 1080, type: !7)
!2446 = !DILocation(line: 1080, column: 44, scope: !2441)
!2447 = !DILocation(line: 1082, column: 26, scope: !2441)
!2448 = !DILocation(line: 1082, column: 9, scope: !2441)
!2449 = !DILocation(line: 1082, column: 2, scope: !2441)
!2450 = distinct !DISubprogram(name: "__preempt_count_add", scope: !2451, file: !2451, line: 78, type: !2452, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2454)
!2451 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!2452 = !DISubroutineType(types: !2453)
!2453 = !{null, !46}
!2454 = !{!2455, !2456, !2458}
!2455 = !DILocalVariable(name: "val", arg: 1, scope: !2450, file: !2451, line: 78, type: !46)
!2456 = !DILocalVariable(name: "pao_ID__", scope: !2457, file: !2451, line: 80, type: !1128)
!2457 = distinct !DILexicalBlock(scope: !2450, file: !2451, line: 80, column: 2)
!2458 = !DILocalVariable(name: "pto_val__", scope: !2459, file: !2451, line: 80, type: !1181)
!2459 = distinct !DILexicalBlock(scope: !2460, file: !2451, line: 80, column: 2)
!2460 = distinct !DILexicalBlock(scope: !2461, file: !2451, line: 80, column: 2)
!2461 = distinct !DILexicalBlock(scope: !2457, file: !2451, line: 80, column: 2)
!2462 = !DILocation(line: 78, column: 53, scope: !2450)
!2463 = !DILocation(line: 80, column: 2, scope: !2450)
!2464 = !DILocation(line: 80, column: 2, scope: !2457)
!2465 = !DILocation(line: 80, column: 2, scope: !2461)
!2466 = !DILocation(line: 80, column: 2, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2461, file: !2451, line: 80, column: 2)
!2468 = !{i64 2149608404}
!2469 = !DILocation(line: 80, column: 2, scope: !2460)
!2470 = !DILocation(line: 80, column: 2, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2460, file: !2451, line: 80, column: 2)
!2472 = !{i64 2149608699}
!2473 = !DILocation(line: 80, column: 2, scope: !2459)
!2474 = !{i64 2149609404}
!2475 = !DILocation(line: 81, column: 1, scope: !2450)
!2476 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !2451, file: !2451, line: 93, type: !649, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2477)
!2477 = !{!2478}
!2478 = !DILocalVariable(name: "c", scope: !2479, file: !2451, line: 95, type: !603)
!2479 = distinct !DILexicalBlock(scope: !2476, file: !2451, line: 95, column: 9)
!2480 = !DILocation(line: 95, column: 9, scope: !2479)
!2481 = !{i64 2149612760, i64 2149612853}
!2482 = !DILocation(line: 95, column: 9, scope: !2476)
!2483 = !DILocation(line: 95, column: 2, scope: !2476)
!2484 = distinct !DISubprogram(name: "arch_static_branch", scope: !2485, file: !2485, line: 25, type: !2486, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2488)
!2485 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!2486 = !DISubroutineType(types: !2487)
!2487 = !{!603, !2423, !603}
!2488 = !{!2489, !2490, !2491}
!2489 = !DILocalVariable(name: "key", arg: 1, scope: !2484, file: !2485, line: 25, type: !2423)
!2490 = !DILocalVariable(name: "branch", arg: 2, scope: !2484, file: !2485, line: 25, type: !603)
!2491 = !DILabel(scope: !2484, name: "l_yes", file: !2485, line: 33)
!2492 = !DILocation(line: 25, column: 67, scope: !2484)
!2493 = !DILocation(line: 25, column: 77, scope: !2484)
!2494 = !DILocation(line: 30, column: 13, scope: !2484)
!2495 = !DILocation(line: 30, column: 28, scope: !2484)
!2496 = !DILocation(line: 30, column: 26, scope: !2484)
!2497 = !DILocation(line: 27, column: 2, scope: !2484)
!2498 = !{i64 1056654, i64 1056698, i64 2148541381, i64 2148541402, i64 2148541428, i64 2148541461, i64 2148541495, i64 2148541519}
!2499 = !DILocation(line: 32, column: 2, scope: !2484)
!2500 = !DILocation(line: 33, column: 1, scope: !2484)
!2501 = !DILocation(line: 34, column: 2, scope: !2484)
!2502 = !DILocation(line: 35, column: 1, scope: !2484)
!2503 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !2038, file: !2038, line: 502, type: !2504, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2506)
!2504 = !DISubroutineType(types: !2505)
!2505 = !{!603, !46, !2035}
!2506 = !{!2507, !2508}
!2507 = !DILocalVariable(name: "cpu", arg: 1, scope: !2503, file: !2038, line: 502, type: !46)
!2508 = !DILocalVariable(name: "cpumask", arg: 2, scope: !2503, file: !2038, line: 502, type: !2035)
!2509 = !DILocation(line: 502, column: 50, scope: !2503)
!2510 = !DILocation(line: 502, column: 77, scope: !2503)
!2511 = !DILocation(line: 504, column: 9, scope: !2503)
!2512 = !DILocation(line: 504, column: 2, scope: !2503)
!2513 = distinct !DISubprogram(name: "_test_bit", scope: !2514, file: !2514, line: 139, type: !2515, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2520)
!2514 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!603, !297, !2517}
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2519)
!2519 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !297)
!2520 = !{!2521, !2522}
!2521 = !DILocalVariable(name: "nr", arg: 1, scope: !2513, file: !2514, line: 139, type: !297)
!2522 = !DILocalVariable(name: "addr", arg: 2, scope: !2513, file: !2514, line: 139, type: !2517)
!2523 = !DILocation(line: 139, column: 25, scope: !2513)
!2524 = !DILocation(line: 139, column: 59, scope: !2513)
!2525 = !DILocation(line: 141, column: 25, scope: !2513)
!2526 = !DILocation(line: 141, column: 32, scope: !2513)
!2527 = !DILocation(line: 141, column: 30, scope: !2513)
!2528 = !DILocation(line: 141, column: 2, scope: !2513)
!2529 = !DILocation(line: 142, column: 23, scope: !2513)
!2530 = !DILocation(line: 142, column: 27, scope: !2513)
!2531 = !DILocation(line: 142, column: 9, scope: !2513)
!2532 = !DILocation(line: 142, column: 2, scope: !2513)
!2533 = distinct !DISubprogram(name: "cpumask_check", scope: !2038, file: !2038, line: 148, type: !2534, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2536)
!2534 = !DISubroutineType(types: !2535)
!2535 = !{!7, !7}
!2536 = !{!2537}
!2537 = !DILocalVariable(name: "cpu", arg: 1, scope: !2533, file: !2038, line: 148, type: !7)
!2538 = !DILocation(line: 148, column: 64, scope: !2533)
!2539 = !DILocation(line: 150, column: 20, scope: !2533)
!2540 = !DILocation(line: 150, column: 2, scope: !2533)
!2541 = !DILocation(line: 151, column: 9, scope: !2533)
!2542 = !DILocation(line: 151, column: 2, scope: !2533)
!2543 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !2544, file: !2544, line: 66, type: !2545, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2550)
!2544 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!2545 = !DISubroutineType(types: !2546)
!2546 = !{null, !2547, !294}
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2549)
!2549 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2550 = !{!2551, !2552}
!2551 = !DILocalVariable(name: "v", arg: 1, scope: !2543, file: !2544, line: 66, type: !2547)
!2552 = !DILocalVariable(name: "size", arg: 2, scope: !2543, file: !2544, line: 66, type: !294)
!2553 = !DILocation(line: 66, column: 73, scope: !2543)
!2554 = !DILocation(line: 66, column: 83, scope: !2543)
!2555 = !DILocation(line: 68, column: 19, scope: !2543)
!2556 = !DILocation(line: 68, column: 22, scope: !2543)
!2557 = !DILocation(line: 68, column: 2, scope: !2543)
!2558 = !DILocation(line: 69, column: 2, scope: !2543)
!2559 = !DILocation(line: 70, column: 1, scope: !2543)
!2560 = distinct !DISubprogram(name: "arch_test_bit", scope: !2561, file: !2561, line: 237, type: !2515, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2562)
!2561 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!2562 = !{!2563, !2564}
!2563 = !DILocalVariable(name: "nr", arg: 1, scope: !2560, file: !2561, line: 237, type: !297)
!2564 = !DILocalVariable(name: "addr", arg: 2, scope: !2560, file: !2561, line: 237, type: !2517)
!2565 = !DILocation(line: 237, column: 29, scope: !2560)
!2566 = !DILocation(line: 237, column: 63, scope: !2560)
!2567 = !DILocation(line: 239, column: 30, scope: !2560)
!2568 = !DILocation(line: 239, column: 9, scope: !2560)
!2569 = !DILocation(line: 239, column: 54, scope: !2560)
!2570 = !DILocation(line: 239, column: 58, scope: !2560)
!2571 = !DILocation(line: 239, column: 36, scope: !2560)
!2572 = !DILocation(line: 240, column: 26, scope: !2560)
!2573 = !DILocation(line: 240, column: 30, scope: !2560)
!2574 = !DILocation(line: 240, column: 8, scope: !2560)
!2575 = !DILocation(line: 239, column: 2, scope: !2560)
!2576 = distinct !DISubprogram(name: "kasan_check_read", scope: !2577, file: !2577, line: 40, type: !2578, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2580)
!2577 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!2578 = !DISubroutineType(types: !2579)
!2579 = !{!603, !2547, !7}
!2580 = !{!2581, !2582}
!2581 = !DILocalVariable(name: "p", arg: 1, scope: !2576, file: !2577, line: 40, type: !2547)
!2582 = !DILocalVariable(name: "size", arg: 2, scope: !2576, file: !2577, line: 40, type: !7)
!2583 = !DILocation(line: 40, column: 58, scope: !2576)
!2584 = !DILocation(line: 40, column: 74, scope: !2576)
!2585 = !DILocation(line: 42, column: 2, scope: !2576)
!2586 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2587, file: !2587, line: 229, type: !2588, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2590)
!2587 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!2588 = !DISubroutineType(types: !2589)
!2589 = !{null, !2547, !294, !46}
!2590 = !{!2591, !2592, !2593}
!2591 = !DILocalVariable(name: "ptr", arg: 1, scope: !2586, file: !2587, line: 229, type: !2547)
!2592 = !DILocalVariable(name: "size", arg: 2, scope: !2586, file: !2587, line: 229, type: !294)
!2593 = !DILocalVariable(name: "type", arg: 3, scope: !2586, file: !2587, line: 230, type: !46)
!2594 = !DILocation(line: 229, column: 60, scope: !2586)
!2595 = !DILocation(line: 229, column: 72, scope: !2586)
!2596 = !DILocation(line: 230, column: 15, scope: !2586)
!2597 = !DILocation(line: 230, column: 23, scope: !2586)
!2598 = distinct !DISubprogram(name: "constant_test_bit", scope: !2561, file: !2561, line: 204, type: !2599, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2601)
!2599 = !DISubroutineType(types: !2600)
!2600 = !{!603, !283, !2517}
!2601 = !{!2602, !2603}
!2602 = !DILocalVariable(name: "nr", arg: 1, scope: !2598, file: !2561, line: 204, type: !283)
!2603 = !DILocalVariable(name: "addr", arg: 2, scope: !2598, file: !2561, line: 204, type: !2517)
!2604 = !DILocation(line: 204, column: 52, scope: !2598)
!2605 = !DILocation(line: 204, column: 86, scope: !2598)
!2606 = !DILocation(line: 206, column: 19, scope: !2598)
!2607 = !DILocation(line: 206, column: 22, scope: !2598)
!2608 = !DILocation(line: 206, column: 15, scope: !2598)
!2609 = !DILocation(line: 207, column: 4, scope: !2598)
!2610 = !DILocation(line: 207, column: 9, scope: !2598)
!2611 = !DILocation(line: 207, column: 12, scope: !2598)
!2612 = !DILocation(line: 206, column: 44, scope: !2598)
!2613 = !DILocation(line: 207, column: 37, scope: !2598)
!2614 = !DILocation(line: 206, column: 2, scope: !2598)
!2615 = distinct !DISubprogram(name: "variable_test_bit", scope: !2561, file: !2561, line: 224, type: !2599, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2616)
!2616 = !{!2617, !2618, !2619}
!2617 = !DILocalVariable(name: "nr", arg: 1, scope: !2615, file: !2561, line: 224, type: !283)
!2618 = !DILocalVariable(name: "addr", arg: 2, scope: !2615, file: !2561, line: 224, type: !2517)
!2619 = !DILocalVariable(name: "oldbit", scope: !2615, file: !2561, line: 226, type: !603)
!2620 = !DILocation(line: 224, column: 52, scope: !2615)
!2621 = !DILocation(line: 224, column: 86, scope: !2615)
!2622 = !DILocation(line: 226, column: 2, scope: !2615)
!2623 = !DILocation(line: 226, column: 7, scope: !2615)
!2624 = !DILocation(line: 231, column: 33, scope: !2615)
!2625 = !DILocation(line: 231, column: 46, scope: !2615)
!2626 = !DILocation(line: 228, column: 2, scope: !2615)
!2627 = !{i64 2147820335, i64 2147820409}
!2628 = !DILocation(line: 233, column: 9, scope: !2615)
!2629 = !DILocation(line: 234, column: 1, scope: !2615)
!2630 = !DILocation(line: 233, column: 2, scope: !2615)
!2631 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !2038, file: !2038, line: 140, type: !2632, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2634)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{null, !7, !7}
!2634 = !{!2635, !2636}
!2635 = !DILocalVariable(name: "cpu", arg: 1, scope: !2631, file: !2038, line: 140, type: !7)
!2636 = !DILocalVariable(name: "bits", arg: 2, scope: !2631, file: !2038, line: 140, type: !7)
!2637 = !DILocation(line: 140, column: 60, scope: !2631)
!2638 = !DILocation(line: 140, column: 78, scope: !2631)
!2639 = !DILocation(line: 145, column: 1, scope: !2631)
