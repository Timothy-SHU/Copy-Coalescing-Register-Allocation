; ModuleID = 'drivers/thermal/thermal_helpers.c'
source_filename = "drivers/thermal/thermal_helpers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_get_thermal_instance: ; .asciz \22\22 ; .asciz \22\22 ; .balign 8 ; .quad get_thermal_instance ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_thermal_zone_get_temp: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad thermal_zone_get_temp ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_thermal_zone_get_slope: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad thermal_zone_get_slope ; .previous"
module asm ".section \22.export_symbol\22,\22a\22 ; __export_symbol_thermal_zone_get_offset: ; .asciz \22GPL\22 ; .asciz \22\22 ; .balign 8 ; .quad thermal_zone_get_offset ; .previous"

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
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.thermal_trip = type { i32, i32, i32, ptr }
%struct.thermal_zone_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thermal_cooling_device = type { i32, ptr, i64, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.thermal_instance = type { i32, [20 x i8], ptr, ptr, ptr, i8, i64, i64, i64, [20 x i8], %struct.device_attribute, [20 x i8], %struct.device_attribute, %struct.list_head, %struct.list_head, i32, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.thermal_cooling_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.tracepoint_func = type { ptr, ptr, i32 }
%struct.thermal_zone_params = type { [20 x i8], i8, i32, i32, i32, i32, i32, i32, i32, i32 }

@__UNIQUE_ID___addressable_get_thermal_instance229 = internal global ptr @get_thermal_instance, section ".discard.addressable", align 8, !dbg !0
@__UNIQUE_ID___addressable_thermal_zone_get_temp230 = internal global ptr @thermal_zone_get_temp, section ".discard.addressable", align 8, !dbg !2045
@__UNIQUE_ID___addressable_thermal_zone_get_slope231 = internal global ptr @thermal_zone_get_slope, section ".discard.addressable", align 8, !dbg !2047
@__UNIQUE_ID___addressable_thermal_zone_get_offset232 = internal global ptr @thermal_zone_get_offset, section ".discard.addressable", align 8, !dbg !2049
@__tracepoint_cdev_update = external dso_local global %struct.tracepoint, align 8
@pcpu_hot = external dso_local global %struct.pcpu_hot, section ".data..percpu..shared_aligned", align 64
@.str = private unnamed_addr constant [32 x i8] c"drivers/thermal/thermal_trace.h\00", align 1, !dbg !2051
@trace_cdev_update.__UNIQUE_ID___addressable___SCK__tp_func_cdev_update215 = internal global ptr @__SCK__tp_func_cdev_update, section ".discard.addressable", align 8, !dbg !2054
@__SCK__tp_func_cdev_update = external dso_local global %struct.static_call_key, align 8
@trace_cdev_update.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace216 = internal global ptr @__SCK__preempt_schedule_notrace, section ".discard.addressable", align 8, !dbg !2083
@__SCK__preempt_schedule_notrace = external dso_local global %struct.static_call_key, align 8
@__cpu_online_mask = external dso_local global %struct.cpumask, align 8
@llvm.compiler.used = appending global [6 x ptr] [ptr @__UNIQUE_ID___addressable_get_thermal_instance229, ptr @__UNIQUE_ID___addressable_thermal_zone_get_temp230, ptr @__UNIQUE_ID___addressable_thermal_zone_get_slope231, ptr @__UNIQUE_ID___addressable_thermal_zone_get_offset232, ptr @trace_cdev_update.__UNIQUE_ID___addressable___SCK__tp_func_cdev_update215, ptr @trace_cdev_update.__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace216], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @get_tz_trend(ptr noundef %tz, i32 noundef %trip_index) #0 align 16 !dbg !2095 {
entry:
  %tz.addr = alloca ptr, align 8
  %trip_index.addr = alloca i32, align 4
  %trip = alloca ptr, align 8
  %trend = alloca i32, align 4
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !2097, metadata !DIExpression()), !dbg !2101
  store i32 %trip_index, ptr %trip_index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %trip_index.addr, metadata !2098, metadata !DIExpression()), !dbg !2102
  call void @llvm.lifetime.start.p0(i64 8, ptr %trip) #11, !dbg !2103
  call void @llvm.dbg.declare(metadata ptr %trip, metadata !2099, metadata !DIExpression()), !dbg !2104
  %0 = load ptr, ptr %tz.addr, align 8, !dbg !2105
  %trips = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 10, !dbg !2106
  %1 = load ptr, ptr %trips, align 8, !dbg !2106
  %tobool = icmp ne ptr %1, null, !dbg !2105
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2105

cond.true:                                        ; preds = %entry
  %2 = load ptr, ptr %tz.addr, align 8, !dbg !2107
  %trips1 = getelementptr inbounds %struct.thermal_zone_device, ptr %2, i32 0, i32 10, !dbg !2108
  %3 = load ptr, ptr %trips1, align 8, !dbg !2108
  %4 = load i32, ptr %trip_index.addr, align 4, !dbg !2109
  %idxprom = sext i32 %4 to i64, !dbg !2107
  %arrayidx = getelementptr %struct.thermal_trip, ptr %3, i64 %idxprom, !dbg !2107
  br label %cond.end, !dbg !2105

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2105

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %arrayidx, %cond.true ], [ null, %cond.false ], !dbg !2105
  store ptr %cond, ptr %trip, align 8, !dbg !2104
  call void @llvm.lifetime.start.p0(i64 4, ptr %trend) #11, !dbg !2110
  call void @llvm.dbg.declare(metadata ptr %trend, metadata !2100, metadata !DIExpression()), !dbg !2111
  %5 = load ptr, ptr %tz.addr, align 8, !dbg !2112
  %emul_temperature = getelementptr inbounds %struct.thermal_zone_device, ptr %5, i32 0, i32 17, !dbg !2114
  %6 = load i32, ptr %emul_temperature, align 8, !dbg !2114
  %tobool2 = icmp ne i32 %6, 0, !dbg !2112
  br i1 %tobool2, label %if.then, label %lor.lhs.false, !dbg !2115

lor.lhs.false:                                    ; preds = %cond.end
  %7 = load ptr, ptr %tz.addr, align 8, !dbg !2116
  %ops = getelementptr inbounds %struct.thermal_zone_device, ptr %7, i32 0, i32 22, !dbg !2117
  %8 = load ptr, ptr %ops, align 8, !dbg !2117
  %get_trend = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %8, i32 0, i32 9, !dbg !2118
  %9 = load ptr, ptr %get_trend, align 8, !dbg !2118
  %tobool3 = icmp ne ptr %9, null, !dbg !2116
  br i1 %tobool3, label %lor.lhs.false4, label %if.then, !dbg !2119

lor.lhs.false4:                                   ; preds = %lor.lhs.false
  %10 = load ptr, ptr %tz.addr, align 8, !dbg !2120
  %ops5 = getelementptr inbounds %struct.thermal_zone_device, ptr %10, i32 0, i32 22, !dbg !2121
  %11 = load ptr, ptr %ops5, align 8, !dbg !2121
  %get_trend6 = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %11, i32 0, i32 9, !dbg !2122
  %12 = load ptr, ptr %get_trend6, align 8, !dbg !2122
  %13 = load ptr, ptr %tz.addr, align 8, !dbg !2123
  %14 = load ptr, ptr %trip, align 8, !dbg !2124
  %call = call i32 %12(ptr noundef %13, ptr noundef %14, ptr noundef %trend) #12, !dbg !2120
  %tobool7 = icmp ne i32 %call, 0, !dbg !2120
  br i1 %tobool7, label %if.then, label %if.end15, !dbg !2125

if.then:                                          ; preds = %lor.lhs.false4, %lor.lhs.false, %cond.end
  %15 = load ptr, ptr %tz.addr, align 8, !dbg !2126
  %temperature = getelementptr inbounds %struct.thermal_zone_device, ptr %15, i32 0, i32 15, !dbg !2129
  %16 = load i32, ptr %temperature, align 8, !dbg !2129
  %17 = load ptr, ptr %tz.addr, align 8, !dbg !2130
  %last_temperature = getelementptr inbounds %struct.thermal_zone_device, ptr %17, i32 0, i32 16, !dbg !2131
  %18 = load i32, ptr %last_temperature, align 4, !dbg !2131
  %cmp = icmp sgt i32 %16, %18, !dbg !2132
  br i1 %cmp, label %if.then8, label %if.else, !dbg !2133

if.then8:                                         ; preds = %if.then
  store i32 1, ptr %trend, align 4, !dbg !2134
  br label %if.end14, !dbg !2135

if.else:                                          ; preds = %if.then
  %19 = load ptr, ptr %tz.addr, align 8, !dbg !2136
  %temperature9 = getelementptr inbounds %struct.thermal_zone_device, ptr %19, i32 0, i32 15, !dbg !2138
  %20 = load i32, ptr %temperature9, align 8, !dbg !2138
  %21 = load ptr, ptr %tz.addr, align 8, !dbg !2139
  %last_temperature10 = getelementptr inbounds %struct.thermal_zone_device, ptr %21, i32 0, i32 16, !dbg !2140
  %22 = load i32, ptr %last_temperature10, align 4, !dbg !2140
  %cmp11 = icmp slt i32 %20, %22, !dbg !2141
  br i1 %cmp11, label %if.then12, label %if.else13, !dbg !2142

if.then12:                                        ; preds = %if.else
  store i32 2, ptr %trend, align 4, !dbg !2143
  br label %if.end, !dbg !2144

if.else13:                                        ; preds = %if.else
  store i32 0, ptr %trend, align 4, !dbg !2145
  br label %if.end

if.end:                                           ; preds = %if.else13, %if.then12
  br label %if.end14

if.end14:                                         ; preds = %if.end, %if.then8
  br label %if.end15, !dbg !2146

if.end15:                                         ; preds = %if.end14, %lor.lhs.false4
  %23 = load i32, ptr %trend, align 4, !dbg !2147
  call void @llvm.lifetime.end.p0(i64 4, ptr %trend) #11, !dbg !2148
  call void @llvm.lifetime.end.p0(i64 8, ptr %trip) #11, !dbg !2148
  ret i32 %23, !dbg !2149
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden ptr @get_thermal_instance(ptr noundef %tz, ptr noundef %cdev, i32 noundef %trip_index) #0 align 16 !dbg !2150 {
entry:
  %tz.addr = alloca ptr, align 8
  %cdev.addr = alloca ptr, align 8
  %trip_index.addr = alloca i32, align 4
  %pos = alloca ptr, align 8
  %target_instance = alloca ptr, align 8
  %trip = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr10 = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !2154, metadata !DIExpression()), !dbg !2166
  store ptr %cdev, ptr %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdev.addr, metadata !2155, metadata !DIExpression()), !dbg !2167
  store i32 %trip_index, ptr %trip_index.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %trip_index.addr, metadata !2156, metadata !DIExpression()), !dbg !2168
  call void @llvm.lifetime.start.p0(i64 8, ptr %pos) #11, !dbg !2169
  call void @llvm.dbg.declare(metadata ptr %pos, metadata !2157, metadata !DIExpression()), !dbg !2170
  store ptr null, ptr %pos, align 8, !dbg !2170
  call void @llvm.lifetime.start.p0(i64 8, ptr %target_instance) #11, !dbg !2171
  call void @llvm.dbg.declare(metadata ptr %target_instance, metadata !2158, metadata !DIExpression()), !dbg !2172
  store ptr null, ptr %target_instance, align 8, !dbg !2172
  call void @llvm.lifetime.start.p0(i64 8, ptr %trip) #11, !dbg !2173
  call void @llvm.dbg.declare(metadata ptr %trip, metadata !2159, metadata !DIExpression()), !dbg !2174
  %0 = load ptr, ptr %tz.addr, align 8, !dbg !2175
  %lock = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 28, !dbg !2176
  call void @mutex_lock(ptr noundef %lock) #12, !dbg !2177
  %1 = load ptr, ptr %cdev.addr, align 8, !dbg !2178
  %lock1 = getelementptr inbounds %struct.thermal_cooling_device, ptr %1, i32 0, i32 9, !dbg !2179
  call void @mutex_lock(ptr noundef %lock1) #12, !dbg !2180
  %2 = load ptr, ptr %tz.addr, align 8, !dbg !2181
  %trips = getelementptr inbounds %struct.thermal_zone_device, ptr %2, i32 0, i32 10, !dbg !2182
  %3 = load ptr, ptr %trips, align 8, !dbg !2182
  %4 = load i32, ptr %trip_index.addr, align 4, !dbg !2183
  %idxprom = sext i32 %4 to i64, !dbg !2181
  %arrayidx = getelementptr %struct.thermal_trip, ptr %3, i64 %idxprom, !dbg !2181
  store ptr %arrayidx, ptr %trip, align 8, !dbg !2184
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !2185
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2160, metadata !DIExpression()), !dbg !2185
  %5 = load ptr, ptr %tz.addr, align 8, !dbg !2185
  %thermal_instances = getelementptr inbounds %struct.thermal_zone_device, ptr %5, i32 0, i32 26, !dbg !2185
  %next = getelementptr inbounds %struct.list_head, ptr %thermal_instances, i32 0, i32 0, !dbg !2185
  %6 = load ptr, ptr %next, align 8, !dbg !2185
  store ptr %6, ptr %__mptr, align 8, !dbg !2185
  %7 = load ptr, ptr %__mptr, align 8, !dbg !2185
  %add.ptr = getelementptr i8, ptr %7, i64 -192, !dbg !2185
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2185
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !2186
  %8 = load ptr, ptr %tmp, align 8, !dbg !2185
  store ptr %8, ptr %pos, align 8, !dbg !2186
  br label %for.cond, !dbg !2186

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load ptr, ptr %pos, align 8, !dbg !2187
  %tz_node = getelementptr inbounds %struct.thermal_instance, ptr %9, i32 0, i32 13, !dbg !2187
  %10 = load ptr, ptr %tz.addr, align 8, !dbg !2187
  %thermal_instances2 = getelementptr inbounds %struct.thermal_zone_device, ptr %10, i32 0, i32 26, !dbg !2187
  %cmp = icmp eq ptr %tz_node, %thermal_instances2, !dbg !2187
  %lnot = xor i1 %cmp, true, !dbg !2187
  br i1 %lnot, label %for.body, label %for.end, !dbg !2186

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %pos, align 8, !dbg !2188
  %tz3 = getelementptr inbounds %struct.thermal_instance, ptr %11, i32 0, i32 2, !dbg !2191
  %12 = load ptr, ptr %tz3, align 8, !dbg !2191
  %13 = load ptr, ptr %tz.addr, align 8, !dbg !2192
  %cmp4 = icmp eq ptr %12, %13, !dbg !2193
  br i1 %cmp4, label %land.lhs.true, label %if.end, !dbg !2194

land.lhs.true:                                    ; preds = %for.body
  %14 = load ptr, ptr %pos, align 8, !dbg !2195
  %trip5 = getelementptr inbounds %struct.thermal_instance, ptr %14, i32 0, i32 4, !dbg !2196
  %15 = load ptr, ptr %trip5, align 8, !dbg !2196
  %16 = load ptr, ptr %trip, align 8, !dbg !2197
  %cmp6 = icmp eq ptr %15, %16, !dbg !2198
  br i1 %cmp6, label %land.lhs.true7, label %if.end, !dbg !2199

land.lhs.true7:                                   ; preds = %land.lhs.true
  %17 = load ptr, ptr %pos, align 8, !dbg !2200
  %cdev8 = getelementptr inbounds %struct.thermal_instance, ptr %17, i32 0, i32 3, !dbg !2201
  %18 = load ptr, ptr %cdev8, align 8, !dbg !2201
  %19 = load ptr, ptr %cdev.addr, align 8, !dbg !2202
  %cmp9 = icmp eq ptr %18, %19, !dbg !2203
  br i1 %cmp9, label %if.then, label %if.end, !dbg !2204

if.then:                                          ; preds = %land.lhs.true7
  %20 = load ptr, ptr %pos, align 8, !dbg !2205
  store ptr %20, ptr %target_instance, align 8, !dbg !2207
  br label %for.end, !dbg !2208

if.end:                                           ; preds = %land.lhs.true7, %land.lhs.true, %for.body
  br label %for.inc, !dbg !2209

for.inc:                                          ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr10) #11, !dbg !2210
  call void @llvm.dbg.declare(metadata ptr %__mptr10, metadata !2163, metadata !DIExpression()), !dbg !2210
  %21 = load ptr, ptr %pos, align 8, !dbg !2210
  %tz_node11 = getelementptr inbounds %struct.thermal_instance, ptr %21, i32 0, i32 13, !dbg !2210
  %next12 = getelementptr inbounds %struct.list_head, ptr %tz_node11, i32 0, i32 0, !dbg !2210
  %22 = load ptr, ptr %next12, align 8, !dbg !2210
  store ptr %22, ptr %__mptr10, align 8, !dbg !2210
  %23 = load ptr, ptr %__mptr10, align 8, !dbg !2210
  %add.ptr14 = getelementptr i8, ptr %23, i64 -192, !dbg !2210
  store ptr %add.ptr14, ptr %tmp13, align 8, !dbg !2210
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr10) #11, !dbg !2187
  %24 = load ptr, ptr %tmp13, align 8, !dbg !2210
  store ptr %24, ptr %pos, align 8, !dbg !2187
  br label %for.cond, !dbg !2187, !llvm.loop !2211

