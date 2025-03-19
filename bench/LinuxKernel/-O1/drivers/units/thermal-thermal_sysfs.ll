; ModuleID = 'drivers/thermal/thermal_sysfs.c'
source_filename = "drivers/thermal/thermal_sysfs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.attribute_group = type { ptr, ptr, ptr, ptr, ptr }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
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
%struct.atomic_t = type { i32 }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i64, ptr, i32 }
%struct.hlist_node = type { ptr, ptr }
%struct.thermal_attr = type { %struct.device_attribute, [20 x i8] }
%struct.thermal_zone_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thermal_cooling_device = type { i32, ptr, i64, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.thermal_instance = type { i32, [20 x i8], ptr, ptr, ptr, i8, i64, i64, i64, [20 x i8], %struct.device_attribute, [20 x i8], %struct.device_attribute, %struct.list_head, %struct.list_head, i32, i8 }
%struct.thermal_governor = type { [20 x i8], ptr, ptr, ptr, %struct.list_head }
%struct.thermal_zone_params = type { [20 x i8], i8, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.thermal_trip = type { i32, i32, i32, ptr }
%struct.thermal_cooling_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }

@thermal_zone_attribute_groups = internal global [2 x ptr] [ptr @thermal_zone_attribute_group, ptr @thermal_zone_mode_attribute_group], align 16, !dbg !0
@cooling_device_attr_groups = internal global [3 x ptr] [ptr @cooling_device_attr_group, ptr null, ptr null], align 16, !dbg !2063
@.str = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1, !dbg !1943
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str.1 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !1946
@thermal_zone_attribute_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @thermal_zone_dev_attrs, ptr null }, align 8, !dbg !1951
@thermal_zone_mode_attribute_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @thermal_zone_mode_attrs, ptr null }, align 8, !dbg !2027
@thermal_zone_dev_attrs = internal global [13 x ptr] [ptr @dev_attr_type, ptr @dev_attr_temp, ptr @dev_attr_policy, ptr @dev_attr_available_policies, ptr @dev_attr_sustainable_power, ptr @dev_attr_k_po, ptr @dev_attr_k_pu, ptr @dev_attr_k_i, ptr @dev_attr_k_d, ptr @dev_attr_integral_cutoff, ptr @dev_attr_slope, ptr @dev_attr_offset, ptr null], align 16, !dbg !1953
@dev_attr_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292 }, ptr @type_show, ptr null }, align 8, !dbg !1963
@dev_attr_temp = internal global %struct.device_attribute { %struct.attribute { ptr @.str.4, i16 292 }, ptr @temp_show, ptr null }, align 8, !dbg !1969
@dev_attr_policy = internal global %struct.device_attribute { %struct.attribute { ptr @.str.5, i16 420 }, ptr @policy_show, ptr @policy_store }, align 8, !dbg !1974
@dev_attr_available_policies = internal global %struct.device_attribute { %struct.attribute { ptr @.str.7, i16 292 }, ptr @available_policies_show, ptr null }, align 8, !dbg !1984
@dev_attr_sustainable_power = internal global %struct.device_attribute { %struct.attribute { ptr @.str.8, i16 420 }, ptr @sustainable_power_show, ptr @sustainable_power_store }, align 8, !dbg !1991
@dev_attr_k_po = internal global %struct.device_attribute { %struct.attribute { ptr @.str.10, i16 420 }, ptr @k_po_show, ptr @k_po_store }, align 8, !dbg !1997
@dev_attr_k_pu = internal global %struct.device_attribute { %struct.attribute { ptr @.str.11, i16 420 }, ptr @k_pu_show, ptr @k_pu_store }, align 8, !dbg !2001
@dev_attr_k_i = internal global %struct.device_attribute { %struct.attribute { ptr @.str.12, i16 420 }, ptr @k_i_show, ptr @k_i_store }, align 8, !dbg !2005
@dev_attr_k_d = internal global %struct.device_attribute { %struct.attribute { ptr @.str.13, i16 420 }, ptr @k_d_show, ptr @k_d_store }, align 8, !dbg !2009
@dev_attr_integral_cutoff = internal global %struct.device_attribute { %struct.attribute { ptr @.str.14, i16 420 }, ptr @integral_cutoff_show, ptr @integral_cutoff_store }, align 8, !dbg !2014
@dev_attr_slope = internal global %struct.device_attribute { %struct.attribute { ptr @.str.15, i16 420 }, ptr @slope_show, ptr @slope_store }, align 8, !dbg !2021
@dev_attr_offset = internal global %struct.device_attribute { %struct.attribute { ptr @.str.16, i16 420 }, ptr @offset_show, ptr @offset_store }, align 8, !dbg !2025
@.str.2 = private unnamed_addr constant [5 x i8] c"type\00", align 1, !dbg !1958
@.str.3 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1, !dbg !1965
@.str.4 = private unnamed_addr constant [5 x i8] c"temp\00", align 1, !dbg !1967
@.str.5 = private unnamed_addr constant [7 x i8] c"policy\00", align 1, !dbg !1971
@.str.6 = private unnamed_addr constant [3 x i8] c"%s\00", align 1, !dbg !1976
@.str.7 = private unnamed_addr constant [19 x i8] c"available_policies\00", align 1, !dbg !1979
@.str.8 = private unnamed_addr constant [18 x i8] c"sustainable_power\00", align 1, !dbg !1986
@.str.9 = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1, !dbg !1993
@.str.10 = private unnamed_addr constant [5 x i8] c"k_po\00", align 1, !dbg !1995
@.str.11 = private unnamed_addr constant [5 x i8] c"k_pu\00", align 1, !dbg !1999
@.str.12 = private unnamed_addr constant [4 x i8] c"k_i\00", align 1, !dbg !2003
@.str.13 = private unnamed_addr constant [4 x i8] c"k_d\00", align 1, !dbg !2007
@.str.14 = private unnamed_addr constant [16 x i8] c"integral_cutoff\00", align 1, !dbg !2011
@.str.15 = private unnamed_addr constant [6 x i8] c"slope\00", align 1, !dbg !2016
@.str.16 = private unnamed_addr constant [7 x i8] c"offset\00", align 1, !dbg !2023
@thermal_zone_mode_attrs = internal global [2 x ptr] [ptr @dev_attr_mode, ptr null], align 16, !dbg !2029
@dev_attr_mode = internal global %struct.device_attribute { %struct.attribute { ptr @.str.17, i16 420 }, ptr @mode_show, ptr @mode_store }, align 8, !dbg !2034
@.str.17 = private unnamed_addr constant [5 x i8] c"mode\00", align 1, !dbg !2032
@.str.18 = private unnamed_addr constant [8 x i8] c"enabled\00", align 1, !dbg !2036
@.str.19 = private unnamed_addr constant [9 x i8] c"disabled\00", align 1, !dbg !2039
@.str.20 = private unnamed_addr constant [19 x i8] c"trip_point_%d_type\00", align 1, !dbg !2044
@.str.21 = private unnamed_addr constant [19 x i8] c"trip_point_%d_temp\00", align 1, !dbg !2046
@.str.22 = private unnamed_addr constant [19 x i8] c"trip_point_%d_hyst\00", align 1, !dbg !2048
@.str.23 = private unnamed_addr constant [10 x i8] c"critical\0A\00", align 1, !dbg !2050
@.str.24 = private unnamed_addr constant [5 x i8] c"hot\0A\00", align 1, !dbg !2055
@.str.25 = private unnamed_addr constant [9 x i8] c"passive\0A\00", align 1, !dbg !2057
@.str.26 = private unnamed_addr constant [8 x i8] c"active\0A\00", align 1, !dbg !2059
@.str.27 = private unnamed_addr constant [9 x i8] c"unknown\0A\00", align 1, !dbg !2061
@cooling_device_attr_group = internal constant %struct.attribute_group { ptr null, ptr null, ptr null, ptr @cooling_device_attrs, ptr null }, align 8, !dbg !2066
@cooling_device_attrs = internal global [4 x ptr] [ptr @dev_attr_cdev_type, ptr @dev_attr_max_state, ptr @dev_attr_cur_state, ptr null], align 16, !dbg !2068
@dev_attr_cdev_type = internal global %struct.device_attribute { %struct.attribute { ptr @.str.2, i16 292 }, ptr @cdev_type_show, ptr null }, align 8, !dbg !2071
@dev_attr_max_state = internal global %struct.device_attribute { %struct.attribute { ptr @.str.28, i16 292 }, ptr @max_state_show, ptr null }, align 8, !dbg !2075
@dev_attr_cur_state = internal global %struct.device_attribute { %struct.attribute { ptr @.str.30, i16 420 }, ptr @cur_state_show, ptr @cur_state_store }, align 8, !dbg !2081
@.str.28 = private unnamed_addr constant [10 x i8] c"max_state\00", align 1, !dbg !2073
@.str.29 = private unnamed_addr constant [5 x i8] c"%ld\0A\00", align 1, !dbg !2077
@.str.30 = private unnamed_addr constant [10 x i8] c"cur_state\00", align 1, !dbg !2079

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @thermal_zone_create_device_groups(ptr noundef %tz, i32 noundef %mask) #0 align 16 !dbg !2093 {
entry:
  %retval = alloca i32, align 4
  %tz.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  %groups = alloca ptr, align 8
  %i = alloca i32, align 4
  %size = alloca i32, align 4
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !2095, metadata !DIExpression()), !dbg !2101
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !2096, metadata !DIExpression()), !dbg !2102
  call void @llvm.lifetime.start.p0(i64 8, ptr %groups) #13, !dbg !2103
  call void @llvm.dbg.declare(metadata ptr %groups, metadata !2097, metadata !DIExpression()), !dbg !2104
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #13, !dbg !2105
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2098, metadata !DIExpression()), !dbg !2106
  call void @llvm.lifetime.start.p0(i64 4, ptr %size) #13, !dbg !2105
  call void @llvm.dbg.declare(metadata ptr %size, metadata !2099, metadata !DIExpression()), !dbg !2107
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #13, !dbg !2105
  call void @llvm.dbg.declare(metadata ptr %result, metadata !2100, metadata !DIExpression()), !dbg !2108
  store i32 4, ptr %size, align 4, !dbg !2109
  %0 = load i32, ptr %size, align 4, !dbg !2110
  %conv = sext i32 %0 to i64, !dbg !2110
  %call = call noalias ptr @kcalloc(i64 noundef %conv, i64 noundef 8, i32 noundef 3264) #14, !dbg !2111
  store ptr %call, ptr %groups, align 8, !dbg !2112
  %1 = load ptr, ptr %groups, align 8, !dbg !2113
  %tobool = icmp ne ptr %1, null, !dbg !2113
  br i1 %tobool, label %if.end, label %if.then, !dbg !2115

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !2116
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2116

if.end:                                           ; preds = %entry
  store i32 0, ptr %i, align 4, !dbg !2117
  br label %for.cond, !dbg !2119

for.cond:                                         ; preds = %for.inc, %if.end
  %2 = load i32, ptr %i, align 4, !dbg !2120
  %3 = load i32, ptr %size, align 4, !dbg !2122
  %sub = sub i32 %3, 2, !dbg !2123
  %cmp = icmp slt i32 %2, %sub, !dbg !2124
  br i1 %cmp, label %for.body, label %for.end, !dbg !2125

for.body:                                         ; preds = %for.cond
  %4 = load i32, ptr %i, align 4, !dbg !2126
  %idxprom = sext i32 %4 to i64, !dbg !2127
  %arrayidx = getelementptr [2 x ptr], ptr @thermal_zone_attribute_groups, i64 0, i64 %idxprom, !dbg !2127
  %5 = load ptr, ptr %arrayidx, align 8, !dbg !2127
  %6 = load ptr, ptr %groups, align 8, !dbg !2128
  %7 = load i32, ptr %i, align 4, !dbg !2129
  %idxprom2 = sext i32 %7 to i64, !dbg !2128
  %arrayidx3 = getelementptr ptr, ptr %6, i64 %idxprom2, !dbg !2128
  store ptr %5, ptr %arrayidx3, align 8, !dbg !2130
  br label %for.inc, !dbg !2128

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !dbg !2131
  %inc = add i32 %8, 1, !dbg !2131
  store i32 %inc, ptr %i, align 4, !dbg !2131
  br label %for.cond, !dbg !2132, !llvm.loop !2133

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %tz.addr, align 8, !dbg !2137
  %num_trips = getelementptr inbounds %struct.thermal_zone_device, ptr %9, i32 0, i32 11, !dbg !2139
  %10 = load i32, ptr %num_trips, align 8, !dbg !2139
  %tobool4 = icmp ne i32 %10, 0, !dbg !2137
  br i1 %tobool4, label %if.then5, label %if.end13, !dbg !2140

if.then5:                                         ; preds = %for.end
  %11 = load ptr, ptr %tz.addr, align 8, !dbg !2141
  %12 = load i32, ptr %mask.addr, align 4, !dbg !2143
  %call6 = call i32 @create_trip_attrs(ptr noundef %11, i32 noundef %12) #15, !dbg !2144
  store i32 %call6, ptr %result, align 4, !dbg !2145
  %13 = load i32, ptr %result, align 4, !dbg !2146
  %tobool7 = icmp ne i32 %13, 0, !dbg !2146
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !2148

if.then8:                                         ; preds = %if.then5
  %14 = load ptr, ptr %groups, align 8, !dbg !2149
  call void @kfree(ptr noundef %14) #15, !dbg !2151
  %15 = load i32, ptr %result, align 4, !dbg !2152
  store i32 %15, ptr %retval, align 4, !dbg !2153
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2153

if.end9:                                          ; preds = %if.then5
  %16 = load ptr, ptr %tz.addr, align 8, !dbg !2154
  %trips_attribute_group = getelementptr inbounds %struct.thermal_zone_device, ptr %16, i32 0, i32 4, !dbg !2155
  %17 = load ptr, ptr %groups, align 8, !dbg !2156
  %18 = load i32, ptr %size, align 4, !dbg !2157
  %sub10 = sub i32 %18, 2, !dbg !2158
  %idxprom11 = sext i32 %sub10 to i64, !dbg !2156
  %arrayidx12 = getelementptr ptr, ptr %17, i64 %idxprom11, !dbg !2156
  store ptr %trips_attribute_group, ptr %arrayidx12, align 8, !dbg !2159
  br label %if.end13, !dbg !2160

if.end13:                                         ; preds = %if.end9, %for.end
  %19 = load ptr, ptr %groups, align 8, !dbg !2161
  %20 = load ptr, ptr %tz.addr, align 8, !dbg !2162
  %device = getelementptr inbounds %struct.thermal_zone_device, ptr %20, i32 0, i32 2, !dbg !2163
  %groups14 = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 31, !dbg !2164
  store ptr %19, ptr %groups14, align 8, !dbg !2165
  store i32 0, ptr %retval, align 4, !dbg !2166
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2166

cleanup:                                          ; preds = %if.end13, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #13, !dbg !2167
  call void @llvm.lifetime.end.p0(i64 4, ptr %size) #13, !dbg !2167
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #13, !dbg !2167
  call void @llvm.lifetime.end.p0(i64 8, ptr %groups) #13, !dbg !2167
  %21 = load i32, ptr %retval, align 4, !dbg !2167
  ret i32 %21, !dbg !2167
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kcalloc(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !2168 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2172, metadata !DIExpression()), !dbg !2175
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2173, metadata !DIExpression()), !dbg !2176
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2174, metadata !DIExpression()), !dbg !2177
  %0 = load i64, ptr %n.addr, align 8, !dbg !2178
  %1 = load i64, ptr %size.addr, align 8, !dbg !2179
  %2 = load i32, ptr %flags.addr, align 4, !dbg !2180
  %or = or i32 %2, 256, !dbg !2181
  %call = call noalias ptr @kmalloc_array(i64 noundef %0, i64 noundef %1, i32 noundef %or) #14, !dbg !2182
  ret ptr %call, !dbg !2183
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @create_trip_attrs(ptr noundef %tz, i32 noundef %mask) #0 align 16 !dbg !2184 {
entry:
  %retval = alloca i32, align 4
  %tz.addr = alloca ptr, align 8
  %mask.addr = alloca i32, align 4
  %attrs = alloca ptr, align 8
  %indx = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !2186, metadata !DIExpression()), !dbg !2190
  store i32 %mask, ptr %mask.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %mask.addr, metadata !2187, metadata !DIExpression()), !dbg !2191
  call void @llvm.lifetime.start.p0(i64 8, ptr %attrs) #13, !dbg !2192
  call void @llvm.dbg.declare(metadata ptr %attrs, metadata !2188, metadata !DIExpression()), !dbg !2193
  call void @llvm.lifetime.start.p0(i64 4, ptr %indx) #13, !dbg !2194
  call void @llvm.dbg.declare(metadata ptr %indx, metadata !2189, metadata !DIExpression()), !dbg !2195
  %0 = load ptr, ptr %tz.addr, align 8, !dbg !2196
  %num_trips = getelementptr inbounds %struct.thermal_zone_device, ptr %0, i32 0, i32 11, !dbg !2198
  %1 = load i32, ptr %num_trips, align 8, !dbg !2198
  %cmp = icmp sle i32 %1, 0, !dbg !2199
  br i1 %cmp, label %if.then, label %if.end, !dbg !2200

if.then:                                          ; preds = %entry
  store i32 -22, ptr %retval, align 4, !dbg !2201
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2201

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %tz.addr, align 8, !dbg !2202
  %num_trips1 = getelementptr inbounds %struct.thermal_zone_device, ptr %2, i32 0, i32 11, !dbg !2203
  %3 = load i32, ptr %num_trips1, align 8, !dbg !2203
  %conv = sext i32 %3 to i64, !dbg !2202
  %call = call noalias ptr @kcalloc(i64 noundef %conv, i64 noundef 56, i32 noundef 3264) #14, !dbg !2204
  %4 = load ptr, ptr %tz.addr, align 8, !dbg !2205
  %trip_type_attrs = getelementptr inbounds %struct.thermal_zone_device, ptr %4, i32 0, i32 6, !dbg !2206
  store ptr %call, ptr %trip_type_attrs, align 8, !dbg !2207
  %5 = load ptr, ptr %tz.addr, align 8, !dbg !2208
  %trip_type_attrs2 = getelementptr inbounds %struct.thermal_zone_device, ptr %5, i32 0, i32 6, !dbg !2210
  %6 = load ptr, ptr %trip_type_attrs2, align 8, !dbg !2210
  %tobool = icmp ne ptr %6, null, !dbg !2208
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !2211

if.then3:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !2212
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2212

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %tz.addr, align 8, !dbg !2213
  %num_trips5 = getelementptr inbounds %struct.thermal_zone_device, ptr %7, i32 0, i32 11, !dbg !2214
  %8 = load i32, ptr %num_trips5, align 8, !dbg !2214
  %conv6 = sext i32 %8 to i64, !dbg !2213
  %call7 = call noalias ptr @kcalloc(i64 noundef %conv6, i64 noundef 56, i32 noundef 3264) #14, !dbg !2215
  %9 = load ptr, ptr %tz.addr, align 8, !dbg !2216
  %trip_temp_attrs = getelementptr inbounds %struct.thermal_zone_device, ptr %9, i32 0, i32 5, !dbg !2217
  store ptr %call7, ptr %trip_temp_attrs, align 8, !dbg !2218
  %10 = load ptr, ptr %tz.addr, align 8, !dbg !2219
  %trip_temp_attrs8 = getelementptr inbounds %struct.thermal_zone_device, ptr %10, i32 0, i32 5, !dbg !2221
  %11 = load ptr, ptr %trip_temp_attrs8, align 8, !dbg !2221
  %tobool9 = icmp ne ptr %11, null, !dbg !2219
  br i1 %tobool9, label %if.end12, label %if.then10, !dbg !2222

if.then10:                                        ; preds = %if.end4
  %12 = load ptr, ptr %tz.addr, align 8, !dbg !2223
  %trip_type_attrs11 = getelementptr inbounds %struct.thermal_zone_device, ptr %12, i32 0, i32 6, !dbg !2225
  %13 = load ptr, ptr %trip_type_attrs11, align 8, !dbg !2225
  call void @kfree(ptr noundef %13) #15, !dbg !2226
  store i32 -12, ptr %retval, align 4, !dbg !2227
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2227

if.end12:                                         ; preds = %if.end4
  %14 = load ptr, ptr %tz.addr, align 8, !dbg !2228
  %num_trips13 = getelementptr inbounds %struct.thermal_zone_device, ptr %14, i32 0, i32 11, !dbg !2229
  %15 = load i32, ptr %num_trips13, align 8, !dbg !2229
  %conv14 = sext i32 %15 to i64, !dbg !2228
  %call15 = call noalias ptr @kcalloc(i64 noundef %conv14, i64 noundef 56, i32 noundef 3264) #14, !dbg !2230
  %16 = load ptr, ptr %tz.addr, align 8, !dbg !2231
  %trip_hyst_attrs = getelementptr inbounds %struct.thermal_zone_device, ptr %16, i32 0, i32 7, !dbg !2232
  store ptr %call15, ptr %trip_hyst_attrs, align 8, !dbg !2233
  %17 = load ptr, ptr %tz.addr, align 8, !dbg !2234
  %trip_hyst_attrs16 = getelementptr inbounds %struct.thermal_zone_device, ptr %17, i32 0, i32 7, !dbg !2236
  %18 = load ptr, ptr %trip_hyst_attrs16, align 8, !dbg !2236
  %tobool17 = icmp ne ptr %18, null, !dbg !2234
  br i1 %tobool17, label %if.end21, label %if.then18, !dbg !2237

if.then18:                                        ; preds = %if.end12
  %19 = load ptr, ptr %tz.addr, align 8, !dbg !2238
  %trip_type_attrs19 = getelementptr inbounds %struct.thermal_zone_device, ptr %19, i32 0, i32 6, !dbg !2240
  %20 = load ptr, ptr %trip_type_attrs19, align 8, !dbg !2240
  call void @kfree(ptr noundef %20) #15, !dbg !2241
  %21 = load ptr, ptr %tz.addr, align 8, !dbg !2242
  %trip_temp_attrs20 = getelementptr inbounds %struct.thermal_zone_device, ptr %21, i32 0, i32 5, !dbg !2243
  %22 = load ptr, ptr %trip_temp_attrs20, align 8, !dbg !2243
  call void @kfree(ptr noundef %22) #15, !dbg !2244
  store i32 -12, ptr %retval, align 4, !dbg !2245
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2245

if.end21:                                         ; preds = %if.end12
  %23 = load ptr, ptr %tz.addr, align 8, !dbg !2246
  %num_trips22 = getelementptr inbounds %struct.thermal_zone_device, ptr %23, i32 0, i32 11, !dbg !2247
  %24 = load i32, ptr %num_trips22, align 8, !dbg !2247
  %mul = mul i32 %24, 3, !dbg !2248
  %add = add i32 %mul, 1, !dbg !2249
  %conv23 = sext i32 %add to i64, !dbg !2246
  %call24 = call noalias ptr @kcalloc(i64 noundef %conv23, i64 noundef 8, i32 noundef 3264) #14, !dbg !2250
  store ptr %call24, ptr %attrs, align 8, !dbg !2251
  %25 = load ptr, ptr %attrs, align 8, !dbg !2252
  %tobool25 = icmp ne ptr %25, null, !dbg !2252
  br i1 %tobool25, label %if.end30, label %if.then26, !dbg !2254

if.then26:                                        ; preds = %if.end21
  %26 = load ptr, ptr %tz.addr, align 8, !dbg !2255
  %trip_type_attrs27 = getelementptr inbounds %struct.thermal_zone_device, ptr %26, i32 0, i32 6, !dbg !2257
  %27 = load ptr, ptr %trip_type_attrs27, align 8, !dbg !2257
  call void @kfree(ptr noundef %27) #15, !dbg !2258
  %28 = load ptr, ptr %tz.addr, align 8, !dbg !2259
  %trip_temp_attrs28 = getelementptr inbounds %struct.thermal_zone_device, ptr %28, i32 0, i32 5, !dbg !2260
  %29 = load ptr, ptr %trip_temp_attrs28, align 8, !dbg !2260
  call void @kfree(ptr noundef %29) #15, !dbg !2261
  %30 = load ptr, ptr %tz.addr, align 8, !dbg !2262
  %trip_hyst_attrs29 = getelementptr inbounds %struct.thermal_zone_device, ptr %30, i32 0, i32 7, !dbg !2263
  %31 = load ptr, ptr %trip_hyst_attrs29, align 8, !dbg !2263
  call void @kfree(ptr noundef %31) #15, !dbg !2264
  store i32 -12, ptr %retval, align 4, !dbg !2265
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2265

if.end30:                                         ; preds = %if.end21
  store i32 0, ptr %indx, align 4, !dbg !2266
  br label %for.cond, !dbg !2268

for.cond:                                         ; preds = %for.inc, %if.end30
  %32 = load i32, ptr %indx, align 4, !dbg !2269
  %33 = load ptr, ptr %tz.addr, align 8, !dbg !2271
  %num_trips31 = getelementptr inbounds %struct.thermal_zone_device, ptr %33, i32 0, i32 11, !dbg !2272
  %34 = load i32, ptr %num_trips31, align 8, !dbg !2272
  %cmp32 = icmp slt i32 %32, %34, !dbg !2273
  br i1 %cmp32, label %for.body, label %for.end, !dbg !2274

for.body:                                         ; preds = %for.cond
  %35 = load ptr, ptr %tz.addr, align 8, !dbg !2275
  %trip_type_attrs34 = getelementptr inbounds %struct.thermal_zone_device, ptr %35, i32 0, i32 6, !dbg !2277
  %36 = load ptr, ptr %trip_type_attrs34, align 8, !dbg !2277
  %37 = load i32, ptr %indx, align 4, !dbg !2278
  %idxprom = sext i32 %37 to i64, !dbg !2275
  %arrayidx = getelementptr %struct.thermal_attr, ptr %36, i64 %idxprom, !dbg !2275
  %name = getelementptr inbounds %struct.thermal_attr, ptr %arrayidx, i32 0, i32 1, !dbg !2279
  %arraydecay = getelementptr inbounds [20 x i8], ptr %name, i64 0, i64 0, !dbg !2275
  %38 = load i32, ptr %indx, align 4, !dbg !2280
  %call35 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 20, ptr noundef @.str.20, i32 noundef %38) #15, !dbg !2281
  br label %do.body, !dbg !2282

do.body:                                          ; preds = %for.body
  br label %do.cond, !dbg !2283

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2283

do.end:                                           ; preds = %do.cond
  %39 = load ptr, ptr %tz.addr, align 8, !dbg !2285
  %trip_type_attrs36 = getelementptr inbounds %struct.thermal_zone_device, ptr %39, i32 0, i32 6, !dbg !2286
  %40 = load ptr, ptr %trip_type_attrs36, align 8, !dbg !2286
  %41 = load i32, ptr %indx, align 4, !dbg !2287
  %idxprom37 = sext i32 %41 to i64, !dbg !2285
  %arrayidx38 = getelementptr %struct.thermal_attr, ptr %40, i64 %idxprom37, !dbg !2285
  %name39 = getelementptr inbounds %struct.thermal_attr, ptr %arrayidx38, i32 0, i32 1, !dbg !2288
  %arraydecay40 = getelementptr inbounds [20 x i8], ptr %name39, i64 0, i64 0, !dbg !2285
  %42 = load ptr, ptr %tz.addr, align 8, !dbg !2289
  %trip_type_attrs41 = getelementptr inbounds %struct.thermal_zone_device, ptr %42, i32 0, i32 6, !dbg !2290
  %43 = load ptr, ptr %trip_type_attrs41, align 8, !dbg !2290
  %44 = load i32, ptr %indx, align 4, !dbg !2291
  %idxprom42 = sext i32 %44 to i64, !dbg !2289
  %arrayidx43 = getelementptr %struct.thermal_attr, ptr %43, i64 %idxprom42, !dbg !2289
  %attr = getelementptr inbounds %struct.thermal_attr, ptr %arrayidx43, i32 0, i32 0, !dbg !2292
  %attr44 = getelementptr inbounds %struct.device_attribute, ptr %attr, i32 0, i32 0, !dbg !2293
  %name45 = getelementptr inbounds %struct.attribute, ptr %attr44, i32 0, i32 0, !dbg !2294
  store ptr %arraydecay40, ptr %name45, align 8, !dbg !2295
  %45 = load ptr, ptr %tz.addr, align 8, !dbg !2296
  %trip_type_attrs46 = getelementptr inbounds %struct.thermal_zone_device, ptr %45, i32 0, i32 6, !dbg !2297
  %46 = load ptr, ptr %trip_type_attrs46, align 8, !dbg !2297
  %47 = load i32, ptr %indx, align 4, !dbg !2298
  %idxprom47 = sext i32 %47 to i64, !dbg !2296
  %arrayidx48 = getelementptr %struct.thermal_attr, ptr %46, i64 %idxprom47, !dbg !2296
  %attr49 = getelementptr inbounds %struct.thermal_attr, ptr %arrayidx48, i32 0, i32 0, !dbg !2299
  %attr50 = getelementptr inbounds %struct.device_attribute, ptr %attr49, i32 0, i32 0, !dbg !2300
  %mode = getelementptr inbounds %struct.attribute, ptr %attr50, i32 0, i32 1, !dbg !2301
  store i16 292, ptr %mode, align 8, !dbg !2302
  %48 = load ptr, ptr %tz.addr, align 8, !dbg !2303
  %trip_type_attrs51 = getelementptr inbounds %struct.thermal_zone_device, ptr %48, i32 0, i32 6, !dbg !2304
  %49 = load ptr, ptr %trip_type_attrs51, align 8, !dbg !2304
  %50 = load i32, ptr %indx, align 4, !dbg !2305
  %idxprom52 = sext i32 %50 to i64, !dbg !2303
  %arrayidx53 = getelementptr %struct.thermal_attr, ptr %49, i64 %idxprom52, !dbg !2303
  %attr54 = getelementptr inbounds %struct.thermal_attr, ptr %arrayidx53, i32 0, i32 0, !dbg !2306
  %show = getelementptr inbounds %struct.device_attribute, ptr %attr54, i32 0, i32 1, !dbg !2307
  store ptr @trip_point_type_show, ptr %show, align 8, !dbg !2308
  %51 = load ptr, ptr %tz.addr, align 8, !dbg !2309
  %trip_type_attrs55 = getelementptr inbounds %struct.thermal_zone_device, ptr %51, i32 0, i32 6, !dbg !2310
  %52 = load ptr, ptr %trip_type_attrs55, align 8, !dbg !2310
  %53 = load i32, ptr %indx, align 4, !dbg !2311
  %idxprom56 = sext i32 %53 to i64, !dbg !2309
  %arrayidx57 = getelementptr %struct.thermal_attr, ptr %52, i64 %idxprom56, !dbg !2309
  %attr58 = getelementptr inbounds %struct.thermal_attr, ptr %arrayidx57, i32 0, i32 0, !dbg !2312
  %attr59 = getelementptr inbounds %struct.device_attribute, ptr %attr58, i32 0, i32 0, !dbg !2313
  %54 = load ptr, ptr %attrs, align 8, !dbg !2314
  %55 = load i32, ptr %indx, align 4, !dbg !2315
  %idxprom60 = sext i32 %55 to i64, !dbg !2314
  %arrayidx61 = getelementptr ptr, ptr %54, i64 %idxprom60, !dbg !2314
  store ptr %attr59, ptr %arrayidx61, align 8, !dbg !2316
  %56 = load ptr, ptr %tz.addr, align 8, !dbg !2317
  %trip_temp_attrs62 = getelementptr inbounds %struct.thermal_zone_device, ptr %56, i32 0, i32 5, !dbg !2318
  %57 = load ptr, ptr %trip_temp_attrs62, align 8, !dbg !2318
  %58 = load i32, ptr %indx, align 4, !dbg !2319
  %idxprom63 = sext i32 %58 to i64, !dbg !2317
  %arrayidx64 = getelementptr %struct.thermal_attr, ptr %57, i64 %idxprom63, !dbg !2317
  %name65 = getelementptr inbounds %struct.thermal_attr, ptr %arrayidx64, i32 0, i32 1, !dbg !2320
  %arraydecay66 = getelementptr inbounds [20 x i8], ptr %name65, i64 0, i64 0, !dbg !2317
  %59 = load i32, ptr %indx, align 4, !dbg !2321
  %call67 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay66, i64 noundef 20, ptr noundef @.str.21, i32 noundef %59) #15, !dbg !2322
  br label %do.body68, !dbg !2323

do.body68:                                        ; preds = %do.end
  br label %do.cond69, !dbg !2324

do.cond69:                                        ; preds = %do.body68
  br label %do.end70, !dbg !2324

do.end70:                                         ; preds = %do.cond69
  %60 = load ptr, ptr %tz.addr, align 8, !dbg !2326
  %trip_temp_attrs71 = getelementptr inbounds %struct.thermal_zone_device, ptr %60, i32 0, i32 5, !dbg !2327
  %61 = load ptr, ptr %trip_temp_attrs71, align 8, !dbg !2327
  %62 = load i32, ptr %indx, align 4, !dbg !2328
  %idxprom72 = sext i32 %62 to i64, !dbg !2326
  %arrayidx73 = getelementptr %struct.thermal_attr, ptr %61, i64 %idxprom72, !dbg !2326
  %name74 = getelementptr inbounds %struct.thermal_attr, ptr %arrayidx73, i32 0, i32 1, !dbg !2329
  %arraydecay75 = getelementptr inbounds [20 x i8], ptr %name74, i64 0, i64 0, !dbg !2326
  %63 = load ptr, ptr %tz.addr, align 8, !dbg !2330
  %trip_temp_attrs76 = getelementptr inbounds %struct.thermal_zone_device, ptr %63, i32 0, i32 5, !dbg !2331
  %64 = load ptr, ptr %trip_temp_attrs76, align 8, !dbg !2331
  %65 = load i32, ptr %indx, align 4, !dbg !2332
  %idxprom77 = sext i32 %65 to i64, !dbg !2330
  %arrayidx78 = getelementptr %struct.thermal_attr, ptr %64, i64 %idxprom77, !dbg !2330
  %attr79 = getelementptr inbounds %struct.thermal_attr, ptr %arrayidx78, i32 0, i32 0, !dbg !2333
  %attr80 = getelementptr inbounds %struct.device_attribute, ptr %attr79, i32 0, i32 0, !dbg !2334
  %name81 = getelementptr inbounds %struct.attribute, ptr %attr80, i32 0, i32 0, !dbg !2335
  store ptr %arraydecay75, ptr %name81, align 8, !dbg !2336
  %66 = load ptr, ptr %tz.addr, align 8, !dbg !2337
  %trip_temp_attrs82 = getelementptr inbounds %struct.thermal_zone_device, ptr %66, i32 0, i32 5, !dbg !2338
  %67 = load ptr, ptr %trip_temp_attrs82, align 8, !dbg !2338
  %68 = load i32, ptr %indx, align 4, !dbg !2339
  %idxprom83 = sext i32 %68 to i64, !dbg !2337
  %arrayidx84 = getelementptr %struct.thermal_attr, ptr %67, i64 %idxprom83, !dbg !2337
  %attr85 = getelementptr inbounds %struct.thermal_attr, ptr %arrayidx84, i32 0, i32 0, !dbg !2340
  %attr86 = getelementptr inbounds %struct.device_attribute, ptr %attr85, i32 0, i32 0, !dbg !2341
  %mode87 = getelementptr inbounds %struct.attribute, ptr %attr86, i32 0, i32 1, !dbg !2342
  store i16 292, ptr %mode87, align 8, !dbg !2343
  %69 = load ptr, ptr %tz.addr, align 8, !dbg !2344
  %trip_temp_attrs88 = getelementptr inbounds %struct.thermal_zone_device, ptr %69, i32 0, i32 5, !dbg !2345
  %70 = load ptr, ptr %trip_temp_attrs88, align 8, !dbg !2345
  %71 = load i32, ptr %indx, align 4, !dbg !2346
  %idxprom89 = sext i32 %71 to i64, !dbg !2344
  %arrayidx90 = getelementptr %struct.thermal_attr, ptr %70, i64 %idxprom89, !dbg !2344
  %attr91 = getelementptr inbounds %struct.thermal_attr, ptr %arrayidx90, i32 0, i32 0, !dbg !2347
  %show92 = getelementptr inbounds %struct.device_attribute, ptr %attr91, i32 0, i32 1, !dbg !2348
  store ptr @trip_point_temp_show, ptr %show92, align 8, !dbg !2349
  %72 = load i32, ptr %mask.addr, align 4, !dbg !2350
  %73 = load i32, ptr %indx, align 4, !dbg !2352
  %shl = shl i32 1, %73, !dbg !2353
  %and = and i32 %72, %shl, !dbg !2354
  %tobool93 = icmp ne i32 %and, 0, !dbg !2354
  br i1 %tobool93, label %if.then94, label %if.end107, !dbg !2355

if.then94:                                        ; preds = %do.end70
  %74 = load ptr, ptr %tz.addr, align 8, !dbg !2356
  %trip_temp_attrs95 = getelementptr inbounds %struct.thermal_zone_device, ptr %74, i32 0, i32 5, !dbg !2358
  %75 = load ptr, ptr %trip_temp_attrs95, align 8, !dbg !2358
  %76 = load i32, ptr %indx, align 4, !dbg !2359
  %idxprom96 = sext i32 %76 to i64, !dbg !2356
  %arrayidx97 = getelementptr %struct.thermal_attr, ptr %75, i64 %idxprom96, !dbg !2356
  %attr98 = getelementptr inbounds %struct.thermal_attr, ptr %arrayidx97, i32 0, i32 0, !dbg !2360
  %attr99 = getelementptr inbounds %struct.device_attribute, ptr %attr98, i32 0, i32 0, !dbg !2361
  %mode100 = getelementptr inbounds %struct.attribute, ptr %attr99, i32 0, i32 1, !dbg !2362
  %77 = load i16, ptr %mode100, align 8, !dbg !2363
  %conv101 = zext i16 %77 to i32, !dbg !2363
  %or = or i32 %conv101, 128, !dbg !2363
  %conv102 = trunc i32 %or to i16, !dbg !2363
  store i16 %conv102, ptr %mode100, align 8, !dbg !2363
  %78 = load ptr, ptr %tz.addr, align 8, !dbg !2364
  %trip_temp_attrs103 = getelementptr inbounds %struct.thermal_zone_device, ptr %78, i32 0, i32 5, !dbg !2365
  %79 = load ptr, ptr %trip_temp_attrs103, align 8, !dbg !2365
  %80 = load i32, ptr %indx, align 4, !dbg !2366
  %idxprom104 = sext i32 %80 to i64, !dbg !2364
  %arrayidx105 = getelementptr %struct.thermal_attr, ptr %79, i64 %idxprom104, !dbg !2364
  %attr106 = getelementptr inbounds %struct.thermal_attr, ptr %arrayidx105, i32 0, i32 0, !dbg !2367
  %store = getelementptr inbounds %struct.device_attribute, ptr %attr106, i32 0, i32 2, !dbg !2368
  store ptr @trip_point_temp_store, ptr %store, align 8, !dbg !2369
  br label %if.end107, !dbg !2370

if.end107:                                        ; preds = %if.then94, %do.end70
  %81 = load ptr, ptr %tz.addr, align 8, !dbg !2371
  %trip_temp_attrs108 = getelementptr inbounds %struct.thermal_zone_device, ptr %81, i32 0, i32 5, !dbg !2372
  %82 = load ptr, ptr %trip_temp_attrs108, align 8, !dbg !2372
  %83 = load i32, ptr %indx, align 4, !dbg !2373
  %idxprom109 = sext i32 %83 to i64, !dbg !2371
  %arrayidx110 = getelementptr %struct.thermal_attr, ptr %82, i64 %idxprom109, !dbg !2371
  %attr111 = getelementptr inbounds %struct.thermal_attr, ptr %arrayidx110, i32 0, i32 0, !dbg !2374
  %attr112 = getelementptr inbounds %struct.device_attribute, ptr %attr111, i32 0, i32 0, !dbg !2375
  %84 = load ptr, ptr %attrs, align 8, !dbg !2376
  %85 = load i32, ptr %indx, align 4, !dbg !2377
  %86 = load ptr, ptr %tz.addr, align 8, !dbg !2378
  %num_trips113 = getelementptr inbounds %struct.thermal_zone_device, ptr %86, i32 0, i32 11, !dbg !2379
  %87 = load i32, ptr %num_trips113, align 8, !dbg !2379
  %add114 = add i32 %85, %87, !dbg !2380
  %idxprom115 = sext i32 %add114 to i64, !dbg !2376
  %arrayidx116 = getelementptr ptr, ptr %84, i64 %idxprom115, !dbg !2376
  store ptr %attr112, ptr %arrayidx116, align 8, !dbg !2381
  %88 = load ptr, ptr %tz.addr, align 8, !dbg !2382
  %trip_hyst_attrs117 = getelementptr inbounds %struct.thermal_zone_device, ptr %88, i32 0, i32 7, !dbg !2383
  %89 = load ptr, ptr %trip_hyst_attrs117, align 8, !dbg !2383
  %90 = load i32, ptr %indx, align 4, !dbg !2384
  %idxprom118 = sext i32 %90 to i64, !dbg !2382
  %arrayidx119 = getelementptr %struct.thermal_attr, ptr %89, i64 %idxprom118, !dbg !2382
  %name120 = getelementptr inbounds %struct.thermal_attr, ptr %arrayidx119, i32 0, i32 1, !dbg !2385
  %arraydecay121 = getelementptr inbounds [20 x i8], ptr %name120, i64 0, i64 0, !dbg !2382
  %91 = load i32, ptr %indx, align 4, !dbg !2386
  %call122 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay121, i64 noundef 20, ptr noundef @.str.22, i32 noundef %91) #15, !dbg !2387
  br label %do.body123, !dbg !2388

do.body123:                                       ; preds = %if.end107
  br label %do.cond124, !dbg !2389

do.cond124:                                       ; preds = %do.body123
  br label %do.end125, !dbg !2389

do.end125:                                        ; preds = %do.cond124
  %92 = load ptr, ptr %tz.addr, align 8, !dbg !2391
  %trip_hyst_attrs126 = getelementptr inbounds %struct.thermal_zone_device, ptr %92, i32 0, i32 7, !dbg !2392
  %93 = load ptr, ptr %trip_hyst_attrs126, align 8, !dbg !2392
  %94 = load i32, ptr %indx, align 4, !dbg !2393
  %idxprom127 = sext i32 %94 to i64, !dbg !2391
  %arrayidx128 = getelementptr %struct.thermal_attr, ptr %93, i64 %idxprom127, !dbg !2391
  %name129 = getelementptr inbounds %struct.thermal_attr, ptr %arrayidx128, i32 0, i32 1, !dbg !2394
  %arraydecay130 = getelementptr inbounds [20 x i8], ptr %name129, i64 0, i64 0, !dbg !2391
  %95 = load ptr, ptr %tz.addr, align 8, !dbg !2395
  %trip_hyst_attrs131 = getelementptr inbounds %struct.thermal_zone_device, ptr %95, i32 0, i32 7, !dbg !2396
  %96 = load ptr, ptr %trip_hyst_attrs131, align 8, !dbg !2396
  %97 = load i32, ptr %indx, align 4, !dbg !2397
  %idxprom132 = sext i32 %97 to i64, !dbg !2395
  %arrayidx133 = getelementptr %struct.thermal_attr, ptr %96, i64 %idxprom132, !dbg !2395
  %attr134 = getelementptr inbounds %struct.thermal_attr, ptr %arrayidx133, i32 0, i32 0, !dbg !2398
  %attr135 = getelementptr inbounds %struct.device_attribute, ptr %attr134, i32 0, i32 0, !dbg !2399
  %name136 = getelementptr inbounds %struct.attribute, ptr %attr135, i32 0, i32 0, !dbg !2400
  store ptr %arraydecay130, ptr %name136, align 8, !dbg !2401
  %98 = load ptr, ptr %tz.addr, align 8, !dbg !2402
  %trip_hyst_attrs137 = getelementptr inbounds %struct.thermal_zone_device, ptr %98, i32 0, i32 7, !dbg !2403
  %99 = load ptr, ptr %trip_hyst_attrs137, align 8, !dbg !2403
  %100 = load i32, ptr %indx, align 4, !dbg !2404
  %idxprom138 = sext i32 %100 to i64, !dbg !2402
  %arrayidx139 = getelementptr %struct.thermal_attr, ptr %99, i64 %idxprom138, !dbg !2402
  %attr140 = getelementptr inbounds %struct.thermal_attr, ptr %arrayidx139, i32 0, i32 0, !dbg !2405
  %attr141 = getelementptr inbounds %struct.device_attribute, ptr %attr140, i32 0, i32 0, !dbg !2406
  %mode142 = getelementptr inbounds %struct.attribute, ptr %attr141, i32 0, i32 1, !dbg !2407
  store i16 292, ptr %mode142, align 8, !dbg !2408
  %101 = load ptr, ptr %tz.addr, align 8, !dbg !2409
  %trip_hyst_attrs143 = getelementptr inbounds %struct.thermal_zone_device, ptr %101, i32 0, i32 7, !dbg !2410
  %102 = load ptr, ptr %trip_hyst_attrs143, align 8, !dbg !2410
  %103 = load i32, ptr %indx, align 4, !dbg !2411
  %idxprom144 = sext i32 %103 to i64, !dbg !2409
  %arrayidx145 = getelementptr %struct.thermal_attr, ptr %102, i64 %idxprom144, !dbg !2409
  %attr146 = getelementptr inbounds %struct.thermal_attr, ptr %arrayidx145, i32 0, i32 0, !dbg !2412
  %show147 = getelementptr inbounds %struct.device_attribute, ptr %attr146, i32 0, i32 1, !dbg !2413
  store ptr @trip_point_hyst_show, ptr %show147, align 8, !dbg !2414
  %104 = load ptr, ptr %tz.addr, align 8, !dbg !2415
  %ops = getelementptr inbounds %struct.thermal_zone_device, ptr %104, i32 0, i32 22, !dbg !2417
  %105 = load ptr, ptr %ops, align 8, !dbg !2417
  %set_trip_hyst = getelementptr inbounds %struct.thermal_zone_device_ops, ptr %105, i32 0, i32 6, !dbg !2418
  %106 = load ptr, ptr %set_trip_hyst, align 8, !dbg !2418
  %tobool148 = icmp ne ptr %106, null, !dbg !2415
  br i1 %tobool148, label %if.then149, label %if.end164, !dbg !2419

if.then149:                                       ; preds = %do.end125
  %107 = load ptr, ptr %tz.addr, align 8, !dbg !2420
  %trip_hyst_attrs150 = getelementptr inbounds %struct.thermal_zone_device, ptr %107, i32 0, i32 7, !dbg !2422
  %108 = load ptr, ptr %trip_hyst_attrs150, align 8, !dbg !2422
  %109 = load i32, ptr %indx, align 4, !dbg !2423
  %idxprom151 = sext i32 %109 to i64, !dbg !2420
  %arrayidx152 = getelementptr %struct.thermal_attr, ptr %108, i64 %idxprom151, !dbg !2420
  %attr153 = getelementptr inbounds %struct.thermal_attr, ptr %arrayidx152, i32 0, i32 0, !dbg !2424
  %attr154 = getelementptr inbounds %struct.device_attribute, ptr %attr153, i32 0, i32 0, !dbg !2425
  %mode155 = getelementptr inbounds %struct.attribute, ptr %attr154, i32 0, i32 1, !dbg !2426
  %110 = load i16, ptr %mode155, align 8, !dbg !2427
  %conv156 = zext i16 %110 to i32, !dbg !2427
  %or157 = or i32 %conv156, 128, !dbg !2427
  %conv158 = trunc i32 %or157 to i16, !dbg !2427
  store i16 %conv158, ptr %mode155, align 8, !dbg !2427
  %111 = load ptr, ptr %tz.addr, align 8, !dbg !2428
  %trip_hyst_attrs159 = getelementptr inbounds %struct.thermal_zone_device, ptr %111, i32 0, i32 7, !dbg !2429
  %112 = load ptr, ptr %trip_hyst_attrs159, align 8, !dbg !2429
  %113 = load i32, ptr %indx, align 4, !dbg !2430
  %idxprom160 = sext i32 %113 to i64, !dbg !2428
  %arrayidx161 = getelementptr %struct.thermal_attr, ptr %112, i64 %idxprom160, !dbg !2428
  %attr162 = getelementptr inbounds %struct.thermal_attr, ptr %arrayidx161, i32 0, i32 0, !dbg !2431
  %store163 = getelementptr inbounds %struct.device_attribute, ptr %attr162, i32 0, i32 2, !dbg !2432
  store ptr @trip_point_hyst_store, ptr %store163, align 8, !dbg !2433
  br label %if.end164, !dbg !2434

if.end164:                                        ; preds = %if.then149, %do.end125
  %114 = load ptr, ptr %tz.addr, align 8, !dbg !2435
  %trip_hyst_attrs165 = getelementptr inbounds %struct.thermal_zone_device, ptr %114, i32 0, i32 7, !dbg !2436
  %115 = load ptr, ptr %trip_hyst_attrs165, align 8, !dbg !2436
  %116 = load i32, ptr %indx, align 4, !dbg !2437
  %idxprom166 = sext i32 %116 to i64, !dbg !2435
  %arrayidx167 = getelementptr %struct.thermal_attr, ptr %115, i64 %idxprom166, !dbg !2435
  %attr168 = getelementptr inbounds %struct.thermal_attr, ptr %arrayidx167, i32 0, i32 0, !dbg !2438
  %attr169 = getelementptr inbounds %struct.device_attribute, ptr %attr168, i32 0, i32 0, !dbg !2439
  %117 = load ptr, ptr %attrs, align 8, !dbg !2440
  %118 = load i32, ptr %indx, align 4, !dbg !2441
  %119 = load ptr, ptr %tz.addr, align 8, !dbg !2442
  %num_trips170 = getelementptr inbounds %struct.thermal_zone_device, ptr %119, i32 0, i32 11, !dbg !2443
  %120 = load i32, ptr %num_trips170, align 8, !dbg !2443
  %mul171 = mul i32 %120, 2, !dbg !2444
  %add172 = add i32 %118, %mul171, !dbg !2445
  %idxprom173 = sext i32 %add172 to i64, !dbg !2440
  %arrayidx174 = getelementptr ptr, ptr %117, i64 %idxprom173, !dbg !2440
  store ptr %attr169, ptr %arrayidx174, align 8, !dbg !2446
  br label %for.inc, !dbg !2447

for.inc:                                          ; preds = %if.end164
  %121 = load i32, ptr %indx, align 4, !dbg !2448
  %inc = add i32 %121, 1, !dbg !2448
  store i32 %inc, ptr %indx, align 4, !dbg !2448
  br label %for.cond, !dbg !2449, !llvm.loop !2450

for.end:                                          ; preds = %for.cond
  %122 = load ptr, ptr %attrs, align 8, !dbg !2452
  %123 = load ptr, ptr %tz.addr, align 8, !dbg !2453
  %num_trips175 = getelementptr inbounds %struct.thermal_zone_device, ptr %123, i32 0, i32 11, !dbg !2454
  %124 = load i32, ptr %num_trips175, align 8, !dbg !2454
  %mul176 = mul i32 %124, 3, !dbg !2455
  %idxprom177 = sext i32 %mul176 to i64, !dbg !2452
  %arrayidx178 = getelementptr ptr, ptr %122, i64 %idxprom177, !dbg !2452
  store ptr null, ptr %arrayidx178, align 8, !dbg !2456
  %125 = load ptr, ptr %attrs, align 8, !dbg !2457
  %126 = load ptr, ptr %tz.addr, align 8, !dbg !2458
  %trips_attribute_group = getelementptr inbounds %struct.thermal_zone_device, ptr %126, i32 0, i32 4, !dbg !2459
  %attrs179 = getelementptr inbounds %struct.attribute_group, ptr %trips_attribute_group, i32 0, i32 3, !dbg !2460
  store ptr %125, ptr %attrs179, align 8, !dbg !2461
  store i32 0, ptr %retval, align 4, !dbg !2462
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2462

cleanup:                                          ; preds = %for.end, %if.then26, %if.then18, %if.then10, %if.then3, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %indx) #13, !dbg !2463
  call void @llvm.lifetime.end.p0(i64 8, ptr %attrs) #13, !dbg !2463
  %127 = load i32, ptr %retval, align 4, !dbg !2463
  ret i32 %127, !dbg !2463
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2464 dso_local void @kfree(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @thermal_zone_destroy_device_groups(ptr noundef %tz) #0 align 16 !dbg !2467 {
entry:
  %tz.addr = alloca ptr, align 8
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !2469, metadata !DIExpression()), !dbg !2470
  %0 = load ptr, ptr %tz.addr, align 8, !dbg !2471
  %tobool = icmp ne ptr %0, null, !dbg !2471
  br i1 %tobool, label %if.end, label %if.then, !dbg !2473

if.then:                                          ; preds = %entry
  br label %return, !dbg !2474

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %tz.addr, align 8, !dbg !2475
  %num_trips = getelementptr inbounds %struct.thermal_zone_device, ptr %1, i32 0, i32 11, !dbg !2477
  %2 = load i32, ptr %num_trips, align 8, !dbg !2477
  %tobool1 = icmp ne i32 %2, 0, !dbg !2475
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !2478

if.then2:                                         ; preds = %if.end
  %3 = load ptr, ptr %tz.addr, align 8, !dbg !2479
  call void @destroy_trip_attrs(ptr noundef %3) #15, !dbg !2480
  br label %if.end3, !dbg !2480

if.end3:                                          ; preds = %if.then2, %if.end
  %4 = load ptr, ptr %tz.addr, align 8, !dbg !2481
  %device = getelementptr inbounds %struct.thermal_zone_device, ptr %4, i32 0, i32 2, !dbg !2482
  %groups = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 31, !dbg !2483
  %5 = load ptr, ptr %groups, align 8, !dbg !2483
  call void @kfree(ptr noundef %5) #15, !dbg !2484
  br label %return, !dbg !2485

return:                                           ; preds = %if.end3, %if.then
  ret void, !dbg !2485
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @destroy_trip_attrs(ptr noundef %tz) #0 align 16 !dbg !2486 {
entry:
  %tz.addr = alloca ptr, align 8
  store ptr %tz, ptr %tz.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %tz.addr, metadata !2488, metadata !DIExpression()), !dbg !2489
  %0 = load ptr, ptr %tz.addr, align 8, !dbg !2490
  %tobool = icmp ne ptr %0, null, !dbg !2490
  br i1 %tobool, label %if.end, label %if.then, !dbg !2492

if.then:                                          ; preds = %entry
  br label %return, !dbg !2493

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %tz.addr, align 8, !dbg !2494
  %trip_type_attrs = getelementptr inbounds %struct.thermal_zone_device, ptr %1, i32 0, i32 6, !dbg !2495
  %2 = load ptr, ptr %trip_type_attrs, align 8, !dbg !2495
  call void @kfree(ptr noundef %2) #15, !dbg !2496
  %3 = load ptr, ptr %tz.addr, align 8, !dbg !2497
  %trip_temp_attrs = getelementptr inbounds %struct.thermal_zone_device, ptr %3, i32 0, i32 5, !dbg !2498
  %4 = load ptr, ptr %trip_temp_attrs, align 8, !dbg !2498
  call void @kfree(ptr noundef %4) #15, !dbg !2499
  %5 = load ptr, ptr %tz.addr, align 8, !dbg !2500
  %trip_hyst_attrs = getelementptr inbounds %struct.thermal_zone_device, ptr %5, i32 0, i32 7, !dbg !2501
  %6 = load ptr, ptr %trip_hyst_attrs, align 8, !dbg !2501
  call void @kfree(ptr noundef %6) #15, !dbg !2502
  %7 = load ptr, ptr %tz.addr, align 8, !dbg !2503
  %trips_attribute_group = getelementptr inbounds %struct.thermal_zone_device, ptr %7, i32 0, i32 4, !dbg !2504
  %attrs = getelementptr inbounds %struct.attribute_group, ptr %trips_attribute_group, i32 0, i32 3, !dbg !2505
  %8 = load ptr, ptr %attrs, align 8, !dbg !2505
  call void @kfree(ptr noundef %8) #15, !dbg !2506
  br label %return, !dbg !2507

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !2507
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @thermal_cooling_device_setup_sysfs(ptr noundef %cdev) #0 align 16 !dbg !2508 {
entry:
  %cdev.addr = alloca ptr, align 8
  store ptr %cdev, ptr %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdev.addr, metadata !2512, metadata !DIExpression()), !dbg !2513
  %0 = load ptr, ptr %cdev.addr, align 8, !dbg !2514
  call void @cooling_device_stats_setup(ptr noundef %0) #15, !dbg !2515
  %1 = load ptr, ptr %cdev.addr, align 8, !dbg !2516
  %device = getelementptr inbounds %struct.thermal_cooling_device, ptr %1, i32 0, i32 3, !dbg !2517
  %groups = getelementptr inbounds %struct.device, ptr %device, i32 0, i32 31, !dbg !2518
  store ptr @cooling_device_attr_groups, ptr %groups, align 8, !dbg !2519
  ret void, !dbg !2520
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cooling_device_stats_setup(ptr noundef %cdev) #5 align 16 !dbg !2521 {
entry:
  %cdev.addr = alloca ptr, align 8
  store ptr %cdev, ptr %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdev.addr, metadata !2523, metadata !DIExpression()), !dbg !2524
  ret void, !dbg !2525
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @thermal_cooling_device_destroy_sysfs(ptr noundef %cdev) #0 align 16 !dbg !2526 {
entry:
  %cdev.addr = alloca ptr, align 8
  store ptr %cdev, ptr %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdev.addr, metadata !2528, metadata !DIExpression()), !dbg !2529
  %0 = load ptr, ptr %cdev.addr, align 8, !dbg !2530
  call void @cooling_device_stats_destroy(ptr noundef %0) #15, !dbg !2531
  ret void, !dbg !2532
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @cooling_device_stats_destroy(ptr noundef %cdev) #5 align 16 !dbg !2533 {
entry:
  %cdev.addr = alloca ptr, align 8
  store ptr %cdev, ptr %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdev.addr, metadata !2535, metadata !DIExpression()), !dbg !2536
  ret void, !dbg !2537
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @thermal_cooling_device_stats_reinit(ptr noundef %cdev) #0 align 16 !dbg !2538 {
entry:
  %cdev.addr = alloca ptr, align 8
  store ptr %cdev, ptr %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdev.addr, metadata !2540, metadata !DIExpression()), !dbg !2541
  br label %do.body, !dbg !2542

do.body:                                          ; preds = %entry
  %0 = load ptr, ptr %cdev.addr, align 8, !dbg !2543
  %lock = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 9, !dbg !2543
  br label %do.end, !dbg !2543

do.end:                                           ; preds = %do.body
  %1 = load ptr, ptr %cdev.addr, align 8, !dbg !2545
  call void @cooling_device_stats_destroy(ptr noundef %1) #15, !dbg !2546
  %2 = load ptr, ptr %cdev.addr, align 8, !dbg !2547
  call void @cooling_device_stats_setup(ptr noundef %2) #15, !dbg !2548
  ret void, !dbg !2549
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @trip_point_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2550 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %instance = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2552, metadata !DIExpression()), !dbg !2558
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2553, metadata !DIExpression()), !dbg !2559
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2554, metadata !DIExpression()), !dbg !2560
  call void @llvm.lifetime.start.p0(i64 8, ptr %instance) #13, !dbg !2561
  call void @llvm.dbg.declare(metadata ptr %instance, metadata !2555, metadata !DIExpression()), !dbg !2562
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !2563
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2556, metadata !DIExpression()), !dbg !2563
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !2563
  store ptr %0, ptr %__mptr, align 8, !dbg !2563
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2563
  %add.ptr = getelementptr i8, ptr %1, i64 -104, !dbg !2563
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2563
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !2564
  %2 = load ptr, ptr %tmp, align 8, !dbg !2563
  store ptr %2, ptr %instance, align 8, !dbg !2565
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !2566
  %4 = load ptr, ptr %instance, align 8, !dbg !2567
  %tz = getelementptr inbounds %struct.thermal_instance, ptr %4, i32 0, i32 2, !dbg !2568
  %5 = load ptr, ptr %tz, align 8, !dbg !2568
  %6 = load ptr, ptr %instance, align 8, !dbg !2569
  %trip = getelementptr inbounds %struct.thermal_instance, ptr %6, i32 0, i32 4, !dbg !2570
  %7 = load ptr, ptr %trip, align 8, !dbg !2570
  %call = call i32 @thermal_zone_trip_id(ptr noundef %5, ptr noundef %7) #15, !dbg !2571
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef @.str, i32 noundef %call) #15, !dbg !2572
  %conv = sext i32 %call1 to i64, !dbg !2572
  call void @llvm.lifetime.end.p0(i64 8, ptr %instance) #13, !dbg !2573
  ret i64 %conv, !dbg !2574
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2575 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2579 dso_local i32 @thermal_zone_trip_id(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @weight_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2582 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %instance = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2584, metadata !DIExpression()), !dbg !2590
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2585, metadata !DIExpression()), !dbg !2591
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2586, metadata !DIExpression()), !dbg !2592
  call void @llvm.lifetime.start.p0(i64 8, ptr %instance) #13, !dbg !2593
  call void @llvm.dbg.declare(metadata ptr %instance, metadata !2587, metadata !DIExpression()), !dbg !2594
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !2595
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2588, metadata !DIExpression()), !dbg !2595
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !2595
  store ptr %0, ptr %__mptr, align 8, !dbg !2595
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2595
  %add.ptr = getelementptr i8, ptr %1, i64 -160, !dbg !2595
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2595
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !2596
  %2 = load ptr, ptr %tmp, align 8, !dbg !2595
  store ptr %2, ptr %instance, align 8, !dbg !2597
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !2598
  %4 = load ptr, ptr %instance, align 8, !dbg !2599
  %weight = getelementptr inbounds %struct.thermal_instance, ptr %4, i32 0, i32 15, !dbg !2600
  %5 = load i32, ptr %weight, align 8, !dbg !2600
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef @.str, i32 noundef %5) #15, !dbg !2601
  %conv = sext i32 %call to i64, !dbg !2601
  call void @llvm.lifetime.end.p0(i64 8, ptr %instance) #13, !dbg !2602
  ret i64 %conv, !dbg !2603
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i64 @weight_store(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !2604 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %instance = alloca ptr, align 8
  %ret = alloca i32, align 4
  %weight = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2606, metadata !DIExpression()), !dbg !2615
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2607, metadata !DIExpression()), !dbg !2616
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2608, metadata !DIExpression()), !dbg !2617
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !2609, metadata !DIExpression()), !dbg !2618
  call void @llvm.lifetime.start.p0(i64 8, ptr %instance) #13, !dbg !2619
  call void @llvm.dbg.declare(metadata ptr %instance, metadata !2610, metadata !DIExpression()), !dbg !2620
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !2621
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2611, metadata !DIExpression()), !dbg !2622
  call void @llvm.lifetime.start.p0(i64 4, ptr %weight) #13, !dbg !2621
  call void @llvm.dbg.declare(metadata ptr %weight, metadata !2612, metadata !DIExpression()), !dbg !2623
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !2624
  %call = call i32 @kstrtoint(ptr noundef %0, i32 noundef 0, ptr noundef %weight) #15, !dbg !2625
  store i32 %call, ptr %ret, align 4, !dbg !2626
  %1 = load i32, ptr %ret, align 4, !dbg !2627
  %tobool = icmp ne i32 %1, 0, !dbg !2627
  br i1 %tobool, label %if.then, label %if.end, !dbg !2629

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %ret, align 4, !dbg !2630
  %conv = sext i32 %2 to i64, !dbg !2630
  store i64 %conv, ptr %retval, align 8, !dbg !2631
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2631

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !2632
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2613, metadata !DIExpression()), !dbg !2632
  %3 = load ptr, ptr %attr.addr, align 8, !dbg !2632
  store ptr %3, ptr %__mptr, align 8, !dbg !2632
  %4 = load ptr, ptr %__mptr, align 8, !dbg !2632
  %add.ptr = getelementptr i8, ptr %4, i64 -160, !dbg !2632
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2632
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !2633
  %5 = load ptr, ptr %tmp, align 8, !dbg !2632
  store ptr %5, ptr %instance, align 8, !dbg !2634
  %6 = load i32, ptr %weight, align 4, !dbg !2635
  %7 = load ptr, ptr %instance, align 8, !dbg !2636
  %weight1 = getelementptr inbounds %struct.thermal_instance, ptr %7, i32 0, i32 15, !dbg !2637
  store i32 %6, ptr %weight1, align 8, !dbg !2638
  %8 = load i64, ptr %count.addr, align 8, !dbg !2639
  store i64 %8, ptr %retval, align 8, !dbg !2640
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2640

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %weight) #13, !dbg !2641
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !2641
  call void @llvm.lifetime.end.p0(i64 8, ptr %instance) #13, !dbg !2641
  %9 = load i64, ptr %retval, align 8, !dbg !2641
  ret i64 %9, !dbg !2641
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2642 dso_local i32 @kstrtoint(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1)
define internal noalias ptr @kmalloc_array(i64 noundef %n, i64 noundef %size, i32 noundef %flags) #3 align 16 !dbg !2646 {
entry:
  %retval = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2648, metadata !DIExpression()), !dbg !2652
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2649, metadata !DIExpression()), !dbg !2653
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2650, metadata !DIExpression()), !dbg !2654
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #13, !dbg !2655
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !2651, metadata !DIExpression()), !dbg !2656
  %0 = load i64, ptr %n.addr, align 8, !dbg !2657
  %1 = load i64, ptr %size.addr, align 8, !dbg !2657
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !2657
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !2657
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !2657
  store i64 %4, ptr %bytes, align 8, !dbg !2657
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #15, !dbg !2657
  %lnot = xor i1 %call, true, !dbg !2657
  %lnot1 = xor i1 %lnot, true, !dbg !2657
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2657
  %conv = sext i32 %lnot.ext to i64, !dbg !2657
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2657
  %tobool = icmp ne i64 %expval, 0, !dbg !2657
  br i1 %tobool, label %if.then, label %if.end, !dbg !2659

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !2660
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2660

if.end:                                           ; preds = %entry
  %5 = load i64, ptr %n.addr, align 8, !dbg !2661
  %6 = call i1 @llvm.is.constant.i64(i64 %5), !dbg !2663
  br i1 %6, label %land.lhs.true, label %if.end4, !dbg !2664

land.lhs.true:                                    ; preds = %if.end
  %7 = load i64, ptr %size.addr, align 8, !dbg !2665
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !2666
  br i1 %8, label %if.then2, label %if.end4, !dbg !2667

if.then2:                                         ; preds = %land.lhs.true
  %9 = load i64, ptr %bytes, align 8, !dbg !2668
  %10 = load i32, ptr %flags.addr, align 4, !dbg !2669
  %call3 = call noalias ptr @kmalloc(i64 noundef %9, i32 noundef %10) #16, !dbg !2670
  store ptr %call3, ptr %retval, align 8, !dbg !2671
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2671

if.end4:                                          ; preds = %land.lhs.true, %if.end
  %11 = load i64, ptr %bytes, align 8, !dbg !2672
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2673
  %call5 = call noalias align 8 ptr @__kmalloc(i64 noundef %11, i32 noundef %12) #16, !dbg !2674
  store ptr %call5, ptr %retval, align 8, !dbg !2675
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2675

cleanup:                                          ; preds = %if.end4, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #13, !dbg !2676
  %13 = load ptr, ptr %retval, align 8, !dbg !2676
  ret ptr %13, !dbg !2676
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #5 align 16 !dbg !2677 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !2682, metadata !DIExpression()), !dbg !2683
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !2684, !range !2685, !noundef !377
  %tobool = trunc i8 %0 to i1, !dbg !2684
  %lnot = xor i1 %tobool, true, !dbg !2684
  %lnot1 = xor i1 %lnot, true, !dbg !2684
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2684
  %conv = sext i32 %lnot.ext to i64, !dbg !2684
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2684
  %tobool2 = icmp ne i64 %expval, 0, !dbg !2684
  ret i1 %tobool2, !dbg !2686
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #6

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !2687 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2691, metadata !DIExpression()), !dbg !2696
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2692, metadata !DIExpression()), !dbg !2697
  %0 = load i64, ptr %size.addr, align 8, !dbg !2698
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2699
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2700

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2701
  %tobool = icmp ne i64 %2, 0, !dbg !2701
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2702

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #13, !dbg !2703
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2693, metadata !DIExpression()), !dbg !2704
  %3 = load i64, ptr %size.addr, align 8, !dbg !2705
  %cmp = icmp ugt i64 %3, 8192, !dbg !2707
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2708

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2709
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2710
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !2711
  store ptr %call, ptr %retval, align 8, !dbg !2712
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2712

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2713
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #15, !dbg !2713
  store i32 %call2, ptr %index, align 4, !dbg !2714
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2715
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2716
  %9 = ptrtoint ptr %8 to i64, !dbg !2716
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #15, !dbg !2717
  %idxprom = zext i32 %call3 to i64, !dbg !2718
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2718
  %10 = load i32, ptr %index, align 4, !dbg !2719
  %idxprom4 = zext i32 %10 to i64, !dbg !2718
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2718
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2718
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2720
  %13 = load i64, ptr %size.addr, align 8, !dbg !2721
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !2722
  store ptr %call6, ptr %retval, align 8, !dbg !2723
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2723

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #13, !dbg !2724
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2725
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2726
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !2727
  store ptr %call8, ptr %retval, align 8, !dbg !2728
  br label %return, !dbg !2728

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2729
  ret ptr %16, !dbg !2729
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2730 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2731 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #9

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #10 align 16 !dbg !2732 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2736, metadata !DIExpression()), !dbg !2738
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2737, metadata !DIExpression()), !dbg !2739
  %0 = load i64, ptr %size.addr, align 8, !dbg !2740
  %tobool = icmp ne i64 %0, 0, !dbg !2740
  br i1 %tobool, label %if.end, label %if.then, !dbg !2742

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2743
  br label %return, !dbg !2743

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2744
  %cmp = icmp ule i64 %1, 8, !dbg !2746
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2747

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2748
  br label %return, !dbg !2748

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2749
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2751
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2752

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2753
  %cmp4 = icmp ule i64 %3, 96, !dbg !2754
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2755

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2756
  br label %return, !dbg !2756

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2757
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2759
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2760

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2761
  %cmp9 = icmp ule i64 %5, 192, !dbg !2762
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2763

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2764
  br label %return, !dbg !2764

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2765
  %cmp12 = icmp ule i64 %6, 8, !dbg !2767
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2768

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2769
  br label %return, !dbg !2769

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2770
  %cmp15 = icmp ule i64 %7, 16, !dbg !2772
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2773

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2774
  br label %return, !dbg !2774

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2775
  %cmp18 = icmp ule i64 %8, 32, !dbg !2777
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2778

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2779
  br label %return, !dbg !2779

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2780
  %cmp21 = icmp ule i64 %9, 64, !dbg !2782
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2783

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2784
  br label %return, !dbg !2784

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2785
  %cmp24 = icmp ule i64 %10, 128, !dbg !2787
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2788

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2789
  br label %return, !dbg !2789

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2790
  %cmp27 = icmp ule i64 %11, 256, !dbg !2792
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2793

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2794
  br label %return, !dbg !2794

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2795
  %cmp30 = icmp ule i64 %12, 512, !dbg !2797
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2798

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2799
  br label %return, !dbg !2799

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2800
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2802
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2803

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2804
  br label %return, !dbg !2804

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2805
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2807
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2808

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2809
  br label %return, !dbg !2809

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2810
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2812
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2813

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2814
  br label %return, !dbg !2814

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2815
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2817
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2818

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2819
  br label %return, !dbg !2819

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2820
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2822
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2823

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2824
  br label %return, !dbg !2824

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2825
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2827
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2828

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2829
  br label %return, !dbg !2829

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2830
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2832
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2833

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2834
  br label %return, !dbg !2834

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2835
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2837
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2838

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2839
  br label %return, !dbg !2839

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2840
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2842
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2843

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2844
  br label %return, !dbg !2844

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2845
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2847
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2848

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2849
  br label %return, !dbg !2849

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2850
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2852
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2853

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2854
  br label %return, !dbg !2854

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2855
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2857
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2858

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2859
  br label %return, !dbg !2859

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2860, !range !2685, !noundef !377
  %tobool69 = trunc i8 %25 to i1, !dbg !2860
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2862

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2863

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_204() #18, !dbg !2864, !srcloc !2867
  unreachable, !dbg !2864

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2868

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2869

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2870

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2872

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2870

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str.1, i32 480, i32 0, i64 12) #13, !dbg !2874, !srcloc !2876
  br label %do.end75, !dbg !2874

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2870

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2877
  br label %return, !dbg !2877

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2878
  ret i32 %26, !dbg !2878
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2879 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #11

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #10 align 16 !dbg !2885 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2889, metadata !DIExpression()), !dbg !2891
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2890, metadata !DIExpression()), !dbg !2892
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2893
  %and = and i32 %0, 17, !dbg !2893
  %cmp = icmp eq i32 %and, 0, !dbg !2893
  %lnot = xor i1 %cmp, true, !dbg !2893
  %lnot1 = xor i1 %lnot, true, !dbg !2893
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2893
  %conv = sext i32 %lnot.ext to i64, !dbg !2893
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2893
  %tobool = icmp ne i64 %expval, 0, !dbg !2893
  br i1 %tobool, label %if.then, label %if.end, !dbg !2895

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2896
  br label %return, !dbg !2896

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2897
  %and2 = and i32 %1, 1, !dbg !2899
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2899
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2900

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2901
  br label %return, !dbg !2901

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2902
  br label %return, !dbg !2902

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2904
  ret i32 %2, !dbg !2904
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #6

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2905 dso_local void @__compiletime_assert_204() #12

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @type_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2906 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %tz = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2908, metadata !DIExpression()), !dbg !2914
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2909, metadata !DIExpression()), !dbg !2915
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2910, metadata !DIExpression()), !dbg !2916
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #13, !dbg !2917
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !2911, metadata !DIExpression()), !dbg !2918
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !2919
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2912, metadata !DIExpression()), !dbg !2919
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2919
  store ptr %0, ptr %__mptr, align 8, !dbg !2919
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2919
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !2919
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2919
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !2920
  %2 = load ptr, ptr %tmp, align 8, !dbg !2919
  store ptr %2, ptr %tz, align 8, !dbg !2918
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !2921
  %4 = load ptr, ptr %tz, align 8, !dbg !2922
  %type = getelementptr inbounds %struct.thermal_zone_device, ptr %4, i32 0, i32 1, !dbg !2923
  %arraydecay = getelementptr inbounds [20 x i8], ptr %type, i64 0, i64 0, !dbg !2922
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef @.str.3, ptr noundef %arraydecay) #15, !dbg !2924
  %conv = sext i32 %call to i64, !dbg !2924
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #13, !dbg !2925
  ret i64 %conv, !dbg !2926
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @temp_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2927 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %tz = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %temperature = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2929, metadata !DIExpression()), !dbg !2937
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2930, metadata !DIExpression()), !dbg !2938
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2931, metadata !DIExpression()), !dbg !2939
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #13, !dbg !2940
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !2932, metadata !DIExpression()), !dbg !2941
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !2942
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2933, metadata !DIExpression()), !dbg !2942
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2942
  store ptr %0, ptr %__mptr, align 8, !dbg !2942
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2942
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !2942
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2942
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !2943
  %2 = load ptr, ptr %tmp, align 8, !dbg !2942
  store ptr %2, ptr %tz, align 8, !dbg !2941
  call void @llvm.lifetime.start.p0(i64 4, ptr %temperature) #13, !dbg !2944
  call void @llvm.dbg.declare(metadata ptr %temperature, metadata !2935, metadata !DIExpression()), !dbg !2945
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !2944
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2936, metadata !DIExpression()), !dbg !2946
  %3 = load ptr, ptr %tz, align 8, !dbg !2947
  %call = call i32 @thermal_zone_get_temp(ptr noundef %3, ptr noundef %temperature) #15, !dbg !2948
  store i32 %call, ptr %ret, align 4, !dbg !2949
  %4 = load i32, ptr %ret, align 4, !dbg !2950
  %tobool = icmp ne i32 %4, 0, !dbg !2950
  br i1 %tobool, label %if.then, label %if.end, !dbg !2952

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %ret, align 4, !dbg !2953
  %conv = sext i32 %5 to i64, !dbg !2953
  store i64 %conv, ptr %retval, align 8, !dbg !2954
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2954

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !2955
  %7 = load i32, ptr %temperature, align 4, !dbg !2956
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %6, ptr noundef @.str, i32 noundef %7) #15, !dbg !2957
  %conv2 = sext i32 %call1 to i64, !dbg !2957
  store i64 %conv2, ptr %retval, align 8, !dbg !2958
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2958

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !2959
  call void @llvm.lifetime.end.p0(i64 4, ptr %temperature) #13, !dbg !2959
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #13, !dbg !2959
  %8 = load i64, ptr %retval, align 8, !dbg !2959
  ret i64 %8, !dbg !2959
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2960 dso_local i32 @thermal_zone_get_temp(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @policy_show(ptr noundef %dev, ptr noundef %devattr, ptr noundef %buf) #0 align 16 !dbg !2961 {
entry:
  %dev.addr = alloca ptr, align 8
  %devattr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %tz = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2963, metadata !DIExpression()), !dbg !2969
  store ptr %devattr, ptr %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %devattr.addr, metadata !2964, metadata !DIExpression()), !dbg !2970
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2965, metadata !DIExpression()), !dbg !2971
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #13, !dbg !2972
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !2966, metadata !DIExpression()), !dbg !2973
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !2974
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2967, metadata !DIExpression()), !dbg !2974
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2974
  store ptr %0, ptr %__mptr, align 8, !dbg !2974
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2974
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !2974
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2974
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !2975
  %2 = load ptr, ptr %tmp, align 8, !dbg !2974
  store ptr %2, ptr %tz, align 8, !dbg !2973
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !2976
  %4 = load ptr, ptr %tz, align 8, !dbg !2977
  %governor = getelementptr inbounds %struct.thermal_zone_device, ptr %4, i32 0, i32 24, !dbg !2978
  %5 = load ptr, ptr %governor, align 8, !dbg !2978
  %name = getelementptr inbounds %struct.thermal_governor, ptr %5, i32 0, i32 0, !dbg !2979
  %arraydecay = getelementptr inbounds [20 x i8], ptr %name, i64 0, i64 0, !dbg !2977
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef @.str.3, ptr noundef %arraydecay) #15, !dbg !2980
  %conv = sext i32 %call to i64, !dbg !2980
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #13, !dbg !2981
  ret i64 %conv, !dbg !2982
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @policy_store(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !2983 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %tz = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %name = alloca [20 x i8], align 16
  %ret = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2985, metadata !DIExpression()), !dbg !2994
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2986, metadata !DIExpression()), !dbg !2995
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2987, metadata !DIExpression()), !dbg !2996
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !2988, metadata !DIExpression()), !dbg !2997
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #13, !dbg !2998
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !2989, metadata !DIExpression()), !dbg !2999
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !3000
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2990, metadata !DIExpression()), !dbg !3000
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3000
  store ptr %0, ptr %__mptr, align 8, !dbg !3000
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3000
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !3000
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3000
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !3001
  %2 = load ptr, ptr %tmp, align 8, !dbg !3000
  store ptr %2, ptr %tz, align 8, !dbg !2999
  call void @llvm.lifetime.start.p0(i64 20, ptr %name) #13, !dbg !3002
  call void @llvm.dbg.declare(metadata ptr %name, metadata !2992, metadata !DIExpression()), !dbg !3003
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !3004
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2993, metadata !DIExpression()), !dbg !3005
  %arraydecay = getelementptr inbounds [20 x i8], ptr %name, i64 0, i64 0, !dbg !3006
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !3007
  %call = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 20, ptr noundef @.str.6, ptr noundef %3) #15, !dbg !3008
  %4 = load ptr, ptr %tz, align 8, !dbg !3009
  %arraydecay1 = getelementptr inbounds [20 x i8], ptr %name, i64 0, i64 0, !dbg !3010
  %call2 = call i32 @thermal_zone_device_set_policy(ptr noundef %4, ptr noundef %arraydecay1) #15, !dbg !3011
  store i32 %call2, ptr %ret, align 4, !dbg !3012
  %5 = load i32, ptr %ret, align 4, !dbg !3013
  %tobool = icmp ne i32 %5, 0, !dbg !3013
  br i1 %tobool, label %if.end, label %if.then, !dbg !3015

if.then:                                          ; preds = %entry
  %6 = load i64, ptr %count.addr, align 8, !dbg !3016
  %conv = trunc i64 %6 to i32, !dbg !3016
  store i32 %conv, ptr %ret, align 4, !dbg !3017
  br label %if.end, !dbg !3018

if.end:                                           ; preds = %if.then, %entry
  %7 = load i32, ptr %ret, align 4, !dbg !3019
  %conv3 = sext i32 %7 to i64, !dbg !3019
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !3020
  call void @llvm.lifetime.end.p0(i64 20, ptr %name) #13, !dbg !3020
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #13, !dbg !3020
  ret i64 %conv3, !dbg !3021
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3022 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3025 dso_local i32 @thermal_zone_device_set_policy(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @available_policies_show(ptr noundef %dev, ptr noundef %devattr, ptr noundef %buf) #0 align 16 !dbg !3028 {
entry:
  %dev.addr = alloca ptr, align 8
  %devattr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3030, metadata !DIExpression()), !dbg !3033
  store ptr %devattr, ptr %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %devattr.addr, metadata !3031, metadata !DIExpression()), !dbg !3034
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3032, metadata !DIExpression()), !dbg !3035
  %0 = load ptr, ptr %buf.addr, align 8, !dbg !3036
  %call = call i32 @thermal_build_list_of_policies(ptr noundef %0) #15, !dbg !3037
  %conv = sext i32 %call to i64, !dbg !3037
  ret i64 %conv, !dbg !3038
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3039 dso_local i32 @thermal_build_list_of_policies(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @sustainable_power_show(ptr noundef %dev, ptr noundef %devattr, ptr noundef %buf) #0 align 16 !dbg !3042 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %devattr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %tz = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3044, metadata !DIExpression()), !dbg !3050
  store ptr %devattr, ptr %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %devattr.addr, metadata !3045, metadata !DIExpression()), !dbg !3051
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3046, metadata !DIExpression()), !dbg !3052
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #13, !dbg !3053
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !3047, metadata !DIExpression()), !dbg !3054
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !3055
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3048, metadata !DIExpression()), !dbg !3055
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3055
  store ptr %0, ptr %__mptr, align 8, !dbg !3055
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3055
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !3055
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3055
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !3056
  %2 = load ptr, ptr %tmp, align 8, !dbg !3055
  store ptr %2, ptr %tz, align 8, !dbg !3054
  %3 = load ptr, ptr %tz, align 8, !dbg !3057
  %tzp = getelementptr inbounds %struct.thermal_zone_device, ptr %3, i32 0, i32 23, !dbg !3059
  %4 = load ptr, ptr %tzp, align 8, !dbg !3059
  %tobool = icmp ne ptr %4, null, !dbg !3057
  br i1 %tobool, label %if.then, label %if.else, !dbg !3060

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !3061
  %6 = load ptr, ptr %tz, align 8, !dbg !3062
  %tzp1 = getelementptr inbounds %struct.thermal_zone_device, ptr %6, i32 0, i32 23, !dbg !3063
  %7 = load ptr, ptr %tzp1, align 8, !dbg !3063
  %sustainable_power = getelementptr inbounds %struct.thermal_zone_params, ptr %7, i32 0, i32 2, !dbg !3064
  %8 = load i32, ptr %sustainable_power, align 4, !dbg !3064
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %5, ptr noundef @.str.9, i32 noundef %8) #15, !dbg !3065
  %conv = sext i32 %call to i64, !dbg !3065
  store i64 %conv, ptr %retval, align 8, !dbg !3066
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3066

if.else:                                          ; preds = %entry
  store i64 -5, ptr %retval, align 8, !dbg !3067
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3067

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #13, !dbg !3068
  %9 = load i64, ptr %retval, align 8, !dbg !3068
  ret i64 %9, !dbg !3068
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @sustainable_power_store(ptr noundef %dev, ptr noundef %devattr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !3069 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %devattr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %tz = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %sustainable_power = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3071, metadata !DIExpression()), !dbg !3079
  store ptr %devattr, ptr %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %devattr.addr, metadata !3072, metadata !DIExpression()), !dbg !3080
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3073, metadata !DIExpression()), !dbg !3081
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !3074, metadata !DIExpression()), !dbg !3082
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #13, !dbg !3083
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !3075, metadata !DIExpression()), !dbg !3084
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !3085
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3076, metadata !DIExpression()), !dbg !3085
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3085
  store ptr %0, ptr %__mptr, align 8, !dbg !3085
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3085
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !3085
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3085
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !3086
  %2 = load ptr, ptr %tmp, align 8, !dbg !3085
  store ptr %2, ptr %tz, align 8, !dbg !3084
  call void @llvm.lifetime.start.p0(i64 4, ptr %sustainable_power) #13, !dbg !3087
  call void @llvm.dbg.declare(metadata ptr %sustainable_power, metadata !3078, metadata !DIExpression()), !dbg !3088
  %3 = load ptr, ptr %tz, align 8, !dbg !3089
  %tzp = getelementptr inbounds %struct.thermal_zone_device, ptr %3, i32 0, i32 23, !dbg !3091
  %4 = load ptr, ptr %tzp, align 8, !dbg !3091
  %tobool = icmp ne ptr %4, null, !dbg !3089
  br i1 %tobool, label %if.end, label %if.then, !dbg !3092

if.then:                                          ; preds = %entry
  store i64 -5, ptr %retval, align 8, !dbg !3093
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3093

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !3094
  %call = call i32 @kstrtou32(ptr noundef %5, i32 noundef 10, ptr noundef %sustainable_power) #15, !dbg !3096
  %tobool1 = icmp ne i32 %call, 0, !dbg !3096
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3097

if.then2:                                         ; preds = %if.end
  store i64 -22, ptr %retval, align 8, !dbg !3098
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3098

if.end3:                                          ; preds = %if.end
  %6 = load i32, ptr %sustainable_power, align 4, !dbg !3099
  %7 = load ptr, ptr %tz, align 8, !dbg !3100
  %tzp4 = getelementptr inbounds %struct.thermal_zone_device, ptr %7, i32 0, i32 23, !dbg !3101
  %8 = load ptr, ptr %tzp4, align 8, !dbg !3101
  %sustainable_power5 = getelementptr inbounds %struct.thermal_zone_params, ptr %8, i32 0, i32 2, !dbg !3102
  store i32 %6, ptr %sustainable_power5, align 4, !dbg !3103
  %9 = load i64, ptr %count.addr, align 8, !dbg !3104
  store i64 %9, ptr %retval, align 8, !dbg !3105
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3105

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %sustainable_power) #13, !dbg !3106
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #13, !dbg !3106
  %10 = load i64, ptr %retval, align 8, !dbg !3106
  ret i64 %10, !dbg !3106
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kstrtou32(ptr noundef %s, i32 noundef %base, ptr noundef %res) #5 align 16 !dbg !3107 {
entry:
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3111, metadata !DIExpression()), !dbg !3114
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !3112, metadata !DIExpression()), !dbg !3115
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !3113, metadata !DIExpression()), !dbg !3116
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3117
  %1 = load i32, ptr %base.addr, align 4, !dbg !3118
  %2 = load ptr, ptr %res.addr, align 8, !dbg !3119
  %call = call i32 @kstrtouint(ptr noundef %0, i32 noundef %1, ptr noundef %2) #15, !dbg !3120
  ret i32 %call, !dbg !3121
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3122 dso_local i32 @kstrtouint(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @k_po_show(ptr noundef %dev, ptr noundef %devattr, ptr noundef %buf) #0 align 16 !dbg !3125 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %devattr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %tz = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3127, metadata !DIExpression()), !dbg !3133
  store ptr %devattr, ptr %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %devattr.addr, metadata !3128, metadata !DIExpression()), !dbg !3133
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3129, metadata !DIExpression()), !dbg !3133
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #13, !dbg !3133
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !3130, metadata !DIExpression()), !dbg !3133
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !3134
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3131, metadata !DIExpression()), !dbg !3134
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3134
  store ptr %0, ptr %__mptr, align 8, !dbg !3134
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3134
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !3134
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3134
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !3133
  %2 = load ptr, ptr %tmp, align 8, !dbg !3134
  store ptr %2, ptr %tz, align 8, !dbg !3133
  %3 = load ptr, ptr %tz, align 8, !dbg !3135
  %tzp = getelementptr inbounds %struct.thermal_zone_device, ptr %3, i32 0, i32 23, !dbg !3135
  %4 = load ptr, ptr %tzp, align 8, !dbg !3135
  %tobool = icmp ne ptr %4, null, !dbg !3135
  br i1 %tobool, label %if.then, label %if.else, !dbg !3133

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !3135
  %6 = load ptr, ptr %tz, align 8, !dbg !3135
  %tzp1 = getelementptr inbounds %struct.thermal_zone_device, ptr %6, i32 0, i32 23, !dbg !3135
  %7 = load ptr, ptr %tzp1, align 8, !dbg !3135
  %k_po = getelementptr inbounds %struct.thermal_zone_params, ptr %7, i32 0, i32 3, !dbg !3135
  %8 = load i32, ptr %k_po, align 4, !dbg !3135
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %5, ptr noundef @.str, i32 noundef %8) #15, !dbg !3135
  %conv = sext i32 %call to i64, !dbg !3135
  store i64 %conv, ptr %retval, align 8, !dbg !3135
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3135

if.else:                                          ; preds = %entry
  store i64 -5, ptr %retval, align 8, !dbg !3135
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3135

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #13, !dbg !3133
  %9 = load i64, ptr %retval, align 8, !dbg !3133
  ret i64 %9, !dbg !3133
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @k_po_store(ptr noundef %dev, ptr noundef %devattr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !3137 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %devattr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %tz = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %value = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3139, metadata !DIExpression()), !dbg !3147
  store ptr %devattr, ptr %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %devattr.addr, metadata !3140, metadata !DIExpression()), !dbg !3147
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3141, metadata !DIExpression()), !dbg !3147
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !3142, metadata !DIExpression()), !dbg !3147
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #13, !dbg !3147
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !3143, metadata !DIExpression()), !dbg !3147
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !3148
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3144, metadata !DIExpression()), !dbg !3148
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3148
  store ptr %0, ptr %__mptr, align 8, !dbg !3148
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3148
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !3148
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3148
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !3147
  %2 = load ptr, ptr %tmp, align 8, !dbg !3148
  store ptr %2, ptr %tz, align 8, !dbg !3147
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #13, !dbg !3147
  call void @llvm.dbg.declare(metadata ptr %value, metadata !3146, metadata !DIExpression()), !dbg !3147
  %3 = load ptr, ptr %tz, align 8, !dbg !3149
  %tzp = getelementptr inbounds %struct.thermal_zone_device, ptr %3, i32 0, i32 23, !dbg !3149
  %4 = load ptr, ptr %tzp, align 8, !dbg !3149
  %tobool = icmp ne ptr %4, null, !dbg !3149
  br i1 %tobool, label %if.end, label %if.then, !dbg !3147

if.then:                                          ; preds = %entry
  store i64 -5, ptr %retval, align 8, !dbg !3149
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3149

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !3151
  %call = call i32 @kstrtos32(ptr noundef %5, i32 noundef 10, ptr noundef %value) #15, !dbg !3151
  %tobool1 = icmp ne i32 %call, 0, !dbg !3151
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3147

if.then2:                                         ; preds = %if.end
  store i64 -22, ptr %retval, align 8, !dbg !3151
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3151

if.end3:                                          ; preds = %if.end
  %6 = load i32, ptr %value, align 4, !dbg !3147
  %7 = load ptr, ptr %tz, align 8, !dbg !3147
  %tzp4 = getelementptr inbounds %struct.thermal_zone_device, ptr %7, i32 0, i32 23, !dbg !3147
  %8 = load ptr, ptr %tzp4, align 8, !dbg !3147
  %k_po = getelementptr inbounds %struct.thermal_zone_params, ptr %8, i32 0, i32 3, !dbg !3147
  store i32 %6, ptr %k_po, align 4, !dbg !3147
  %9 = load i64, ptr %count.addr, align 8, !dbg !3147
  store i64 %9, ptr %retval, align 8, !dbg !3147
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3147

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #13, !dbg !3147
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #13, !dbg !3147
  %10 = load i64, ptr %retval, align 8, !dbg !3147
  ret i64 %10, !dbg !3147
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kstrtos32(ptr noundef %s, i32 noundef %base, ptr noundef %res) #5 align 16 !dbg !3153 {
entry:
  %s.addr = alloca ptr, align 8
  %base.addr = alloca i32, align 4
  %res.addr = alloca ptr, align 8
  store ptr %s, ptr %s.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %s.addr, metadata !3157, metadata !DIExpression()), !dbg !3160
  store i32 %base, ptr %base.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %base.addr, metadata !3158, metadata !DIExpression()), !dbg !3161
  store ptr %res, ptr %res.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %res.addr, metadata !3159, metadata !DIExpression()), !dbg !3162
  %0 = load ptr, ptr %s.addr, align 8, !dbg !3163
  %1 = load i32, ptr %base.addr, align 4, !dbg !3164
  %2 = load ptr, ptr %res.addr, align 8, !dbg !3165
  %call = call i32 @kstrtoint(ptr noundef %0, i32 noundef %1, ptr noundef %2) #15, !dbg !3166
  ret i32 %call, !dbg !3167
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @k_pu_show(ptr noundef %dev, ptr noundef %devattr, ptr noundef %buf) #0 align 16 !dbg !3168 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %devattr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %tz = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3170, metadata !DIExpression()), !dbg !3176
  store ptr %devattr, ptr %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %devattr.addr, metadata !3171, metadata !DIExpression()), !dbg !3176
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3172, metadata !DIExpression()), !dbg !3176
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #13, !dbg !3176
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !3173, metadata !DIExpression()), !dbg !3176
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !3177
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3174, metadata !DIExpression()), !dbg !3177
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3177
  store ptr %0, ptr %__mptr, align 8, !dbg !3177
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3177
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !3177
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3177
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !3176
  %2 = load ptr, ptr %tmp, align 8, !dbg !3177
  store ptr %2, ptr %tz, align 8, !dbg !3176
  %3 = load ptr, ptr %tz, align 8, !dbg !3178
  %tzp = getelementptr inbounds %struct.thermal_zone_device, ptr %3, i32 0, i32 23, !dbg !3178
  %4 = load ptr, ptr %tzp, align 8, !dbg !3178
  %tobool = icmp ne ptr %4, null, !dbg !3178
  br i1 %tobool, label %if.then, label %if.else, !dbg !3176

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !3178
  %6 = load ptr, ptr %tz, align 8, !dbg !3178
  %tzp1 = getelementptr inbounds %struct.thermal_zone_device, ptr %6, i32 0, i32 23, !dbg !3178
  %7 = load ptr, ptr %tzp1, align 8, !dbg !3178
  %k_pu = getelementptr inbounds %struct.thermal_zone_params, ptr %7, i32 0, i32 4, !dbg !3178
  %8 = load i32, ptr %k_pu, align 4, !dbg !3178
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %5, ptr noundef @.str, i32 noundef %8) #15, !dbg !3178
  %conv = sext i32 %call to i64, !dbg !3178
  store i64 %conv, ptr %retval, align 8, !dbg !3178
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3178

if.else:                                          ; preds = %entry
  store i64 -5, ptr %retval, align 8, !dbg !3178
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3178

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #13, !dbg !3176
  %9 = load i64, ptr %retval, align 8, !dbg !3176
  ret i64 %9, !dbg !3176
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @k_pu_store(ptr noundef %dev, ptr noundef %devattr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !3180 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %devattr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %tz = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %value = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3182, metadata !DIExpression()), !dbg !3190
  store ptr %devattr, ptr %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %devattr.addr, metadata !3183, metadata !DIExpression()), !dbg !3190
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3184, metadata !DIExpression()), !dbg !3190
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !3185, metadata !DIExpression()), !dbg !3190
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #13, !dbg !3190
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !3186, metadata !DIExpression()), !dbg !3190
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !3191
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3187, metadata !DIExpression()), !dbg !3191
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3191
  store ptr %0, ptr %__mptr, align 8, !dbg !3191
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3191
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !3191
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3191
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !3190
  %2 = load ptr, ptr %tmp, align 8, !dbg !3191
  store ptr %2, ptr %tz, align 8, !dbg !3190
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #13, !dbg !3190
  call void @llvm.dbg.declare(metadata ptr %value, metadata !3189, metadata !DIExpression()), !dbg !3190
  %3 = load ptr, ptr %tz, align 8, !dbg !3192
  %tzp = getelementptr inbounds %struct.thermal_zone_device, ptr %3, i32 0, i32 23, !dbg !3192
  %4 = load ptr, ptr %tzp, align 8, !dbg !3192
  %tobool = icmp ne ptr %4, null, !dbg !3192
  br i1 %tobool, label %if.end, label %if.then, !dbg !3190

if.then:                                          ; preds = %entry
  store i64 -5, ptr %retval, align 8, !dbg !3192
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3192

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !3194
  %call = call i32 @kstrtos32(ptr noundef %5, i32 noundef 10, ptr noundef %value) #15, !dbg !3194
  %tobool1 = icmp ne i32 %call, 0, !dbg !3194
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3190

if.then2:                                         ; preds = %if.end
  store i64 -22, ptr %retval, align 8, !dbg !3194
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3194

if.end3:                                          ; preds = %if.end
  %6 = load i32, ptr %value, align 4, !dbg !3190
  %7 = load ptr, ptr %tz, align 8, !dbg !3190
  %tzp4 = getelementptr inbounds %struct.thermal_zone_device, ptr %7, i32 0, i32 23, !dbg !3190
  %8 = load ptr, ptr %tzp4, align 8, !dbg !3190
  %k_pu = getelementptr inbounds %struct.thermal_zone_params, ptr %8, i32 0, i32 4, !dbg !3190
  store i32 %6, ptr %k_pu, align 4, !dbg !3190
  %9 = load i64, ptr %count.addr, align 8, !dbg !3190
  store i64 %9, ptr %retval, align 8, !dbg !3190
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3190

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #13, !dbg !3190
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #13, !dbg !3190
  %10 = load i64, ptr %retval, align 8, !dbg !3190
  ret i64 %10, !dbg !3190
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @k_i_show(ptr noundef %dev, ptr noundef %devattr, ptr noundef %buf) #0 align 16 !dbg !3196 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %devattr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %tz = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3198, metadata !DIExpression()), !dbg !3204
  store ptr %devattr, ptr %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %devattr.addr, metadata !3199, metadata !DIExpression()), !dbg !3204
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3200, metadata !DIExpression()), !dbg !3204
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #13, !dbg !3204
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !3201, metadata !DIExpression()), !dbg !3204
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !3205
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3202, metadata !DIExpression()), !dbg !3205
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3205
  store ptr %0, ptr %__mptr, align 8, !dbg !3205
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3205
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !3205
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3205
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !3204
  %2 = load ptr, ptr %tmp, align 8, !dbg !3205
  store ptr %2, ptr %tz, align 8, !dbg !3204
  %3 = load ptr, ptr %tz, align 8, !dbg !3206
  %tzp = getelementptr inbounds %struct.thermal_zone_device, ptr %3, i32 0, i32 23, !dbg !3206
  %4 = load ptr, ptr %tzp, align 8, !dbg !3206
  %tobool = icmp ne ptr %4, null, !dbg !3206
  br i1 %tobool, label %if.then, label %if.else, !dbg !3204

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !3206
  %6 = load ptr, ptr %tz, align 8, !dbg !3206
  %tzp1 = getelementptr inbounds %struct.thermal_zone_device, ptr %6, i32 0, i32 23, !dbg !3206
  %7 = load ptr, ptr %tzp1, align 8, !dbg !3206
  %k_i = getelementptr inbounds %struct.thermal_zone_params, ptr %7, i32 0, i32 5, !dbg !3206
  %8 = load i32, ptr %k_i, align 4, !dbg !3206
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %5, ptr noundef @.str, i32 noundef %8) #15, !dbg !3206
  %conv = sext i32 %call to i64, !dbg !3206
  store i64 %conv, ptr %retval, align 8, !dbg !3206
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3206

if.else:                                          ; preds = %entry
  store i64 -5, ptr %retval, align 8, !dbg !3206
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3206

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #13, !dbg !3204
  %9 = load i64, ptr %retval, align 8, !dbg !3204
  ret i64 %9, !dbg !3204
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @k_i_store(ptr noundef %dev, ptr noundef %devattr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !3208 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %devattr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %tz = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %value = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3210, metadata !DIExpression()), !dbg !3218
  store ptr %devattr, ptr %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %devattr.addr, metadata !3211, metadata !DIExpression()), !dbg !3218
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3212, metadata !DIExpression()), !dbg !3218
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !3213, metadata !DIExpression()), !dbg !3218
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #13, !dbg !3218
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !3214, metadata !DIExpression()), !dbg !3218
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !3219
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3215, metadata !DIExpression()), !dbg !3219
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3219
  store ptr %0, ptr %__mptr, align 8, !dbg !3219
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3219
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !3219
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3219
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !3218
  %2 = load ptr, ptr %tmp, align 8, !dbg !3219
  store ptr %2, ptr %tz, align 8, !dbg !3218
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #13, !dbg !3218
  call void @llvm.dbg.declare(metadata ptr %value, metadata !3217, metadata !DIExpression()), !dbg !3218
  %3 = load ptr, ptr %tz, align 8, !dbg !3220
  %tzp = getelementptr inbounds %struct.thermal_zone_device, ptr %3, i32 0, i32 23, !dbg !3220
  %4 = load ptr, ptr %tzp, align 8, !dbg !3220
  %tobool = icmp ne ptr %4, null, !dbg !3220
  br i1 %tobool, label %if.end, label %if.then, !dbg !3218

if.then:                                          ; preds = %entry
  store i64 -5, ptr %retval, align 8, !dbg !3220
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3220

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !3222
  %call = call i32 @kstrtos32(ptr noundef %5, i32 noundef 10, ptr noundef %value) #15, !dbg !3222
  %tobool1 = icmp ne i32 %call, 0, !dbg !3222
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3218

if.then2:                                         ; preds = %if.end
  store i64 -22, ptr %retval, align 8, !dbg !3222
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3222

if.end3:                                          ; preds = %if.end
  %6 = load i32, ptr %value, align 4, !dbg !3218
  %7 = load ptr, ptr %tz, align 8, !dbg !3218
  %tzp4 = getelementptr inbounds %struct.thermal_zone_device, ptr %7, i32 0, i32 23, !dbg !3218
  %8 = load ptr, ptr %tzp4, align 8, !dbg !3218
  %k_i = getelementptr inbounds %struct.thermal_zone_params, ptr %8, i32 0, i32 5, !dbg !3218
  store i32 %6, ptr %k_i, align 4, !dbg !3218
  %9 = load i64, ptr %count.addr, align 8, !dbg !3218
  store i64 %9, ptr %retval, align 8, !dbg !3218
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3218

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #13, !dbg !3218
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #13, !dbg !3218
  %10 = load i64, ptr %retval, align 8, !dbg !3218
  ret i64 %10, !dbg !3218
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @k_d_show(ptr noundef %dev, ptr noundef %devattr, ptr noundef %buf) #0 align 16 !dbg !3224 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %devattr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %tz = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3226, metadata !DIExpression()), !dbg !3232
  store ptr %devattr, ptr %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %devattr.addr, metadata !3227, metadata !DIExpression()), !dbg !3232
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3228, metadata !DIExpression()), !dbg !3232
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #13, !dbg !3232
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !3229, metadata !DIExpression()), !dbg !3232
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !3233
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3230, metadata !DIExpression()), !dbg !3233
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3233
  store ptr %0, ptr %__mptr, align 8, !dbg !3233
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3233
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !3233
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3233
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !3232
  %2 = load ptr, ptr %tmp, align 8, !dbg !3233
  store ptr %2, ptr %tz, align 8, !dbg !3232
  %3 = load ptr, ptr %tz, align 8, !dbg !3234
  %tzp = getelementptr inbounds %struct.thermal_zone_device, ptr %3, i32 0, i32 23, !dbg !3234
  %4 = load ptr, ptr %tzp, align 8, !dbg !3234
  %tobool = icmp ne ptr %4, null, !dbg !3234
  br i1 %tobool, label %if.then, label %if.else, !dbg !3232

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !3234
  %6 = load ptr, ptr %tz, align 8, !dbg !3234
  %tzp1 = getelementptr inbounds %struct.thermal_zone_device, ptr %6, i32 0, i32 23, !dbg !3234
  %7 = load ptr, ptr %tzp1, align 8, !dbg !3234
  %k_d = getelementptr inbounds %struct.thermal_zone_params, ptr %7, i32 0, i32 6, !dbg !3234
  %8 = load i32, ptr %k_d, align 4, !dbg !3234
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %5, ptr noundef @.str, i32 noundef %8) #15, !dbg !3234
  %conv = sext i32 %call to i64, !dbg !3234
  store i64 %conv, ptr %retval, align 8, !dbg !3234
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3234

if.else:                                          ; preds = %entry
  store i64 -5, ptr %retval, align 8, !dbg !3234
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3234

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #13, !dbg !3232
  %9 = load i64, ptr %retval, align 8, !dbg !3232
  ret i64 %9, !dbg !3232
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @k_d_store(ptr noundef %dev, ptr noundef %devattr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !3236 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %devattr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %tz = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %value = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3238, metadata !DIExpression()), !dbg !3246
  store ptr %devattr, ptr %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %devattr.addr, metadata !3239, metadata !DIExpression()), !dbg !3246
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3240, metadata !DIExpression()), !dbg !3246
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !3241, metadata !DIExpression()), !dbg !3246
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #13, !dbg !3246
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !3242, metadata !DIExpression()), !dbg !3246
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !3247
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3243, metadata !DIExpression()), !dbg !3247
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3247
  store ptr %0, ptr %__mptr, align 8, !dbg !3247
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3247
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !3247
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3247
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !3246
  %2 = load ptr, ptr %tmp, align 8, !dbg !3247
  store ptr %2, ptr %tz, align 8, !dbg !3246
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #13, !dbg !3246
  call void @llvm.dbg.declare(metadata ptr %value, metadata !3245, metadata !DIExpression()), !dbg !3246
  %3 = load ptr, ptr %tz, align 8, !dbg !3248
  %tzp = getelementptr inbounds %struct.thermal_zone_device, ptr %3, i32 0, i32 23, !dbg !3248
  %4 = load ptr, ptr %tzp, align 8, !dbg !3248
  %tobool = icmp ne ptr %4, null, !dbg !3248
  br i1 %tobool, label %if.end, label %if.then, !dbg !3246

if.then:                                          ; preds = %entry
  store i64 -5, ptr %retval, align 8, !dbg !3248
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3248

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !3250
  %call = call i32 @kstrtos32(ptr noundef %5, i32 noundef 10, ptr noundef %value) #15, !dbg !3250
  %tobool1 = icmp ne i32 %call, 0, !dbg !3250
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3246

if.then2:                                         ; preds = %if.end
  store i64 -22, ptr %retval, align 8, !dbg !3250
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3250

if.end3:                                          ; preds = %if.end
  %6 = load i32, ptr %value, align 4, !dbg !3246
  %7 = load ptr, ptr %tz, align 8, !dbg !3246
  %tzp4 = getelementptr inbounds %struct.thermal_zone_device, ptr %7, i32 0, i32 23, !dbg !3246
  %8 = load ptr, ptr %tzp4, align 8, !dbg !3246
  %k_d = getelementptr inbounds %struct.thermal_zone_params, ptr %8, i32 0, i32 6, !dbg !3246
  store i32 %6, ptr %k_d, align 4, !dbg !3246
  %9 = load i64, ptr %count.addr, align 8, !dbg !3246
  store i64 %9, ptr %retval, align 8, !dbg !3246
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3246

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #13, !dbg !3246
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #13, !dbg !3246
  %10 = load i64, ptr %retval, align 8, !dbg !3246
  ret i64 %10, !dbg !3246
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @integral_cutoff_show(ptr noundef %dev, ptr noundef %devattr, ptr noundef %buf) #0 align 16 !dbg !3252 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %devattr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %tz = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3254, metadata !DIExpression()), !dbg !3260
  store ptr %devattr, ptr %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %devattr.addr, metadata !3255, metadata !DIExpression()), !dbg !3260
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3256, metadata !DIExpression()), !dbg !3260
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #13, !dbg !3260
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !3257, metadata !DIExpression()), !dbg !3260
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !3261
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3258, metadata !DIExpression()), !dbg !3261
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3261
  store ptr %0, ptr %__mptr, align 8, !dbg !3261
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3261
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !3261
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3261
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !3260
  %2 = load ptr, ptr %tmp, align 8, !dbg !3261
  store ptr %2, ptr %tz, align 8, !dbg !3260
  %3 = load ptr, ptr %tz, align 8, !dbg !3262
  %tzp = getelementptr inbounds %struct.thermal_zone_device, ptr %3, i32 0, i32 23, !dbg !3262
  %4 = load ptr, ptr %tzp, align 8, !dbg !3262
  %tobool = icmp ne ptr %4, null, !dbg !3262
  br i1 %tobool, label %if.then, label %if.else, !dbg !3260

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !3262
  %6 = load ptr, ptr %tz, align 8, !dbg !3262
  %tzp1 = getelementptr inbounds %struct.thermal_zone_device, ptr %6, i32 0, i32 23, !dbg !3262
  %7 = load ptr, ptr %tzp1, align 8, !dbg !3262
  %integral_cutoff = getelementptr inbounds %struct.thermal_zone_params, ptr %7, i32 0, i32 7, !dbg !3262
  %8 = load i32, ptr %integral_cutoff, align 4, !dbg !3262
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %5, ptr noundef @.str, i32 noundef %8) #15, !dbg !3262
  %conv = sext i32 %call to i64, !dbg !3262
  store i64 %conv, ptr %retval, align 8, !dbg !3262
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3262

if.else:                                          ; preds = %entry
  store i64 -5, ptr %retval, align 8, !dbg !3262
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3262

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #13, !dbg !3260
  %9 = load i64, ptr %retval, align 8, !dbg !3260
  ret i64 %9, !dbg !3260
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @integral_cutoff_store(ptr noundef %dev, ptr noundef %devattr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !3264 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %devattr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %tz = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %value = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3266, metadata !DIExpression()), !dbg !3274
  store ptr %devattr, ptr %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %devattr.addr, metadata !3267, metadata !DIExpression()), !dbg !3274
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3268, metadata !DIExpression()), !dbg !3274
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !3269, metadata !DIExpression()), !dbg !3274
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #13, !dbg !3274
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !3270, metadata !DIExpression()), !dbg !3274
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !3275
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3271, metadata !DIExpression()), !dbg !3275
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3275
  store ptr %0, ptr %__mptr, align 8, !dbg !3275
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3275
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !3275
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3275
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !3274
  %2 = load ptr, ptr %tmp, align 8, !dbg !3275
  store ptr %2, ptr %tz, align 8, !dbg !3274
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #13, !dbg !3274
  call void @llvm.dbg.declare(metadata ptr %value, metadata !3273, metadata !DIExpression()), !dbg !3274
  %3 = load ptr, ptr %tz, align 8, !dbg !3276
  %tzp = getelementptr inbounds %struct.thermal_zone_device, ptr %3, i32 0, i32 23, !dbg !3276
  %4 = load ptr, ptr %tzp, align 8, !dbg !3276
  %tobool = icmp ne ptr %4, null, !dbg !3276
  br i1 %tobool, label %if.end, label %if.then, !dbg !3274

if.then:                                          ; preds = %entry
  store i64 -5, ptr %retval, align 8, !dbg !3276
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3276

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !3278
  %call = call i32 @kstrtos32(ptr noundef %5, i32 noundef 10, ptr noundef %value) #15, !dbg !3278
  %tobool1 = icmp ne i32 %call, 0, !dbg !3278
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3274

if.then2:                                         ; preds = %if.end
  store i64 -22, ptr %retval, align 8, !dbg !3278
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3278

if.end3:                                          ; preds = %if.end
  %6 = load i32, ptr %value, align 4, !dbg !3274
  %7 = load ptr, ptr %tz, align 8, !dbg !3274
  %tzp4 = getelementptr inbounds %struct.thermal_zone_device, ptr %7, i32 0, i32 23, !dbg !3274
  %8 = load ptr, ptr %tzp4, align 8, !dbg !3274
  %integral_cutoff = getelementptr inbounds %struct.thermal_zone_params, ptr %8, i32 0, i32 7, !dbg !3274
  store i32 %6, ptr %integral_cutoff, align 4, !dbg !3274
  %9 = load i64, ptr %count.addr, align 8, !dbg !3274
  store i64 %9, ptr %retval, align 8, !dbg !3274
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3274

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #13, !dbg !3274
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #13, !dbg !3274
  %10 = load i64, ptr %retval, align 8, !dbg !3274
  ret i64 %10, !dbg !3274
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @slope_show(ptr noundef %dev, ptr noundef %devattr, ptr noundef %buf) #0 align 16 !dbg !3280 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %devattr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %tz = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3282, metadata !DIExpression()), !dbg !3288
  store ptr %devattr, ptr %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %devattr.addr, metadata !3283, metadata !DIExpression()), !dbg !3288
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3284, metadata !DIExpression()), !dbg !3288
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #13, !dbg !3288
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !3285, metadata !DIExpression()), !dbg !3288
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !3289
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3286, metadata !DIExpression()), !dbg !3289
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3289
  store ptr %0, ptr %__mptr, align 8, !dbg !3289
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3289
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !3289
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3289
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !3288
  %2 = load ptr, ptr %tmp, align 8, !dbg !3289
  store ptr %2, ptr %tz, align 8, !dbg !3288
  %3 = load ptr, ptr %tz, align 8, !dbg !3290
  %tzp = getelementptr inbounds %struct.thermal_zone_device, ptr %3, i32 0, i32 23, !dbg !3290
  %4 = load ptr, ptr %tzp, align 8, !dbg !3290
  %tobool = icmp ne ptr %4, null, !dbg !3290
  br i1 %tobool, label %if.then, label %if.else, !dbg !3288

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !3290
  %6 = load ptr, ptr %tz, align 8, !dbg !3290
  %tzp1 = getelementptr inbounds %struct.thermal_zone_device, ptr %6, i32 0, i32 23, !dbg !3290
  %7 = load ptr, ptr %tzp1, align 8, !dbg !3290
  %slope = getelementptr inbounds %struct.thermal_zone_params, ptr %7, i32 0, i32 8, !dbg !3290
  %8 = load i32, ptr %slope, align 4, !dbg !3290
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %5, ptr noundef @.str, i32 noundef %8) #15, !dbg !3290
  %conv = sext i32 %call to i64, !dbg !3290
  store i64 %conv, ptr %retval, align 8, !dbg !3290
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3290

if.else:                                          ; preds = %entry
  store i64 -5, ptr %retval, align 8, !dbg !3290
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3290

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #13, !dbg !3288
  %9 = load i64, ptr %retval, align 8, !dbg !3288
  ret i64 %9, !dbg !3288
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @slope_store(ptr noundef %dev, ptr noundef %devattr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !3292 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %devattr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %tz = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %value = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3294, metadata !DIExpression()), !dbg !3302
  store ptr %devattr, ptr %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %devattr.addr, metadata !3295, metadata !DIExpression()), !dbg !3302
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3296, metadata !DIExpression()), !dbg !3302
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !3297, metadata !DIExpression()), !dbg !3302
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #13, !dbg !3302
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !3298, metadata !DIExpression()), !dbg !3302
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !3303
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3299, metadata !DIExpression()), !dbg !3303
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3303
  store ptr %0, ptr %__mptr, align 8, !dbg !3303
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3303
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !3303
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3303
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !3302
  %2 = load ptr, ptr %tmp, align 8, !dbg !3303
  store ptr %2, ptr %tz, align 8, !dbg !3302
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #13, !dbg !3302
  call void @llvm.dbg.declare(metadata ptr %value, metadata !3301, metadata !DIExpression()), !dbg !3302
  %3 = load ptr, ptr %tz, align 8, !dbg !3304
  %tzp = getelementptr inbounds %struct.thermal_zone_device, ptr %3, i32 0, i32 23, !dbg !3304
  %4 = load ptr, ptr %tzp, align 8, !dbg !3304
  %tobool = icmp ne ptr %4, null, !dbg !3304
  br i1 %tobool, label %if.end, label %if.then, !dbg !3302

if.then:                                          ; preds = %entry
  store i64 -5, ptr %retval, align 8, !dbg !3304
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3304

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !3306
  %call = call i32 @kstrtos32(ptr noundef %5, i32 noundef 10, ptr noundef %value) #15, !dbg !3306
  %tobool1 = icmp ne i32 %call, 0, !dbg !3306
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3302

if.then2:                                         ; preds = %if.end
  store i64 -22, ptr %retval, align 8, !dbg !3306
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3306

if.end3:                                          ; preds = %if.end
  %6 = load i32, ptr %value, align 4, !dbg !3302
  %7 = load ptr, ptr %tz, align 8, !dbg !3302
  %tzp4 = getelementptr inbounds %struct.thermal_zone_device, ptr %7, i32 0, i32 23, !dbg !3302
  %8 = load ptr, ptr %tzp4, align 8, !dbg !3302
  %slope = getelementptr inbounds %struct.thermal_zone_params, ptr %8, i32 0, i32 8, !dbg !3302
  store i32 %6, ptr %slope, align 4, !dbg !3302
  %9 = load i64, ptr %count.addr, align 8, !dbg !3302
  store i64 %9, ptr %retval, align 8, !dbg !3302
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3302

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #13, !dbg !3302
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #13, !dbg !3302
  %10 = load i64, ptr %retval, align 8, !dbg !3302
  ret i64 %10, !dbg !3302
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @offset_show(ptr noundef %dev, ptr noundef %devattr, ptr noundef %buf) #0 align 16 !dbg !3308 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %devattr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %tz = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3310, metadata !DIExpression()), !dbg !3316
  store ptr %devattr, ptr %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %devattr.addr, metadata !3311, metadata !DIExpression()), !dbg !3316
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3312, metadata !DIExpression()), !dbg !3316
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #13, !dbg !3316
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !3313, metadata !DIExpression()), !dbg !3316
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !3317
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3314, metadata !DIExpression()), !dbg !3317
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3317
  store ptr %0, ptr %__mptr, align 8, !dbg !3317
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3317
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !3317
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3317
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !3316
  %2 = load ptr, ptr %tmp, align 8, !dbg !3317
  store ptr %2, ptr %tz, align 8, !dbg !3316
  %3 = load ptr, ptr %tz, align 8, !dbg !3318
  %tzp = getelementptr inbounds %struct.thermal_zone_device, ptr %3, i32 0, i32 23, !dbg !3318
  %4 = load ptr, ptr %tzp, align 8, !dbg !3318
  %tobool = icmp ne ptr %4, null, !dbg !3318
  br i1 %tobool, label %if.then, label %if.else, !dbg !3316

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !3318
  %6 = load ptr, ptr %tz, align 8, !dbg !3318
  %tzp1 = getelementptr inbounds %struct.thermal_zone_device, ptr %6, i32 0, i32 23, !dbg !3318
  %7 = load ptr, ptr %tzp1, align 8, !dbg !3318
  %offset = getelementptr inbounds %struct.thermal_zone_params, ptr %7, i32 0, i32 9, !dbg !3318
  %8 = load i32, ptr %offset, align 4, !dbg !3318
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %5, ptr noundef @.str, i32 noundef %8) #15, !dbg !3318
  %conv = sext i32 %call to i64, !dbg !3318
  store i64 %conv, ptr %retval, align 8, !dbg !3318
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3318

if.else:                                          ; preds = %entry
  store i64 -5, ptr %retval, align 8, !dbg !3318
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3318

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #13, !dbg !3316
  %9 = load i64, ptr %retval, align 8, !dbg !3316
  ret i64 %9, !dbg !3316
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @offset_store(ptr noundef %dev, ptr noundef %devattr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !3320 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %devattr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %tz = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %value = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3322, metadata !DIExpression()), !dbg !3330
  store ptr %devattr, ptr %devattr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %devattr.addr, metadata !3323, metadata !DIExpression()), !dbg !3330
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3324, metadata !DIExpression()), !dbg !3330
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !3325, metadata !DIExpression()), !dbg !3330
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #13, !dbg !3330
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !3326, metadata !DIExpression()), !dbg !3330
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !3331
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3327, metadata !DIExpression()), !dbg !3331
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3331
  store ptr %0, ptr %__mptr, align 8, !dbg !3331
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3331
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !3331
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3331
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !3330
  %2 = load ptr, ptr %tmp, align 8, !dbg !3331
  store ptr %2, ptr %tz, align 8, !dbg !3330
  call void @llvm.lifetime.start.p0(i64 4, ptr %value) #13, !dbg !3330
  call void @llvm.dbg.declare(metadata ptr %value, metadata !3329, metadata !DIExpression()), !dbg !3330
  %3 = load ptr, ptr %tz, align 8, !dbg !3332
  %tzp = getelementptr inbounds %struct.thermal_zone_device, ptr %3, i32 0, i32 23, !dbg !3332
  %4 = load ptr, ptr %tzp, align 8, !dbg !3332
  %tobool = icmp ne ptr %4, null, !dbg !3332
  br i1 %tobool, label %if.end, label %if.then, !dbg !3330

if.then:                                          ; preds = %entry
  store i64 -5, ptr %retval, align 8, !dbg !3332
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3332

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !3334
  %call = call i32 @kstrtos32(ptr noundef %5, i32 noundef 10, ptr noundef %value) #15, !dbg !3334
  %tobool1 = icmp ne i32 %call, 0, !dbg !3334
  br i1 %tobool1, label %if.then2, label %if.end3, !dbg !3330

if.then2:                                         ; preds = %if.end
  store i64 -22, ptr %retval, align 8, !dbg !3334
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3334

if.end3:                                          ; preds = %if.end
  %6 = load i32, ptr %value, align 4, !dbg !3330
  %7 = load ptr, ptr %tz, align 8, !dbg !3330
  %tzp4 = getelementptr inbounds %struct.thermal_zone_device, ptr %7, i32 0, i32 23, !dbg !3330
  %8 = load ptr, ptr %tzp4, align 8, !dbg !3330
  %offset = getelementptr inbounds %struct.thermal_zone_params, ptr %8, i32 0, i32 9, !dbg !3330
  store i32 %6, ptr %offset, align 4, !dbg !3330
  %9 = load i64, ptr %count.addr, align 8, !dbg !3330
  store i64 %9, ptr %retval, align 8, !dbg !3330
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3330

cleanup:                                          ; preds = %if.end3, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %value) #13, !dbg !3330
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #13, !dbg !3330
  %10 = load i64, ptr %retval, align 8, !dbg !3330
  ret i64 %10, !dbg !3330
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @mode_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !3336 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %tz = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %enabled = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3338, metadata !DIExpression()), !dbg !3345
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3339, metadata !DIExpression()), !dbg !3346
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3340, metadata !DIExpression()), !dbg !3347
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #13, !dbg !3348
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !3341, metadata !DIExpression()), !dbg !3349
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !3350
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3342, metadata !DIExpression()), !dbg !3350
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3350
  store ptr %0, ptr %__mptr, align 8, !dbg !3350
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3350
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !3350
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3350
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !3351
  %2 = load ptr, ptr %tmp, align 8, !dbg !3350
  store ptr %2, ptr %tz, align 8, !dbg !3349
  call void @llvm.lifetime.start.p0(i64 4, ptr %enabled) #13, !dbg !3352
  call void @llvm.dbg.declare(metadata ptr %enabled, metadata !3344, metadata !DIExpression()), !dbg !3353
  %3 = load ptr, ptr %tz, align 8, !dbg !3354
  %lock = getelementptr inbounds %struct.thermal_zone_device, ptr %3, i32 0, i32 28, !dbg !3355
  call void @mutex_lock(ptr noundef %lock) #15, !dbg !3356
  %4 = load ptr, ptr %tz, align 8, !dbg !3357
  %call = call i32 @thermal_zone_device_is_enabled(ptr noundef %4) #15, !dbg !3358
  store i32 %call, ptr %enabled, align 4, !dbg !3359
  %5 = load ptr, ptr %tz, align 8, !dbg !3360
  %lock1 = getelementptr inbounds %struct.thermal_zone_device, ptr %5, i32 0, i32 28, !dbg !3361
  call void @mutex_unlock(ptr noundef %lock1) #15, !dbg !3362
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !3363
  %7 = load i32, ptr %enabled, align 4, !dbg !3364
  %tobool = icmp ne i32 %7, 0, !dbg !3364
  %8 = zext i1 %tobool to i64, !dbg !3364
  %cond = select i1 %tobool, ptr @.str.18, ptr @.str.19, !dbg !3364
  %call2 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %6, ptr noundef @.str.3, ptr noundef %cond) #15, !dbg !3365
  %conv = sext i32 %call2 to i64, !dbg !3365
  call void @llvm.lifetime.end.p0(i64 4, ptr %enabled) #13, !dbg !3366
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #13, !dbg !3366
  ret i64 %conv, !dbg !3367
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @mode_store(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !3368 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %tz = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3370, metadata !DIExpression()), !dbg !3378
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3371, metadata !DIExpression()), !dbg !3379
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3372, metadata !DIExpression()), !dbg !3380
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !3373, metadata !DIExpression()), !dbg !3381
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #13, !dbg !3382
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !3374, metadata !DIExpression()), !dbg !3383
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !3384
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3375, metadata !DIExpression()), !dbg !3384
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3384
  store ptr %0, ptr %__mptr, align 8, !dbg !3384
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3384
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !3384
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3384
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !3385
  %2 = load ptr, ptr %tmp, align 8, !dbg !3384
  store ptr %2, ptr %tz, align 8, !dbg !3383
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #13, !dbg !3386
  call void @llvm.dbg.declare(metadata ptr %result, metadata !3377, metadata !DIExpression()), !dbg !3387
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !3388
  %call = call i32 @strncmp(ptr noundef %3, ptr noundef @.str.18, i64 noundef 7) #15, !dbg !3390
  %tobool = icmp ne i32 %call, 0, !dbg !3390
  br i1 %tobool, label %if.else, label %if.then, !dbg !3391

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %tz, align 8, !dbg !3392
  %call1 = call i32 @thermal_zone_device_enable(ptr noundef %4) #15, !dbg !3393
  store i32 %call1, ptr %result, align 4, !dbg !3394
  br label %if.end7, !dbg !3395

if.else:                                          ; preds = %entry
  %5 = load ptr, ptr %buf.addr, align 8, !dbg !3396
  %call2 = call i32 @strncmp(ptr noundef %5, ptr noundef @.str.19, i64 noundef 8) #15, !dbg !3398
  %tobool3 = icmp ne i32 %call2, 0, !dbg !3398
  br i1 %tobool3, label %if.else6, label %if.then4, !dbg !3399

if.then4:                                         ; preds = %if.else
  %6 = load ptr, ptr %tz, align 8, !dbg !3400
  %call5 = call i32 @thermal_zone_device_disable(ptr noundef %6) #15, !dbg !3401
  store i32 %call5, ptr %result, align 4, !dbg !3402
  br label %if.end, !dbg !3403

if.else6:                                         ; preds = %if.else
  store i32 -22, ptr %result, align 4, !dbg !3404
  br label %if.end

if.end:                                           ; preds = %if.else6, %if.then4
  br label %if.end7

if.end7:                                          ; preds = %if.end, %if.then
  %7 = load i32, ptr %result, align 4, !dbg !3405
  %tobool8 = icmp ne i32 %7, 0, !dbg !3405
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !3407

if.then9:                                         ; preds = %if.end7
  %8 = load i32, ptr %result, align 4, !dbg !3408
  %conv = sext i32 %8 to i64, !dbg !3408
  store i64 %conv, ptr %retval, align 8, !dbg !3409
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3409

if.end10:                                         ; preds = %if.end7
  %9 = load i64, ptr %count.addr, align 8, !dbg !3410
  store i64 %9, ptr %retval, align 8, !dbg !3411
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3411

cleanup:                                          ; preds = %if.end10, %if.then9
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #13, !dbg !3412
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #13, !dbg !3412
  %10 = load i64, ptr %retval, align 8, !dbg !3412
  ret i64 %10, !dbg !3412
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3413 dso_local void @mutex_lock(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3417 dso_local i32 @thermal_zone_device_is_enabled(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3418 dso_local void @mutex_unlock(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3419 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3423 dso_local i32 @thermal_zone_device_enable(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3424 dso_local i32 @thermal_zone_device_disable(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @trip_point_type_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !3425 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %tz = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %trip = alloca %struct.thermal_trip, align 8
  %trip_id = alloca i32, align 4
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3427, metadata !DIExpression()), !dbg !3436
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3428, metadata !DIExpression()), !dbg !3437
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3429, metadata !DIExpression()), !dbg !3438
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #13, !dbg !3439
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !3430, metadata !DIExpression()), !dbg !3440
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !3441
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3431, metadata !DIExpression()), !dbg !3441
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3441
  store ptr %0, ptr %__mptr, align 8, !dbg !3441
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3441
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !3441
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3441
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !3442
  %2 = load ptr, ptr %tmp, align 8, !dbg !3441
  store ptr %2, ptr %tz, align 8, !dbg !3440
  call void @llvm.lifetime.start.p0(i64 24, ptr %trip) #13, !dbg !3443
  call void @llvm.dbg.declare(metadata ptr %trip, metadata !3433, metadata !DIExpression()), !dbg !3444
  call void @llvm.lifetime.start.p0(i64 4, ptr %trip_id) #13, !dbg !3445
  call void @llvm.dbg.declare(metadata ptr %trip_id, metadata !3434, metadata !DIExpression()), !dbg !3446
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #13, !dbg !3445
  call void @llvm.dbg.declare(metadata ptr %result, metadata !3435, metadata !DIExpression()), !dbg !3447
  %3 = load ptr, ptr %attr.addr, align 8, !dbg !3448
  %attr1 = getelementptr inbounds %struct.device_attribute, ptr %3, i32 0, i32 0, !dbg !3450
  %name = getelementptr inbounds %struct.attribute, ptr %attr1, i32 0, i32 0, !dbg !3451
  %4 = load ptr, ptr %name, align 8, !dbg !3451
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %4, ptr noundef @.str.20, ptr noundef %trip_id) #15, !dbg !3452
  %cmp = icmp ne i32 %call, 1, !dbg !3453
  br i1 %cmp, label %if.then, label %if.end, !dbg !3454

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !3455
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3455

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %tz, align 8, !dbg !3456
  %lock = getelementptr inbounds %struct.thermal_zone_device, ptr %5, i32 0, i32 28, !dbg !3457
  call void @mutex_lock(ptr noundef %lock) #15, !dbg !3458
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !3459
  %call2 = call i32 @device_is_registered(ptr noundef %6) #15, !dbg !3461
  %tobool = icmp ne i32 %call2, 0, !dbg !3461
  br i1 %tobool, label %if.then3, label %if.else, !dbg !3462

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %tz, align 8, !dbg !3463
  %8 = load i32, ptr %trip_id, align 4, !dbg !3464
  %call4 = call i32 @__thermal_zone_get_trip(ptr noundef %7, i32 noundef %8, ptr noundef %trip) #15, !dbg !3465
  store i32 %call4, ptr %result, align 4, !dbg !3466
  br label %if.end5, !dbg !3467

if.else:                                          ; preds = %if.end
  store i32 -19, ptr %result, align 4, !dbg !3468
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  %9 = load ptr, ptr %tz, align 8, !dbg !3469
  %lock6 = getelementptr inbounds %struct.thermal_zone_device, ptr %9, i32 0, i32 28, !dbg !3470
  call void @mutex_unlock(ptr noundef %lock6) #15, !dbg !3471
  %10 = load i32, ptr %result, align 4, !dbg !3472
  %tobool7 = icmp ne i32 %10, 0, !dbg !3472
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !3474

if.then8:                                         ; preds = %if.end5
  %11 = load i32, ptr %result, align 4, !dbg !3475
  %conv = sext i32 %11 to i64, !dbg !3475
  store i64 %conv, ptr %retval, align 8, !dbg !3476
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3476

if.end9:                                          ; preds = %if.end5
  %type = getelementptr inbounds %struct.thermal_trip, ptr %trip, i32 0, i32 2, !dbg !3477
  %12 = load i32, ptr %type, align 8, !dbg !3477
  switch i32 %12, label %sw.default [
    i32 3, label %sw.bb
    i32 2, label %sw.bb12
    i32 1, label %sw.bb15
    i32 0, label %sw.bb18
  ], !dbg !3478

sw.bb:                                            ; preds = %if.end9
  %13 = load ptr, ptr %buf.addr, align 8, !dbg !3479
  %call10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %13, ptr noundef @.str.23) #15, !dbg !3481
  %conv11 = sext i32 %call10 to i64, !dbg !3481
  store i64 %conv11, ptr %retval, align 8, !dbg !3482
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3482

sw.bb12:                                          ; preds = %if.end9
  %14 = load ptr, ptr %buf.addr, align 8, !dbg !3483
  %call13 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %14, ptr noundef @.str.24) #15, !dbg !3484
  %conv14 = sext i32 %call13 to i64, !dbg !3484
  store i64 %conv14, ptr %retval, align 8, !dbg !3485
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3485

sw.bb15:                                          ; preds = %if.end9
  %15 = load ptr, ptr %buf.addr, align 8, !dbg !3486
  %call16 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %15, ptr noundef @.str.25) #15, !dbg !3487
  %conv17 = sext i32 %call16 to i64, !dbg !3487
  store i64 %conv17, ptr %retval, align 8, !dbg !3488
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3488

sw.bb18:                                          ; preds = %if.end9
  %16 = load ptr, ptr %buf.addr, align 8, !dbg !3489
  %call19 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %16, ptr noundef @.str.26) #15, !dbg !3490
  %conv20 = sext i32 %call19 to i64, !dbg !3490
  store i64 %conv20, ptr %retval, align 8, !dbg !3491
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3491

sw.default:                                       ; preds = %if.end9
  %17 = load ptr, ptr %buf.addr, align 8, !dbg !3492
  %call21 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %17, ptr noundef @.str.27) #15, !dbg !3493
  %conv22 = sext i32 %call21 to i64, !dbg !3493
  store i64 %conv22, ptr %retval, align 8, !dbg !3494
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3494

cleanup:                                          ; preds = %sw.default, %sw.bb18, %sw.bb15, %sw.bb12, %sw.bb, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #13, !dbg !3495
  call void @llvm.lifetime.end.p0(i64 4, ptr %trip_id) #13, !dbg !3495
  call void @llvm.lifetime.end.p0(i64 24, ptr %trip) #13, !dbg !3495
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #13, !dbg !3495
  %18 = load i64, ptr %retval, align 8, !dbg !3495
  ret i64 %18, !dbg !3495
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @trip_point_temp_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !3496 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %tz = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %trip = alloca %struct.thermal_trip, align 8
  %trip_id = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3498, metadata !DIExpression()), !dbg !3507
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3499, metadata !DIExpression()), !dbg !3508
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3500, metadata !DIExpression()), !dbg !3509
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #13, !dbg !3510
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !3501, metadata !DIExpression()), !dbg !3511
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !3512
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3502, metadata !DIExpression()), !dbg !3512
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3512
  store ptr %0, ptr %__mptr, align 8, !dbg !3512
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3512
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !3512
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3512
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !3513
  %2 = load ptr, ptr %tmp, align 8, !dbg !3512
  store ptr %2, ptr %tz, align 8, !dbg !3511
  call void @llvm.lifetime.start.p0(i64 24, ptr %trip) #13, !dbg !3514
  call void @llvm.dbg.declare(metadata ptr %trip, metadata !3504, metadata !DIExpression()), !dbg !3515
  call void @llvm.lifetime.start.p0(i64 4, ptr %trip_id) #13, !dbg !3516
  call void @llvm.dbg.declare(metadata ptr %trip_id, metadata !3505, metadata !DIExpression()), !dbg !3517
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !3516
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3506, metadata !DIExpression()), !dbg !3518
  %3 = load ptr, ptr %attr.addr, align 8, !dbg !3519
  %attr1 = getelementptr inbounds %struct.device_attribute, ptr %3, i32 0, i32 0, !dbg !3521
  %name = getelementptr inbounds %struct.attribute, ptr %attr1, i32 0, i32 0, !dbg !3522
  %4 = load ptr, ptr %name, align 8, !dbg !3522
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %4, ptr noundef @.str.21, ptr noundef %trip_id) #15, !dbg !3523
  %cmp = icmp ne i32 %call, 1, !dbg !3524
  br i1 %cmp, label %if.then, label %if.end, !dbg !3525

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !3526
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3526

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %tz, align 8, !dbg !3527
  %lock = getelementptr inbounds %struct.thermal_zone_device, ptr %5, i32 0, i32 28, !dbg !3528
  call void @mutex_lock(ptr noundef %lock) #15, !dbg !3529
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !3530
  %call2 = call i32 @device_is_registered(ptr noundef %6) #15, !dbg !3532
  %tobool = icmp ne i32 %call2, 0, !dbg !3532
  br i1 %tobool, label %if.then3, label %if.else, !dbg !3533

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %tz, align 8, !dbg !3534
  %8 = load i32, ptr %trip_id, align 4, !dbg !3535
  %call4 = call i32 @__thermal_zone_get_trip(ptr noundef %7, i32 noundef %8, ptr noundef %trip) #15, !dbg !3536
  store i32 %call4, ptr %ret, align 4, !dbg !3537
  br label %if.end5, !dbg !3538

if.else:                                          ; preds = %if.end
  store i32 -19, ptr %ret, align 4, !dbg !3539
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  %9 = load ptr, ptr %tz, align 8, !dbg !3540
  %lock6 = getelementptr inbounds %struct.thermal_zone_device, ptr %9, i32 0, i32 28, !dbg !3541
  call void @mutex_unlock(ptr noundef %lock6) #15, !dbg !3542
  %10 = load i32, ptr %ret, align 4, !dbg !3543
  %tobool7 = icmp ne i32 %10, 0, !dbg !3543
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !3545

if.then8:                                         ; preds = %if.end5
  %11 = load i32, ptr %ret, align 4, !dbg !3546
  %conv = sext i32 %11 to i64, !dbg !3546
  store i64 %conv, ptr %retval, align 8, !dbg !3547
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3547

if.end9:                                          ; preds = %if.end5
  %12 = load ptr, ptr %buf.addr, align 8, !dbg !3548
  %temperature = getelementptr inbounds %struct.thermal_trip, ptr %trip, i32 0, i32 0, !dbg !3549
  %13 = load i32, ptr %temperature, align 8, !dbg !3549
  %call10 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %12, ptr noundef @.str, i32 noundef %13) #15, !dbg !3550
  %conv11 = sext i32 %call10 to i64, !dbg !3550
  store i64 %conv11, ptr %retval, align 8, !dbg !3551
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3551

cleanup:                                          ; preds = %if.end9, %if.then8, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !3552
  call void @llvm.lifetime.end.p0(i64 4, ptr %trip_id) #13, !dbg !3552
  call void @llvm.lifetime.end.p0(i64 24, ptr %trip) #13, !dbg !3552
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #13, !dbg !3552
  %14 = load i64, ptr %retval, align 8, !dbg !3552
  ret i64 %14, !dbg !3552
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @trip_point_temp_store(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !3553 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %tz = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %trip = alloca %struct.thermal_trip, align 8
  %trip_id = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3555, metadata !DIExpression()), !dbg !3566
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3556, metadata !DIExpression()), !dbg !3567
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3557, metadata !DIExpression()), !dbg !3568
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !3558, metadata !DIExpression()), !dbg !3569
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #13, !dbg !3570
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !3559, metadata !DIExpression()), !dbg !3571
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !3572
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3560, metadata !DIExpression()), !dbg !3572
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3572
  store ptr %0, ptr %__mptr, align 8, !dbg !3572
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3572
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !3572
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3572
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !3573
  %2 = load ptr, ptr %tmp, align 8, !dbg !3572
  store ptr %2, ptr %tz, align 8, !dbg !3571
  call void @llvm.lifetime.start.p0(i64 24, ptr %trip) #13, !dbg !3574
  call void @llvm.dbg.declare(metadata ptr %trip, metadata !3562, metadata !DIExpression()), !dbg !3575
  call void @llvm.lifetime.start.p0(i64 4, ptr %trip_id) #13, !dbg !3576
  call void @llvm.dbg.declare(metadata ptr %trip_id, metadata !3563, metadata !DIExpression()), !dbg !3577
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !3576
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3564, metadata !DIExpression()), !dbg !3578
  %3 = load ptr, ptr %attr.addr, align 8, !dbg !3579
  %attr1 = getelementptr inbounds %struct.device_attribute, ptr %3, i32 0, i32 0, !dbg !3581
  %name = getelementptr inbounds %struct.attribute, ptr %attr1, i32 0, i32 0, !dbg !3582
  %4 = load ptr, ptr %name, align 8, !dbg !3582
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %4, ptr noundef @.str.21, ptr noundef %trip_id) #15, !dbg !3583
  %cmp = icmp ne i32 %call, 1, !dbg !3584
  br i1 %cmp, label %if.then, label %if.end, !dbg !3585

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !3586
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3586

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %tz, align 8, !dbg !3587
  %lock = getelementptr inbounds %struct.thermal_zone_device, ptr %5, i32 0, i32 28, !dbg !3588
  call void @mutex_lock(ptr noundef %lock) #15, !dbg !3589
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !3590
  %call2 = call i32 @device_is_registered(ptr noundef %6) #15, !dbg !3592
  %tobool = icmp ne i32 %call2, 0, !dbg !3592
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !3593

if.then3:                                         ; preds = %if.end
  store i32 -19, ptr %ret, align 4, !dbg !3594
  br label %unlock, !dbg !3596

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %tz, align 8, !dbg !3597
  %8 = load i32, ptr %trip_id, align 4, !dbg !3598
  %call5 = call i32 @__thermal_zone_get_trip(ptr noundef %7, i32 noundef %8, ptr noundef %trip) #15, !dbg !3599
  store i32 %call5, ptr %ret, align 4, !dbg !3600
  %9 = load i32, ptr %ret, align 4, !dbg !3601
  %tobool6 = icmp ne i32 %9, 0, !dbg !3601
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !3603

if.then7:                                         ; preds = %if.end4
  br label %unlock, !dbg !3604

if.end8:                                          ; preds = %if.end4
  %10 = load ptr, ptr %buf.addr, align 8, !dbg !3605
  %temperature = getelementptr inbounds %struct.thermal_trip, ptr %trip, i32 0, i32 0, !dbg !3606
  %call9 = call i32 @kstrtoint(ptr noundef %10, i32 noundef 10, ptr noundef %temperature) #15, !dbg !3607
  store i32 %call9, ptr %ret, align 4, !dbg !3608
  %11 = load i32, ptr %ret, align 4, !dbg !3609
  %tobool10 = icmp ne i32 %11, 0, !dbg !3609
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !3611

if.then11:                                        ; preds = %if.end8
  br label %unlock, !dbg !3612

if.end12:                                         ; preds = %if.end8
  %12 = load ptr, ptr %tz, align 8, !dbg !3613
  %13 = load i32, ptr %trip_id, align 4, !dbg !3614
  %call13 = call i32 @thermal_zone_set_trip(ptr noundef %12, i32 noundef %13, ptr noundef %trip) #15, !dbg !3615
  store i32 %call13, ptr %ret, align 4, !dbg !3616
  br label %unlock, !dbg !3617

unlock:                                           ; preds = %if.end12, %if.then11, %if.then7, %if.then3
  call void @llvm.dbg.label(metadata !3565), !dbg !3618
  %14 = load ptr, ptr %tz, align 8, !dbg !3619
  %lock14 = getelementptr inbounds %struct.thermal_zone_device, ptr %14, i32 0, i32 28, !dbg !3620
  call void @mutex_unlock(ptr noundef %lock14) #15, !dbg !3621
  %15 = load i32, ptr %ret, align 4, !dbg !3622
  %tobool15 = icmp ne i32 %15, 0, !dbg !3622
  br i1 %tobool15, label %cond.true, label %cond.false, !dbg !3622

cond.true:                                        ; preds = %unlock
  %16 = load i32, ptr %ret, align 4, !dbg !3623
  %conv = sext i32 %16 to i64, !dbg !3623
  br label %cond.end, !dbg !3622

cond.false:                                       ; preds = %unlock
  %17 = load i64, ptr %count.addr, align 8, !dbg !3624
  br label %cond.end, !dbg !3622

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %17, %cond.false ], !dbg !3622
  store i64 %cond, ptr %retval, align 8, !dbg !3625
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3625

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !3626
  call void @llvm.lifetime.end.p0(i64 4, ptr %trip_id) #13, !dbg !3626
  call void @llvm.lifetime.end.p0(i64 24, ptr %trip) #13, !dbg !3626
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #13, !dbg !3626
  %18 = load i64, ptr %retval, align 8, !dbg !3626
  ret i64 %18, !dbg !3626
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @trip_point_hyst_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !3627 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %tz = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %trip = alloca %struct.thermal_trip, align 8
  %trip_id = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3629, metadata !DIExpression()), !dbg !3638
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3630, metadata !DIExpression()), !dbg !3639
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3631, metadata !DIExpression()), !dbg !3640
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #13, !dbg !3641
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !3632, metadata !DIExpression()), !dbg !3642
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !3643
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3633, metadata !DIExpression()), !dbg !3643
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3643
  store ptr %0, ptr %__mptr, align 8, !dbg !3643
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3643
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !3643
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3643
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !3644
  %2 = load ptr, ptr %tmp, align 8, !dbg !3643
  store ptr %2, ptr %tz, align 8, !dbg !3642
  call void @llvm.lifetime.start.p0(i64 24, ptr %trip) #13, !dbg !3645
  call void @llvm.dbg.declare(metadata ptr %trip, metadata !3635, metadata !DIExpression()), !dbg !3646
  call void @llvm.lifetime.start.p0(i64 4, ptr %trip_id) #13, !dbg !3647
  call void @llvm.dbg.declare(metadata ptr %trip_id, metadata !3636, metadata !DIExpression()), !dbg !3648
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !3647
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3637, metadata !DIExpression()), !dbg !3649
  %3 = load ptr, ptr %attr.addr, align 8, !dbg !3650
  %attr1 = getelementptr inbounds %struct.device_attribute, ptr %3, i32 0, i32 0, !dbg !3652
  %name = getelementptr inbounds %struct.attribute, ptr %attr1, i32 0, i32 0, !dbg !3653
  %4 = load ptr, ptr %name, align 8, !dbg !3653
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %4, ptr noundef @.str.22, ptr noundef %trip_id) #15, !dbg !3654
  %cmp = icmp ne i32 %call, 1, !dbg !3655
  br i1 %cmp, label %if.then, label %if.end, !dbg !3656

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !3657
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3657

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %tz, align 8, !dbg !3658
  %lock = getelementptr inbounds %struct.thermal_zone_device, ptr %5, i32 0, i32 28, !dbg !3659
  call void @mutex_lock(ptr noundef %lock) #15, !dbg !3660
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !3661
  %call2 = call i32 @device_is_registered(ptr noundef %6) #15, !dbg !3663
  %tobool = icmp ne i32 %call2, 0, !dbg !3663
  br i1 %tobool, label %if.then3, label %if.else, !dbg !3664

if.then3:                                         ; preds = %if.end
  %7 = load ptr, ptr %tz, align 8, !dbg !3665
  %8 = load i32, ptr %trip_id, align 4, !dbg !3666
  %call4 = call i32 @__thermal_zone_get_trip(ptr noundef %7, i32 noundef %8, ptr noundef %trip) #15, !dbg !3667
  store i32 %call4, ptr %ret, align 4, !dbg !3668
  br label %if.end5, !dbg !3669

if.else:                                          ; preds = %if.end
  store i32 -19, ptr %ret, align 4, !dbg !3670
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3
  %9 = load ptr, ptr %tz, align 8, !dbg !3671
  %lock6 = getelementptr inbounds %struct.thermal_zone_device, ptr %9, i32 0, i32 28, !dbg !3672
  call void @mutex_unlock(ptr noundef %lock6) #15, !dbg !3673
  %10 = load i32, ptr %ret, align 4, !dbg !3674
  %tobool7 = icmp ne i32 %10, 0, !dbg !3674
  br i1 %tobool7, label %cond.true, label %cond.false, !dbg !3674

cond.true:                                        ; preds = %if.end5
  %11 = load i32, ptr %ret, align 4, !dbg !3675
  br label %cond.end, !dbg !3674

cond.false:                                       ; preds = %if.end5
  %12 = load ptr, ptr %buf.addr, align 8, !dbg !3676
  %hysteresis = getelementptr inbounds %struct.thermal_trip, ptr %trip, i32 0, i32 1, !dbg !3677
  %13 = load i32, ptr %hysteresis, align 4, !dbg !3677
  %call8 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %12, ptr noundef @.str, i32 noundef %13) #15, !dbg !3678
  br label %cond.end, !dbg !3674

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ %call8, %cond.false ], !dbg !3674
  %conv = sext i32 %cond to i64, !dbg !3674
  store i64 %conv, ptr %retval, align 8, !dbg !3679
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3679

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !3680
  call void @llvm.lifetime.end.p0(i64 4, ptr %trip_id) #13, !dbg !3680
  call void @llvm.lifetime.end.p0(i64 24, ptr %trip) #13, !dbg !3680
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #13, !dbg !3680
  %14 = load i64, ptr %retval, align 8, !dbg !3680
  ret i64 %14, !dbg !3680
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @trip_point_hyst_store(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !3681 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %tz = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %trip = alloca %struct.thermal_trip, align 8
  %trip_id = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3683, metadata !DIExpression()), !dbg !3694
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3684, metadata !DIExpression()), !dbg !3695
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3685, metadata !DIExpression()), !dbg !3696
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !3686, metadata !DIExpression()), !dbg !3697
  call void @llvm.lifetime.start.p0(i64 8, ptr %tz) #13, !dbg !3698
  call void @llvm.dbg.declare(metadata ptr %tz, metadata !3687, metadata !DIExpression()), !dbg !3699
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !3700
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3688, metadata !DIExpression()), !dbg !3700
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3700
  store ptr %0, ptr %__mptr, align 8, !dbg !3700
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3700
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !3700
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3700
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !3701
  %2 = load ptr, ptr %tmp, align 8, !dbg !3700
  store ptr %2, ptr %tz, align 8, !dbg !3699
  call void @llvm.lifetime.start.p0(i64 24, ptr %trip) #13, !dbg !3702
  call void @llvm.dbg.declare(metadata ptr %trip, metadata !3690, metadata !DIExpression()), !dbg !3703
  call void @llvm.lifetime.start.p0(i64 4, ptr %trip_id) #13, !dbg !3704
  call void @llvm.dbg.declare(metadata ptr %trip_id, metadata !3691, metadata !DIExpression()), !dbg !3705
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !3704
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3692, metadata !DIExpression()), !dbg !3706
  %3 = load ptr, ptr %attr.addr, align 8, !dbg !3707
  %attr1 = getelementptr inbounds %struct.device_attribute, ptr %3, i32 0, i32 0, !dbg !3709
  %name = getelementptr inbounds %struct.attribute, ptr %attr1, i32 0, i32 0, !dbg !3710
  %4 = load ptr, ptr %name, align 8, !dbg !3710
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %4, ptr noundef @.str.22, ptr noundef %trip_id) #15, !dbg !3711
  %cmp = icmp ne i32 %call, 1, !dbg !3712
  br i1 %cmp, label %if.then, label %if.end, !dbg !3713

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !3714
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3714

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %tz, align 8, !dbg !3715
  %lock = getelementptr inbounds %struct.thermal_zone_device, ptr %5, i32 0, i32 28, !dbg !3716
  call void @mutex_lock(ptr noundef %lock) #15, !dbg !3717
  %6 = load ptr, ptr %dev.addr, align 8, !dbg !3718
  %call2 = call i32 @device_is_registered(ptr noundef %6) #15, !dbg !3720
  %tobool = icmp ne i32 %call2, 0, !dbg !3720
  br i1 %tobool, label %if.end4, label %if.then3, !dbg !3721

if.then3:                                         ; preds = %if.end
  store i32 -19, ptr %ret, align 4, !dbg !3722
  br label %unlock, !dbg !3724

if.end4:                                          ; preds = %if.end
  %7 = load ptr, ptr %tz, align 8, !dbg !3725
  %8 = load i32, ptr %trip_id, align 4, !dbg !3726
  %call5 = call i32 @__thermal_zone_get_trip(ptr noundef %7, i32 noundef %8, ptr noundef %trip) #15, !dbg !3727
  store i32 %call5, ptr %ret, align 4, !dbg !3728
  %9 = load i32, ptr %ret, align 4, !dbg !3729
  %tobool6 = icmp ne i32 %9, 0, !dbg !3729
  br i1 %tobool6, label %if.then7, label %if.end8, !dbg !3731

if.then7:                                         ; preds = %if.end4
  br label %unlock, !dbg !3732

if.end8:                                          ; preds = %if.end4
  %10 = load ptr, ptr %buf.addr, align 8, !dbg !3733
  %hysteresis = getelementptr inbounds %struct.thermal_trip, ptr %trip, i32 0, i32 1, !dbg !3734
  %call9 = call i32 @kstrtoint(ptr noundef %10, i32 noundef 10, ptr noundef %hysteresis) #15, !dbg !3735
  store i32 %call9, ptr %ret, align 4, !dbg !3736
  %11 = load i32, ptr %ret, align 4, !dbg !3737
  %tobool10 = icmp ne i32 %11, 0, !dbg !3737
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !3739

if.then11:                                        ; preds = %if.end8
  br label %unlock, !dbg !3740

if.end12:                                         ; preds = %if.end8
  %12 = load ptr, ptr %tz, align 8, !dbg !3741
  %13 = load i32, ptr %trip_id, align 4, !dbg !3742
  %call13 = call i32 @thermal_zone_set_trip(ptr noundef %12, i32 noundef %13, ptr noundef %trip) #15, !dbg !3743
  store i32 %call13, ptr %ret, align 4, !dbg !3744
  br label %unlock, !dbg !3745

unlock:                                           ; preds = %if.end12, %if.then11, %if.then7, %if.then3
  call void @llvm.dbg.label(metadata !3693), !dbg !3746
  %14 = load ptr, ptr %tz, align 8, !dbg !3747
  %lock14 = getelementptr inbounds %struct.thermal_zone_device, ptr %14, i32 0, i32 28, !dbg !3748
  call void @mutex_unlock(ptr noundef %lock14) #15, !dbg !3749
  %15 = load i32, ptr %ret, align 4, !dbg !3750
  %tobool15 = icmp ne i32 %15, 0, !dbg !3750
  br i1 %tobool15, label %cond.true, label %cond.false, !dbg !3750

cond.true:                                        ; preds = %unlock
  %16 = load i32, ptr %ret, align 4, !dbg !3751
  %conv = sext i32 %16 to i64, !dbg !3751
  br label %cond.end, !dbg !3750

cond.false:                                       ; preds = %unlock
  %17 = load i64, ptr %count.addr, align 8, !dbg !3752
  br label %cond.end, !dbg !3750

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %17, %cond.false ], !dbg !3750
  store i64 %cond, ptr %retval, align 8, !dbg !3753
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3753

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !3754
  call void @llvm.lifetime.end.p0(i64 4, ptr %trip_id) #13, !dbg !3754
  call void @llvm.lifetime.end.p0(i64 24, ptr %trip) #13, !dbg !3754
  call void @llvm.lifetime.end.p0(i64 8, ptr %tz) #13, !dbg !3754
  %18 = load i64, ptr %retval, align 8, !dbg !3754
  ret i64 %18, !dbg !3754
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3755 dso_local i32 @sscanf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @device_is_registered(ptr noundef %dev) #5 align 16 !dbg !3758 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3760, metadata !DIExpression()), !dbg !3761
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3762
  %kobj = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 0, !dbg !3763
  %state_in_sysfs = getelementptr inbounds %struct.kobject, ptr %kobj, i32 0, i32 7, !dbg !3764
  %bf.load = load i8, ptr %state_in_sysfs, align 4, !dbg !3764
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !3764
  %bf.clear = and i8 %bf.lshr, 1, !dbg !3764
  %bf.cast = zext i8 %bf.clear to i32, !dbg !3764
  ret i32 %bf.cast, !dbg !3765
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3766 dso_local i32 @__thermal_zone_get_trip(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3769 dso_local i32 @thermal_zone_set_trip(ptr noundef, i32 noundef, ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cdev_type_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !3772 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %cdev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3774, metadata !DIExpression()), !dbg !3780
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3775, metadata !DIExpression()), !dbg !3781
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3776, metadata !DIExpression()), !dbg !3782
  call void @llvm.lifetime.start.p0(i64 8, ptr %cdev) #13, !dbg !3783
  call void @llvm.dbg.declare(metadata ptr %cdev, metadata !3777, metadata !DIExpression()), !dbg !3784
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !3785
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3778, metadata !DIExpression()), !dbg !3785
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3785
  store ptr %0, ptr %__mptr, align 8, !dbg !3785
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3785
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !3785
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3785
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !3786
  %2 = load ptr, ptr %tmp, align 8, !dbg !3785
  store ptr %2, ptr %cdev, align 8, !dbg !3784
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !3787
  %4 = load ptr, ptr %cdev, align 8, !dbg !3788
  %type = getelementptr inbounds %struct.thermal_cooling_device, ptr %4, i32 0, i32 1, !dbg !3789
  %5 = load ptr, ptr %type, align 8, !dbg !3789
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef @.str.3, ptr noundef %5) #15, !dbg !3790
  %conv = sext i32 %call to i64, !dbg !3790
  call void @llvm.lifetime.end.p0(i64 8, ptr %cdev) #13, !dbg !3791
  ret i64 %conv, !dbg !3792
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @max_state_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !3793 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %cdev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3795, metadata !DIExpression()), !dbg !3801
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3796, metadata !DIExpression()), !dbg !3802
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3797, metadata !DIExpression()), !dbg !3803
  call void @llvm.lifetime.start.p0(i64 8, ptr %cdev) #13, !dbg !3804
  call void @llvm.dbg.declare(metadata ptr %cdev, metadata !3798, metadata !DIExpression()), !dbg !3805
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !3806
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3799, metadata !DIExpression()), !dbg !3806
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3806
  store ptr %0, ptr %__mptr, align 8, !dbg !3806
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3806
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !3806
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3806
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !3807
  %2 = load ptr, ptr %tmp, align 8, !dbg !3806
  store ptr %2, ptr %cdev, align 8, !dbg !3805
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !3808
  %4 = load ptr, ptr %cdev, align 8, !dbg !3809
  %max_state = getelementptr inbounds %struct.thermal_cooling_device, ptr %4, i32 0, i32 2, !dbg !3810
  %5 = load i64, ptr %max_state, align 8, !dbg !3810
  %call = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %3, ptr noundef @.str.29, i64 noundef %5) #15, !dbg !3811
  %conv = sext i32 %call to i64, !dbg !3811
  call void @llvm.lifetime.end.p0(i64 8, ptr %cdev) #13, !dbg !3812
  ret i64 %conv, !dbg !3813
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cur_state_show(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !3814 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %cdev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %state = alloca i64, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3816, metadata !DIExpression()), !dbg !3824
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3817, metadata !DIExpression()), !dbg !3825
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3818, metadata !DIExpression()), !dbg !3826
  call void @llvm.lifetime.start.p0(i64 8, ptr %cdev) #13, !dbg !3827
  call void @llvm.dbg.declare(metadata ptr %cdev, metadata !3819, metadata !DIExpression()), !dbg !3828
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !3829
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3820, metadata !DIExpression()), !dbg !3829
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3829
  store ptr %0, ptr %__mptr, align 8, !dbg !3829
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3829
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !3829
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3829
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !3830
  %2 = load ptr, ptr %tmp, align 8, !dbg !3829
  store ptr %2, ptr %cdev, align 8, !dbg !3828
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #13, !dbg !3831
  call void @llvm.dbg.declare(metadata ptr %state, metadata !3822, metadata !DIExpression()), !dbg !3832
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #13, !dbg !3833
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !3823, metadata !DIExpression()), !dbg !3834
  %3 = load ptr, ptr %cdev, align 8, !dbg !3835
  %ops = getelementptr inbounds %struct.thermal_cooling_device, ptr %3, i32 0, i32 7, !dbg !3836
  %4 = load ptr, ptr %ops, align 8, !dbg !3836
  %get_cur_state = getelementptr inbounds %struct.thermal_cooling_device_ops, ptr %4, i32 0, i32 1, !dbg !3837
  %5 = load ptr, ptr %get_cur_state, align 8, !dbg !3837
  %6 = load ptr, ptr %cdev, align 8, !dbg !3838
  %call = call i32 %5(ptr noundef %6, ptr noundef %state) #15, !dbg !3835
  store i32 %call, ptr %ret, align 4, !dbg !3839
  %7 = load i32, ptr %ret, align 4, !dbg !3840
  %tobool = icmp ne i32 %7, 0, !dbg !3840
  br i1 %tobool, label %if.then, label %if.end, !dbg !3842

if.then:                                          ; preds = %entry
  %8 = load i32, ptr %ret, align 4, !dbg !3843
  %conv = sext i32 %8 to i64, !dbg !3843
  store i64 %conv, ptr %retval, align 8, !dbg !3844
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3844

if.end:                                           ; preds = %entry
  %9 = load ptr, ptr %buf.addr, align 8, !dbg !3845
  %10 = load i64, ptr %state, align 8, !dbg !3846
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %9, ptr noundef @.str.29, i64 noundef %10) #15, !dbg !3847
  %conv2 = sext i32 %call1 to i64, !dbg !3847
  store i64 %conv2, ptr %retval, align 8, !dbg !3848
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3848

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #13, !dbg !3849
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #13, !dbg !3849
  call void @llvm.lifetime.end.p0(i64 8, ptr %cdev) #13, !dbg !3849
  %11 = load i64, ptr %retval, align 8, !dbg !3849
  ret i64 %11, !dbg !3849
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @cur_state_store(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf, i64 noundef %count) #0 align 16 !dbg !3850 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %count.addr = alloca i64, align 8
  %cdev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %state = alloca i64, align 8
  %result = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3852, metadata !DIExpression()), !dbg !3861
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !3853, metadata !DIExpression()), !dbg !3862
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !3854, metadata !DIExpression()), !dbg !3863
  store i64 %count, ptr %count.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %count.addr, metadata !3855, metadata !DIExpression()), !dbg !3864
  call void @llvm.lifetime.start.p0(i64 8, ptr %cdev) #13, !dbg !3865
  call void @llvm.dbg.declare(metadata ptr %cdev, metadata !3856, metadata !DIExpression()), !dbg !3866
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #13, !dbg !3867
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3857, metadata !DIExpression()), !dbg !3867
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3867
  store ptr %0, ptr %__mptr, align 8, !dbg !3867
  %1 = load ptr, ptr %__mptr, align 8, !dbg !3867
  %add.ptr = getelementptr i8, ptr %1, i64 -24, !dbg !3867
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !3867
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #13, !dbg !3868
  %2 = load ptr, ptr %tmp, align 8, !dbg !3867
  store ptr %2, ptr %cdev, align 8, !dbg !3866
  call void @llvm.lifetime.start.p0(i64 8, ptr %state) #13, !dbg !3869
  call void @llvm.dbg.declare(metadata ptr %state, metadata !3859, metadata !DIExpression()), !dbg !3870
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #13, !dbg !3871
  call void @llvm.dbg.declare(metadata ptr %result, metadata !3860, metadata !DIExpression()), !dbg !3872
  %3 = load ptr, ptr %buf.addr, align 8, !dbg !3873
  %call = call i32 (ptr, ptr, ...) @sscanf(ptr noundef %3, ptr noundef @.str.29, ptr noundef %state) #15, !dbg !3875
  %cmp = icmp ne i32 %call, 1, !dbg !3876
  br i1 %cmp, label %if.then, label %if.end, !dbg !3877

if.then:                                          ; preds = %entry
  store i64 -22, ptr %retval, align 8, !dbg !3878
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3878

if.end:                                           ; preds = %entry
  %4 = load i64, ptr %state, align 8, !dbg !3879
  %cmp1 = icmp slt i64 %4, 0, !dbg !3881
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !3882

if.then2:                                         ; preds = %if.end
  store i64 -22, ptr %retval, align 8, !dbg !3883
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3883

if.end3:                                          ; preds = %if.end
  %5 = load i64, ptr %state, align 8, !dbg !3884
  %6 = load ptr, ptr %cdev, align 8, !dbg !3886
  %max_state = getelementptr inbounds %struct.thermal_cooling_device, ptr %6, i32 0, i32 2, !dbg !3887
  %7 = load i64, ptr %max_state, align 8, !dbg !3887
  %cmp4 = icmp ugt i64 %5, %7, !dbg !3888
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3889

if.then5:                                         ; preds = %if.end3
  store i64 -22, ptr %retval, align 8, !dbg !3890
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3890

if.end6:                                          ; preds = %if.end3
  %8 = load ptr, ptr %cdev, align 8, !dbg !3891
  %lock = getelementptr inbounds %struct.thermal_cooling_device, ptr %8, i32 0, i32 9, !dbg !3892
  call void @mutex_lock(ptr noundef %lock) #15, !dbg !3893
  %9 = load ptr, ptr %cdev, align 8, !dbg !3894
  %ops = getelementptr inbounds %struct.thermal_cooling_device, ptr %9, i32 0, i32 7, !dbg !3895
  %10 = load ptr, ptr %ops, align 8, !dbg !3895
  %set_cur_state = getelementptr inbounds %struct.thermal_cooling_device_ops, ptr %10, i32 0, i32 2, !dbg !3896
  %11 = load ptr, ptr %set_cur_state, align 8, !dbg !3896
  %12 = load ptr, ptr %cdev, align 8, !dbg !3897
  %13 = load i64, ptr %state, align 8, !dbg !3898
  %call7 = call i32 %11(ptr noundef %12, i64 noundef %13) #15, !dbg !3894
  store i32 %call7, ptr %result, align 4, !dbg !3899
  %14 = load i32, ptr %result, align 4, !dbg !3900
  %tobool = icmp ne i32 %14, 0, !dbg !3900
  br i1 %tobool, label %if.end9, label %if.then8, !dbg !3902

if.then8:                                         ; preds = %if.end6
  %15 = load ptr, ptr %cdev, align 8, !dbg !3903
  %16 = load i64, ptr %state, align 8, !dbg !3904
  call void @thermal_cooling_device_stats_update(ptr noundef %15, i64 noundef %16) #15, !dbg !3905
  br label %if.end9, !dbg !3905

if.end9:                                          ; preds = %if.then8, %if.end6
  %17 = load ptr, ptr %cdev, align 8, !dbg !3906
  %lock10 = getelementptr inbounds %struct.thermal_cooling_device, ptr %17, i32 0, i32 9, !dbg !3907
  call void @mutex_unlock(ptr noundef %lock10) #15, !dbg !3908
  %18 = load i32, ptr %result, align 4, !dbg !3909
  %tobool11 = icmp ne i32 %18, 0, !dbg !3909
  br i1 %tobool11, label %cond.true, label %cond.false, !dbg !3909

cond.true:                                        ; preds = %if.end9
  %19 = load i32, ptr %result, align 4, !dbg !3910
  %conv = sext i32 %19 to i64, !dbg !3910
  br label %cond.end, !dbg !3909

cond.false:                                       ; preds = %if.end9
  %20 = load i64, ptr %count.addr, align 8, !dbg !3911
  br label %cond.end, !dbg !3909

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv, %cond.true ], [ %20, %cond.false ], !dbg !3909
  store i64 %cond, ptr %retval, align 8, !dbg !3912
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3912

cleanup:                                          ; preds = %cond.end, %if.then5, %if.then2, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #13, !dbg !3913
  call void @llvm.lifetime.end.p0(i64 8, ptr %state) #13, !dbg !3913
  call void @llvm.lifetime.end.p0(i64 8, ptr %cdev) #13, !dbg !3913
  %21 = load i64, ptr %retval, align 8, !dbg !3913
  ret i64 %21, !dbg !3913
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @thermal_cooling_device_stats_update(ptr noundef %cdev, i64 noundef %new_state) #5 align 16 !dbg !3914 {
entry:
  %cdev.addr = alloca ptr, align 8
  %new_state.addr = alloca i64, align 8
  store ptr %cdev, ptr %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdev.addr, metadata !3918, metadata !DIExpression()), !dbg !3920
  store i64 %new_state, ptr %new_state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new_state.addr, metadata !3919, metadata !DIExpression()), !dbg !3921
  ret void, !dbg !3922
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0,1) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #7 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #10 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { nounwind }
attributes #14 = { noredzone allocsize(0,1) }
attributes #15 = { noredzone }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone allocsize(2) }
attributes #18 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091}
!llvm.ident = !{!2092}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "thermal_zone_attribute_groups", scope: !2, file: !3, line: 418, type: !2083, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/thermal/.thermal_sysfs.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/thermal/thermal_sys\22 -D KBUILD_BASENAME=\22thermal_sysfs\22 -D KBUILD_MODNAME=\22thermal_sys\22 -D __KBUILD_MODNAME=kmod_thermal_sys -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/thermal/thermal_sysfs.ll drivers/thermal/thermal_sysfs.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !127, globals: !1942, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/thermal/thermal_sysfs.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7de14c1fa6287f804b904ec58e486")
!4 = !{!5, !12, !19, !25, !32, !37, !45, !53, !59, !68, !73, !78, !84, !89, !95, !101, !112, !117}
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
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !54, line: 30, baseType: !7, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!55 = !{!56, !57, !58}
!56 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!57 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!58 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !26, line: 547, baseType: !7, size: 32, elements: !60)
!60 = !{!61, !62, !63, !64, !65, !66, !67}
!61 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!62 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!63 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!64 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!65 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!66 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!67 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!68 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !26, line: 564, baseType: !7, size: 32, elements: !69)
!69 = !{!70, !71, !72}
!70 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!71 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!72 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!73 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !26, line: 577, baseType: !7, size: 32, elements: !74)
!74 = !{!75, !76, !77}
!75 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!76 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!77 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !26, line: 503, baseType: !7, size: 32, elements: !79)
!79 = !{!80, !81, !82, !83}
!80 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!81 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!82 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!83 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_device_mode", file: !85, line: 7, baseType: !7, size: 32, elements: !86)
!85 = !DIFile(filename: "./include/uapi/linux/thermal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c0988915424caf116c4c8a170acf5e63")
!86 = !{!87, !88}
!87 = !DIEnumerator(name: "THERMAL_DEVICE_DISABLED", value: 0)
!88 = !DIEnumerator(name: "THERMAL_DEVICE_ENABLED", value: 1)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_trip_type", file: !85, line: 12, baseType: !7, size: 32, elements: !90)
!90 = !{!91, !92, !93, !94}
!91 = !DIEnumerator(name: "THERMAL_TRIP_ACTIVE", value: 0)
!92 = !DIEnumerator(name: "THERMAL_TRIP_PASSIVE", value: 1)
!93 = !DIEnumerator(name: "THERMAL_TRIP_HOT", value: 2)
!94 = !DIEnumerator(name: "THERMAL_TRIP_CRITICAL", value: 3)
!95 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_trend", file: !96, line: 37, baseType: !7, size: 32, elements: !97)
!96 = !DIFile(filename: "./include/linux/thermal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0720786b938087c9219e0058826384af")
!97 = !{!98, !99, !100}
!98 = !DIEnumerator(name: "THERMAL_TREND_STABLE", value: 0)
!99 = !DIEnumerator(name: "THERMAL_TREND_RAISING", value: 1)
!100 = !DIEnumerator(name: "THERMAL_TREND_DROPPING", value: 2)
!101 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "thermal_notify_event", file: !96, line: 44, baseType: !7, size: 32, elements: !102)
!102 = !{!103, !104, !105, !106, !107, !108, !109, !110, !111}
!103 = !DIEnumerator(name: "THERMAL_EVENT_UNSPECIFIED", value: 0)
!104 = !DIEnumerator(name: "THERMAL_EVENT_TEMP_SAMPLE", value: 1)
!105 = !DIEnumerator(name: "THERMAL_TRIP_VIOLATED", value: 2)
!106 = !DIEnumerator(name: "THERMAL_TRIP_CHANGED", value: 3)
!107 = !DIEnumerator(name: "THERMAL_DEVICE_DOWN", value: 4)
!108 = !DIEnumerator(name: "THERMAL_DEVICE_UP", value: 5)
!109 = !DIEnumerator(name: "THERMAL_DEVICE_POWER_CAPABILITY_CHANGED", value: 6)
!110 = !DIEnumerator(name: "THERMAL_TABLE_CHANGED", value: 7)
!111 = !DIEnumerator(name: "THERMAL_EVENT_KEEP_ALIVE", value: 8)
!112 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !113, line: 10, baseType: !7, size: 32, elements: !114)
!113 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!114 = !{!115, !116}
!115 = !DIEnumerator(name: "false", value: 0)
!116 = !DIEnumerator(name: "true", value: 1)
!117 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !118, line: 364, baseType: !7, size: 32, elements: !119)
!118 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!119 = !{!120, !121, !122, !123, !124, !125, !126}
!120 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0)
!121 = !DIEnumerator(name: "KMALLOC_CGROUP", value: 0)
!122 = !DIEnumerator(name: "KMALLOC_RANDOM_START", value: 0)
!123 = !DIEnumerator(name: "KMALLOC_RANDOM_END", value: 0)
!124 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1)
!125 = !DIEnumerator(name: "KMALLOC_DMA", value: 2)
!126 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3)
!127 = !{!46, !128, !130, !131, !291, !142, !1811, !277}
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !129, line: 154, baseType: !7)
!129 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_instance", file: !133, line: 85, size: 1856, elements: !134)
!133 = !DIFile(filename: "drivers/thermal/thermal_core.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f61e469943239d2bc6fea21f68a30bb4")
!134 = !{!135, !136, !141, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !132, file: !133, line: 86, baseType: !46, size: 32)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !132, file: !133, line: 87, baseType: !137, size: 160, offset: 32)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 160, elements: !139)
!138 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!139 = !{!140}
!140 = !DISubrange(count: 20)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "tz", scope: !132, file: !133, line: 88, baseType: !142, size: 64, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device", file: !96, line: 156, size: 9152, elements: !144)
!144 = !{!145, !146, !147, !1760, !1761, !1762, !1780, !1781, !1782, !1783, !1784, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1884, !1898, !1910, !1911, !1912, !1923, !1924, !1925, !1926, !1927}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !143, file: !96, line: 157, baseType: !46, size: 32)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !143, file: !96, line: 158, baseType: !137, size: 160, offset: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !143, file: !96, line: 159, baseType: !148, size: 5824, offset: 192)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !149)
!149 = !{!150, !816, !818, !821, !822, !875, !1343, !1344, !1345, !1346, !1347, !1354, !1524, !1537, !1547, !1551, !1553, !1554, !1555, !1559, !1566, !1567, !1570, !1573, !1699, !1700, !1701, !1704, !1705, !1706, !1707, !1737, !1738, !1739, !1742, !1745, !1754, !1755, !1756, !1757, !1758, !1759}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !148, file: !26, line: 706, baseType: !151, size: 512)
!151 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !152, line: 64, size: 512, elements: !153)
!152 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!153 = !{!154, !157, !163, !165, !254, !686, !801, !811, !812, !813, !814, !815}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !151, file: !152, line: 65, baseType: !155, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !151, file: !152, line: 66, baseType: !158, size: 128, offset: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !129, line: 190, size: 128, elements: !159)
!159 = !{!160, !162}
!160 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !158, file: !129, line: 191, baseType: !161, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!162 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !158, file: !129, line: 191, baseType: !161, size: 64, offset: 64)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !151, file: !152, line: 67, baseType: !164, size: 64, offset: 192)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !151, file: !152, line: 68, baseType: !166, size: 64, offset: 256)
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !152, line: 168, size: 768, elements: !168)
!168 = !{!169, !170, !213, !214}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !167, file: !152, line: 169, baseType: !158, size: 128)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !167, file: !152, line: 170, baseType: !171, size: 32, offset: 128)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !172, line: 29, baseType: !173)
!172 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !172, line: 17, size: 32, elements: !174)
!174 = !{!175}
!175 = !DIDerivedType(tag: DW_TAG_member, scope: !173, file: !172, line: 18, baseType: !176, size: 32)
!176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !173, file: !172, line: 18, size: 32, elements: !177)
!177 = !{!178}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !176, file: !172, line: 19, baseType: !179, size: 32)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !180, line: 14, size: 32, elements: !181)
!180 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!181 = !{!182}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !179, file: !180, line: 15, baseType: !183, size: 32)
!183 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !184, line: 44, baseType: !185)
!184 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !184, line: 14, size: 32, elements: !186)
!186 = !{!187}
!187 = !DIDerivedType(tag: DW_TAG_member, scope: !185, file: !184, line: 15, baseType: !188, size: 32)
!188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !185, file: !184, line: 15, size: 32, elements: !189)
!189 = !{!190, !195, !205}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !188, file: !184, line: 16, baseType: !191, size: 32)
!191 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !129, line: 174, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !129, line: 172, size: 32, elements: !193)
!193 = !{!194}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !192, file: !129, line: 173, baseType: !46, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, scope: !188, file: !184, line: 24, baseType: !196, size: 16)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !188, file: !184, line: 24, size: 16, elements: !197)
!197 = !{!198, !204}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !196, file: !184, line: 25, baseType: !199, size: 8)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !200, line: 17, baseType: !201)
!200 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !202, line: 21, baseType: !203)
!202 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!203 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !196, file: !184, line: 26, baseType: !199, size: 8, offset: 8)
!205 = !DIDerivedType(tag: DW_TAG_member, scope: !188, file: !184, line: 28, baseType: !206, size: 32)
!206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !188, file: !184, line: 28, size: 32, elements: !207)
!207 = !{!208, !212}
!208 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !206, file: !184, line: 29, baseType: !209, size: 16)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !200, line: 19, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !202, line: 24, baseType: !211)
!211 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !206, file: !184, line: 30, baseType: !209, size: 16, offset: 16)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !167, file: !152, line: 171, baseType: !151, size: 512, offset: 192)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !167, file: !152, line: 172, baseType: !215, size: 64, offset: 704)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !217)
!217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !152, line: 133, size: 192, elements: !218)
!218 = !{!219, !226, !231}
!219 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !217, file: !152, line: 134, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!46, !224}
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !151)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !217, file: !152, line: 135, baseType: !227, size: 64, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !228)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DISubroutineType(types: !230)
!230 = !{!155, !224}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !217, file: !152, line: 136, baseType: !232, size: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !233)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DISubroutineType(types: !235)
!235 = !{!46, !224, !236}
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !152, line: 125, size: 20736, elements: !238)
!238 = !{!239, !244, !248, !249, !253}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !237, file: !152, line: 126, baseType: !240, size: 192)
!240 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 192, elements: !242)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!242 = !{!243}
!243 = !DISubrange(count: 3)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !237, file: !152, line: 127, baseType: !245, size: 4096, offset: 192)
!245 = !DICompositeType(tag: DW_TAG_array_type, baseType: !241, size: 4096, elements: !246)
!246 = !{!247}
!247 = !DISubrange(count: 64)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !237, file: !152, line: 128, baseType: !46, size: 32, offset: 4288)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !237, file: !152, line: 129, baseType: !250, size: 16384, offset: 4320)
!250 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 16384, elements: !251)
!251 = !{!252}
!252 = !DISubrange(count: 2048)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !237, file: !152, line: 130, baseType: !46, size: 32, offset: 20704)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !151, file: !152, line: 69, baseType: !255, size: 64, offset: 320)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !152, line: 116, size: 384, elements: !258)
!258 = !{!259, !263, !292, !632, !663, !667}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !257, file: !152, line: 117, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{null, !164}
!263 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !257, file: !152, line: 118, baseType: !264, size: 64, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !267, line: 254, size: 128, elements: !268)
!267 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!268 = !{!269, !284}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !266, file: !267, line: 255, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!273, !164, !278, !241}
!273 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !129, line: 66, baseType: !274)
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !275, line: 73, baseType: !276)
!275 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !275, line: 15, baseType: !277)
!277 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !267, line: 30, size: 128, elements: !280)
!280 = !{!281, !282}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !279, file: !267, line: 31, baseType: !155, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !279, file: !267, line: 32, baseType: !283, size: 16, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !129, line: 24, baseType: !211)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !266, file: !267, line: 256, baseType: !285, size: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!273, !164, !278, !155, !288}
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !129, line: 61, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !275, line: 72, baseType: !290)
!290 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !275, line: 16, baseType: !291)
!291 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !257, file: !152, line: 119, baseType: !293, size: 64, offset: 128)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !296)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !267, line: 84, size: 320, elements: !297)
!297 = !{!298, !299, !303, !628, !630}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !296, file: !267, line: 85, baseType: !155, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !296, file: !267, line: 86, baseType: !300, size: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!283, !164, !278, !46}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !296, file: !267, line: 88, baseType: !304, size: 64, offset: 128)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!283, !164, !307, !46}
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !267, line: 175, size: 512, elements: !309)
!309 = !{!310, !311, !312, !313, !320, !330, !331}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !308, file: !267, line: 176, baseType: !279, size: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !308, file: !267, line: 177, baseType: !288, size: 64, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !308, file: !267, line: 178, baseType: !130, size: 64, offset: 192)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !308, file: !267, line: 179, baseType: !314, size: 64, offset: 256)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!317}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !319, line: 32, flags: DIFlagFwdDecl)
!319 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!320 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !308, file: !267, line: 180, baseType: !321, size: 64, offset: 320)
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = !DISubroutineType(types: !323)
!323 = !{!273, !324, !164, !307, !241, !327, !288}
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !326, line: 537, flags: DIFlagFwdDecl)
!326 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!327 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !129, line: 52, baseType: !328)
!328 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !275, line: 88, baseType: !329)
!329 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !308, file: !267, line: 182, baseType: !321, size: 64, offset: 384)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !308, file: !267, line: 184, baseType: !332, size: 64, offset: 448)
!332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!333 = !DISubroutineType(types: !334)
!334 = !{!46, !324, !164, !307, !335}
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !319, line: 625, size: 1344, elements: !337)
!337 = !{!338, !355, !577, !583, !590, !591, !596, !599, !611, !612, !615, !619, !620, !621, !622, !623, !626}
!338 = !DIDerivedType(tag: DW_TAG_member, scope: !336, file: !319, line: 628, baseType: !339, size: 128)
!339 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !336, file: !319, line: 628, size: 128, elements: !340)
!340 = !{!341, !346}
!341 = !DIDerivedType(tag: DW_TAG_member, scope: !339, file: !319, line: 629, baseType: !342, size: 128)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !339, file: !319, line: 629, size: 128, elements: !343)
!343 = !{!344, !345}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !342, file: !319, line: 631, baseType: !291, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !342, file: !319, line: 632, baseType: !291, size: 64, offset: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !339, file: !319, line: 635, baseType: !347, size: 128, align: 64)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !129, line: 232, size: 128, align: 64, elements: !348)
!348 = !{!349, !351}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !347, file: !129, line: 233, baseType: !350, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !347, file: !129, line: 234, baseType: !352, size: 64, offset: 64)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{null, !350}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !336, file: !319, line: 639, baseType: !356, size: 64, offset: 128)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !319, line: 733, size: 10240, elements: !358)
!358 = !{!359, !573}
!359 = !DIDerivedType(tag: DW_TAG_member, scope: !357, file: !319, line: 734, baseType: !360, size: 10240)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !357, file: !319, line: 734, size: 10240, elements: !361)
!361 = !{!362, !366, !380, !384, !385, !386, !387, !388, !389, !397, !398, !399, !408, !409, !418, !419, !420, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !444, !445, !451, !452, !453, !454, !455, !456, !457, !458, !459, !460, !461, !462, !463, !467, !481, !484, !539, !540, !541, !544, !547, !548, !551, !552, !553, !560, !561}
!362 = !DIDerivedType(tag: DW_TAG_member, scope: !360, file: !319, line: 739, baseType: !363, size: 512, align: 512)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !360, file: !319, line: 739, size: 512, align: 512, elements: !364)
!364 = !{!365}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !363, file: !319, line: 747, baseType: !191, size: 32)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !360, file: !319, line: 750, baseType: !367, size: 128, offset: 512)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !368, line: 218, size: 128, elements: !369)
!368 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!369 = !{!370, !378, !379}
!370 = !DIDerivedType(tag: DW_TAG_member, scope: !367, file: !368, line: 219, baseType: !371, size: 32)
!371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !367, file: !368, line: 219, size: 32, elements: !372)
!372 = !{!373, !374}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !371, file: !368, line: 220, baseType: !171, size: 32)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !371, file: !368, line: 221, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !368, line: 197, baseType: !376)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !368, line: 197, elements: !377)
!377 = !{}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !367, file: !368, line: 223, baseType: !7, size: 32, offset: 32)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !367, file: !368, line: 224, baseType: !130, size: 64, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !360, file: !319, line: 752, baseType: !381, size: 64, offset: 640)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{!291, !324, !291, !291, !291, !291}
!384 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !360, file: !319, line: 756, baseType: !291, size: 64, offset: 704)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !360, file: !319, line: 757, baseType: !291, size: 64, offset: 768)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !360, file: !319, line: 760, baseType: !291, size: 64, offset: 832)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !360, file: !319, line: 761, baseType: !291, size: 64, offset: 896)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !360, file: !319, line: 763, baseType: !291, size: 64, offset: 960)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !360, file: !319, line: 764, baseType: !390, size: 64, offset: 1024)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !326, line: 299, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !326, line: 299, size: 64, elements: !393)
!393 = !{!394}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !392, file: !326, line: 299, baseType: !395, size: 64)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !396, line: 18, baseType: !291)
!396 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!397 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !360, file: !319, line: 773, baseType: !191, size: 32, offset: 1088)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !360, file: !319, line: 785, baseType: !191, size: 32, offset: 1120)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !360, file: !319, line: 795, baseType: !400, size: 64, offset: 1152)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !319, line: 726, size: 128, elements: !402)
!402 = !{!403, !407}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !401, file: !319, line: 727, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !200, line: 23, baseType: !405)
!405 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !202, line: 31, baseType: !406)
!406 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !401, file: !319, line: 728, baseType: !46, size: 32, offset: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !360, file: !319, line: 801, baseType: !291, size: 64, offset: 1216)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !360, file: !319, line: 804, baseType: !410, size: 64, offset: 1280)
!410 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !411, line: 13, baseType: !412)
!411 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !129, line: 181, baseType: !413)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !129, line: 179, size: 64, elements: !414)
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !413, file: !129, line: 180, baseType: !416, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !200, line: 22, baseType: !417)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !202, line: 30, baseType: !329)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !360, file: !319, line: 806, baseType: !46, size: 32, offset: 1344)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !360, file: !319, line: 808, baseType: !171, size: 32, offset: 1376)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !360, file: !319, line: 823, baseType: !421, size: 320, offset: 1408)
!421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !422, line: 48, size: 320, elements: !423)
!422 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!423 = !{!424, !425, !426, !431, !433}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !421, file: !422, line: 49, baseType: !410, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !421, file: !422, line: 55, baseType: !410, size: 64, offset: 64)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !421, file: !422, line: 57, baseType: !427, size: 32, offset: 128)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !428, line: 15, size: 32, elements: !429)
!428 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!429 = !{!430}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !427, file: !428, line: 20, baseType: !191, size: 32)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !421, file: !422, line: 59, baseType: !432, size: 32, offset: 160)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !180, line: 23, baseType: !179)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !421, file: !422, line: 60, baseType: !158, size: 128, offset: 192)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !360, file: !319, line: 825, baseType: !158, size: 128, offset: 1728)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !360, file: !319, line: 845, baseType: !46, size: 32, offset: 1856)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !360, file: !319, line: 849, baseType: !291, size: 64, offset: 1920)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !360, file: !319, line: 850, baseType: !291, size: 64, offset: 1984)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !360, file: !319, line: 852, baseType: !291, size: 64, offset: 2048)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !360, file: !319, line: 853, baseType: !291, size: 64, offset: 2112)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !360, file: !319, line: 854, baseType: !412, size: 64, offset: 2176)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !360, file: !319, line: 855, baseType: !291, size: 64, offset: 2240)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !360, file: !319, line: 856, baseType: !291, size: 64, offset: 2304)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !360, file: !319, line: 857, baseType: !291, size: 64, offset: 2368)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !360, file: !319, line: 858, baseType: !291, size: 64, offset: 2432)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !360, file: !319, line: 865, baseType: !446, size: 32, offset: 2496)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !447, line: 69, baseType: !448)
!447 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !447, line: 64, size: 32, elements: !449)
!449 = !{!450}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !448, file: !447, line: 65, baseType: !7, size: 32)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !360, file: !319, line: 867, baseType: !171, size: 32, offset: 2528)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !360, file: !319, line: 869, baseType: !291, size: 64, offset: 2560)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !360, file: !319, line: 869, baseType: !291, size: 64, offset: 2624)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !360, file: !319, line: 869, baseType: !291, size: 64, offset: 2688)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !360, file: !319, line: 869, baseType: !291, size: 64, offset: 2752)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !360, file: !319, line: 870, baseType: !291, size: 64, offset: 2816)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !360, file: !319, line: 870, baseType: !291, size: 64, offset: 2880)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !360, file: !319, line: 870, baseType: !291, size: 64, offset: 2944)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !360, file: !319, line: 871, baseType: !291, size: 64, offset: 3008)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !360, file: !319, line: 871, baseType: !291, size: 64, offset: 3072)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !360, file: !319, line: 871, baseType: !291, size: 64, offset: 3136)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !360, file: !319, line: 871, baseType: !291, size: 64, offset: 3200)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !360, file: !319, line: 873, baseType: !464, size: 3328, offset: 3264)
!464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 3328, elements: !465)
!465 = !{!466}
!466 = !DISubrange(count: 52)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !360, file: !319, line: 875, baseType: !468, size: 1280, offset: 6592)
!468 = !DICompositeType(tag: DW_TAG_array_type, baseType: !469, size: 1280, elements: !479)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !470, line: 22, size: 320, elements: !471)
!470 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!471 = !{!472, !473, !474, !475}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !469, file: !470, line: 23, baseType: !432, size: 32)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !469, file: !470, line: 24, baseType: !416, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !469, file: !470, line: 26, baseType: !158, size: 128, offset: 128)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !469, file: !470, line: 28, baseType: !476, size: 64, offset: 256)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !200, line: 20, baseType: !478)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !202, line: 26, baseType: !46)
!479 = !{!480}
!480 = !DISubrange(count: 4)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !360, file: !319, line: 877, baseType: !482, size: 64, offset: 7872)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !319, line: 877, flags: DIFlagFwdDecl)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !360, file: !319, line: 880, baseType: !485, size: 1088, offset: 7936)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !486, line: 72, baseType: !487)
!486 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!487 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !486, line: 23, size: 1088, elements: !488)
!488 = !{!489, !490, !491, !492, !493, !496, !497, !505, !506, !533, !534, !535}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !487, file: !486, line: 28, baseType: !404, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !487, file: !486, line: 38, baseType: !412, size: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !487, file: !486, line: 40, baseType: !291, size: 64, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !487, file: !486, line: 43, baseType: !421, size: 320, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !487, file: !486, line: 44, baseType: !494, size: 64, offset: 512)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !486, line: 44, flags: DIFlagFwdDecl)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !487, file: !486, line: 48, baseType: !291, size: 64, offset: 576)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !487, file: !486, line: 59, baseType: !498, size: 256, offset: 640)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !499, line: 66, size: 256, elements: !500)
!499 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!500 = !{!501, !502, !503, !504}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !498, file: !499, line: 67, baseType: !410, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !498, file: !499, line: 68, baseType: !432, size: 32, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !498, file: !499, line: 70, baseType: !427, size: 32, offset: 96)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !498, file: !499, line: 72, baseType: !158, size: 128, offset: 128)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !487, file: !486, line: 60, baseType: !130, size: 64, offset: 896)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !487, file: !486, line: 61, baseType: !507, size: 64, offset: 960)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !509)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !510, line: 13, size: 1216, elements: !511)
!510 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!511 = !{!512, !513, !514, !515, !516, !517, !518, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !531, !532}
!512 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !509, file: !510, line: 14, baseType: !130, size: 64)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !509, file: !510, line: 15, baseType: !291, size: 64, offset: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !509, file: !510, line: 17, baseType: !291, size: 64, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !509, file: !510, line: 17, baseType: !291, size: 64, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !509, file: !510, line: 18, baseType: !291, size: 64, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !509, file: !510, line: 18, baseType: !291, size: 64, offset: 320)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !509, file: !510, line: 19, baseType: !519, size: 64, offset: 384)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !509, file: !510, line: 21, baseType: !277, size: 64, offset: 448)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !509, file: !510, line: 23, baseType: !277, size: 64, offset: 512)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !509, file: !510, line: 24, baseType: !277, size: 64, offset: 576)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !509, file: !510, line: 25, baseType: !277, size: 64, offset: 640)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !509, file: !510, line: 26, baseType: !277, size: 64, offset: 704)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !509, file: !510, line: 27, baseType: !277, size: 64, offset: 768)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !509, file: !510, line: 28, baseType: !277, size: 64, offset: 832)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !509, file: !510, line: 29, baseType: !277, size: 64, offset: 896)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !509, file: !510, line: 30, baseType: !277, size: 64, offset: 960)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !509, file: !510, line: 31, baseType: !277, size: 64, offset: 1024)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !509, file: !510, line: 32, baseType: !277, size: 64, offset: 1088)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !509, file: !510, line: 33, baseType: !277, size: 64, offset: 1152)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !487, file: !486, line: 63, baseType: !191, size: 32, offset: 1024)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !487, file: !486, line: 69, baseType: !209, size: 16, offset: 1056)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !487, file: !486, line: 70, baseType: !536, size: 16, offset: 1072)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !200, line: 18, baseType: !537)
!537 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !202, line: 23, baseType: !538)
!538 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !360, file: !319, line: 882, baseType: !291, size: 64, offset: 9024)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !360, file: !319, line: 885, baseType: !171, size: 32, offset: 9088)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !360, file: !319, line: 886, baseType: !542, size: 64, offset: 9152)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !319, line: 732, flags: DIFlagFwdDecl)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !360, file: !319, line: 901, baseType: !545, size: 64, offset: 9216)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !319, line: 901, flags: DIFlagFwdDecl)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !360, file: !319, line: 904, baseType: !324, size: 64, offset: 9280)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !360, file: !319, line: 906, baseType: !549, size: 64, offset: 9344)
!549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !550, size: 64)
!550 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !319, line: 906, flags: DIFlagFwdDecl)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !360, file: !319, line: 930, baseType: !191, size: 32, offset: 9408)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !360, file: !319, line: 933, baseType: !191, size: 32, offset: 9440)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !360, file: !319, line: 935, baseType: !554, size: 64, offset: 9472)
!554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !555, line: 103, size: 64, elements: !556)
!555 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!556 = !{!557}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !554, file: !555, line: 104, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !559, size: 64)
!559 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !555, line: 101, flags: DIFlagFwdDecl)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !360, file: !319, line: 940, baseType: !410, size: 64, offset: 9536)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !360, file: !319, line: 942, baseType: !562, size: 256, offset: 9600)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !563, line: 98, size: 256, elements: !564)
!563 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!564 = !{!565, !566, !567}
!565 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !562, file: !563, line: 99, baseType: !410, size: 64)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !562, file: !563, line: 100, baseType: !158, size: 128, offset: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !562, file: !563, line: 101, baseType: !568, size: 64, offset: 192)
!568 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !563, line: 21, baseType: !569)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{null, !572}
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !357, file: !319, line: 986, baseType: !574, offset: 10240)
!574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, elements: !575)
!575 = !{!576}
!576 = !DISubrange(count: -1)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !336, file: !319, line: 640, baseType: !578, size: 64, offset: 192)
!578 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !326, line: 297, baseType: !579)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !326, line: 297, size: 64, elements: !580)
!580 = !{!581}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !579, file: !326, line: 297, baseType: !582, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !396, line: 19, baseType: !291)
!583 = !DIDerivedType(tag: DW_TAG_member, scope: !336, file: !319, line: 646, baseType: !584, size: 64, offset: 256)
!584 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !336, file: !319, line: 646, size: 64, elements: !585)
!585 = !{!586, !589}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !584, file: !319, line: 647, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !588)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !319, line: 542, baseType: !291)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !584, file: !319, line: 648, baseType: !588, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !336, file: !319, line: 666, baseType: !46, size: 32, offset: 320)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !336, file: !319, line: 667, baseType: !592, size: 64, offset: 384)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !593, size: 64)
!593 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !319, line: 579, size: 320, elements: !594)
!594 = !{!595}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !593, file: !319, line: 580, baseType: !421, size: 320)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !336, file: !319, line: 670, baseType: !597, size: 8, offset: 448)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !129, line: 35, baseType: !598)
!598 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !336, file: !319, line: 681, baseType: !600, size: 256, offset: 512)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !336, file: !319, line: 678, size: 256, elements: !601)
!601 = !{!602, !610}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !600, file: !319, line: 679, baseType: !603, size: 192, align: 64)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !604, line: 5, size: 192, align: 64, elements: !605)
!604 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!605 = !{!606, !607, !609}
!606 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !603, file: !604, line: 6, baseType: !291, size: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !603, file: !604, line: 7, baseType: !608, size: 64, offset: 64)
!608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !603, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !603, file: !604, line: 8, baseType: !608, size: 64, offset: 128)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !600, file: !319, line: 680, baseType: !291, size: 64, offset: 192)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !336, file: !319, line: 689, baseType: !158, size: 128, offset: 768)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !336, file: !319, line: 691, baseType: !613, size: 64, offset: 896)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !319, line: 691, flags: DIFlagFwdDecl)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !336, file: !319, line: 694, baseType: !616, size: 64, offset: 960)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !618)
!618 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !319, line: 694, flags: DIFlagFwdDecl)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !336, file: !319, line: 697, baseType: !291, size: 64, offset: 1024)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !336, file: !319, line: 699, baseType: !324, size: 64, offset: 1088)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !336, file: !319, line: 700, baseType: !130, size: 64, offset: 1152)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !336, file: !319, line: 711, baseType: !410, size: 64, offset: 1216)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !336, file: !319, line: 717, baseType: !624, size: 64, offset: 1280)
!624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!625 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !319, line: 717, flags: DIFlagFwdDecl)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !336, file: !319, line: 722, baseType: !627, offset: 1344)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !319, line: 570, elements: !377)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !296, file: !267, line: 90, baseType: !629, size: 64, offset: 192)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !296, file: !267, line: 91, baseType: !631, size: 64, offset: 256)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !257, file: !152, line: 120, baseType: !633, size: 64, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!636, !224}
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !638)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !639)
!639 = !{!640, !641, !645, !649, !655, !659}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !638, file: !6, line: 40, baseType: !5, size: 32)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !638, file: !6, line: 41, baseType: !642, size: 64, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!597}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !638, file: !6, line: 42, baseType: !646, size: 64, offset: 128)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DISubroutineType(types: !648)
!648 = !{!130}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !638, file: !6, line: 43, baseType: !650, size: 64, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !651, size: 64)
!651 = !DISubroutineType(types: !652)
!652 = !{!519, !653}
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !638, file: !6, line: 44, baseType: !656, size: 64, offset: 256)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!519}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !638, file: !6, line: 45, baseType: !660, size: 64, offset: 320)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DISubroutineType(types: !662)
!662 = !{null, !130}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !257, file: !152, line: 121, baseType: !664, size: 64, offset: 256)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{!519, !224}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !257, file: !152, line: 122, baseType: !668, size: 64, offset: 320)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DISubroutineType(types: !670)
!670 = !{null, !224, !671, !679}
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !673, line: 23, baseType: !674)
!673 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !673, line: 21, size: 32, elements: !675)
!675 = !{!676}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !674, file: !673, line: 22, baseType: !677, size: 32)
!677 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !129, line: 37, baseType: !678)
!678 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !275, line: 49, baseType: !7)
!679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !680, size: 64)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !673, line: 28, baseType: !681)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !673, line: 26, size: 32, elements: !682)
!682 = !{!683}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !681, file: !673, line: 27, baseType: !684, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !129, line: 38, baseType: !685)
!685 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !275, line: 50, baseType: !7)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !151, file: !152, line: 70, baseType: !687, size: 64, offset: 384)
!687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !689, line: 190, size: 1152, elements: !690)
!689 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!690 = !{!691, !692, !693, !694, !695, !696, !697, !698, !793, !794, !795, !796, !797, !800}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !688, file: !689, line: 191, baseType: !191, size: 32)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !688, file: !689, line: 192, baseType: !191, size: 32, offset: 32)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !688, file: !689, line: 202, baseType: !687, size: 64, offset: 64)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !688, file: !689, line: 203, baseType: !155, size: 64, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !688, file: !689, line: 205, baseType: !603, size: 192, align: 64, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !688, file: !689, line: 207, baseType: !519, size: 64, offset: 384)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !688, file: !689, line: 208, baseType: !7, size: 32, offset: 448)
!698 = !DIDerivedType(tag: DW_TAG_member, scope: !688, file: !689, line: 209, baseType: !699, size: 256, offset: 512)
!699 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !688, file: !689, line: 209, size: 256, elements: !700)
!700 = !{!701, !713, !717}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !699, file: !689, line: 210, baseType: !702, size: 256)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !689, line: 153, size: 256, elements: !703)
!703 = !{!704, !705, !709, !712}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !702, file: !689, line: 154, baseType: !291, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !702, file: !689, line: 156, baseType: !706, size: 64, offset: 64)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !604, line: 12, size: 64, elements: !707)
!707 = !{!708}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !706, file: !604, line: 13, baseType: !608, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !702, file: !689, line: 162, baseType: !710, size: 64, offset: 128)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !689, line: 162, flags: DIFlagFwdDecl)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !702, file: !689, line: 167, baseType: !291, size: 64, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !699, file: !689, line: 211, baseType: !714, size: 64)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !689, line: 170, size: 64, elements: !715)
!715 = !{!716}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !714, file: !689, line: 171, baseType: !687, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !699, file: !689, line: 212, baseType: !718, size: 256)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !689, line: 174, size: 256, elements: !719)
!719 = !{!720, !788, !791, !792}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !718, file: !689, line: 175, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !723)
!723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !689, line: 271, size: 768, elements: !724)
!724 = !{!725, !748, !752, !756, !761, !765, !769, !773, !774, !775, !776, !784}
!725 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !723, file: !689, line: 276, baseType: !726, size: 64)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{!46, !729}
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !689, line: 251, size: 1216, elements: !731)
!731 = !{!732, !733, !734, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !730, file: !689, line: 253, baseType: !687, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !730, file: !689, line: 254, baseType: !324, size: 64, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !730, file: !689, line: 255, baseType: !735, size: 64, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !737, line: 66, flags: DIFlagFwdDecl)
!737 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!738 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !730, file: !689, line: 256, baseType: !130, size: 64, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !730, file: !689, line: 259, baseType: !498, size: 256, offset: 256)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !730, file: !689, line: 260, baseType: !498, size: 256, offset: 512)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !730, file: !689, line: 261, baseType: !46, size: 32, offset: 768)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !730, file: !689, line: 262, baseType: !158, size: 128, offset: 832)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !730, file: !689, line: 263, baseType: !241, size: 64, offset: 960)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !730, file: !689, line: 265, baseType: !288, size: 64, offset: 1024)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !730, file: !689, line: 266, baseType: !597, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !730, file: !689, line: 267, baseType: !597, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !730, file: !689, line: 268, baseType: !616, size: 64, offset: 1152)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !723, file: !689, line: 277, baseType: !749, size: 64, offset: 64)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{null, !729}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !723, file: !689, line: 290, baseType: !753, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!46, !735, !130}
!756 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !723, file: !689, line: 292, baseType: !757, size: 64, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!130, !735, !760}
!760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !723, file: !689, line: 293, baseType: !762, size: 64, offset: 256)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = !DISubroutineType(types: !764)
!764 = !{!130, !735, !130, !760}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !723, file: !689, line: 294, baseType: !766, size: 64, offset: 320)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = !DISubroutineType(types: !768)
!768 = !{null, !735, !130}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !723, file: !689, line: 296, baseType: !770, size: 64, offset: 384)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!273, !729, !241, !288, !327}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !723, file: !689, line: 306, baseType: !288, size: 64, offset: 448)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !723, file: !689, line: 313, baseType: !597, size: 8, offset: 512)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !723, file: !689, line: 314, baseType: !770, size: 64, offset: 576)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !723, file: !689, line: 317, baseType: !777, size: 64, offset: 640)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{!780, !729, !782}
!780 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !781, line: 59, baseType: !7)
!781 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !689, line: 31, flags: DIFlagFwdDecl)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !723, file: !689, line: 320, baseType: !785, size: 64, offset: 704)
!785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !786, size: 64)
!786 = !DISubroutineType(types: !787)
!787 = !{!46, !729, !335}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !718, file: !689, line: 176, baseType: !789, size: 64, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !689, line: 35, flags: DIFlagFwdDecl)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !718, file: !689, line: 177, baseType: !327, size: 64, offset: 128)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !718, file: !689, line: 178, baseType: !687, size: 64, offset: 192)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !688, file: !689, line: 215, baseType: !130, size: 64, offset: 768)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !688, file: !689, line: 221, baseType: !404, size: 64, offset: 832)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !688, file: !689, line: 223, baseType: !211, size: 16, offset: 896)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !688, file: !689, line: 224, baseType: !283, size: 16, offset: 912)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !688, file: !689, line: 225, baseType: !798, size: 64, offset: 960)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !689, line: 36, flags: DIFlagFwdDecl)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !688, file: !689, line: 227, baseType: !347, size: 128, align: 64, offset: 1024)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !151, file: !152, line: 71, baseType: !802, size: 32, offset: 448)
!802 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !803, line: 19, size: 32, elements: !804)
!803 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!804 = !{!805}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !802, file: !803, line: 20, baseType: !806, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !807, line: 113, baseType: !808)
!807 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !807, line: 111, size: 32, elements: !809)
!809 = !{!810}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !808, file: !807, line: 112, baseType: !191, size: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !151, file: !152, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !151, file: !152, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !151, file: !152, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !151, file: !152, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !151, file: !152, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !148, file: !26, line: 707, baseType: !817, size: 64, offset: 512)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !148, file: !26, line: 709, baseType: !819, size: 64, offset: 576)
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !820, size: 64)
!820 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !148, file: !26, line: 711, baseType: !155, size: 64, offset: 640)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !148, file: !26, line: 712, baseType: !823, size: 64, offset: 704)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !825)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !826)
!826 = !{!827, !828, !829, !835, !840, !844}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !825, file: !26, line: 90, baseType: !155, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !825, file: !26, line: 91, baseType: !293, size: 64, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !825, file: !26, line: 92, baseType: !830, size: 64, offset: 128)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!46, !833, !236}
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !148)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !825, file: !26, line: 93, baseType: !836, size: 64, offset: 192)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = !DISubroutineType(types: !838)
!838 = !{!241, !833, !839, !671, !679}
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !825, file: !26, line: 95, baseType: !841, size: 64, offset: 256)
!841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !842, size: 64)
!842 = !DISubroutineType(types: !843)
!843 = !{null, !817}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !825, file: !26, line: 97, baseType: !845, size: 64, offset: 320)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !847)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !848)
!848 = !{!849, !853, !854, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !873, !874}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !847, file: !38, line: 287, baseType: !850, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!851 = !DISubroutineType(types: !852)
!852 = !{!46, !817}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !847, file: !38, line: 288, baseType: !841, size: 64, offset: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !847, file: !38, line: 289, baseType: !850, size: 64, offset: 128)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !847, file: !38, line: 290, baseType: !850, size: 64, offset: 192)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !847, file: !38, line: 291, baseType: !850, size: 64, offset: 256)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !847, file: !38, line: 292, baseType: !850, size: 64, offset: 320)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !847, file: !38, line: 293, baseType: !850, size: 64, offset: 384)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !847, file: !38, line: 294, baseType: !850, size: 64, offset: 448)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !847, file: !38, line: 295, baseType: !850, size: 64, offset: 512)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !847, file: !38, line: 296, baseType: !850, size: 64, offset: 576)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !847, file: !38, line: 297, baseType: !850, size: 64, offset: 640)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !847, file: !38, line: 298, baseType: !850, size: 64, offset: 704)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !847, file: !38, line: 299, baseType: !850, size: 64, offset: 768)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !847, file: !38, line: 300, baseType: !850, size: 64, offset: 832)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !847, file: !38, line: 301, baseType: !850, size: 64, offset: 896)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !847, file: !38, line: 302, baseType: !850, size: 64, offset: 960)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !847, file: !38, line: 303, baseType: !850, size: 64, offset: 1024)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !847, file: !38, line: 304, baseType: !850, size: 64, offset: 1088)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !847, file: !38, line: 305, baseType: !850, size: 64, offset: 1152)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !847, file: !38, line: 306, baseType: !850, size: 64, offset: 1216)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !847, file: !38, line: 307, baseType: !850, size: 64, offset: 1280)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !847, file: !38, line: 308, baseType: !850, size: 64, offset: 1344)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !847, file: !38, line: 309, baseType: !850, size: 64, offset: 1408)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !148, file: !26, line: 714, baseType: !876, size: 64, offset: 768)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !878)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !879, line: 80, size: 1344, elements: !880)
!879 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!880 = !{!881, !882, !883, !884, !885, !886, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1342}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !878, file: !879, line: 81, baseType: !155, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !878, file: !879, line: 82, baseType: !155, size: 64, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !878, file: !879, line: 83, baseType: !293, size: 64, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !878, file: !879, line: 84, baseType: !293, size: 64, offset: 192)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !878, file: !879, line: 85, baseType: !293, size: 64, offset: 256)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !878, file: !879, line: 87, baseType: !887, size: 64, offset: 320)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DISubroutineType(types: !889)
!889 = !{!46, !817, !890}
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !892)
!892 = !{!893, !894, !895, !1273, !1274, !1275, !1276, !1292, !1305, !1306, !1307, !1308, !1309, !1317, !1318, !1319, !1320, !1321, !1322}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !891, file: !20, line: 97, baseType: !155, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !891, file: !20, line: 98, baseType: !876, size: 64, offset: 64)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !891, file: !20, line: 100, baseType: !896, size: 64, offset: 128)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !898)
!898 = !{!899, !900, !901, !905, !926, !952, !953, !954, !955, !959, !962, !963, !964, !1017, !1018, !1019, !1020, !1021, !1022, !1023, !1024, !1027, !1031, !1051, !1069, !1070, !1071, !1072, !1081, !1105, !1106, !1109, !1112, !1113, !1114, !1115, !1116, !1117, !1118, !1123, !1124, !1231, !1239, !1240, !1241, !1243, !1247, !1248, !1252, !1253, !1254, !1255, !1257, !1258, !1259, !1266, !1267, !1268, !1272}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !897, file: !13, line: 403, baseType: !12, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !897, file: !13, line: 406, baseType: !158, size: 128, offset: 64)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !897, file: !13, line: 409, baseType: !902, size: 448, offset: 192)
!902 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 448, elements: !903)
!903 = !{!904}
!904 = !DISubrange(count: 56)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !897, file: !13, line: 417, baseType: !906, size: 768, offset: 640)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !907)
!907 = !{!908, !909, !910, !911, !914}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !906, file: !13, line: 46, baseType: !151, size: 512)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !906, file: !13, line: 47, baseType: !896, size: 64, offset: 512)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !906, file: !13, line: 48, baseType: !164, size: 64, offset: 576)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !906, file: !13, line: 49, baseType: !912, size: 64, offset: 640)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !13, line: 49, flags: DIFlagFwdDecl)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !906, file: !13, line: 50, baseType: !915, size: 64, offset: 704)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !917, line: 26, size: 256, elements: !918)
!917 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!918 = !{!919, !920}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !916, file: !917, line: 27, baseType: !7, size: 32)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !916, file: !917, line: 28, baseType: !921, size: 192, offset: 64)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !922, line: 43, size: 192, elements: !923)
!922 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!923 = !{!924, !925}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !921, file: !922, line: 44, baseType: !432, size: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !921, file: !922, line: 45, baseType: !158, size: 128, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !897, file: !13, line: 418, baseType: !927, size: 64, offset: 1408)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !929)
!929 = !{!930, !931, !936, !940, !944, !948}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !928, file: !13, line: 54, baseType: !279, size: 128)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !928, file: !13, line: 55, baseType: !932, size: 64, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DISubroutineType(types: !934)
!934 = !{!273, !927, !935, !241}
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !906, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !928, file: !13, line: 57, baseType: !937, size: 64, offset: 192)
!937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !938, size: 64)
!938 = !DISubroutineType(types: !939)
!939 = !{!273, !927, !935, !155, !288}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !928, file: !13, line: 59, baseType: !941, size: 64, offset: 256)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DISubroutineType(types: !943)
!943 = !{null, !896, !155}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !928, file: !13, line: 60, baseType: !945, size: 64, offset: 320)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DISubroutineType(types: !947)
!947 = !{!46, !896}
!948 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !928, file: !13, line: 61, baseType: !949, size: 64, offset: 384)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DISubroutineType(types: !951)
!951 = !{null, !896}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !897, file: !13, line: 419, baseType: !155, size: 64, offset: 1472)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !897, file: !13, line: 420, baseType: !155, size: 64, offset: 1536)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !897, file: !13, line: 421, baseType: !164, size: 64, offset: 1600)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !897, file: !13, line: 424, baseType: !956, size: 64, offset: 1664)
!956 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !957, size: 64)
!957 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !958)
!958 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !897, file: !13, line: 425, baseType: !960, size: 64, offset: 1728)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !477)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !897, file: !13, line: 426, baseType: !7, size: 32, offset: 1792)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !897, file: !13, line: 435, baseType: !498, size: 256, offset: 1856)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !897, file: !13, line: 437, baseType: !965, size: 64, offset: 2112)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !967, line: 69, size: 320, elements: !968)
!967 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!968 = !{!969, !970, !971, !988, !990, !994, !995}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !966, file: !967, line: 70, baseType: !155, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !966, file: !967, line: 71, baseType: !896, size: 64, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !966, file: !967, line: 72, baseType: !972, size: 64, offset: 128)
!972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !973, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !974)
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !967, line: 47, size: 256, elements: !975)
!975 = !{!976, !977, !983, !987}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !974, file: !967, line: 49, baseType: !7, size: 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !974, file: !967, line: 51, baseType: !978, size: 64, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DISubroutineType(types: !980)
!980 = !{!46, !155, !981}
!981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !982, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !966)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !974, file: !967, line: 53, baseType: !984, size: 64, offset: 128)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DISubroutineType(types: !986)
!986 = !{!46, !241, !981}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !974, file: !967, line: 55, baseType: !660, size: 64, offset: 192)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !966, file: !967, line: 73, baseType: !989, size: 16, offset: 192)
!989 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !209)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !966, file: !967, line: 74, baseType: !991, size: 8, offset: 208)
!991 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !200, line: 16, baseType: !992)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !202, line: 20, baseType: !993)
!993 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !966, file: !967, line: 75, baseType: !199, size: 8, offset: 216)
!995 = !DIDerivedType(tag: DW_TAG_member, scope: !966, file: !967, line: 76, baseType: !996, size: 64, offset: 256)
!996 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !966, file: !967, line: 76, size: 64, elements: !997)
!997 = !{!998, !999, !1006}
!998 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !996, file: !967, line: 77, baseType: !130, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !996, file: !967, line: 78, baseType: !1000, size: 64)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1002)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !967, line: 86, size: 128, elements: !1003)
!1003 = !{!1004, !1005}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1002, file: !967, line: 87, baseType: !7, size: 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1002, file: !967, line: 88, baseType: !241, size: 64, offset: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !996, file: !967, line: 79, baseType: !1007, size: 64)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1009)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !967, line: 92, size: 256, elements: !1010)
!1010 = !{!1011, !1012, !1013, !1015, !1016}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1009, file: !967, line: 94, baseType: !7, size: 32)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1009, file: !967, line: 95, baseType: !7, size: 32, offset: 32)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1009, file: !967, line: 96, baseType: !1014, size: 64, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1009, file: !967, line: 97, baseType: !972, size: 64, offset: 128)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1009, file: !967, line: 98, baseType: !130, size: 64, offset: 192)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !897, file: !13, line: 438, baseType: !7, size: 32, offset: 2176)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !897, file: !13, line: 441, baseType: !7, size: 32, offset: 2208)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !897, file: !13, line: 442, baseType: !956, size: 64, offset: 2240)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !897, file: !13, line: 443, baseType: !960, size: 64, offset: 2304)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !897, file: !13, line: 444, baseType: !597, size: 8, offset: 2368)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !897, file: !13, line: 451, baseType: !597, size: 8, offset: 2376)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !897, file: !13, line: 454, baseType: !7, size: 32, offset: 2400)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !897, file: !13, line: 455, baseType: !1025, size: 64, offset: 2432)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !13, line: 43, flags: DIFlagFwdDecl)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !897, file: !13, line: 458, baseType: !1028, size: 64, offset: 2496)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DISubroutineType(types: !1030)
!1030 = !{!46}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !897, file: !13, line: 460, baseType: !1032, size: 4032, align: 512, offset: 2560)
!1032 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1033, size: 4032, elements: !1049)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !13, line: 362, size: 576, elements: !1034)
!1034 = !{!1035, !1036, !1037}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1033, file: !13, line: 363, baseType: !130, size: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1033, file: !13, line: 364, baseType: !7, size: 32, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1033, file: !13, line: 367, baseType: !1038, size: 448, offset: 128)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !13, line: 319, size: 448, elements: !1039)
!1039 = !{!1040, !1041}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1038, file: !13, line: 320, baseType: !896, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1038, file: !13, line: 321, baseType: !1042, size: 384, offset: 64)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1043, line: 40, size: 384, elements: !1044)
!1043 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1044 = !{!1045}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1042, file: !1043, line: 41, baseType: !1046, size: 384, align: 64)
!1046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !603, size: 384, align: 64, elements: !1047)
!1047 = !{!1048}
!1048 = !DISubrange(count: 2)
!1049 = !{!1050}
!1050 = !DISubrange(count: 7)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !897, file: !13, line: 463, baseType: !1052, size: 192, offset: 6592)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1053, line: 8, size: 192, elements: !1054)
!1053 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1054 = !{!1055, !1056, !1058}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1052, file: !1053, line: 10, baseType: !7, size: 32)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1052, file: !1053, line: 11, baseType: !1057, size: 64, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1052, file: !1053, line: 12, baseType: !1059, size: 64, offset: 128)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1061, line: 59, size: 48, elements: !1062)
!1061 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1062 = !{!1063, !1064, !1065, !1066, !1067, !1068}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1060, file: !1061, line: 60, baseType: !536, size: 16)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1060, file: !1061, line: 61, baseType: !536, size: 16, offset: 16)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1060, file: !1061, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1060, file: !1061, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1060, file: !1061, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1060, file: !1061, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !897, file: !13, line: 465, baseType: !291, size: 64, offset: 6784)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !897, file: !13, line: 469, baseType: !7, size: 32, offset: 6848)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !897, file: !13, line: 470, baseType: !158, size: 128, offset: 6912)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !897, file: !13, line: 471, baseType: !1073, size: 64, offset: 7040)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1075, line: 33, size: 96, elements: !1076)
!1075 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1076 = !{!1077, !1078, !1079, !1080}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1074, file: !1075, line: 37, baseType: !46, size: 32)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1074, file: !1075, line: 43, baseType: !46, size: 32, offset: 32)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1074, file: !1075, line: 45, baseType: !211, size: 16, offset: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1074, file: !1075, line: 47, baseType: !211, size: 16, offset: 80)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !897, file: !13, line: 476, baseType: !1082, size: 64, offset: 7104)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !13, line: 378, size: 256, elements: !1084)
!1084 = !{!1085, !1102, !1103, !1104}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1083, file: !13, line: 379, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1088, line: 204, baseType: !1089)
!1088 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1088, line: 197, size: 192, elements: !1090)
!1090 = !{!1091, !1094, !1095, !1096, !1098, !1100}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1089, file: !1088, line: 198, baseType: !1092, size: 32)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1088, line: 21, baseType: !1093)
!1093 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !202, line: 27, baseType: !7)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1089, file: !1088, line: 199, baseType: !203, size: 8, offset: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1089, file: !1088, line: 200, baseType: !203, size: 8, offset: 40)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1089, file: !1088, line: 201, baseType: !1097, size: 16, offset: 48)
!1097 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1088, line: 17, baseType: !210)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1089, file: !1088, line: 202, baseType: !1099, size: 64, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1088, line: 16, baseType: !405)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1089, file: !1088, line: 203, baseType: !1101, size: 64, offset: 128)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1088, line: 22, baseType: !405)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1083, file: !13, line: 380, baseType: !7, size: 32, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1083, file: !13, line: 381, baseType: !241, size: 64, offset: 128)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1083, file: !13, line: 382, baseType: !241, size: 64, offset: 192)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !897, file: !13, line: 477, baseType: !1083, size: 256, offset: 7168)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !897, file: !13, line: 480, baseType: !1107, size: 64, offset: 7424)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !897, file: !13, line: 483, baseType: !1110, size: 64, offset: 7488)
!1110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1111, size: 64)
!1111 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !897, file: !13, line: 488, baseType: !241, size: 64, offset: 7552)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !897, file: !13, line: 492, baseType: !130, size: 64, offset: 7616)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !897, file: !13, line: 493, baseType: !7, size: 32, offset: 7680)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !897, file: !13, line: 495, baseType: !130, size: 64, offset: 7744)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !897, file: !13, line: 496, baseType: !7, size: 32, offset: 7808)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !897, file: !13, line: 499, baseType: !7, size: 32, offset: 7840)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !897, file: !13, line: 500, baseType: !1119, size: 64, offset: 7872)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1121, line: 45, baseType: !1122)
!1121 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !897, file: !13, line: 503, baseType: !7, size: 32, offset: 7936)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !897, file: !13, line: 504, baseType: !1125, size: 64, offset: 8000)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1128, line: 96, size: 192, elements: !1129)
!1128 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1129 = !{!1130, !1131, !1192, !1195}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1127, file: !1128, line: 97, baseType: !7, size: 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1127, file: !1128, line: 98, baseType: !1132, size: 64, offset: 64)
!1132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1133, size: 64)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1128, line: 24, size: 3072, elements: !1134)
!1134 = !{!1135, !1137, !1138, !1139, !1140, !1154, !1155, !1156, !1157, !1176, !1177, !1178, !1189, !1190, !1191}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1133, file: !1128, line: 26, baseType: !1136, size: 128)
!1136 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 128, elements: !1047)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1133, file: !1128, line: 27, baseType: !1136, size: 128, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1133, file: !1128, line: 28, baseType: !46, size: 32, offset: 256)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1133, file: !1128, line: 31, baseType: !171, size: 32, align: 512, offset: 512)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1133, file: !1128, line: 32, baseType: !1141, size: 960, offset: 576)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1142, line: 206, size: 960, elements: !1143)
!1142 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1143 = !{!1144, !1145, !1148, !1150, !1151, !1153}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1141, file: !1142, line: 207, baseType: !350, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1141, file: !1142, line: 208, baseType: !1146, size: 256, offset: 64)
!1146 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1147, size: 256, elements: !479)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !350, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1141, file: !1142, line: 209, baseType: !1149, size: 256, offset: 320)
!1149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !291, size: 256, elements: !479)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1141, file: !1142, line: 213, baseType: !277, size: 64, offset: 576)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1141, file: !1142, line: 215, baseType: !1152, size: 256, offset: 640)
!1152 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 256, elements: !479)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1141, file: !1142, line: 216, baseType: !199, size: 8, offset: 896)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1133, file: !1128, line: 33, baseType: !291, size: 64, offset: 1536)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1133, file: !1128, line: 34, baseType: !291, size: 64, offset: 1600)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1133, file: !1128, line: 35, baseType: !597, size: 8, offset: 1664)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1133, file: !1128, line: 36, baseType: !1158, size: 320, offset: 1728)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1159, line: 11, size: 320, elements: !1160)
!1159 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1160 = !{!1161, !1168, !1169, !1174}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1158, file: !1159, line: 16, baseType: !1162, size: 128)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !129, line: 198, size: 128, elements: !1163)
!1163 = !{!1164, !1166}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1162, file: !129, line: 199, baseType: !1165, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1162, file: !129, line: 199, baseType: !1167, size: 64, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1165, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1158, file: !1159, line: 17, baseType: !291, size: 64, offset: 128)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1158, file: !1159, line: 18, baseType: !1170, size: 64, offset: 192)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1171, size: 64)
!1171 = !DISubroutineType(types: !1172)
!1172 = !{null, !1173}
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1158, file: !1159, line: 19, baseType: !1175, size: 32, offset: 256)
!1175 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !200, line: 21, baseType: !1093)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1133, file: !1128, line: 37, baseType: !562, size: 256, offset: 2048)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1133, file: !1128, line: 38, baseType: !347, size: 128, align: 64, offset: 2304)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1133, file: !1128, line: 39, baseType: !1179, size: 64, offset: 2432)
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1128, line: 49, size: 768, elements: !1181)
!1181 = !{!1182, !1183, !1184, !1185, !1186, !1187, !1188}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1180, file: !1128, line: 50, baseType: !171, size: 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1180, file: !1128, line: 51, baseType: !1149, size: 256, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1180, file: !1128, line: 53, baseType: !1149, size: 256, offset: 320)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1180, file: !1128, line: 54, baseType: !291, size: 64, offset: 576)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1180, file: !1128, line: 55, baseType: !1179, size: 64, offset: 640)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1180, file: !1128, line: 56, baseType: !46, size: 32, offset: 704)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1180, file: !1128, line: 57, baseType: !46, size: 32, offset: 736)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1133, file: !1128, line: 40, baseType: !291, size: 64, offset: 2496)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1133, file: !1128, line: 42, baseType: !46, size: 32, offset: 2560)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1133, file: !1128, line: 43, baseType: !1126, size: 64, offset: 2624)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1127, file: !1128, line: 99, baseType: !1193, offset: 128)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1194, line: 211, elements: !377)
!1194 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1127, file: !1128, line: 100, baseType: !1196, size: 64, offset: 128)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1128, line: 63, size: 3008, elements: !1198)
!1198 = !{!1199, !1200, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214, !1215, !1216, !1217, !1218, !1219, !1220, !1221, !1230}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1197, file: !1128, line: 64, baseType: !1179, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1197, file: !1128, line: 65, baseType: !1201, size: 192, offset: 64)
!1201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1179, size: 192, elements: !242)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1197, file: !1128, line: 67, baseType: !46, size: 32, offset: 256)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1197, file: !1128, line: 68, baseType: !498, size: 256, offset: 320)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1197, file: !1128, line: 69, baseType: !171, size: 32, offset: 576)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1197, file: !1128, line: 70, baseType: !498, size: 256, offset: 640)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1197, file: !1128, line: 71, baseType: !291, size: 64, offset: 896)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1197, file: !1128, line: 72, baseType: !291, size: 64, offset: 960)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1197, file: !1128, line: 73, baseType: !291, size: 64, offset: 1024)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1197, file: !1128, line: 74, baseType: !291, size: 64, offset: 1088)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1197, file: !1128, line: 75, baseType: !291, size: 64, offset: 1152)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1197, file: !1128, line: 76, baseType: !291, size: 64, offset: 1216)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1197, file: !1128, line: 77, baseType: !291, size: 64, offset: 1280)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1197, file: !1128, line: 78, baseType: !291, size: 64, offset: 1344)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1197, file: !1128, line: 79, baseType: !597, size: 8, offset: 1408)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1197, file: !1128, line: 80, baseType: !291, size: 64, offset: 1472)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1197, file: !1128, line: 81, baseType: !498, size: 256, offset: 1536)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1197, file: !1128, line: 82, baseType: !916, size: 256, offset: 1792)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1197, file: !1128, line: 84, baseType: !191, size: 32, offset: 2048)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1197, file: !1128, line: 87, baseType: !291, size: 64, offset: 2112)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1197, file: !1128, line: 88, baseType: !291, size: 64, offset: 2176)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1197, file: !1128, line: 89, baseType: !1222, size: 704, offset: 2240)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !563, line: 111, size: 704, elements: !1223)
!1223 = !{!1224, !1225, !1226, !1229}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1222, file: !563, line: 112, baseType: !562, size: 256)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1222, file: !563, line: 113, baseType: !1158, size: 320, offset: 256)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1222, file: !563, line: 116, baseType: !1227, size: 64, offset: 576)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !563, line: 18, flags: DIFlagFwdDecl)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1222, file: !563, line: 117, baseType: !46, size: 32, offset: 640)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1197, file: !1128, line: 90, baseType: !1126, size: 64, offset: 2944)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !897, file: !13, line: 515, baseType: !1232, size: 64, offset: 8064)
!1232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1233, size: 64)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1234, line: 117, size: 128, elements: !1235)
!1234 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1235 = !{!1236, !1237, !1238}
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1233, file: !1234, line: 118, baseType: !477, size: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1233, file: !1234, line: 119, baseType: !477, size: 32, offset: 32)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1233, file: !1234, line: 120, baseType: !277, size: 64, offset: 64)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !897, file: !13, line: 516, baseType: !7, size: 32, offset: 8128)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !897, file: !13, line: 519, baseType: !7, size: 32, offset: 8160)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !897, file: !13, line: 520, baseType: !1242, size: 64, offset: 8192)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !897, file: !13, line: 523, baseType: !1244, size: 64, offset: 8256)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !13, line: 523, flags: DIFlagFwdDecl)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !897, file: !13, line: 524, baseType: !7, size: 32, offset: 8320)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !897, file: !13, line: 525, baseType: !1249, size: 64, offset: 8384)
!1249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1250, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1251, size: 64)
!1251 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !13, line: 525, flags: DIFlagFwdDecl)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !897, file: !13, line: 526, baseType: !7, size: 32, offset: 8448)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !897, file: !13, line: 533, baseType: !130, size: 64, offset: 8512)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !897, file: !13, line: 534, baseType: !7, size: 32, offset: 8576)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !897, file: !13, line: 535, baseType: !1256, size: 64, offset: 8640)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !897, file: !13, line: 536, baseType: !7, size: 32, offset: 8704)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !897, file: !13, line: 539, baseType: !46, size: 32, offset: 8736)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !897, file: !13, line: 540, baseType: !1260, size: 64, offset: 8768)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1262, line: 32, size: 64, elements: !1263)
!1262 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1263 = !{!1264, !1265}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1261, file: !1262, line: 33, baseType: !477, size: 32)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1261, file: !1262, line: 34, baseType: !477, size: 32, offset: 32)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !897, file: !13, line: 563, baseType: !158, size: 128, offset: 8832)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !897, file: !13, line: 565, baseType: !158, size: 128, offset: 8960)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !897, file: !13, line: 568, baseType: !1269, size: 64, offset: 9088)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = !DISubroutineType(types: !1271)
!1271 = !{null}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !897, file: !13, line: 570, baseType: !191, size: 32, offset: 9152)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !891, file: !20, line: 101, baseType: !155, size: 64, offset: 192)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !891, file: !20, line: 103, baseType: !597, size: 8, offset: 256)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !891, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !891, file: !20, line: 106, baseType: !1277, size: 64, offset: 320)
!1277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1278, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1279)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1280, line: 282, size: 1600, elements: !1281)
!1280 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1281 = !{!1282, !1286, !1287, !1291}
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1279, file: !1280, line: 283, baseType: !1283, size: 256)
!1283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 256, elements: !1284)
!1284 = !{!1285}
!1285 = !DISubrange(count: 32)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1279, file: !1280, line: 284, baseType: !1283, size: 256, offset: 256)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1279, file: !1280, line: 285, baseType: !1288, size: 1024, offset: 512)
!1288 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 1024, elements: !1289)
!1289 = !{!1290}
!1290 = !DISubrange(count: 128)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1279, file: !1280, line: 286, baseType: !519, size: 64, offset: 1536)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !891, file: !20, line: 107, baseType: !1293, size: 64, offset: 384)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1295)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1280, line: 217, size: 256, elements: !1296)
!1296 = !{!1297, !1301, !1303, !1304}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1295, file: !1280, line: 218, baseType: !1298, size: 128)
!1298 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 128, elements: !1299)
!1299 = !{!1300}
!1300 = !DISubrange(count: 16)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1295, file: !1280, line: 219, baseType: !1302, size: 64, offset: 128)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1280, line: 15, baseType: !291)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1295, file: !1280, line: 220, baseType: !1093, size: 32, offset: 192)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1295, file: !1280, line: 221, baseType: !1093, size: 32, offset: 224)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !891, file: !20, line: 109, baseType: !850, size: 64, offset: 448)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !891, file: !20, line: 110, baseType: !841, size: 64, offset: 512)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !891, file: !20, line: 111, baseType: !850, size: 64, offset: 576)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !891, file: !20, line: 112, baseType: !841, size: 64, offset: 640)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !891, file: !20, line: 113, baseType: !1310, size: 64, offset: 704)
!1310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1311, size: 64)
!1311 = !DISubroutineType(types: !1312)
!1312 = !{!46, !817, !1313}
!1313 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1314)
!1314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1315)
!1315 = !{!1316}
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1314, file: !38, line: 59, baseType: !46, size: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !891, file: !20, line: 114, baseType: !850, size: 64, offset: 768)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !891, file: !20, line: 115, baseType: !293, size: 64, offset: 832)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !891, file: !20, line: 116, baseType: !293, size: 64, offset: 896)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !891, file: !20, line: 118, baseType: !845, size: 64, offset: 960)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !891, file: !20, line: 119, baseType: !841, size: 64, offset: 1024)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !891, file: !20, line: 121, baseType: !1323, size: 64, offset: 1088)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !878, file: !879, line: 88, baseType: !830, size: 64, offset: 384)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !878, file: !879, line: 89, baseType: !850, size: 64, offset: 448)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !878, file: !879, line: 90, baseType: !841, size: 64, offset: 512)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !878, file: !879, line: 91, baseType: !841, size: 64, offset: 576)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !878, file: !879, line: 92, baseType: !841, size: 64, offset: 640)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !878, file: !879, line: 94, baseType: !850, size: 64, offset: 704)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !878, file: !879, line: 95, baseType: !850, size: 64, offset: 768)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !878, file: !879, line: 97, baseType: !1310, size: 64, offset: 832)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !878, file: !879, line: 98, baseType: !850, size: 64, offset: 896)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !878, file: !879, line: 100, baseType: !850, size: 64, offset: 960)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !878, file: !879, line: 102, baseType: !850, size: 64, offset: 1024)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !878, file: !879, line: 103, baseType: !841, size: 64, offset: 1088)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !878, file: !879, line: 105, baseType: !845, size: 64, offset: 1152)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !878, file: !879, line: 107, baseType: !1339, size: 64, offset: 1216)
!1339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1340, size: 64)
!1340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1341)
!1341 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !879, line: 107, flags: DIFlagFwdDecl)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !878, file: !879, line: 109, baseType: !597, size: 8, offset: 1280)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !148, file: !26, line: 715, baseType: !890, size: 64, offset: 832)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !148, file: !26, line: 717, baseType: !130, size: 64, offset: 896)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !148, file: !26, line: 719, baseType: !130, size: 64, offset: 960)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !148, file: !26, line: 721, baseType: !498, size: 256, offset: 1024)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !148, file: !26, line: 725, baseType: !1348, size: 448, offset: 1280)
!1348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1349)
!1349 = !{!1350, !1351, !1352, !1353}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1348, file: !26, line: 518, baseType: !158, size: 128)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1348, file: !26, line: 519, baseType: !158, size: 128, offset: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1348, file: !26, line: 520, baseType: !158, size: 128, offset: 256)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1348, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !148, file: !26, line: 726, baseType: !1355, size: 2496, offset: 1728)
!1355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1356)
!1356 = !{!1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1401, !1402, !1403, !1404, !1405, !1406, !1477, !1478, !1479, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1517, !1521}
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1355, file: !38, line: 664, baseType: !1313, size: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1355, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1355, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1355, file: !38, line: 667, baseType: !597, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1355, file: !38, line: 668, baseType: !597, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1355, file: !38, line: 669, baseType: !597, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1355, file: !38, line: 670, baseType: !597, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1355, file: !38, line: 671, baseType: !597, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1355, file: !38, line: 672, baseType: !597, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1355, file: !38, line: 673, baseType: !597, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1355, file: !38, line: 674, baseType: !597, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1355, file: !38, line: 675, baseType: !1175, size: 32, offset: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1355, file: !38, line: 676, baseType: !171, size: 32, offset: 96)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1355, file: !38, line: 678, baseType: !158, size: 128, offset: 128)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1355, file: !38, line: 679, baseType: !916, size: 256, offset: 256)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1355, file: !38, line: 680, baseType: !1373, size: 64, offset: 512)
!1373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1374, size: 64)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1375, line: 43, size: 1536, elements: !1376)
!1375 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1376 = !{!1377, !1378, !1379, !1380, !1381, !1384, !1385, !1386, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1374, file: !1375, line: 44, baseType: !155, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1374, file: !1375, line: 45, baseType: !46, size: 32, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1374, file: !1375, line: 46, baseType: !158, size: 128, offset: 128)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1374, file: !1375, line: 47, baseType: !171, size: 32, offset: 256)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1374, file: !1375, line: 48, baseType: !1382, size: 64, offset: 320)
!1382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1383, size: 64)
!1383 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1374, file: !1375, line: 49, baseType: !1158, size: 320, offset: 384)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1374, file: !1375, line: 50, baseType: !291, size: 64, offset: 704)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1374, file: !1375, line: 51, baseType: !1387, size: 64, offset: 768)
!1387 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1388, line: 29, baseType: !416)
!1388 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1374, file: !1375, line: 52, baseType: !1387, size: 64, offset: 832)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1374, file: !1375, line: 53, baseType: !1387, size: 64, offset: 896)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1374, file: !1375, line: 54, baseType: !1387, size: 64, offset: 960)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1374, file: !1375, line: 55, baseType: !1387, size: 64, offset: 1024)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1374, file: !1375, line: 56, baseType: !291, size: 64, offset: 1088)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1374, file: !1375, line: 57, baseType: !291, size: 64, offset: 1152)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1374, file: !1375, line: 58, baseType: !291, size: 64, offset: 1216)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1374, file: !1375, line: 59, baseType: !291, size: 64, offset: 1280)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1374, file: !1375, line: 60, baseType: !291, size: 64, offset: 1344)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1374, file: !1375, line: 61, baseType: !817, size: 64, offset: 1408)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1374, file: !1375, line: 62, baseType: !597, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1374, file: !1375, line: 63, baseType: !597, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1355, file: !38, line: 681, baseType: !597, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1355, file: !38, line: 682, baseType: !597, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1355, file: !38, line: 683, baseType: !597, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1355, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1355, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1355, file: !38, line: 690, baseType: !1407, size: 512, offset: 640)
!1407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1408)
!1408 = !{!1409, !1415, !1416, !1421, !1473, !1474, !1475, !1476}
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1407, file: !33, line: 119, baseType: !1410, size: 256)
!1410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1411, line: 9, size: 256, elements: !1412)
!1411 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1412 = !{!1413, !1414}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1410, file: !1411, line: 10, baseType: !603, size: 192, align: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1410, file: !1411, line: 11, baseType: !1387, size: 64, offset: 192)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1407, file: !33, line: 120, baseType: !1387, size: 64, offset: 256)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1407, file: !33, line: 121, baseType: !1417, size: 64, offset: 320)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{!32, !1420}
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1407, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1407, file: !33, line: 122, baseType: !1422, size: 64, offset: 384)
!1422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1423, size: 64)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1424)
!1424 = !{!1425, !1450, !1451, !1454, !1459, !1460, !1468, !1472}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1423, file: !33, line: 160, baseType: !1426, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1428)
!1428 = !{!1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1427, file: !33, line: 216, baseType: !432, size: 32)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1427, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1427, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1427, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1427, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1427, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1427, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1427, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1427, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1427, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1427, file: !33, line: 227, baseType: !211, size: 16, offset: 192)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1427, file: !33, line: 228, baseType: !211, size: 16, offset: 208)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1427, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1427, file: !33, line: 235, baseType: !1387, size: 64, offset: 256)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1427, file: !33, line: 236, baseType: !1420, size: 64, offset: 320)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1427, file: !33, line: 237, baseType: !1387, size: 64, offset: 384)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1427, file: !33, line: 238, baseType: !1420, size: 64, offset: 448)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1427, file: !33, line: 239, baseType: !1447, size: 4096, align: 512, offset: 512)
!1447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1423, size: 4096, align: 512, elements: !1448)
!1448 = !{!1449}
!1449 = !DISubrange(count: 8)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1423, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1423, file: !33, line: 162, baseType: !1452, size: 32, offset: 96)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !129, line: 32, baseType: !1453)
!1453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !275, line: 96, baseType: !46)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1423, file: !33, line: 163, baseType: !1455, size: 32, offset: 128)
!1455 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !447, line: 274, baseType: !1456)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !447, line: 274, size: 32, elements: !1457)
!1457 = !{!1458}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1456, file: !447, line: 274, baseType: !446, size: 32)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1423, file: !33, line: 164, baseType: !1420, size: 64, offset: 192)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1423, file: !33, line: 165, baseType: !1461, size: 128, offset: 256)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1411, line: 14, size: 128, elements: !1462)
!1462 = !{!1463}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1461, file: !1411, line: 15, baseType: !1464, size: 128)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !604, line: 26, size: 128, elements: !1465)
!1465 = !{!1466, !1467}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1464, file: !604, line: 27, baseType: !706, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1464, file: !604, line: 28, baseType: !608, size: 64, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1423, file: !33, line: 166, baseType: !1469, size: 64, offset: 384)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1470 = !DISubroutineType(types: !1471)
!1471 = !{!1387}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1423, file: !33, line: 167, baseType: !1387, size: 64, offset: 448)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1407, file: !33, line: 123, baseType: !199, size: 8, offset: 448)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1407, file: !33, line: 124, baseType: !199, size: 8, offset: 456)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1407, file: !33, line: 125, baseType: !199, size: 8, offset: 464)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1407, file: !33, line: 126, baseType: !199, size: 8, offset: 472)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1355, file: !38, line: 691, baseType: !404, size: 64, offset: 1152)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1355, file: !38, line: 692, baseType: !562, size: 256, offset: 1216)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1355, file: !38, line: 693, baseType: !1480, size: 192, offset: 1472)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1481, line: 41, baseType: !1482)
!1481 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1481, line: 37, size: 192, elements: !1483)
!1483 = !{!1484, !1485}
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1482, file: !1481, line: 38, baseType: !171, size: 32)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1482, file: !1481, line: 39, baseType: !158, size: 128, offset: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1355, file: !38, line: 694, baseType: !1382, size: 64, offset: 1664)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1355, file: !38, line: 695, baseType: !191, size: 32, offset: 1728)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1355, file: !38, line: 696, baseType: !191, size: 32, offset: 1760)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1355, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1355, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1355, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1355, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1355, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1355, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1355, file: !38, line: 703, baseType: !597, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1355, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1355, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1355, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1355, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1355, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1355, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1355, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1355, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1355, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1355, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1355, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1355, file: !38, line: 715, baseType: !404, size: 64, offset: 2048)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1355, file: !38, line: 716, baseType: !404, size: 64, offset: 2112)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1355, file: !38, line: 717, baseType: !404, size: 64, offset: 2176)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1355, file: !38, line: 718, baseType: !404, size: 64, offset: 2240)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1355, file: !38, line: 720, baseType: !1512, size: 64, offset: 2304)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1514)
!1514 = !{!1515, !1516}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1513, file: !38, line: 633, baseType: !171, size: 32)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1513, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1355, file: !38, line: 721, baseType: !1518, size: 64, offset: 2368)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{null, !817, !477}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1355, file: !38, line: 722, baseType: !1522, size: 64, offset: 2432)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !38, line: 722, flags: DIFlagFwdDecl)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !148, file: !26, line: 727, baseType: !1525, size: 64, offset: 4224)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1527)
!1527 = !{!1528, !1529, !1530, !1534, !1535, !1536}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1526, file: !38, line: 743, baseType: !847, size: 1472)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1526, file: !38, line: 744, baseType: !850, size: 64, offset: 1472)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1526, file: !38, line: 745, baseType: !1531, size: 64, offset: 1536)
!1531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1532, size: 64)
!1532 = !DISubroutineType(types: !1533)
!1533 = !{null, !817, !597}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1526, file: !38, line: 746, baseType: !850, size: 64, offset: 1600)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1526, file: !38, line: 747, baseType: !841, size: 64, offset: 1664)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1526, file: !38, line: 748, baseType: !841, size: 64, offset: 1728)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !148, file: !26, line: 736, baseType: !1538, size: 128, offset: 4288)
!1538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1539)
!1539 = !{!1540, !1544}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1538, file: !26, line: 531, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1542, size: 64)
!1542 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1543, line: 13, flags: DIFlagFwdDecl)
!1543 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1538, file: !26, line: 532, baseType: !1545, size: 64, offset: 64)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !148, file: !26, line: 738, baseType: !1548, size: 64, offset: 4416)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1550)
!1550 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !148, file: !26, line: 740, baseType: !1552, size: 64, offset: 4480)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !148, file: !26, line: 741, baseType: !404, size: 64, offset: 4544)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !148, file: !26, line: 746, baseType: !404, size: 64, offset: 4608)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !148, file: !26, line: 747, baseType: !1556, size: 64, offset: 4672)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1558)
!1558 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !148, file: !26, line: 749, baseType: !1560, size: 64, offset: 4736)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1562)
!1562 = !{!1563, !1564, !1565}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1561, file: !26, line: 433, baseType: !7, size: 32)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1561, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1561, file: !26, line: 435, baseType: !291, size: 64, offset: 64)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !148, file: !26, line: 751, baseType: !158, size: 128, offset: 4800)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !148, file: !26, line: 762, baseType: !1568, size: 64, offset: 4928)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !148, file: !26, line: 770, baseType: !1571, offset: 4992)
!1571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1572, line: 5, elements: !377)
!1572 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !148, file: !26, line: 772, baseType: !1574, size: 64, offset: 4992)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1576, line: 48, size: 1152, elements: !1577)
!1576 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!1577 = !{!1578, !1579, !1581, !1582, !1685, !1693, !1694, !1695, !1696, !1697, !1698}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1575, file: !1576, line: 49, baseType: !155, size: 64)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1575, file: !1576, line: 50, baseType: !1580, size: 32, offset: 64)
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1576, line: 25, baseType: !1175)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1575, file: !1576, line: 51, baseType: !155, size: 64, offset: 128)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1575, file: !1576, line: 52, baseType: !1583, size: 512, offset: 192)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1584, line: 41, size: 512, elements: !1585)
!1584 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!1585 = !{!1586, !1588, !1681, !1682, !1683, !1684}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1583, file: !1584, line: 42, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1583, file: !1584, line: 43, baseType: !1589, size: 64, offset: 64)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1591)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1584, line: 125, size: 1408, elements: !1592)
!1592 = !{!1593, !1597, !1601, !1607, !1611, !1612, !1616, !1620, !1624, !1628, !1632, !1633, !1637, !1641, !1645, !1656, !1657, !1658, !1659, !1669, !1673, !1677}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1591, file: !1584, line: 126, baseType: !1594, size: 64)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!1587, !1587}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1591, file: !1584, line: 127, baseType: !1598, size: 64, offset: 64)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{null, !1587}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1591, file: !1584, line: 128, baseType: !1602, size: 64, offset: 128)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!597, !1605}
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1583)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1591, file: !1584, line: 129, baseType: !1608, size: 64, offset: 192)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!519, !1605, !833}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !1591, file: !1584, line: 131, baseType: !1602, size: 64, offset: 256)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !1591, file: !1584, line: 133, baseType: !1613, size: 64, offset: 320)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!53, !1605}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1591, file: !1584, line: 134, baseType: !1617, size: 64, offset: 384)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!597, !1605, !155}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1591, file: !1584, line: 136, baseType: !1621, size: 64, offset: 448)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!46, !1605, !155, !7, !130, !288}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1591, file: !1584, line: 141, baseType: !1625, size: 64, offset: 512)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!46, !1605, !155, !1242, !288}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1591, file: !1584, line: 144, baseType: !1629, size: 64, offset: 576)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!155, !1605}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1591, file: !1584, line: 145, baseType: !1629, size: 64, offset: 640)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1591, file: !1584, line: 146, baseType: !1634, size: 64, offset: 704)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!1587, !1605}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1591, file: !1584, line: 148, baseType: !1638, size: 64, offset: 768)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!1587, !1605, !1587}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1591, file: !1584, line: 151, baseType: !1642, size: 64, offset: 832)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!1587, !1605, !155}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1591, file: !1584, line: 153, baseType: !1646, size: 64, offset: 896)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!46, !1605, !155, !155, !7, !7, !1649}
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1584, line: 94, size: 640, elements: !1651)
!1651 = !{!1652, !1653, !1654}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1650, file: !1584, line: 95, baseType: !1587, size: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1650, file: !1584, line: 96, baseType: !7, size: 32, offset: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1650, file: !1584, line: 97, baseType: !1655, size: 512, offset: 128)
!1655 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 512, elements: !1448)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1591, file: !1584, line: 158, baseType: !1638, size: 64, offset: 960)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1591, file: !1584, line: 161, baseType: !1634, size: 64, offset: 1024)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1591, file: !1584, line: 163, baseType: !1594, size: 64, offset: 1088)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1591, file: !1584, line: 164, baseType: !1660, size: 64, offset: 1152)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!46, !1605, !1663}
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1584, line: 73, size: 128, elements: !1665)
!1665 = !{!1666, !1667, !1668}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1664, file: !1584, line: 74, baseType: !7, size: 32)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1664, file: !1584, line: 75, baseType: !7, size: 32, offset: 32)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1664, file: !1584, line: 76, baseType: !1605, size: 64, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !1591, file: !1584, line: 166, baseType: !1670, size: 64, offset: 1216)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = !DISubroutineType(types: !1672)
!1672 = !{!130, !1587, !46}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !1591, file: !1584, line: 167, baseType: !1674, size: 64, offset: 1280)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!46, !1605, !7}
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1591, file: !1584, line: 168, baseType: !1678, size: 64, offset: 1344)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DISubroutineType(types: !1680)
!1680 = !{!46, !1587}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1583, file: !1584, line: 44, baseType: !817, size: 64, offset: 128)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1583, file: !1584, line: 45, baseType: !158, size: 128, offset: 192)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1583, file: !1584, line: 46, baseType: !158, size: 128, offset: 320)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1583, file: !1584, line: 47, baseType: !199, size: 8, offset: 448)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1575, file: !1576, line: 54, baseType: !1686, size: 64, offset: 704)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1576, line: 28, size: 256, elements: !1688)
!1688 = !{!1689, !1690, !1691, !1692}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1687, file: !1576, line: 29, baseType: !241, size: 64)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1687, file: !1576, line: 30, baseType: !46, size: 32, offset: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1687, file: !1576, line: 31, baseType: !130, size: 64, offset: 128)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1687, file: !1576, line: 32, baseType: !1686, size: 64, offset: 192)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1575, file: !1576, line: 55, baseType: !1686, size: 64, offset: 768)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1575, file: !1576, line: 56, baseType: !1574, size: 64, offset: 832)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1575, file: !1576, line: 57, baseType: !1574, size: 64, offset: 896)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1575, file: !1576, line: 58, baseType: !1574, size: 64, offset: 960)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1575, file: !1576, line: 62, baseType: !291, size: 64, offset: 1024)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1575, file: !1576, line: 63, baseType: !130, size: 64, offset: 1088)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !148, file: !26, line: 773, baseType: !1587, size: 64, offset: 5056)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !148, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !148, file: !26, line: 778, baseType: !1702, size: 32, offset: 5152)
!1702 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !129, line: 21, baseType: !1703)
!1703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !129, line: 18, baseType: !1175)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !148, file: !26, line: 779, baseType: !1175, size: 32, offset: 5184)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !148, file: !26, line: 781, baseType: !171, size: 32, offset: 5216)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !148, file: !26, line: 782, baseType: !158, size: 128, offset: 5248)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !148, file: !26, line: 784, baseType: !1708, size: 64, offset: 5376)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1710)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1711, line: 52, size: 768, elements: !1712)
!1711 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1712 = !{!1713, !1714, !1715, !1716, !1717, !1721, !1725, !1726, !1727, !1728, !1732, !1736}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1710, file: !1711, line: 53, baseType: !155, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1710, file: !1711, line: 55, baseType: !293, size: 64, offset: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1710, file: !1711, line: 56, baseType: !293, size: 64, offset: 128)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1710, file: !1711, line: 58, baseType: !830, size: 64, offset: 192)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1710, file: !1711, line: 59, baseType: !1718, size: 64, offset: 256)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DISubroutineType(types: !1720)
!1720 = !{!241, !833, !839}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1710, file: !1711, line: 61, baseType: !1722, size: 64, offset: 320)
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = !DISubroutineType(types: !1724)
!1724 = !{null, !1708}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1710, file: !1711, line: 62, baseType: !841, size: 64, offset: 384)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1710, file: !1711, line: 64, baseType: !850, size: 64, offset: 448)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1710, file: !1711, line: 66, baseType: !636, size: 64, offset: 512)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1710, file: !1711, line: 67, baseType: !1729, size: 64, offset: 576)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!519, !833}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1710, file: !1711, line: 69, baseType: !1733, size: 64, offset: 640)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{null, !833, !671, !679}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1710, file: !1711, line: 71, baseType: !845, size: 64, offset: 704)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !148, file: !26, line: 785, baseType: !293, size: 64, offset: 5440)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !148, file: !26, line: 787, baseType: !841, size: 64, offset: 5504)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !148, file: !26, line: 788, baseType: !1740, size: 64, offset: 5568)
!1740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1741, size: 64)
!1741 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !148, file: !26, line: 789, baseType: !1743, size: 64, offset: 5632)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !148, file: !26, line: 791, baseType: !1746, size: 64, offset: 5696)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1748)
!1748 = !{!1749, !1750, !1751, !1752, !1753}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1747, file: !26, line: 598, baseType: !59, size: 32)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1747, file: !26, line: 599, baseType: !68, size: 32, offset: 32)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1747, file: !26, line: 600, baseType: !73, size: 32, offset: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1747, file: !26, line: 601, baseType: !597, size: 8, offset: 96)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1747, file: !26, line: 602, baseType: !597, size: 8, offset: 104)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !148, file: !26, line: 793, baseType: !78, size: 32, offset: 5760)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !148, file: !26, line: 795, baseType: !597, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !148, file: !26, line: 796, baseType: !597, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !148, file: !26, line: 797, baseType: !597, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !148, file: !26, line: 798, baseType: !597, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !148, file: !26, line: 799, baseType: !597, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "removal", scope: !143, file: !96, line: 160, baseType: !916, size: 256, offset: 6016)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "trips_attribute_group", scope: !143, file: !96, line: 161, baseType: !296, size: 320, offset: 6272)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "trip_temp_attrs", scope: !143, file: !96, line: 162, baseType: !1763, size: 64, offset: 6592)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_attr", file: !133, line: 59, size: 448, elements: !1765)
!1765 = !{!1766, !1779}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1764, file: !133, line: 60, baseType: !1767, size: 256)
!1767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !26, line: 106, size: 256, elements: !1768)
!1768 = !{!1769, !1770, !1775}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1767, file: !26, line: 107, baseType: !279, size: 128)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1767, file: !26, line: 108, baseType: !1771, size: 64, offset: 128)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{!273, !817, !1774, !241}
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1767, file: !26, line: 110, baseType: !1776, size: 64, offset: 192)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{!273, !817, !1774, !155, !288}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1764, file: !133, line: 61, baseType: !137, size: 160, offset: 256)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "trip_type_attrs", scope: !143, file: !96, line: 163, baseType: !1763, size: 64, offset: 6656)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "trip_hyst_attrs", scope: !143, file: !96, line: 164, baseType: !1763, size: 64, offset: 6720)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !143, file: !96, line: 165, baseType: !84, size: 32, offset: 6784)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !143, file: !96, line: 166, baseType: !130, size: 64, offset: 6848)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "trips", scope: !143, file: !96, line: 167, baseType: !1785, size: 64, offset: 6912)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_trip", file: !96, line: 63, size: 192, elements: !1787)
!1787 = !{!1788, !1789, !1790, !1791}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "temperature", scope: !1786, file: !96, line: 64, baseType: !46, size: 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "hysteresis", scope: !1786, file: !96, line: 65, baseType: !46, size: 32, offset: 32)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1786, file: !96, line: 66, baseType: !89, size: 32, offset: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1786, file: !96, line: 67, baseType: !130, size: 64, offset: 128)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "num_trips", scope: !143, file: !96, line: 168, baseType: !46, size: 32, offset: 6976)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "trips_disabled", scope: !143, file: !96, line: 169, baseType: !291, size: 64, offset: 7040)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "passive_delay_jiffies", scope: !143, file: !96, line: 170, baseType: !291, size: 64, offset: 7104)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "polling_delay_jiffies", scope: !143, file: !96, line: 171, baseType: !291, size: 64, offset: 7168)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "temperature", scope: !143, file: !96, line: 172, baseType: !46, size: 32, offset: 7232)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "last_temperature", scope: !143, file: !96, line: 173, baseType: !46, size: 32, offset: 7264)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "emul_temperature", scope: !143, file: !96, line: 174, baseType: !46, size: 32, offset: 7296)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "passive", scope: !143, file: !96, line: 175, baseType: !46, size: 32, offset: 7328)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "prev_low_trip", scope: !143, file: !96, line: 176, baseType: !46, size: 32, offset: 7360)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "prev_high_trip", scope: !143, file: !96, line: 177, baseType: !46, size: 32, offset: 7392)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "need_update", scope: !143, file: !96, line: 178, baseType: !191, size: 32, offset: 7424)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !143, file: !96, line: 179, baseType: !1804, size: 64, offset: 7488)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_device_ops", file: !96, line: 70, size: 768, elements: !1806)
!1806 = !{!1807, !1852, !1853, !1857, !1861, !1865, !1866, !1867, !1868, !1872, !1879, !1883}
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !1805, file: !96, line: 71, baseType: !1808, size: 64)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!46, !142, !1811}
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !96, line: 98, size: 6848, elements: !1813)
!1813 = !{!1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1848, !1849, !1850, !1851}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1812, file: !96, line: 99, baseType: !46, size: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1812, file: !96, line: 100, baseType: !241, size: 64, offset: 64)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "max_state", scope: !1812, file: !96, line: 101, baseType: !291, size: 64, offset: 128)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !1812, file: !96, line: 102, baseType: !148, size: 5824, offset: 192)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !1812, file: !96, line: 103, baseType: !1574, size: 64, offset: 6016)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !1812, file: !96, line: 104, baseType: !130, size: 64, offset: 6080)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !1812, file: !96, line: 105, baseType: !130, size: 64, offset: 6144)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1812, file: !96, line: 106, baseType: !1822, size: 64, offset: 6208)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1824)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device_ops", file: !96, line: 89, size: 384, elements: !1825)
!1825 = !{!1826, !1830, !1831, !1835, !1840, !1844}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "get_max_state", scope: !1824, file: !96, line: 90, baseType: !1827, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DISubroutineType(types: !1829)
!1829 = !{!46, !1811, !1256}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "get_cur_state", scope: !1824, file: !96, line: 91, baseType: !1827, size: 64, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "set_cur_state", scope: !1824, file: !96, line: 92, baseType: !1832, size: 64, offset: 128)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DISubroutineType(types: !1834)
!1834 = !{!46, !1811, !291}
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "get_requested_power", scope: !1824, file: !96, line: 93, baseType: !1836, size: 64, offset: 192)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!46, !1811, !1839}
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "state2power", scope: !1824, file: !96, line: 94, baseType: !1841, size: 64, offset: 256)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!46, !1811, !291, !1839}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "power2state", scope: !1824, file: !96, line: 95, baseType: !1845, size: 64, offset: 320)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DISubroutineType(types: !1847)
!1847 = !{!46, !1811, !1175, !1256}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !1812, file: !96, line: 107, baseType: !597, size: 8, offset: 6272)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1812, file: !96, line: 108, baseType: !498, size: 256, offset: 6336)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !1812, file: !96, line: 109, baseType: !158, size: 128, offset: 6592)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1812, file: !96, line: 110, baseType: !158, size: 128, offset: 6720)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !1805, file: !96, line: 73, baseType: !1808, size: 64, offset: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "get_temp", scope: !1805, file: !96, line: 75, baseType: !1854, size: 64, offset: 128)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!46, !142, !1057}
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "set_trips", scope: !1805, file: !96, line: 76, baseType: !1858, size: 64, offset: 192)
!1858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1859, size: 64)
!1859 = !DISubroutineType(types: !1860)
!1860 = !{!46, !142, !46, !46}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "change_mode", scope: !1805, file: !96, line: 77, baseType: !1862, size: 64, offset: 256)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = !DISubroutineType(types: !1864)
!1864 = !{!46, !142, !84}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_temp", scope: !1805, file: !96, line: 79, baseType: !1858, size: 64, offset: 320)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "set_trip_hyst", scope: !1805, file: !96, line: 80, baseType: !1858, size: 64, offset: 384)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "get_crit_temp", scope: !1805, file: !96, line: 81, baseType: !1854, size: 64, offset: 448)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "set_emul_temp", scope: !1805, file: !96, line: 82, baseType: !1869, size: 64, offset: 512)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DISubroutineType(types: !1871)
!1871 = !{!46, !142, !46}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "get_trend", scope: !1805, file: !96, line: 83, baseType: !1873, size: 64, offset: 576)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DISubroutineType(types: !1875)
!1875 = !{!46, !142, !1876, !1878}
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1786)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "hot", scope: !1805, file: !96, line: 85, baseType: !1880, size: 64, offset: 640)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{null, !142}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "critical", scope: !1805, file: !96, line: 86, baseType: !1880, size: 64, offset: 704)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "tzp", scope: !143, file: !96, line: 180, baseType: !1885, size: 64, offset: 7552)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_zone_params", file: !96, line: 213, size: 448, elements: !1887)
!1887 = !{!1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "governor_name", scope: !1886, file: !96, line: 214, baseType: !137, size: 160)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "no_hwmon", scope: !1886, file: !96, line: 221, baseType: !597, size: 8, offset: 160)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "sustainable_power", scope: !1886, file: !96, line: 227, baseType: !1175, size: 32, offset: 192)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "k_po", scope: !1886, file: !96, line: 233, baseType: !477, size: 32, offset: 224)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "k_pu", scope: !1886, file: !96, line: 239, baseType: !477, size: 32, offset: 256)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "k_i", scope: !1886, file: !96, line: 242, baseType: !477, size: 32, offset: 288)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "k_d", scope: !1886, file: !96, line: 245, baseType: !477, size: 32, offset: 320)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "integral_cutoff", scope: !1886, file: !96, line: 248, baseType: !477, size: 32, offset: 352)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "slope", scope: !1886, file: !96, line: 254, baseType: !46, size: 32, offset: 384)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1886, file: !96, line: 259, baseType: !46, size: 32, offset: 416)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "governor", scope: !143, file: !96, line: 181, baseType: !1899, size: 64, offset: 7616)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_governor", file: !96, line: 204, size: 512, elements: !1901)
!1901 = !{!1902, !1903, !1907, !1908, !1909}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1900, file: !96, line: 205, baseType: !137, size: 160)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "bind_to_tz", scope: !1900, file: !96, line: 206, baseType: !1904, size: 64, offset: 192)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!46, !142}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "unbind_from_tz", scope: !1900, file: !96, line: 207, baseType: !1880, size: 64, offset: 256)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "throttle", scope: !1900, file: !96, line: 208, baseType: !1869, size: 64, offset: 320)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "governor_list", scope: !1900, file: !96, line: 209, baseType: !158, size: 128, offset: 384)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "governor_data", scope: !143, file: !96, line: 182, baseType: !130, size: 64, offset: 7680)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !143, file: !96, line: 183, baseType: !158, size: 128, offset: 7744)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "ida", scope: !143, file: !96, line: 184, baseType: !1913, size: 128, offset: 7872)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ida", file: !1914, line: 246, size: 128, elements: !1915)
!1914 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f4a216f458b933152d42423d3daf6f8")
!1915 = !{!1916}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "xa", scope: !1913, file: !1914, line: 247, baseType: !1917, size: 128)
!1917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1918, line: 296, size: 128, elements: !1919)
!1918 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "4d26891312d03140ff07d2441399d884")
!1919 = !{!1920, !1921, !1922}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1917, file: !1918, line: 297, baseType: !171, size: 32)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1917, file: !1918, line: 299, baseType: !128, size: 32, offset: 32)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1917, file: !1918, line: 300, baseType: !130, size: 64, offset: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !143, file: !96, line: 185, baseType: !498, size: 256, offset: 8000)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !143, file: !96, line: 186, baseType: !158, size: 128, offset: 8256)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "poll_queue", scope: !143, file: !96, line: 187, baseType: !1222, size: 704, offset: 8384)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "notify_event", scope: !143, file: !96, line: 188, baseType: !101, size: 32, offset: 9088)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !143, file: !96, line: 189, baseType: !597, size: 8, offset: 9120)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !132, file: !133, line: 89, baseType: !1811, size: 64, offset: 256)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "trip", scope: !132, file: !133, line: 90, baseType: !1876, size: 64, offset: 320)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !132, file: !133, line: 91, baseType: !597, size: 8, offset: 384)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "upper", scope: !132, file: !133, line: 92, baseType: !291, size: 64, offset: 448)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "lower", scope: !132, file: !133, line: 93, baseType: !291, size: 64, offset: 512)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !132, file: !133, line: 94, baseType: !291, size: 64, offset: 576)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "attr_name", scope: !132, file: !133, line: 95, baseType: !137, size: 160, offset: 640)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !132, file: !133, line: 96, baseType: !1767, size: 256, offset: 832)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "weight_attr_name", scope: !132, file: !133, line: 97, baseType: !137, size: 160, offset: 1088)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "weight_attr", scope: !132, file: !133, line: 98, baseType: !1767, size: 256, offset: 1280)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "tz_node", scope: !132, file: !133, line: 99, baseType: !158, size: 128, offset: 1536)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "cdev_node", scope: !132, file: !133, line: 100, baseType: !158, size: 128, offset: 1664)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !132, file: !133, line: 101, baseType: !7, size: 32, offset: 1792)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "upper_no_limit", scope: !132, file: !133, line: 102, baseType: !597, size: 8, offset: 1824)
!1942 = !{!1943, !1946, !0, !1951, !1953, !1958, !1963, !1965, !1967, !1969, !1971, !1974, !1976, !1979, !1984, !1986, !1991, !1993, !1995, !1997, !1999, !2001, !2003, !2005, !2007, !2009, !2011, !2014, !2016, !2021, !2023, !2025, !2027, !2029, !2032, !2034, !2036, !2039, !2044, !2046, !2048, !2050, !2055, !2057, !2059, !2061, !2063, !2066, !2068, !2071, !2073, !2075, !2077, !2079, !2081}
!1943 = !DIGlobalVariableExpression(var: !1944, expr: !DIExpression())
!1944 = distinct !DIGlobalVariable(scope: null, file: !3, line: 946, type: !1945, isLocal: true, isDefinition: true)
!1945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 32, elements: !479)
!1946 = !DIGlobalVariableExpression(var: !1947, expr: !DIExpression())
!1947 = distinct !DIGlobalVariable(scope: null, file: !118, line: 480, type: !1948, isLocal: true, isDefinition: true)
!1948 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 168, elements: !1949)
!1949 = !{!1950}
!1950 = !DISubrange(count: 21)
!1951 = !DIGlobalVariableExpression(var: !1952, expr: !DIExpression())
!1952 = distinct !DIGlobalVariable(name: "thermal_zone_attribute_group", scope: !2, file: !3, line: 405, type: !295, isLocal: true, isDefinition: true)
!1953 = !DIGlobalVariableExpression(var: !1954, expr: !DIExpression())
!1954 = distinct !DIGlobalVariable(name: "thermal_zone_dev_attrs", scope: !2, file: !3, line: 386, type: !1955, isLocal: true, isDefinition: true)
!1955 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 832, elements: !1956)
!1956 = !{!1957}
!1957 = !DISubrange(count: 13)
!1958 = !DIGlobalVariableExpression(var: !1959, expr: !DIExpression())
!1959 = distinct !DIGlobalVariable(scope: null, file: !3, line: 376, type: !1960, isLocal: true, isDefinition: true)
!1960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 40, elements: !1961)
!1961 = !{!1962}
!1962 = !DISubrange(count: 5)
!1963 = !DIGlobalVariableExpression(var: !1964, expr: !DIExpression())
!1964 = distinct !DIGlobalVariable(name: "dev_attr_type", scope: !2, file: !3, line: 376, type: !1767, isLocal: true, isDefinition: true)
!1965 = !DIGlobalVariableExpression(var: !1966, expr: !DIExpression())
!1966 = distinct !DIGlobalVariable(scope: null, file: !3, line: 31, type: !1945, isLocal: true, isDefinition: true)
!1967 = !DIGlobalVariableExpression(var: !1968, expr: !DIExpression())
!1968 = distinct !DIGlobalVariable(scope: null, file: !3, line: 377, type: !1960, isLocal: true, isDefinition: true)
!1969 = !DIGlobalVariableExpression(var: !1970, expr: !DIExpression())
!1970 = distinct !DIGlobalVariable(name: "dev_attr_temp", scope: !2, file: !3, line: 377, type: !1767, isLocal: true, isDefinition: true)
!1971 = !DIGlobalVariableExpression(var: !1972, expr: !DIExpression())
!1972 = distinct !DIGlobalVariable(scope: null, file: !3, line: 378, type: !1973, isLocal: true, isDefinition: true)
!1973 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 56, elements: !1049)
!1974 = !DIGlobalVariableExpression(var: !1975, expr: !DIExpression())
!1975 = distinct !DIGlobalVariable(name: "dev_attr_policy", scope: !2, file: !3, line: 378, type: !1767, isLocal: true, isDefinition: true)
!1976 = !DIGlobalVariableExpression(var: !1977, expr: !DIExpression())
!1977 = distinct !DIGlobalVariable(scope: null, file: !3, line: 241, type: !1978, isLocal: true, isDefinition: true)
!1978 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 24, elements: !242)
!1979 = !DIGlobalVariableExpression(var: !1980, expr: !DIExpression())
!1980 = distinct !DIGlobalVariable(scope: null, file: !3, line: 379, type: !1981, isLocal: true, isDefinition: true)
!1981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 152, elements: !1982)
!1982 = !{!1983}
!1983 = !DISubrange(count: 19)
!1984 = !DIGlobalVariableExpression(var: !1985, expr: !DIExpression())
!1985 = distinct !DIGlobalVariable(name: "dev_attr_available_policies", scope: !2, file: !3, line: 379, type: !1767, isLocal: true, isDefinition: true)
!1986 = !DIGlobalVariableExpression(var: !1987, expr: !DIExpression())
!1987 = distinct !DIGlobalVariable(scope: null, file: !3, line: 380, type: !1988, isLocal: true, isDefinition: true)
!1988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 144, elements: !1989)
!1989 = !{!1990}
!1990 = !DISubrange(count: 18)
!1991 = !DIGlobalVariableExpression(var: !1992, expr: !DIExpression())
!1992 = distinct !DIGlobalVariable(name: "dev_attr_sustainable_power", scope: !2, file: !3, line: 380, type: !1767, isLocal: true, isDefinition: true)
!1993 = !DIGlobalVariableExpression(var: !1994, expr: !DIExpression())
!1994 = distinct !DIGlobalVariable(scope: null, file: !3, line: 307, type: !1945, isLocal: true, isDefinition: true)
!1995 = !DIGlobalVariableExpression(var: !1996, expr: !DIExpression())
!1996 = distinct !DIGlobalVariable(scope: null, file: !3, line: 362, type: !1960, isLocal: true, isDefinition: true)
!1997 = !DIGlobalVariableExpression(var: !1998, expr: !DIExpression())
!1998 = distinct !DIGlobalVariable(name: "dev_attr_k_po", scope: !2, file: !3, line: 362, type: !1767, isLocal: true, isDefinition: true)
!1999 = !DIGlobalVariableExpression(var: !2000, expr: !DIExpression())
!2000 = distinct !DIGlobalVariable(scope: null, file: !3, line: 363, type: !1960, isLocal: true, isDefinition: true)
!2001 = !DIGlobalVariableExpression(var: !2002, expr: !DIExpression())
!2002 = distinct !DIGlobalVariable(name: "dev_attr_k_pu", scope: !2, file: !3, line: 363, type: !1767, isLocal: true, isDefinition: true)
!2003 = !DIGlobalVariableExpression(var: !2004, expr: !DIExpression())
!2004 = distinct !DIGlobalVariable(scope: null, file: !3, line: 364, type: !1945, isLocal: true, isDefinition: true)
!2005 = !DIGlobalVariableExpression(var: !2006, expr: !DIExpression())
!2006 = distinct !DIGlobalVariable(name: "dev_attr_k_i", scope: !2, file: !3, line: 364, type: !1767, isLocal: true, isDefinition: true)
!2007 = !DIGlobalVariableExpression(var: !2008, expr: !DIExpression())
!2008 = distinct !DIGlobalVariable(scope: null, file: !3, line: 365, type: !1945, isLocal: true, isDefinition: true)
!2009 = !DIGlobalVariableExpression(var: !2010, expr: !DIExpression())
!2010 = distinct !DIGlobalVariable(name: "dev_attr_k_d", scope: !2, file: !3, line: 365, type: !1767, isLocal: true, isDefinition: true)
!2011 = !DIGlobalVariableExpression(var: !2012, expr: !DIExpression())
!2012 = distinct !DIGlobalVariable(scope: null, file: !3, line: 366, type: !2013, isLocal: true, isDefinition: true)
!2013 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 128, elements: !1299)
!2014 = !DIGlobalVariableExpression(var: !2015, expr: !DIExpression())
!2015 = distinct !DIGlobalVariable(name: "dev_attr_integral_cutoff", scope: !2, file: !3, line: 366, type: !1767, isLocal: true, isDefinition: true)
!2016 = !DIGlobalVariableExpression(var: !2017, expr: !DIExpression())
!2017 = distinct !DIGlobalVariable(scope: null, file: !3, line: 367, type: !2018, isLocal: true, isDefinition: true)
!2018 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 48, elements: !2019)
!2019 = !{!2020}
!2020 = !DISubrange(count: 6)
!2021 = !DIGlobalVariableExpression(var: !2022, expr: !DIExpression())
!2022 = distinct !DIGlobalVariable(name: "dev_attr_slope", scope: !2, file: !3, line: 367, type: !1767, isLocal: true, isDefinition: true)
!2023 = !DIGlobalVariableExpression(var: !2024, expr: !DIExpression())
!2024 = distinct !DIGlobalVariable(scope: null, file: !3, line: 368, type: !1973, isLocal: true, isDefinition: true)
!2025 = !DIGlobalVariableExpression(var: !2026, expr: !DIExpression())
!2026 = distinct !DIGlobalVariable(name: "dev_attr_offset", scope: !2, file: !3, line: 368, type: !1767, isLocal: true, isDefinition: true)
!2027 = !DIGlobalVariableExpression(var: !2028, expr: !DIExpression())
!2028 = distinct !DIGlobalVariable(name: "thermal_zone_mode_attribute_group", scope: !2, file: !3, line: 414, type: !295, isLocal: true, isDefinition: true)
!2029 = !DIGlobalVariableExpression(var: !2030, expr: !DIExpression())
!2030 = distinct !DIGlobalVariable(name: "thermal_zone_mode_attrs", scope: !2, file: !3, line: 409, type: !2031, isLocal: true, isDefinition: true)
!2031 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 128, elements: !1047)
!2032 = !DIGlobalVariableExpression(var: !2033, expr: !DIExpression())
!2033 = distinct !DIGlobalVariable(scope: null, file: !3, line: 383, type: !1960, isLocal: true, isDefinition: true)
!2034 = !DIGlobalVariableExpression(var: !2035, expr: !DIExpression())
!2035 = distinct !DIGlobalVariable(name: "dev_attr_mode", scope: !2, file: !3, line: 383, type: !1767, isLocal: true, isDefinition: true)
!2036 = !DIGlobalVariableExpression(var: !2037, expr: !DIExpression())
!2037 = distinct !DIGlobalVariable(scope: null, file: !3, line: 58, type: !2038, isLocal: true, isDefinition: true)
!2038 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 64, elements: !1448)
!2039 = !DIGlobalVariableExpression(var: !2040, expr: !DIExpression())
!2040 = distinct !DIGlobalVariable(scope: null, file: !3, line: 58, type: !2041, isLocal: true, isDefinition: true)
!2041 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 72, elements: !2042)
!2042 = !{!2043}
!2043 = !DISubrange(count: 9)
!2044 = !DIGlobalVariableExpression(var: !2045, expr: !DIExpression())
!2045 = distinct !DIGlobalVariable(scope: null, file: !3, line: 475, type: !1981, isLocal: true, isDefinition: true)
!2046 = !DIGlobalVariableExpression(var: !2047, expr: !DIExpression())
!2047 = distinct !DIGlobalVariable(scope: null, file: !3, line: 486, type: !1981, isLocal: true, isDefinition: true)
!2048 = !DIGlobalVariableExpression(var: !2049, expr: !DIExpression())
!2049 = distinct !DIGlobalVariable(scope: null, file: !3, line: 502, type: !1981, isLocal: true, isDefinition: true)
!2050 = !DIGlobalVariableExpression(var: !2051, expr: !DIExpression())
!2051 = distinct !DIGlobalVariable(scope: null, file: !3, line: 106, type: !2052, isLocal: true, isDefinition: true)
!2052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 80, elements: !2053)
!2053 = !{!2054}
!2054 = !DISubrange(count: 10)
!2055 = !DIGlobalVariableExpression(var: !2056, expr: !DIExpression())
!2056 = distinct !DIGlobalVariable(scope: null, file: !3, line: 108, type: !1960, isLocal: true, isDefinition: true)
!2057 = !DIGlobalVariableExpression(var: !2058, expr: !DIExpression())
!2058 = distinct !DIGlobalVariable(scope: null, file: !3, line: 110, type: !2041, isLocal: true, isDefinition: true)
!2059 = !DIGlobalVariableExpression(var: !2060, expr: !DIExpression())
!2060 = distinct !DIGlobalVariable(scope: null, file: !3, line: 112, type: !2038, isLocal: true, isDefinition: true)
!2061 = !DIGlobalVariableExpression(var: !2062, expr: !DIExpression())
!2062 = distinct !DIGlobalVariable(scope: null, file: !3, line: 114, type: !2041, isLocal: true, isDefinition: true)
!2063 = !DIGlobalVariableExpression(var: !2064, expr: !DIExpression())
!2064 = distinct !DIGlobalVariable(name: "cooling_device_attr_groups", scope: !2, file: !3, line: 658, type: !2065, isLocal: true, isDefinition: true)
!2065 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 192, elements: !242)
!2066 = !DIGlobalVariableExpression(var: !2067, expr: !DIExpression())
!2067 = distinct !DIGlobalVariable(name: "cooling_device_attr_group", scope: !2, file: !3, line: 654, type: !295, isLocal: true, isDefinition: true)
!2068 = !DIGlobalVariableExpression(var: !2069, expr: !DIExpression())
!2069 = distinct !DIGlobalVariable(name: "cooling_device_attrs", scope: !2, file: !3, line: 647, type: !2070, isLocal: true, isDefinition: true)
!2070 = !DICompositeType(tag: DW_TAG_array_type, baseType: !278, size: 256, elements: !479)
!2071 = !DIGlobalVariableExpression(var: !2072, expr: !DIExpression())
!2072 = distinct !DIGlobalVariable(name: "dev_attr_cdev_type", scope: !2, file: !3, line: 643, type: !1767, isLocal: true, isDefinition: true)
!2073 = !DIGlobalVariableExpression(var: !2074, expr: !DIExpression())
!2074 = distinct !DIGlobalVariable(scope: null, file: !3, line: 644, type: !2052, isLocal: true, isDefinition: true)
!2075 = !DIGlobalVariableExpression(var: !2076, expr: !DIExpression())
!2076 = distinct !DIGlobalVariable(name: "dev_attr_max_state", scope: !2, file: !3, line: 644, type: !1767, isLocal: true, isDefinition: true)
!2077 = !DIGlobalVariableExpression(var: !2078, expr: !DIExpression())
!2078 = distinct !DIGlobalVariable(scope: null, file: !3, line: 598, type: !1960, isLocal: true, isDefinition: true)
!2079 = !DIGlobalVariableExpression(var: !2080, expr: !DIExpression())
!2080 = distinct !DIGlobalVariable(scope: null, file: !3, line: 645, type: !2052, isLocal: true, isDefinition: true)
!2081 = !DIGlobalVariableExpression(var: !2082, expr: !DIExpression())
!2082 = distinct !DIGlobalVariable(name: "dev_attr_cur_state", scope: !2, file: !3, line: 645, type: !1767, isLocal: true, isDefinition: true)
!2083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !294, size: 128, elements: !1047)
!2084 = !{i32 7, !"Dwarf Version", i32 5}
!2085 = !{i32 2, !"Debug Info Version", i32 3}
!2086 = !{i32 1, !"wchar_size", i32 2}
!2087 = !{i32 8, !"cf-protection-branch", i32 1}
!2088 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2089 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2090 = !{i32 1, !"Code Model", i32 2}
!2091 = !{i32 1, !"override-stack-alignment", i32 8}
!2092 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2093 = distinct !DISubprogram(name: "thermal_zone_create_device_groups", scope: !3, file: !3, line: 541, type: !1870, scopeLine: 543, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2094)
!2094 = !{!2095, !2096, !2097, !2098, !2099, !2100}
!2095 = !DILocalVariable(name: "tz", arg: 1, scope: !2093, file: !3, line: 541, type: !142)
!2096 = !DILocalVariable(name: "mask", arg: 2, scope: !2093, file: !3, line: 542, type: !46)
!2097 = !DILocalVariable(name: "groups", scope: !2093, file: !3, line: 544, type: !293)
!2098 = !DILocalVariable(name: "i", scope: !2093, file: !3, line: 545, type: !46)
!2099 = !DILocalVariable(name: "size", scope: !2093, file: !3, line: 545, type: !46)
!2100 = !DILocalVariable(name: "result", scope: !2093, file: !3, line: 545, type: !46)
!2101 = !DILocation(line: 541, column: 67, scope: !2093)
!2102 = !DILocation(line: 542, column: 15, scope: !2093)
!2103 = !DILocation(line: 544, column: 2, scope: !2093)
!2104 = !DILocation(line: 544, column: 33, scope: !2093)
!2105 = !DILocation(line: 545, column: 2, scope: !2093)
!2106 = !DILocation(line: 545, column: 6, scope: !2093)
!2107 = !DILocation(line: 545, column: 9, scope: !2093)
!2108 = !DILocation(line: 545, column: 15, scope: !2093)
!2109 = !DILocation(line: 548, column: 7, scope: !2093)
!2110 = !DILocation(line: 550, column: 19, scope: !2093)
!2111 = !DILocation(line: 550, column: 11, scope: !2093)
!2112 = !DILocation(line: 550, column: 9, scope: !2093)
!2113 = !DILocation(line: 551, column: 7, scope: !2114)
!2114 = distinct !DILexicalBlock(scope: !2093, file: !3, line: 551, column: 6)
!2115 = !DILocation(line: 551, column: 6, scope: !2093)
!2116 = !DILocation(line: 552, column: 3, scope: !2114)
!2117 = !DILocation(line: 554, column: 9, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2093, file: !3, line: 554, column: 2)
!2119 = !DILocation(line: 554, column: 7, scope: !2118)
!2120 = !DILocation(line: 554, column: 14, scope: !2121)
!2121 = distinct !DILexicalBlock(scope: !2118, file: !3, line: 554, column: 2)
!2122 = !DILocation(line: 554, column: 18, scope: !2121)
!2123 = !DILocation(line: 554, column: 23, scope: !2121)
!2124 = !DILocation(line: 554, column: 16, scope: !2121)
!2125 = !DILocation(line: 554, column: 2, scope: !2118)
!2126 = !DILocation(line: 555, column: 45, scope: !2121)
!2127 = !DILocation(line: 555, column: 15, scope: !2121)
!2128 = !DILocation(line: 555, column: 3, scope: !2121)
!2129 = !DILocation(line: 555, column: 10, scope: !2121)
!2130 = !DILocation(line: 555, column: 13, scope: !2121)
!2131 = !DILocation(line: 554, column: 29, scope: !2121)
!2132 = !DILocation(line: 554, column: 2, scope: !2121)
!2133 = distinct !{!2133, !2125, !2134, !2135, !2136}
!2134 = !DILocation(line: 555, column: 46, scope: !2118)
!2135 = !{!"llvm.loop.mustprogress"}
!2136 = !{!"llvm.loop.unroll.disable"}
!2137 = !DILocation(line: 557, column: 6, scope: !2138)
!2138 = distinct !DILexicalBlock(scope: !2093, file: !3, line: 557, column: 6)
!2139 = !DILocation(line: 557, column: 10, scope: !2138)
!2140 = !DILocation(line: 557, column: 6, scope: !2093)
!2141 = !DILocation(line: 558, column: 30, scope: !2142)
!2142 = distinct !DILexicalBlock(scope: !2138, file: !3, line: 557, column: 21)
!2143 = !DILocation(line: 558, column: 34, scope: !2142)
!2144 = !DILocation(line: 558, column: 12, scope: !2142)
!2145 = !DILocation(line: 558, column: 10, scope: !2142)
!2146 = !DILocation(line: 559, column: 7, scope: !2147)
!2147 = distinct !DILexicalBlock(scope: !2142, file: !3, line: 559, column: 7)
!2148 = !DILocation(line: 559, column: 7, scope: !2142)
!2149 = !DILocation(line: 560, column: 10, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2147, file: !3, line: 559, column: 15)
!2151 = !DILocation(line: 560, column: 4, scope: !2150)
!2152 = !DILocation(line: 562, column: 11, scope: !2150)
!2153 = !DILocation(line: 562, column: 4, scope: !2150)
!2154 = !DILocation(line: 565, column: 23, scope: !2142)
!2155 = !DILocation(line: 565, column: 27, scope: !2142)
!2156 = !DILocation(line: 565, column: 3, scope: !2142)
!2157 = !DILocation(line: 565, column: 10, scope: !2142)
!2158 = !DILocation(line: 565, column: 15, scope: !2142)
!2159 = !DILocation(line: 565, column: 20, scope: !2142)
!2160 = !DILocation(line: 566, column: 2, scope: !2142)
!2161 = !DILocation(line: 568, column: 22, scope: !2093)
!2162 = !DILocation(line: 568, column: 2, scope: !2093)
!2163 = !DILocation(line: 568, column: 6, scope: !2093)
!2164 = !DILocation(line: 568, column: 13, scope: !2093)
!2165 = !DILocation(line: 568, column: 20, scope: !2093)
!2166 = !DILocation(line: 570, column: 2, scope: !2093)
!2167 = !DILocation(line: 571, column: 1, scope: !2093)
!2168 = distinct !DISubprogram(name: "kcalloc", scope: !118, file: !118, line: 666, type: !2169, scopeLine: 667, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2171)
!2169 = !DISubroutineType(types: !2170)
!2170 = !{!130, !288, !288, !128}
!2171 = !{!2172, !2173, !2174}
!2172 = !DILocalVariable(name: "n", arg: 1, scope: !2168, file: !118, line: 666, type: !288)
!2173 = !DILocalVariable(name: "size", arg: 2, scope: !2168, file: !118, line: 666, type: !288)
!2174 = !DILocalVariable(name: "flags", arg: 3, scope: !2168, file: !118, line: 666, type: !128)
!2175 = !DILocation(line: 666, column: 55, scope: !2168)
!2176 = !DILocation(line: 666, column: 65, scope: !2168)
!2177 = !DILocation(line: 666, column: 77, scope: !2168)
!2178 = !DILocation(line: 668, column: 23, scope: !2168)
!2179 = !DILocation(line: 668, column: 26, scope: !2168)
!2180 = !DILocation(line: 668, column: 32, scope: !2168)
!2181 = !DILocation(line: 668, column: 38, scope: !2168)
!2182 = !DILocation(line: 668, column: 9, scope: !2168)
!2183 = !DILocation(line: 668, column: 2, scope: !2168)
!2184 = distinct !DISubprogram(name: "create_trip_attrs", scope: !3, file: !3, line: 434, type: !1870, scopeLine: 435, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2185)
!2185 = !{!2186, !2187, !2188, !2189}
!2186 = !DILocalVariable(name: "tz", arg: 1, scope: !2184, file: !3, line: 434, type: !142)
!2187 = !DILocalVariable(name: "mask", arg: 2, scope: !2184, file: !3, line: 434, type: !46)
!2188 = !DILocalVariable(name: "attrs", scope: !2184, file: !3, line: 436, type: !629)
!2189 = !DILocalVariable(name: "indx", scope: !2184, file: !3, line: 437, type: !46)
!2190 = !DILocation(line: 434, column: 58, scope: !2184)
!2191 = !DILocation(line: 434, column: 66, scope: !2184)
!2192 = !DILocation(line: 436, column: 2, scope: !2184)
!2193 = !DILocation(line: 436, column: 21, scope: !2184)
!2194 = !DILocation(line: 437, column: 2, scope: !2184)
!2195 = !DILocation(line: 437, column: 6, scope: !2184)
!2196 = !DILocation(line: 440, column: 6, scope: !2197)
!2197 = distinct !DILexicalBlock(scope: !2184, file: !3, line: 440, column: 6)
!2198 = !DILocation(line: 440, column: 10, scope: !2197)
!2199 = !DILocation(line: 440, column: 20, scope: !2197)
!2200 = !DILocation(line: 440, column: 6, scope: !2184)
!2201 = !DILocation(line: 441, column: 3, scope: !2197)
!2202 = !DILocation(line: 443, column: 32, scope: !2184)
!2203 = !DILocation(line: 443, column: 36, scope: !2184)
!2204 = !DILocation(line: 443, column: 24, scope: !2184)
!2205 = !DILocation(line: 443, column: 2, scope: !2184)
!2206 = !DILocation(line: 443, column: 6, scope: !2184)
!2207 = !DILocation(line: 443, column: 22, scope: !2184)
!2208 = !DILocation(line: 445, column: 7, scope: !2209)
!2209 = distinct !DILexicalBlock(scope: !2184, file: !3, line: 445, column: 6)
!2210 = !DILocation(line: 445, column: 11, scope: !2209)
!2211 = !DILocation(line: 445, column: 6, scope: !2184)
!2212 = !DILocation(line: 446, column: 3, scope: !2209)
!2213 = !DILocation(line: 448, column: 32, scope: !2184)
!2214 = !DILocation(line: 448, column: 36, scope: !2184)
!2215 = !DILocation(line: 448, column: 24, scope: !2184)
!2216 = !DILocation(line: 448, column: 2, scope: !2184)
!2217 = !DILocation(line: 448, column: 6, scope: !2184)
!2218 = !DILocation(line: 448, column: 22, scope: !2184)
!2219 = !DILocation(line: 450, column: 7, scope: !2220)
!2220 = distinct !DILexicalBlock(scope: !2184, file: !3, line: 450, column: 6)
!2221 = !DILocation(line: 450, column: 11, scope: !2220)
!2222 = !DILocation(line: 450, column: 6, scope: !2184)
!2223 = !DILocation(line: 451, column: 9, scope: !2224)
!2224 = distinct !DILexicalBlock(scope: !2220, file: !3, line: 450, column: 28)
!2225 = !DILocation(line: 451, column: 13, scope: !2224)
!2226 = !DILocation(line: 451, column: 3, scope: !2224)
!2227 = !DILocation(line: 452, column: 3, scope: !2224)
!2228 = !DILocation(line: 455, column: 32, scope: !2184)
!2229 = !DILocation(line: 455, column: 36, scope: !2184)
!2230 = !DILocation(line: 455, column: 24, scope: !2184)
!2231 = !DILocation(line: 455, column: 2, scope: !2184)
!2232 = !DILocation(line: 455, column: 6, scope: !2184)
!2233 = !DILocation(line: 455, column: 22, scope: !2184)
!2234 = !DILocation(line: 458, column: 7, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2184, file: !3, line: 458, column: 6)
!2236 = !DILocation(line: 458, column: 11, scope: !2235)
!2237 = !DILocation(line: 458, column: 6, scope: !2184)
!2238 = !DILocation(line: 459, column: 9, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2235, file: !3, line: 458, column: 28)
!2240 = !DILocation(line: 459, column: 13, scope: !2239)
!2241 = !DILocation(line: 459, column: 3, scope: !2239)
!2242 = !DILocation(line: 460, column: 9, scope: !2239)
!2243 = !DILocation(line: 460, column: 13, scope: !2239)
!2244 = !DILocation(line: 460, column: 3, scope: !2239)
!2245 = !DILocation(line: 461, column: 3, scope: !2239)
!2246 = !DILocation(line: 464, column: 18, scope: !2184)
!2247 = !DILocation(line: 464, column: 22, scope: !2184)
!2248 = !DILocation(line: 464, column: 32, scope: !2184)
!2249 = !DILocation(line: 464, column: 36, scope: !2184)
!2250 = !DILocation(line: 464, column: 10, scope: !2184)
!2251 = !DILocation(line: 464, column: 8, scope: !2184)
!2252 = !DILocation(line: 465, column: 7, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2184, file: !3, line: 465, column: 6)
!2254 = !DILocation(line: 465, column: 6, scope: !2184)
!2255 = !DILocation(line: 466, column: 9, scope: !2256)
!2256 = distinct !DILexicalBlock(scope: !2253, file: !3, line: 465, column: 14)
!2257 = !DILocation(line: 466, column: 13, scope: !2256)
!2258 = !DILocation(line: 466, column: 3, scope: !2256)
!2259 = !DILocation(line: 467, column: 9, scope: !2256)
!2260 = !DILocation(line: 467, column: 13, scope: !2256)
!2261 = !DILocation(line: 467, column: 3, scope: !2256)
!2262 = !DILocation(line: 468, column: 9, scope: !2256)
!2263 = !DILocation(line: 468, column: 13, scope: !2256)
!2264 = !DILocation(line: 468, column: 3, scope: !2256)
!2265 = !DILocation(line: 469, column: 3, scope: !2256)
!2266 = !DILocation(line: 472, column: 12, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2184, file: !3, line: 472, column: 2)
!2268 = !DILocation(line: 472, column: 7, scope: !2267)
!2269 = !DILocation(line: 472, column: 17, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2267, file: !3, line: 472, column: 2)
!2271 = !DILocation(line: 472, column: 24, scope: !2270)
!2272 = !DILocation(line: 472, column: 28, scope: !2270)
!2273 = !DILocation(line: 472, column: 22, scope: !2270)
!2274 = !DILocation(line: 472, column: 2, scope: !2267)
!2275 = !DILocation(line: 474, column: 12, scope: !2276)
!2276 = distinct !DILexicalBlock(scope: !2270, file: !3, line: 472, column: 47)
!2277 = !DILocation(line: 474, column: 16, scope: !2276)
!2278 = !DILocation(line: 474, column: 32, scope: !2276)
!2279 = !DILocation(line: 474, column: 38, scope: !2276)
!2280 = !DILocation(line: 475, column: 27, scope: !2276)
!2281 = !DILocation(line: 474, column: 3, scope: !2276)
!2282 = !DILocation(line: 477, column: 3, scope: !2276)
!2283 = !DILocation(line: 477, column: 3, scope: !2284)
!2284 = distinct !DILexicalBlock(scope: !2276, file: !3, line: 477, column: 3)
!2285 = !DILocation(line: 479, column: 7, scope: !2276)
!2286 = !DILocation(line: 479, column: 11, scope: !2276)
!2287 = !DILocation(line: 479, column: 27, scope: !2276)
!2288 = !DILocation(line: 479, column: 33, scope: !2276)
!2289 = !DILocation(line: 478, column: 3, scope: !2276)
!2290 = !DILocation(line: 478, column: 7, scope: !2276)
!2291 = !DILocation(line: 478, column: 23, scope: !2276)
!2292 = !DILocation(line: 478, column: 29, scope: !2276)
!2293 = !DILocation(line: 478, column: 34, scope: !2276)
!2294 = !DILocation(line: 478, column: 39, scope: !2276)
!2295 = !DILocation(line: 478, column: 44, scope: !2276)
!2296 = !DILocation(line: 480, column: 3, scope: !2276)
!2297 = !DILocation(line: 480, column: 7, scope: !2276)
!2298 = !DILocation(line: 480, column: 23, scope: !2276)
!2299 = !DILocation(line: 480, column: 29, scope: !2276)
!2300 = !DILocation(line: 480, column: 34, scope: !2276)
!2301 = !DILocation(line: 480, column: 39, scope: !2276)
!2302 = !DILocation(line: 480, column: 44, scope: !2276)
!2303 = !DILocation(line: 481, column: 3, scope: !2276)
!2304 = !DILocation(line: 481, column: 7, scope: !2276)
!2305 = !DILocation(line: 481, column: 23, scope: !2276)
!2306 = !DILocation(line: 481, column: 29, scope: !2276)
!2307 = !DILocation(line: 481, column: 34, scope: !2276)
!2308 = !DILocation(line: 481, column: 39, scope: !2276)
!2309 = !DILocation(line: 482, column: 18, scope: !2276)
!2310 = !DILocation(line: 482, column: 22, scope: !2276)
!2311 = !DILocation(line: 482, column: 38, scope: !2276)
!2312 = !DILocation(line: 482, column: 44, scope: !2276)
!2313 = !DILocation(line: 482, column: 49, scope: !2276)
!2314 = !DILocation(line: 482, column: 3, scope: !2276)
!2315 = !DILocation(line: 482, column: 9, scope: !2276)
!2316 = !DILocation(line: 482, column: 15, scope: !2276)
!2317 = !DILocation(line: 485, column: 12, scope: !2276)
!2318 = !DILocation(line: 485, column: 16, scope: !2276)
!2319 = !DILocation(line: 485, column: 32, scope: !2276)
!2320 = !DILocation(line: 485, column: 38, scope: !2276)
!2321 = !DILocation(line: 486, column: 27, scope: !2276)
!2322 = !DILocation(line: 485, column: 3, scope: !2276)
!2323 = !DILocation(line: 488, column: 3, scope: !2276)
!2324 = !DILocation(line: 488, column: 3, scope: !2325)
!2325 = distinct !DILexicalBlock(scope: !2276, file: !3, line: 488, column: 3)
!2326 = !DILocation(line: 490, column: 7, scope: !2276)
!2327 = !DILocation(line: 490, column: 11, scope: !2276)
!2328 = !DILocation(line: 490, column: 27, scope: !2276)
!2329 = !DILocation(line: 490, column: 33, scope: !2276)
!2330 = !DILocation(line: 489, column: 3, scope: !2276)
!2331 = !DILocation(line: 489, column: 7, scope: !2276)
!2332 = !DILocation(line: 489, column: 23, scope: !2276)
!2333 = !DILocation(line: 489, column: 29, scope: !2276)
!2334 = !DILocation(line: 489, column: 34, scope: !2276)
!2335 = !DILocation(line: 489, column: 39, scope: !2276)
!2336 = !DILocation(line: 489, column: 44, scope: !2276)
!2337 = !DILocation(line: 491, column: 3, scope: !2276)
!2338 = !DILocation(line: 491, column: 7, scope: !2276)
!2339 = !DILocation(line: 491, column: 23, scope: !2276)
!2340 = !DILocation(line: 491, column: 29, scope: !2276)
!2341 = !DILocation(line: 491, column: 34, scope: !2276)
!2342 = !DILocation(line: 491, column: 39, scope: !2276)
!2343 = !DILocation(line: 491, column: 44, scope: !2276)
!2344 = !DILocation(line: 492, column: 3, scope: !2276)
!2345 = !DILocation(line: 492, column: 7, scope: !2276)
!2346 = !DILocation(line: 492, column: 23, scope: !2276)
!2347 = !DILocation(line: 492, column: 29, scope: !2276)
!2348 = !DILocation(line: 492, column: 34, scope: !2276)
!2349 = !DILocation(line: 492, column: 39, scope: !2276)
!2350 = !DILocation(line: 494, column: 7, scope: !2351)
!2351 = distinct !DILexicalBlock(scope: !2276, file: !3, line: 493, column: 7)
!2352 = !DILocation(line: 494, column: 20, scope: !2351)
!2353 = !DILocation(line: 494, column: 17, scope: !2351)
!2354 = !DILocation(line: 494, column: 12, scope: !2351)
!2355 = !DILocation(line: 493, column: 7, scope: !2276)
!2356 = !DILocation(line: 495, column: 4, scope: !2357)
!2357 = distinct !DILexicalBlock(scope: !2351, file: !3, line: 494, column: 27)
!2358 = !DILocation(line: 495, column: 8, scope: !2357)
!2359 = !DILocation(line: 495, column: 24, scope: !2357)
!2360 = !DILocation(line: 495, column: 30, scope: !2357)
!2361 = !DILocation(line: 495, column: 35, scope: !2357)
!2362 = !DILocation(line: 495, column: 40, scope: !2357)
!2363 = !DILocation(line: 495, column: 45, scope: !2357)
!2364 = !DILocation(line: 496, column: 4, scope: !2357)
!2365 = !DILocation(line: 496, column: 8, scope: !2357)
!2366 = !DILocation(line: 496, column: 24, scope: !2357)
!2367 = !DILocation(line: 496, column: 30, scope: !2357)
!2368 = !DILocation(line: 496, column: 35, scope: !2357)
!2369 = !DILocation(line: 496, column: 41, scope: !2357)
!2370 = !DILocation(line: 498, column: 3, scope: !2357)
!2371 = !DILocation(line: 499, column: 34, scope: !2276)
!2372 = !DILocation(line: 499, column: 38, scope: !2276)
!2373 = !DILocation(line: 499, column: 54, scope: !2276)
!2374 = !DILocation(line: 499, column: 60, scope: !2276)
!2375 = !DILocation(line: 499, column: 65, scope: !2276)
!2376 = !DILocation(line: 499, column: 3, scope: !2276)
!2377 = !DILocation(line: 499, column: 9, scope: !2276)
!2378 = !DILocation(line: 499, column: 16, scope: !2276)
!2379 = !DILocation(line: 499, column: 20, scope: !2276)
!2380 = !DILocation(line: 499, column: 14, scope: !2276)
!2381 = !DILocation(line: 499, column: 31, scope: !2276)
!2382 = !DILocation(line: 501, column: 12, scope: !2276)
!2383 = !DILocation(line: 501, column: 16, scope: !2276)
!2384 = !DILocation(line: 501, column: 32, scope: !2276)
!2385 = !DILocation(line: 501, column: 38, scope: !2276)
!2386 = !DILocation(line: 502, column: 27, scope: !2276)
!2387 = !DILocation(line: 501, column: 3, scope: !2276)
!2388 = !DILocation(line: 504, column: 3, scope: !2276)
!2389 = !DILocation(line: 504, column: 3, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2276, file: !3, line: 504, column: 3)
!2391 = !DILocation(line: 506, column: 6, scope: !2276)
!2392 = !DILocation(line: 506, column: 10, scope: !2276)
!2393 = !DILocation(line: 506, column: 26, scope: !2276)
!2394 = !DILocation(line: 506, column: 32, scope: !2276)
!2395 = !DILocation(line: 505, column: 3, scope: !2276)
!2396 = !DILocation(line: 505, column: 7, scope: !2276)
!2397 = !DILocation(line: 505, column: 23, scope: !2276)
!2398 = !DILocation(line: 505, column: 29, scope: !2276)
!2399 = !DILocation(line: 505, column: 34, scope: !2276)
!2400 = !DILocation(line: 505, column: 39, scope: !2276)
!2401 = !DILocation(line: 505, column: 44, scope: !2276)
!2402 = !DILocation(line: 507, column: 3, scope: !2276)
!2403 = !DILocation(line: 507, column: 7, scope: !2276)
!2404 = !DILocation(line: 507, column: 23, scope: !2276)
!2405 = !DILocation(line: 507, column: 29, scope: !2276)
!2406 = !DILocation(line: 507, column: 34, scope: !2276)
!2407 = !DILocation(line: 507, column: 39, scope: !2276)
!2408 = !DILocation(line: 507, column: 44, scope: !2276)
!2409 = !DILocation(line: 508, column: 3, scope: !2276)
!2410 = !DILocation(line: 508, column: 7, scope: !2276)
!2411 = !DILocation(line: 508, column: 23, scope: !2276)
!2412 = !DILocation(line: 508, column: 29, scope: !2276)
!2413 = !DILocation(line: 508, column: 34, scope: !2276)
!2414 = !DILocation(line: 508, column: 39, scope: !2276)
!2415 = !DILocation(line: 509, column: 7, scope: !2416)
!2416 = distinct !DILexicalBlock(scope: !2276, file: !3, line: 509, column: 7)
!2417 = !DILocation(line: 509, column: 11, scope: !2416)
!2418 = !DILocation(line: 509, column: 16, scope: !2416)
!2419 = !DILocation(line: 509, column: 7, scope: !2276)
!2420 = !DILocation(line: 510, column: 4, scope: !2421)
!2421 = distinct !DILexicalBlock(scope: !2416, file: !3, line: 509, column: 31)
!2422 = !DILocation(line: 510, column: 8, scope: !2421)
!2423 = !DILocation(line: 510, column: 24, scope: !2421)
!2424 = !DILocation(line: 510, column: 30, scope: !2421)
!2425 = !DILocation(line: 510, column: 35, scope: !2421)
!2426 = !DILocation(line: 510, column: 40, scope: !2421)
!2427 = !DILocation(line: 510, column: 45, scope: !2421)
!2428 = !DILocation(line: 511, column: 4, scope: !2421)
!2429 = !DILocation(line: 511, column: 8, scope: !2421)
!2430 = !DILocation(line: 511, column: 24, scope: !2421)
!2431 = !DILocation(line: 511, column: 30, scope: !2421)
!2432 = !DILocation(line: 511, column: 35, scope: !2421)
!2433 = !DILocation(line: 511, column: 41, scope: !2421)
!2434 = !DILocation(line: 513, column: 3, scope: !2421)
!2435 = !DILocation(line: 515, column: 7, scope: !2276)
!2436 = !DILocation(line: 515, column: 11, scope: !2276)
!2437 = !DILocation(line: 515, column: 27, scope: !2276)
!2438 = !DILocation(line: 515, column: 33, scope: !2276)
!2439 = !DILocation(line: 515, column: 38, scope: !2276)
!2440 = !DILocation(line: 514, column: 3, scope: !2276)
!2441 = !DILocation(line: 514, column: 9, scope: !2276)
!2442 = !DILocation(line: 514, column: 16, scope: !2276)
!2443 = !DILocation(line: 514, column: 20, scope: !2276)
!2444 = !DILocation(line: 514, column: 30, scope: !2276)
!2445 = !DILocation(line: 514, column: 14, scope: !2276)
!2446 = !DILocation(line: 514, column: 35, scope: !2276)
!2447 = !DILocation(line: 516, column: 2, scope: !2276)
!2448 = !DILocation(line: 472, column: 43, scope: !2270)
!2449 = !DILocation(line: 472, column: 2, scope: !2270)
!2450 = distinct !{!2450, !2274, !2451, !2135, !2136}
!2451 = !DILocation(line: 516, column: 2, scope: !2267)
!2452 = !DILocation(line: 517, column: 2, scope: !2184)
!2453 = !DILocation(line: 517, column: 8, scope: !2184)
!2454 = !DILocation(line: 517, column: 12, scope: !2184)
!2455 = !DILocation(line: 517, column: 22, scope: !2184)
!2456 = !DILocation(line: 517, column: 27, scope: !2184)
!2457 = !DILocation(line: 519, column: 36, scope: !2184)
!2458 = !DILocation(line: 519, column: 2, scope: !2184)
!2459 = !DILocation(line: 519, column: 6, scope: !2184)
!2460 = !DILocation(line: 519, column: 28, scope: !2184)
!2461 = !DILocation(line: 519, column: 34, scope: !2184)
!2462 = !DILocation(line: 521, column: 2, scope: !2184)
!2463 = !DILocation(line: 522, column: 1, scope: !2184)
!2464 = !DISubprogram(name: "kfree", scope: !118, file: !118, line: 227, type: !2465, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{null, !519}
!2467 = distinct !DISubprogram(name: "thermal_zone_destroy_device_groups", scope: !3, file: !3, line: 573, type: !1881, scopeLine: 574, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2468)
!2468 = !{!2469}
!2469 = !DILocalVariable(name: "tz", arg: 1, scope: !2467, file: !3, line: 573, type: !142)
!2470 = !DILocation(line: 573, column: 69, scope: !2467)
!2471 = !DILocation(line: 575, column: 7, scope: !2472)
!2472 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 575, column: 6)
!2473 = !DILocation(line: 575, column: 6, scope: !2467)
!2474 = !DILocation(line: 576, column: 3, scope: !2472)
!2475 = !DILocation(line: 578, column: 6, scope: !2476)
!2476 = distinct !DILexicalBlock(scope: !2467, file: !3, line: 578, column: 6)
!2477 = !DILocation(line: 578, column: 10, scope: !2476)
!2478 = !DILocation(line: 578, column: 6, scope: !2467)
!2479 = !DILocation(line: 579, column: 22, scope: !2476)
!2480 = !DILocation(line: 579, column: 3, scope: !2476)
!2481 = !DILocation(line: 581, column: 8, scope: !2467)
!2482 = !DILocation(line: 581, column: 12, scope: !2467)
!2483 = !DILocation(line: 581, column: 19, scope: !2467)
!2484 = !DILocation(line: 581, column: 2, scope: !2467)
!2485 = !DILocation(line: 582, column: 1, scope: !2467)
!2486 = distinct !DISubprogram(name: "destroy_trip_attrs", scope: !3, file: !3, line: 530, type: !1881, scopeLine: 531, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2487)
!2487 = !{!2488}
!2488 = !DILocalVariable(name: "tz", arg: 1, scope: !2486, file: !3, line: 530, type: !142)
!2489 = !DILocation(line: 530, column: 60, scope: !2486)
!2490 = !DILocation(line: 532, column: 7, scope: !2491)
!2491 = distinct !DILexicalBlock(scope: !2486, file: !3, line: 532, column: 6)
!2492 = !DILocation(line: 532, column: 6, scope: !2486)
!2493 = !DILocation(line: 533, column: 3, scope: !2491)
!2494 = !DILocation(line: 535, column: 8, scope: !2486)
!2495 = !DILocation(line: 535, column: 12, scope: !2486)
!2496 = !DILocation(line: 535, column: 2, scope: !2486)
!2497 = !DILocation(line: 536, column: 8, scope: !2486)
!2498 = !DILocation(line: 536, column: 12, scope: !2486)
!2499 = !DILocation(line: 536, column: 2, scope: !2486)
!2500 = !DILocation(line: 537, column: 8, scope: !2486)
!2501 = !DILocation(line: 537, column: 12, scope: !2486)
!2502 = !DILocation(line: 537, column: 2, scope: !2486)
!2503 = !DILocation(line: 538, column: 8, scope: !2486)
!2504 = !DILocation(line: 538, column: 12, scope: !2486)
!2505 = !DILocation(line: 538, column: 34, scope: !2486)
!2506 = !DILocation(line: 538, column: 2, scope: !2486)
!2507 = !DILocation(line: 539, column: 1, scope: !2486)
!2508 = distinct !DISubprogram(name: "thermal_cooling_device_setup_sysfs", scope: !3, file: !3, line: 918, type: !2509, scopeLine: 919, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2511)
!2509 = !DISubroutineType(types: !2510)
!2510 = !{null, !1811}
!2511 = !{!2512}
!2512 = !DILocalVariable(name: "cdev", arg: 1, scope: !2508, file: !3, line: 918, type: !1811)
!2513 = !DILocation(line: 918, column: 72, scope: !2508)
!2514 = !DILocation(line: 920, column: 29, scope: !2508)
!2515 = !DILocation(line: 920, column: 2, scope: !2508)
!2516 = !DILocation(line: 921, column: 2, scope: !2508)
!2517 = !DILocation(line: 921, column: 8, scope: !2508)
!2518 = !DILocation(line: 921, column: 15, scope: !2508)
!2519 = !DILocation(line: 921, column: 22, scope: !2508)
!2520 = !DILocation(line: 922, column: 1, scope: !2508)
!2521 = distinct !DISubprogram(name: "cooling_device_stats_setup", scope: !3, file: !3, line: 912, type: !2509, scopeLine: 912, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2522)
!2522 = !{!2523}
!2523 = !DILocalVariable(name: "cdev", arg: 1, scope: !2521, file: !3, line: 912, type: !1811)
!2524 = !DILocation(line: 912, column: 59, scope: !2521)
!2525 = !DILocation(line: 912, column: 66, scope: !2521)
!2526 = distinct !DISubprogram(name: "thermal_cooling_device_destroy_sysfs", scope: !3, file: !3, line: 924, type: !2509, scopeLine: 925, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2527)
!2527 = !{!2528}
!2528 = !DILocalVariable(name: "cdev", arg: 1, scope: !2526, file: !3, line: 924, type: !1811)
!2529 = !DILocation(line: 924, column: 74, scope: !2526)
!2530 = !DILocation(line: 926, column: 31, scope: !2526)
!2531 = !DILocation(line: 926, column: 2, scope: !2526)
!2532 = !DILocation(line: 927, column: 1, scope: !2526)
!2533 = distinct !DISubprogram(name: "cooling_device_stats_destroy", scope: !3, file: !3, line: 914, type: !2509, scopeLine: 914, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2534)
!2534 = !{!2535}
!2535 = !DILocalVariable(name: "cdev", arg: 1, scope: !2533, file: !3, line: 914, type: !1811)
!2536 = !DILocation(line: 914, column: 61, scope: !2533)
!2537 = !DILocation(line: 914, column: 68, scope: !2533)
!2538 = distinct !DISubprogram(name: "thermal_cooling_device_stats_reinit", scope: !3, file: !3, line: 929, type: !2509, scopeLine: 930, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2539)
!2539 = !{!2540}
!2540 = !DILocalVariable(name: "cdev", arg: 1, scope: !2538, file: !3, line: 929, type: !1811)
!2541 = !DILocation(line: 929, column: 73, scope: !2538)
!2542 = !DILocation(line: 931, column: 2, scope: !2538)
!2543 = !DILocation(line: 931, column: 2, scope: !2544)
!2544 = distinct !DILexicalBlock(scope: !2538, file: !3, line: 931, column: 2)
!2545 = !DILocation(line: 933, column: 31, scope: !2538)
!2546 = !DILocation(line: 933, column: 2, scope: !2538)
!2547 = !DILocation(line: 934, column: 29, scope: !2538)
!2548 = !DILocation(line: 934, column: 2, scope: !2538)
!2549 = !DILocation(line: 935, column: 1, scope: !2538)
!2550 = distinct !DISubprogram(name: "trip_point_show", scope: !3, file: !3, line: 939, type: !1772, scopeLine: 940, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2551)
!2551 = !{!2552, !2553, !2554, !2555, !2556}
!2552 = !DILocalVariable(name: "dev", arg: 1, scope: !2550, file: !3, line: 939, type: !817)
!2553 = !DILocalVariable(name: "attr", arg: 2, scope: !2550, file: !3, line: 939, type: !1774)
!2554 = !DILocalVariable(name: "buf", arg: 3, scope: !2550, file: !3, line: 939, type: !241)
!2555 = !DILocalVariable(name: "instance", scope: !2550, file: !3, line: 941, type: !131)
!2556 = !DILocalVariable(name: "__mptr", scope: !2557, file: !3, line: 944, type: !130)
!2557 = distinct !DILexicalBlock(scope: !2550, file: !3, line: 944, column: 6)
!2558 = !DILocation(line: 939, column: 32, scope: !2550)
!2559 = !DILocation(line: 939, column: 62, scope: !2550)
!2560 = !DILocation(line: 939, column: 74, scope: !2550)
!2561 = !DILocation(line: 941, column: 2, scope: !2550)
!2562 = !DILocation(line: 941, column: 27, scope: !2550)
!2563 = !DILocation(line: 944, column: 6, scope: !2557)
!2564 = !DILocation(line: 944, column: 6, scope: !2550)
!2565 = !DILocation(line: 943, column: 11, scope: !2550)
!2566 = !DILocation(line: 946, column: 17, scope: !2550)
!2567 = !DILocation(line: 947, column: 31, scope: !2550)
!2568 = !DILocation(line: 947, column: 41, scope: !2550)
!2569 = !DILocation(line: 947, column: 45, scope: !2550)
!2570 = !DILocation(line: 947, column: 55, scope: !2550)
!2571 = !DILocation(line: 947, column: 10, scope: !2550)
!2572 = !DILocation(line: 946, column: 9, scope: !2550)
!2573 = !DILocation(line: 948, column: 1, scope: !2550)
!2574 = !DILocation(line: 946, column: 2, scope: !2550)
!2575 = !DISubprogram(name: "sprintf", scope: !2576, file: !2576, line: 10, type: !2577, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2576 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!46, !241, !155, null}
!2579 = !DISubprogram(name: "thermal_zone_trip_id", scope: !133, file: !133, line: 122, type: !2580, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!46, !142, !1876}
!2582 = distinct !DISubprogram(name: "weight_show", scope: !3, file: !3, line: 951, type: !1772, scopeLine: 952, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2583)
!2583 = !{!2584, !2585, !2586, !2587, !2588}
!2584 = !DILocalVariable(name: "dev", arg: 1, scope: !2582, file: !3, line: 951, type: !817)
!2585 = !DILocalVariable(name: "attr", arg: 2, scope: !2582, file: !3, line: 951, type: !1774)
!2586 = !DILocalVariable(name: "buf", arg: 3, scope: !2582, file: !3, line: 951, type: !241)
!2587 = !DILocalVariable(name: "instance", scope: !2582, file: !3, line: 953, type: !131)
!2588 = !DILocalVariable(name: "__mptr", scope: !2589, file: !3, line: 955, type: !130)
!2589 = distinct !DILexicalBlock(scope: !2582, file: !3, line: 955, column: 13)
!2590 = !DILocation(line: 951, column: 28, scope: !2582)
!2591 = !DILocation(line: 951, column: 58, scope: !2582)
!2592 = !DILocation(line: 951, column: 70, scope: !2582)
!2593 = !DILocation(line: 953, column: 2, scope: !2582)
!2594 = !DILocation(line: 953, column: 27, scope: !2582)
!2595 = !DILocation(line: 955, column: 13, scope: !2589)
!2596 = !DILocation(line: 955, column: 13, scope: !2582)
!2597 = !DILocation(line: 955, column: 11, scope: !2582)
!2598 = !DILocation(line: 957, column: 17, scope: !2582)
!2599 = !DILocation(line: 957, column: 30, scope: !2582)
!2600 = !DILocation(line: 957, column: 40, scope: !2582)
!2601 = !DILocation(line: 957, column: 9, scope: !2582)
!2602 = !DILocation(line: 958, column: 1, scope: !2582)
!2603 = !DILocation(line: 957, column: 2, scope: !2582)
!2604 = distinct !DISubprogram(name: "weight_store", scope: !3, file: !3, line: 960, type: !1777, scopeLine: 962, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2605)
!2605 = !{!2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613}
!2606 = !DILocalVariable(name: "dev", arg: 1, scope: !2604, file: !3, line: 960, type: !817)
!2607 = !DILocalVariable(name: "attr", arg: 2, scope: !2604, file: !3, line: 960, type: !1774)
!2608 = !DILocalVariable(name: "buf", arg: 3, scope: !2604, file: !3, line: 961, type: !155)
!2609 = !DILocalVariable(name: "count", arg: 4, scope: !2604, file: !3, line: 961, type: !288)
!2610 = !DILocalVariable(name: "instance", scope: !2604, file: !3, line: 963, type: !131)
!2611 = !DILocalVariable(name: "ret", scope: !2604, file: !3, line: 964, type: !46)
!2612 = !DILocalVariable(name: "weight", scope: !2604, file: !3, line: 964, type: !46)
!2613 = !DILocalVariable(name: "__mptr", scope: !2614, file: !3, line: 970, type: !130)
!2614 = distinct !DILexicalBlock(scope: !2604, file: !3, line: 970, column: 13)
!2615 = !DILocation(line: 960, column: 37, scope: !2604)
!2616 = !DILocation(line: 960, column: 67, scope: !2604)
!2617 = !DILocation(line: 961, column: 20, scope: !2604)
!2618 = !DILocation(line: 961, column: 32, scope: !2604)
!2619 = !DILocation(line: 963, column: 2, scope: !2604)
!2620 = !DILocation(line: 963, column: 27, scope: !2604)
!2621 = !DILocation(line: 964, column: 2, scope: !2604)
!2622 = !DILocation(line: 964, column: 6, scope: !2604)
!2623 = !DILocation(line: 964, column: 11, scope: !2604)
!2624 = !DILocation(line: 966, column: 18, scope: !2604)
!2625 = !DILocation(line: 966, column: 8, scope: !2604)
!2626 = !DILocation(line: 966, column: 6, scope: !2604)
!2627 = !DILocation(line: 967, column: 6, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2604, file: !3, line: 967, column: 6)
!2629 = !DILocation(line: 967, column: 6, scope: !2604)
!2630 = !DILocation(line: 968, column: 10, scope: !2628)
!2631 = !DILocation(line: 968, column: 3, scope: !2628)
!2632 = !DILocation(line: 970, column: 13, scope: !2614)
!2633 = !DILocation(line: 970, column: 13, scope: !2604)
!2634 = !DILocation(line: 970, column: 11, scope: !2604)
!2635 = !DILocation(line: 971, column: 21, scope: !2604)
!2636 = !DILocation(line: 971, column: 2, scope: !2604)
!2637 = !DILocation(line: 971, column: 12, scope: !2604)
!2638 = !DILocation(line: 971, column: 19, scope: !2604)
!2639 = !DILocation(line: 973, column: 9, scope: !2604)
!2640 = !DILocation(line: 973, column: 2, scope: !2604)
!2641 = !DILocation(line: 974, column: 1, scope: !2604)
!2642 = !DISubprogram(name: "kstrtoint", scope: !2643, file: !2643, line: 72, type: !2644, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2643 = !DIFile(filename: "./include/linux/kstrtox.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b7da882f1f371706e764491098c6cb23")
!2644 = !DISubroutineType(types: !2645)
!2645 = !{!46, !155, !7, !1057}
!2646 = distinct !DISubprogram(name: "kmalloc_array", scope: !118, file: !118, line: 629, type: !2169, scopeLine: 630, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2647)
!2647 = !{!2648, !2649, !2650, !2651}
!2648 = !DILocalVariable(name: "n", arg: 1, scope: !2646, file: !118, line: 629, type: !288)
!2649 = !DILocalVariable(name: "size", arg: 2, scope: !2646, file: !118, line: 629, type: !288)
!2650 = !DILocalVariable(name: "flags", arg: 3, scope: !2646, file: !118, line: 629, type: !128)
!2651 = !DILocalVariable(name: "bytes", scope: !2646, file: !118, line: 631, type: !288)
!2652 = !DILocation(line: 629, column: 61, scope: !2646)
!2653 = !DILocation(line: 629, column: 71, scope: !2646)
!2654 = !DILocation(line: 629, column: 83, scope: !2646)
!2655 = !DILocation(line: 631, column: 2, scope: !2646)
!2656 = !DILocation(line: 631, column: 9, scope: !2646)
!2657 = !DILocation(line: 633, column: 6, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2646, file: !118, line: 633, column: 6)
!2659 = !DILocation(line: 633, column: 6, scope: !2646)
!2660 = !DILocation(line: 634, column: 3, scope: !2658)
!2661 = !DILocation(line: 635, column: 27, scope: !2662)
!2662 = distinct !DILexicalBlock(scope: !2646, file: !118, line: 635, column: 6)
!2663 = !DILocation(line: 635, column: 6, scope: !2662)
!2664 = !DILocation(line: 635, column: 30, scope: !2662)
!2665 = !DILocation(line: 635, column: 54, scope: !2662)
!2666 = !DILocation(line: 635, column: 33, scope: !2662)
!2667 = !DILocation(line: 635, column: 6, scope: !2646)
!2668 = !DILocation(line: 636, column: 18, scope: !2662)
!2669 = !DILocation(line: 636, column: 25, scope: !2662)
!2670 = !DILocation(line: 636, column: 10, scope: !2662)
!2671 = !DILocation(line: 636, column: 3, scope: !2662)
!2672 = !DILocation(line: 637, column: 19, scope: !2646)
!2673 = !DILocation(line: 637, column: 26, scope: !2646)
!2674 = !DILocation(line: 637, column: 9, scope: !2646)
!2675 = !DILocation(line: 637, column: 2, scope: !2646)
!2676 = !DILocation(line: 638, column: 1, scope: !2646)
!2677 = distinct !DISubprogram(name: "__must_check_overflow", scope: !2678, file: !2678, line: 51, type: !2679, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2681)
!2678 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!2679 = !DISubroutineType(types: !2680)
!2680 = !{!597, !597}
!2681 = !{!2682}
!2682 = !DILocalVariable(name: "overflow", arg: 1, scope: !2677, file: !2678, line: 51, type: !597)
!2683 = !DILocation(line: 51, column: 60, scope: !2677)
!2684 = !DILocation(line: 53, column: 9, scope: !2677)
!2685 = !{i8 0, i8 2}
!2686 = !DILocation(line: 53, column: 2, scope: !2677)
!2687 = distinct !DISubprogram(name: "kmalloc", scope: !118, file: !118, line: 591, type: !2688, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2690)
!2688 = !DISubroutineType(types: !2689)
!2689 = !{!130, !288, !128}
!2690 = !{!2691, !2692, !2693}
!2691 = !DILocalVariable(name: "size", arg: 1, scope: !2687, file: !118, line: 591, type: !288)
!2692 = !DILocalVariable(name: "flags", arg: 2, scope: !2687, file: !118, line: 591, type: !128)
!2693 = !DILocalVariable(name: "index", scope: !2694, file: !118, line: 594, type: !7)
!2694 = distinct !DILexicalBlock(scope: !2695, file: !118, line: 593, column: 42)
!2695 = distinct !DILexicalBlock(scope: !2687, file: !118, line: 593, column: 6)
!2696 = !DILocation(line: 591, column: 61, scope: !2687)
!2697 = !DILocation(line: 591, column: 73, scope: !2687)
!2698 = !DILocation(line: 593, column: 27, scope: !2695)
!2699 = !DILocation(line: 593, column: 6, scope: !2695)
!2700 = !DILocation(line: 593, column: 33, scope: !2695)
!2701 = !DILocation(line: 593, column: 36, scope: !2695)
!2702 = !DILocation(line: 593, column: 6, scope: !2687)
!2703 = !DILocation(line: 594, column: 3, scope: !2694)
!2704 = !DILocation(line: 594, column: 16, scope: !2694)
!2705 = !DILocation(line: 596, column: 7, scope: !2706)
!2706 = distinct !DILexicalBlock(scope: !2694, file: !118, line: 596, column: 7)
!2707 = !DILocation(line: 596, column: 12, scope: !2706)
!2708 = !DILocation(line: 596, column: 7, scope: !2694)
!2709 = !DILocation(line: 597, column: 25, scope: !2706)
!2710 = !DILocation(line: 597, column: 31, scope: !2706)
!2711 = !DILocation(line: 597, column: 11, scope: !2706)
!2712 = !DILocation(line: 597, column: 4, scope: !2706)
!2713 = !DILocation(line: 599, column: 11, scope: !2694)
!2714 = !DILocation(line: 599, column: 9, scope: !2694)
!2715 = !DILocation(line: 601, column: 33, scope: !2694)
!2716 = !DILocation(line: 601, column: 40, scope: !2694)
!2717 = !DILocation(line: 601, column: 20, scope: !2694)
!2718 = !DILocation(line: 601, column: 5, scope: !2694)
!2719 = !DILocation(line: 601, column: 51, scope: !2694)
!2720 = !DILocation(line: 602, column: 5, scope: !2694)
!2721 = !DILocation(line: 602, column: 12, scope: !2694)
!2722 = !DILocation(line: 600, column: 10, scope: !2694)
!2723 = !DILocation(line: 600, column: 3, scope: !2694)
!2724 = !DILocation(line: 603, column: 2, scope: !2695)
!2725 = !DILocation(line: 604, column: 19, scope: !2687)
!2726 = !DILocation(line: 604, column: 25, scope: !2687)
!2727 = !DILocation(line: 604, column: 9, scope: !2687)
!2728 = !DILocation(line: 604, column: 2, scope: !2687)
!2729 = !DILocation(line: 605, column: 1, scope: !2687)
!2730 = !DISubprogram(name: "__kmalloc", scope: !118, file: !118, line: 488, type: !2688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2731 = !DISubprogram(name: "kmalloc_large", scope: !118, file: !118, line: 531, type: !2688, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2732 = distinct !DISubprogram(name: "__kmalloc_index", scope: !118, file: !118, line: 444, type: !2733, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2735)
!2733 = !DISubroutineType(types: !2734)
!2734 = !{!7, !288, !597}
!2735 = !{!2736, !2737}
!2736 = !DILocalVariable(name: "size", arg: 1, scope: !2732, file: !118, line: 444, type: !288)
!2737 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2732, file: !118, line: 445, type: !597)
!2738 = !DILocation(line: 444, column: 60, scope: !2732)
!2739 = !DILocation(line: 445, column: 16, scope: !2732)
!2740 = !DILocation(line: 447, column: 7, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2732, file: !118, line: 447, column: 6)
!2742 = !DILocation(line: 447, column: 6, scope: !2732)
!2743 = !DILocation(line: 448, column: 3, scope: !2741)
!2744 = !DILocation(line: 450, column: 6, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2732, file: !118, line: 450, column: 6)
!2746 = !DILocation(line: 450, column: 11, scope: !2745)
!2747 = !DILocation(line: 450, column: 6, scope: !2732)
!2748 = !DILocation(line: 451, column: 3, scope: !2745)
!2749 = !DILocation(line: 453, column: 32, scope: !2750)
!2750 = distinct !DILexicalBlock(scope: !2732, file: !118, line: 453, column: 6)
!2751 = !DILocation(line: 453, column: 37, scope: !2750)
!2752 = !DILocation(line: 453, column: 42, scope: !2750)
!2753 = !DILocation(line: 453, column: 45, scope: !2750)
!2754 = !DILocation(line: 453, column: 50, scope: !2750)
!2755 = !DILocation(line: 453, column: 6, scope: !2732)
!2756 = !DILocation(line: 454, column: 3, scope: !2750)
!2757 = !DILocation(line: 455, column: 32, scope: !2758)
!2758 = distinct !DILexicalBlock(scope: !2732, file: !118, line: 455, column: 6)
!2759 = !DILocation(line: 455, column: 37, scope: !2758)
!2760 = !DILocation(line: 455, column: 43, scope: !2758)
!2761 = !DILocation(line: 455, column: 46, scope: !2758)
!2762 = !DILocation(line: 455, column: 51, scope: !2758)
!2763 = !DILocation(line: 455, column: 6, scope: !2732)
!2764 = !DILocation(line: 456, column: 3, scope: !2758)
!2765 = !DILocation(line: 457, column: 6, scope: !2766)
!2766 = distinct !DILexicalBlock(scope: !2732, file: !118, line: 457, column: 6)
!2767 = !DILocation(line: 457, column: 11, scope: !2766)
!2768 = !DILocation(line: 457, column: 6, scope: !2732)
!2769 = !DILocation(line: 457, column: 26, scope: !2766)
!2770 = !DILocation(line: 458, column: 6, scope: !2771)
!2771 = distinct !DILexicalBlock(scope: !2732, file: !118, line: 458, column: 6)
!2772 = !DILocation(line: 458, column: 11, scope: !2771)
!2773 = !DILocation(line: 458, column: 6, scope: !2732)
!2774 = !DILocation(line: 458, column: 26, scope: !2771)
!2775 = !DILocation(line: 459, column: 6, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2732, file: !118, line: 459, column: 6)
!2777 = !DILocation(line: 459, column: 11, scope: !2776)
!2778 = !DILocation(line: 459, column: 6, scope: !2732)
!2779 = !DILocation(line: 459, column: 26, scope: !2776)
!2780 = !DILocation(line: 460, column: 6, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2732, file: !118, line: 460, column: 6)
!2782 = !DILocation(line: 460, column: 11, scope: !2781)
!2783 = !DILocation(line: 460, column: 6, scope: !2732)
!2784 = !DILocation(line: 460, column: 26, scope: !2781)
!2785 = !DILocation(line: 461, column: 6, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2732, file: !118, line: 461, column: 6)
!2787 = !DILocation(line: 461, column: 11, scope: !2786)
!2788 = !DILocation(line: 461, column: 6, scope: !2732)
!2789 = !DILocation(line: 461, column: 26, scope: !2786)
!2790 = !DILocation(line: 462, column: 6, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2732, file: !118, line: 462, column: 6)
!2792 = !DILocation(line: 462, column: 11, scope: !2791)
!2793 = !DILocation(line: 462, column: 6, scope: !2732)
!2794 = !DILocation(line: 462, column: 26, scope: !2791)
!2795 = !DILocation(line: 463, column: 6, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2732, file: !118, line: 463, column: 6)
!2797 = !DILocation(line: 463, column: 11, scope: !2796)
!2798 = !DILocation(line: 463, column: 6, scope: !2732)
!2799 = !DILocation(line: 463, column: 26, scope: !2796)
!2800 = !DILocation(line: 464, column: 6, scope: !2801)
!2801 = distinct !DILexicalBlock(scope: !2732, file: !118, line: 464, column: 6)
!2802 = !DILocation(line: 464, column: 11, scope: !2801)
!2803 = !DILocation(line: 464, column: 6, scope: !2732)
!2804 = !DILocation(line: 464, column: 26, scope: !2801)
!2805 = !DILocation(line: 465, column: 6, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2732, file: !118, line: 465, column: 6)
!2807 = !DILocation(line: 465, column: 11, scope: !2806)
!2808 = !DILocation(line: 465, column: 6, scope: !2732)
!2809 = !DILocation(line: 465, column: 26, scope: !2806)
!2810 = !DILocation(line: 466, column: 6, scope: !2811)
!2811 = distinct !DILexicalBlock(scope: !2732, file: !118, line: 466, column: 6)
!2812 = !DILocation(line: 466, column: 11, scope: !2811)
!2813 = !DILocation(line: 466, column: 6, scope: !2732)
!2814 = !DILocation(line: 466, column: 26, scope: !2811)
!2815 = !DILocation(line: 467, column: 6, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2732, file: !118, line: 467, column: 6)
!2817 = !DILocation(line: 467, column: 11, scope: !2816)
!2818 = !DILocation(line: 467, column: 6, scope: !2732)
!2819 = !DILocation(line: 467, column: 26, scope: !2816)
!2820 = !DILocation(line: 468, column: 6, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2732, file: !118, line: 468, column: 6)
!2822 = !DILocation(line: 468, column: 11, scope: !2821)
!2823 = !DILocation(line: 468, column: 6, scope: !2732)
!2824 = !DILocation(line: 468, column: 26, scope: !2821)
!2825 = !DILocation(line: 469, column: 6, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2732, file: !118, line: 469, column: 6)
!2827 = !DILocation(line: 469, column: 11, scope: !2826)
!2828 = !DILocation(line: 469, column: 6, scope: !2732)
!2829 = !DILocation(line: 469, column: 26, scope: !2826)
!2830 = !DILocation(line: 470, column: 6, scope: !2831)
!2831 = distinct !DILexicalBlock(scope: !2732, file: !118, line: 470, column: 6)
!2832 = !DILocation(line: 470, column: 11, scope: !2831)
!2833 = !DILocation(line: 470, column: 6, scope: !2732)
!2834 = !DILocation(line: 470, column: 26, scope: !2831)
!2835 = !DILocation(line: 471, column: 6, scope: !2836)
!2836 = distinct !DILexicalBlock(scope: !2732, file: !118, line: 471, column: 6)
!2837 = !DILocation(line: 471, column: 11, scope: !2836)
!2838 = !DILocation(line: 471, column: 6, scope: !2732)
!2839 = !DILocation(line: 471, column: 26, scope: !2836)
!2840 = !DILocation(line: 472, column: 6, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2732, file: !118, line: 472, column: 6)
!2842 = !DILocation(line: 472, column: 11, scope: !2841)
!2843 = !DILocation(line: 472, column: 6, scope: !2732)
!2844 = !DILocation(line: 472, column: 26, scope: !2841)
!2845 = !DILocation(line: 473, column: 6, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2732, file: !118, line: 473, column: 6)
!2847 = !DILocation(line: 473, column: 11, scope: !2846)
!2848 = !DILocation(line: 473, column: 6, scope: !2732)
!2849 = !DILocation(line: 473, column: 26, scope: !2846)
!2850 = !DILocation(line: 474, column: 6, scope: !2851)
!2851 = distinct !DILexicalBlock(scope: !2732, file: !118, line: 474, column: 6)
!2852 = !DILocation(line: 474, column: 11, scope: !2851)
!2853 = !DILocation(line: 474, column: 6, scope: !2732)
!2854 = !DILocation(line: 474, column: 27, scope: !2851)
!2855 = !DILocation(line: 475, column: 6, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2732, file: !118, line: 475, column: 6)
!2857 = !DILocation(line: 475, column: 11, scope: !2856)
!2858 = !DILocation(line: 475, column: 6, scope: !2732)
!2859 = !DILocation(line: 475, column: 32, scope: !2856)
!2860 = !DILocation(line: 477, column: 50, scope: !2861)
!2861 = distinct !DILexicalBlock(scope: !2732, file: !118, line: 477, column: 6)
!2862 = !DILocation(line: 477, column: 6, scope: !2732)
!2863 = !DILocation(line: 478, column: 3, scope: !2861)
!2864 = !DILocation(line: 478, column: 3, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2866, file: !118, line: 478, column: 3)
!2866 = distinct !DILexicalBlock(scope: !2861, file: !118, line: 478, column: 3)
!2867 = !{i32 -2142303340}
!2868 = !DILocation(line: 478, column: 3, scope: !2866)
!2869 = !DILocation(line: 480, column: 3, scope: !2861)
!2870 = !DILocation(line: 480, column: 3, scope: !2871)
!2871 = distinct !DILexicalBlock(scope: !2861, file: !118, line: 480, column: 3)
!2872 = !DILocation(line: 480, column: 3, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2871, file: !118, line: 480, column: 3)
!2874 = !DILocation(line: 480, column: 3, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2871, file: !118, line: 480, column: 3)
!2876 = !{i64 2152664159, i64 2152664188, i64 2152664234, i64 2152664292, i64 2152664346, i64 2152664400, i64 2152664455, i64 2152664486}
!2877 = !DILocation(line: 483, column: 2, scope: !2732)
!2878 = !DILocation(line: 484, column: 1, scope: !2732)
!2879 = !DISubprogram(name: "kmalloc_trace", scope: !118, file: !118, line: 525, type: !2880, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!130, !2882, !128, !288}
!2882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2883, size: 64)
!2883 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2884, line: 11, flags: DIFlagFwdDecl)
!2884 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2885 = distinct !DISubprogram(name: "kmalloc_type", scope: !118, file: !118, line: 401, type: !2886, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2888)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!117, !128, !291}
!2888 = !{!2889, !2890}
!2889 = !DILocalVariable(name: "flags", arg: 1, scope: !2885, file: !118, line: 401, type: !128)
!2890 = !DILocalVariable(name: "caller", arg: 2, scope: !2885, file: !118, line: 401, type: !291)
!2891 = !DILocation(line: 401, column: 67, scope: !2885)
!2892 = !DILocation(line: 401, column: 88, scope: !2885)
!2893 = !DILocation(line: 407, column: 6, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2885, file: !118, line: 407, column: 6)
!2895 = !DILocation(line: 407, column: 6, scope: !2885)
!2896 = !DILocation(line: 413, column: 3, scope: !2894)
!2897 = !DILocation(line: 423, column: 38, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2885, file: !118, line: 423, column: 6)
!2899 = !DILocation(line: 423, column: 44, scope: !2898)
!2900 = !DILocation(line: 423, column: 6, scope: !2885)
!2901 = !DILocation(line: 424, column: 3, scope: !2898)
!2902 = !DILocation(line: 426, column: 3, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2885, file: !118, line: 425, column: 6)
!2904 = !DILocation(line: 429, column: 1, scope: !2885)
!2905 = !DISubprogram(name: "__compiletime_assert_204", scope: !118, file: !118, line: 478, type: !1270, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
!2906 = distinct !DISubprogram(name: "type_show", scope: !3, file: !3, line: 27, type: !1772, scopeLine: 28, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2907)
!2907 = !{!2908, !2909, !2910, !2911, !2912}
!2908 = !DILocalVariable(name: "dev", arg: 1, scope: !2906, file: !3, line: 27, type: !817)
!2909 = !DILocalVariable(name: "attr", arg: 2, scope: !2906, file: !3, line: 27, type: !1774)
!2910 = !DILocalVariable(name: "buf", arg: 3, scope: !2906, file: !3, line: 27, type: !241)
!2911 = !DILocalVariable(name: "tz", scope: !2906, file: !3, line: 29, type: !142)
!2912 = !DILocalVariable(name: "__mptr", scope: !2913, file: !3, line: 29, type: !130)
!2913 = distinct !DILexicalBlock(scope: !2906, file: !3, line: 29, column: 35)
!2914 = !DILocation(line: 27, column: 26, scope: !2906)
!2915 = !DILocation(line: 27, column: 56, scope: !2906)
!2916 = !DILocation(line: 27, column: 68, scope: !2906)
!2917 = !DILocation(line: 29, column: 2, scope: !2906)
!2918 = !DILocation(line: 29, column: 30, scope: !2906)
!2919 = !DILocation(line: 29, column: 35, scope: !2913)
!2920 = !DILocation(line: 29, column: 35, scope: !2906)
!2921 = !DILocation(line: 31, column: 17, scope: !2906)
!2922 = !DILocation(line: 31, column: 30, scope: !2906)
!2923 = !DILocation(line: 31, column: 34, scope: !2906)
!2924 = !DILocation(line: 31, column: 9, scope: !2906)
!2925 = !DILocation(line: 32, column: 1, scope: !2906)
!2926 = !DILocation(line: 31, column: 2, scope: !2906)
!2927 = distinct !DISubprogram(name: "temp_show", scope: !3, file: !3, line: 35, type: !1772, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2928)
!2928 = !{!2929, !2930, !2931, !2932, !2933, !2935, !2936}
!2929 = !DILocalVariable(name: "dev", arg: 1, scope: !2927, file: !3, line: 35, type: !817)
!2930 = !DILocalVariable(name: "attr", arg: 2, scope: !2927, file: !3, line: 35, type: !1774)
!2931 = !DILocalVariable(name: "buf", arg: 3, scope: !2927, file: !3, line: 35, type: !241)
!2932 = !DILocalVariable(name: "tz", scope: !2927, file: !3, line: 37, type: !142)
!2933 = !DILocalVariable(name: "__mptr", scope: !2934, file: !3, line: 37, type: !130)
!2934 = distinct !DILexicalBlock(scope: !2927, file: !3, line: 37, column: 35)
!2935 = !DILocalVariable(name: "temperature", scope: !2927, file: !3, line: 38, type: !46)
!2936 = !DILocalVariable(name: "ret", scope: !2927, file: !3, line: 38, type: !46)
!2937 = !DILocation(line: 35, column: 26, scope: !2927)
!2938 = !DILocation(line: 35, column: 56, scope: !2927)
!2939 = !DILocation(line: 35, column: 68, scope: !2927)
!2940 = !DILocation(line: 37, column: 2, scope: !2927)
!2941 = !DILocation(line: 37, column: 30, scope: !2927)
!2942 = !DILocation(line: 37, column: 35, scope: !2934)
!2943 = !DILocation(line: 37, column: 35, scope: !2927)
!2944 = !DILocation(line: 38, column: 2, scope: !2927)
!2945 = !DILocation(line: 38, column: 6, scope: !2927)
!2946 = !DILocation(line: 38, column: 19, scope: !2927)
!2947 = !DILocation(line: 40, column: 30, scope: !2927)
!2948 = !DILocation(line: 40, column: 8, scope: !2927)
!2949 = !DILocation(line: 40, column: 6, scope: !2927)
!2950 = !DILocation(line: 42, column: 6, scope: !2951)
!2951 = distinct !DILexicalBlock(scope: !2927, file: !3, line: 42, column: 6)
!2952 = !DILocation(line: 42, column: 6, scope: !2927)
!2953 = !DILocation(line: 43, column: 10, scope: !2951)
!2954 = !DILocation(line: 43, column: 3, scope: !2951)
!2955 = !DILocation(line: 45, column: 17, scope: !2927)
!2956 = !DILocation(line: 45, column: 30, scope: !2927)
!2957 = !DILocation(line: 45, column: 9, scope: !2927)
!2958 = !DILocation(line: 45, column: 2, scope: !2927)
!2959 = !DILocation(line: 46, column: 1, scope: !2927)
!2960 = !DISubprogram(name: "thermal_zone_get_temp", scope: !96, file: !96, line: 355, type: !1855, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2961 = distinct !DISubprogram(name: "policy_show", scope: !3, file: !3, line: 251, type: !1772, scopeLine: 252, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2962)
!2962 = !{!2963, !2964, !2965, !2966, !2967}
!2963 = !DILocalVariable(name: "dev", arg: 1, scope: !2961, file: !3, line: 251, type: !817)
!2964 = !DILocalVariable(name: "devattr", arg: 2, scope: !2961, file: !3, line: 251, type: !1774)
!2965 = !DILocalVariable(name: "buf", arg: 3, scope: !2961, file: !3, line: 251, type: !241)
!2966 = !DILocalVariable(name: "tz", scope: !2961, file: !3, line: 253, type: !142)
!2967 = !DILocalVariable(name: "__mptr", scope: !2968, file: !3, line: 253, type: !130)
!2968 = distinct !DILexicalBlock(scope: !2961, file: !3, line: 253, column: 35)
!2969 = !DILocation(line: 251, column: 28, scope: !2961)
!2970 = !DILocation(line: 251, column: 58, scope: !2961)
!2971 = !DILocation(line: 251, column: 73, scope: !2961)
!2972 = !DILocation(line: 253, column: 2, scope: !2961)
!2973 = !DILocation(line: 253, column: 30, scope: !2961)
!2974 = !DILocation(line: 253, column: 35, scope: !2968)
!2975 = !DILocation(line: 253, column: 35, scope: !2961)
!2976 = !DILocation(line: 255, column: 17, scope: !2961)
!2977 = !DILocation(line: 255, column: 30, scope: !2961)
!2978 = !DILocation(line: 255, column: 34, scope: !2961)
!2979 = !DILocation(line: 255, column: 44, scope: !2961)
!2980 = !DILocation(line: 255, column: 9, scope: !2961)
!2981 = !DILocation(line: 256, column: 1, scope: !2961)
!2982 = !DILocation(line: 255, column: 2, scope: !2961)
!2983 = distinct !DISubprogram(name: "policy_store", scope: !3, file: !3, line: 234, type: !1777, scopeLine: 236, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2984)
!2984 = !{!2985, !2986, !2987, !2988, !2989, !2990, !2992, !2993}
!2985 = !DILocalVariable(name: "dev", arg: 1, scope: !2983, file: !3, line: 234, type: !817)
!2986 = !DILocalVariable(name: "attr", arg: 2, scope: !2983, file: !3, line: 234, type: !1774)
!2987 = !DILocalVariable(name: "buf", arg: 3, scope: !2983, file: !3, line: 235, type: !155)
!2988 = !DILocalVariable(name: "count", arg: 4, scope: !2983, file: !3, line: 235, type: !288)
!2989 = !DILocalVariable(name: "tz", scope: !2983, file: !3, line: 237, type: !142)
!2990 = !DILocalVariable(name: "__mptr", scope: !2991, file: !3, line: 237, type: !130)
!2991 = distinct !DILexicalBlock(scope: !2983, file: !3, line: 237, column: 35)
!2992 = !DILocalVariable(name: "name", scope: !2983, file: !3, line: 238, type: !137)
!2993 = !DILocalVariable(name: "ret", scope: !2983, file: !3, line: 239, type: !46)
!2994 = !DILocation(line: 234, column: 29, scope: !2983)
!2995 = !DILocation(line: 234, column: 59, scope: !2983)
!2996 = !DILocation(line: 235, column: 19, scope: !2983)
!2997 = !DILocation(line: 235, column: 31, scope: !2983)
!2998 = !DILocation(line: 237, column: 2, scope: !2983)
!2999 = !DILocation(line: 237, column: 30, scope: !2983)
!3000 = !DILocation(line: 237, column: 35, scope: !2991)
!3001 = !DILocation(line: 237, column: 35, scope: !2983)
!3002 = !DILocation(line: 238, column: 2, scope: !2983)
!3003 = !DILocation(line: 238, column: 7, scope: !2983)
!3004 = !DILocation(line: 239, column: 2, scope: !2983)
!3005 = !DILocation(line: 239, column: 6, scope: !2983)
!3006 = !DILocation(line: 241, column: 11, scope: !2983)
!3007 = !DILocation(line: 241, column: 37, scope: !2983)
!3008 = !DILocation(line: 241, column: 2, scope: !2983)
!3009 = !DILocation(line: 243, column: 39, scope: !2983)
!3010 = !DILocation(line: 243, column: 43, scope: !2983)
!3011 = !DILocation(line: 243, column: 8, scope: !2983)
!3012 = !DILocation(line: 243, column: 6, scope: !2983)
!3013 = !DILocation(line: 244, column: 7, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !2983, file: !3, line: 244, column: 6)
!3015 = !DILocation(line: 244, column: 6, scope: !2983)
!3016 = !DILocation(line: 245, column: 9, scope: !3014)
!3017 = !DILocation(line: 245, column: 7, scope: !3014)
!3018 = !DILocation(line: 245, column: 3, scope: !3014)
!3019 = !DILocation(line: 247, column: 9, scope: !2983)
!3020 = !DILocation(line: 248, column: 1, scope: !2983)
!3021 = !DILocation(line: 247, column: 2, scope: !2983)
!3022 = !DISubprogram(name: "snprintf", scope: !2576, file: !2576, line: 12, type: !3023, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3023 = !DISubroutineType(types: !3024)
!3024 = !{!46, !241, !288, !155, null}
!3025 = !DISubprogram(name: "thermal_zone_device_set_policy", scope: !133, file: !133, line: 113, type: !3026, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3026 = !DISubroutineType(types: !3027)
!3027 = !{!46, !142, !241}
!3028 = distinct !DISubprogram(name: "available_policies_show", scope: !3, file: !3, line: 259, type: !1772, scopeLine: 261, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3029)
!3029 = !{!3030, !3031, !3032}
!3030 = !DILocalVariable(name: "dev", arg: 1, scope: !3028, file: !3, line: 259, type: !817)
!3031 = !DILocalVariable(name: "devattr", arg: 2, scope: !3028, file: !3, line: 259, type: !1774)
!3032 = !DILocalVariable(name: "buf", arg: 3, scope: !3028, file: !3, line: 260, type: !241)
!3033 = !DILocation(line: 259, column: 40, scope: !3028)
!3034 = !DILocation(line: 259, column: 70, scope: !3028)
!3035 = !DILocation(line: 260, column: 10, scope: !3028)
!3036 = !DILocation(line: 262, column: 40, scope: !3028)
!3037 = !DILocation(line: 262, column: 9, scope: !3028)
!3038 = !DILocation(line: 262, column: 2, scope: !3028)
!3039 = !DISubprogram(name: "thermal_build_list_of_policies", scope: !133, file: !133, line: 114, type: !3040, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3040 = !DISubroutineType(types: !3041)
!3041 = !{!46, !241}
!3042 = distinct !DISubprogram(name: "sustainable_power_show", scope: !3, file: !3, line: 301, type: !1772, scopeLine: 303, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3043)
!3043 = !{!3044, !3045, !3046, !3047, !3048}
!3044 = !DILocalVariable(name: "dev", arg: 1, scope: !3042, file: !3, line: 301, type: !817)
!3045 = !DILocalVariable(name: "devattr", arg: 2, scope: !3042, file: !3, line: 301, type: !1774)
!3046 = !DILocalVariable(name: "buf", arg: 3, scope: !3042, file: !3, line: 302, type: !241)
!3047 = !DILocalVariable(name: "tz", scope: !3042, file: !3, line: 304, type: !142)
!3048 = !DILocalVariable(name: "__mptr", scope: !3049, file: !3, line: 304, type: !130)
!3049 = distinct !DILexicalBlock(scope: !3042, file: !3, line: 304, column: 35)
!3050 = !DILocation(line: 301, column: 39, scope: !3042)
!3051 = !DILocation(line: 301, column: 69, scope: !3042)
!3052 = !DILocation(line: 302, column: 16, scope: !3042)
!3053 = !DILocation(line: 304, column: 2, scope: !3042)
!3054 = !DILocation(line: 304, column: 30, scope: !3042)
!3055 = !DILocation(line: 304, column: 35, scope: !3049)
!3056 = !DILocation(line: 304, column: 35, scope: !3042)
!3057 = !DILocation(line: 306, column: 6, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3042, file: !3, line: 306, column: 6)
!3059 = !DILocation(line: 306, column: 10, scope: !3058)
!3060 = !DILocation(line: 306, column: 6, scope: !3042)
!3061 = !DILocation(line: 307, column: 18, scope: !3058)
!3062 = !DILocation(line: 307, column: 31, scope: !3058)
!3063 = !DILocation(line: 307, column: 35, scope: !3058)
!3064 = !DILocation(line: 307, column: 40, scope: !3058)
!3065 = !DILocation(line: 307, column: 10, scope: !3058)
!3066 = !DILocation(line: 307, column: 3, scope: !3058)
!3067 = !DILocation(line: 309, column: 3, scope: !3058)
!3068 = !DILocation(line: 310, column: 1, scope: !3042)
!3069 = distinct !DISubprogram(name: "sustainable_power_store", scope: !3, file: !3, line: 313, type: !1777, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3070)
!3070 = !{!3071, !3072, !3073, !3074, !3075, !3076, !3078}
!3071 = !DILocalVariable(name: "dev", arg: 1, scope: !3069, file: !3, line: 313, type: !817)
!3072 = !DILocalVariable(name: "devattr", arg: 2, scope: !3069, file: !3, line: 313, type: !1774)
!3073 = !DILocalVariable(name: "buf", arg: 3, scope: !3069, file: !3, line: 314, type: !155)
!3074 = !DILocalVariable(name: "count", arg: 4, scope: !3069, file: !3, line: 314, type: !288)
!3075 = !DILocalVariable(name: "tz", scope: !3069, file: !3, line: 316, type: !142)
!3076 = !DILocalVariable(name: "__mptr", scope: !3077, file: !3, line: 316, type: !130)
!3077 = distinct !DILexicalBlock(scope: !3069, file: !3, line: 316, column: 35)
!3078 = !DILocalVariable(name: "sustainable_power", scope: !3069, file: !3, line: 317, type: !1175)
!3079 = !DILocation(line: 313, column: 40, scope: !3069)
!3080 = !DILocation(line: 313, column: 70, scope: !3069)
!3081 = !DILocation(line: 314, column: 16, scope: !3069)
!3082 = !DILocation(line: 314, column: 28, scope: !3069)
!3083 = !DILocation(line: 316, column: 2, scope: !3069)
!3084 = !DILocation(line: 316, column: 30, scope: !3069)
!3085 = !DILocation(line: 316, column: 35, scope: !3077)
!3086 = !DILocation(line: 316, column: 35, scope: !3069)
!3087 = !DILocation(line: 317, column: 2, scope: !3069)
!3088 = !DILocation(line: 317, column: 6, scope: !3069)
!3089 = !DILocation(line: 319, column: 7, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3069, file: !3, line: 319, column: 6)
!3091 = !DILocation(line: 319, column: 11, scope: !3090)
!3092 = !DILocation(line: 319, column: 6, scope: !3069)
!3093 = !DILocation(line: 320, column: 3, scope: !3090)
!3094 = !DILocation(line: 322, column: 16, scope: !3095)
!3095 = distinct !DILexicalBlock(scope: !3069, file: !3, line: 322, column: 6)
!3096 = !DILocation(line: 322, column: 6, scope: !3095)
!3097 = !DILocation(line: 322, column: 6, scope: !3069)
!3098 = !DILocation(line: 323, column: 3, scope: !3095)
!3099 = !DILocation(line: 325, column: 31, scope: !3069)
!3100 = !DILocation(line: 325, column: 2, scope: !3069)
!3101 = !DILocation(line: 325, column: 6, scope: !3069)
!3102 = !DILocation(line: 325, column: 11, scope: !3069)
!3103 = !DILocation(line: 325, column: 29, scope: !3069)
!3104 = !DILocation(line: 327, column: 9, scope: !3069)
!3105 = !DILocation(line: 327, column: 2, scope: !3069)
!3106 = !DILocation(line: 328, column: 1, scope: !3069)
!3107 = distinct !DISubprogram(name: "kstrtou32", scope: !2643, file: !2643, line: 84, type: !3108, scopeLine: 85, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3110)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{!46, !155, !7, !1839}
!3110 = !{!3111, !3112, !3113}
!3111 = !DILocalVariable(name: "s", arg: 1, scope: !3107, file: !2643, line: 84, type: !155)
!3112 = !DILocalVariable(name: "base", arg: 2, scope: !3107, file: !2643, line: 84, type: !7)
!3113 = !DILocalVariable(name: "res", arg: 3, scope: !3107, file: !2643, line: 84, type: !1839)
!3114 = !DILocation(line: 84, column: 54, scope: !3107)
!3115 = !DILocation(line: 84, column: 70, scope: !3107)
!3116 = !DILocation(line: 84, column: 81, scope: !3107)
!3117 = !DILocation(line: 86, column: 20, scope: !3107)
!3118 = !DILocation(line: 86, column: 23, scope: !3107)
!3119 = !DILocation(line: 86, column: 29, scope: !3107)
!3120 = !DILocation(line: 86, column: 9, scope: !3107)
!3121 = !DILocation(line: 86, column: 2, scope: !3107)
!3122 = !DISubprogram(name: "kstrtouint", scope: !2643, file: !2643, line: 71, type: !3123, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!46, !155, !7, !1014}
!3125 = distinct !DISubprogram(name: "k_po_show", scope: !3, file: !3, line: 362, type: !1772, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3126)
!3126 = !{!3127, !3128, !3129, !3130, !3131}
!3127 = !DILocalVariable(name: "dev", arg: 1, scope: !3125, file: !3, line: 362, type: !817)
!3128 = !DILocalVariable(name: "devattr", arg: 2, scope: !3125, file: !3, line: 362, type: !1774)
!3129 = !DILocalVariable(name: "buf", arg: 3, scope: !3125, file: !3, line: 362, type: !241)
!3130 = !DILocalVariable(name: "tz", scope: !3125, file: !3, line: 362, type: !142)
!3131 = !DILocalVariable(name: "__mptr", scope: !3132, file: !3, line: 362, type: !130)
!3132 = distinct !DILexicalBlock(scope: !3125, file: !3, line: 362, column: 1)
!3133 = !DILocation(line: 362, column: 1, scope: !3125)
!3134 = !DILocation(line: 362, column: 1, scope: !3132)
!3135 = !DILocation(line: 362, column: 1, scope: !3136)
!3136 = distinct !DILexicalBlock(scope: !3125, file: !3, line: 362, column: 1)
!3137 = distinct !DISubprogram(name: "k_po_store", scope: !3, file: !3, line: 362, type: !1777, scopeLine: 362, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3138)
!3138 = !{!3139, !3140, !3141, !3142, !3143, !3144, !3146}
!3139 = !DILocalVariable(name: "dev", arg: 1, scope: !3137, file: !3, line: 362, type: !817)
!3140 = !DILocalVariable(name: "devattr", arg: 2, scope: !3137, file: !3, line: 362, type: !1774)
!3141 = !DILocalVariable(name: "buf", arg: 3, scope: !3137, file: !3, line: 362, type: !155)
!3142 = !DILocalVariable(name: "count", arg: 4, scope: !3137, file: !3, line: 362, type: !288)
!3143 = !DILocalVariable(name: "tz", scope: !3137, file: !3, line: 362, type: !142)
!3144 = !DILocalVariable(name: "__mptr", scope: !3145, file: !3, line: 362, type: !130)
!3145 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 362, column: 1)
!3146 = !DILocalVariable(name: "value", scope: !3137, file: !3, line: 362, type: !477)
!3147 = !DILocation(line: 362, column: 1, scope: !3137)
!3148 = !DILocation(line: 362, column: 1, scope: !3145)
!3149 = !DILocation(line: 362, column: 1, scope: !3150)
!3150 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 362, column: 1)
!3151 = !DILocation(line: 362, column: 1, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3137, file: !3, line: 362, column: 1)
!3153 = distinct !DISubprogram(name: "kstrtos32", scope: !2643, file: !2643, line: 89, type: !3154, scopeLine: 90, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3156)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!46, !155, !7, !476}
!3156 = !{!3157, !3158, !3159}
!3157 = !DILocalVariable(name: "s", arg: 1, scope: !3153, file: !2643, line: 89, type: !155)
!3158 = !DILocalVariable(name: "base", arg: 2, scope: !3153, file: !2643, line: 89, type: !7)
!3159 = !DILocalVariable(name: "res", arg: 3, scope: !3153, file: !2643, line: 89, type: !476)
!3160 = !DILocation(line: 89, column: 54, scope: !3153)
!3161 = !DILocation(line: 89, column: 70, scope: !3153)
!3162 = !DILocation(line: 89, column: 81, scope: !3153)
!3163 = !DILocation(line: 91, column: 19, scope: !3153)
!3164 = !DILocation(line: 91, column: 22, scope: !3153)
!3165 = !DILocation(line: 91, column: 28, scope: !3153)
!3166 = !DILocation(line: 91, column: 9, scope: !3153)
!3167 = !DILocation(line: 91, column: 2, scope: !3153)
!3168 = distinct !DISubprogram(name: "k_pu_show", scope: !3, file: !3, line: 363, type: !1772, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3169)
!3169 = !{!3170, !3171, !3172, !3173, !3174}
!3170 = !DILocalVariable(name: "dev", arg: 1, scope: !3168, file: !3, line: 363, type: !817)
!3171 = !DILocalVariable(name: "devattr", arg: 2, scope: !3168, file: !3, line: 363, type: !1774)
!3172 = !DILocalVariable(name: "buf", arg: 3, scope: !3168, file: !3, line: 363, type: !241)
!3173 = !DILocalVariable(name: "tz", scope: !3168, file: !3, line: 363, type: !142)
!3174 = !DILocalVariable(name: "__mptr", scope: !3175, file: !3, line: 363, type: !130)
!3175 = distinct !DILexicalBlock(scope: !3168, file: !3, line: 363, column: 1)
!3176 = !DILocation(line: 363, column: 1, scope: !3168)
!3177 = !DILocation(line: 363, column: 1, scope: !3175)
!3178 = !DILocation(line: 363, column: 1, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3168, file: !3, line: 363, column: 1)
!3180 = distinct !DISubprogram(name: "k_pu_store", scope: !3, file: !3, line: 363, type: !1777, scopeLine: 363, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3181)
!3181 = !{!3182, !3183, !3184, !3185, !3186, !3187, !3189}
!3182 = !DILocalVariable(name: "dev", arg: 1, scope: !3180, file: !3, line: 363, type: !817)
!3183 = !DILocalVariable(name: "devattr", arg: 2, scope: !3180, file: !3, line: 363, type: !1774)
!3184 = !DILocalVariable(name: "buf", arg: 3, scope: !3180, file: !3, line: 363, type: !155)
!3185 = !DILocalVariable(name: "count", arg: 4, scope: !3180, file: !3, line: 363, type: !288)
!3186 = !DILocalVariable(name: "tz", scope: !3180, file: !3, line: 363, type: !142)
!3187 = !DILocalVariable(name: "__mptr", scope: !3188, file: !3, line: 363, type: !130)
!3188 = distinct !DILexicalBlock(scope: !3180, file: !3, line: 363, column: 1)
!3189 = !DILocalVariable(name: "value", scope: !3180, file: !3, line: 363, type: !477)
!3190 = !DILocation(line: 363, column: 1, scope: !3180)
!3191 = !DILocation(line: 363, column: 1, scope: !3188)
!3192 = !DILocation(line: 363, column: 1, scope: !3193)
!3193 = distinct !DILexicalBlock(scope: !3180, file: !3, line: 363, column: 1)
!3194 = !DILocation(line: 363, column: 1, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3180, file: !3, line: 363, column: 1)
!3196 = distinct !DISubprogram(name: "k_i_show", scope: !3, file: !3, line: 364, type: !1772, scopeLine: 364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3197)
!3197 = !{!3198, !3199, !3200, !3201, !3202}
!3198 = !DILocalVariable(name: "dev", arg: 1, scope: !3196, file: !3, line: 364, type: !817)
!3199 = !DILocalVariable(name: "devattr", arg: 2, scope: !3196, file: !3, line: 364, type: !1774)
!3200 = !DILocalVariable(name: "buf", arg: 3, scope: !3196, file: !3, line: 364, type: !241)
!3201 = !DILocalVariable(name: "tz", scope: !3196, file: !3, line: 364, type: !142)
!3202 = !DILocalVariable(name: "__mptr", scope: !3203, file: !3, line: 364, type: !130)
!3203 = distinct !DILexicalBlock(scope: !3196, file: !3, line: 364, column: 1)
!3204 = !DILocation(line: 364, column: 1, scope: !3196)
!3205 = !DILocation(line: 364, column: 1, scope: !3203)
!3206 = !DILocation(line: 364, column: 1, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3196, file: !3, line: 364, column: 1)
!3208 = distinct !DISubprogram(name: "k_i_store", scope: !3, file: !3, line: 364, type: !1777, scopeLine: 364, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3209)
!3209 = !{!3210, !3211, !3212, !3213, !3214, !3215, !3217}
!3210 = !DILocalVariable(name: "dev", arg: 1, scope: !3208, file: !3, line: 364, type: !817)
!3211 = !DILocalVariable(name: "devattr", arg: 2, scope: !3208, file: !3, line: 364, type: !1774)
!3212 = !DILocalVariable(name: "buf", arg: 3, scope: !3208, file: !3, line: 364, type: !155)
!3213 = !DILocalVariable(name: "count", arg: 4, scope: !3208, file: !3, line: 364, type: !288)
!3214 = !DILocalVariable(name: "tz", scope: !3208, file: !3, line: 364, type: !142)
!3215 = !DILocalVariable(name: "__mptr", scope: !3216, file: !3, line: 364, type: !130)
!3216 = distinct !DILexicalBlock(scope: !3208, file: !3, line: 364, column: 1)
!3217 = !DILocalVariable(name: "value", scope: !3208, file: !3, line: 364, type: !477)
!3218 = !DILocation(line: 364, column: 1, scope: !3208)
!3219 = !DILocation(line: 364, column: 1, scope: !3216)
!3220 = !DILocation(line: 364, column: 1, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3208, file: !3, line: 364, column: 1)
!3222 = !DILocation(line: 364, column: 1, scope: !3223)
!3223 = distinct !DILexicalBlock(scope: !3208, file: !3, line: 364, column: 1)
!3224 = distinct !DISubprogram(name: "k_d_show", scope: !3, file: !3, line: 365, type: !1772, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3225)
!3225 = !{!3226, !3227, !3228, !3229, !3230}
!3226 = !DILocalVariable(name: "dev", arg: 1, scope: !3224, file: !3, line: 365, type: !817)
!3227 = !DILocalVariable(name: "devattr", arg: 2, scope: !3224, file: !3, line: 365, type: !1774)
!3228 = !DILocalVariable(name: "buf", arg: 3, scope: !3224, file: !3, line: 365, type: !241)
!3229 = !DILocalVariable(name: "tz", scope: !3224, file: !3, line: 365, type: !142)
!3230 = !DILocalVariable(name: "__mptr", scope: !3231, file: !3, line: 365, type: !130)
!3231 = distinct !DILexicalBlock(scope: !3224, file: !3, line: 365, column: 1)
!3232 = !DILocation(line: 365, column: 1, scope: !3224)
!3233 = !DILocation(line: 365, column: 1, scope: !3231)
!3234 = !DILocation(line: 365, column: 1, scope: !3235)
!3235 = distinct !DILexicalBlock(scope: !3224, file: !3, line: 365, column: 1)
!3236 = distinct !DISubprogram(name: "k_d_store", scope: !3, file: !3, line: 365, type: !1777, scopeLine: 365, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3237)
!3237 = !{!3238, !3239, !3240, !3241, !3242, !3243, !3245}
!3238 = !DILocalVariable(name: "dev", arg: 1, scope: !3236, file: !3, line: 365, type: !817)
!3239 = !DILocalVariable(name: "devattr", arg: 2, scope: !3236, file: !3, line: 365, type: !1774)
!3240 = !DILocalVariable(name: "buf", arg: 3, scope: !3236, file: !3, line: 365, type: !155)
!3241 = !DILocalVariable(name: "count", arg: 4, scope: !3236, file: !3, line: 365, type: !288)
!3242 = !DILocalVariable(name: "tz", scope: !3236, file: !3, line: 365, type: !142)
!3243 = !DILocalVariable(name: "__mptr", scope: !3244, file: !3, line: 365, type: !130)
!3244 = distinct !DILexicalBlock(scope: !3236, file: !3, line: 365, column: 1)
!3245 = !DILocalVariable(name: "value", scope: !3236, file: !3, line: 365, type: !477)
!3246 = !DILocation(line: 365, column: 1, scope: !3236)
!3247 = !DILocation(line: 365, column: 1, scope: !3244)
!3248 = !DILocation(line: 365, column: 1, scope: !3249)
!3249 = distinct !DILexicalBlock(scope: !3236, file: !3, line: 365, column: 1)
!3250 = !DILocation(line: 365, column: 1, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !3236, file: !3, line: 365, column: 1)
!3252 = distinct !DISubprogram(name: "integral_cutoff_show", scope: !3, file: !3, line: 366, type: !1772, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3253)
!3253 = !{!3254, !3255, !3256, !3257, !3258}
!3254 = !DILocalVariable(name: "dev", arg: 1, scope: !3252, file: !3, line: 366, type: !817)
!3255 = !DILocalVariable(name: "devattr", arg: 2, scope: !3252, file: !3, line: 366, type: !1774)
!3256 = !DILocalVariable(name: "buf", arg: 3, scope: !3252, file: !3, line: 366, type: !241)
!3257 = !DILocalVariable(name: "tz", scope: !3252, file: !3, line: 366, type: !142)
!3258 = !DILocalVariable(name: "__mptr", scope: !3259, file: !3, line: 366, type: !130)
!3259 = distinct !DILexicalBlock(scope: !3252, file: !3, line: 366, column: 1)
!3260 = !DILocation(line: 366, column: 1, scope: !3252)
!3261 = !DILocation(line: 366, column: 1, scope: !3259)
!3262 = !DILocation(line: 366, column: 1, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3252, file: !3, line: 366, column: 1)
!3264 = distinct !DISubprogram(name: "integral_cutoff_store", scope: !3, file: !3, line: 366, type: !1777, scopeLine: 366, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3265)
!3265 = !{!3266, !3267, !3268, !3269, !3270, !3271, !3273}
!3266 = !DILocalVariable(name: "dev", arg: 1, scope: !3264, file: !3, line: 366, type: !817)
!3267 = !DILocalVariable(name: "devattr", arg: 2, scope: !3264, file: !3, line: 366, type: !1774)
!3268 = !DILocalVariable(name: "buf", arg: 3, scope: !3264, file: !3, line: 366, type: !155)
!3269 = !DILocalVariable(name: "count", arg: 4, scope: !3264, file: !3, line: 366, type: !288)
!3270 = !DILocalVariable(name: "tz", scope: !3264, file: !3, line: 366, type: !142)
!3271 = !DILocalVariable(name: "__mptr", scope: !3272, file: !3, line: 366, type: !130)
!3272 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 366, column: 1)
!3273 = !DILocalVariable(name: "value", scope: !3264, file: !3, line: 366, type: !477)
!3274 = !DILocation(line: 366, column: 1, scope: !3264)
!3275 = !DILocation(line: 366, column: 1, scope: !3272)
!3276 = !DILocation(line: 366, column: 1, scope: !3277)
!3277 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 366, column: 1)
!3278 = !DILocation(line: 366, column: 1, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3264, file: !3, line: 366, column: 1)
!3280 = distinct !DISubprogram(name: "slope_show", scope: !3, file: !3, line: 367, type: !1772, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3281)
!3281 = !{!3282, !3283, !3284, !3285, !3286}
!3282 = !DILocalVariable(name: "dev", arg: 1, scope: !3280, file: !3, line: 367, type: !817)
!3283 = !DILocalVariable(name: "devattr", arg: 2, scope: !3280, file: !3, line: 367, type: !1774)
!3284 = !DILocalVariable(name: "buf", arg: 3, scope: !3280, file: !3, line: 367, type: !241)
!3285 = !DILocalVariable(name: "tz", scope: !3280, file: !3, line: 367, type: !142)
!3286 = !DILocalVariable(name: "__mptr", scope: !3287, file: !3, line: 367, type: !130)
!3287 = distinct !DILexicalBlock(scope: !3280, file: !3, line: 367, column: 1)
!3288 = !DILocation(line: 367, column: 1, scope: !3280)
!3289 = !DILocation(line: 367, column: 1, scope: !3287)
!3290 = !DILocation(line: 367, column: 1, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3280, file: !3, line: 367, column: 1)
!3292 = distinct !DISubprogram(name: "slope_store", scope: !3, file: !3, line: 367, type: !1777, scopeLine: 367, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3293)
!3293 = !{!3294, !3295, !3296, !3297, !3298, !3299, !3301}
!3294 = !DILocalVariable(name: "dev", arg: 1, scope: !3292, file: !3, line: 367, type: !817)
!3295 = !DILocalVariable(name: "devattr", arg: 2, scope: !3292, file: !3, line: 367, type: !1774)
!3296 = !DILocalVariable(name: "buf", arg: 3, scope: !3292, file: !3, line: 367, type: !155)
!3297 = !DILocalVariable(name: "count", arg: 4, scope: !3292, file: !3, line: 367, type: !288)
!3298 = !DILocalVariable(name: "tz", scope: !3292, file: !3, line: 367, type: !142)
!3299 = !DILocalVariable(name: "__mptr", scope: !3300, file: !3, line: 367, type: !130)
!3300 = distinct !DILexicalBlock(scope: !3292, file: !3, line: 367, column: 1)
!3301 = !DILocalVariable(name: "value", scope: !3292, file: !3, line: 367, type: !477)
!3302 = !DILocation(line: 367, column: 1, scope: !3292)
!3303 = !DILocation(line: 367, column: 1, scope: !3300)
!3304 = !DILocation(line: 367, column: 1, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3292, file: !3, line: 367, column: 1)
!3306 = !DILocation(line: 367, column: 1, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3292, file: !3, line: 367, column: 1)
!3308 = distinct !DISubprogram(name: "offset_show", scope: !3, file: !3, line: 368, type: !1772, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3309)
!3309 = !{!3310, !3311, !3312, !3313, !3314}
!3310 = !DILocalVariable(name: "dev", arg: 1, scope: !3308, file: !3, line: 368, type: !817)
!3311 = !DILocalVariable(name: "devattr", arg: 2, scope: !3308, file: !3, line: 368, type: !1774)
!3312 = !DILocalVariable(name: "buf", arg: 3, scope: !3308, file: !3, line: 368, type: !241)
!3313 = !DILocalVariable(name: "tz", scope: !3308, file: !3, line: 368, type: !142)
!3314 = !DILocalVariable(name: "__mptr", scope: !3315, file: !3, line: 368, type: !130)
!3315 = distinct !DILexicalBlock(scope: !3308, file: !3, line: 368, column: 1)
!3316 = !DILocation(line: 368, column: 1, scope: !3308)
!3317 = !DILocation(line: 368, column: 1, scope: !3315)
!3318 = !DILocation(line: 368, column: 1, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3308, file: !3, line: 368, column: 1)
!3320 = distinct !DISubprogram(name: "offset_store", scope: !3, file: !3, line: 368, type: !1777, scopeLine: 368, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3321)
!3321 = !{!3322, !3323, !3324, !3325, !3326, !3327, !3329}
!3322 = !DILocalVariable(name: "dev", arg: 1, scope: !3320, file: !3, line: 368, type: !817)
!3323 = !DILocalVariable(name: "devattr", arg: 2, scope: !3320, file: !3, line: 368, type: !1774)
!3324 = !DILocalVariable(name: "buf", arg: 3, scope: !3320, file: !3, line: 368, type: !155)
!3325 = !DILocalVariable(name: "count", arg: 4, scope: !3320, file: !3, line: 368, type: !288)
!3326 = !DILocalVariable(name: "tz", scope: !3320, file: !3, line: 368, type: !142)
!3327 = !DILocalVariable(name: "__mptr", scope: !3328, file: !3, line: 368, type: !130)
!3328 = distinct !DILexicalBlock(scope: !3320, file: !3, line: 368, column: 1)
!3329 = !DILocalVariable(name: "value", scope: !3320, file: !3, line: 368, type: !477)
!3330 = !DILocation(line: 368, column: 1, scope: !3320)
!3331 = !DILocation(line: 368, column: 1, scope: !3328)
!3332 = !DILocation(line: 368, column: 1, scope: !3333)
!3333 = distinct !DILexicalBlock(scope: !3320, file: !3, line: 368, column: 1)
!3334 = !DILocation(line: 368, column: 1, scope: !3335)
!3335 = distinct !DILexicalBlock(scope: !3320, file: !3, line: 368, column: 1)
!3336 = distinct !DISubprogram(name: "mode_show", scope: !3, file: !3, line: 49, type: !1772, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3337)
!3337 = !{!3338, !3339, !3340, !3341, !3342, !3344}
!3338 = !DILocalVariable(name: "dev", arg: 1, scope: !3336, file: !3, line: 49, type: !817)
!3339 = !DILocalVariable(name: "attr", arg: 2, scope: !3336, file: !3, line: 49, type: !1774)
!3340 = !DILocalVariable(name: "buf", arg: 3, scope: !3336, file: !3, line: 49, type: !241)
!3341 = !DILocalVariable(name: "tz", scope: !3336, file: !3, line: 51, type: !142)
!3342 = !DILocalVariable(name: "__mptr", scope: !3343, file: !3, line: 51, type: !130)
!3343 = distinct !DILexicalBlock(scope: !3336, file: !3, line: 51, column: 35)
!3344 = !DILocalVariable(name: "enabled", scope: !3336, file: !3, line: 52, type: !46)
!3345 = !DILocation(line: 49, column: 26, scope: !3336)
!3346 = !DILocation(line: 49, column: 56, scope: !3336)
!3347 = !DILocation(line: 49, column: 68, scope: !3336)
!3348 = !DILocation(line: 51, column: 2, scope: !3336)
!3349 = !DILocation(line: 51, column: 30, scope: !3336)
!3350 = !DILocation(line: 51, column: 35, scope: !3343)
!3351 = !DILocation(line: 51, column: 35, scope: !3336)
!3352 = !DILocation(line: 52, column: 2, scope: !3336)
!3353 = !DILocation(line: 52, column: 6, scope: !3336)
!3354 = !DILocation(line: 54, column: 14, scope: !3336)
!3355 = !DILocation(line: 54, column: 18, scope: !3336)
!3356 = !DILocation(line: 54, column: 2, scope: !3336)
!3357 = !DILocation(line: 55, column: 43, scope: !3336)
!3358 = !DILocation(line: 55, column: 12, scope: !3336)
!3359 = !DILocation(line: 55, column: 10, scope: !3336)
!3360 = !DILocation(line: 56, column: 16, scope: !3336)
!3361 = !DILocation(line: 56, column: 20, scope: !3336)
!3362 = !DILocation(line: 56, column: 2, scope: !3336)
!3363 = !DILocation(line: 58, column: 17, scope: !3336)
!3364 = !DILocation(line: 58, column: 30, scope: !3336)
!3365 = !DILocation(line: 58, column: 9, scope: !3336)
!3366 = !DILocation(line: 59, column: 1, scope: !3336)
!3367 = !DILocation(line: 58, column: 2, scope: !3336)
!3368 = distinct !DISubprogram(name: "mode_store", scope: !3, file: !3, line: 62, type: !1777, scopeLine: 64, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3369)
!3369 = !{!3370, !3371, !3372, !3373, !3374, !3375, !3377}
!3370 = !DILocalVariable(name: "dev", arg: 1, scope: !3368, file: !3, line: 62, type: !817)
!3371 = !DILocalVariable(name: "attr", arg: 2, scope: !3368, file: !3, line: 62, type: !1774)
!3372 = !DILocalVariable(name: "buf", arg: 3, scope: !3368, file: !3, line: 63, type: !155)
!3373 = !DILocalVariable(name: "count", arg: 4, scope: !3368, file: !3, line: 63, type: !288)
!3374 = !DILocalVariable(name: "tz", scope: !3368, file: !3, line: 65, type: !142)
!3375 = !DILocalVariable(name: "__mptr", scope: !3376, file: !3, line: 65, type: !130)
!3376 = distinct !DILexicalBlock(scope: !3368, file: !3, line: 65, column: 35)
!3377 = !DILocalVariable(name: "result", scope: !3368, file: !3, line: 66, type: !46)
!3378 = !DILocation(line: 62, column: 27, scope: !3368)
!3379 = !DILocation(line: 62, column: 57, scope: !3368)
!3380 = !DILocation(line: 63, column: 17, scope: !3368)
!3381 = !DILocation(line: 63, column: 29, scope: !3368)
!3382 = !DILocation(line: 65, column: 2, scope: !3368)
!3383 = !DILocation(line: 65, column: 30, scope: !3368)
!3384 = !DILocation(line: 65, column: 35, scope: !3376)
!3385 = !DILocation(line: 65, column: 35, scope: !3368)
!3386 = !DILocation(line: 66, column: 2, scope: !3368)
!3387 = !DILocation(line: 66, column: 6, scope: !3368)
!3388 = !DILocation(line: 68, column: 15, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3368, file: !3, line: 68, column: 6)
!3390 = !DILocation(line: 68, column: 7, scope: !3389)
!3391 = !DILocation(line: 68, column: 6, scope: !3368)
!3392 = !DILocation(line: 69, column: 39, scope: !3389)
!3393 = !DILocation(line: 69, column: 12, scope: !3389)
!3394 = !DILocation(line: 69, column: 10, scope: !3389)
!3395 = !DILocation(line: 69, column: 3, scope: !3389)
!3396 = !DILocation(line: 70, column: 20, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3389, file: !3, line: 70, column: 11)
!3398 = !DILocation(line: 70, column: 12, scope: !3397)
!3399 = !DILocation(line: 70, column: 11, scope: !3389)
!3400 = !DILocation(line: 71, column: 40, scope: !3397)
!3401 = !DILocation(line: 71, column: 12, scope: !3397)
!3402 = !DILocation(line: 71, column: 10, scope: !3397)
!3403 = !DILocation(line: 71, column: 3, scope: !3397)
!3404 = !DILocation(line: 73, column: 10, scope: !3397)
!3405 = !DILocation(line: 75, column: 6, scope: !3406)
!3406 = distinct !DILexicalBlock(scope: !3368, file: !3, line: 75, column: 6)
!3407 = !DILocation(line: 75, column: 6, scope: !3368)
!3408 = !DILocation(line: 76, column: 10, scope: !3406)
!3409 = !DILocation(line: 76, column: 3, scope: !3406)
!3410 = !DILocation(line: 78, column: 9, scope: !3368)
!3411 = !DILocation(line: 78, column: 2, scope: !3368)
!3412 = !DILocation(line: 79, column: 1, scope: !3368)
!3413 = !DISubprogram(name: "mutex_lock", scope: !499, file: !499, line: 227, type: !3414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3414 = !DISubroutineType(types: !3415)
!3415 = !{null, !3416}
!3416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!3417 = !DISubprogram(name: "thermal_zone_device_is_enabled", scope: !133, file: !133, line: 148, type: !1905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3418 = !DISubprogram(name: "mutex_unlock", scope: !499, file: !499, line: 246, type: !3414, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3419 = !DISubprogram(name: "strncmp", scope: !3420, file: !3420, line: 91, type: !3421, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3420 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!3421 = !DISubroutineType(types: !3422)
!3422 = !{!46, !155, !155, !289}
!3423 = !DISubprogram(name: "thermal_zone_device_enable", scope: !96, file: !96, line: 359, type: !1905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3424 = !DISubprogram(name: "thermal_zone_device_disable", scope: !96, file: !96, line: 360, type: !1905, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3425 = distinct !DISubprogram(name: "trip_point_type_show", scope: !3, file: !3, line: 82, type: !1772, scopeLine: 84, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3426)
!3426 = !{!3427, !3428, !3429, !3430, !3431, !3433, !3434, !3435}
!3427 = !DILocalVariable(name: "dev", arg: 1, scope: !3425, file: !3, line: 82, type: !817)
!3428 = !DILocalVariable(name: "attr", arg: 2, scope: !3425, file: !3, line: 82, type: !1774)
!3429 = !DILocalVariable(name: "buf", arg: 3, scope: !3425, file: !3, line: 83, type: !241)
!3430 = !DILocalVariable(name: "tz", scope: !3425, file: !3, line: 85, type: !142)
!3431 = !DILocalVariable(name: "__mptr", scope: !3432, file: !3, line: 85, type: !130)
!3432 = distinct !DILexicalBlock(scope: !3425, file: !3, line: 85, column: 35)
!3433 = !DILocalVariable(name: "trip", scope: !3425, file: !3, line: 86, type: !1786)
!3434 = !DILocalVariable(name: "trip_id", scope: !3425, file: !3, line: 87, type: !46)
!3435 = !DILocalVariable(name: "result", scope: !3425, file: !3, line: 87, type: !46)
!3436 = !DILocation(line: 82, column: 37, scope: !3425)
!3437 = !DILocation(line: 82, column: 67, scope: !3425)
!3438 = !DILocation(line: 83, column: 14, scope: !3425)
!3439 = !DILocation(line: 85, column: 2, scope: !3425)
!3440 = !DILocation(line: 85, column: 30, scope: !3425)
!3441 = !DILocation(line: 85, column: 35, scope: !3432)
!3442 = !DILocation(line: 85, column: 35, scope: !3425)
!3443 = !DILocation(line: 86, column: 2, scope: !3425)
!3444 = !DILocation(line: 86, column: 22, scope: !3425)
!3445 = !DILocation(line: 87, column: 2, scope: !3425)
!3446 = !DILocation(line: 87, column: 6, scope: !3425)
!3447 = !DILocation(line: 87, column: 15, scope: !3425)
!3448 = !DILocation(line: 89, column: 13, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3425, file: !3, line: 89, column: 6)
!3450 = !DILocation(line: 89, column: 19, scope: !3449)
!3451 = !DILocation(line: 89, column: 24, scope: !3449)
!3452 = !DILocation(line: 89, column: 6, scope: !3449)
!3453 = !DILocation(line: 89, column: 62, scope: !3449)
!3454 = !DILocation(line: 89, column: 6, scope: !3425)
!3455 = !DILocation(line: 90, column: 3, scope: !3449)
!3456 = !DILocation(line: 92, column: 14, scope: !3425)
!3457 = !DILocation(line: 92, column: 18, scope: !3425)
!3458 = !DILocation(line: 92, column: 2, scope: !3425)
!3459 = !DILocation(line: 94, column: 27, scope: !3460)
!3460 = distinct !DILexicalBlock(scope: !3425, file: !3, line: 94, column: 6)
!3461 = !DILocation(line: 94, column: 6, scope: !3460)
!3462 = !DILocation(line: 94, column: 6, scope: !3425)
!3463 = !DILocation(line: 95, column: 36, scope: !3460)
!3464 = !DILocation(line: 95, column: 40, scope: !3460)
!3465 = !DILocation(line: 95, column: 12, scope: !3460)
!3466 = !DILocation(line: 95, column: 10, scope: !3460)
!3467 = !DILocation(line: 95, column: 3, scope: !3460)
!3468 = !DILocation(line: 97, column: 10, scope: !3460)
!3469 = !DILocation(line: 99, column: 16, scope: !3425)
!3470 = !DILocation(line: 99, column: 20, scope: !3425)
!3471 = !DILocation(line: 99, column: 2, scope: !3425)
!3472 = !DILocation(line: 101, column: 6, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3425, file: !3, line: 101, column: 6)
!3474 = !DILocation(line: 101, column: 6, scope: !3425)
!3475 = !DILocation(line: 102, column: 10, scope: !3473)
!3476 = !DILocation(line: 102, column: 3, scope: !3473)
!3477 = !DILocation(line: 104, column: 15, scope: !3425)
!3478 = !DILocation(line: 104, column: 2, scope: !3425)
!3479 = !DILocation(line: 106, column: 18, scope: !3480)
!3480 = distinct !DILexicalBlock(scope: !3425, file: !3, line: 104, column: 21)
!3481 = !DILocation(line: 106, column: 10, scope: !3480)
!3482 = !DILocation(line: 106, column: 3, scope: !3480)
!3483 = !DILocation(line: 108, column: 18, scope: !3480)
!3484 = !DILocation(line: 108, column: 10, scope: !3480)
!3485 = !DILocation(line: 108, column: 3, scope: !3480)
!3486 = !DILocation(line: 110, column: 18, scope: !3480)
!3487 = !DILocation(line: 110, column: 10, scope: !3480)
!3488 = !DILocation(line: 110, column: 3, scope: !3480)
!3489 = !DILocation(line: 112, column: 18, scope: !3480)
!3490 = !DILocation(line: 112, column: 10, scope: !3480)
!3491 = !DILocation(line: 112, column: 3, scope: !3480)
!3492 = !DILocation(line: 114, column: 18, scope: !3480)
!3493 = !DILocation(line: 114, column: 10, scope: !3480)
!3494 = !DILocation(line: 114, column: 3, scope: !3480)
!3495 = !DILocation(line: 116, column: 1, scope: !3425)
!3496 = distinct !DISubprogram(name: "trip_point_temp_show", scope: !3, file: !3, line: 152, type: !1772, scopeLine: 154, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3497)
!3497 = !{!3498, !3499, !3500, !3501, !3502, !3504, !3505, !3506}
!3498 = !DILocalVariable(name: "dev", arg: 1, scope: !3496, file: !3, line: 152, type: !817)
!3499 = !DILocalVariable(name: "attr", arg: 2, scope: !3496, file: !3, line: 152, type: !1774)
!3500 = !DILocalVariable(name: "buf", arg: 3, scope: !3496, file: !3, line: 153, type: !241)
!3501 = !DILocalVariable(name: "tz", scope: !3496, file: !3, line: 155, type: !142)
!3502 = !DILocalVariable(name: "__mptr", scope: !3503, file: !3, line: 155, type: !130)
!3503 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 155, column: 35)
!3504 = !DILocalVariable(name: "trip", scope: !3496, file: !3, line: 156, type: !1786)
!3505 = !DILocalVariable(name: "trip_id", scope: !3496, file: !3, line: 157, type: !46)
!3506 = !DILocalVariable(name: "ret", scope: !3496, file: !3, line: 157, type: !46)
!3507 = !DILocation(line: 152, column: 37, scope: !3496)
!3508 = !DILocation(line: 152, column: 67, scope: !3496)
!3509 = !DILocation(line: 153, column: 14, scope: !3496)
!3510 = !DILocation(line: 155, column: 2, scope: !3496)
!3511 = !DILocation(line: 155, column: 30, scope: !3496)
!3512 = !DILocation(line: 155, column: 35, scope: !3503)
!3513 = !DILocation(line: 155, column: 35, scope: !3496)
!3514 = !DILocation(line: 156, column: 2, scope: !3496)
!3515 = !DILocation(line: 156, column: 22, scope: !3496)
!3516 = !DILocation(line: 157, column: 2, scope: !3496)
!3517 = !DILocation(line: 157, column: 6, scope: !3496)
!3518 = !DILocation(line: 157, column: 15, scope: !3496)
!3519 = !DILocation(line: 159, column: 13, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 159, column: 6)
!3521 = !DILocation(line: 159, column: 19, scope: !3520)
!3522 = !DILocation(line: 159, column: 24, scope: !3520)
!3523 = !DILocation(line: 159, column: 6, scope: !3520)
!3524 = !DILocation(line: 159, column: 62, scope: !3520)
!3525 = !DILocation(line: 159, column: 6, scope: !3496)
!3526 = !DILocation(line: 160, column: 3, scope: !3520)
!3527 = !DILocation(line: 162, column: 14, scope: !3496)
!3528 = !DILocation(line: 162, column: 18, scope: !3496)
!3529 = !DILocation(line: 162, column: 2, scope: !3496)
!3530 = !DILocation(line: 164, column: 27, scope: !3531)
!3531 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 164, column: 6)
!3532 = !DILocation(line: 164, column: 6, scope: !3531)
!3533 = !DILocation(line: 164, column: 6, scope: !3496)
!3534 = !DILocation(line: 165, column: 33, scope: !3531)
!3535 = !DILocation(line: 165, column: 37, scope: !3531)
!3536 = !DILocation(line: 165, column: 9, scope: !3531)
!3537 = !DILocation(line: 165, column: 7, scope: !3531)
!3538 = !DILocation(line: 165, column: 3, scope: !3531)
!3539 = !DILocation(line: 167, column: 7, scope: !3531)
!3540 = !DILocation(line: 169, column: 16, scope: !3496)
!3541 = !DILocation(line: 169, column: 20, scope: !3496)
!3542 = !DILocation(line: 169, column: 2, scope: !3496)
!3543 = !DILocation(line: 171, column: 6, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 171, column: 6)
!3545 = !DILocation(line: 171, column: 6, scope: !3496)
!3546 = !DILocation(line: 172, column: 10, scope: !3544)
!3547 = !DILocation(line: 172, column: 3, scope: !3544)
!3548 = !DILocation(line: 174, column: 17, scope: !3496)
!3549 = !DILocation(line: 174, column: 35, scope: !3496)
!3550 = !DILocation(line: 174, column: 9, scope: !3496)
!3551 = !DILocation(line: 174, column: 2, scope: !3496)
!3552 = !DILocation(line: 175, column: 1, scope: !3496)
!3553 = distinct !DISubprogram(name: "trip_point_temp_store", scope: !3, file: !3, line: 119, type: !1777, scopeLine: 121, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3554)
!3554 = !{!3555, !3556, !3557, !3558, !3559, !3560, !3562, !3563, !3564, !3565}
!3555 = !DILocalVariable(name: "dev", arg: 1, scope: !3553, file: !3, line: 119, type: !817)
!3556 = !DILocalVariable(name: "attr", arg: 2, scope: !3553, file: !3, line: 119, type: !1774)
!3557 = !DILocalVariable(name: "buf", arg: 3, scope: !3553, file: !3, line: 120, type: !155)
!3558 = !DILocalVariable(name: "count", arg: 4, scope: !3553, file: !3, line: 120, type: !288)
!3559 = !DILocalVariable(name: "tz", scope: !3553, file: !3, line: 122, type: !142)
!3560 = !DILocalVariable(name: "__mptr", scope: !3561, file: !3, line: 122, type: !130)
!3561 = distinct !DILexicalBlock(scope: !3553, file: !3, line: 122, column: 35)
!3562 = !DILocalVariable(name: "trip", scope: !3553, file: !3, line: 123, type: !1786)
!3563 = !DILocalVariable(name: "trip_id", scope: !3553, file: !3, line: 124, type: !46)
!3564 = !DILocalVariable(name: "ret", scope: !3553, file: !3, line: 124, type: !46)
!3565 = !DILabel(scope: !3553, name: "unlock", file: !3, line: 145)
!3566 = !DILocation(line: 119, column: 38, scope: !3553)
!3567 = !DILocation(line: 119, column: 68, scope: !3553)
!3568 = !DILocation(line: 120, column: 21, scope: !3553)
!3569 = !DILocation(line: 120, column: 33, scope: !3553)
!3570 = !DILocation(line: 122, column: 2, scope: !3553)
!3571 = !DILocation(line: 122, column: 30, scope: !3553)
!3572 = !DILocation(line: 122, column: 35, scope: !3561)
!3573 = !DILocation(line: 122, column: 35, scope: !3553)
!3574 = !DILocation(line: 123, column: 2, scope: !3553)
!3575 = !DILocation(line: 123, column: 22, scope: !3553)
!3576 = !DILocation(line: 124, column: 2, scope: !3553)
!3577 = !DILocation(line: 124, column: 6, scope: !3553)
!3578 = !DILocation(line: 124, column: 15, scope: !3553)
!3579 = !DILocation(line: 126, column: 13, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3553, file: !3, line: 126, column: 6)
!3581 = !DILocation(line: 126, column: 19, scope: !3580)
!3582 = !DILocation(line: 126, column: 24, scope: !3580)
!3583 = !DILocation(line: 126, column: 6, scope: !3580)
!3584 = !DILocation(line: 126, column: 62, scope: !3580)
!3585 = !DILocation(line: 126, column: 6, scope: !3553)
!3586 = !DILocation(line: 127, column: 3, scope: !3580)
!3587 = !DILocation(line: 129, column: 14, scope: !3553)
!3588 = !DILocation(line: 129, column: 18, scope: !3553)
!3589 = !DILocation(line: 129, column: 2, scope: !3553)
!3590 = !DILocation(line: 131, column: 28, scope: !3591)
!3591 = distinct !DILexicalBlock(scope: !3553, file: !3, line: 131, column: 6)
!3592 = !DILocation(line: 131, column: 7, scope: !3591)
!3593 = !DILocation(line: 131, column: 6, scope: !3553)
!3594 = !DILocation(line: 132, column: 7, scope: !3595)
!3595 = distinct !DILexicalBlock(scope: !3591, file: !3, line: 131, column: 34)
!3596 = !DILocation(line: 133, column: 3, scope: !3595)
!3597 = !DILocation(line: 136, column: 32, scope: !3553)
!3598 = !DILocation(line: 136, column: 36, scope: !3553)
!3599 = !DILocation(line: 136, column: 8, scope: !3553)
!3600 = !DILocation(line: 136, column: 6, scope: !3553)
!3601 = !DILocation(line: 137, column: 6, scope: !3602)
!3602 = distinct !DILexicalBlock(scope: !3553, file: !3, line: 137, column: 6)
!3603 = !DILocation(line: 137, column: 6, scope: !3553)
!3604 = !DILocation(line: 138, column: 3, scope: !3602)
!3605 = !DILocation(line: 140, column: 18, scope: !3553)
!3606 = !DILocation(line: 140, column: 33, scope: !3553)
!3607 = !DILocation(line: 140, column: 8, scope: !3553)
!3608 = !DILocation(line: 140, column: 6, scope: !3553)
!3609 = !DILocation(line: 141, column: 6, scope: !3610)
!3610 = distinct !DILexicalBlock(scope: !3553, file: !3, line: 141, column: 6)
!3611 = !DILocation(line: 141, column: 6, scope: !3553)
!3612 = !DILocation(line: 142, column: 3, scope: !3610)
!3613 = !DILocation(line: 144, column: 30, scope: !3553)
!3614 = !DILocation(line: 144, column: 34, scope: !3553)
!3615 = !DILocation(line: 144, column: 8, scope: !3553)
!3616 = !DILocation(line: 144, column: 6, scope: !3553)
!3617 = !DILocation(line: 144, column: 2, scope: !3553)
!3618 = !DILocation(line: 145, column: 1, scope: !3553)
!3619 = !DILocation(line: 146, column: 16, scope: !3553)
!3620 = !DILocation(line: 146, column: 20, scope: !3553)
!3621 = !DILocation(line: 146, column: 2, scope: !3553)
!3622 = !DILocation(line: 148, column: 9, scope: !3553)
!3623 = !DILocation(line: 148, column: 15, scope: !3553)
!3624 = !DILocation(line: 148, column: 21, scope: !3553)
!3625 = !DILocation(line: 148, column: 2, scope: !3553)
!3626 = !DILocation(line: 149, column: 1, scope: !3553)
!3627 = distinct !DISubprogram(name: "trip_point_hyst_show", scope: !3, file: !3, line: 211, type: !1772, scopeLine: 213, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3628)
!3628 = !{!3629, !3630, !3631, !3632, !3633, !3635, !3636, !3637}
!3629 = !DILocalVariable(name: "dev", arg: 1, scope: !3627, file: !3, line: 211, type: !817)
!3630 = !DILocalVariable(name: "attr", arg: 2, scope: !3627, file: !3, line: 211, type: !1774)
!3631 = !DILocalVariable(name: "buf", arg: 3, scope: !3627, file: !3, line: 212, type: !241)
!3632 = !DILocalVariable(name: "tz", scope: !3627, file: !3, line: 214, type: !142)
!3633 = !DILocalVariable(name: "__mptr", scope: !3634, file: !3, line: 214, type: !130)
!3634 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 214, column: 35)
!3635 = !DILocalVariable(name: "trip", scope: !3627, file: !3, line: 215, type: !1786)
!3636 = !DILocalVariable(name: "trip_id", scope: !3627, file: !3, line: 216, type: !46)
!3637 = !DILocalVariable(name: "ret", scope: !3627, file: !3, line: 216, type: !46)
!3638 = !DILocation(line: 211, column: 37, scope: !3627)
!3639 = !DILocation(line: 211, column: 67, scope: !3627)
!3640 = !DILocation(line: 212, column: 14, scope: !3627)
!3641 = !DILocation(line: 214, column: 2, scope: !3627)
!3642 = !DILocation(line: 214, column: 30, scope: !3627)
!3643 = !DILocation(line: 214, column: 35, scope: !3634)
!3644 = !DILocation(line: 214, column: 35, scope: !3627)
!3645 = !DILocation(line: 215, column: 2, scope: !3627)
!3646 = !DILocation(line: 215, column: 22, scope: !3627)
!3647 = !DILocation(line: 216, column: 2, scope: !3627)
!3648 = !DILocation(line: 216, column: 6, scope: !3627)
!3649 = !DILocation(line: 216, column: 15, scope: !3627)
!3650 = !DILocation(line: 218, column: 13, scope: !3651)
!3651 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 218, column: 6)
!3652 = !DILocation(line: 218, column: 19, scope: !3651)
!3653 = !DILocation(line: 218, column: 24, scope: !3651)
!3654 = !DILocation(line: 218, column: 6, scope: !3651)
!3655 = !DILocation(line: 218, column: 62, scope: !3651)
!3656 = !DILocation(line: 218, column: 6, scope: !3627)
!3657 = !DILocation(line: 219, column: 3, scope: !3651)
!3658 = !DILocation(line: 221, column: 14, scope: !3627)
!3659 = !DILocation(line: 221, column: 18, scope: !3627)
!3660 = !DILocation(line: 221, column: 2, scope: !3627)
!3661 = !DILocation(line: 223, column: 27, scope: !3662)
!3662 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 223, column: 6)
!3663 = !DILocation(line: 223, column: 6, scope: !3662)
!3664 = !DILocation(line: 223, column: 6, scope: !3627)
!3665 = !DILocation(line: 224, column: 33, scope: !3662)
!3666 = !DILocation(line: 224, column: 37, scope: !3662)
!3667 = !DILocation(line: 224, column: 9, scope: !3662)
!3668 = !DILocation(line: 224, column: 7, scope: !3662)
!3669 = !DILocation(line: 224, column: 3, scope: !3662)
!3670 = !DILocation(line: 226, column: 7, scope: !3662)
!3671 = !DILocation(line: 228, column: 16, scope: !3627)
!3672 = !DILocation(line: 228, column: 20, scope: !3627)
!3673 = !DILocation(line: 228, column: 2, scope: !3627)
!3674 = !DILocation(line: 230, column: 9, scope: !3627)
!3675 = !DILocation(line: 230, column: 15, scope: !3627)
!3676 = !DILocation(line: 230, column: 29, scope: !3627)
!3677 = !DILocation(line: 230, column: 47, scope: !3627)
!3678 = !DILocation(line: 230, column: 21, scope: !3627)
!3679 = !DILocation(line: 230, column: 2, scope: !3627)
!3680 = !DILocation(line: 231, column: 1, scope: !3627)
!3681 = distinct !DISubprogram(name: "trip_point_hyst_store", scope: !3, file: !3, line: 178, type: !1777, scopeLine: 180, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3682)
!3682 = !{!3683, !3684, !3685, !3686, !3687, !3688, !3690, !3691, !3692, !3693}
!3683 = !DILocalVariable(name: "dev", arg: 1, scope: !3681, file: !3, line: 178, type: !817)
!3684 = !DILocalVariable(name: "attr", arg: 2, scope: !3681, file: !3, line: 178, type: !1774)
!3685 = !DILocalVariable(name: "buf", arg: 3, scope: !3681, file: !3, line: 179, type: !155)
!3686 = !DILocalVariable(name: "count", arg: 4, scope: !3681, file: !3, line: 179, type: !288)
!3687 = !DILocalVariable(name: "tz", scope: !3681, file: !3, line: 181, type: !142)
!3688 = !DILocalVariable(name: "__mptr", scope: !3689, file: !3, line: 181, type: !130)
!3689 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 181, column: 35)
!3690 = !DILocalVariable(name: "trip", scope: !3681, file: !3, line: 182, type: !1786)
!3691 = !DILocalVariable(name: "trip_id", scope: !3681, file: !3, line: 183, type: !46)
!3692 = !DILocalVariable(name: "ret", scope: !3681, file: !3, line: 183, type: !46)
!3693 = !DILabel(scope: !3681, name: "unlock", file: !3, line: 204)
!3694 = !DILocation(line: 178, column: 38, scope: !3681)
!3695 = !DILocation(line: 178, column: 68, scope: !3681)
!3696 = !DILocation(line: 179, column: 21, scope: !3681)
!3697 = !DILocation(line: 179, column: 33, scope: !3681)
!3698 = !DILocation(line: 181, column: 2, scope: !3681)
!3699 = !DILocation(line: 181, column: 30, scope: !3681)
!3700 = !DILocation(line: 181, column: 35, scope: !3689)
!3701 = !DILocation(line: 181, column: 35, scope: !3681)
!3702 = !DILocation(line: 182, column: 2, scope: !3681)
!3703 = !DILocation(line: 182, column: 22, scope: !3681)
!3704 = !DILocation(line: 183, column: 2, scope: !3681)
!3705 = !DILocation(line: 183, column: 6, scope: !3681)
!3706 = !DILocation(line: 183, column: 15, scope: !3681)
!3707 = !DILocation(line: 185, column: 13, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 185, column: 6)
!3709 = !DILocation(line: 185, column: 19, scope: !3708)
!3710 = !DILocation(line: 185, column: 24, scope: !3708)
!3711 = !DILocation(line: 185, column: 6, scope: !3708)
!3712 = !DILocation(line: 185, column: 62, scope: !3708)
!3713 = !DILocation(line: 185, column: 6, scope: !3681)
!3714 = !DILocation(line: 186, column: 3, scope: !3708)
!3715 = !DILocation(line: 188, column: 14, scope: !3681)
!3716 = !DILocation(line: 188, column: 18, scope: !3681)
!3717 = !DILocation(line: 188, column: 2, scope: !3681)
!3718 = !DILocation(line: 190, column: 28, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 190, column: 6)
!3720 = !DILocation(line: 190, column: 7, scope: !3719)
!3721 = !DILocation(line: 190, column: 6, scope: !3681)
!3722 = !DILocation(line: 191, column: 7, scope: !3723)
!3723 = distinct !DILexicalBlock(scope: !3719, file: !3, line: 190, column: 34)
!3724 = !DILocation(line: 192, column: 3, scope: !3723)
!3725 = !DILocation(line: 195, column: 32, scope: !3681)
!3726 = !DILocation(line: 195, column: 36, scope: !3681)
!3727 = !DILocation(line: 195, column: 8, scope: !3681)
!3728 = !DILocation(line: 195, column: 6, scope: !3681)
!3729 = !DILocation(line: 196, column: 6, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 196, column: 6)
!3731 = !DILocation(line: 196, column: 6, scope: !3681)
!3732 = !DILocation(line: 197, column: 3, scope: !3730)
!3733 = !DILocation(line: 199, column: 18, scope: !3681)
!3734 = !DILocation(line: 199, column: 33, scope: !3681)
!3735 = !DILocation(line: 199, column: 8, scope: !3681)
!3736 = !DILocation(line: 199, column: 6, scope: !3681)
!3737 = !DILocation(line: 200, column: 6, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3681, file: !3, line: 200, column: 6)
!3739 = !DILocation(line: 200, column: 6, scope: !3681)
!3740 = !DILocation(line: 201, column: 3, scope: !3738)
!3741 = !DILocation(line: 203, column: 30, scope: !3681)
!3742 = !DILocation(line: 203, column: 34, scope: !3681)
!3743 = !DILocation(line: 203, column: 8, scope: !3681)
!3744 = !DILocation(line: 203, column: 6, scope: !3681)
!3745 = !DILocation(line: 203, column: 2, scope: !3681)
!3746 = !DILocation(line: 204, column: 1, scope: !3681)
!3747 = !DILocation(line: 205, column: 16, scope: !3681)
!3748 = !DILocation(line: 205, column: 20, scope: !3681)
!3749 = !DILocation(line: 205, column: 2, scope: !3681)
!3750 = !DILocation(line: 207, column: 9, scope: !3681)
!3751 = !DILocation(line: 207, column: 15, scope: !3681)
!3752 = !DILocation(line: 207, column: 21, scope: !3681)
!3753 = !DILocation(line: 207, column: 2, scope: !3681)
!3754 = !DILocation(line: 208, column: 1, scope: !3681)
!3755 = !DISubprogram(name: "sscanf", scope: !2576, file: !2576, line: 20, type: !3756, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3756 = !DISubroutineType(types: !3757)
!3757 = !{!46, !155, !155, null}
!3758 = distinct !DISubprogram(name: "device_is_registered", scope: !26, file: !26, line: 941, type: !851, scopeLine: 942, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3759)
!3759 = !{!3760}
!3760 = !DILocalVariable(name: "dev", arg: 1, scope: !3758, file: !26, line: 941, type: !817)
!3761 = !DILocation(line: 941, column: 55, scope: !3758)
!3762 = !DILocation(line: 943, column: 9, scope: !3758)
!3763 = !DILocation(line: 943, column: 14, scope: !3758)
!3764 = !DILocation(line: 943, column: 19, scope: !3758)
!3765 = !DILocation(line: 943, column: 2, scope: !3758)
!3766 = !DISubprogram(name: "__thermal_zone_get_trip", scope: !133, file: !133, line: 120, type: !3767, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3767 = !DISubroutineType(types: !3768)
!3768 = !{!46, !142, !46, !1785}
!3769 = !DISubprogram(name: "thermal_zone_set_trip", scope: !96, file: !96, line: 289, type: !3770, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3770 = !DISubroutineType(types: !3771)
!3771 = !{!46, !142, !46, !1876}
!3772 = distinct !DISubprogram(name: "cdev_type_show", scope: !3, file: !3, line: 586, type: !1772, scopeLine: 587, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3773)
!3773 = !{!3774, !3775, !3776, !3777, !3778}
!3774 = !DILocalVariable(name: "dev", arg: 1, scope: !3772, file: !3, line: 586, type: !817)
!3775 = !DILocalVariable(name: "attr", arg: 2, scope: !3772, file: !3, line: 586, type: !1774)
!3776 = !DILocalVariable(name: "buf", arg: 3, scope: !3772, file: !3, line: 586, type: !241)
!3777 = !DILocalVariable(name: "cdev", scope: !3772, file: !3, line: 588, type: !1811)
!3778 = !DILocalVariable(name: "__mptr", scope: !3779, file: !3, line: 588, type: !130)
!3779 = distinct !DILexicalBlock(scope: !3772, file: !3, line: 588, column: 40)
!3780 = !DILocation(line: 586, column: 31, scope: !3772)
!3781 = !DILocation(line: 586, column: 61, scope: !3772)
!3782 = !DILocation(line: 586, column: 73, scope: !3772)
!3783 = !DILocation(line: 588, column: 2, scope: !3772)
!3784 = !DILocation(line: 588, column: 33, scope: !3772)
!3785 = !DILocation(line: 588, column: 40, scope: !3779)
!3786 = !DILocation(line: 588, column: 40, scope: !3772)
!3787 = !DILocation(line: 590, column: 17, scope: !3772)
!3788 = !DILocation(line: 590, column: 30, scope: !3772)
!3789 = !DILocation(line: 590, column: 36, scope: !3772)
!3790 = !DILocation(line: 590, column: 9, scope: !3772)
!3791 = !DILocation(line: 591, column: 1, scope: !3772)
!3792 = !DILocation(line: 590, column: 2, scope: !3772)
!3793 = distinct !DISubprogram(name: "max_state_show", scope: !3, file: !3, line: 593, type: !1772, scopeLine: 595, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3794)
!3794 = !{!3795, !3796, !3797, !3798, !3799}
!3795 = !DILocalVariable(name: "dev", arg: 1, scope: !3793, file: !3, line: 593, type: !817)
!3796 = !DILocalVariable(name: "attr", arg: 2, scope: !3793, file: !3, line: 593, type: !1774)
!3797 = !DILocalVariable(name: "buf", arg: 3, scope: !3793, file: !3, line: 594, type: !241)
!3798 = !DILocalVariable(name: "cdev", scope: !3793, file: !3, line: 596, type: !1811)
!3799 = !DILocalVariable(name: "__mptr", scope: !3800, file: !3, line: 596, type: !130)
!3800 = distinct !DILexicalBlock(scope: !3793, file: !3, line: 596, column: 40)
!3801 = !DILocation(line: 593, column: 46, scope: !3793)
!3802 = !DILocation(line: 593, column: 76, scope: !3793)
!3803 = !DILocation(line: 594, column: 16, scope: !3793)
!3804 = !DILocation(line: 596, column: 2, scope: !3793)
!3805 = !DILocation(line: 596, column: 33, scope: !3793)
!3806 = !DILocation(line: 596, column: 40, scope: !3800)
!3807 = !DILocation(line: 596, column: 40, scope: !3793)
!3808 = !DILocation(line: 598, column: 17, scope: !3793)
!3809 = !DILocation(line: 598, column: 31, scope: !3793)
!3810 = !DILocation(line: 598, column: 37, scope: !3793)
!3811 = !DILocation(line: 598, column: 9, scope: !3793)
!3812 = !DILocation(line: 599, column: 1, scope: !3793)
!3813 = !DILocation(line: 598, column: 2, scope: !3793)
!3814 = distinct !DISubprogram(name: "cur_state_show", scope: !3, file: !3, line: 601, type: !1772, scopeLine: 603, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3815)
!3815 = !{!3816, !3817, !3818, !3819, !3820, !3822, !3823}
!3816 = !DILocalVariable(name: "dev", arg: 1, scope: !3814, file: !3, line: 601, type: !817)
!3817 = !DILocalVariable(name: "attr", arg: 2, scope: !3814, file: !3, line: 601, type: !1774)
!3818 = !DILocalVariable(name: "buf", arg: 3, scope: !3814, file: !3, line: 602, type: !241)
!3819 = !DILocalVariable(name: "cdev", scope: !3814, file: !3, line: 604, type: !1811)
!3820 = !DILocalVariable(name: "__mptr", scope: !3821, file: !3, line: 604, type: !130)
!3821 = distinct !DILexicalBlock(scope: !3814, file: !3, line: 604, column: 40)
!3822 = !DILocalVariable(name: "state", scope: !3814, file: !3, line: 605, type: !291)
!3823 = !DILocalVariable(name: "ret", scope: !3814, file: !3, line: 606, type: !46)
!3824 = !DILocation(line: 601, column: 46, scope: !3814)
!3825 = !DILocation(line: 601, column: 76, scope: !3814)
!3826 = !DILocation(line: 602, column: 16, scope: !3814)
!3827 = !DILocation(line: 604, column: 2, scope: !3814)
!3828 = !DILocation(line: 604, column: 33, scope: !3814)
!3829 = !DILocation(line: 604, column: 40, scope: !3821)
!3830 = !DILocation(line: 604, column: 40, scope: !3814)
!3831 = !DILocation(line: 605, column: 2, scope: !3814)
!3832 = !DILocation(line: 605, column: 16, scope: !3814)
!3833 = !DILocation(line: 606, column: 2, scope: !3814)
!3834 = !DILocation(line: 606, column: 6, scope: !3814)
!3835 = !DILocation(line: 608, column: 8, scope: !3814)
!3836 = !DILocation(line: 608, column: 14, scope: !3814)
!3837 = !DILocation(line: 608, column: 19, scope: !3814)
!3838 = !DILocation(line: 608, column: 33, scope: !3814)
!3839 = !DILocation(line: 608, column: 6, scope: !3814)
!3840 = !DILocation(line: 609, column: 6, scope: !3841)
!3841 = distinct !DILexicalBlock(scope: !3814, file: !3, line: 609, column: 6)
!3842 = !DILocation(line: 609, column: 6, scope: !3814)
!3843 = !DILocation(line: 610, column: 10, scope: !3841)
!3844 = !DILocation(line: 610, column: 3, scope: !3841)
!3845 = !DILocation(line: 611, column: 17, scope: !3814)
!3846 = !DILocation(line: 611, column: 31, scope: !3814)
!3847 = !DILocation(line: 611, column: 9, scope: !3814)
!3848 = !DILocation(line: 611, column: 2, scope: !3814)
!3849 = !DILocation(line: 612, column: 1, scope: !3814)
!3850 = distinct !DISubprogram(name: "cur_state_store", scope: !3, file: !3, line: 615, type: !1777, scopeLine: 617, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3851)
!3851 = !{!3852, !3853, !3854, !3855, !3856, !3857, !3859, !3860}
!3852 = !DILocalVariable(name: "dev", arg: 1, scope: !3850, file: !3, line: 615, type: !817)
!3853 = !DILocalVariable(name: "attr", arg: 2, scope: !3850, file: !3, line: 615, type: !1774)
!3854 = !DILocalVariable(name: "buf", arg: 3, scope: !3850, file: !3, line: 616, type: !155)
!3855 = !DILocalVariable(name: "count", arg: 4, scope: !3850, file: !3, line: 616, type: !288)
!3856 = !DILocalVariable(name: "cdev", scope: !3850, file: !3, line: 618, type: !1811)
!3857 = !DILocalVariable(name: "__mptr", scope: !3858, file: !3, line: 618, type: !130)
!3858 = distinct !DILexicalBlock(scope: !3850, file: !3, line: 618, column: 40)
!3859 = !DILocalVariable(name: "state", scope: !3850, file: !3, line: 619, type: !291)
!3860 = !DILocalVariable(name: "result", scope: !3850, file: !3, line: 620, type: !46)
!3861 = !DILocation(line: 615, column: 32, scope: !3850)
!3862 = !DILocation(line: 615, column: 62, scope: !3850)
!3863 = !DILocation(line: 616, column: 15, scope: !3850)
!3864 = !DILocation(line: 616, column: 27, scope: !3850)
!3865 = !DILocation(line: 618, column: 2, scope: !3850)
!3866 = !DILocation(line: 618, column: 33, scope: !3850)
!3867 = !DILocation(line: 618, column: 40, scope: !3858)
!3868 = !DILocation(line: 618, column: 40, scope: !3850)
!3869 = !DILocation(line: 619, column: 2, scope: !3850)
!3870 = !DILocation(line: 619, column: 16, scope: !3850)
!3871 = !DILocation(line: 620, column: 2, scope: !3850)
!3872 = !DILocation(line: 620, column: 6, scope: !3850)
!3873 = !DILocation(line: 622, column: 13, scope: !3874)
!3874 = distinct !DILexicalBlock(scope: !3850, file: !3, line: 622, column: 6)
!3875 = !DILocation(line: 622, column: 6, scope: !3874)
!3876 = !DILocation(line: 622, column: 35, scope: !3874)
!3877 = !DILocation(line: 622, column: 6, scope: !3850)
!3878 = !DILocation(line: 623, column: 3, scope: !3874)
!3879 = !DILocation(line: 625, column: 12, scope: !3880)
!3880 = distinct !DILexicalBlock(scope: !3850, file: !3, line: 625, column: 6)
!3881 = !DILocation(line: 625, column: 18, scope: !3880)
!3882 = !DILocation(line: 625, column: 6, scope: !3850)
!3883 = !DILocation(line: 626, column: 3, scope: !3880)
!3884 = !DILocation(line: 629, column: 6, scope: !3885)
!3885 = distinct !DILexicalBlock(scope: !3850, file: !3, line: 629, column: 6)
!3886 = !DILocation(line: 629, column: 14, scope: !3885)
!3887 = !DILocation(line: 629, column: 20, scope: !3885)
!3888 = !DILocation(line: 629, column: 12, scope: !3885)
!3889 = !DILocation(line: 629, column: 6, scope: !3850)
!3890 = !DILocation(line: 630, column: 3, scope: !3885)
!3891 = !DILocation(line: 632, column: 14, scope: !3850)
!3892 = !DILocation(line: 632, column: 20, scope: !3850)
!3893 = !DILocation(line: 632, column: 2, scope: !3850)
!3894 = !DILocation(line: 634, column: 11, scope: !3850)
!3895 = !DILocation(line: 634, column: 17, scope: !3850)
!3896 = !DILocation(line: 634, column: 22, scope: !3850)
!3897 = !DILocation(line: 634, column: 36, scope: !3850)
!3898 = !DILocation(line: 634, column: 42, scope: !3850)
!3899 = !DILocation(line: 634, column: 9, scope: !3850)
!3900 = !DILocation(line: 635, column: 7, scope: !3901)
!3901 = distinct !DILexicalBlock(scope: !3850, file: !3, line: 635, column: 6)
!3902 = !DILocation(line: 635, column: 6, scope: !3850)
!3903 = !DILocation(line: 636, column: 39, scope: !3901)
!3904 = !DILocation(line: 636, column: 45, scope: !3901)
!3905 = !DILocation(line: 636, column: 3, scope: !3901)
!3906 = !DILocation(line: 638, column: 16, scope: !3850)
!3907 = !DILocation(line: 638, column: 22, scope: !3850)
!3908 = !DILocation(line: 638, column: 2, scope: !3850)
!3909 = !DILocation(line: 639, column: 9, scope: !3850)
!3910 = !DILocation(line: 639, column: 18, scope: !3850)
!3911 = !DILocation(line: 639, column: 27, scope: !3850)
!3912 = !DILocation(line: 639, column: 2, scope: !3850)
!3913 = !DILocation(line: 640, column: 1, scope: !3850)
!3914 = distinct !DISubprogram(name: "thermal_cooling_device_stats_update", scope: !133, file: !133, line: 143, type: !3915, scopeLine: 144, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3917)
!3915 = !DISubroutineType(types: !3916)
!3916 = !{null, !1811, !291}
!3917 = !{!3918, !3919}
!3918 = !DILocalVariable(name: "cdev", arg: 1, scope: !3914, file: !133, line: 143, type: !1811)
!3919 = !DILocalVariable(name: "new_state", arg: 2, scope: !3914, file: !133, line: 144, type: !291)
!3920 = !DILocation(line: 143, column: 68, scope: !3914)
!3921 = !DILocation(line: 144, column: 23, scope: !3914)
!3922 = !DILocation(line: 144, column: 35, scope: !3914)