for.end:                                          ; preds = %if.then, %for.cond
  %25 = load ptr, ptr %cdev.addr, align 8, !dbg !2215
  %lock15 = getelementptr inbounds %struct.thermal_cooling_device, ptr %25, i32 0, i32 9, !dbg !2216
  call void @mutex_unlock(ptr noundef %lock15) #12, !dbg !2217
  %26 = load ptr, ptr %tz.addr, align 8, !dbg !2218
  %lock16 = getelementptr inbounds %struct.thermal_zone_device, ptr %26, i32 0, i32 28, !dbg !2219
  call void @mutex_unlock(ptr noundef %lock16) #12, !dbg !2220
  %27 = load ptr, ptr %target_instance, align 8, !dbg !2221
  call void @llvm.lifetime.end.p0(i64 8, ptr %trip) #11, !dbg !2222
  call void @llvm.lifetime.end.p0(i64 8, ptr %target_instance) #11, !dbg !2222
  call void @llvm.lifetime.end.p0(i64 8, ptr %pos) #11, !dbg !2222
  ret ptr %27, !dbg !2223
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2224 dso_local void @mutex_lock(ptr noundef) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2228 dso_local void @mutex_unlock(ptr noundef) #3

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @__thermal_zone_get_temp(ptr noundef %tz, ptr noundef %temp) #0 align 16 !dbg !2229 {
entry:
  %tz.addr = alloca ptr, align 8
  %temp.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %count = alloca i32, align 4
  %crit_temp = alloca i32, align 4
  %trip = alloca %struct.thermal_trip, align 8
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !2231, metadata !DIExpression()), !dbg !2237
  store ptr %temp, ptr %temp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %temp.addr, metadata !2232, metadata !DIExpression()), !dbg !2238
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !2239
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2233, metadata !DIExpression()), !dbg !2240
  store i32 -22, ptr %ret, align 4, !dbg !2240
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #11, !dbg !2241
  call void @llvm.dbg.declare(metadata ptr %count, metadata !2234, metadata !DIExpression()), !dbg !2242
  call void @llvm.lifetime.start.p0(i64 4, ptr %crit_temp) #11, !dbg !2243
  call void @llvm.dbg.declare(metadata ptr %crit_temp, metadata !2235, metadata !DIExpression()), !dbg !2244
  store i32 2147483647, ptr %crit_temp, align 4, !dbg !2244
  call void @llvm.lifetime.start.p0(i64 24, ptr %trip) #11, !dbg !2245
  call void @llvm.dbg.declare(metadata ptr %trip, metadata !2236, metadata !DIExpression()), !dbg !2246
  br label %do.body, !dbg !2247

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %tz.addr, align 8, !dbg !2248
  %lock = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 28, !dbg !2248
  br label %do.cond, !dbg !2248

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2248

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %tz.addr, align 8, !dbg !2250
  %ops = getelementptr inbounds %struct.thermal_zone_device, ptr %1, i32 0, i32 22, !dbg !2251
  %2 = load ptr, ptr %ops, align 8, !dbg !2251
  %get_temp = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %2, i32 0, i32 2, !dbg !2252
  %3 = load ptr, ptr %get_temp, align 8, !dbg !2252
  %4 = load ptr, ptr %tz.addr, align 8, !dbg !2253
  %5 = load ptr, ptr %temp.addr, align 8, !dbg !2254
  %call = call i32 %3(ptr noundef %4, ptr noundef %5) #12, !dbg !2250
  store i32 %call, ptr %ret, align 4, !dbg !2255
  %6 = load i32, ptr %ret, align 4, !dbg !2256
  %tobool = icmp ne i32 %6, 0, !dbg !2256
  br i1 %tobool, label %if.then, label %if.end, !dbg !2258

if.then:                                          ; preds = %do.end
  br label %if.end, !dbg !2259

if.end:                                           ; preds = %if.then, %do.end
  %7 = load i32, ptr %ret, align 4, !dbg !2260
  call void @llvm.lifetime.end.p0(i64 24, ptr %trip) #11, !dbg !2261
  call void @llvm.lifetime.end.p0(i64 4, ptr %crit_temp) #11, !dbg !2261
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #11, !dbg !2261
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !2261
  ret i32 %7, !dbg !2262
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @thermal_zone_get_temp(ptr noundef %tz, ptr noundef %temp) #0 align 16 !dbg !2263 {
entry:
  %retval = alloca i32, align 4
  %tz.addr = alloca ptr, align 8
  %temp.addr = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !2265, metadata !DIExpression()), !dbg !2269
  store ptr %temp, ptr %temp.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %temp.addr, metadata !2266, metadata !DIExpression()), !dbg !2270
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #11, !dbg !2271
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2267, metadata !DIExpression()), !dbg !2272
  %0 = load ptr, ptr %tz.addr, align 8, !dbg !2273
  %call = call zeroext i1 @IS_ERR_OR_NULL(ptr noundef %0) #12, !dbg !2275
  br i1 %call, label %if.then, label %if.end, !dbg !2276

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !2277
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2277

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %tz.addr, align 8, !dbg !2278
  %lock = getelementptr inbounds %struct.thermal_zone_device, ptr %1, i32 0, i32 28, !dbg !2279
  call void @mutex_lock(ptr noundef %lock) #12, !dbg !2280
  %2 = load ptr, ptr %tz.addr, align 8, !dbg !2281
  %ops = getelementptr inbounds %struct.thermal_zone_device, ptr %2, i32 0, i32 22, !dbg !2283
  %3 = load ptr, ptr %ops, align 8, !dbg !2283
  %get_temp = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %3, i32 0, i32 2, !dbg !2284
  %4 = load ptr, ptr %get_temp, align 8, !dbg !2284
  %tobool = icmp ne ptr %4, null, !dbg !2281
  br i1 %tobool, label %if.end2, label %if.then1, !dbg !2285

if.then1:                                         ; preds = %if.end
  store i32 -22, ptr %ret, align 4, !dbg !2286
  br label %unlock, !dbg !2288

if.end2:                                          ; preds = %if.end
  %5 = load ptr, ptr %tz.addr, align 8, !dbg !2289
  %device = getelementptr inbounds %struct.thermal_zone_device, ptr %5, i32 0, i32 2, !dbg !2291
  %call3 = call i32 @device_is_registered(ptr noundef %device) #12, !dbg !2292
  %tobool4 = icmp ne i32 %call3, 0, !dbg !2292
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !2293

if.then5:                                         ; preds = %if.end2
  %6 = load ptr, ptr %tz.addr, align 8, !dbg !2294
  %7 = load ptr, ptr %temp.addr, align 8, !dbg !2295
  %call6 = call i32 @__thermal_zone_get_temp(ptr noundef %6, ptr noundef %7) #12, !dbg !2296
  store i32 %call6, ptr %ret, align 4, !dbg !2297
  br label %if.end7, !dbg !2298

if.else:                                          ; preds = %if.end2
  store i32 -19, ptr %ret, align 4, !dbg !2299
  br label %if.end7

if.end7:                                          ; preds = %if.else, %if.then5
  br label %unlock, !dbg !2300

unlock:                                           ; preds = %if.end7, %if.then1
  call void @llvm.dbg.label(metadata !2268), !dbg !2301
  %8 = load ptr, ptr %tz.addr, align 8, !dbg !2302
  %lock8 = getelementptr inbounds %struct.thermal_zone_device, ptr %8, i32 0, i32 28, !dbg !2303
  call void @mutex_unlock(ptr noundef %lock8) #12, !dbg !2304
  %9 = load i32, ptr %ret, align 4, !dbg !2305
  store i32 %9, ptr %retval, align 4, !dbg !2306
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2306

cleanup:                                          ; preds = %unlock, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #11, !dbg !2307
  %10 = load i32, ptr %retval, align 4, !dbg !2307
  ret i32 %10, !dbg !2307
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(ptr noundef %ptr) #4 align 16 !dbg !2308 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2313, metadata !DIExpression()), !dbg !2314
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2315
  %tobool = icmp ne ptr %0, null, !dbg !2315
  %lnot = xor i1 %tobool, true, !dbg !2315
  %lnot1 = xor i1 %lnot, true, !dbg !2315
  %lnot2 = xor i1 %lnot1, true, !dbg !2315
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2315
  %conv = sext i32 %lnot.ext to i64, !dbg !2315
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2315
  %tobool3 = icmp ne i64 %expval, 0, !dbg !2315
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !2316

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %ptr.addr, align 8, !dbg !2317
  %2 = ptrtoint ptr %1 to i64, !dbg !2317
  %3 = inttoptr i64 %2 to ptr, !dbg !2317
  %4 = ptrtoint ptr %3 to i64, !dbg !2317
  %cmp = icmp uge i64 %4, -4095, !dbg !2317
  %lnot5 = xor i1 %cmp, true, !dbg !2317
  %lnot7 = xor i1 %lnot5, true, !dbg !2317
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !2317
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !2317
  %expval10 = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !2317
  %tobool11 = icmp ne i64 %expval10, 0, !dbg !2316
  br label %lor.end, !dbg !2316

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool11, %lor.rhs ]
  ret i1 %5, !dbg !2318
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @device_is_registered(ptr noundef %dev) #4 align 16 !dbg !2319 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2321, metadata !DIExpression()), !dbg !2322
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2323
  %kobj = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 0, !dbg !2324
  %state_in_sysfs = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 7, !dbg !2325
  %bf.load = load i8, ptr %state_in_sysfs, align 4, !dbg !2325
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !2325
  %bf.clear = and i8 %bf.lshr, 1, !dbg !2325
  %bf.cast = zext i8 %bf.clear to i32, !dbg !2325
  ret i32 %bf.cast, !dbg !2326
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @__thermal_cdev_update(ptr noundef %cdev) #0 align 16 !dbg !2327 {
entry:
  %cdev.addr = alloca ptr, align 8
  %instance = alloca ptr, align 8
  %target = alloca i64, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr9 = alloca ptr, align 8
  %tmp12 = alloca ptr, align 8
  store ptr %cdev, ptr %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdev.addr, metadata !2331, metadata !DIExpression()), !dbg !2340
  call void @llvm.lifetime.start.p0(i64 8, ptr %instance) #11, !dbg !2341
  call void @llvm.dbg.declare(metadata ptr %instance, metadata !2332, metadata !DIExpression()), !dbg !2342
  call void @llvm.lifetime.start.p0(i64 8, ptr %target) #11, !dbg !2343
  call void @llvm.dbg.declare(metadata ptr %target, metadata !2333, metadata !DIExpression()), !dbg !2344
  store i64 0, ptr %target, align 8, !dbg !2344
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #11, !dbg !2345
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2334, metadata !DIExpression()), !dbg !2345
  %0 = load ptr, ptr %cdev.addr, align 8, !dbg !2345
  %thermal_instances = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 10, !dbg !2345
  %next = getelementptr inbounds %struct.list_head, ptr %thermal_instances, i32 0, i32 0, !dbg !2345
  %1 = load ptr, ptr %next, align 8, !dbg !2345
  store ptr %1, ptr %__mptr, align 8, !dbg !2345
  %2 = load ptr, ptr %__mptr, align 8, !dbg !2345
  %add.ptr = getelementptr i8, ptr %2, i64 -208, !dbg !2345
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2345
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #11, !dbg !2346
  %3 = load ptr, ptr %tmp, align 8, !dbg !2345
  store ptr %3, ptr %instance, align 8, !dbg !2346
  br label %for.cond, !dbg !2346

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load ptr, ptr %instance, align 8, !dbg !2347
  %cdev_node = getelementptr inbounds %struct.thermal_instance, ptr %4, i32 0, i32 14, !dbg !2347
  %5 = load ptr, ptr %cdev.addr, align 8, !dbg !2347
  %thermal_instances1 = getelementptr inbounds %struct.thermal_cooling_device, ptr %5, i32 0, i32 10, !dbg !2347
  %cmp = icmp eq ptr %cdev_node, %thermal_instances1, !dbg !2347
  %lnot = xor i1 %cmp, true, !dbg !2347
  br i1 %lnot, label %for.body, label %for.end, !dbg !2346

for.body:                                         ; preds = %for.cond
  %6 = load ptr, ptr %instance, align 8, !dbg !2348
  %target2 = getelementptr inbounds %struct.thermal_instance, ptr %6, i32 0, i32 8, !dbg !2351
  %7 = load i64, ptr %target2, align 8, !dbg !2351
  %cmp3 = icmp eq i64 %7, -1, !dbg !2352
  br i1 %cmp3, label %if.then, label %if.end, !dbg !2353

if.then:                                          ; preds = %for.body
  br label %for.inc, !dbg !2354

if.end:                                           ; preds = %for.body
  %8 = load ptr, ptr %instance, align 8, !dbg !2355
  %target4 = getelementptr inbounds %struct.thermal_instance, ptr %8, i32 0, i32 8, !dbg !2357
  %9 = load i64, ptr %target4, align 8, !dbg !2357
  %10 = load i64, ptr %target, align 8, !dbg !2358
  %cmp5 = icmp ugt i64 %9, %10, !dbg !2359
  br i1 %cmp5, label %if.then6, label %if.end8, !dbg !2360

if.then6:                                         ; preds = %if.end
  %11 = load ptr, ptr %instance, align 8, !dbg !2361
  %target7 = getelementptr inbounds %struct.thermal_instance, ptr %11, i32 0, i32 8, !dbg !2362
  %12 = load i64, ptr %target7, align 8, !dbg !2362
  store i64 %12, ptr %target, align 8, !dbg !2363
  br label %if.end8, !dbg !2364

if.end8:                                          ; preds = %if.then6, %if.end
  br label %for.inc, !dbg !2365

for.inc:                                          ; preds = %if.end8, %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr9) #11, !dbg !2366
  call void @llvm.dbg.declare(metadata ptr %__mptr9, metadata !2337, metadata !DIExpression()), !dbg !2366
  %13 = load ptr, ptr %instance, align 8, !dbg !2366
  %cdev_node10 = getelementptr inbounds %struct.thermal_instance, ptr %13, i32 0, i32 14, !dbg !2366
  %next11 = getelementptr inbounds %struct.list_head, ptr %cdev_node10, i32 0, i32 0, !dbg !2366
  %14 = load ptr, ptr %next11, align 8, !dbg !2366
  store ptr %14, ptr %__mptr9, align 8, !dbg !2366
  %15 = load ptr, ptr %__mptr9, align 8, !dbg !2366
  %add.ptr13 = getelementptr i8, ptr %15, i64 -208, !dbg !2366
  store ptr %add.ptr13, ptr %tmp12, align 8, !dbg !2366
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr9) #11, !dbg !2347
  %16 = load ptr, ptr %tmp12, align 8, !dbg !2366
  store ptr %16, ptr %instance, align 8, !dbg !2347
  br label %for.cond, !dbg !2347, !llvm.loop !2367

for.end:                                          ; preds = %for.cond
  %17 = load ptr, ptr %cdev.addr, align 8, !dbg !2369
  %18 = load i64, ptr %target, align 8, !dbg !2370
  %conv = trunc i64 %18 to i32, !dbg !2370
  call void @thermal_cdev_set_cur_state(ptr noundef %17, i32 noundef %conv) #12, !dbg !2371
  %19 = load ptr, ptr %cdev.addr, align 8, !dbg !2372
  %20 = load i64, ptr %target, align 8, !dbg !2373
  call void @trace_cdev_update(ptr noundef %19, i64 noundef %20) #12, !dbg !2374
  call void @llvm.lifetime.end.p0(i64 8, ptr %target) #11, !dbg !2375
  call void @llvm.lifetime.end.p0(i64 8, ptr %instance) #11, !dbg !2375
  ret void, !dbg !2375
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @thermal_cdev_set_cur_state(ptr noundef %cdev, i32 noundef %target) #0 align 16 !dbg !2376 {
entry:
  %cdev.addr = alloca ptr, align 8
  %target.addr = alloca i32, align 4
  store ptr %cdev, ptr %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdev.addr, metadata !2380, metadata !DIExpression()), !dbg !2382
  store i32 %target, ptr %target.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %target.addr, metadata !2381, metadata !DIExpression()), !dbg !2383
  %0 = load ptr, ptr %cdev.addr, align 8, !dbg !2384
  %ops = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 7, !dbg !2386
  %1 = load ptr, ptr %ops, align 8, !dbg !2386
  %set_cur_state = getelementptr inbounds %struct.thermal_cooling_device_ops, ptr %1, i32 0, i32 2, !dbg !2387
  %2 = load ptr, ptr %set_cur_state, align 8, !dbg !2387
  %3 = load ptr, ptr %cdev.addr, align 8, !dbg !2388
  %4 = load i32, ptr %target.addr, align 4, !dbg !2389
  %conv = sext i32 %4 to i64, !dbg !2389
  %call = call i32 %2(ptr noundef %3, i64 noundef %conv) #12, !dbg !2384
  %tobool = icmp ne i32 %call, 0, !dbg !2384
  br i1 %tobool, label %if.then, label %if.end, !dbg !2390

if.then:                                          ; preds = %entry
  br label %return, !dbg !2391

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %cdev.addr, align 8, !dbg !2392
  %id = getelementptr inbounds %struct.thermal_cooling_device, ptr %5, i32 0, i32 0, !dbg !2393
  %6 = load i32, ptr %id, align 8, !dbg !2393
  %7 = load i32, ptr %target.addr, align 4, !dbg !2394
  %call1 = call i32 @thermal_notify_cdev_state_update(i32 noundef %6, i32 noundef %7) #12, !dbg !2395
  %8 = load ptr, ptr %cdev.addr, align 8, !dbg !2396
  %9 = load i32, ptr %target.addr, align 4, !dbg !2397
  %conv2 = sext i32 %9 to i64, !dbg !2397
  call void @thermal_cooling_device_stats_update(ptr noundef %8, i64 noundef %conv2) #12, !dbg !2398
  br label %return, !dbg !2399

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2399
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @trace_cdev_update(ptr noundef %cdev, i64 noundef %target) #4 align 16 !dbg !2056 {
entry:
  %cdev.addr = alloca ptr, align 8
  %target.addr = alloca i64, align 8
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
  %__UNIQUE_ID_rcu213 = alloca ptr, align 8
  %tmp41 = alloca ptr, align 8
  %tmp42 = alloca ptr, align 8
  %tmp45 = alloca ptr, align 8
  store ptr %cdev, ptr %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdev.addr, metadata !2060, metadata !DIExpression()), !dbg !2400
  store i64 %target, ptr %target.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %target.addr, metadata !2061, metadata !DIExpression()), !dbg !2400
  %call = call zeroext i1 @static_key_false(ptr noundef getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdev_update, i32 0, i32 1)) #12, !dbg !2401
  br i1 %call, label %if.then, label %if.end68, !dbg !2400

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2401

do.body:                                          ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 4, ptr %__idx) #11, !dbg !2402
  call void @llvm.dbg.declare(metadata ptr %__idx, metadata !2062, metadata !DIExpression()), !dbg !2402
  store i32 0, ptr %__idx, align 4, !dbg !2402
  call void @llvm.lifetime.start.p0(i64 4, ptr %pscr_ret__) #11, !dbg !2403
  call void @llvm.dbg.declare(metadata ptr %pscr_ret__, metadata !2065, metadata !DIExpression()), !dbg !2403
  br label %do.body1, !dbg !2403

do.body1:                                         ; preds = %do.body
  call void @llvm.lifetime.start.p0(i64 8, ptr %__vpp_verify) #11, !dbg !2404
  call void @llvm.dbg.declare(metadata ptr %__vpp_verify, metadata !2068, metadata !DIExpression()), !dbg !2404
  store ptr null, ptr %__vpp_verify, align 8, !dbg !2404
  %0 = load ptr, ptr %__vpp_verify, align 8, !dbg !2404
  call void @llvm.lifetime.end.p0(i64 8, ptr %__vpp_verify) #11, !dbg !2403
  br label %do.cond, !dbg !2404

do.cond:                                          ; preds = %do.body1
  br label %do.end, !dbg !2404

do.end:                                           ; preds = %do.cond
  call void @llvm.lifetime.start.p0(i64 4, ptr %pfo_val__) #11, !dbg !2405
  call void @llvm.dbg.declare(metadata ptr %pfo_val__, metadata !2070, metadata !DIExpression()), !dbg !2405
  %1 = call i32 asm sideeffect "movl %gs:$1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 2)) #11, !dbg !2405, !srcloc !2406
  store i32 %1, ptr %pfo_val__, align 4, !dbg !2405
  %2 = load i32, ptr %pfo_val__, align 4, !dbg !2405
  %conv = zext i32 %2 to i64, !dbg !2405
  %conv2 = trunc i64 %conv to i32, !dbg !2405
  store i32 %conv2, ptr %tmp, align 4, !dbg !2405
  call void @llvm.lifetime.end.p0(i64 4, ptr %pfo_val__) #11, !dbg !2403
  %3 = load i32, ptr %tmp, align 4, !dbg !2405
  store i32 %3, ptr %pscr_ret__, align 4, !dbg !2403
  %4 = load i32, ptr %pscr_ret__, align 4, !dbg !2403
  store i32 %4, ptr %tmp3, align 4, !dbg !2403
  call void @llvm.lifetime.end.p0(i64 4, ptr %pscr_ret__) #11, !dbg !2407
  %5 = load i32, ptr %tmp3, align 4, !dbg !2403
  %call4 = call zeroext i1 @cpu_online(i32 noundef %5) #12, !dbg !2407
  br i1 %call4, label %if.end, label %if.then5, !dbg !2402

if.then5:                                         ; preds = %do.end
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2407

if.end:                                           ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !2408
  call void @llvm.dbg.declare(metadata ptr %__ret_warn_on, metadata !2072, metadata !DIExpression()), !dbg !2408
  store i32 0, ptr %__ret_warn_on, align 4, !dbg !2408
  %6 = load i32, ptr %__ret_warn_on, align 4, !dbg !2409
  %tobool = icmp ne i32 %6, 0, !dbg !2409
  %lnot = xor i1 %tobool, true, !dbg !2409
  %lnot6 = xor i1 %lnot, true, !dbg !2409
  %lnot.ext = zext i1 %lnot6 to i32, !dbg !2409
  %conv7 = sext i32 %lnot.ext to i64, !dbg !2409
  %expval = call i64 @llvm.expect.i64(i64 %conv7, i64 0), !dbg !2409
  %tobool8 = icmp ne i64 %expval, 0, !dbg !2409
  br i1 %tobool8, label %if.then9, label %if.end22, !dbg !2408

if.then9:                                         ; preds = %if.end
  br label %do.body10, !dbg !2409

do.body10:                                        ; preds = %if.then9
  call void @llvm.lifetime.start.p0(i64 4, ptr %__flags) #11, !dbg !2410
  call void @llvm.dbg.declare(metadata ptr %__flags, metadata !2075, metadata !DIExpression()), !dbg !2410
  store i32 2307, ptr %__flags, align 4, !dbg !2410
  br label %do.body11, !dbg !2410

do.body11:                                        ; preds = %do.body10
  br label %do.cond12, !dbg !2411

do.cond12:                                        ; preds = %do.body11
  br label %do.end13, !dbg !2411

do.end13:                                         ; preds = %do.cond12
  br label %do.body14, !dbg !2410

do.body14:                                        ; preds = %do.end13
  %7 = load i32, ptr %__flags, align 4, !dbg !2413
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A998:\0A\09.pushsection .discard.reachable\0A\09.long 998b\0A\09.popsection\0A\09", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 66, i32 %7, i64 12) #11, !dbg !2413, !srcloc !2415
  br label %do.cond15, !dbg !2413

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !2413

do.end16:                                         ; preds = %do.cond15
  br label %do.body17, !dbg !2410

do.body17:                                        ; preds = %do.end16
  br label %do.cond18, !dbg !2416

do.cond18:                                        ; preds = %do.body17
  br label %do.end19, !dbg !2416

do.end19:                                         ; preds = %do.cond18
  call void @llvm.lifetime.end.p0(i64 4, ptr %__flags) #11, !dbg !2409
  br label %do.cond20, !dbg !2410

do.cond20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !2410

do.end21:                                         ; preds = %do.cond20
  br label %if.end22, !dbg !2410

if.end22:                                         ; preds = %do.end21, %if.end
  %8 = load i32, ptr %__ret_warn_on, align 4, !dbg !2408
  %tobool24 = icmp ne i32 %8, 0, !dbg !2408
  %lnot25 = xor i1 %tobool24, true, !dbg !2408
  %lnot27 = xor i1 %lnot25, true, !dbg !2408
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !2408
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !2408
  %expval30 = call i64 @llvm.expect.i64(i64 %conv29, i64 0), !dbg !2408
  store i64 %expval30, ptr %tmp23, align 8, !dbg !2409
  call void @llvm.lifetime.end.p0(i64 4, ptr %__ret_warn_on) #11, !dbg !2418
  %9 = load i64, ptr %tmp23, align 8, !dbg !2408
  %tobool31 = icmp ne i64 %9, 0, !dbg !2418
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !2402

if.then32:                                        ; preds = %if.end22
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2418

if.end33:                                         ; preds = %if.end22
  br label %do.body34, !dbg !2402

do.body34:                                        ; preds = %if.end33
  call void @__preempt_count_add(i32 noundef 1) #12, !dbg !2419
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !2419, !srcloc !2421
  br label %do.cond35, !dbg !2419

do.cond35:                                        ; preds = %do.body34
  br label %do.end36, !dbg !2419

do.end36:                                         ; preds = %do.cond35
  br label %do.body37, !dbg !2402

do.body37:                                        ; preds = %do.end36
  call void @llvm.lifetime.start.p0(i64 8, ptr %it_func_ptr) #11, !dbg !2422
  call void @llvm.dbg.declare(metadata ptr %it_func_ptr, metadata !2078, metadata !DIExpression()), !dbg !2422
  call void @llvm.lifetime.start.p0(i64 8, ptr %__data) #11, !dbg !2422
  call void @llvm.dbg.declare(metadata ptr %__data, metadata !2080, metadata !DIExpression()), !dbg !2422
  call void @llvm.lifetime.start.p0(i64 8, ptr %__UNIQUE_ID_rcu213) #11, !dbg !2423
  call void @llvm.dbg.declare(metadata ptr %__UNIQUE_ID_rcu213, metadata !2081, metadata !DIExpression()), !dbg !2423
  br label %do.body38, !dbg !2424

do.body38:                                        ; preds = %do.body37
  br label %do.cond39, !dbg !2426

do.cond39:                                        ; preds = %do.body38
  br label %do.end40, !dbg !2426

do.end40:                                         ; preds = %do.cond39
  %10 = load volatile ptr, ptr getelementptr inbounds (%struct.tracepoint, ptr @__tracepoint_cdev_update, i32 0, i32 8), align 8, !dbg !2424
  store ptr %10, ptr %tmp41, align 8, !dbg !2426
  %11 = load ptr, ptr %tmp41, align 8, !dbg !2424
  store ptr %11, ptr %__UNIQUE_ID_rcu213, align 8, !dbg !2423
  %12 = load ptr, ptr %__UNIQUE_ID_rcu213, align 8, !dbg !2423
  store ptr %12, ptr %tmp42, align 8, !dbg !2423
  call void @llvm.lifetime.end.p0(i64 8, ptr %__UNIQUE_ID_rcu213) #11, !dbg !2422
  %13 = load ptr, ptr %tmp42, align 8, !dbg !2423
  store ptr %13, ptr %it_func_ptr, align 8, !dbg !2422
  %14 = load ptr, ptr %it_func_ptr, align 8, !dbg !2428
  %tobool43 = icmp ne ptr %14, null, !dbg !2428
  br i1 %tobool43, label %if.then44, label %if.end47, !dbg !2422

if.then44:                                        ; preds = %do.end40
  %15 = load ptr, ptr %it_func_ptr, align 8, !dbg !2430
  %data = getelementptr inbounds %struct.tracepoint_func, ptr %15, i32 0, i32 1, !dbg !2430
  %16 = load ptr, ptr %data, align 8, !dbg !2430
  store ptr %16, ptr %__data, align 8, !dbg !2430
  store ptr @__SCT__tp_func_cdev_update, ptr %tmp45, align 8, !dbg !2432
  %17 = load ptr, ptr %tmp45, align 8, !dbg !2432
  %18 = load ptr, ptr %__data, align 8, !dbg !2430
  %19 = load ptr, ptr %cdev.addr, align 8, !dbg !2430
  %20 = load i64, ptr %target.addr, align 8, !dbg !2430
  %call46 = call i32 %17(ptr noundef %18, ptr noundef %19, i64 noundef %20) #12, !dbg !2430
  br label %if.end47, !dbg !2430

if.end47:                                         ; preds = %if.then44, %do.end40
  call void @llvm.lifetime.end.p0(i64 8, ptr %__data) #11, !dbg !2402
  call void @llvm.lifetime.end.p0(i64 8, ptr %it_func_ptr) #11, !dbg !2402
  br label %do.cond48, !dbg !2422

do.cond48:                                        ; preds = %if.end47
  br label %do.end49, !dbg !2422

do.end49:                                         ; preds = %do.cond48
  br label %do.body50, !dbg !2402

do.body50:                                        ; preds = %do.end49
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #11, !dbg !2434, !srcloc !2436
  %call51 = call zeroext i1 @__preempt_count_dec_and_test() #12, !dbg !2437
  %lnot52 = xor i1 %call51, true, !dbg !2437
  %lnot54 = xor i1 %lnot52, true, !dbg !2437
  %lnot.ext55 = zext i1 %lnot54 to i32, !dbg !2437
  %conv56 = sext i32 %lnot.ext55 to i64, !dbg !2437
  %expval57 = call i64 @llvm.expect.i64(i64 %conv56, i64 0), !dbg !2437
  %tobool58 = icmp ne i64 %expval57, 0, !dbg !2437
  br i1 %tobool58, label %if.then59, label %if.end63, !dbg !2434

if.then59:                                        ; preds = %do.body50
  br label %do.body60, !dbg !2437

do.body60:                                        ; preds = %if.then59
  %21 = call i64 @llvm.read_register.i64(metadata !2085), !dbg !2439
  %22 = call i64 asm sideeffect "call __SCT__preempt_schedule_notrace", "={rsp},{rsp},~{dirflag},~{fpsr},~{flags}"(i64 %21) #11, !dbg !2439, !srcloc !2441
  call void @llvm.write_register.i64(metadata !2085, i64 %22), !dbg !2439
  br label %do.cond61, !dbg !2439

do.cond61:                                        ; preds = %do.body60
  br label %do.end62, !dbg !2439

do.end62:                                         ; preds = %do.cond61
  br label %if.end63, !dbg !2439

if.end63:                                         ; preds = %do.end62, %do.body50
  br label %do.cond64, !dbg !2434

do.cond64:                                        ; preds = %if.end63
  br label %do.end65, !dbg !2434

do.end65:                                         ; preds = %do.cond64
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2401
  br label %cleanup, !dbg !2401

cleanup:                                          ; preds = %do.end65, %if.then32, %if.then5
  call void @llvm.lifetime.end.p0(i64 4, ptr %__idx) #11, !dbg !2401
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %unreachable [
    i32 0, label %cleanup.cont
    i32 1, label %if.end68
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %do.end67, !dbg !2402

do.end67:                                         ; preds = %cleanup.cont
  br label %if.end68, !dbg !2402

if.end68:                                         ; preds = %cleanup, %do.end67, %entry
  ret void, !dbg !2400

unreachable:                                      ; preds = %cleanup
  unreachable
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @thermal_cdev_update(ptr noundef %cdev) #0 align 16 !dbg !2442 {
entry:
  %cdev.addr = alloca ptr, align 8
  store ptr %cdev, ptr %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdev.addr, metadata !2444, metadata !DIExpression()), !dbg !2445
  %0 = load ptr, ptr %cdev.addr, align 8, !dbg !2446
  %lock = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 9, !dbg !2447
  call void @mutex_lock(ptr noundef %lock) #12, !dbg !2448
  %1 = load ptr, ptr %cdev.addr, align 8, !dbg !2449
  %updated = getelementptr inbounds %struct.thermal_cooling_device, ptr %1, i32 0, i32 8, !dbg !2451
  %2 = load i8, ptr %updated, align 8, !dbg !2451, !range !2452, !noundef !383
  %tobool = trunc i8 %2 to i1, !dbg !2451
  br i1 %tobool, label %if.end, label %if.then, !dbg !2453

if.then:                                          ; preds = %entry
  %3 = load ptr, ptr %cdev.addr, align 8, !dbg !2454
  call void @__thermal_cdev_update(ptr noundef %3) #12, !dbg !2456
  %4 = load ptr, ptr %cdev.addr, align 8, !dbg !2457
  %updated1 = getelementptr inbounds %struct.thermal_cooling_device, ptr %4, i32 0, i32 8, !dbg !2458
  store i8 1, ptr %updated1, align 8, !dbg !2459
  br label %if.end, !dbg !2460

if.end:                                           ; preds = %if.then, %entry
  %5 = load ptr, ptr %cdev.addr, align 8, !dbg !2461
  %lock2 = getelementptr inbounds %struct.thermal_cooling_device, ptr %5, i32 0, i32 9, !dbg !2462
  call void @mutex_unlock(ptr noundef %lock2) #12, !dbg !2463
  ret void, !dbg !2464
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @thermal_zone_get_slope(ptr noundef %tz) #0 align 16 !dbg !2465 {
entry:
  %retval = alloca i32, align 4
  %tz.addr = alloca ptr, align 8
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !2467, metadata !DIExpression()), !dbg !2468
  %0 = load ptr, ptr %tz.addr, align 8, !dbg !2469
  %tobool = icmp ne ptr %0, null, !dbg !2469
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2471

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %tz.addr, align 8, !dbg !2472
  %tzp = getelementptr inbounds %struct.thermal_zone_device, ptr %1, i32 0, i32 23, !dbg !2473
  %2 = load ptr, ptr %tzp, align 8, !dbg !2473
  %tobool1 = icmp ne ptr %2, null, !dbg !2472
  br i1 %tobool1, label %if.then, label %if.end, !dbg !2474

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %tz.addr, align 8, !dbg !2475
  %tzp2 = getelementptr inbounds %struct.thermal_zone_device, ptr %3, i32 0, i32 23, !dbg !2476
  %4 = load ptr, ptr %tzp2, align 8, !dbg !2476
  %slope = getelementptr inbounds %struct.thermal_zone_params, ptr %4, i32 0, i32 8, !dbg !2477
  %5 = load i32, ptr %slope, align 4, !dbg !2477
  store i32 %5, ptr %retval, align 4, !dbg !2478
  br label %return, !dbg !2478

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 1, ptr %retval, align 4, !dbg !2479
  br label %return, !dbg !2479

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, ptr %retval, align 4, !dbg !2480
  ret i32 %6, !dbg !2480
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @thermal_zone_get_offset(ptr noundef %tz) #0 align 16 !dbg !2481 {
entry:
  %retval = alloca i32, align 4
  %tz.addr = alloca ptr, align 8
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !2483, metadata !DIExpression()), !dbg !2484
  %0 = load ptr, ptr %tz.addr, align 8, !dbg !2485
  %tobool = icmp ne ptr %0, null, !dbg !2485
  br i1 %tobool, label %land.lhs.true, label %if.end, !dbg !2487

land.lhs.true:                                    ; preds = %entry
  %1 = load ptr, ptr %tz.addr, align 8, !dbg !2488
  %tzp = getelementptr inbounds %struct.thermal_zone_device, ptr %1, i32 0, i32 23, !dbg !2489
  %2 = load ptr, ptr %tzp, align 8, !dbg !2489
  %tobool1 = icmp ne ptr %2, null, !dbg !2488
  br i1 %tobool1, label %if.then, label %if.end, !dbg !2490

if.then:                                          ; preds = %land.lhs.true
  %3 = load ptr, ptr %tz.addr, align 8, !dbg !2491
  %tzp2 = getelementptr inbounds %struct.thermal_zone_device, ptr %3, i32 0, i32 23, !dbg !2492
  %4 = load ptr, ptr %tzp2, align 8, !dbg !2492
  %offset = getelementptr inbounds %struct.thermal_zone_params, ptr %4, i32 0, i32 9, !dbg !2493
  %5 = load i32, ptr %offset, align 4, !dbg !2493
  store i32 %5, ptr %retval, align 4, !dbg !2494
  br label %return, !dbg !2494

if.end:                                           ; preds = %land.lhs.true, %entry
  store i32 0, ptr %retval, align 4, !dbg !2495
  br label %return, !dbg !2495

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, ptr %retval, align 4, !dbg !2496
  ret i32 %6, !dbg !2496
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #5

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @thermal_notify_cdev_state_update(i32 noundef %cdev_id, i32 noundef %state) #4 align 16 !dbg !2497 {
entry:
  %cdev_id.addr = alloca i32, align 4
  %state.addr = alloca i32, align 4
  store i32 %cdev_id, ptr %cdev_id.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cdev_id.addr, metadata !2502, metadata !DIExpression()), !dbg !2504
  store i32 %state, ptr %state.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !2503, metadata !DIExpression()), !dbg !2505
  ret i32 0, !dbg !2506
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @thermal_cooling_device_stats_update(ptr noundef %cdev, i64 noundef %new_state) #4 align 16 !dbg !2507 {
entry:
  %cdev.addr = alloca ptr, align 8
  %new_state.addr = alloca i64, align 8
  store ptr %cdev, ptr %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdev.addr, metadata !2509, metadata !DIExpression()), !dbg !2511
  store i64 %new_state, ptr %new_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_state.addr, metadata !2510, metadata !DIExpression()), !dbg !2512
  ret void, !dbg !2513
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @static_key_false(ptr noundef %key) #6 align 16 !dbg !2514 {
entry:
  %key.addr = alloca ptr, align 8
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2530, metadata !DIExpression()), !dbg !2531
  %0 = load ptr, ptr %key.addr, align 8, !dbg !2532
  %call = call zeroext i1 @arch_static_branch(ptr noundef %0, i1 noundef zeroext false) #12, !dbg !2533
  ret i1 %call, !dbg !2534
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpu_online(i32 noundef %cpu) #4 align 16 !dbg !2535 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2539, metadata !DIExpression()), !dbg !2540
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !2541
  %call = call zeroext i1 @cpumask_test_cpu(i32 noundef %0, ptr noundef @__cpu_online_mask) #12, !dbg !2542
  ret i1 %call, !dbg !2543
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__preempt_count_add(i32 noundef %val) #6 align 16 !dbg !2544 {
entry:
  %val.addr = alloca i32, align 4
  %pao_ID__ = alloca i32, align 4
  %pto_val__ = alloca i32, align 4
  store i32 %val, ptr %val.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %val.addr, metadata !2549, metadata !DIExpression()), !dbg !2556
  br label %do.body, !dbg !2557

do.body:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 4, ptr %pao_ID__) #11, !dbg !2558
  call void @llvm.dbg.declare(metadata ptr %pao_ID__, metadata !2550, metadata !DIExpression()), !dbg !2558
  %0 = load i32, ptr %val.addr, align 4, !dbg !2558
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !2558
  br i1 %1, label %land.lhs.true, label %cond.false, !dbg !2558

land.lhs.true:                                    ; preds = %do.body
  %2 = load i32, ptr %val.addr, align 4, !dbg !2558
  %cmp = icmp eq i32 %2, 1, !dbg !2558
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !2558

lor.lhs.false:                                    ; preds = %land.lhs.true
  %3 = load i32, ptr %val.addr, align 4, !dbg !2558
  %cmp1 = icmp eq i32 %3, -1, !dbg !2558
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !2558

cond.true:                                        ; preds = %lor.lhs.false, %land.lhs.true
  %4 = load i32, ptr %val.addr, align 4, !dbg !2558
  br label %cond.end, !dbg !2558

cond.false:                                       ; preds = %lor.lhs.false, %do.body
  br label %cond.end, !dbg !2558

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ 0, %cond.false ], !dbg !2558
  store i32 %cond, ptr %pao_ID__, align 4, !dbg !2558
  %5 = load i32, ptr %pao_ID__, align 4, !dbg !2559
  %cmp2 = icmp eq i32 %5, 1, !dbg !2559
  br i1 %cmp2, label %if.then, label %if.else, !dbg !2558

if.then:                                          ; preds = %cond.end
  call void asm "incl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1)) #11, !dbg !2560, !srcloc !2562
  br label %if.end8, !dbg !2559

if.else:                                          ; preds = %cond.end
  %6 = load i32, ptr %pao_ID__, align 4, !dbg !2563
  %cmp3 = icmp eq i32 %6, -1, !dbg !2563
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !2559

if.then4:                                         ; preds = %if.else
  call void asm "decl %gs:$0", "=*m,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1)) #11, !dbg !2564, !srcloc !2566
  br label %if.end, !dbg !2563

if.else5:                                         ; preds = %if.else
  br label %do.body6, !dbg !2563

do.body6:                                         ; preds = %if.else5
  call void @llvm.lifetime.start.p0(i64 4, ptr %pto_val__) #11, !dbg !2567
  call void @llvm.dbg.declare(metadata ptr %pto_val__, metadata !2552, metadata !DIExpression()), !dbg !2567
  %7 = load i32, ptr %val.addr, align 4, !dbg !2567
  %conv = sext i32 %7 to i64, !dbg !2567
  %and = and i64 %conv, 4294967295, !dbg !2567
  %conv7 = trunc i64 %and to i32, !dbg !2567
  store i32 %conv7, ptr %pto_val__, align 4, !dbg !2567
  %8 = load i32, ptr %pto_val__, align 4, !dbg !2567
  call void asm "addl $1, %gs:$0", "=*m,ri,*m,~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1), i32 %8, ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1)) #11, !dbg !2567, !srcloc !2568
  call void @llvm.lifetime.end.p0(i64 4, ptr %pto_val__) #11, !dbg !2563
  br label %do.cond, !dbg !2567

do.cond:                                          ; preds = %do.body6
  br label %do.end, !dbg !2567

do.end:                                           ; preds = %do.cond
  br label %if.end

if.end:                                           ; preds = %do.end, %if.then4
  br label %if.end8

if.end8:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %pao_ID__) #11, !dbg !2557
  br label %do.end10, !dbg !2558

do.end10:                                         ; preds = %if.end8
  ret void, !dbg !2569
}

; Function Attrs: noredzone null_pointer_is_valid
declare dso_local i32 @__SCT__tp_func_cdev_update(ptr noundef, ptr noundef, i64 noundef) #3

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__preempt_count_dec_and_test() #6 align 16 !dbg !2570 {
entry:
  %c = alloca i8, align 1
  %tmp = alloca i8, align 1
  call void @llvm.lifetime.start.p0(i64 1, ptr %c) #11, !dbg !2574
  call void @llvm.dbg.declare(metadata ptr %c, metadata !2572, metadata !DIExpression()), !dbg !2574
  %0 = call i8 asm sideeffect "decl %gs:$0\0A\09/* output condition code e*/\0A", "=*m,={@cce},*m,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1), ptr elementtype(i32) getelementptr inbounds (%struct.anon.4, ptr @pcpu_hot, i32 0, i32 1)) #11, !dbg !2574, !srcloc !2575
  %1 = icmp ult i8 %0, 2, !dbg !2574
  call void @llvm.assume(i1 %1), !dbg !2574
  store i8 %0, ptr %c, align 1, !dbg !2574
  %2 = load i8, ptr %c, align 1, !dbg !2574, !range !2452, !noundef !383
  %tobool = trunc i8 %2 to i1, !dbg !2574
  %frombool = zext i1 %tobool to i8, !dbg !2574
  store i8 %frombool, ptr %tmp, align 1, !dbg !2574
  call void @llvm.lifetime.end.p0(i64 1, ptr %c) #11, !dbg !2576
  %3 = load i8, ptr %tmp, align 1, !dbg !2574, !range !2452, !noundef !383
  %tobool1 = trunc i8 %3 to i1, !dbg !2574
  ret i1 %tobool1, !dbg !2577
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(read)
declare i64 @llvm.read_register.i64(metadata) #7

; Function Attrs: nocallback nounwind
declare void @llvm.write_register.i64(metadata, i64) #8

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_static_branch(ptr noundef %key, i1 noundef zeroext %branch) #6 align 16 !dbg !2578 {
entry:
  %retval = alloca i1, align 1
  %key.addr = alloca ptr, align 8
  %branch.addr = alloca i8, align 1
  store ptr %key, ptr %key.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %key.addr, metadata !2583, metadata !DIExpression()), !dbg !2586
  %frombool = zext i1 %branch to i8
  store i8 %frombool, ptr %branch.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %branch.addr, metadata !2584, metadata !DIExpression()), !dbg !2587
  %0 = load ptr, ptr %key.addr, align 8, !dbg !2588
  %1 = load i8, ptr %branch.addr, align 1, !dbg !2589, !range !2452, !noundef !383
  %tobool = trunc i8 %1 to i1, !dbg !2589
  %conv = zext i1 %tobool to i32, !dbg !2589
  %or = or i32 2, %conv, !dbg !2590
  callbr void asm sideeffect "1:jmp ${2:l} # objtool NOPs this \0A\09.pushsection __jump_table,  \22aw\22 \0A\09 .balign 8 \0A\09.long 1b - . \0A\09.long ${2:l} - . \0A\09 .quad ${0:c} + ${1:c} - .\0A\09.popsection \0A\09", "i,i,!i,~{dirflag},~{fpsr},~{flags}"(ptr %0, i32 %or) #11
          to label %asm.fallthrough [label %l_yes], !dbg !2591, !srcloc !2592

asm.fallthrough:                                  ; preds = %entry
  store i1 false, ptr %retval, align 1, !dbg !2593
  br label %return, !dbg !2593

l_yes:                                            ; preds = %entry
  call void @llvm.dbg.label(metadata !2585), !dbg !2594
  store i1 true, ptr %retval, align 1, !dbg !2595
  br label %return, !dbg !2595

return:                                           ; preds = %l_yes, %asm.fallthrough
  %2 = load i1, ptr %retval, align 1, !dbg !2596
  ret i1 %2, !dbg !2596
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @cpumask_test_cpu(i32 noundef %cpu, ptr noundef %cpumask) #6 align 16 !dbg !2597 {
entry:
  %cpu.addr = alloca i32, align 4
  %cpumask.addr = alloca ptr, align 8
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2601, metadata !DIExpression()), !dbg !2603
  store ptr %cpumask, ptr %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cpumask.addr, metadata !2602, metadata !DIExpression()), !dbg !2604
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !2605
  %call = call i32 @cpumask_check(i32 noundef %0) #12, !dbg !2605
  %conv = zext i32 %call to i64, !dbg !2605
  %1 = load ptr, ptr %cpumask.addr, align 8, !dbg !2605
  %bits = getelementptr inbounds %struct.cpumask, ptr %1, i32 0, i32 0, !dbg !2605
  %arraydecay = getelementptr inbounds [1 x i64], ptr %bits, i64 0, i64 0, !dbg !2605
  %call1 = call zeroext i1 @_test_bit(i64 noundef %conv, ptr noundef %arraydecay) #12, !dbg !2605
  ret i1 %call1, !dbg !2606
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !2607 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2615, metadata !DIExpression()), !dbg !2617
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2616, metadata !DIExpression()), !dbg !2618
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2619
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2620
  %div = udiv i64 %1, 64, !dbg !2620
  %add.ptr = getelementptr i64, ptr %0, i64 %div, !dbg !2621
  call void @instrument_atomic_read(ptr noundef %add.ptr, i64 noundef 8) #12, !dbg !2622
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2623
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2624
  %call = call zeroext i1 @arch_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !2625
  ret i1 %call, !dbg !2626
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @cpumask_check(i32 noundef %cpu) #6 align 16 !dbg !2627 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2631, metadata !DIExpression()), !dbg !2632
  %0 = load i32, ptr %cpu.addr, align 4, !dbg !2633
  call void @cpu_max_bits_warn(i32 noundef %0, i32 noundef 64) #12, !dbg !2634
  %1 = load i32, ptr %cpu.addr, align 4, !dbg !2635
  ret i32 %1, !dbg !2636
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @instrument_atomic_read(ptr noundef %v, i64 noundef %size) #6 align 16 !dbg !2637 {
entry:
  %v.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  store ptr %v, ptr %v.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %v.addr, metadata !2645, metadata !DIExpression()), !dbg !2647
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2646, metadata !DIExpression()), !dbg !2648
  %0 = load ptr, ptr %v.addr, align 8, !dbg !2649
  %1 = load i64, ptr %size.addr, align 8, !dbg !2650
  %conv = trunc i64 %1 to i32, !dbg !2650
  %call = call zeroext i1 @kasan_check_read(ptr noundef %0, i32 noundef %conv) #12, !dbg !2651
  %2 = load ptr, ptr %v.addr, align 8, !dbg !2652
  %3 = load i64, ptr %size.addr, align 8, !dbg !2652
  call void @kcsan_check_access(ptr noundef %2, i64 noundef %3, i32 noundef 4) #12, !dbg !2652
  ret void, !dbg !2653
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @arch_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !2654 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2657, metadata !DIExpression()), !dbg !2659
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2658, metadata !DIExpression()), !dbg !2660
  %0 = load i64, ptr %nr.addr, align 8, !dbg !2661
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2662
  br i1 %1, label %cond.true, label %cond.false, !dbg !2662

cond.true:                                        ; preds = %entry
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2663
  %3 = load ptr, ptr %addr.addr, align 8, !dbg !2664
  %call = call zeroext i1 @constant_test_bit(i64 noundef %2, ptr noundef %3) #12, !dbg !2665
  %conv = zext i1 %call to i32, !dbg !2665
  br label %cond.end, !dbg !2662

cond.false:                                       ; preds = %entry
  %4 = load i64, ptr %nr.addr, align 8, !dbg !2666
  %5 = load ptr, ptr %addr.addr, align 8, !dbg !2667
  %call1 = call zeroext i1 @variable_test_bit(i64 noundef %4, ptr noundef %5) #12, !dbg !2668
  %conv2 = zext i1 %call1 to i32, !dbg !2668
  br label %cond.end, !dbg !2662

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !2662
  %tobool = icmp ne i32 %cond, 0, !dbg !2662
  ret i1 %tobool, !dbg !2669
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @kasan_check_read(ptr noundef %p, i32 noundef %size) #4 align 16 !dbg !2670 {
entry:
  %p.addr = alloca ptr, align 8
  %size.addr = alloca i32, align 4
  store ptr %p, ptr %p.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %p.addr, metadata !2675, metadata !DIExpression()), !dbg !2677
  store i32 %size, ptr %size.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2676, metadata !DIExpression()), !dbg !2678
  ret i1 true, !dbg !2679
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @kcsan_check_access(ptr noundef %ptr, i64 noundef %size, i32 noundef %type) #4 align 16 !dbg !2680 {
entry:
  %ptr.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2685, metadata !DIExpression()), !dbg !2688
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2686, metadata !DIExpression()), !dbg !2689
  store i32 %type, ptr %type.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %type.addr, metadata !2687, metadata !DIExpression()), !dbg !2690
  ret void, !dbg !2691
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @constant_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !2692 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2696, metadata !DIExpression()), !dbg !2698
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2697, metadata !DIExpression()), !dbg !2699
  %0 = load i64, ptr %nr.addr, align 8, !dbg !2700
  %and = and i64 %0, 63, !dbg !2701
  %shl = shl i64 1, %and, !dbg !2702
  %1 = load ptr, ptr %addr.addr, align 8, !dbg !2703
  %2 = load i64, ptr %nr.addr, align 8, !dbg !2704
  %shr = ashr i64 %2, 6, !dbg !2705
  %arrayidx = getelementptr i64, ptr %1, i64 %shr, !dbg !2703
  %3 = load volatile i64, ptr %arrayidx, align 8, !dbg !2703
  %and1 = and i64 %shl, %3, !dbg !2706
  %cmp = icmp ne i64 %and1, 0, !dbg !2707
  ret i1 %cmp, !dbg !2708
}

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @variable_test_bit(i64 noundef %nr, ptr noundef %addr) #6 align 16 !dbg !2709 {
entry:
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca ptr, align 8
  %oldbit = alloca i8, align 1
  store i64 %nr, ptr %nr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %nr.addr, metadata !2711, metadata !DIExpression()), !dbg !2714
  store ptr %addr, ptr %addr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %addr.addr, metadata !2712, metadata !DIExpression()), !dbg !2715
  call void @llvm.lifetime.start.p0(i64 1, ptr %oldbit) #11, !dbg !2716
  call void @llvm.dbg.declare(metadata ptr %oldbit, metadata !2713, metadata !DIExpression()), !dbg !2717
  %0 = load ptr, ptr %addr.addr, align 8, !dbg !2718
  %1 = load i64, ptr %nr.addr, align 8, !dbg !2719
  %2 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(ptr elementtype(i64) %0, i64 %1) #11, !dbg !2720, !srcloc !2721
  %3 = icmp ult i8 %2, 2, !dbg !2720
  call void @llvm.assume(i1 %3), !dbg !2720
  store i8 %2, ptr %oldbit, align 1, !dbg !2720
  %4 = load i8, ptr %oldbit, align 1, !dbg !2722, !range !2452, !noundef !383
  %tobool = trunc i8 %4 to i1, !dbg !2722
  call void @llvm.lifetime.end.p0(i64 1, ptr %oldbit) #11, !dbg !2723
  ret i1 %tobool, !dbg !2724
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cpu_max_bits_warn(i32 noundef %cpu, i32 noundef %bits) #6 align 16 !dbg !2725 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, ptr %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %cpu.addr, metadata !2729, metadata !DIExpression()), !dbg !2731
  store i32 %bits, ptr %bits.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %bits.addr, metadata !2730, metadata !DIExpression()), !dbg !2732
  ret void, !dbg !2733
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i32(i32) #9

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #6 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(read) }
attributes #8 = { nocallback nounwind }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #11 = { nounwind }
attributes #12 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!2085}
!llvm.module.flags = !{!2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093}
!llvm.ident = !{!2094}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_get_thermal_instance229", scope: !2, file: !3, line: 68, type: !135, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/thermal/.thermal_helpers.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/thermal/thermal_sys\22 -D KBUILD_BASENAME=\22thermal_helpers\22 -D KBUILD_MODNAME=\22thermal_sys\22 -D __KBUILD_MODNAME=kmod_thermal_sys -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/thermal/thermal_helpers.ll drivers/thermal/thermal_helpers.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !134, globals: !2044, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/thermal/thermal_helpers.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f7a91a79d157222d921edc3b053da30e")
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
!134 = !{!135, !136, !46, !297, !1063, !2026, !2029, !2035, !1267, !7, !1181}
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
!158 = !{!159, !162, !169, !171, !260, !693, !807, !817, !818, !819, !820, !821}
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
!264 = !{!265, !269, !298, !640, !671, !675}
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
!303 = !{!304, !305, !309, !636, !638}
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
!343 = !{!344, !361, !584, !590, !597, !598, !603, !606, !618, !619, !622, !626, !627, !628, !629, !630, !634}
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
!364 = !{!365, !580}
!365 = !DIDerivedType(tag: DW_TAG_member, scope: !363, file: !325, line: 734, baseType: !366, size: 10240)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !363, file: !325, line: 734, size: 10240, elements: !367)
!367 = !{!368, !372, !386, !390, !391, !392, !393, !394, !395, !403, !404, !405, !414, !415, !424, !425, !426, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !450, !451, !457, !458, !459, !460, !461, !462, !463, !464, !465, !466, !467, !468, !469, !473, !487, !490, !545, !546, !547, !550, !554, !555, !558, !559, !560, !567, !568}
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
!552 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !553, line: 18, flags: DIFlagFwdDecl)
!553 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!554 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !366, file: !325, line: 904, baseType: !330, size: 64, offset: 9280)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !366, file: !325, line: 906, baseType: !556, size: 64, offset: 9344)
!556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !557, size: 64)
!557 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !325, line: 906, flags: DIFlagFwdDecl)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !366, file: !325, line: 930, baseType: !197, size: 32, offset: 9408)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !366, file: !325, line: 933, baseType: !197, size: 32, offset: 9440)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !366, file: !325, line: 935, baseType: !561, size: 64, offset: 9472)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !562, line: 103, size: 64, elements: !563)
!562 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!563 = !{!564}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !561, file: !562, line: 104, baseType: !565, size: 64)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !562, line: 101, flags: DIFlagFwdDecl)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !366, file: !325, line: 940, baseType: !416, size: 64, offset: 9536)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !366, file: !325, line: 942, baseType: !569, size: 256, offset: 9600)
!569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !570, line: 98, size: 256, elements: !571)
!570 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!571 = !{!572, !573, !574}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !569, file: !570, line: 99, baseType: !416, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !569, file: !570, line: 100, baseType: !163, size: 128, offset: 64)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !569, file: !570, line: 101, baseType: !575, size: 64, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !570, line: 21, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !577, size: 64)
!577 = !DISubroutineType(types: !578)
!578 = !{null, !579}
!579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !363, file: !325, line: 986, baseType: !581, offset: 10240)
!581 = !DICompositeType(tag: DW_TAG_array_type, baseType: !297, elements: !582)
!582 = !{!583}
!583 = !DISubrange(count: -1)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !342, file: !325, line: 640, baseType: !585, size: 64, offset: 192)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !332, line: 297, baseType: !586)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !332, line: 297, size: 64, elements: !587)
!587 = !{!588}
!588 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !586, file: !332, line: 297, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !402, line: 19, baseType: !297)
!590 = !DIDerivedType(tag: DW_TAG_member, scope: !342, file: !325, line: 646, baseType: !591, size: 64, offset: 256)
!591 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !342, file: !325, line: 646, size: 64, elements: !592)
!592 = !{!593, !596}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !591, file: !325, line: 647, baseType: !594, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !595)
!595 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !325, line: 542, baseType: !297)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !591, file: !325, line: 648, baseType: !595, size: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !342, file: !325, line: 666, baseType: !46, size: 32, offset: 320)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !342, file: !325, line: 667, baseType: !599, size: 64, offset: 384)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !325, line: 579, size: 320, elements: !601)
!601 = !{!602}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !600, file: !325, line: 580, baseType: !427, size: 320)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !342, file: !325, line: 670, baseType: !604, size: 8, offset: 448)
!604 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !164, line: 35, baseType: !605)
!605 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !342, file: !325, line: 681, baseType: !607, size: 256, offset: 512)
!607 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !342, file: !325, line: 678, size: 256, elements: !608)
!608 = !{!609, !617}
!609 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !607, file: !325, line: 679, baseType: !610, size: 192, align: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !611, line: 5, size: 192, align: 64, elements: !612)
!611 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!612 = !{!613, !614, !616}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !610, file: !611, line: 6, baseType: !297, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !610, file: !611, line: 7, baseType: !615, size: 64, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !610, file: !611, line: 8, baseType: !615, size: 64, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !607, file: !325, line: 680, baseType: !297, size: 64, offset: 192)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !342, file: !325, line: 689, baseType: !163, size: 128, offset: 768)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !342, file: !325, line: 691, baseType: !620, size: 64, offset: 896)
!620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!621 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !325, line: 691, flags: DIFlagFwdDecl)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !342, file: !325, line: 694, baseType: !623, size: 64, offset: 960)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !625)
!625 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !325, line: 694, flags: DIFlagFwdDecl)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !342, file: !325, line: 697, baseType: !297, size: 64, offset: 1024)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !342, file: !325, line: 699, baseType: !330, size: 64, offset: 1088)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !342, file: !325, line: 700, baseType: !135, size: 64, offset: 1152)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !342, file: !325, line: 711, baseType: !416, size: 64, offset: 1216)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !342, file: !325, line: 717, baseType: !631, size: 64, offset: 1280)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !633, line: 54, flags: DIFlagFwdDecl)
!633 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!634 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !342, file: !325, line: 722, baseType: !635, offset: 1344)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !325, line: 570, elements: !383)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !302, file: !273, line: 90, baseType: !637, size: 64, offset: 192)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !302, file: !273, line: 91, baseType: !639, size: 64, offset: 256)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !263, file: !157, line: 120, baseType: !641, size: 64, offset: 192)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{!644, !230}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !646)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !647)
!647 = !{!648, !649, !653, !657, !663, !667}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !646, file: !6, line: 40, baseType: !5, size: 32)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !646, file: !6, line: 41, baseType: !650, size: 64, offset: 64)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!604}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !646, file: !6, line: 42, baseType: !654, size: 64, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DISubroutineType(types: !656)
!656 = !{!135}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !646, file: !6, line: 43, baseType: !658, size: 64, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = !DISubroutineType(types: !660)
!660 = !{!525, !661}
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !646, file: !6, line: 44, baseType: !664, size: 64, offset: 256)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!525}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !646, file: !6, line: 45, baseType: !668, size: 64, offset: 320)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{null, !135}
!671 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !263, file: !157, line: 121, baseType: !672, size: 64, offset: 256)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DISubroutineType(types: !674)
!674 = !{!525, !230}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !263, file: !157, line: 122, baseType: !676, size: 64, offset: 320)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = !DISubroutineType(types: !678)
!678 = !{null, !230, !679, !686}
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !553, line: 23, baseType: !681)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !553, line: 21, size: 32, elements: !682)
!682 = !{!683}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !681, file: !553, line: 22, baseType: !684, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !164, line: 37, baseType: !685)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !281, line: 49, baseType: !7)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !553, line: 28, baseType: !688)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !553, line: 26, size: 32, elements: !689)
!689 = !{!690}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !688, file: !553, line: 27, baseType: !691, size: 32)
!691 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !164, line: 38, baseType: !692)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !281, line: 50, baseType: !7)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !156, file: !157, line: 70, baseType: !694, size: 64, offset: 384)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !696, line: 190, size: 1152, elements: !697)
!696 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!697 = !{!698, !699, !700, !701, !702, !703, !704, !705, !799, !800, !801, !802, !803, !806}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !695, file: !696, line: 191, baseType: !197, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !695, file: !696, line: 192, baseType: !197, size: 32, offset: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !695, file: !696, line: 202, baseType: !694, size: 64, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !695, file: !696, line: 203, baseType: !160, size: 64, offset: 128)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !695, file: !696, line: 205, baseType: !610, size: 192, align: 64, offset: 192)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !695, file: !696, line: 207, baseType: !525, size: 64, offset: 384)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !695, file: !696, line: 208, baseType: !7, size: 32, offset: 448)
!705 = !DIDerivedType(tag: DW_TAG_member, scope: !695, file: !696, line: 209, baseType: !706, size: 256, offset: 512)
!706 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !695, file: !696, line: 209, size: 256, elements: !707)
!707 = !{!708, !720, !724}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !706, file: !696, line: 210, baseType: !709, size: 256)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !696, line: 153, size: 256, elements: !710)
!710 = !{!711, !712, !716, !719}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !709, file: !696, line: 154, baseType: !297, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !709, file: !696, line: 156, baseType: !713, size: 64, offset: 64)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !611, line: 12, size: 64, elements: !714)
!714 = !{!715}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !713, file: !611, line: 13, baseType: !615, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !709, file: !696, line: 162, baseType: !717, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !696, line: 162, flags: DIFlagFwdDecl)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !709, file: !696, line: 167, baseType: !297, size: 64, offset: 192)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !706, file: !696, line: 211, baseType: !721, size: 64)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !696, line: 170, size: 64, elements: !722)
!722 = !{!723}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !721, file: !696, line: 171, baseType: !694, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !706, file: !696, line: 212, baseType: !725, size: 256)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !696, line: 174, size: 256, elements: !726)
!726 = !{!727, !794, !797, !798}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !725, file: !696, line: 175, baseType: !728, size: 64)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !730)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !696, line: 271, size: 768, elements: !731)
!731 = !{!732, !754, !758, !762, !767, !771, !775, !779, !780, !781, !782, !790}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !730, file: !696, line: 276, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = !DISubroutineType(types: !735)
!735 = !{!46, !736}
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !696, line: 251, size: 1216, elements: !738)
!738 = !{!739, !740, !741, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !737, file: !696, line: 253, baseType: !694, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !737, file: !696, line: 254, baseType: !330, size: 64, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !737, file: !696, line: 255, baseType: !742, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !633, line: 66, flags: DIFlagFwdDecl)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !737, file: !696, line: 256, baseType: !135, size: 64, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !737, file: !696, line: 259, baseType: !504, size: 256, offset: 256)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !737, file: !696, line: 260, baseType: !504, size: 256, offset: 512)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !737, file: !696, line: 261, baseType: !46, size: 32, offset: 768)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !737, file: !696, line: 262, baseType: !163, size: 128, offset: 832)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !737, file: !696, line: 263, baseType: !247, size: 64, offset: 960)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !737, file: !696, line: 265, baseType: !294, size: 64, offset: 1024)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !737, file: !696, line: 266, baseType: !604, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !737, file: !696, line: 267, baseType: !604, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !737, file: !696, line: 268, baseType: !623, size: 64, offset: 1152)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !730, file: !696, line: 277, baseType: !755, size: 64, offset: 64)
!755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!756 = !DISubroutineType(types: !757)
!757 = !{null, !736}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !730, file: !696, line: 290, baseType: !759, size: 64, offset: 128)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!46, !742, !135}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !730, file: !696, line: 292, baseType: !763, size: 64, offset: 192)
!763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !764, size: 64)
!764 = !DISubroutineType(types: !765)
!765 = !{!135, !742, !766}
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !730, file: !696, line: 293, baseType: !768, size: 64, offset: 256)
!768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!769 = !DISubroutineType(types: !770)
!770 = !{!135, !742, !135, !766}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !730, file: !696, line: 294, baseType: !772, size: 64, offset: 320)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{null, !742, !135}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !730, file: !696, line: 296, baseType: !776, size: 64, offset: 384)
!776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !777, size: 64)
!777 = !DISubroutineType(types: !778)
!778 = !{!279, !736, !247, !294, !333}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !730, file: !696, line: 306, baseType: !294, size: 64, offset: 448)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !730, file: !696, line: 313, baseType: !604, size: 8, offset: 512)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !730, file: !696, line: 314, baseType: !776, size: 64, offset: 576)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !730, file: !696, line: 317, baseType: !783, size: 64, offset: 640)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = !DISubroutineType(types: !785)
!785 = !{!786, !736, !788}
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !787, line: 59, baseType: !7)
!787 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !789, size: 64)
!789 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !696, line: 31, flags: DIFlagFwdDecl)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !730, file: !696, line: 320, baseType: !791, size: 64, offset: 704)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DISubroutineType(types: !793)
!793 = !{!46, !736, !341}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !725, file: !696, line: 176, baseType: !795, size: 64, offset: 64)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !696, line: 35, flags: DIFlagFwdDecl)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !725, file: !696, line: 177, baseType: !333, size: 64, offset: 128)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !725, file: !696, line: 178, baseType: !694, size: 64, offset: 192)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !695, file: !696, line: 215, baseType: !135, size: 64, offset: 768)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !695, file: !696, line: 221, baseType: !410, size: 64, offset: 832)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !695, file: !696, line: 223, baseType: !217, size: 16, offset: 896)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !695, file: !696, line: 224, baseType: !289, size: 16, offset: 912)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !695, file: !696, line: 225, baseType: !804, size: 64, offset: 960)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !696, line: 36, flags: DIFlagFwdDecl)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !695, file: !696, line: 227, baseType: !353, size: 128, align: 64, offset: 1024)
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
!844 = !{!247, !839, !845, !679, !686}
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
!993 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !980, file: !973, line: 55, baseType: !668, size: 64, offset: 192)
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
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !903, file: !13, line: 444, baseType: !604, size: 8, offset: 2368)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !903, file: !13, line: 451, baseType: !604, size: 8, offset: 2376)
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
!1052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 384, align: 64, elements: !1053)
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
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1139, file: !1134, line: 35, baseType: !604, size: 8, offset: 1664)
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
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1139, file: !1134, line: 37, baseType: !569, size: 256, offset: 2048)
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
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1203, file: !1134, line: 79, baseType: !604, size: 8, offset: 1408)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1203, file: !1134, line: 80, baseType: !297, size: 64, offset: 1472)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1203, file: !1134, line: 81, baseType: !504, size: 256, offset: 1536)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1203, file: !1134, line: 82, baseType: !922, size: 256, offset: 1792)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1203, file: !1134, line: 84, baseType: !197, size: 32, offset: 2048)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1203, file: !1134, line: 87, baseType: !297, size: 64, offset: 2112)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1203, file: !1134, line: 88, baseType: !297, size: 64, offset: 2176)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1203, file: !1134, line: 89, baseType: !1228, size: 704, offset: 2240)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !570, line: 111, size: 704, elements: !1229)
!1229 = !{!1230, !1231, !1232, !1235}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1228, file: !570, line: 112, baseType: !569, size: 256)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1228, file: !570, line: 113, baseType: !1164, size: 320, offset: 256)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1228, file: !570, line: 116, baseType: !1233, size: 64, offset: 576)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !570, line: 18, flags: DIFlagFwdDecl)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1228, file: !570, line: 117, baseType: !46, size: 32, offset: 640)
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
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !897, file: !20, line: 103, baseType: !604, size: 8, offset: 256)
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
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !884, file: !885, line: 109, baseType: !604, size: 8, offset: 1280)
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
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1366, file: !38, line: 667, baseType: !604, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1366, file: !38, line: 668, baseType: !604, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1366, file: !38, line: 669, baseType: !604, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1366, file: !38, line: 670, baseType: !604, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1366, file: !38, line: 671, baseType: !604, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1366, file: !38, line: 672, baseType: !604, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1366, file: !38, line: 673, baseType: !604, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1366, file: !38, line: 674, baseType: !604, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
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
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1385, file: !1386, line: 62, baseType: !604, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1385, file: !1386, line: 63, baseType: !604, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1366, file: !38, line: 681, baseType: !604, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1366, file: !38, line: 682, baseType: !604, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1366, file: !38, line: 683, baseType: !604, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1366, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1366, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1366, file: !38, line: 690, baseType: !1418, size: 512, offset: 640)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1419)
!1419 = !{!1420, !1426, !1427, !1432, !1484, !1485, !1486, !1487}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1418, file: !33, line: 119, baseType: !1421, size: 256)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1422, line: 9, size: 256, elements: !1423)
!1422 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1423 = !{!1424, !1425}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1421, file: !1422, line: 10, baseType: !610, size: 192, align: 64)
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
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !611, line: 26, size: 128, elements: !1476)
!1476 = !{!1477, !1478}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1475, file: !611, line: 27, baseType: !713, size: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1475, file: !611, line: 28, baseType: !615, size: 64, offset: 64)
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
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1366, file: !38, line: 692, baseType: !569, size: 256, offset: 1216)
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
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1366, file: !38, line: 703, baseType: !604, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
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
!1616 = !{null, !823, !604}
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
!1687 = !{!604, !1688}
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
!1702 = !{!604, !1688, !160}
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
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1793, file: !1794, line: 66, baseType: !644, size: 64, offset: 512)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1793, file: !1794, line: 67, baseType: !1812, size: 64, offset: 576)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{!525, !839}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1793, file: !1794, line: 69, baseType: !1816, size: 64, offset: 640)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{null, !839, !679, !686}
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
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1830, file: !26, line: 601, baseType: !604, size: 8, offset: 96)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1830, file: !26, line: 602, baseType: !604, size: 8, offset: 104)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !153, file: !26, line: 793, baseType: !95, size: 32, offset: 5760)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !153, file: !26, line: 795, baseType: !604, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !153, file: !26, line: 796, baseType: !604, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !153, file: !26, line: 797, baseType: !604, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !153, file: !26, line: 798, baseType: !604, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !153, file: !26, line: 799, baseType: !604, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
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
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !1895, file: !113, line: 107, baseType: !604, size: 8, offset: 6272)
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
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "no_hwmon", scope: !1969, file: !113, line: 221, baseType: !604, size: 8, offset: 160)
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
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !148, file: !113, line: 189, baseType: !604, size: 8, offset: 9120)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !137, file: !138, line: 89, baseType: !1894, size: 64, offset: 256)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "trip", scope: !137, file: !138, line: 90, baseType: !1959, size: 64, offset: 320)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !137, file: !138, line: 91, baseType: !604, size: 8, offset: 384)
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
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "upper_no_limit", scope: !137, file: !138, line: 102, baseType: !604, size: 8, offset: 1824)
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
!2044 = !{!0, !2045, !2047, !2049, !2051, !2054, !2083}
!2045 = !DIGlobalVariableExpression(var: !2046, expr: !DIExpression())
!2046 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_thermal_zone_get_temp230", scope: !2, file: !3, line: 153, type: !135, isLocal: true, isDefinition: true)
!2047 = !DIGlobalVariableExpression(var: !2048, expr: !DIExpression())
!2048 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_thermal_zone_get_slope231", scope: !2, file: !3, line: 215, type: !135, isLocal: true, isDefinition: true)
!2049 = !DIGlobalVariableExpression(var: !2050, expr: !DIExpression())
!2050 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_thermal_zone_get_offset232", scope: !2, file: !3, line: 230, type: !135, isLocal: true, isDefinition: true)
!2051 = !DIGlobalVariableExpression(var: !2052, expr: !DIExpression())
!2052 = distinct !DIGlobalVariable(scope: null, file: !2053, line: 49, type: !1294, isLocal: true, isDefinition: true)
!2053 = !DIFile(filename: "drivers/thermal/thermal_trace.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9ea179728c9670b77b40dbcdf5402804")
!2054 = !DIGlobalVariableExpression(var: !2055, expr: !DIExpression())
!2055 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__tp_func_cdev_update215", scope: !2056, file: !2053, line: 49, type: !135, isLocal: true, isDefinition: true)
!2056 = distinct !DISubprogram(name: "trace_cdev_update", scope: !2053, file: !2053, line: 49, type: !2057, scopeLine: 49, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2059)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{null, !1894, !297}
!2059 = !{!2060, !2061, !2062, !2065, !2068, !2070, !2072, !2075, !2078, !2080, !2081}
!2060 = !DILocalVariable(name: "cdev", arg: 1, scope: !2056, file: !2053, line: 49, type: !1894)
!2061 = !DILocalVariable(name: "target", arg: 2, scope: !2056, file: !2053, line: 49, type: !297)
!2062 = !DILocalVariable(name: "__idx", scope: !2063, file: !2053, line: 49, type: !46)
!2063 = distinct !DILexicalBlock(scope: !2064, file: !2053, line: 49, column: 1)
!2064 = distinct !DILexicalBlock(scope: !2056, file: !2053, line: 49, column: 1)
!2065 = !DILocalVariable(name: "pscr_ret__", scope: !2066, file: !2053, line: 49, type: !46)
!2066 = distinct !DILexicalBlock(scope: !2067, file: !2053, line: 49, column: 1)
!2067 = distinct !DILexicalBlock(scope: !2063, file: !2053, line: 49, column: 1)
!2068 = !DILocalVariable(name: "__vpp_verify", scope: !2069, file: !2053, line: 49, type: !525)
!2069 = distinct !DILexicalBlock(scope: !2066, file: !2053, line: 49, column: 1)
!2070 = !DILocalVariable(name: "pfo_val__", scope: !2071, file: !2053, line: 49, type: !1181)
!2071 = distinct !DILexicalBlock(scope: !2066, file: !2053, line: 49, column: 1)
!2072 = !DILocalVariable(name: "__ret_warn_on", scope: !2073, file: !2053, line: 49, type: !46)
!2073 = distinct !DILexicalBlock(scope: !2074, file: !2053, line: 49, column: 1)
!2074 = distinct !DILexicalBlock(scope: !2063, file: !2053, line: 49, column: 1)
!2075 = !DILocalVariable(name: "__flags", scope: !2076, file: !2053, line: 49, type: !46)
!2076 = distinct !DILexicalBlock(scope: !2077, file: !2053, line: 49, column: 1)
!2077 = distinct !DILexicalBlock(scope: !2073, file: !2053, line: 49, column: 1)
!2078 = !DILocalVariable(name: "it_func_ptr", scope: !2079, file: !2053, line: 49, type: !2029)
!2079 = distinct !DILexicalBlock(scope: !2063, file: !2053, line: 49, column: 1)
!2080 = !DILocalVariable(name: "__data", scope: !2079, file: !2053, line: 49, type: !135)
!2081 = !DILocalVariable(name: "__UNIQUE_ID_rcu213", scope: !2082, file: !2053, line: 49, type: !2029)
!2082 = distinct !DILexicalBlock(scope: !2079, file: !2053, line: 49, column: 1)
!2083 = !DIGlobalVariableExpression(var: !2084, expr: !DIExpression())
!2084 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___SCK__preempt_schedule_notrace216", scope: !2056, file: !2053, line: 49, type: !135, isLocal: true, isDefinition: true)
!2085 = !{!"rsp"}
!2086 = !{i32 7, !"Dwarf Version", i32 5}
!2087 = !{i32 2, !"Debug Info Version", i32 3}
!2088 = !{i32 1, !"wchar_size", i32 2}
!2089 = !{i32 8, !"cf-protection-branch", i32 1}
!2090 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2091 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2092 = !{i32 1, !"Code Model", i32 2}
!2093 = !{i32 1, !"override-stack-alignment", i32 8}
!2094 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2095 = distinct !DISubprogram(name: "get_tz_trend", scope: !3, file: !3, line: 25, type: !1953, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2096)
!2096 = !{!2097, !2098, !2099, !2100}
!2097 = !DILocalVariable(name: "tz", arg: 1, scope: !2095, file: !3, line: 25, type: !147)
!2098 = !DILocalVariable(name: "trip_index", arg: 2, scope: !2095, file: !3, line: 25, type: !46)
!2099 = !DILocalVariable(name: "trip", scope: !2095, file: !3, line: 27, type: !1868)
!2100 = !DILocalVariable(name: "trend", scope: !2095, file: !3, line: 28, type: !112)
!2101 = !DILocation(line: 25, column: 46, scope: !2095)
!2102 = !DILocation(line: 25, column: 54, scope: !2095)
!2103 = !DILocation(line: 27, column: 2, scope: !2095)
!2104 = !DILocation(line: 27, column: 23, scope: !2095)
!2105 = !DILocation(line: 27, column: 30, scope: !2095)
!2106 = !DILocation(line: 27, column: 34, scope: !2095)
!2107 = !DILocation(line: 27, column: 43, scope: !2095)
!2108 = !DILocation(line: 27, column: 47, scope: !2095)
!2109 = !DILocation(line: 27, column: 53, scope: !2095)
!2110 = !DILocation(line: 28, column: 2, scope: !2095)
!2111 = !DILocation(line: 28, column: 21, scope: !2095)
!2112 = !DILocation(line: 30, column: 6, scope: !2113)
!2113 = distinct !DILexicalBlock(scope: !2095, file: !3, line: 30, column: 6)
!2114 = !DILocation(line: 30, column: 10, scope: !2113)
!2115 = !DILocation(line: 30, column: 27, scope: !2113)
!2116 = !DILocation(line: 30, column: 31, scope: !2113)
!2117 = !DILocation(line: 30, column: 35, scope: !2113)
!2118 = !DILocation(line: 30, column: 40, scope: !2113)
!2119 = !DILocation(line: 30, column: 50, scope: !2113)
!2120 = !DILocation(line: 31, column: 6, scope: !2113)
!2121 = !DILocation(line: 31, column: 10, scope: !2113)
!2122 = !DILocation(line: 31, column: 15, scope: !2113)
!2123 = !DILocation(line: 31, column: 25, scope: !2113)
!2124 = !DILocation(line: 31, column: 29, scope: !2113)
!2125 = !DILocation(line: 30, column: 6, scope: !2095)
!2126 = !DILocation(line: 32, column: 7, scope: !2127)
!2127 = distinct !DILexicalBlock(scope: !2128, file: !3, line: 32, column: 7)
!2128 = distinct !DILexicalBlock(scope: !2113, file: !3, line: 31, column: 44)
!2129 = !DILocation(line: 32, column: 11, scope: !2127)
!2130 = !DILocation(line: 32, column: 25, scope: !2127)
!2131 = !DILocation(line: 32, column: 29, scope: !2127)
!2132 = !DILocation(line: 32, column: 23, scope: !2127)
!2133 = !DILocation(line: 32, column: 7, scope: !2128)
!2134 = !DILocation(line: 33, column: 10, scope: !2127)
!2135 = !DILocation(line: 33, column: 4, scope: !2127)
!2136 = !DILocation(line: 34, column: 12, scope: !2137)
!2137 = distinct !DILexicalBlock(scope: !2127, file: !3, line: 34, column: 12)
!2138 = !DILocation(line: 34, column: 16, scope: !2137)
!2139 = !DILocation(line: 34, column: 30, scope: !2137)
!2140 = !DILocation(line: 34, column: 34, scope: !2137)
!2141 = !DILocation(line: 34, column: 28, scope: !2137)
!2142 = !DILocation(line: 34, column: 12, scope: !2127)
!2143 = !DILocation(line: 35, column: 10, scope: !2137)
!2144 = !DILocation(line: 35, column: 4, scope: !2137)
!2145 = !DILocation(line: 37, column: 10, scope: !2137)
!2146 = !DILocation(line: 38, column: 2, scope: !2128)
!2147 = !DILocation(line: 40, column: 9, scope: !2095)
!2148 = !DILocation(line: 41, column: 1, scope: !2095)
!2149 = !DILocation(line: 40, column: 2, scope: !2095)
!2150 = distinct !DISubprogram(name: "get_thermal_instance", scope: !3, file: !3, line: 44, type: !2151, scopeLine: 46, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2153)
!2151 = !DISubroutineType(types: !2152)
!2152 = !{!136, !147, !1894, !46}
!2153 = !{!2154, !2155, !2156, !2157, !2158, !2159, !2160, !2163}
!2154 = !DILocalVariable(name: "tz", arg: 1, scope: !2150, file: !3, line: 44, type: !147)
!2155 = !DILocalVariable(name: "cdev", arg: 2, scope: !2150, file: !3, line: 45, type: !1894)
!2156 = !DILocalVariable(name: "trip_index", arg: 3, scope: !2150, file: !3, line: 45, type: !46)
!2157 = !DILocalVariable(name: "pos", scope: !2150, file: !3, line: 47, type: !136)
!2158 = !DILocalVariable(name: "target_instance", scope: !2150, file: !3, line: 48, type: !136)
!2159 = !DILocalVariable(name: "trip", scope: !2150, file: !3, line: 49, type: !1959)
!2160 = !DILocalVariable(name: "__mptr", scope: !2161, file: !3, line: 56, type: !135)
!2161 = distinct !DILexicalBlock(scope: !2162, file: !3, line: 56, column: 2)
!2162 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 56, column: 2)
!2163 = !DILocalVariable(name: "__mptr", scope: !2164, file: !3, line: 56, type: !135)
!2164 = distinct !DILexicalBlock(scope: !2165, file: !3, line: 56, column: 2)
!2165 = distinct !DILexicalBlock(scope: !2162, file: !3, line: 56, column: 2)
!2166 = !DILocation(line: 44, column: 50, scope: !2150)
!2167 = !DILocation(line: 45, column: 39, scope: !2150)
!2168 = !DILocation(line: 45, column: 49, scope: !2150)
!2169 = !DILocation(line: 47, column: 2, scope: !2150)
!2170 = !DILocation(line: 47, column: 27, scope: !2150)
!2171 = !DILocation(line: 48, column: 2, scope: !2150)
!2172 = !DILocation(line: 48, column: 27, scope: !2150)
!2173 = !DILocation(line: 49, column: 2, scope: !2150)
!2174 = !DILocation(line: 49, column: 29, scope: !2150)
!2175 = !DILocation(line: 51, column: 14, scope: !2150)
!2176 = !DILocation(line: 51, column: 18, scope: !2150)
!2177 = !DILocation(line: 51, column: 2, scope: !2150)
!2178 = !DILocation(line: 52, column: 14, scope: !2150)
!2179 = !DILocation(line: 52, column: 20, scope: !2150)
!2180 = !DILocation(line: 52, column: 2, scope: !2150)
!2181 = !DILocation(line: 54, column: 10, scope: !2150)
!2182 = !DILocation(line: 54, column: 14, scope: !2150)
!2183 = !DILocation(line: 54, column: 20, scope: !2150)
!2184 = !DILocation(line: 54, column: 7, scope: !2150)
!2185 = !DILocation(line: 56, column: 2, scope: !2161)
!2186 = !DILocation(line: 56, column: 2, scope: !2162)
!2187 = !DILocation(line: 56, column: 2, scope: !2165)
!2188 = !DILocation(line: 57, column: 7, scope: !2189)
!2189 = distinct !DILexicalBlock(scope: !2190, file: !3, line: 57, column: 7)
!2190 = distinct !DILexicalBlock(scope: !2165, file: !3, line: 56, column: 60)
!2191 = !DILocation(line: 57, column: 12, scope: !2189)
!2192 = !DILocation(line: 57, column: 18, scope: !2189)
!2193 = !DILocation(line: 57, column: 15, scope: !2189)
!2194 = !DILocation(line: 57, column: 21, scope: !2189)
!2195 = !DILocation(line: 57, column: 24, scope: !2189)
!2196 = !DILocation(line: 57, column: 29, scope: !2189)
!2197 = !DILocation(line: 57, column: 37, scope: !2189)
!2198 = !DILocation(line: 57, column: 34, scope: !2189)
!2199 = !DILocation(line: 57, column: 42, scope: !2189)
!2200 = !DILocation(line: 57, column: 45, scope: !2189)
!2201 = !DILocation(line: 57, column: 50, scope: !2189)
!2202 = !DILocation(line: 57, column: 58, scope: !2189)
!2203 = !DILocation(line: 57, column: 55, scope: !2189)
!2204 = !DILocation(line: 57, column: 7, scope: !2190)
!2205 = !DILocation(line: 58, column: 22, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2189, file: !3, line: 57, column: 64)
!2207 = !DILocation(line: 58, column: 20, scope: !2206)
!2208 = !DILocation(line: 59, column: 4, scope: !2206)
!2209 = !DILocation(line: 61, column: 2, scope: !2190)
!2210 = !DILocation(line: 56, column: 2, scope: !2164)
!2211 = distinct !{!2211, !2186, !2212, !2213, !2214}
!2212 = !DILocation(line: 61, column: 2, scope: !2162)
!2213 = !{!"llvm.loop.mustprogress"}
!2214 = !{!"llvm.loop.unroll.disable"}
!2215 = !DILocation(line: 63, column: 16, scope: !2150)
!2216 = !DILocation(line: 63, column: 22, scope: !2150)
!2217 = !DILocation(line: 63, column: 2, scope: !2150)
!2218 = !DILocation(line: 64, column: 16, scope: !2150)
!2219 = !DILocation(line: 64, column: 20, scope: !2150)
!2220 = !DILocation(line: 64, column: 2, scope: !2150)
!2221 = !DILocation(line: 66, column: 9, scope: !2150)
!2222 = !DILocation(line: 67, column: 1, scope: !2150)
!2223 = !DILocation(line: 66, column: 2, scope: !2150)
!2224 = !DISubprogram(name: "mutex_lock", scope: !505, file: !505, line: 227, type: !2225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{null, !2227}
!2227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!2228 = !DISubprogram(name: "mutex_unlock", scope: !505, file: !505, line: 246, type: !2225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2229 = distinct !DISubprogram(name: "__thermal_zone_get_temp", scope: !3, file: !3, line: 84, type: !1938, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2230)
!2230 = !{!2231, !2232, !2233, !2234, !2235, !2236}
!2231 = !DILocalVariable(name: "tz", arg: 1, scope: !2229, file: !3, line: 84, type: !147)
!2232 = !DILocalVariable(name: "temp", arg: 2, scope: !2229, file: !3, line: 84, type: !1063)
!2233 = !DILocalVariable(name: "ret", scope: !2229, file: !3, line: 86, type: !46)
!2234 = !DILocalVariable(name: "count", scope: !2229, file: !3, line: 87, type: !46)
!2235 = !DILocalVariable(name: "crit_temp", scope: !2229, file: !3, line: 88, type: !46)
!2236 = !DILocalVariable(name: "trip", scope: !2229, file: !3, line: 89, type: !1869)
!2237 = !DILocation(line: 84, column: 57, scope: !2229)
!2238 = !DILocation(line: 84, column: 66, scope: !2229)
!2239 = !DILocation(line: 86, column: 2, scope: !2229)
!2240 = !DILocation(line: 86, column: 6, scope: !2229)
!2241 = !DILocation(line: 87, column: 2, scope: !2229)
!2242 = !DILocation(line: 87, column: 6, scope: !2229)
!2243 = !DILocation(line: 88, column: 2, scope: !2229)
!2244 = !DILocation(line: 88, column: 6, scope: !2229)
!2245 = !DILocation(line: 89, column: 2, scope: !2229)
!2246 = !DILocation(line: 89, column: 22, scope: !2229)
!2247 = !DILocation(line: 91, column: 2, scope: !2229)
!2248 = !DILocation(line: 91, column: 2, scope: !2249)
!2249 = distinct !DILexicalBlock(scope: !2229, file: !3, line: 91, column: 2)
!2250 = !DILocation(line: 93, column: 8, scope: !2229)
!2251 = !DILocation(line: 93, column: 12, scope: !2229)
!2252 = !DILocation(line: 93, column: 17, scope: !2229)
!2253 = !DILocation(line: 93, column: 26, scope: !2229)
!2254 = !DILocation(line: 93, column: 30, scope: !2229)
!2255 = !DILocation(line: 93, column: 6, scope: !2229)
!2256 = !DILocation(line: 113, column: 6, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2229, file: !3, line: 113, column: 6)
!2258 = !DILocation(line: 113, column: 6, scope: !2229)
!2259 = !DILocation(line: 114, column: 3, scope: !2257)
!2260 = !DILocation(line: 116, column: 9, scope: !2229)
!2261 = !DILocation(line: 117, column: 1, scope: !2229)
!2262 = !DILocation(line: 116, column: 2, scope: !2229)
!2263 = distinct !DISubprogram(name: "thermal_zone_get_temp", scope: !3, file: !3, line: 129, type: !1938, scopeLine: 130, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2264)
!2264 = !{!2265, !2266, !2267, !2268}
!2265 = !DILocalVariable(name: "tz", arg: 1, scope: !2263, file: !3, line: 129, type: !147)
!2266 = !DILocalVariable(name: "temp", arg: 2, scope: !2263, file: !3, line: 129, type: !1063)
!2267 = !DILocalVariable(name: "ret", scope: !2263, file: !3, line: 131, type: !46)
!2268 = !DILabel(scope: !2263, name: "unlock", file: !3, line: 148)
!2269 = !DILocation(line: 129, column: 55, scope: !2263)
!2270 = !DILocation(line: 129, column: 64, scope: !2263)
!2271 = !DILocation(line: 131, column: 2, scope: !2263)
!2272 = !DILocation(line: 131, column: 6, scope: !2263)
!2273 = !DILocation(line: 133, column: 21, scope: !2274)
!2274 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 133, column: 6)
!2275 = !DILocation(line: 133, column: 6, scope: !2274)
!2276 = !DILocation(line: 133, column: 6, scope: !2263)
!2277 = !DILocation(line: 134, column: 3, scope: !2274)
!2278 = !DILocation(line: 136, column: 14, scope: !2263)
!2279 = !DILocation(line: 136, column: 18, scope: !2263)
!2280 = !DILocation(line: 136, column: 2, scope: !2263)
!2281 = !DILocation(line: 138, column: 7, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 138, column: 6)
!2283 = !DILocation(line: 138, column: 11, scope: !2282)
!2284 = !DILocation(line: 138, column: 16, scope: !2282)
!2285 = !DILocation(line: 138, column: 6, scope: !2263)
!2286 = !DILocation(line: 139, column: 7, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2282, file: !3, line: 138, column: 26)
!2288 = !DILocation(line: 140, column: 3, scope: !2287)
!2289 = !DILocation(line: 143, column: 28, scope: !2290)
!2290 = distinct !DILexicalBlock(scope: !2263, file: !3, line: 143, column: 6)
!2291 = !DILocation(line: 143, column: 32, scope: !2290)
!2292 = !DILocation(line: 143, column: 6, scope: !2290)
!2293 = !DILocation(line: 143, column: 6, scope: !2263)
!2294 = !DILocation(line: 144, column: 33, scope: !2290)
!2295 = !DILocation(line: 144, column: 37, scope: !2290)
!2296 = !DILocation(line: 144, column: 9, scope: !2290)
!2297 = !DILocation(line: 144, column: 7, scope: !2290)
!2298 = !DILocation(line: 144, column: 3, scope: !2290)
!2299 = !DILocation(line: 146, column: 7, scope: !2290)
!2300 = !DILocation(line: 143, column: 38, scope: !2290)
!2301 = !DILocation(line: 148, column: 1, scope: !2263)
!2302 = !DILocation(line: 149, column: 16, scope: !2263)
!2303 = !DILocation(line: 149, column: 20, scope: !2263)
!2304 = !DILocation(line: 149, column: 2, scope: !2263)
!2305 = !DILocation(line: 151, column: 9, scope: !2263)
!2306 = !DILocation(line: 151, column: 2, scope: !2263)
!2307 = !DILocation(line: 152, column: 1, scope: !2263)
!2308 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !2309, file: !2309, line: 70, type: !2310, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2312)
!2309 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!2310 = !DISubroutineType(types: !2311)
!2311 = !{!604, !525}
!2312 = !{!2313}
!2313 = !DILocalVariable(name: "ptr", arg: 1, scope: !2308, file: !2309, line: 70, type: !525)
!2314 = !DILocation(line: 70, column: 68, scope: !2308)
!2315 = !DILocation(line: 72, column: 9, scope: !2308)
!2316 = !DILocation(line: 72, column: 24, scope: !2308)
!2317 = !DILocation(line: 72, column: 27, scope: !2308)
!2318 = !DILocation(line: 72, column: 2, scope: !2308)
!2319 = distinct !DISubprogram(name: "device_is_registered", scope: !26, file: !26, line: 941, type: !857, scopeLine: 942, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2320)
!2320 = !{!2321}
!2321 = !DILocalVariable(name: "dev", arg: 1, scope: !2319, file: !26, line: 941, type: !823)
!2322 = !DILocation(line: 941, column: 55, scope: !2319)
!2323 = !DILocation(line: 943, column: 9, scope: !2319)
!2324 = !DILocation(line: 943, column: 14, scope: !2319)
!2325 = !DILocation(line: 943, column: 19, scope: !2319)
!2326 = !DILocation(line: 943, column: 2, scope: !2319)
!2327 = distinct !DISubprogram(name: "__thermal_cdev_update", scope: !3, file: !3, line: 165, type: !2328, scopeLine: 166, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2330)
!2328 = !DISubroutineType(types: !2329)
!2329 = !{null, !1894}
!2330 = !{!2331, !2332, !2333, !2334, !2337}
!2331 = !DILocalVariable(name: "cdev", arg: 1, scope: !2327, file: !3, line: 165, type: !1894)
!2332 = !DILocalVariable(name: "instance", scope: !2327, file: !3, line: 167, type: !136)
!2333 = !DILocalVariable(name: "target", scope: !2327, file: !3, line: 168, type: !297)
!2334 = !DILocalVariable(name: "__mptr", scope: !2335, file: !3, line: 171, type: !135)
!2335 = distinct !DILexicalBlock(scope: !2336, file: !3, line: 171, column: 2)
!2336 = distinct !DILexicalBlock(scope: !2327, file: !3, line: 171, column: 2)
!2337 = !DILocalVariable(name: "__mptr", scope: !2338, file: !3, line: 171, type: !135)
!2338 = distinct !DILexicalBlock(scope: !2339, file: !3, line: 171, column: 2)
!2339 = distinct !DILexicalBlock(scope: !2336, file: !3, line: 171, column: 2)
!2340 = !DILocation(line: 165, column: 59, scope: !2327)
!2341 = !DILocation(line: 167, column: 2, scope: !2327)
!2342 = !DILocation(line: 167, column: 27, scope: !2327)
!2343 = !DILocation(line: 168, column: 2, scope: !2327)
!2344 = !DILocation(line: 168, column: 16, scope: !2327)
!2345 = !DILocation(line: 171, column: 2, scope: !2335)
!2346 = !DILocation(line: 171, column: 2, scope: !2336)
!2347 = !DILocation(line: 171, column: 2, scope: !2339)
!2348 = !DILocation(line: 174, column: 7, scope: !2349)
!2349 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 174, column: 7)
!2350 = distinct !DILexicalBlock(scope: !2339, file: !3, line: 171, column: 69)
!2351 = !DILocation(line: 174, column: 17, scope: !2349)
!2352 = !DILocation(line: 174, column: 24, scope: !2349)
!2353 = !DILocation(line: 174, column: 7, scope: !2350)
!2354 = !DILocation(line: 175, column: 4, scope: !2349)
!2355 = !DILocation(line: 176, column: 7, scope: !2356)
!2356 = distinct !DILexicalBlock(scope: !2350, file: !3, line: 176, column: 7)
!2357 = !DILocation(line: 176, column: 17, scope: !2356)
!2358 = !DILocation(line: 176, column: 26, scope: !2356)
!2359 = !DILocation(line: 176, column: 24, scope: !2356)
!2360 = !DILocation(line: 176, column: 7, scope: !2350)
!2361 = !DILocation(line: 177, column: 13, scope: !2356)
!2362 = !DILocation(line: 177, column: 23, scope: !2356)
!2363 = !DILocation(line: 177, column: 11, scope: !2356)
!2364 = !DILocation(line: 177, column: 4, scope: !2356)
!2365 = !DILocation(line: 178, column: 2, scope: !2350)
!2366 = !DILocation(line: 171, column: 2, scope: !2338)
!2367 = distinct !{!2367, !2346, !2368, !2213, !2214}
!2368 = !DILocation(line: 178, column: 2, scope: !2336)
!2369 = !DILocation(line: 180, column: 29, scope: !2327)
!2370 = !DILocation(line: 180, column: 35, scope: !2327)
!2371 = !DILocation(line: 180, column: 2, scope: !2327)
!2372 = !DILocation(line: 182, column: 20, scope: !2327)
!2373 = !DILocation(line: 182, column: 26, scope: !2327)
!2374 = !DILocation(line: 182, column: 2, scope: !2327)
!2375 = !DILocation(line: 184, column: 1, scope: !2327)
!2376 = distinct !DISubprogram(name: "thermal_cdev_set_cur_state", scope: !3, file: !3, line: 155, type: !2377, scopeLine: 157, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2379)
!2377 = !DISubroutineType(types: !2378)
!2378 = !{null, !1894, !46}
!2379 = !{!2380, !2381}
!2380 = !DILocalVariable(name: "cdev", arg: 1, scope: !2376, file: !3, line: 155, type: !1894)
!2381 = !DILocalVariable(name: "target", arg: 2, scope: !2376, file: !3, line: 156, type: !46)
!2382 = !DILocation(line: 155, column: 71, scope: !2376)
!2383 = !DILocation(line: 156, column: 16, scope: !2376)
!2384 = !DILocation(line: 158, column: 6, scope: !2385)
!2385 = distinct !DILexicalBlock(scope: !2376, file: !3, line: 158, column: 6)
!2386 = !DILocation(line: 158, column: 12, scope: !2385)
!2387 = !DILocation(line: 158, column: 17, scope: !2385)
!2388 = !DILocation(line: 158, column: 31, scope: !2385)
!2389 = !DILocation(line: 158, column: 37, scope: !2385)
!2390 = !DILocation(line: 158, column: 6, scope: !2376)
!2391 = !DILocation(line: 159, column: 3, scope: !2385)
!2392 = !DILocation(line: 161, column: 35, scope: !2376)
!2393 = !DILocation(line: 161, column: 41, scope: !2376)
!2394 = !DILocation(line: 161, column: 45, scope: !2376)
!2395 = !DILocation(line: 161, column: 2, scope: !2376)
!2396 = !DILocation(line: 162, column: 38, scope: !2376)
!2397 = !DILocation(line: 162, column: 44, scope: !2376)
!2398 = !DILocation(line: 162, column: 2, scope: !2376)
!2399 = !DILocation(line: 163, column: 1, scope: !2376)
!2400 = !DILocation(line: 49, column: 1, scope: !2056)
!2401 = !DILocation(line: 49, column: 1, scope: !2064)
!2402 = !DILocation(line: 49, column: 1, scope: !2063)
!2403 = !DILocation(line: 49, column: 1, scope: !2066)
!2404 = !DILocation(line: 49, column: 1, scope: !2069)
!2405 = !DILocation(line: 49, column: 1, scope: !2071)
!2406 = !{i64 2153036679}
!2407 = !DILocation(line: 49, column: 1, scope: !2067)
!2408 = !DILocation(line: 49, column: 1, scope: !2073)
!2409 = !DILocation(line: 49, column: 1, scope: !2077)
!2410 = !DILocation(line: 49, column: 1, scope: !2076)
!2411 = !DILocation(line: 49, column: 1, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2076, file: !2053, line: 49, column: 1)
!2413 = !DILocation(line: 49, column: 1, scope: !2414)
!2414 = distinct !DILexicalBlock(scope: !2076, file: !2053, line: 49, column: 1)
!2415 = !{i64 2153037878, i64 2153037907, i64 2153037953, i64 2153038011, i64 2153038065, i64 2153038119, i64 2153038174, i64 2153038205, i64 2153038513, i64 2153038519, i64 2153038566, i64 2153038589, i64 2153038615}
!2416 = !DILocation(line: 49, column: 1, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2076, file: !2053, line: 49, column: 1)
!2418 = !DILocation(line: 49, column: 1, scope: !2074)
!2419 = !DILocation(line: 49, column: 1, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2063, file: !2053, line: 49, column: 1)
!2421 = !{i64 2153038970}
!2422 = !DILocation(line: 49, column: 1, scope: !2079)
!2423 = !DILocation(line: 49, column: 1, scope: !2082)
!2424 = !DILocation(line: 49, column: 1, scope: !2425)
!2425 = distinct !DILexicalBlock(scope: !2082, file: !2053, line: 49, column: 1)
!2426 = !DILocation(line: 49, column: 1, scope: !2427)
!2427 = distinct !DILexicalBlock(scope: !2425, file: !2053, line: 49, column: 1)
!2428 = !DILocation(line: 49, column: 1, scope: !2429)
!2429 = distinct !DILexicalBlock(scope: !2079, file: !2053, line: 49, column: 1)
!2430 = !DILocation(line: 49, column: 1, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2429, file: !2053, line: 49, column: 1)
!2432 = !DILocation(line: 49, column: 1, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2431, file: !2053, line: 49, column: 1)
!2434 = !DILocation(line: 49, column: 1, scope: !2435)
!2435 = distinct !DILexicalBlock(scope: !2063, file: !2053, line: 49, column: 1)
!2436 = !{i64 2153045152}
!2437 = !DILocation(line: 49, column: 1, scope: !2438)
!2438 = distinct !DILexicalBlock(scope: !2435, file: !2053, line: 49, column: 1)
!2439 = !DILocation(line: 49, column: 1, scope: !2440)
!2440 = distinct !DILexicalBlock(scope: !2438, file: !2053, line: 49, column: 1)
!2441 = !{i64 2153045311}
!2442 = distinct !DISubprogram(name: "thermal_cdev_update", scope: !3, file: !3, line: 192, type: !2328, scopeLine: 193, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2443)
!2443 = !{!2444}
!2444 = !DILocalVariable(name: "cdev", arg: 1, scope: !2442, file: !3, line: 192, type: !1894)
!2445 = !DILocation(line: 192, column: 57, scope: !2442)
!2446 = !DILocation(line: 194, column: 14, scope: !2442)
!2447 = !DILocation(line: 194, column: 20, scope: !2442)
!2448 = !DILocation(line: 194, column: 2, scope: !2442)
!2449 = !DILocation(line: 195, column: 7, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2442, file: !3, line: 195, column: 6)
!2451 = !DILocation(line: 195, column: 13, scope: !2450)
!2452 = !{i8 0, i8 2}
!2453 = !DILocation(line: 195, column: 6, scope: !2442)
!2454 = !DILocation(line: 196, column: 25, scope: !2455)
!2455 = distinct !DILexicalBlock(scope: !2450, file: !3, line: 195, column: 22)
!2456 = !DILocation(line: 196, column: 3, scope: !2455)
!2457 = !DILocation(line: 197, column: 3, scope: !2455)
!2458 = !DILocation(line: 197, column: 9, scope: !2455)
!2459 = !DILocation(line: 197, column: 17, scope: !2455)
!2460 = !DILocation(line: 198, column: 2, scope: !2455)
!2461 = !DILocation(line: 199, column: 16, scope: !2442)
!2462 = !DILocation(line: 199, column: 22, scope: !2442)
!2463 = !DILocation(line: 199, column: 2, scope: !2442)
!2464 = !DILocation(line: 200, column: 1, scope: !2442)
!2465 = distinct !DISubprogram(name: "thermal_zone_get_slope", scope: !3, file: !3, line: 209, type: !1988, scopeLine: 210, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2466)
!2466 = !{!2467}
!2467 = !DILocalVariable(name: "tz", arg: 1, scope: !2465, file: !3, line: 209, type: !147)
!2468 = !DILocation(line: 209, column: 56, scope: !2465)
!2469 = !DILocation(line: 211, column: 6, scope: !2470)
!2470 = distinct !DILexicalBlock(scope: !2465, file: !3, line: 211, column: 6)
!2471 = !DILocation(line: 211, column: 9, scope: !2470)
!2472 = !DILocation(line: 211, column: 12, scope: !2470)
!2473 = !DILocation(line: 211, column: 16, scope: !2470)
!2474 = !DILocation(line: 211, column: 6, scope: !2465)
!2475 = !DILocation(line: 212, column: 10, scope: !2470)
!2476 = !DILocation(line: 212, column: 14, scope: !2470)
!2477 = !DILocation(line: 212, column: 19, scope: !2470)
!2478 = !DILocation(line: 212, column: 3, scope: !2470)
!2479 = !DILocation(line: 213, column: 2, scope: !2465)
!2480 = !DILocation(line: 214, column: 1, scope: !2465)
!2481 = distinct !DISubprogram(name: "thermal_zone_get_offset", scope: !3, file: !3, line: 224, type: !1988, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2482)
!2482 = !{!2483}
!2483 = !DILocalVariable(name: "tz", arg: 1, scope: !2481, file: !3, line: 224, type: !147)
!2484 = !DILocation(line: 224, column: 57, scope: !2481)
!2485 = !DILocation(line: 226, column: 6, scope: !2486)
!2486 = distinct !DILexicalBlock(scope: !2481, file: !3, line: 226, column: 6)
!2487 = !DILocation(line: 226, column: 9, scope: !2486)
!2488 = !DILocation(line: 226, column: 12, scope: !2486)
!2489 = !DILocation(line: 226, column: 16, scope: !2486)
!2490 = !DILocation(line: 226, column: 6, scope: !2481)
!2491 = !DILocation(line: 227, column: 10, scope: !2486)
!2492 = !DILocation(line: 227, column: 14, scope: !2486)
!2493 = !DILocation(line: 227, column: 19, scope: !2486)
!2494 = !DILocation(line: 227, column: 3, scope: !2486)
!2495 = !DILocation(line: 228, column: 2, scope: !2481)
!2496 = !DILocation(line: 229, column: 1, scope: !2481)
!2497 = distinct !DISubprogram(name: "thermal_notify_cdev_state_update", scope: !2498, file: !2498, line: 88, type: !2499, scopeLine: 89, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2501)
!2498 = !DIFile(filename: "drivers/thermal/thermal_netlink.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "7f876c5b11f9413f48c5643d1d9d8cba")
!2499 = !DISubroutineType(types: !2500)
!2500 = !{!46, !46, !46}
!2501 = !{!2502, !2503}
!2502 = !DILocalVariable(name: "cdev_id", arg: 1, scope: !2497, file: !2498, line: 88, type: !46)
!2503 = !DILocalVariable(name: "state", arg: 2, scope: !2497, file: !2498, line: 88, type: !46)
!2504 = !DILocation(line: 88, column: 56, scope: !2497)
!2505 = !DILocation(line: 88, column: 69, scope: !2497)
!2506 = !DILocation(line: 90, column: 2, scope: !2497)
!2507 = distinct !DISubprogram(name: "thermal_cooling_device_stats_update", scope: !138, file: !138, line: 143, type: !2057, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2508)
!2508 = !{!2509, !2510}
!2509 = !DILocalVariable(name: "cdev", arg: 1, scope: !2507, file: !138, line: 143, type: !1894)
!2510 = !DILocalVariable(name: "new_state", arg: 2, scope: !2507, file: !138, line: 144, type: !297)
!2511 = !DILocation(line: 143, column: 68, scope: !2507)
!2512 = !DILocation(line: 144, column: 23, scope: !2507)
!2513 = !DILocation(line: 144, column: 35, scope: !2507)
!2514 = distinct !DISubprogram(name: "static_key_false", scope: !1240, file: !1240, line: 205, type: !2515, scopeLine: 206, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2529)
!2515 = !DISubroutineType(types: !2516)
!2516 = !{!604, !2517}
!2517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2518, size: 64)
!2518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_key", file: !1240, line: 85, size: 128, elements: !2519)
!2519 = !{!2520, !2521}
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2518, file: !1240, line: 86, baseType: !197, size: 32)
!2521 = !DIDerivedType(tag: DW_TAG_member, scope: !2518, file: !1240, line: 101, baseType: !2522, size: 64, offset: 64)
!2522 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2518, file: !1240, line: 101, size: 64, elements: !2523)
!2523 = !{!2524, !2525, !2526}
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2522, file: !1240, line: 102, baseType: !297, size: 64)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "entries", scope: !2522, file: !1240, line: 103, baseType: !1238, size: 64)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2522, file: !1240, line: 104, baseType: !2527, size: 64)
!2527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2528, size: 64)
!2528 = !DICompositeType(tag: DW_TAG_structure_type, name: "static_key_mod", file: !1240, line: 104, flags: DIFlagFwdDecl)
!2529 = !{!2530}
!2530 = !DILocalVariable(name: "key", arg: 1, scope: !2514, file: !1240, line: 205, type: !2517)
!2531 = !DILocation(line: 205, column: 65, scope: !2514)
!2532 = !DILocation(line: 207, column: 28, scope: !2514)
!2533 = !DILocation(line: 207, column: 9, scope: !2514)
!2534 = !DILocation(line: 207, column: 2, scope: !2514)
!2535 = distinct !DISubprogram(name: "cpu_online", scope: !2038, file: !2038, line: 1080, type: !2536, scopeLine: 1081, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2538)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!604, !7}
!2538 = !{!2539}
!2539 = !DILocalVariable(name: "cpu", arg: 1, scope: !2535, file: !2038, line: 1080, type: !7)
!2540 = !DILocation(line: 1080, column: 44, scope: !2535)
!2541 = !DILocation(line: 1082, column: 26, scope: !2535)
!2542 = !DILocation(line: 1082, column: 9, scope: !2535)
!2543 = !DILocation(line: 1082, column: 2, scope: !2535)
!2544 = distinct !DISubprogram(name: "__preempt_count_add", scope: !2545, file: !2545, line: 78, type: !2546, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2548)
!2545 = !DIFile(filename: "./arch/x86/include/asm/preempt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c59ac00d2282d4900ffdc8c32baa9bbc")
!2546 = !DISubroutineType(types: !2547)
!2547 = !{null, !46}
!2548 = !{!2549, !2550, !2552}
!2549 = !DILocalVariable(name: "val", arg: 1, scope: !2544, file: !2545, line: 78, type: !46)
!2550 = !DILocalVariable(name: "pao_ID__", scope: !2551, file: !2545, line: 80, type: !1128)
!2551 = distinct !DILexicalBlock(scope: !2544, file: !2545, line: 80, column: 2)
!2552 = !DILocalVariable(name: "pto_val__", scope: !2553, file: !2545, line: 80, type: !1181)
!2553 = distinct !DILexicalBlock(scope: !2554, file: !2545, line: 80, column: 2)
!2554 = distinct !DILexicalBlock(scope: !2555, file: !2545, line: 80, column: 2)
!2555 = distinct !DILexicalBlock(scope: !2551, file: !2545, line: 80, column: 2)
!2556 = !DILocation(line: 78, column: 53, scope: !2544)
!2557 = !DILocation(line: 80, column: 2, scope: !2544)
!2558 = !DILocation(line: 80, column: 2, scope: !2551)
!2559 = !DILocation(line: 80, column: 2, scope: !2555)
!2560 = !DILocation(line: 80, column: 2, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2555, file: !2545, line: 80, column: 2)
!2562 = !{i64 2149645935}
!2563 = !DILocation(line: 80, column: 2, scope: !2554)
!2564 = !DILocation(line: 80, column: 2, scope: !2565)
!2565 = distinct !DILexicalBlock(scope: !2554, file: !2545, line: 80, column: 2)
!2566 = !{i64 2149646230}
!2567 = !DILocation(line: 80, column: 2, scope: !2553)
!2568 = !{i64 2149646935}
!2569 = !DILocation(line: 81, column: 1, scope: !2544)
!2570 = distinct !DISubprogram(name: "__preempt_count_dec_and_test", scope: !2545, file: !2545, line: 93, type: !651, scopeLine: 94, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2571)
!2571 = !{!2572}
!2572 = !DILocalVariable(name: "c", scope: !2573, file: !2545, line: 95, type: !604)
!2573 = distinct !DILexicalBlock(scope: !2570, file: !2545, line: 95, column: 9)
!2574 = !DILocation(line: 95, column: 9, scope: !2573)
!2575 = !{i64 2149650291, i64 2149650384}
!2576 = !DILocation(line: 95, column: 9, scope: !2570)
!2577 = !DILocation(line: 95, column: 2, scope: !2570)
!2578 = distinct !DISubprogram(name: "arch_static_branch", scope: !2579, file: !2579, line: 25, type: !2580, scopeLine: 26, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2582)
!2579 = !DIFile(filename: "./arch/x86/include/asm/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "71b6fa45bed481bd30aaadb065d37320")
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!604, !2517, !604}
!2582 = !{!2583, !2584, !2585}
!2583 = !DILocalVariable(name: "key", arg: 1, scope: !2578, file: !2579, line: 25, type: !2517)
!2584 = !DILocalVariable(name: "branch", arg: 2, scope: !2578, file: !2579, line: 25, type: !604)
!2585 = !DILabel(scope: !2578, name: "l_yes", file: !2579, line: 33)
!2586 = !DILocation(line: 25, column: 67, scope: !2578)
!2587 = !DILocation(line: 25, column: 77, scope: !2578)
!2588 = !DILocation(line: 30, column: 13, scope: !2578)
!2589 = !DILocation(line: 30, column: 28, scope: !2578)
!2590 = !DILocation(line: 30, column: 26, scope: !2578)
!2591 = !DILocation(line: 27, column: 2, scope: !2578)
!2592 = !{i64 1538032, i64 1538076, i64 2149022759, i64 2149022780, i64 2149022806, i64 2149022839, i64 2149022873, i64 2149022897}
!2593 = !DILocation(line: 32, column: 2, scope: !2578)
!2594 = !DILocation(line: 33, column: 1, scope: !2578)
!2595 = !DILocation(line: 34, column: 2, scope: !2578)
!2596 = !DILocation(line: 35, column: 1, scope: !2578)
!2597 = distinct !DISubprogram(name: "cpumask_test_cpu", scope: !2038, file: !2038, line: 502, type: !2598, scopeLine: 503, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2600)
!2598 = !DISubroutineType(types: !2599)
!2599 = !{!604, !46, !2035}
!2600 = !{!2601, !2602}
!2601 = !DILocalVariable(name: "cpu", arg: 1, scope: !2597, file: !2038, line: 502, type: !46)
!2602 = !DILocalVariable(name: "cpumask", arg: 2, scope: !2597, file: !2038, line: 502, type: !2035)
!2603 = !DILocation(line: 502, column: 50, scope: !2597)
!2604 = !DILocation(line: 502, column: 77, scope: !2597)
!2605 = !DILocation(line: 504, column: 9, scope: !2597)
!2606 = !DILocation(line: 504, column: 2, scope: !2597)
!2607 = distinct !DISubprogram(name: "_test_bit", scope: !2608, file: !2608, line: 139, type: !2609, scopeLine: 140, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2614)
!2608 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4dd0165bae660a4076d2472a834c16ae")
!2609 = !DISubroutineType(types: !2610)
!2610 = !{!604, !297, !2611}
!2611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2612, size: 64)
!2612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2613)
!2613 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !297)
!2614 = !{!2615, !2616}
!2615 = !DILocalVariable(name: "nr", arg: 1, scope: !2607, file: !2608, line: 139, type: !297)
!2616 = !DILocalVariable(name: "addr", arg: 2, scope: !2607, file: !2608, line: 139, type: !2611)
!2617 = !DILocation(line: 139, column: 25, scope: !2607)
!2618 = !DILocation(line: 139, column: 59, scope: !2607)
!2619 = !DILocation(line: 141, column: 25, scope: !2607)
!2620 = !DILocation(line: 141, column: 32, scope: !2607)
!2621 = !DILocation(line: 141, column: 30, scope: !2607)
!2622 = !DILocation(line: 141, column: 2, scope: !2607)
!2623 = !DILocation(line: 142, column: 23, scope: !2607)
!2624 = !DILocation(line: 142, column: 27, scope: !2607)
!2625 = !DILocation(line: 142, column: 9, scope: !2607)
!2626 = !DILocation(line: 142, column: 2, scope: !2607)
!2627 = distinct !DISubprogram(name: "cpumask_check", scope: !2038, file: !2038, line: 148, type: !2628, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2630)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{!7, !7}
!2630 = !{!2631}
!2631 = !DILocalVariable(name: "cpu", arg: 1, scope: !2627, file: !2038, line: 148, type: !7)
!2632 = !DILocation(line: 148, column: 64, scope: !2627)
!2633 = !DILocation(line: 150, column: 20, scope: !2627)
!2634 = !DILocation(line: 150, column: 2, scope: !2627)
!2635 = !DILocation(line: 151, column: 9, scope: !2627)
!2636 = !DILocation(line: 151, column: 2, scope: !2627)
!2637 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !2638, file: !2638, line: 66, type: !2639, scopeLine: 67, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2644)
!2638 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "99c9331425c603ea331e98d2e61fd6c5")
!2639 = !DISubroutineType(types: !2640)
!2640 = !{null, !2641, !294}
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2643)
!2643 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2644 = !{!2645, !2646}
!2645 = !DILocalVariable(name: "v", arg: 1, scope: !2637, file: !2638, line: 66, type: !2641)
!2646 = !DILocalVariable(name: "size", arg: 2, scope: !2637, file: !2638, line: 66, type: !294)
!2647 = !DILocation(line: 66, column: 73, scope: !2637)
!2648 = !DILocation(line: 66, column: 83, scope: !2637)
!2649 = !DILocation(line: 68, column: 19, scope: !2637)
!2650 = !DILocation(line: 68, column: 22, scope: !2637)
!2651 = !DILocation(line: 68, column: 2, scope: !2637)
!2652 = !DILocation(line: 69, column: 2, scope: !2637)
!2653 = !DILocation(line: 70, column: 1, scope: !2637)
!2654 = distinct !DISubprogram(name: "arch_test_bit", scope: !2655, file: !2655, line: 237, type: !2609, scopeLine: 238, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2656)
!2655 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3ef150f4468d59cde8c7cf723df5182")
!2656 = !{!2657, !2658}
!2657 = !DILocalVariable(name: "nr", arg: 1, scope: !2654, file: !2655, line: 237, type: !297)
!2658 = !DILocalVariable(name: "addr", arg: 2, scope: !2654, file: !2655, line: 237, type: !2611)
!2659 = !DILocation(line: 237, column: 29, scope: !2654)
!2660 = !DILocation(line: 237, column: 63, scope: !2654)
!2661 = !DILocation(line: 239, column: 30, scope: !2654)
!2662 = !DILocation(line: 239, column: 9, scope: !2654)
!2663 = !DILocation(line: 239, column: 54, scope: !2654)
!2664 = !DILocation(line: 239, column: 58, scope: !2654)
!2665 = !DILocation(line: 239, column: 36, scope: !2654)
!2666 = !DILocation(line: 240, column: 26, scope: !2654)
!2667 = !DILocation(line: 240, column: 30, scope: !2654)
!2668 = !DILocation(line: 240, column: 8, scope: !2654)
!2669 = !DILocation(line: 239, column: 2, scope: !2654)
!2670 = distinct !DISubprogram(name: "kasan_check_read", scope: !2671, file: !2671, line: 40, type: !2672, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2674)
!2671 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2238bcef786ad7fb484e6876008837c0")
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!604, !2641, !7}
!2674 = !{!2675, !2676}
!2675 = !DILocalVariable(name: "p", arg: 1, scope: !2670, file: !2671, line: 40, type: !2641)
!2676 = !DILocalVariable(name: "size", arg: 2, scope: !2670, file: !2671, line: 40, type: !7)
!2677 = !DILocation(line: 40, column: 58, scope: !2670)
!2678 = !DILocation(line: 40, column: 74, scope: !2670)
!2679 = !DILocation(line: 42, column: 2, scope: !2670)
!2680 = distinct !DISubprogram(name: "kcsan_check_access", scope: !2681, file: !2681, line: 229, type: !2682, scopeLine: 230, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2684)
!2681 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2357b0a3f0b55b3e5518d3885308ba8f")
!2682 = !DISubroutineType(types: !2683)
!2683 = !{null, !2641, !294, !46}
!2684 = !{!2685, !2686, !2687}
!2685 = !DILocalVariable(name: "ptr", arg: 1, scope: !2680, file: !2681, line: 229, type: !2641)
!2686 = !DILocalVariable(name: "size", arg: 2, scope: !2680, file: !2681, line: 229, type: !294)
!2687 = !DILocalVariable(name: "type", arg: 3, scope: !2680, file: !2681, line: 230, type: !46)
!2688 = !DILocation(line: 229, column: 60, scope: !2680)
!2689 = !DILocation(line: 229, column: 72, scope: !2680)
!2690 = !DILocation(line: 230, column: 15, scope: !2680)
!2691 = !DILocation(line: 230, column: 23, scope: !2680)
!2692 = distinct !DISubprogram(name: "constant_test_bit", scope: !2655, file: !2655, line: 204, type: !2693, scopeLine: 205, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2695)
!2693 = !DISubroutineType(types: !2694)
!2694 = !{!604, !283, !2611}
!2695 = !{!2696, !2697}
!2696 = !DILocalVariable(name: "nr", arg: 1, scope: !2692, file: !2655, line: 204, type: !283)
!2697 = !DILocalVariable(name: "addr", arg: 2, scope: !2692, file: !2655, line: 204, type: !2611)
!2698 = !DILocation(line: 204, column: 52, scope: !2692)
!2699 = !DILocation(line: 204, column: 86, scope: !2692)
!2700 = !DILocation(line: 206, column: 19, scope: !2692)
!2701 = !DILocation(line: 206, column: 22, scope: !2692)
!2702 = !DILocation(line: 206, column: 15, scope: !2692)
!2703 = !DILocation(line: 207, column: 4, scope: !2692)
!2704 = !DILocation(line: 207, column: 9, scope: !2692)
!2705 = !DILocation(line: 207, column: 12, scope: !2692)
!2706 = !DILocation(line: 206, column: 44, scope: !2692)
!2707 = !DILocation(line: 207, column: 37, scope: !2692)
!2708 = !DILocation(line: 206, column: 2, scope: !2692)
!2709 = distinct !DISubprogram(name: "variable_test_bit", scope: !2655, file: !2655, line: 224, type: !2693, scopeLine: 225, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2710)
!2710 = !{!2711, !2712, !2713}
!2711 = !DILocalVariable(name: "nr", arg: 1, scope: !2709, file: !2655, line: 224, type: !283)
!2712 = !DILocalVariable(name: "addr", arg: 2, scope: !2709, file: !2655, line: 224, type: !2611)
!2713 = !DILocalVariable(name: "oldbit", scope: !2709, file: !2655, line: 226, type: !604)
!2714 = !DILocation(line: 224, column: 52, scope: !2709)
!2715 = !DILocation(line: 224, column: 86, scope: !2709)
!2716 = !DILocation(line: 226, column: 2, scope: !2709)
!2717 = !DILocation(line: 226, column: 7, scope: !2709)
!2718 = !DILocation(line: 231, column: 33, scope: !2709)
!2719 = !DILocation(line: 231, column: 46, scope: !2709)
!2720 = !DILocation(line: 228, column: 2, scope: !2709)
!2721 = !{i64 2148000003, i64 2148000077}
!2722 = !DILocation(line: 233, column: 9, scope: !2709)
!2723 = !DILocation(line: 234, column: 1, scope: !2709)
!2724 = !DILocation(line: 233, column: 2, scope: !2709)
!2725 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !2038, file: !2038, line: 140, type: !2726, scopeLine: 141, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2728)
!2726 = !DISubroutineType(types: !2727)
!2727 = !{null, !7, !7}
!2728 = !{!2729, !2730}
!2729 = !DILocalVariable(name: "cpu", arg: 1, scope: !2725, file: !2038, line: 140, type: !7)
!2730 = !DILocalVariable(name: "bits", arg: 2, scope: !2725, file: !2038, line: 140, type: !7)
!2731 = !DILocation(line: 140, column: 60, scope: !2725)
!2732 = !DILocation(line: 140, column: 78, scope: !2725)
!2733 = !DILocation(line: 145, column: 1, scope: !2725)
