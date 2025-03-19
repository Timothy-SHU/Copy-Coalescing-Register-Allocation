; ModuleID = 'drivers/acpi/fan_attr.c'
source_filename = "drivers/acpi/fan_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_fan = type { i8, %struct.acpi_fan_fif, ptr, i32, ptr, %struct.device_attribute, %struct.device_attribute }
%struct.acpi_fan_fif = type { i8, i8, i8, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.mutex = type { %struct.atomic64_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.acpi_fan_fps = type { i64, i64, i64, i64, i64, [20 x i8], %struct.device_attribute }
%struct.acpi_fan_fst = type { i64, i64, i64 }

@__UNIQUE_ID_file206 = internal constant [26 x i8] c"fan.file=drivers/acpi/fan\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_license207 = internal constant [16 x i8] c"fan.license=GPL\00", section ".modinfo", align 1, !dbg !1969
@.str = private unnamed_addr constant [19 x i8] c"fine_grain_control\00", align 1, !dbg !1972
@.str.1 = private unnamed_addr constant [14 x i8] c"fan_speed_rpm\00", align 1, !dbg !1977
@.str.2 = private unnamed_addr constant [8 x i8] c"state%d\00", align 1, !dbg !1982
@.str.3 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1, !dbg !1984
@.str.4 = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1, !dbg !1987
@.str.5 = private unnamed_addr constant [13 x i8] c"not-defined:\00", align 1, !dbg !1992
@.str.6 = private unnamed_addr constant [6 x i8] c"%lld:\00", align 1, !dbg !1997
@.str.7 = private unnamed_addr constant [13 x i8] c"not-defined\0A\00", align 1, !dbg !1999
@llvm.compiler.used = appending global [2 x ptr] [ptr @__UNIQUE_ID_file206, ptr @__UNIQUE_ID_license207], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_fan_create_attributes(ptr noundef %device) #0 align 16 !dbg !2013 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca ptr, align 8
  %fan = alloca ptr, align 8
  %i = alloca i32, align 4
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %fps = alloca ptr, align 8
  %j = alloca i32, align 4
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !2015, metadata !DIExpression()), !dbg !2046
  call void @llvm.lifetime.start.p0(i64 8, ptr %fan) #5, !dbg !2047
  call void @llvm.dbg.declare(metadata ptr %fan, metadata !2016, metadata !DIExpression()), !dbg !2048
  %0 = load ptr, ptr %device.addr, align 8, !dbg !2049
  %call = call ptr @acpi_driver_data(ptr noundef %0) #6, !dbg !2050
  store ptr %call, ptr %fan, align 8, !dbg !2048
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !2051
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2035, metadata !DIExpression()), !dbg !2052
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !2051
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2036, metadata !DIExpression()), !dbg !2053
  br label %do.body, !dbg !2054

do.body:                                          ; preds = %entry
  br label %do.cond, !dbg !2055

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2055

do.end:                                           ; preds = %do.cond
  %1 = load ptr, ptr %fan, align 8, !dbg !2057
  %fine_grain_control = getelementptr inbounds %struct.acpi_fan, ptr %1, i32 0, i32 6, !dbg !2058
  %show = getelementptr inbounds %struct.device_attribute, ptr %fine_grain_control, i32 0, i32 1, !dbg !2059
  store ptr @show_fine_grain_control, ptr %show, align 8, !dbg !2060
  %2 = load ptr, ptr %fan, align 8, !dbg !2061
  %fine_grain_control1 = getelementptr inbounds %struct.acpi_fan, ptr %2, i32 0, i32 6, !dbg !2062
  %store = getelementptr inbounds %struct.device_attribute, ptr %fine_grain_control1, i32 0, i32 2, !dbg !2063
  store ptr null, ptr %store, align 8, !dbg !2064
  %3 = load ptr, ptr %fan, align 8, !dbg !2065
  %fine_grain_control2 = getelementptr inbounds %struct.acpi_fan, ptr %3, i32 0, i32 6, !dbg !2066
  %attr = getelementptr inbounds %struct.device_attribute, ptr %fine_grain_control2, i32 0, i32 0, !dbg !2067
  %name = getelementptr inbounds %struct.attribute, ptr %attr, i32 0, i32 0, !dbg !2068
  store ptr @.str, ptr %name, align 8, !dbg !2069
  %4 = load ptr, ptr %fan, align 8, !dbg !2070
  %fine_grain_control3 = getelementptr inbounds %struct.acpi_fan, ptr %4, i32 0, i32 6, !dbg !2071
  %attr4 = getelementptr inbounds %struct.device_attribute, ptr %fine_grain_control3, i32 0, i32 0, !dbg !2072
  %mode = getelementptr inbounds %struct.attribute, ptr %attr4, i32 0, i32 1, !dbg !2073
  store i16 292, ptr %mode, align 8, !dbg !2074
  %5 = load ptr, ptr %device.addr, align 8, !dbg !2075
  %dev = getelementptr inbounds %struct.acpi_device, ptr %5, i32 0, i32 18, !dbg !2076
  %kobj = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 0, !dbg !2077
  %6 = load ptr, ptr %fan, align 8, !dbg !2078
  %fine_grain_control5 = getelementptr inbounds %struct.acpi_fan, ptr %6, i32 0, i32 6, !dbg !2079
  %attr6 = getelementptr inbounds %struct.device_attribute, ptr %fine_grain_control5, i32 0, i32 0, !dbg !2080
  %call7 = call i32 @sysfs_create_file(ptr noundef %kobj, ptr noundef %attr6) #6, !dbg !2081
  store i32 %call7, ptr %status, align 4, !dbg !2082
  %7 = load i32, ptr %status, align 4, !dbg !2083
  %tobool = icmp ne i32 %7, 0, !dbg !2083
  br i1 %tobool, label %if.then, label %if.end, !dbg !2085

if.then:                                          ; preds = %do.end
  %8 = load i32, ptr %status, align 4, !dbg !2086
  store i32 %8, ptr %retval, align 4, !dbg !2087
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup74, !dbg !2087

if.end:                                           ; preds = %do.end
  br label %do.body8, !dbg !2088

do.body8:                                         ; preds = %if.end
  br label %do.cond9, !dbg !2089

do.cond9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !2089

do.end10:                                         ; preds = %do.cond9
  %9 = load ptr, ptr %fan, align 8, !dbg !2091
  %fst_speed = getelementptr inbounds %struct.acpi_fan, ptr %9, i32 0, i32 5, !dbg !2092
  %show11 = getelementptr inbounds %struct.device_attribute, ptr %fst_speed, i32 0, i32 1, !dbg !2093
  store ptr @show_fan_speed, ptr %show11, align 8, !dbg !2094
  %10 = load ptr, ptr %fan, align 8, !dbg !2095
  %fst_speed12 = getelementptr inbounds %struct.acpi_fan, ptr %10, i32 0, i32 5, !dbg !2096
  %store13 = getelementptr inbounds %struct.device_attribute, ptr %fst_speed12, i32 0, i32 2, !dbg !2097
  store ptr null, ptr %store13, align 8, !dbg !2098
  %11 = load ptr, ptr %fan, align 8, !dbg !2099
  %fst_speed14 = getelementptr inbounds %struct.acpi_fan, ptr %11, i32 0, i32 5, !dbg !2100
  %attr15 = getelementptr inbounds %struct.device_attribute, ptr %fst_speed14, i32 0, i32 0, !dbg !2101
  %name16 = getelementptr inbounds %struct.attribute, ptr %attr15, i32 0, i32 0, !dbg !2102
  store ptr @.str.1, ptr %name16, align 8, !dbg !2103
  %12 = load ptr, ptr %fan, align 8, !dbg !2104
  %fst_speed17 = getelementptr inbounds %struct.acpi_fan, ptr %12, i32 0, i32 5, !dbg !2105
  %attr18 = getelementptr inbounds %struct.device_attribute, ptr %fst_speed17, i32 0, i32 0, !dbg !2106
  %mode19 = getelementptr inbounds %struct.attribute, ptr %attr18, i32 0, i32 1, !dbg !2107
  store i16 292, ptr %mode19, align 8, !dbg !2108
  %13 = load ptr, ptr %device.addr, align 8, !dbg !2109
  %dev20 = getelementptr inbounds %struct.acpi_device, ptr %13, i32 0, i32 18, !dbg !2110
  %kobj21 = getelementptr inbounds %struct.device, ptr %dev20, i32 0, i32 0, !dbg !2111
  %14 = load ptr, ptr %fan, align 8, !dbg !2112
  %fst_speed22 = getelementptr inbounds %struct.acpi_fan, ptr %14, i32 0, i32 5, !dbg !2113
  %attr23 = getelementptr inbounds %struct.device_attribute, ptr %fst_speed22, i32 0, i32 0, !dbg !2114
  %call24 = call i32 @sysfs_create_file(ptr noundef %kobj21, ptr noundef %attr23) #6, !dbg !2115
  store i32 %call24, ptr %status, align 4, !dbg !2116
  %15 = load i32, ptr %status, align 4, !dbg !2117
  %tobool25 = icmp ne i32 %15, 0, !dbg !2117
  br i1 %tobool25, label %if.then26, label %if.end27, !dbg !2119

if.then26:                                        ; preds = %do.end10
  br label %rem_fine_grain_attr, !dbg !2120

if.end27:                                         ; preds = %do.end10
  store i32 0, ptr %i, align 4, !dbg !2121
  br label %for.cond, !dbg !2122

for.cond:                                         ; preds = %for.inc63, %if.end27
  %16 = load i32, ptr %i, align 4, !dbg !2123
  %17 = load ptr, ptr %fan, align 8, !dbg !2124
  %fps_count = getelementptr inbounds %struct.acpi_fan, ptr %17, i32 0, i32 3, !dbg !2125
  %18 = load i32, ptr %fps_count, align 8, !dbg !2125
  %cmp = icmp slt i32 %16, %18, !dbg !2126
  br i1 %cmp, label %for.body, label %for.end65, !dbg !2127

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 8, ptr %fps) #5, !dbg !2128
  call void @llvm.dbg.declare(metadata ptr %fps, metadata !2037, metadata !DIExpression()), !dbg !2129
  %19 = load ptr, ptr %fan, align 8, !dbg !2130
  %fps28 = getelementptr inbounds %struct.acpi_fan, ptr %19, i32 0, i32 2, !dbg !2131
  %20 = load ptr, ptr %fps28, align 8, !dbg !2131
  %21 = load i32, ptr %i, align 4, !dbg !2132
  %idxprom = sext i32 %21 to i64, !dbg !2130
  %arrayidx = getelementptr %struct.acpi_fan_fps, ptr %20, i64 %idxprom, !dbg !2130
  store ptr %arrayidx, ptr %fps, align 8, !dbg !2129
  %22 = load ptr, ptr %fps, align 8, !dbg !2133
  %name29 = getelementptr inbounds %struct.acpi_fan_fps, ptr %22, i32 0, i32 5, !dbg !2134
  %arraydecay = getelementptr inbounds [20 x i8], ptr %name29, i64 0, i64 0, !dbg !2133
  %23 = load i32, ptr %i, align 4, !dbg !2135
  %call30 = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef %arraydecay, i64 noundef 20, ptr noundef @.str.2, i32 noundef %23) #6, !dbg !2136
  br label %do.body31, !dbg !2137

do.body31:                                        ; preds = %for.body
  br label %do.cond32, !dbg !2138

do.cond32:                                        ; preds = %do.body31
  br label %do.end33, !dbg !2138

do.end33:                                         ; preds = %do.cond32
  %24 = load ptr, ptr %fps, align 8, !dbg !2140
  %dev_attr = getelementptr inbounds %struct.acpi_fan_fps, ptr %24, i32 0, i32 6, !dbg !2141
  %show34 = getelementptr inbounds %struct.device_attribute, ptr %dev_attr, i32 0, i32 1, !dbg !2142
  store ptr @show_state, ptr %show34, align 8, !dbg !2143
  %25 = load ptr, ptr %fps, align 8, !dbg !2144
  %dev_attr35 = getelementptr inbounds %struct.acpi_fan_fps, ptr %25, i32 0, i32 6, !dbg !2145
  %store36 = getelementptr inbounds %struct.device_attribute, ptr %dev_attr35, i32 0, i32 2, !dbg !2146
  store ptr null, ptr %store36, align 8, !dbg !2147
  %26 = load ptr, ptr %fps, align 8, !dbg !2148
  %name37 = getelementptr inbounds %struct.acpi_fan_fps, ptr %26, i32 0, i32 5, !dbg !2149
  %arraydecay38 = getelementptr inbounds [20 x i8], ptr %name37, i64 0, i64 0, !dbg !2148
  %27 = load ptr, ptr %fps, align 8, !dbg !2150
  %dev_attr39 = getelementptr inbounds %struct.acpi_fan_fps, ptr %27, i32 0, i32 6, !dbg !2151
  %attr40 = getelementptr inbounds %struct.device_attribute, ptr %dev_attr39, i32 0, i32 0, !dbg !2152
  %name41 = getelementptr inbounds %struct.attribute, ptr %attr40, i32 0, i32 0, !dbg !2153
  store ptr %arraydecay38, ptr %name41, align 8, !dbg !2154
  %28 = load ptr, ptr %fps, align 8, !dbg !2155
  %dev_attr42 = getelementptr inbounds %struct.acpi_fan_fps, ptr %28, i32 0, i32 6, !dbg !2156
  %attr43 = getelementptr inbounds %struct.device_attribute, ptr %dev_attr42, i32 0, i32 0, !dbg !2157
  %mode44 = getelementptr inbounds %struct.attribute, ptr %attr43, i32 0, i32 1, !dbg !2158
  store i16 292, ptr %mode44, align 8, !dbg !2159
  %29 = load ptr, ptr %device.addr, align 8, !dbg !2160
  %dev45 = getelementptr inbounds %struct.acpi_device, ptr %29, i32 0, i32 18, !dbg !2161
  %kobj46 = getelementptr inbounds %struct.device, ptr %dev45, i32 0, i32 0, !dbg !2162
  %30 = load ptr, ptr %fps, align 8, !dbg !2163
  %dev_attr47 = getelementptr inbounds %struct.acpi_fan_fps, ptr %30, i32 0, i32 6, !dbg !2164
  %attr48 = getelementptr inbounds %struct.device_attribute, ptr %dev_attr47, i32 0, i32 0, !dbg !2165
  %call49 = call i32 @sysfs_create_file(ptr noundef %kobj46, ptr noundef %attr48) #6, !dbg !2166
  store i32 %call49, ptr %status, align 4, !dbg !2167
  %31 = load i32, ptr %status, align 4, !dbg !2168
  %tobool50 = icmp ne i32 %31, 0, !dbg !2168
  br i1 %tobool50, label %if.then51, label %if.end62, !dbg !2169

if.then51:                                        ; preds = %do.end33
  call void @llvm.lifetime.start.p0(i64 4, ptr %j) #5, !dbg !2170
  call void @llvm.dbg.declare(metadata ptr %j, metadata !2041, metadata !DIExpression()), !dbg !2171
  store i32 0, ptr %j, align 4, !dbg !2172
  br label %for.cond52, !dbg !2174

for.cond52:                                       ; preds = %for.inc, %if.then51
  %32 = load i32, ptr %j, align 4, !dbg !2175
  %33 = load i32, ptr %i, align 4, !dbg !2177
  %cmp53 = icmp slt i32 %32, %33, !dbg !2178
  br i1 %cmp53, label %for.body54, label %for.end, !dbg !2179

for.body54:                                       ; preds = %for.cond52
  %34 = load ptr, ptr %device.addr, align 8, !dbg !2180
  %dev55 = getelementptr inbounds %struct.acpi_device, ptr %34, i32 0, i32 18, !dbg !2181
  %kobj56 = getelementptr inbounds %struct.device, ptr %dev55, i32 0, i32 0, !dbg !2182
  %35 = load ptr, ptr %fan, align 8, !dbg !2183
  %fps57 = getelementptr inbounds %struct.acpi_fan, ptr %35, i32 0, i32 2, !dbg !2184
  %36 = load ptr, ptr %fps57, align 8, !dbg !2184
  %37 = load i32, ptr %j, align 4, !dbg !2185
  %idxprom58 = sext i32 %37 to i64, !dbg !2183
  %arrayidx59 = getelementptr %struct.acpi_fan_fps, ptr %36, i64 %idxprom58, !dbg !2183
  %dev_attr60 = getelementptr inbounds %struct.acpi_fan_fps, ptr %arrayidx59, i32 0, i32 6, !dbg !2186
  %attr61 = getelementptr inbounds %struct.device_attribute, ptr %dev_attr60, i32 0, i32 0, !dbg !2187
  call void @sysfs_remove_file(ptr noundef %kobj56, ptr noundef %attr61) #6, !dbg !2188
  br label %for.inc, !dbg !2188

for.inc:                                          ; preds = %for.body54
  %38 = load i32, ptr %j, align 4, !dbg !2189
  %inc = add i32 %38, 1, !dbg !2189
  store i32 %inc, ptr %j, align 4, !dbg !2189
  br label %for.cond52, !dbg !2190, !llvm.loop !2191

for.end:                                          ; preds = %for.cond52
  store i32 15, ptr %cleanup.dest.slot, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr %j) #5, !dbg !2195
  br label %cleanup

if.end62:                                         ; preds = %do.end33
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2196
  br label %cleanup, !dbg !2196

cleanup:                                          ; preds = %if.end62, %for.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %fps) #5, !dbg !2196
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup74 [
    i32 0, label %cleanup.cont
    i32 15, label %rem_fst_attr
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc63, !dbg !2197

for.inc63:                                        ; preds = %cleanup.cont
  %39 = load i32, ptr %i, align 4, !dbg !2198
  %inc64 = add i32 %39, 1, !dbg !2198
  store i32 %inc64, ptr %i, align 4, !dbg !2198
  br label %for.cond, !dbg !2199, !llvm.loop !2200

for.end65:                                        ; preds = %for.cond
  store i32 0, ptr %retval, align 4, !dbg !2202
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup74, !dbg !2202

rem_fst_attr:                                     ; preds = %cleanup
  call void @llvm.dbg.label(metadata !2044), !dbg !2203
  %40 = load ptr, ptr %device.addr, align 8, !dbg !2204
  %dev66 = getelementptr inbounds %struct.acpi_device, ptr %40, i32 0, i32 18, !dbg !2205
  %kobj67 = getelementptr inbounds %struct.device, ptr %dev66, i32 0, i32 0, !dbg !2206
  %41 = load ptr, ptr %fan, align 8, !dbg !2207
  %fst_speed68 = getelementptr inbounds %struct.acpi_fan, ptr %41, i32 0, i32 5, !dbg !2208
  %attr69 = getelementptr inbounds %struct.device_attribute, ptr %fst_speed68, i32 0, i32 0, !dbg !2209
  call void @sysfs_remove_file(ptr noundef %kobj67, ptr noundef %attr69) #6, !dbg !2210
  br label %rem_fine_grain_attr, !dbg !2210

rem_fine_grain_attr:                              ; preds = %rem_fst_attr, %if.then26
  call void @llvm.dbg.label(metadata !2045), !dbg !2211
  %42 = load ptr, ptr %device.addr, align 8, !dbg !2212
  %dev70 = getelementptr inbounds %struct.acpi_device, ptr %42, i32 0, i32 18, !dbg !2213
  %kobj71 = getelementptr inbounds %struct.device, ptr %dev70, i32 0, i32 0, !dbg !2214
  %43 = load ptr, ptr %fan, align 8, !dbg !2215
  %fine_grain_control72 = getelementptr inbounds %struct.acpi_fan, ptr %43, i32 0, i32 6, !dbg !2216
  %attr73 = getelementptr inbounds %struct.device_attribute, ptr %fine_grain_control72, i32 0, i32 0, !dbg !2217
  call void @sysfs_remove_file(ptr noundef %kobj71, ptr noundef %attr73) #6, !dbg !2218
  %44 = load i32, ptr %status, align 4, !dbg !2219
  store i32 %44, ptr %retval, align 4, !dbg !2220
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup74, !dbg !2220

cleanup74:                                        ; preds = %rem_fine_grain_attr, %for.end65, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !2221
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !2221
  call void @llvm.lifetime.end.p0(i64 8, ptr %fan) #5, !dbg !2221
  %45 = load i32, ptr %retval, align 4, !dbg !2221
  ret i32 %45, !dbg !2221
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_driver_data(ptr noundef %d) #3 align 16 !dbg !2222 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !2226, metadata !DIExpression()), !dbg !2227
  %0 = load ptr, ptr %d.addr, align 8, !dbg !2228
  %driver_data = getelementptr inbounds %struct.acpi_device, ptr %0, i32 0, i32 17, !dbg !2229
  %1 = load ptr, ptr %driver_data, align 8, !dbg !2229
  ret ptr %1, !dbg !2230
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @show_fine_grain_control(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2231 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %acpi_dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %fan = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2233, metadata !DIExpression()), !dbg !2240
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2234, metadata !DIExpression()), !dbg !2241
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2235, metadata !DIExpression()), !dbg !2242
  call void @llvm.lifetime.start.p0(i64 8, ptr %acpi_dev) #5, !dbg !2243
  call void @llvm.dbg.declare(metadata ptr %acpi_dev, metadata !2236, metadata !DIExpression()), !dbg !2244
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #5, !dbg !2245
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2237, metadata !DIExpression()), !dbg !2245
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2245
  store ptr %0, ptr %__mptr, align 8, !dbg !2245
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2245
  %add.ptr = getelementptr i8, ptr %1, i64 -608, !dbg !2245
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2245
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #5, !dbg !2246
  %2 = load ptr, ptr %tmp, align 8, !dbg !2245
  store ptr %2, ptr %acpi_dev, align 8, !dbg !2244
  call void @llvm.lifetime.start.p0(i64 8, ptr %fan) #5, !dbg !2247
  call void @llvm.dbg.declare(metadata ptr %fan, metadata !2239, metadata !DIExpression()), !dbg !2248
  %3 = load ptr, ptr %acpi_dev, align 8, !dbg !2249
  %call = call ptr @acpi_driver_data(ptr noundef %3) #6, !dbg !2250
  store ptr %call, ptr %fan, align 8, !dbg !2248
  %4 = load ptr, ptr %buf.addr, align 8, !dbg !2251
  %5 = load ptr, ptr %fan, align 8, !dbg !2252
  %fif = getelementptr inbounds %struct.acpi_fan, ptr %5, i32 0, i32 1, !dbg !2253
  %fine_grain_ctrl = getelementptr inbounds %struct.acpi_fan_fif, ptr %fif, i32 0, i32 1, !dbg !2254
  %6 = load i8, ptr %fine_grain_ctrl, align 1, !dbg !2254
  %conv = zext i8 %6 to i32, !dbg !2252
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %4, ptr noundef @.str.3, i32 noundef %conv) #6, !dbg !2255
  %conv2 = sext i32 %call1 to i64, !dbg !2255
  call void @llvm.lifetime.end.p0(i64 8, ptr %fan) #5, !dbg !2256
  call void @llvm.lifetime.end.p0(i64 8, ptr %acpi_dev) #5, !dbg !2256
  ret i64 %conv2, !dbg !2257
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @sysfs_create_file(ptr noundef %kobj, ptr noundef %attr) #3 align 16 !dbg !2258 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !2264, metadata !DIExpression()), !dbg !2266
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2265, metadata !DIExpression()), !dbg !2267
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !2268
  %1 = load ptr, ptr %attr.addr, align 8, !dbg !2269
  %call = call i32 @sysfs_create_file_ns(ptr noundef %0, ptr noundef %1, ptr noundef null) #6, !dbg !2270
  ret i32 %call, !dbg !2271
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @show_fan_speed(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2272 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %acpi_dev = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %fst = alloca %struct.acpi_fan_fst, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2274, metadata !DIExpression()), !dbg !2287
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2275, metadata !DIExpression()), !dbg !2288
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2276, metadata !DIExpression()), !dbg !2289
  call void @llvm.lifetime.start.p0(i64 8, ptr %acpi_dev) #5, !dbg !2290
  call void @llvm.dbg.declare(metadata ptr %acpi_dev, metadata !2277, metadata !DIExpression()), !dbg !2291
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #5, !dbg !2292
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2278, metadata !DIExpression()), !dbg !2292
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2292
  store ptr %0, ptr %__mptr, align 8, !dbg !2292
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2292
  %add.ptr = getelementptr i8, ptr %1, i64 -608, !dbg !2292
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2292
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #5, !dbg !2293
  %2 = load ptr, ptr %tmp, align 8, !dbg !2292
  store ptr %2, ptr %acpi_dev, align 8, !dbg !2291
  call void @llvm.lifetime.start.p0(i64 24, ptr %fst) #5, !dbg !2294
  call void @llvm.dbg.declare(metadata ptr %fst, metadata !2280, metadata !DIExpression()), !dbg !2295
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #5, !dbg !2296
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2286, metadata !DIExpression()), !dbg !2297
  %3 = load ptr, ptr %acpi_dev, align 8, !dbg !2298
  %call = call i32 @acpi_fan_get_fst(ptr noundef %3, ptr noundef %fst) #6, !dbg !2299
  store i32 %call, ptr %status, align 4, !dbg !2300
  %4 = load i32, ptr %status, align 4, !dbg !2301
  %tobool = icmp ne i32 %4, 0, !dbg !2301
  br i1 %tobool, label %if.then, label %if.end, !dbg !2303

if.then:                                          ; preds = %entry
  %5 = load i32, ptr %status, align 4, !dbg !2304
  %conv = sext i32 %5 to i64, !dbg !2304
  store i64 %conv, ptr %retval, align 8, !dbg !2305
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2305

if.end:                                           ; preds = %entry
  %6 = load ptr, ptr %buf.addr, align 8, !dbg !2306
  %speed = getelementptr inbounds %struct.acpi_fan_fst, ptr %fst, i32 0, i32 2, !dbg !2307
  %7 = load i64, ptr %speed, align 8, !dbg !2307
  %call1 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %6, ptr noundef @.str.4, i64 noundef %7) #6, !dbg !2308
  %conv2 = sext i32 %call1 to i64, !dbg !2308
  store i64 %conv2, ptr %retval, align 8, !dbg !2309
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2309

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #5, !dbg !2310
  call void @llvm.lifetime.end.p0(i64 24, ptr %fst) #5, !dbg !2310
  call void @llvm.lifetime.end.p0(i64 8, ptr %acpi_dev) #5, !dbg !2310
  %8 = load i64, ptr %retval, align 8, !dbg !2310
  ret i64 %8, !dbg !2310
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2311 dso_local i32 @snprintf(ptr noundef, i64 noundef, ptr noundef, ...) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @show_state(ptr noundef %dev, ptr noundef %attr, ptr noundef %buf) #0 align 16 !dbg !2315 {
entry:
  %dev.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  %buf.addr = alloca ptr, align 8
  %fps = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %count = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2317, metadata !DIExpression()), !dbg !2324
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2318, metadata !DIExpression()), !dbg !2325
  store ptr %buf, ptr %buf.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %buf.addr, metadata !2319, metadata !DIExpression()), !dbg !2326
  call void @llvm.lifetime.start.p0(i64 8, ptr %fps) #5, !dbg !2327
  call void @llvm.dbg.declare(metadata ptr %fps, metadata !2320, metadata !DIExpression()), !dbg !2328
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #5, !dbg !2329
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2321, metadata !DIExpression()), !dbg !2329
  %0 = load ptr, ptr %attr.addr, align 8, !dbg !2329
  store ptr %0, ptr %__mptr, align 8, !dbg !2329
  %1 = load ptr, ptr %__mptr, align 8, !dbg !2329
  %add.ptr = getelementptr i8, ptr %1, i64 -64, !dbg !2329
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2329
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #5, !dbg !2330
  %2 = load ptr, ptr %tmp, align 8, !dbg !2329
  store ptr %2, ptr %fps, align 8, !dbg !2328
  call void @llvm.lifetime.start.p0(i64 4, ptr %count) #5, !dbg !2331
  call void @llvm.dbg.declare(metadata ptr %count, metadata !2323, metadata !DIExpression()), !dbg !2332
  %3 = load ptr, ptr %fps, align 8, !dbg !2333
  %control = getelementptr inbounds %struct.acpi_fan_fps, ptr %3, i32 0, i32 0, !dbg !2335
  %4 = load i64, ptr %control, align 8, !dbg !2335
  %cmp = icmp eq i64 %4, 4294967295, !dbg !2336
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2337

lor.lhs.false:                                    ; preds = %entry
  %5 = load ptr, ptr %fps, align 8, !dbg !2338
  %control1 = getelementptr inbounds %struct.acpi_fan_fps, ptr %5, i32 0, i32 0, !dbg !2339
  %6 = load i64, ptr %control1, align 8, !dbg !2339
  %cmp2 = icmp ugt i64 %6, 100, !dbg !2340
  br i1 %cmp2, label %if.then, label %if.else, !dbg !2341

if.then:                                          ; preds = %lor.lhs.false, %entry
  %7 = load ptr, ptr %buf.addr, align 8, !dbg !2342
  %call = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %7, i64 noundef 4096, ptr noundef @.str.5) #6, !dbg !2343
  store i32 %call, ptr %count, align 4, !dbg !2344
  br label %if.end, !dbg !2345

if.else:                                          ; preds = %lor.lhs.false
  %8 = load ptr, ptr %buf.addr, align 8, !dbg !2346
  %9 = load ptr, ptr %fps, align 8, !dbg !2347
  %control3 = getelementptr inbounds %struct.acpi_fan_fps, ptr %9, i32 0, i32 0, !dbg !2348
  %10 = load i64, ptr %control3, align 8, !dbg !2348
  %call4 = call i32 (ptr, i64, ptr, ...) @scnprintf(ptr noundef %8, i64 noundef 4096, ptr noundef @.str.6, i64 noundef %10) #6, !dbg !2349
  store i32 %call4, ptr %count, align 4, !dbg !2350
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %11 = load ptr, ptr %fps, align 8, !dbg !2351
  %trip_point = getelementptr inbounds %struct.acpi_fan_fps, ptr %11, i32 0, i32 1, !dbg !2353
  %12 = load i64, ptr %trip_point, align 8, !dbg !2353
  %cmp5 = icmp eq i64 %12, 4294967295, !dbg !2354
  br i1 %cmp5, label %if.then9, label %lor.lhs.false6, !dbg !2355

lor.lhs.false6:                                   ; preds = %if.end
  %13 = load ptr, ptr %fps, align 8, !dbg !2356
  %trip_point7 = getelementptr inbounds %struct.acpi_fan_fps, ptr %13, i32 0, i32 1, !dbg !2357
  %14 = load i64, ptr %trip_point7, align 8, !dbg !2357
  %cmp8 = icmp ugt i64 %14, 9, !dbg !2358
  br i1 %cmp8, label %if.then9, label %if.else11, !dbg !2359

if.then9:                                         ; preds = %lor.lhs.false6, %if.end
  %15 = load ptr, ptr %buf.addr, align 8, !dbg !2360
  %16 = load i32, ptr %count, align 4, !dbg !2361
  %call10 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %15, i32 noundef %16, ptr noundef @.str.5) #6, !dbg !2362
  %17 = load i32, ptr %count, align 4, !dbg !2363
  %add = add i32 %17, %call10, !dbg !2363
  store i32 %add, ptr %count, align 4, !dbg !2363
  br label %if.end15, !dbg !2364

if.else11:                                        ; preds = %lor.lhs.false6
  %18 = load ptr, ptr %buf.addr, align 8, !dbg !2365
  %19 = load i32, ptr %count, align 4, !dbg !2366
  %20 = load ptr, ptr %fps, align 8, !dbg !2367
  %trip_point12 = getelementptr inbounds %struct.acpi_fan_fps, ptr %20, i32 0, i32 1, !dbg !2368
  %21 = load i64, ptr %trip_point12, align 8, !dbg !2368
  %call13 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %18, i32 noundef %19, ptr noundef @.str.6, i64 noundef %21) #6, !dbg !2369
  %22 = load i32, ptr %count, align 4, !dbg !2370
  %add14 = add i32 %22, %call13, !dbg !2370
  store i32 %add14, ptr %count, align 4, !dbg !2370
  br label %if.end15

if.end15:                                         ; preds = %if.else11, %if.then9
  %23 = load ptr, ptr %fps, align 8, !dbg !2371
  %speed = getelementptr inbounds %struct.acpi_fan_fps, ptr %23, i32 0, i32 2, !dbg !2373
  %24 = load i64, ptr %speed, align 8, !dbg !2373
  %cmp16 = icmp eq i64 %24, 4294967295, !dbg !2374
  br i1 %cmp16, label %if.then17, label %if.else20, !dbg !2375

if.then17:                                        ; preds = %if.end15
  %25 = load ptr, ptr %buf.addr, align 8, !dbg !2376
  %26 = load i32, ptr %count, align 4, !dbg !2377
  %call18 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %25, i32 noundef %26, ptr noundef @.str.5) #6, !dbg !2378
  %27 = load i32, ptr %count, align 4, !dbg !2379
  %add19 = add i32 %27, %call18, !dbg !2379
  store i32 %add19, ptr %count, align 4, !dbg !2379
  br label %if.end24, !dbg !2380

if.else20:                                        ; preds = %if.end15
  %28 = load ptr, ptr %buf.addr, align 8, !dbg !2381
  %29 = load i32, ptr %count, align 4, !dbg !2382
  %30 = load ptr, ptr %fps, align 8, !dbg !2383
  %speed21 = getelementptr inbounds %struct.acpi_fan_fps, ptr %30, i32 0, i32 2, !dbg !2384
  %31 = load i64, ptr %speed21, align 8, !dbg !2384
  %call22 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %28, i32 noundef %29, ptr noundef @.str.6, i64 noundef %31) #6, !dbg !2385
  %32 = load i32, ptr %count, align 4, !dbg !2386
  %add23 = add i32 %32, %call22, !dbg !2386
  store i32 %add23, ptr %count, align 4, !dbg !2386
  br label %if.end24

if.end24:                                         ; preds = %if.else20, %if.then17
  %33 = load ptr, ptr %fps, align 8, !dbg !2387
  %noise_level = getelementptr inbounds %struct.acpi_fan_fps, ptr %33, i32 0, i32 3, !dbg !2389
  %34 = load i64, ptr %noise_level, align 8, !dbg !2389
  %cmp25 = icmp eq i64 %34, 4294967295, !dbg !2390
  br i1 %cmp25, label %if.then26, label %if.else29, !dbg !2391

if.then26:                                        ; preds = %if.end24
  %35 = load ptr, ptr %buf.addr, align 8, !dbg !2392
  %36 = load i32, ptr %count, align 4, !dbg !2393
  %call27 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %35, i32 noundef %36, ptr noundef @.str.5) #6, !dbg !2394
  %37 = load i32, ptr %count, align 4, !dbg !2395
  %add28 = add i32 %37, %call27, !dbg !2395
  store i32 %add28, ptr %count, align 4, !dbg !2395
  br label %if.end33, !dbg !2396

if.else29:                                        ; preds = %if.end24
  %38 = load ptr, ptr %buf.addr, align 8, !dbg !2397
  %39 = load i32, ptr %count, align 4, !dbg !2398
  %40 = load ptr, ptr %fps, align 8, !dbg !2399
  %noise_level30 = getelementptr inbounds %struct.acpi_fan_fps, ptr %40, i32 0, i32 3, !dbg !2400
  %41 = load i64, ptr %noise_level30, align 8, !dbg !2400
  %mul = mul i64 %41, 100, !dbg !2401
  %call31 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %38, i32 noundef %39, ptr noundef @.str.6, i64 noundef %mul) #6, !dbg !2402
  %42 = load i32, ptr %count, align 4, !dbg !2403
  %add32 = add i32 %42, %call31, !dbg !2403
  store i32 %add32, ptr %count, align 4, !dbg !2403
  br label %if.end33

if.end33:                                         ; preds = %if.else29, %if.then26
  %43 = load ptr, ptr %fps, align 8, !dbg !2404
  %power = getelementptr inbounds %struct.acpi_fan_fps, ptr %43, i32 0, i32 4, !dbg !2406
  %44 = load i64, ptr %power, align 8, !dbg !2406
  %cmp34 = icmp eq i64 %44, 4294967295, !dbg !2407
  br i1 %cmp34, label %if.then35, label %if.else38, !dbg !2408

if.then35:                                        ; preds = %if.end33
  %45 = load ptr, ptr %buf.addr, align 8, !dbg !2409
  %46 = load i32, ptr %count, align 4, !dbg !2410
  %call36 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %45, i32 noundef %46, ptr noundef @.str.7) #6, !dbg !2411
  %47 = load i32, ptr %count, align 4, !dbg !2412
  %add37 = add i32 %47, %call36, !dbg !2412
  store i32 %add37, ptr %count, align 4, !dbg !2412
  br label %if.end42, !dbg !2413

if.else38:                                        ; preds = %if.end33
  %48 = load ptr, ptr %buf.addr, align 8, !dbg !2414
  %49 = load i32, ptr %count, align 4, !dbg !2415
  %50 = load ptr, ptr %fps, align 8, !dbg !2416
  %power39 = getelementptr inbounds %struct.acpi_fan_fps, ptr %50, i32 0, i32 4, !dbg !2417
  %51 = load i64, ptr %power39, align 8, !dbg !2417
  %call40 = call i32 (ptr, i32, ptr, ...) @sysfs_emit_at(ptr noundef %48, i32 noundef %49, ptr noundef @.str.4, i64 noundef %51) #6, !dbg !2418
  %52 = load i32, ptr %count, align 4, !dbg !2419
  %add41 = add i32 %52, %call40, !dbg !2419
  store i32 %add41, ptr %count, align 4, !dbg !2419
  br label %if.end42

if.end42:                                         ; preds = %if.else38, %if.then35
  %53 = load i32, ptr %count, align 4, !dbg !2420
  %conv = sext i32 %53 to i64, !dbg !2420
  call void @llvm.lifetime.end.p0(i64 4, ptr %count) #5, !dbg !2421
  call void @llvm.lifetime.end.p0(i64 8, ptr %fps) #5, !dbg !2421
  ret i64 %conv, !dbg !2422
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @sysfs_remove_file(ptr noundef %kobj, ptr noundef %attr) #3 align 16 !dbg !2423 {
entry:
  %kobj.addr = alloca ptr, align 8
  %attr.addr = alloca ptr, align 8
  store ptr %kobj, ptr %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %kobj.addr, metadata !2427, metadata !DIExpression()), !dbg !2429
  store ptr %attr, ptr %attr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %attr.addr, metadata !2428, metadata !DIExpression()), !dbg !2430
  %0 = load ptr, ptr %kobj.addr, align 8, !dbg !2431
  %1 = load ptr, ptr %attr.addr, align 8, !dbg !2432
  call void @sysfs_remove_file_ns(ptr noundef %0, ptr noundef %1, ptr noundef null) #6, !dbg !2433
  ret void, !dbg !2434
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden void @acpi_fan_delete_attributes(ptr noundef %device) #0 align 16 !dbg !2435 {
entry:
  %device.addr = alloca ptr, align 8
  %fan = alloca ptr, align 8
  %i = alloca i32, align 4
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !2437, metadata !DIExpression()), !dbg !2440
  call void @llvm.lifetime.start.p0(i64 8, ptr %fan) #5, !dbg !2441
  call void @llvm.dbg.declare(metadata ptr %fan, metadata !2438, metadata !DIExpression()), !dbg !2442
  %0 = load ptr, ptr %device.addr, align 8, !dbg !2443
  %call = call ptr @acpi_driver_data(ptr noundef %0) #6, !dbg !2444
  store ptr %call, ptr %fan, align 8, !dbg !2442
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #5, !dbg !2445
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2439, metadata !DIExpression()), !dbg !2446
  store i32 0, ptr %i, align 4, !dbg !2447
  br label %for.cond, !dbg !2449

for.cond:                                         ; preds = %for.inc, %entry
  %1 = load i32, ptr %i, align 4, !dbg !2450
  %2 = load ptr, ptr %fan, align 8, !dbg !2452
  %fps_count = getelementptr inbounds %struct.acpi_fan, ptr %2, i32 0, i32 3, !dbg !2453
  %3 = load i32, ptr %fps_count, align 8, !dbg !2453
  %cmp = icmp slt i32 %1, %3, !dbg !2454
  br i1 %cmp, label %for.body, label %for.end, !dbg !2455

for.body:                                         ; preds = %for.cond
  %4 = load ptr, ptr %device.addr, align 8, !dbg !2456
  %dev = getelementptr inbounds %struct.acpi_device, ptr %4, i32 0, i32 18, !dbg !2457
  %kobj = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 0, !dbg !2458
  %5 = load ptr, ptr %fan, align 8, !dbg !2459
  %fps = getelementptr inbounds %struct.acpi_fan, ptr %5, i32 0, i32 2, !dbg !2460
  %6 = load ptr, ptr %fps, align 8, !dbg !2460
  %7 = load i32, ptr %i, align 4, !dbg !2461
  %idxprom = sext i32 %7 to i64, !dbg !2459
  %arrayidx = getelementptr %struct.acpi_fan_fps, ptr %6, i64 %idxprom, !dbg !2459
  %dev_attr = getelementptr inbounds %struct.acpi_fan_fps, ptr %arrayidx, i32 0, i32 6, !dbg !2462
  %attr = getelementptr inbounds %struct.device_attribute, ptr %dev_attr, i32 0, i32 0, !dbg !2463
  call void @sysfs_remove_file(ptr noundef %kobj, ptr noundef %attr) #6, !dbg !2464
  br label %for.inc, !dbg !2464

for.inc:                                          ; preds = %for.body
  %8 = load i32, ptr %i, align 4, !dbg !2465
  %inc = add i32 %8, 1, !dbg !2465
  store i32 %inc, ptr %i, align 4, !dbg !2465
  br label %for.cond, !dbg !2466, !llvm.loop !2467

for.end:                                          ; preds = %for.cond
  %9 = load ptr, ptr %device.addr, align 8, !dbg !2469
  %dev1 = getelementptr inbounds %struct.acpi_device, ptr %9, i32 0, i32 18, !dbg !2470
  %kobj2 = getelementptr inbounds %struct.device, ptr %dev1, i32 0, i32 0, !dbg !2471
  %10 = load ptr, ptr %fan, align 8, !dbg !2472
  %fst_speed = getelementptr inbounds %struct.acpi_fan, ptr %10, i32 0, i32 5, !dbg !2473
  %attr3 = getelementptr inbounds %struct.device_attribute, ptr %fst_speed, i32 0, i32 0, !dbg !2474
  call void @sysfs_remove_file(ptr noundef %kobj2, ptr noundef %attr3) #6, !dbg !2475
  %11 = load ptr, ptr %device.addr, align 8, !dbg !2476
  %dev4 = getelementptr inbounds %struct.acpi_device, ptr %11, i32 0, i32 18, !dbg !2477
  %kobj5 = getelementptr inbounds %struct.device, ptr %dev4, i32 0, i32 0, !dbg !2478
  %12 = load ptr, ptr %fan, align 8, !dbg !2479
  %fine_grain_control = getelementptr inbounds %struct.acpi_fan, ptr %12, i32 0, i32 6, !dbg !2480
  %attr6 = getelementptr inbounds %struct.device_attribute, ptr %fine_grain_control, i32 0, i32 0, !dbg !2481
  call void @sysfs_remove_file(ptr noundef %kobj5, ptr noundef %attr6) #6, !dbg !2482
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #5, !dbg !2483
  call void @llvm.lifetime.end.p0(i64 8, ptr %fan) #5, !dbg !2483
  ret void, !dbg !2483
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2484 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2487 dso_local i32 @sysfs_create_file_ns(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2490 dso_local i32 @acpi_fan_get_fst(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2494 dso_local i32 @scnprintf(ptr noundef, i64 noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2495 dso_local i32 @sysfs_emit_at(ptr noundef, i32 noundef, ptr noundef, ...) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2498 dso_local void @sysfs_remove_file_ns(ptr noundef, ptr noundef, ptr noundef) #4

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011}
!llvm.ident = !{!2012}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file206", scope: !2, file: !3, line: 17, type: !2001, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/.fan_attr.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/acpi/fan\22 -D KBUILD_BASENAME=\22fan_attr\22 -D KBUILD_MODNAME=\22fan\22 -D __KBUILD_MODNAME=kmod_fan -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/fan_attr.ll drivers/acpi/fan_attr.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !84, globals: !1968, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/fan_attr.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "54170cc43103012f244017c8a7750028")
!4 = !{!5, !12, !19, !25, !32, !37, !45, !53, !62, !67, !72, !78}
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
!84 = !{!85, !86, !1945}
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !88, line: 367, size: 11200, elements: !89)
!88 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "745f031e2ee183d2395bab1bfe3ce66b")
!89 = !{!90, !95, !96, !99, !1690, !1691, !1692, !1701, !1719, !1798, !1828, !1852, !1873, !1879, !1888, !1920, !1934, !1938, !1939, !1940, !1941, !1942, !1943, !1944}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "pld_crc", scope: !87, file: !88, line: 368, baseType: !91, size: 32)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !92, line: 21, baseType: !93)
!92 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!93 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !94, line: 27, baseType: !7)
!94 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!95 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !87, file: !88, line: 369, baseType: !46, size: 32, offset: 32)
!96 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !87, file: !88, line: 370, baseType: !97, size: 64, offset: 64)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !98, line: 424, baseType: !85)
!98 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!99 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !87, file: !88, line: 371, baseType: !100, size: 512, offset: 128)
!100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !101, line: 41, size: 512, elements: !102)
!101 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!102 = !{!103, !105, !1686, !1687, !1688, !1689}
!103 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !100, file: !101, line: 42, baseType: !104, size: 64)
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !100, file: !101, line: 43, baseType: !106, size: 64, offset: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !101, line: 125, size: 1408, elements: !109)
!109 = !{!110, !114, !118, !127, !1616, !1617, !1621, !1625, !1629, !1633, !1637, !1638, !1642, !1646, !1650, !1661, !1662, !1663, !1664, !1674, !1678, !1682}
!110 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !108, file: !101, line: 126, baseType: !111, size: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{!104, !104}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !108, file: !101, line: 127, baseType: !115, size: 64, offset: 64)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{null, !104}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !108, file: !101, line: 128, baseType: !119, size: 64, offset: 128)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = !DISubroutineType(types: !121)
!121 = !{!122, !125}
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !123, line: 35, baseType: !124)
!123 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!124 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !108, file: !101, line: 129, baseType: !128, size: 64, offset: 192)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{!131, !125, !133}
!131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !135)
!135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !136)
!136 = !{!137, !798, !800, !803, !804, !855, !1321, !1322, !1323, !1324, !1325, !1332, !1502, !1515, !1525, !1529, !1531, !1532, !1533, !1537, !1544, !1545, !1548, !1551, !1555, !1556, !1557, !1560, !1561, !1562, !1563, !1593, !1594, !1595, !1598, !1601, !1610, !1611, !1612, !1613, !1614, !1615}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !135, file: !26, line: 706, baseType: !138, size: 512)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !139, line: 64, size: 512, elements: !140)
!139 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!140 = !{!141, !145, !151, !153, !240, !668, !783, !793, !794, !795, !796, !797}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !138, file: !139, line: 65, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!144 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !138, file: !139, line: 66, baseType: !146, size: 128, offset: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !123, line: 190, size: 128, elements: !147)
!147 = !{!148, !150}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !146, file: !123, line: 191, baseType: !149, size: 64)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !146, file: !123, line: 191, baseType: !149, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !138, file: !139, line: 67, baseType: !152, size: 64, offset: 192)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !138, file: !139, line: 68, baseType: !154, size: 64, offset: 256)
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !155, size: 64)
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !139, line: 168, size: 768, elements: !156)
!156 = !{!157, !158, !199, !200}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !155, file: !139, line: 169, baseType: !146, size: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !155, file: !139, line: 170, baseType: !159, size: 32, offset: 128)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !160, line: 29, baseType: !161)
!160 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !160, line: 17, size: 32, elements: !162)
!162 = !{!163}
!163 = !DIDerivedType(tag: DW_TAG_member, scope: !161, file: !160, line: 18, baseType: !164, size: 32)
!164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !161, file: !160, line: 18, size: 32, elements: !165)
!165 = !{!166}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !164, file: !160, line: 19, baseType: !167, size: 32)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !168, line: 14, size: 32, elements: !169)
!168 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!169 = !{!170}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !167, file: !168, line: 15, baseType: !171, size: 32)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !172, line: 44, baseType: !173)
!172 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !172, line: 14, size: 32, elements: !174)
!174 = !{!175}
!175 = !DIDerivedType(tag: DW_TAG_member, scope: !173, file: !172, line: 15, baseType: !176, size: 32)
!176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !173, file: !172, line: 15, size: 32, elements: !177)
!177 = !{!178, !183, !191}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !176, file: !172, line: 16, baseType: !179, size: 32)
!179 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !123, line: 174, baseType: !180)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !123, line: 172, size: 32, elements: !181)
!181 = !{!182}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !180, file: !123, line: 173, baseType: !46, size: 32)
!183 = !DIDerivedType(tag: DW_TAG_member, scope: !176, file: !172, line: 24, baseType: !184, size: 16)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !176, file: !172, line: 24, size: 16, elements: !185)
!185 = !{!186, !190}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !184, file: !172, line: 25, baseType: !187, size: 8)
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !92, line: 17, baseType: !188)
!188 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !94, line: 21, baseType: !189)
!189 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !184, file: !172, line: 26, baseType: !187, size: 8, offset: 8)
!191 = !DIDerivedType(tag: DW_TAG_member, scope: !176, file: !172, line: 28, baseType: !192, size: 32)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !176, file: !172, line: 28, size: 32, elements: !193)
!193 = !{!194, !198}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !192, file: !172, line: 29, baseType: !195, size: 16)
!195 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !92, line: 19, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !94, line: 24, baseType: !197)
!197 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !192, file: !172, line: 30, baseType: !195, size: 16, offset: 16)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !155, file: !139, line: 171, baseType: !138, size: 512, offset: 192)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !155, file: !139, line: 172, baseType: !201, size: 64, offset: 704)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !139, line: 133, size: 192, elements: !204)
!204 = !{!205, !212, !217}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !203, file: !139, line: 134, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!46, !210}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !203, file: !139, line: 135, baseType: !213, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DISubroutineType(types: !216)
!216 = !{!142, !210}
!217 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !203, file: !139, line: 136, baseType: !218, size: 64, offset: 128)
!218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{!46, !210, !222}
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !139, line: 125, size: 20736, elements: !224)
!224 = !{!225, !230, !234, !235, !239}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !223, file: !139, line: 126, baseType: !226, size: 192)
!226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 192, elements: !228)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!228 = !{!229}
!229 = !DISubrange(count: 3)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !223, file: !139, line: 127, baseType: !231, size: 4096, offset: 192)
!231 = !DICompositeType(tag: DW_TAG_array_type, baseType: !227, size: 4096, elements: !232)
!232 = !{!233}
!233 = !DISubrange(count: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !223, file: !139, line: 128, baseType: !46, size: 32, offset: 4288)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !223, file: !139, line: 129, baseType: !236, size: 16384, offset: 4320)
!236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 16384, elements: !237)
!237 = !{!238}
!238 = !DISubrange(count: 2048)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !223, file: !139, line: 130, baseType: !46, size: 32, offset: 20704)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !138, file: !139, line: 69, baseType: !241, size: 64, offset: 320)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !243)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !139, line: 116, size: 384, elements: !244)
!244 = !{!245, !249, !278, !615, !646, !650}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !243, file: !139, line: 117, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{null, !152}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !243, file: !139, line: 118, baseType: !250, size: 64, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !252)
!252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !253, line: 254, size: 128, elements: !254)
!253 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!254 = !{!255, !270}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !252, file: !253, line: 255, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!259, !152, !264, !227}
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !123, line: 66, baseType: !260)
!260 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !261, line: 73, baseType: !262)
!261 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !261, line: 15, baseType: !263)
!263 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !253, line: 30, size: 128, elements: !266)
!266 = !{!267, !268}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !265, file: !253, line: 31, baseType: !142, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !265, file: !253, line: 32, baseType: !269, size: 16, offset: 64)
!269 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !123, line: 24, baseType: !197)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !252, file: !253, line: 256, baseType: !271, size: 64, offset: 64)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!259, !152, !264, !142, !274}
!274 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !123, line: 61, baseType: !275)
!275 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !261, line: 72, baseType: !276)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !261, line: 16, baseType: !277)
!277 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !243, file: !139, line: 119, baseType: !279, size: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !253, line: 84, size: 320, elements: !283)
!283 = !{!284, !285, !289, !611, !613}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !282, file: !253, line: 85, baseType: !142, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !282, file: !253, line: 86, baseType: !286, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !287, size: 64)
!287 = !DISubroutineType(types: !288)
!288 = !{!269, !152, !264, !46}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !282, file: !253, line: 88, baseType: !290, size: 64, offset: 128)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{!269, !152, !293, !46}
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !253, line: 175, size: 512, elements: !295)
!295 = !{!296, !297, !298, !299, !306, !316, !317}
!296 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !294, file: !253, line: 176, baseType: !265, size: 128)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !294, file: !253, line: 177, baseType: !274, size: 64, offset: 128)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !294, file: !253, line: 178, baseType: !85, size: 64, offset: 192)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !294, file: !253, line: 179, baseType: !300, size: 64, offset: 256)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!303}
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !304, size: 64)
!304 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !305, line: 32, flags: DIFlagFwdDecl)
!305 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!306 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !294, file: !253, line: 180, baseType: !307, size: 64, offset: 320)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!259, !310, !152, !293, !227, !313, !274}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !312, line: 537, flags: DIFlagFwdDecl)
!312 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !123, line: 52, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !261, line: 88, baseType: !315)
!315 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !294, file: !253, line: 182, baseType: !307, size: 64, offset: 384)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !294, file: !253, line: 184, baseType: !318, size: 64, offset: 448)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{!46, !310, !152, !293, !321}
!321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !305, line: 625, size: 1344, elements: !323)
!323 = !{!324, !341, !562, !568, !575, !576, !581, !582, !594, !595, !598, !602, !603, !604, !605, !606, !609}
!324 = !DIDerivedType(tag: DW_TAG_member, scope: !322, file: !305, line: 628, baseType: !325, size: 128)
!325 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !322, file: !305, line: 628, size: 128, elements: !326)
!326 = !{!327, !332}
!327 = !DIDerivedType(tag: DW_TAG_member, scope: !325, file: !305, line: 629, baseType: !328, size: 128)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !325, file: !305, line: 629, size: 128, elements: !329)
!329 = !{!330, !331}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !328, file: !305, line: 631, baseType: !277, size: 64)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !328, file: !305, line: 632, baseType: !277, size: 64, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !325, file: !305, line: 635, baseType: !333, size: 128, align: 64)
!333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !123, line: 232, size: 128, align: 64, elements: !334)
!334 = !{!335, !337}
!335 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !333, file: !123, line: 233, baseType: !336, size: 64)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !333, size: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !333, file: !123, line: 234, baseType: !338, size: 64, offset: 64)
!338 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !339, size: 64)
!339 = !DISubroutineType(types: !340)
!340 = !{null, !336}
!341 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !322, file: !305, line: 639, baseType: !342, size: 64, offset: 128)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !305, line: 733, size: 10240, elements: !344)
!344 = !{!345, !558}
!345 = !DIDerivedType(tag: DW_TAG_member, scope: !343, file: !305, line: 734, baseType: !346, size: 10240)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !343, file: !305, line: 734, size: 10240, elements: !347)
!347 = !{!348, !352, !366, !370, !371, !372, !373, !374, !375, !383, !384, !385, !394, !395, !404, !405, !406, !420, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !437, !438, !439, !440, !441, !442, !443, !444, !445, !446, !447, !448, !449, !453, !467, !470, !523, !524, !525, !528, !532, !533, !536, !537, !538, !545, !546}
!348 = !DIDerivedType(tag: DW_TAG_member, scope: !346, file: !305, line: 739, baseType: !349, size: 512, align: 512)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !346, file: !305, line: 739, size: 512, align: 512, elements: !350)
!350 = !{!351}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !349, file: !305, line: 747, baseType: !179, size: 32)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !346, file: !305, line: 750, baseType: !353, size: 128, offset: 512)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !354, line: 218, size: 128, elements: !355)
!354 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!355 = !{!356, !364, !365}
!356 = !DIDerivedType(tag: DW_TAG_member, scope: !353, file: !354, line: 219, baseType: !357, size: 32)
!357 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !353, file: !354, line: 219, size: 32, elements: !358)
!358 = !{!359, !360}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !357, file: !354, line: 220, baseType: !159, size: 32)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !357, file: !354, line: 221, baseType: !361)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !354, line: 197, baseType: !362)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !354, line: 197, elements: !363)
!363 = !{}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !353, file: !354, line: 223, baseType: !7, size: 32, offset: 32)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !353, file: !354, line: 224, baseType: !85, size: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !346, file: !305, line: 752, baseType: !367, size: 64, offset: 640)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DISubroutineType(types: !369)
!369 = !{!277, !310, !277, !277, !277, !277}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !346, file: !305, line: 756, baseType: !277, size: 64, offset: 704)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !346, file: !305, line: 757, baseType: !277, size: 64, offset: 768)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !346, file: !305, line: 760, baseType: !277, size: 64, offset: 832)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !346, file: !305, line: 761, baseType: !277, size: 64, offset: 896)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !346, file: !305, line: 763, baseType: !277, size: 64, offset: 960)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !346, file: !305, line: 764, baseType: !376, size: 64, offset: 1024)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !312, line: 299, baseType: !378)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !312, line: 299, size: 64, elements: !379)
!379 = !{!380}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !378, file: !312, line: 299, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !382, line: 18, baseType: !277)
!382 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!383 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !346, file: !305, line: 773, baseType: !179, size: 32, offset: 1088)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !346, file: !305, line: 785, baseType: !179, size: 32, offset: 1120)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !346, file: !305, line: 795, baseType: !386, size: 64, offset: 1152)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !305, line: 726, size: 128, elements: !388)
!388 = !{!389, !393}
!389 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !387, file: !305, line: 727, baseType: !390, size: 64)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !92, line: 23, baseType: !391)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !94, line: 31, baseType: !392)
!392 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !387, file: !305, line: 728, baseType: !46, size: 32, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !346, file: !305, line: 801, baseType: !277, size: 64, offset: 1216)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !346, file: !305, line: 804, baseType: !396, size: 64, offset: 1280)
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !397, line: 13, baseType: !398)
!397 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!398 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !123, line: 181, baseType: !399)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !123, line: 179, size: 64, elements: !400)
!400 = !{!401}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !399, file: !123, line: 180, baseType: !402, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !92, line: 22, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !94, line: 30, baseType: !315)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !346, file: !305, line: 806, baseType: !46, size: 32, offset: 1344)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !346, file: !305, line: 808, baseType: !159, size: 32, offset: 1376)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !346, file: !305, line: 823, baseType: !407, size: 320, offset: 1408)
!407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !408, line: 48, size: 320, elements: !409)
!408 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!409 = !{!410, !411, !412, !417, !419}
!410 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !407, file: !408, line: 49, baseType: !396, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !407, file: !408, line: 55, baseType: !396, size: 64, offset: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !407, file: !408, line: 57, baseType: !413, size: 32, offset: 128)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !414, line: 15, size: 32, elements: !415)
!414 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!415 = !{!416}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !413, file: !414, line: 20, baseType: !179, size: 32)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !407, file: !408, line: 59, baseType: !418, size: 32, offset: 160)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !168, line: 23, baseType: !167)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !407, file: !408, line: 60, baseType: !146, size: 128, offset: 192)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !346, file: !305, line: 825, baseType: !146, size: 128, offset: 1728)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !346, file: !305, line: 845, baseType: !46, size: 32, offset: 1856)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !346, file: !305, line: 849, baseType: !277, size: 64, offset: 1920)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !346, file: !305, line: 850, baseType: !277, size: 64, offset: 1984)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !346, file: !305, line: 852, baseType: !277, size: 64, offset: 2048)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !346, file: !305, line: 853, baseType: !277, size: 64, offset: 2112)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !346, file: !305, line: 854, baseType: !398, size: 64, offset: 2176)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !346, file: !305, line: 855, baseType: !277, size: 64, offset: 2240)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !346, file: !305, line: 856, baseType: !277, size: 64, offset: 2304)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !346, file: !305, line: 857, baseType: !277, size: 64, offset: 2368)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !346, file: !305, line: 858, baseType: !277, size: 64, offset: 2432)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !346, file: !305, line: 865, baseType: !432, size: 32, offset: 2496)
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !433, line: 69, baseType: !434)
!433 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !433, line: 64, size: 32, elements: !435)
!435 = !{!436}
!436 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !434, file: !433, line: 65, baseType: !7, size: 32)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !346, file: !305, line: 867, baseType: !159, size: 32, offset: 2528)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !346, file: !305, line: 869, baseType: !277, size: 64, offset: 2560)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !346, file: !305, line: 869, baseType: !277, size: 64, offset: 2624)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !346, file: !305, line: 869, baseType: !277, size: 64, offset: 2688)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !346, file: !305, line: 869, baseType: !277, size: 64, offset: 2752)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !346, file: !305, line: 870, baseType: !277, size: 64, offset: 2816)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !346, file: !305, line: 870, baseType: !277, size: 64, offset: 2880)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !346, file: !305, line: 870, baseType: !277, size: 64, offset: 2944)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !346, file: !305, line: 871, baseType: !277, size: 64, offset: 3008)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !346, file: !305, line: 871, baseType: !277, size: 64, offset: 3072)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !346, file: !305, line: 871, baseType: !277, size: 64, offset: 3136)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !346, file: !305, line: 871, baseType: !277, size: 64, offset: 3200)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !346, file: !305, line: 873, baseType: !450, size: 3328, offset: 3264)
!450 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 3328, elements: !451)
!451 = !{!452}
!452 = !DISubrange(count: 52)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !346, file: !305, line: 875, baseType: !454, size: 1280, offset: 6592)
!454 = !DICompositeType(tag: DW_TAG_array_type, baseType: !455, size: 1280, elements: !465)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !456, line: 22, size: 320, elements: !457)
!456 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!457 = !{!458, !459, !460, !461}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !455, file: !456, line: 23, baseType: !418, size: 32)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !455, file: !456, line: 24, baseType: !402, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !455, file: !456, line: 26, baseType: !146, size: 128, offset: 128)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !455, file: !456, line: 28, baseType: !462, size: 64, offset: 256)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !92, line: 20, baseType: !464)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !94, line: 26, baseType: !46)
!465 = !{!466}
!466 = !DISubrange(count: 4)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !346, file: !305, line: 877, baseType: !468, size: 64, offset: 7872)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !305, line: 877, flags: DIFlagFwdDecl)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !346, file: !305, line: 880, baseType: !471, size: 1088, offset: 7936)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !472, line: 72, baseType: !473)
!472 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!473 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !472, line: 23, size: 1088, elements: !474)
!474 = !{!475, !476, !477, !478, !479, !482, !483, !491, !492, !517, !518, !519}
!475 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !473, file: !472, line: 28, baseType: !390, size: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !473, file: !472, line: 38, baseType: !398, size: 64, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !473, file: !472, line: 40, baseType: !277, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !473, file: !472, line: 43, baseType: !407, size: 320, offset: 192)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !473, file: !472, line: 44, baseType: !480, size: 64, offset: 512)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !472, line: 44, flags: DIFlagFwdDecl)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !473, file: !472, line: 48, baseType: !277, size: 64, offset: 576)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !473, file: !472, line: 59, baseType: !484, size: 256, offset: 640)
!484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !485, line: 66, size: 256, elements: !486)
!485 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!486 = !{!487, !488, !489, !490}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !484, file: !485, line: 67, baseType: !396, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !484, file: !485, line: 68, baseType: !418, size: 32, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !484, file: !485, line: 70, baseType: !413, size: 32, offset: 96)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !484, file: !485, line: 72, baseType: !146, size: 128, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !473, file: !472, line: 60, baseType: !85, size: 64, offset: 896)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !473, file: !472, line: 61, baseType: !493, size: 64, offset: 960)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !495)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !496, line: 13, size: 1216, elements: !497)
!496 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!497 = !{!498, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !495, file: !496, line: 14, baseType: !85, size: 64)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !495, file: !496, line: 15, baseType: !277, size: 64, offset: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !495, file: !496, line: 17, baseType: !277, size: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !495, file: !496, line: 17, baseType: !277, size: 64, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !495, file: !496, line: 18, baseType: !277, size: 64, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !495, file: !496, line: 18, baseType: !277, size: 64, offset: 320)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !495, file: !496, line: 19, baseType: !131, size: 64, offset: 384)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !495, file: !496, line: 21, baseType: !263, size: 64, offset: 448)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !495, file: !496, line: 23, baseType: !263, size: 64, offset: 512)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !495, file: !496, line: 24, baseType: !263, size: 64, offset: 576)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !495, file: !496, line: 25, baseType: !263, size: 64, offset: 640)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !495, file: !496, line: 26, baseType: !263, size: 64, offset: 704)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !495, file: !496, line: 27, baseType: !263, size: 64, offset: 768)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !495, file: !496, line: 28, baseType: !263, size: 64, offset: 832)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !495, file: !496, line: 29, baseType: !263, size: 64, offset: 896)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !495, file: !496, line: 30, baseType: !263, size: 64, offset: 960)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !495, file: !496, line: 31, baseType: !263, size: 64, offset: 1024)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !495, file: !496, line: 32, baseType: !263, size: 64, offset: 1088)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !495, file: !496, line: 33, baseType: !263, size: 64, offset: 1152)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !473, file: !472, line: 63, baseType: !179, size: 32, offset: 1024)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !473, file: !472, line: 69, baseType: !195, size: 16, offset: 1056)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !473, file: !472, line: 70, baseType: !520, size: 16, offset: 1072)
!520 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !92, line: 18, baseType: !521)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !94, line: 23, baseType: !522)
!522 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !346, file: !305, line: 882, baseType: !277, size: 64, offset: 9024)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !346, file: !305, line: 885, baseType: !159, size: 32, offset: 9088)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !346, file: !305, line: 886, baseType: !526, size: 64, offset: 9152)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !305, line: 732, flags: DIFlagFwdDecl)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !346, file: !305, line: 901, baseType: !529, size: 64, offset: 9216)
!529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !530, size: 64)
!530 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !531, line: 18, flags: DIFlagFwdDecl)
!531 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!532 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !346, file: !305, line: 904, baseType: !310, size: 64, offset: 9280)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !346, file: !305, line: 906, baseType: !534, size: 64, offset: 9344)
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!535 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !305, line: 906, flags: DIFlagFwdDecl)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !346, file: !305, line: 930, baseType: !179, size: 32, offset: 9408)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !346, file: !305, line: 933, baseType: !179, size: 32, offset: 9440)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !346, file: !305, line: 935, baseType: !539, size: 64, offset: 9472)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !540, line: 103, size: 64, elements: !541)
!540 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!541 = !{!542}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !539, file: !540, line: 104, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !540, line: 101, flags: DIFlagFwdDecl)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !346, file: !305, line: 940, baseType: !396, size: 64, offset: 9536)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !346, file: !305, line: 942, baseType: !547, size: 256, offset: 9600)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !548, line: 98, size: 256, elements: !549)
!548 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!549 = !{!550, !551, !552}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !547, file: !548, line: 99, baseType: !396, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !547, file: !548, line: 100, baseType: !146, size: 128, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !547, file: !548, line: 101, baseType: !553, size: 64, offset: 192)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !548, line: 21, baseType: !554)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DISubroutineType(types: !556)
!556 = !{null, !557}
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !547, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !343, file: !305, line: 986, baseType: !559, offset: 10240)
!559 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, elements: !560)
!560 = !{!561}
!561 = !DISubrange(count: -1)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !322, file: !305, line: 640, baseType: !563, size: 64, offset: 192)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !312, line: 297, baseType: !564)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !312, line: 297, size: 64, elements: !565)
!565 = !{!566}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !564, file: !312, line: 297, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !382, line: 19, baseType: !277)
!568 = !DIDerivedType(tag: DW_TAG_member, scope: !322, file: !305, line: 646, baseType: !569, size: 64, offset: 256)
!569 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !322, file: !305, line: 646, size: 64, elements: !570)
!570 = !{!571, !574}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !569, file: !305, line: 647, baseType: !572, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !573)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !305, line: 542, baseType: !277)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !569, file: !305, line: 648, baseType: !573, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !322, file: !305, line: 666, baseType: !46, size: 32, offset: 320)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !322, file: !305, line: 667, baseType: !577, size: 64, offset: 384)
!577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !578, size: 64)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !305, line: 579, size: 320, elements: !579)
!579 = !{!580}
!580 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !578, file: !305, line: 580, baseType: !407, size: 320)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !322, file: !305, line: 670, baseType: !122, size: 8, offset: 448)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !322, file: !305, line: 681, baseType: !583, size: 256, offset: 512)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !322, file: !305, line: 678, size: 256, elements: !584)
!584 = !{!585, !593}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !583, file: !305, line: 679, baseType: !586, size: 192, align: 64)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !587, line: 5, size: 192, align: 64, elements: !588)
!587 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!588 = !{!589, !590, !592}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !586, file: !587, line: 6, baseType: !277, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !586, file: !587, line: 7, baseType: !591, size: 64, offset: 64)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !586, size: 64)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !586, file: !587, line: 8, baseType: !591, size: 64, offset: 128)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !583, file: !305, line: 680, baseType: !277, size: 64, offset: 192)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !322, file: !305, line: 689, baseType: !146, size: 128, offset: 768)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !322, file: !305, line: 691, baseType: !596, size: 64, offset: 896)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !305, line: 691, flags: DIFlagFwdDecl)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !322, file: !305, line: 694, baseType: !599, size: 64, offset: 960)
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !601)
!601 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !305, line: 694, flags: DIFlagFwdDecl)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !322, file: !305, line: 697, baseType: !277, size: 64, offset: 1024)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !322, file: !305, line: 699, baseType: !310, size: 64, offset: 1088)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !322, file: !305, line: 700, baseType: !85, size: 64, offset: 1152)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !322, file: !305, line: 711, baseType: !396, size: 64, offset: 1216)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !322, file: !305, line: 717, baseType: !607, size: 64, offset: 1280)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !305, line: 717, flags: DIFlagFwdDecl)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !322, file: !305, line: 722, baseType: !610, offset: 1344)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !305, line: 570, elements: !363)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !282, file: !253, line: 90, baseType: !612, size: 64, offset: 192)
!612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !282, file: !253, line: 91, baseType: !614, size: 64, offset: 256)
!614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !243, file: !139, line: 120, baseType: !616, size: 64, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DISubroutineType(types: !618)
!618 = !{!619, !210}
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !621)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !622)
!622 = !{!623, !624, !628, !632, !638, !642}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !621, file: !6, line: 40, baseType: !5, size: 32)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !621, file: !6, line: 41, baseType: !625, size: 64, offset: 64)
!625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !626, size: 64)
!626 = !DISubroutineType(types: !627)
!627 = !{!122}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !621, file: !6, line: 42, baseType: !629, size: 64, offset: 128)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!85}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !621, file: !6, line: 43, baseType: !633, size: 64, offset: 192)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{!131, !636}
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!637 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !621, file: !6, line: 44, baseType: !639, size: 64, offset: 256)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = !DISubroutineType(types: !641)
!641 = !{!131}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !621, file: !6, line: 45, baseType: !643, size: 64, offset: 320)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DISubroutineType(types: !645)
!645 = !{null, !85}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !243, file: !139, line: 121, baseType: !647, size: 64, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DISubroutineType(types: !649)
!649 = !{!131, !210}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !243, file: !139, line: 122, baseType: !651, size: 64, offset: 320)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DISubroutineType(types: !653)
!653 = !{null, !210, !654, !661}
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !531, line: 23, baseType: !656)
!656 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !531, line: 21, size: 32, elements: !657)
!657 = !{!658}
!658 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !656, file: !531, line: 22, baseType: !659, size: 32)
!659 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !123, line: 37, baseType: !660)
!660 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !261, line: 49, baseType: !7)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !531, line: 28, baseType: !663)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !531, line: 26, size: 32, elements: !664)
!664 = !{!665}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !663, file: !531, line: 27, baseType: !666, size: 32)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !123, line: 38, baseType: !667)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !261, line: 50, baseType: !7)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !138, file: !139, line: 70, baseType: !669, size: 64, offset: 384)
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !670, size: 64)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !671, line: 190, size: 1152, elements: !672)
!671 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!672 = !{!673, !674, !675, !676, !677, !678, !679, !680, !775, !776, !777, !778, !779, !782}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !670, file: !671, line: 191, baseType: !179, size: 32)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !670, file: !671, line: 192, baseType: !179, size: 32, offset: 32)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !670, file: !671, line: 202, baseType: !669, size: 64, offset: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !670, file: !671, line: 203, baseType: !142, size: 64, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !670, file: !671, line: 205, baseType: !586, size: 192, align: 64, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !670, file: !671, line: 207, baseType: !131, size: 64, offset: 384)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !670, file: !671, line: 208, baseType: !7, size: 32, offset: 448)
!680 = !DIDerivedType(tag: DW_TAG_member, scope: !670, file: !671, line: 209, baseType: !681, size: 256, offset: 512)
!681 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !670, file: !671, line: 209, size: 256, elements: !682)
!682 = !{!683, !695, !699}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !681, file: !671, line: 210, baseType: !684, size: 256)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !671, line: 153, size: 256, elements: !685)
!685 = !{!686, !687, !691, !694}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !684, file: !671, line: 154, baseType: !277, size: 64)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !684, file: !671, line: 156, baseType: !688, size: 64, offset: 64)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !587, line: 12, size: 64, elements: !689)
!689 = !{!690}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !688, file: !587, line: 13, baseType: !591, size: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !684, file: !671, line: 162, baseType: !692, size: 64, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !671, line: 162, flags: DIFlagFwdDecl)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !684, file: !671, line: 167, baseType: !277, size: 64, offset: 192)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !681, file: !671, line: 211, baseType: !696, size: 64)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !671, line: 170, size: 64, elements: !697)
!697 = !{!698}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !696, file: !671, line: 171, baseType: !669, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !681, file: !671, line: 212, baseType: !700, size: 256)
!700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !671, line: 174, size: 256, elements: !701)
!701 = !{!702, !770, !773, !774}
!702 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !700, file: !671, line: 175, baseType: !703, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !704, size: 64)
!704 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !705)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !671, line: 271, size: 768, elements: !706)
!706 = !{!707, !730, !734, !738, !743, !747, !751, !755, !756, !757, !758, !766}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !705, file: !671, line: 276, baseType: !708, size: 64)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!46, !711}
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !712, size: 64)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !671, line: 251, size: 1216, elements: !713)
!713 = !{!714, !715, !716, !720, !721, !722, !723, !724, !725, !726, !727, !728, !729}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !712, file: !671, line: 253, baseType: !669, size: 64)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !712, file: !671, line: 254, baseType: !310, size: 64, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !712, file: !671, line: 255, baseType: !717, size: 64, offset: 128)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !719, line: 66, flags: DIFlagFwdDecl)
!719 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!720 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !712, file: !671, line: 256, baseType: !85, size: 64, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !712, file: !671, line: 259, baseType: !484, size: 256, offset: 256)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !712, file: !671, line: 260, baseType: !484, size: 256, offset: 512)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !712, file: !671, line: 261, baseType: !46, size: 32, offset: 768)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !712, file: !671, line: 262, baseType: !146, size: 128, offset: 832)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !712, file: !671, line: 263, baseType: !227, size: 64, offset: 960)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !712, file: !671, line: 265, baseType: !274, size: 64, offset: 1024)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !712, file: !671, line: 266, baseType: !122, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !712, file: !671, line: 267, baseType: !122, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !712, file: !671, line: 268, baseType: !599, size: 64, offset: 1152)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !705, file: !671, line: 277, baseType: !731, size: 64, offset: 64)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{null, !711}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !705, file: !671, line: 290, baseType: !735, size: 64, offset: 128)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DISubroutineType(types: !737)
!737 = !{!46, !717, !85}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !705, file: !671, line: 292, baseType: !739, size: 64, offset: 192)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = !DISubroutineType(types: !741)
!741 = !{!85, !717, !742}
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !705, file: !671, line: 293, baseType: !744, size: 64, offset: 256)
!744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !745, size: 64)
!745 = !DISubroutineType(types: !746)
!746 = !{!85, !717, !85, !742}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !705, file: !671, line: 294, baseType: !748, size: 64, offset: 320)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !749, size: 64)
!749 = !DISubroutineType(types: !750)
!750 = !{null, !717, !85}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !705, file: !671, line: 296, baseType: !752, size: 64, offset: 384)
!752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!753 = !DISubroutineType(types: !754)
!754 = !{!259, !711, !227, !274, !313}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !705, file: !671, line: 306, baseType: !274, size: 64, offset: 448)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !705, file: !671, line: 313, baseType: !122, size: 8, offset: 512)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !705, file: !671, line: 314, baseType: !752, size: 64, offset: 576)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !705, file: !671, line: 317, baseType: !759, size: 64, offset: 640)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DISubroutineType(types: !761)
!761 = !{!762, !711, !764}
!762 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !763, line: 59, baseType: !7)
!763 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!764 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !765, size: 64)
!765 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !671, line: 31, flags: DIFlagFwdDecl)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !705, file: !671, line: 320, baseType: !767, size: 64, offset: 704)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !768, size: 64)
!768 = !DISubroutineType(types: !769)
!769 = !{!46, !711, !321}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !700, file: !671, line: 176, baseType: !771, size: 64, offset: 64)
!771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !772, size: 64)
!772 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !671, line: 35, flags: DIFlagFwdDecl)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !700, file: !671, line: 177, baseType: !313, size: 64, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !700, file: !671, line: 178, baseType: !669, size: 64, offset: 192)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !670, file: !671, line: 215, baseType: !85, size: 64, offset: 768)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !670, file: !671, line: 221, baseType: !390, size: 64, offset: 832)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !670, file: !671, line: 223, baseType: !197, size: 16, offset: 896)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !670, file: !671, line: 224, baseType: !269, size: 16, offset: 912)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !670, file: !671, line: 225, baseType: !780, size: 64, offset: 960)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !671, line: 36, flags: DIFlagFwdDecl)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !670, file: !671, line: 227, baseType: !333, size: 128, align: 64, offset: 1024)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !138, file: !139, line: 71, baseType: !784, size: 32, offset: 448)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !785, line: 19, size: 32, elements: !786)
!785 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!786 = !{!787}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !784, file: !785, line: 20, baseType: !788, size: 32)
!788 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !789, line: 113, baseType: !790)
!789 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !789, line: 111, size: 32, elements: !791)
!791 = !{!792}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !790, file: !789, line: 112, baseType: !179, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !138, file: !139, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !138, file: !139, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !138, file: !139, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !138, file: !139, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !138, file: !139, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !135, file: !26, line: 707, baseType: !799, size: 64, offset: 512)
!799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !135, file: !26, line: 709, baseType: !801, size: 64, offset: 576)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !135, file: !26, line: 711, baseType: !142, size: 64, offset: 640)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !135, file: !26, line: 712, baseType: !805, size: 64, offset: 704)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !807)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !808)
!808 = !{!809, !810, !811, !815, !820, !824}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !807, file: !26, line: 90, baseType: !142, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !807, file: !26, line: 91, baseType: !279, size: 64, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !807, file: !26, line: 92, baseType: !812, size: 64, offset: 128)
!812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !813, size: 64)
!813 = !DISubroutineType(types: !814)
!814 = !{!46, !133, !222}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !807, file: !26, line: 93, baseType: !816, size: 64, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!227, !133, !819, !654, !661}
!819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !807, file: !26, line: 95, baseType: !821, size: 64, offset: 256)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{null, !799}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !807, file: !26, line: 97, baseType: !825, size: 64, offset: 320)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !827)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !828)
!828 = !{!829, !833, !834, !835, !836, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !853, !854}
!829 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !827, file: !38, line: 287, baseType: !830, size: 64)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!46, !799}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !827, file: !38, line: 288, baseType: !821, size: 64, offset: 64)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !827, file: !38, line: 289, baseType: !830, size: 64, offset: 128)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !827, file: !38, line: 290, baseType: !830, size: 64, offset: 192)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !827, file: !38, line: 291, baseType: !830, size: 64, offset: 256)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !827, file: !38, line: 292, baseType: !830, size: 64, offset: 320)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !827, file: !38, line: 293, baseType: !830, size: 64, offset: 384)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !827, file: !38, line: 294, baseType: !830, size: 64, offset: 448)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !827, file: !38, line: 295, baseType: !830, size: 64, offset: 512)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !827, file: !38, line: 296, baseType: !830, size: 64, offset: 576)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !827, file: !38, line: 297, baseType: !830, size: 64, offset: 640)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !827, file: !38, line: 298, baseType: !830, size: 64, offset: 704)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !827, file: !38, line: 299, baseType: !830, size: 64, offset: 768)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !827, file: !38, line: 300, baseType: !830, size: 64, offset: 832)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !827, file: !38, line: 301, baseType: !830, size: 64, offset: 896)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !827, file: !38, line: 302, baseType: !830, size: 64, offset: 960)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !827, file: !38, line: 303, baseType: !830, size: 64, offset: 1024)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !827, file: !38, line: 304, baseType: !830, size: 64, offset: 1088)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !827, file: !38, line: 305, baseType: !830, size: 64, offset: 1152)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !827, file: !38, line: 306, baseType: !830, size: 64, offset: 1216)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !827, file: !38, line: 307, baseType: !830, size: 64, offset: 1280)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !827, file: !38, line: 308, baseType: !830, size: 64, offset: 1344)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !827, file: !38, line: 309, baseType: !830, size: 64, offset: 1408)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !135, file: !26, line: 714, baseType: !856, size: 64, offset: 768)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !858)
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !859, line: 80, size: 1344, elements: !860)
!859 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!860 = !{!861, !862, !863, !864, !865, !866, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1320}
!861 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !858, file: !859, line: 81, baseType: !142, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !858, file: !859, line: 82, baseType: !142, size: 64, offset: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !858, file: !859, line: 83, baseType: !279, size: 64, offset: 128)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !858, file: !859, line: 84, baseType: !279, size: 64, offset: 192)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !858, file: !859, line: 85, baseType: !279, size: 64, offset: 256)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !858, file: !859, line: 87, baseType: !867, size: 64, offset: 320)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DISubroutineType(types: !869)
!869 = !{!46, !799, !870}
!870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !871, size: 64)
!871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !872)
!872 = !{!873, !874, !875, !1251, !1252, !1253, !1254, !1270, !1283, !1284, !1285, !1286, !1287, !1295, !1296, !1297, !1298, !1299, !1300}
!873 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !871, file: !20, line: 97, baseType: !142, size: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !871, file: !20, line: 98, baseType: !856, size: 64, offset: 64)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !871, file: !20, line: 100, baseType: !876, size: 64, offset: 128)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !878)
!878 = !{!879, !880, !881, !885, !906, !932, !933, !934, !935, !939, !942, !943, !944, !997, !998, !999, !1000, !1001, !1002, !1003, !1004, !1007, !1011, !1031, !1049, !1050, !1051, !1052, !1061, !1084, !1085, !1088, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1102, !1103, !1209, !1217, !1218, !1219, !1221, !1225, !1226, !1230, !1231, !1232, !1233, !1235, !1236, !1237, !1244, !1245, !1246, !1250}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !877, file: !13, line: 403, baseType: !12, size: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !877, file: !13, line: 406, baseType: !146, size: 128, offset: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !877, file: !13, line: 409, baseType: !882, size: 448, offset: 192)
!882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 448, elements: !883)
!883 = !{!884}
!884 = !DISubrange(count: 56)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !877, file: !13, line: 417, baseType: !886, size: 768, offset: 640)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !887)
!887 = !{!888, !889, !890, !891, !894}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !886, file: !13, line: 46, baseType: !138, size: 512)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !886, file: !13, line: 47, baseType: !876, size: 64, offset: 512)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !886, file: !13, line: 48, baseType: !152, size: 64, offset: 576)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !886, file: !13, line: 49, baseType: !892, size: 64, offset: 640)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !13, line: 49, flags: DIFlagFwdDecl)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !886, file: !13, line: 50, baseType: !895, size: 64, offset: 704)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !897, line: 26, size: 256, elements: !898)
!897 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!898 = !{!899, !900}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !896, file: !897, line: 27, baseType: !7, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !896, file: !897, line: 28, baseType: !901, size: 192, offset: 64)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !902, line: 43, size: 192, elements: !903)
!902 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!903 = !{!904, !905}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !901, file: !902, line: 44, baseType: !418, size: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !901, file: !902, line: 45, baseType: !146, size: 128, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !877, file: !13, line: 418, baseType: !907, size: 64, offset: 1408)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !909)
!909 = !{!910, !911, !916, !920, !924, !928}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !908, file: !13, line: 54, baseType: !265, size: 128)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !908, file: !13, line: 55, baseType: !912, size: 64, offset: 128)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{!259, !907, !915, !227}
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !908, file: !13, line: 57, baseType: !917, size: 64, offset: 192)
!917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !918, size: 64)
!918 = !DISubroutineType(types: !919)
!919 = !{!259, !907, !915, !142, !274}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !908, file: !13, line: 59, baseType: !921, size: 64, offset: 256)
!921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!922 = !DISubroutineType(types: !923)
!923 = !{null, !876, !142}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !908, file: !13, line: 60, baseType: !925, size: 64, offset: 320)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DISubroutineType(types: !927)
!927 = !{!46, !876}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !908, file: !13, line: 61, baseType: !929, size: 64, offset: 384)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DISubroutineType(types: !931)
!931 = !{null, !876}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !877, file: !13, line: 419, baseType: !142, size: 64, offset: 1472)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !877, file: !13, line: 420, baseType: !142, size: 64, offset: 1536)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !877, file: !13, line: 421, baseType: !152, size: 64, offset: 1600)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !877, file: !13, line: 424, baseType: !936, size: 64, offset: 1664)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !938)
!938 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !877, file: !13, line: 425, baseType: !940, size: 64, offset: 1728)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !463)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !877, file: !13, line: 426, baseType: !7, size: 32, offset: 1792)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !877, file: !13, line: 435, baseType: !484, size: 256, offset: 1856)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !877, file: !13, line: 437, baseType: !945, size: 64, offset: 2112)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !947, line: 69, size: 320, elements: !948)
!947 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!948 = !{!949, !950, !951, !968, !970, !974, !975}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !946, file: !947, line: 70, baseType: !142, size: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !946, file: !947, line: 71, baseType: !876, size: 64, offset: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !946, file: !947, line: 72, baseType: !952, size: 64, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !954)
!954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !947, line: 47, size: 256, elements: !955)
!955 = !{!956, !957, !963, !967}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !954, file: !947, line: 49, baseType: !7, size: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !954, file: !947, line: 51, baseType: !958, size: 64, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DISubroutineType(types: !960)
!960 = !{!46, !142, !961}
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !946)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !954, file: !947, line: 53, baseType: !964, size: 64, offset: 128)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DISubroutineType(types: !966)
!966 = !{!46, !227, !961}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !954, file: !947, line: 55, baseType: !643, size: 64, offset: 192)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !946, file: !947, line: 73, baseType: !969, size: 16, offset: 192)
!969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !195)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !946, file: !947, line: 74, baseType: !971, size: 8, offset: 208)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !92, line: 16, baseType: !972)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !94, line: 20, baseType: !973)
!973 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !946, file: !947, line: 75, baseType: !187, size: 8, offset: 216)
!975 = !DIDerivedType(tag: DW_TAG_member, scope: !946, file: !947, line: 76, baseType: !976, size: 64, offset: 256)
!976 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !946, file: !947, line: 76, size: 64, elements: !977)
!977 = !{!978, !979, !986}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !976, file: !947, line: 77, baseType: !85, size: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !976, file: !947, line: 78, baseType: !980, size: 64)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !982)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !947, line: 86, size: 128, elements: !983)
!983 = !{!984, !985}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !982, file: !947, line: 87, baseType: !7, size: 32)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !982, file: !947, line: 88, baseType: !227, size: 64, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !976, file: !947, line: 79, baseType: !987, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !989)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !947, line: 92, size: 256, elements: !990)
!990 = !{!991, !992, !993, !995, !996}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !989, file: !947, line: 94, baseType: !7, size: 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !989, file: !947, line: 95, baseType: !7, size: 32, offset: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !989, file: !947, line: 96, baseType: !994, size: 64, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !989, file: !947, line: 97, baseType: !952, size: 64, offset: 128)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !989, file: !947, line: 98, baseType: !85, size: 64, offset: 192)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !877, file: !13, line: 438, baseType: !7, size: 32, offset: 2176)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !877, file: !13, line: 441, baseType: !7, size: 32, offset: 2208)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !877, file: !13, line: 442, baseType: !936, size: 64, offset: 2240)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !877, file: !13, line: 443, baseType: !940, size: 64, offset: 2304)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !877, file: !13, line: 444, baseType: !122, size: 8, offset: 2368)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !877, file: !13, line: 451, baseType: !122, size: 8, offset: 2376)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !877, file: !13, line: 454, baseType: !7, size: 32, offset: 2400)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !877, file: !13, line: 455, baseType: !1005, size: 64, offset: 2432)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !13, line: 43, flags: DIFlagFwdDecl)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !877, file: !13, line: 458, baseType: !1008, size: 64, offset: 2496)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DISubroutineType(types: !1010)
!1010 = !{!46}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !877, file: !13, line: 460, baseType: !1012, size: 4032, align: 512, offset: 2560)
!1012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1013, size: 4032, elements: !1029)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !13, line: 362, size: 576, elements: !1014)
!1014 = !{!1015, !1016, !1017}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1013, file: !13, line: 363, baseType: !85, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1013, file: !13, line: 364, baseType: !7, size: 32, offset: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1013, file: !13, line: 367, baseType: !1018, size: 448, offset: 128)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !13, line: 319, size: 448, elements: !1019)
!1019 = !{!1020, !1021}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1018, file: !13, line: 320, baseType: !876, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1018, file: !13, line: 321, baseType: !1022, size: 384, offset: 64)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1023, line: 40, size: 384, elements: !1024)
!1023 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1024 = !{!1025}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1022, file: !1023, line: 41, baseType: !1026, size: 384, align: 64)
!1026 = !DICompositeType(tag: DW_TAG_array_type, baseType: !586, size: 384, align: 64, elements: !1027)
!1027 = !{!1028}
!1028 = !DISubrange(count: 2)
!1029 = !{!1030}
!1030 = !DISubrange(count: 7)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !877, file: !13, line: 463, baseType: !1032, size: 192, offset: 6592)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1033, line: 8, size: 192, elements: !1034)
!1033 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1034 = !{!1035, !1036, !1038}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1032, file: !1033, line: 10, baseType: !7, size: 32)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1032, file: !1033, line: 11, baseType: !1037, size: 64, offset: 64)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1032, file: !1033, line: 12, baseType: !1039, size: 64, offset: 128)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1041, line: 59, size: 48, elements: !1042)
!1041 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1042 = !{!1043, !1044, !1045, !1046, !1047, !1048}
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1040, file: !1041, line: 60, baseType: !520, size: 16)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1040, file: !1041, line: 61, baseType: !520, size: 16, offset: 16)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1040, file: !1041, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1040, file: !1041, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1040, file: !1041, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1040, file: !1041, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !877, file: !13, line: 465, baseType: !277, size: 64, offset: 6784)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !877, file: !13, line: 469, baseType: !7, size: 32, offset: 6848)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !877, file: !13, line: 470, baseType: !146, size: 128, offset: 6912)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !877, file: !13, line: 471, baseType: !1053, size: 64, offset: 7040)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1055, line: 33, size: 96, elements: !1056)
!1055 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1056 = !{!1057, !1058, !1059, !1060}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1054, file: !1055, line: 37, baseType: !46, size: 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1054, file: !1055, line: 43, baseType: !46, size: 32, offset: 32)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1054, file: !1055, line: 45, baseType: !197, size: 16, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1054, file: !1055, line: 47, baseType: !197, size: 16, offset: 80)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !877, file: !13, line: 476, baseType: !1062, size: 64, offset: 7104)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !13, line: 378, size: 256, elements: !1064)
!1064 = !{!1065, !1081, !1082, !1083}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1063, file: !13, line: 379, baseType: !1066, size: 64)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1068, line: 204, baseType: !1069)
!1068 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1068, line: 197, size: 192, elements: !1070)
!1070 = !{!1071, !1073, !1074, !1075, !1077, !1079}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1069, file: !1068, line: 198, baseType: !1072, size: 32)
!1072 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1068, line: 21, baseType: !93)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1069, file: !1068, line: 199, baseType: !189, size: 8, offset: 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1069, file: !1068, line: 200, baseType: !189, size: 8, offset: 40)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1069, file: !1068, line: 201, baseType: !1076, size: 16, offset: 48)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1068, line: 17, baseType: !196)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1069, file: !1068, line: 202, baseType: !1078, size: 64, offset: 64)
!1078 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1068, line: 16, baseType: !391)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1069, file: !1068, line: 203, baseType: !1080, size: 64, offset: 128)
!1080 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1068, line: 22, baseType: !391)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1063, file: !13, line: 380, baseType: !7, size: 32, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1063, file: !13, line: 381, baseType: !227, size: 64, offset: 128)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1063, file: !13, line: 382, baseType: !227, size: 64, offset: 192)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !877, file: !13, line: 477, baseType: !1063, size: 256, offset: 7168)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !877, file: !13, line: 480, baseType: !1086, size: 64, offset: 7424)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1087, size: 64)
!1087 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !877, file: !13, line: 483, baseType: !1089, size: 64, offset: 7488)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !877, file: !13, line: 488, baseType: !227, size: 64, offset: 7552)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !877, file: !13, line: 492, baseType: !85, size: 64, offset: 7616)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !877, file: !13, line: 493, baseType: !7, size: 32, offset: 7680)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !877, file: !13, line: 495, baseType: !85, size: 64, offset: 7744)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !877, file: !13, line: 496, baseType: !7, size: 32, offset: 7808)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !877, file: !13, line: 499, baseType: !7, size: 32, offset: 7840)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !877, file: !13, line: 500, baseType: !1098, size: 64, offset: 7872)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1100, line: 45, baseType: !1101)
!1100 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !877, file: !13, line: 503, baseType: !7, size: 32, offset: 7936)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !877, file: !13, line: 504, baseType: !1104, size: 64, offset: 8000)
!1104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1107, line: 96, size: 192, elements: !1108)
!1107 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1108 = !{!1109, !1110, !1170, !1173}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1106, file: !1107, line: 97, baseType: !7, size: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1106, file: !1107, line: 98, baseType: !1111, size: 64, offset: 64)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1107, line: 24, size: 3072, elements: !1113)
!1113 = !{!1114, !1116, !1117, !1118, !1119, !1133, !1134, !1135, !1136, !1154, !1155, !1156, !1167, !1168, !1169}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1112, file: !1107, line: 26, baseType: !1115, size: 128)
!1115 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 128, elements: !1027)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1112, file: !1107, line: 27, baseType: !1115, size: 128, offset: 128)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1112, file: !1107, line: 28, baseType: !46, size: 32, offset: 256)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1112, file: !1107, line: 31, baseType: !159, size: 32, align: 512, offset: 512)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1112, file: !1107, line: 32, baseType: !1120, size: 960, offset: 576)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1121, line: 206, size: 960, elements: !1122)
!1121 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1122 = !{!1123, !1124, !1127, !1129, !1130, !1132}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1120, file: !1121, line: 207, baseType: !336, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1120, file: !1121, line: 208, baseType: !1125, size: 256, offset: 64)
!1125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1126, size: 256, elements: !465)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1120, file: !1121, line: 209, baseType: !1128, size: 256, offset: 320)
!1128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !277, size: 256, elements: !465)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1120, file: !1121, line: 213, baseType: !263, size: 64, offset: 576)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1120, file: !1121, line: 215, baseType: !1131, size: 256, offset: 640)
!1131 = !DICompositeType(tag: DW_TAG_array_type, baseType: !263, size: 256, elements: !465)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1120, file: !1121, line: 216, baseType: !187, size: 8, offset: 896)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1112, file: !1107, line: 33, baseType: !277, size: 64, offset: 1536)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1112, file: !1107, line: 34, baseType: !277, size: 64, offset: 1600)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1112, file: !1107, line: 35, baseType: !122, size: 8, offset: 1664)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1112, file: !1107, line: 36, baseType: !1137, size: 320, offset: 1728)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1138, line: 11, size: 320, elements: !1139)
!1138 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1139 = !{!1140, !1147, !1148, !1153}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1137, file: !1138, line: 16, baseType: !1141, size: 128)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !123, line: 198, size: 128, elements: !1142)
!1142 = !{!1143, !1145}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1141, file: !123, line: 199, baseType: !1144, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1141, file: !123, line: 199, baseType: !1146, size: 64, offset: 64)
!1146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1144, size: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1137, file: !1138, line: 17, baseType: !277, size: 64, offset: 128)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1137, file: !1138, line: 18, baseType: !1149, size: 64, offset: 192)
!1149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1150, size: 64)
!1150 = !DISubroutineType(types: !1151)
!1151 = !{null, !1152}
!1152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1137, file: !1138, line: 19, baseType: !91, size: 32, offset: 256)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1112, file: !1107, line: 37, baseType: !547, size: 256, offset: 2048)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1112, file: !1107, line: 38, baseType: !333, size: 128, align: 64, offset: 2304)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1112, file: !1107, line: 39, baseType: !1157, size: 64, offset: 2432)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1107, line: 49, size: 768, elements: !1159)
!1159 = !{!1160, !1161, !1162, !1163, !1164, !1165, !1166}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1158, file: !1107, line: 50, baseType: !159, size: 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1158, file: !1107, line: 51, baseType: !1128, size: 256, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1158, file: !1107, line: 53, baseType: !1128, size: 256, offset: 320)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1158, file: !1107, line: 54, baseType: !277, size: 64, offset: 576)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1158, file: !1107, line: 55, baseType: !1157, size: 64, offset: 640)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1158, file: !1107, line: 56, baseType: !46, size: 32, offset: 704)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1158, file: !1107, line: 57, baseType: !46, size: 32, offset: 736)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1112, file: !1107, line: 40, baseType: !277, size: 64, offset: 2496)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1112, file: !1107, line: 42, baseType: !46, size: 32, offset: 2560)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1112, file: !1107, line: 43, baseType: !1105, size: 64, offset: 2624)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1106, file: !1107, line: 99, baseType: !1171, offset: 128)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1172, line: 211, elements: !363)
!1172 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1106, file: !1107, line: 100, baseType: !1174, size: 64, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1107, line: 63, size: 3008, elements: !1176)
!1176 = !{!1177, !1178, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1197, !1198, !1199, !1208}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1175, file: !1107, line: 64, baseType: !1157, size: 64)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1175, file: !1107, line: 65, baseType: !1179, size: 192, offset: 64)
!1179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1157, size: 192, elements: !228)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1175, file: !1107, line: 67, baseType: !46, size: 32, offset: 256)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1175, file: !1107, line: 68, baseType: !484, size: 256, offset: 320)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1175, file: !1107, line: 69, baseType: !159, size: 32, offset: 576)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1175, file: !1107, line: 70, baseType: !484, size: 256, offset: 640)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1175, file: !1107, line: 71, baseType: !277, size: 64, offset: 896)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1175, file: !1107, line: 72, baseType: !277, size: 64, offset: 960)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1175, file: !1107, line: 73, baseType: !277, size: 64, offset: 1024)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1175, file: !1107, line: 74, baseType: !277, size: 64, offset: 1088)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1175, file: !1107, line: 75, baseType: !277, size: 64, offset: 1152)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1175, file: !1107, line: 76, baseType: !277, size: 64, offset: 1216)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1175, file: !1107, line: 77, baseType: !277, size: 64, offset: 1280)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1175, file: !1107, line: 78, baseType: !277, size: 64, offset: 1344)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1175, file: !1107, line: 79, baseType: !122, size: 8, offset: 1408)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1175, file: !1107, line: 80, baseType: !277, size: 64, offset: 1472)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1175, file: !1107, line: 81, baseType: !484, size: 256, offset: 1536)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1175, file: !1107, line: 82, baseType: !896, size: 256, offset: 1792)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1175, file: !1107, line: 84, baseType: !179, size: 32, offset: 2048)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1175, file: !1107, line: 87, baseType: !277, size: 64, offset: 2112)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1175, file: !1107, line: 88, baseType: !277, size: 64, offset: 2176)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1175, file: !1107, line: 89, baseType: !1200, size: 704, offset: 2240)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !548, line: 111, size: 704, elements: !1201)
!1201 = !{!1202, !1203, !1204, !1207}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1200, file: !548, line: 112, baseType: !547, size: 256)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1200, file: !548, line: 113, baseType: !1137, size: 320, offset: 256)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1200, file: !548, line: 116, baseType: !1205, size: 64, offset: 576)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !548, line: 18, flags: DIFlagFwdDecl)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1200, file: !548, line: 117, baseType: !46, size: 32, offset: 640)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1175, file: !1107, line: 90, baseType: !1105, size: 64, offset: 2944)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !877, file: !13, line: 515, baseType: !1210, size: 64, offset: 8064)
!1210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1211, size: 64)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1212, line: 117, size: 128, elements: !1213)
!1212 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1213 = !{!1214, !1215, !1216}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1211, file: !1212, line: 118, baseType: !463, size: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1211, file: !1212, line: 119, baseType: !463, size: 32, offset: 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1211, file: !1212, line: 120, baseType: !263, size: 64, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !877, file: !13, line: 516, baseType: !7, size: 32, offset: 8128)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !877, file: !13, line: 519, baseType: !7, size: 32, offset: 8160)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !877, file: !13, line: 520, baseType: !1220, size: 64, offset: 8192)
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !877, file: !13, line: 523, baseType: !1222, size: 64, offset: 8256)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1224, size: 64)
!1224 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !13, line: 523, flags: DIFlagFwdDecl)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !877, file: !13, line: 524, baseType: !7, size: 32, offset: 8320)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !877, file: !13, line: 525, baseType: !1227, size: 64, offset: 8384)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !13, line: 525, flags: DIFlagFwdDecl)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !877, file: !13, line: 526, baseType: !7, size: 32, offset: 8448)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !877, file: !13, line: 533, baseType: !85, size: 64, offset: 8512)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !877, file: !13, line: 534, baseType: !7, size: 32, offset: 8576)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !877, file: !13, line: 535, baseType: !1234, size: 64, offset: 8640)
!1234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !877, file: !13, line: 536, baseType: !7, size: 32, offset: 8704)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !877, file: !13, line: 539, baseType: !46, size: 32, offset: 8736)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !877, file: !13, line: 540, baseType: !1238, size: 64, offset: 8768)
!1238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1239, size: 64)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1240, line: 32, size: 64, elements: !1241)
!1240 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1241 = !{!1242, !1243}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1239, file: !1240, line: 33, baseType: !463, size: 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1239, file: !1240, line: 34, baseType: !463, size: 32, offset: 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !877, file: !13, line: 563, baseType: !146, size: 128, offset: 8832)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !877, file: !13, line: 565, baseType: !146, size: 128, offset: 8960)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !877, file: !13, line: 568, baseType: !1247, size: 64, offset: 9088)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = !DISubroutineType(types: !1249)
!1249 = !{null}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !877, file: !13, line: 570, baseType: !179, size: 32, offset: 9152)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !871, file: !20, line: 101, baseType: !142, size: 64, offset: 192)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !871, file: !20, line: 103, baseType: !122, size: 8, offset: 256)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !871, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !871, file: !20, line: 106, baseType: !1255, size: 64, offset: 320)
!1255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1256, size: 64)
!1256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1257)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1258, line: 282, size: 1600, elements: !1259)
!1258 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1259 = !{!1260, !1264, !1265, !1269}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1257, file: !1258, line: 283, baseType: !1261, size: 256)
!1261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 256, elements: !1262)
!1262 = !{!1263}
!1263 = !DISubrange(count: 32)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1257, file: !1258, line: 284, baseType: !1261, size: 256, offset: 256)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1257, file: !1258, line: 285, baseType: !1266, size: 1024, offset: 512)
!1266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 1024, elements: !1267)
!1267 = !{!1268}
!1268 = !DISubrange(count: 128)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1257, file: !1258, line: 286, baseType: !131, size: 64, offset: 1536)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !871, file: !20, line: 107, baseType: !1271, size: 64, offset: 384)
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1273)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1258, line: 217, size: 256, elements: !1274)
!1274 = !{!1275, !1279, !1281, !1282}
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1273, file: !1258, line: 218, baseType: !1276, size: 128)
!1276 = !DICompositeType(tag: DW_TAG_array_type, baseType: !188, size: 128, elements: !1277)
!1277 = !{!1278}
!1278 = !DISubrange(count: 16)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1273, file: !1258, line: 219, baseType: !1280, size: 64, offset: 128)
!1280 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1258, line: 15, baseType: !277)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1273, file: !1258, line: 220, baseType: !93, size: 32, offset: 192)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1273, file: !1258, line: 221, baseType: !93, size: 32, offset: 224)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !871, file: !20, line: 109, baseType: !830, size: 64, offset: 448)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !871, file: !20, line: 110, baseType: !821, size: 64, offset: 512)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !871, file: !20, line: 111, baseType: !830, size: 64, offset: 576)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !871, file: !20, line: 112, baseType: !821, size: 64, offset: 640)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !871, file: !20, line: 113, baseType: !1288, size: 64, offset: 704)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DISubroutineType(types: !1290)
!1290 = !{!46, !799, !1291}
!1291 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1292)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1293)
!1293 = !{!1294}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1292, file: !38, line: 59, baseType: !46, size: 32)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !871, file: !20, line: 114, baseType: !830, size: 64, offset: 768)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !871, file: !20, line: 115, baseType: !279, size: 64, offset: 832)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !871, file: !20, line: 116, baseType: !279, size: 64, offset: 896)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !871, file: !20, line: 118, baseType: !825, size: 64, offset: 960)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !871, file: !20, line: 119, baseType: !821, size: 64, offset: 1024)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !871, file: !20, line: 121, baseType: !1301, size: 64, offset: 1088)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !858, file: !859, line: 88, baseType: !812, size: 64, offset: 384)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !858, file: !859, line: 89, baseType: !830, size: 64, offset: 448)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !858, file: !859, line: 90, baseType: !821, size: 64, offset: 512)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !858, file: !859, line: 91, baseType: !821, size: 64, offset: 576)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !858, file: !859, line: 92, baseType: !821, size: 64, offset: 640)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !858, file: !859, line: 94, baseType: !830, size: 64, offset: 704)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !858, file: !859, line: 95, baseType: !830, size: 64, offset: 768)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !858, file: !859, line: 97, baseType: !1288, size: 64, offset: 832)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !858, file: !859, line: 98, baseType: !830, size: 64, offset: 896)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !858, file: !859, line: 100, baseType: !830, size: 64, offset: 960)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !858, file: !859, line: 102, baseType: !830, size: 64, offset: 1024)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !858, file: !859, line: 103, baseType: !821, size: 64, offset: 1088)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !858, file: !859, line: 105, baseType: !825, size: 64, offset: 1152)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !858, file: !859, line: 107, baseType: !1317, size: 64, offset: 1216)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1319)
!1319 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !859, line: 107, flags: DIFlagFwdDecl)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !858, file: !859, line: 109, baseType: !122, size: 8, offset: 1280)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !135, file: !26, line: 715, baseType: !870, size: 64, offset: 832)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !135, file: !26, line: 717, baseType: !85, size: 64, offset: 896)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !135, file: !26, line: 719, baseType: !85, size: 64, offset: 960)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !135, file: !26, line: 721, baseType: !484, size: 256, offset: 1024)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !135, file: !26, line: 725, baseType: !1326, size: 448, offset: 1280)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1327)
!1327 = !{!1328, !1329, !1330, !1331}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1326, file: !26, line: 518, baseType: !146, size: 128)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1326, file: !26, line: 519, baseType: !146, size: 128, offset: 128)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1326, file: !26, line: 520, baseType: !146, size: 128, offset: 256)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1326, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !135, file: !26, line: 726, baseType: !1333, size: 2496, offset: 1728)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1334)
!1334 = !{!1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1379, !1380, !1381, !1382, !1383, !1384, !1455, !1456, !1457, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1495, !1499}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1333, file: !38, line: 664, baseType: !1291, size: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1333, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1333, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1333, file: !38, line: 667, baseType: !122, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1333, file: !38, line: 668, baseType: !122, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1333, file: !38, line: 669, baseType: !122, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1333, file: !38, line: 670, baseType: !122, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1333, file: !38, line: 671, baseType: !122, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1333, file: !38, line: 672, baseType: !122, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1333, file: !38, line: 673, baseType: !122, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1333, file: !38, line: 674, baseType: !122, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1333, file: !38, line: 675, baseType: !91, size: 32, offset: 64)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1333, file: !38, line: 676, baseType: !159, size: 32, offset: 96)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1333, file: !38, line: 678, baseType: !146, size: 128, offset: 128)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1333, file: !38, line: 679, baseType: !896, size: 256, offset: 256)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1333, file: !38, line: 680, baseType: !1351, size: 64, offset: 512)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1353, line: 43, size: 1536, elements: !1354)
!1353 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1354 = !{!1355, !1356, !1357, !1358, !1359, !1362, !1363, !1364, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1352, file: !1353, line: 44, baseType: !142, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1352, file: !1353, line: 45, baseType: !46, size: 32, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1352, file: !1353, line: 46, baseType: !146, size: 128, offset: 128)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1352, file: !1353, line: 47, baseType: !159, size: 32, offset: 256)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1352, file: !1353, line: 48, baseType: !1360, size: 64, offset: 320)
!1360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1361 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1352, file: !1353, line: 49, baseType: !1137, size: 320, offset: 384)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1352, file: !1353, line: 50, baseType: !277, size: 64, offset: 704)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1352, file: !1353, line: 51, baseType: !1365, size: 64, offset: 768)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1366, line: 29, baseType: !402)
!1366 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1352, file: !1353, line: 52, baseType: !1365, size: 64, offset: 832)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1352, file: !1353, line: 53, baseType: !1365, size: 64, offset: 896)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1352, file: !1353, line: 54, baseType: !1365, size: 64, offset: 960)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1352, file: !1353, line: 55, baseType: !1365, size: 64, offset: 1024)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1352, file: !1353, line: 56, baseType: !277, size: 64, offset: 1088)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1352, file: !1353, line: 57, baseType: !277, size: 64, offset: 1152)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1352, file: !1353, line: 58, baseType: !277, size: 64, offset: 1216)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1352, file: !1353, line: 59, baseType: !277, size: 64, offset: 1280)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1352, file: !1353, line: 60, baseType: !277, size: 64, offset: 1344)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1352, file: !1353, line: 61, baseType: !799, size: 64, offset: 1408)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1352, file: !1353, line: 62, baseType: !122, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1352, file: !1353, line: 63, baseType: !122, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1333, file: !38, line: 681, baseType: !122, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1333, file: !38, line: 682, baseType: !122, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1333, file: !38, line: 683, baseType: !122, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1333, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1333, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1333, file: !38, line: 690, baseType: !1385, size: 512, offset: 640)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1386)
!1386 = !{!1387, !1393, !1394, !1399, !1451, !1452, !1453, !1454}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1385, file: !33, line: 119, baseType: !1388, size: 256)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1389, line: 9, size: 256, elements: !1390)
!1389 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1390 = !{!1391, !1392}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1388, file: !1389, line: 10, baseType: !586, size: 192, align: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1388, file: !1389, line: 11, baseType: !1365, size: 64, offset: 192)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1385, file: !33, line: 120, baseType: !1365, size: 64, offset: 256)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1385, file: !33, line: 121, baseType: !1395, size: 64, offset: 320)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DISubroutineType(types: !1397)
!1397 = !{!32, !1398}
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1385, file: !33, line: 122, baseType: !1400, size: 64, offset: 384)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1402)
!1402 = !{!1403, !1428, !1429, !1432, !1437, !1438, !1446, !1450}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1401, file: !33, line: 160, baseType: !1404, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1405, size: 64)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1406)
!1406 = !{!1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1405, file: !33, line: 216, baseType: !418, size: 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1405, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1405, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1405, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1405, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1405, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1405, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1405, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1405, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1405, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1405, file: !33, line: 227, baseType: !197, size: 16, offset: 192)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1405, file: !33, line: 228, baseType: !197, size: 16, offset: 208)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1405, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1405, file: !33, line: 235, baseType: !1365, size: 64, offset: 256)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1405, file: !33, line: 236, baseType: !1398, size: 64, offset: 320)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1405, file: !33, line: 237, baseType: !1365, size: 64, offset: 384)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1405, file: !33, line: 238, baseType: !1398, size: 64, offset: 448)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1405, file: !33, line: 239, baseType: !1425, size: 4096, align: 512, offset: 512)
!1425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1401, size: 4096, align: 512, elements: !1426)
!1426 = !{!1427}
!1427 = !DISubrange(count: 8)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1401, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1401, file: !33, line: 162, baseType: !1430, size: 32, offset: 96)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !123, line: 32, baseType: !1431)
!1431 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !261, line: 96, baseType: !46)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1401, file: !33, line: 163, baseType: !1433, size: 32, offset: 128)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !433, line: 274, baseType: !1434)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !433, line: 274, size: 32, elements: !1435)
!1435 = !{!1436}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1434, file: !433, line: 274, baseType: !432, size: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1401, file: !33, line: 164, baseType: !1398, size: 64, offset: 192)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1401, file: !33, line: 165, baseType: !1439, size: 128, offset: 256)
!1439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1389, line: 14, size: 128, elements: !1440)
!1440 = !{!1441}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1439, file: !1389, line: 15, baseType: !1442, size: 128)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !587, line: 26, size: 128, elements: !1443)
!1443 = !{!1444, !1445}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1442, file: !587, line: 27, baseType: !688, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1442, file: !587, line: 28, baseType: !591, size: 64, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1401, file: !33, line: 166, baseType: !1447, size: 64, offset: 384)
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1448, size: 64)
!1448 = !DISubroutineType(types: !1449)
!1449 = !{!1365}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1401, file: !33, line: 167, baseType: !1365, size: 64, offset: 448)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1385, file: !33, line: 123, baseType: !187, size: 8, offset: 448)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1385, file: !33, line: 124, baseType: !187, size: 8, offset: 456)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1385, file: !33, line: 125, baseType: !187, size: 8, offset: 464)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1385, file: !33, line: 126, baseType: !187, size: 8, offset: 472)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1333, file: !38, line: 691, baseType: !390, size: 64, offset: 1152)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1333, file: !38, line: 692, baseType: !547, size: 256, offset: 1216)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1333, file: !38, line: 693, baseType: !1458, size: 192, offset: 1472)
!1458 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1459, line: 41, baseType: !1460)
!1459 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1459, line: 37, size: 192, elements: !1461)
!1461 = !{!1462, !1463}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1460, file: !1459, line: 38, baseType: !159, size: 32)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1460, file: !1459, line: 39, baseType: !146, size: 128, offset: 64)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1333, file: !38, line: 694, baseType: !1360, size: 64, offset: 1664)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1333, file: !38, line: 695, baseType: !179, size: 32, offset: 1728)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1333, file: !38, line: 696, baseType: !179, size: 32, offset: 1760)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1333, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1333, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1333, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1333, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1333, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1333, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1333, file: !38, line: 703, baseType: !122, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1333, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1333, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1333, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1333, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1333, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1333, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1333, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1333, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1333, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1333, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1333, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1333, file: !38, line: 715, baseType: !390, size: 64, offset: 2048)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1333, file: !38, line: 716, baseType: !390, size: 64, offset: 2112)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1333, file: !38, line: 717, baseType: !390, size: 64, offset: 2176)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1333, file: !38, line: 718, baseType: !390, size: 64, offset: 2240)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1333, file: !38, line: 720, baseType: !1490, size: 64, offset: 2304)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1492)
!1492 = !{!1493, !1494}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1491, file: !38, line: 633, baseType: !159, size: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1491, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1333, file: !38, line: 721, baseType: !1496, size: 64, offset: 2368)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{null, !799, !463}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1333, file: !38, line: 722, baseType: !1500, size: 64, offset: 2432)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !38, line: 722, flags: DIFlagFwdDecl)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !135, file: !26, line: 727, baseType: !1503, size: 64, offset: 4224)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1505)
!1505 = !{!1506, !1507, !1508, !1512, !1513, !1514}
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1504, file: !38, line: 743, baseType: !827, size: 1472)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1504, file: !38, line: 744, baseType: !830, size: 64, offset: 1472)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1504, file: !38, line: 745, baseType: !1509, size: 64, offset: 1536)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{null, !799, !122}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1504, file: !38, line: 746, baseType: !830, size: 64, offset: 1600)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1504, file: !38, line: 747, baseType: !821, size: 64, offset: 1664)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1504, file: !38, line: 748, baseType: !821, size: 64, offset: 1728)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !135, file: !26, line: 736, baseType: !1516, size: 128, offset: 4288)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1517)
!1517 = !{!1518, !1522}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1516, file: !26, line: 531, baseType: !1519, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1521, line: 13, flags: DIFlagFwdDecl)
!1521 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1516, file: !26, line: 532, baseType: !1523, size: 64, offset: 64)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !135, file: !26, line: 738, baseType: !1526, size: 64, offset: 4416)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1528)
!1528 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !135, file: !26, line: 740, baseType: !1530, size: 64, offset: 4480)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !135, file: !26, line: 741, baseType: !390, size: 64, offset: 4544)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !135, file: !26, line: 746, baseType: !390, size: 64, offset: 4608)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !135, file: !26, line: 747, baseType: !1534, size: 64, offset: 4672)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1536)
!1536 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !135, file: !26, line: 749, baseType: !1538, size: 64, offset: 4736)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1540)
!1540 = !{!1541, !1542, !1543}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1539, file: !26, line: 433, baseType: !7, size: 32)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1539, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1539, file: !26, line: 435, baseType: !277, size: 64, offset: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !135, file: !26, line: 751, baseType: !146, size: 128, offset: 4800)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !135, file: !26, line: 762, baseType: !1546, size: 64, offset: 4928)
!1546 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1547, size: 64)
!1547 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !135, file: !26, line: 770, baseType: !1549, offset: 4992)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1550, line: 5, elements: !363)
!1550 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !135, file: !26, line: 772, baseType: !1552, size: 64, offset: 4992)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1554, line: 18, flags: DIFlagFwdDecl)
!1554 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !135, file: !26, line: 773, baseType: !104, size: 64, offset: 5056)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !135, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !135, file: !26, line: 778, baseType: !1558, size: 32, offset: 5152)
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !123, line: 21, baseType: !1559)
!1559 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !123, line: 18, baseType: !91)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !135, file: !26, line: 779, baseType: !91, size: 32, offset: 5184)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !135, file: !26, line: 781, baseType: !159, size: 32, offset: 5216)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !135, file: !26, line: 782, baseType: !146, size: 128, offset: 5248)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !135, file: !26, line: 784, baseType: !1564, size: 64, offset: 5376)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1566)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1567, line: 52, size: 768, elements: !1568)
!1567 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1568 = !{!1569, !1570, !1571, !1572, !1573, !1577, !1581, !1582, !1583, !1584, !1588, !1592}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1566, file: !1567, line: 53, baseType: !142, size: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1566, file: !1567, line: 55, baseType: !279, size: 64, offset: 64)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1566, file: !1567, line: 56, baseType: !279, size: 64, offset: 128)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1566, file: !1567, line: 58, baseType: !812, size: 64, offset: 192)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1566, file: !1567, line: 59, baseType: !1574, size: 64, offset: 256)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!227, !133, !819}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1566, file: !1567, line: 61, baseType: !1578, size: 64, offset: 320)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{null, !1564}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1566, file: !1567, line: 62, baseType: !821, size: 64, offset: 384)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1566, file: !1567, line: 64, baseType: !830, size: 64, offset: 448)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1566, file: !1567, line: 66, baseType: !619, size: 64, offset: 512)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1566, file: !1567, line: 67, baseType: !1585, size: 64, offset: 576)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = !DISubroutineType(types: !1587)
!1587 = !{!131, !133}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1566, file: !1567, line: 69, baseType: !1589, size: 64, offset: 640)
!1589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1590, size: 64)
!1590 = !DISubroutineType(types: !1591)
!1591 = !{null, !133, !654, !661}
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1566, file: !1567, line: 71, baseType: !825, size: 64, offset: 704)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !135, file: !26, line: 785, baseType: !279, size: 64, offset: 5440)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !135, file: !26, line: 787, baseType: !821, size: 64, offset: 5504)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !135, file: !26, line: 788, baseType: !1596, size: 64, offset: 5568)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !135, file: !26, line: 789, baseType: !1599, size: 64, offset: 5632)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !135, file: !26, line: 791, baseType: !1602, size: 64, offset: 5696)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1604)
!1604 = !{!1605, !1606, !1607, !1608, !1609}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1603, file: !26, line: 598, baseType: !53, size: 32)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1603, file: !26, line: 599, baseType: !62, size: 32, offset: 32)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1603, file: !26, line: 600, baseType: !67, size: 32, offset: 64)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1603, file: !26, line: 601, baseType: !122, size: 8, offset: 96)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1603, file: !26, line: 602, baseType: !122, size: 8, offset: 104)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !135, file: !26, line: 793, baseType: !72, size: 32, offset: 5760)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !135, file: !26, line: 795, baseType: !122, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !135, file: !26, line: 796, baseType: !122, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !135, file: !26, line: 797, baseType: !122, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !135, file: !26, line: 798, baseType: !122, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !135, file: !26, line: 799, baseType: !122, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !108, file: !101, line: 131, baseType: !119, size: 64, offset: 256)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !108, file: !101, line: 133, baseType: !1618, size: 64, offset: 320)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!78, !125}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !108, file: !101, line: 134, baseType: !1622, size: 64, offset: 384)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!122, !125, !142}
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !108, file: !101, line: 136, baseType: !1626, size: 64, offset: 448)
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DISubroutineType(types: !1628)
!1628 = !{!46, !125, !142, !7, !85, !274}
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !108, file: !101, line: 141, baseType: !1630, size: 64, offset: 512)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DISubroutineType(types: !1632)
!1632 = !{!46, !125, !142, !1220, !274}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !108, file: !101, line: 144, baseType: !1634, size: 64, offset: 576)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!142, !125}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !108, file: !101, line: 145, baseType: !1634, size: 64, offset: 640)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !108, file: !101, line: 146, baseType: !1639, size: 64, offset: 704)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!104, !125}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !108, file: !101, line: 148, baseType: !1643, size: 64, offset: 768)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!104, !125, !104}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !108, file: !101, line: 151, baseType: !1647, size: 64, offset: 832)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!104, !125, !142}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !108, file: !101, line: 153, baseType: !1651, size: 64, offset: 896)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!46, !125, !142, !142, !7, !7, !1654}
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !101, line: 94, size: 640, elements: !1656)
!1656 = !{!1657, !1658, !1659}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1655, file: !101, line: 95, baseType: !104, size: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1655, file: !101, line: 96, baseType: !7, size: 32, offset: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1655, file: !101, line: 97, baseType: !1660, size: 512, offset: 128)
!1660 = !DICompositeType(tag: DW_TAG_array_type, baseType: !390, size: 512, elements: !1426)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !108, file: !101, line: 158, baseType: !1643, size: 64, offset: 960)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !108, file: !101, line: 161, baseType: !1639, size: 64, offset: 1024)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !108, file: !101, line: 163, baseType: !111, size: 64, offset: 1088)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !108, file: !101, line: 164, baseType: !1665, size: 64, offset: 1152)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DISubroutineType(types: !1667)
!1667 = !{!46, !125, !1668}
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !101, line: 73, size: 128, elements: !1670)
!1670 = !{!1671, !1672, !1673}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1669, file: !101, line: 74, baseType: !7, size: 32)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1669, file: !101, line: 75, baseType: !7, size: 32, offset: 32)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1669, file: !101, line: 76, baseType: !125, size: 64, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !108, file: !101, line: 166, baseType: !1675, size: 64, offset: 1216)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!85, !104, !46}
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !108, file: !101, line: 167, baseType: !1679, size: 64, offset: 1280)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = !DISubroutineType(types: !1681)
!1681 = !{!46, !125, !7}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !108, file: !101, line: 168, baseType: !1683, size: 64, offset: 1344)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!46, !104}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !100, file: !101, line: 44, baseType: !799, size: 64, offset: 128)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !100, file: !101, line: 45, baseType: !146, size: 128, offset: 192)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !100, file: !101, line: 46, baseType: !146, size: 128, offset: 320)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !100, file: !101, line: 47, baseType: !187, size: 8, offset: 448)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !87, file: !88, line: 372, baseType: !146, size: 128, offset: 640)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !87, file: !88, line: 373, baseType: !146, size: 128, offset: 768)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !87, file: !88, line: 374, baseType: !1693, size: 32, offset: 896)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !88, line: 181, size: 32, elements: !1694)
!1694 = !{!1695, !1696, !1697, !1698, !1699, !1700}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !1693, file: !88, line: 182, baseType: !91, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1693, file: !88, line: 183, baseType: !91, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !1693, file: !88, line: 184, baseType: !91, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !1693, file: !88, line: 185, baseType: !91, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !1693, file: !88, line: 186, baseType: !91, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1693, file: !88, line: 187, baseType: !91, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !87, file: !88, line: 375, baseType: !1702, size: 32, offset: 928)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !88, line: 192, size: 32, elements: !1703)
!1703 = !{!1704, !1705, !1706, !1707, !1708, !1709, !1710, !1711, !1712, !1713, !1714, !1715, !1716, !1717, !1718}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !1702, file: !88, line: 193, baseType: !91, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1702, file: !88, line: 194, baseType: !91, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !1702, file: !88, line: 195, baseType: !91, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !1702, file: !88, line: 196, baseType: !91, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !1702, file: !88, line: 197, baseType: !91, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !1702, file: !88, line: 198, baseType: !91, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1702, file: !88, line: 199, baseType: !91, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !1702, file: !88, line: 200, baseType: !91, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !1702, file: !88, line: 201, baseType: !91, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !1702, file: !88, line: 202, baseType: !91, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !1702, file: !88, line: 203, baseType: !91, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !1702, file: !88, line: 204, baseType: !91, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !1702, file: !88, line: 205, baseType: !91, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "honor_deps", scope: !1702, file: !88, line: 206, baseType: !91, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1702, file: !88, line: 207, baseType: !91, size: 18, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !87, file: !88, line: 376, baseType: !1720, size: 960, offset: 960)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !88, line: 238, size: 960, elements: !1721)
!1721 = !{!1722, !1725, !1726, !1734, !1736, !1737, !1738, !1743, !1748}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !1720, file: !88, line: 239, baseType: !1723, size: 64)
!1723 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !88, line: 220, baseType: !1724)
!1724 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 64, elements: !1426)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "instance_no", scope: !1720, file: !88, line: 240, baseType: !46, size: 32, offset: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1720, file: !88, line: 241, baseType: !1727, size: 32, offset: 96)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !88, line: 230, size: 32, elements: !1728)
!1728 = !{!1729, !1730, !1731, !1732, !1733}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !1727, file: !88, line: 231, baseType: !91, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !1727, file: !88, line: 232, baseType: !91, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !1727, file: !88, line: 233, baseType: !91, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "backlight", scope: !1727, file: !88, line: 234, baseType: !91, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1727, file: !88, line: 235, baseType: !91, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !1720, file: !88, line: 242, baseType: !1735, size: 64, offset: 128)
!1735 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !88, line: 221, baseType: !390)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !1720, file: !88, line: 243, baseType: !227, size: 64, offset: 192)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1720, file: !88, line: 244, baseType: !146, size: 128, offset: 256)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !1720, file: !88, line: 245, baseType: !1739, size: 320, offset: 384)
!1739 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !88, line: 222, baseType: !1740)
!1740 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 320, elements: !1741)
!1741 = !{!1742}
!1742 = !DISubrange(count: 40)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !1720, file: !88, line: 246, baseType: !1744, size: 160, offset: 704)
!1744 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !88, line: 223, baseType: !1745)
!1745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 160, elements: !1746)
!1746 = !{!1747}
!1747 = !DISubrange(count: 20)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !1720, file: !88, line: 247, baseType: !1749, size: 64, offset: 896)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !98, line: 908, size: 192, elements: !1751)
!1751 = !{!1752, !1754, !1759, !1765, !1772, !1778, !1784, !1792}
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1750, file: !98, line: 909, baseType: !1753, size: 32)
!1753 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !98, line: 644, baseType: !91)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1750, file: !98, line: 913, baseType: !1755, size: 128)
!1755 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1750, file: !98, line: 910, size: 128, elements: !1756)
!1756 = !{!1757, !1758}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1755, file: !98, line: 911, baseType: !1753, size: 32)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1755, file: !98, line: 912, baseType: !390, size: 64, offset: 64)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1750, file: !98, line: 919, baseType: !1760, size: 128)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1750, file: !98, line: 915, size: 128, elements: !1761)
!1761 = !{!1762, !1763, !1764}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1760, file: !98, line: 916, baseType: !1753, size: 32)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1760, file: !98, line: 917, baseType: !91, size: 32, offset: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1760, file: !98, line: 918, baseType: !227, size: 64, offset: 64)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1750, file: !98, line: 925, baseType: !1766, size: 128)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1750, file: !98, line: 921, size: 128, elements: !1767)
!1767 = !{!1768, !1769, !1770}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1766, file: !98, line: 922, baseType: !1753, size: 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1766, file: !98, line: 923, baseType: !91, size: 32, offset: 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1766, file: !98, line: 924, baseType: !1771, size: 64, offset: 64)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !1750, file: !98, line: 931, baseType: !1773, size: 128)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1750, file: !98, line: 927, size: 128, elements: !1774)
!1774 = !{!1775, !1776, !1777}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1773, file: !98, line: 928, baseType: !1753, size: 32)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1773, file: !98, line: 929, baseType: !91, size: 32, offset: 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1773, file: !98, line: 930, baseType: !1749, size: 64, offset: 64)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !1750, file: !98, line: 937, baseType: !1779, size: 128)
!1779 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1750, file: !98, line: 933, size: 128, elements: !1780)
!1780 = !{!1781, !1782, !1783}
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1779, file: !98, line: 934, baseType: !1753, size: 32)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !1779, file: !98, line: 935, baseType: !1753, size: 32, offset: 32)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !1779, file: !98, line: 936, baseType: !97, size: 64, offset: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !1750, file: !98, line: 944, baseType: !1785, size: 192)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1750, file: !98, line: 939, size: 192, elements: !1786)
!1786 = !{!1787, !1788, !1789, !1791}
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1785, file: !98, line: 940, baseType: !1753, size: 32)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !1785, file: !98, line: 941, baseType: !91, size: 32, offset: 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !1785, file: !98, line: 942, baseType: !1790, size: 64, offset: 64)
!1790 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !98, line: 128, baseType: !390)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !1785, file: !98, line: 943, baseType: !91, size: 32, offset: 128)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !1750, file: !98, line: 950, baseType: !1793, size: 96)
!1793 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1750, file: !98, line: 946, size: 96, elements: !1794)
!1794 = !{!1795, !1796, !1797}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1793, file: !98, line: 947, baseType: !1753, size: 32)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !1793, file: !98, line: 948, baseType: !91, size: 32, offset: 32)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !1793, file: !98, line: 949, baseType: !91, size: 32, offset: 64)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !87, file: !88, line: 377, baseType: !1799, size: 1408, offset: 1920)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !88, line: 280, size: 1408, elements: !1800)
!1800 = !{!1801, !1802, !1812, !1827}
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1799, file: !88, line: 281, baseType: !46, size: 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1799, file: !88, line: 282, baseType: !1803, size: 32, offset: 32)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !88, line: 259, size: 32, elements: !1804)
!1804 = !{!1805, !1806, !1807, !1808, !1809, !1810, !1811}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !1803, file: !88, line: 260, baseType: !91, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !1803, file: !88, line: 261, baseType: !91, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !1803, file: !88, line: 262, baseType: !91, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !1803, file: !88, line: 263, baseType: !91, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !1803, file: !88, line: 264, baseType: !91, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !1803, file: !88, line: 265, baseType: !91, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1803, file: !88, line: 266, baseType: !91, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1799, file: !88, line: 283, baseType: !1813, size: 1280, offset: 64)
!1813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1814, size: 1280, elements: !1825)
!1814 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !88, line: 269, size: 256, elements: !1815)
!1815 = !{!1816, !1822, !1823, !1824}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1814, file: !88, line: 274, baseType: !1817, size: 8)
!1817 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1814, file: !88, line: 270, size: 8, elements: !1818)
!1818 = !{!1819, !1820, !1821}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1817, file: !88, line: 271, baseType: !187, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !1817, file: !88, line: 272, baseType: !187, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1817, file: !88, line: 273, baseType: !187, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1814, file: !88, line: 275, baseType: !46, size: 32, offset: 32)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1814, file: !88, line: 276, baseType: !46, size: 32, offset: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !1814, file: !88, line: 277, baseType: !146, size: 128, offset: 128)
!1825 = !{!1826}
!1826 = !DISubrange(count: 5)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "state_for_enumeration", scope: !1799, file: !88, line: 284, baseType: !187, size: 8, offset: 1344)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !87, file: !88, line: 378, baseType: !1829, size: 640, offset: 3328)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !88, line: 330, size: 640, elements: !1830)
!1830 = !{!1831, !1832, !1833, !1834, !1835, !1840, !1849, !1850, !1851}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !1829, file: !88, line: 331, baseType: !97, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !1829, file: !88, line: 332, baseType: !390, size: 64, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !1829, file: !88, line: 333, baseType: !390, size: 64, offset: 128)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !1829, file: !88, line: 334, baseType: !146, size: 128, offset: 192)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1829, file: !88, line: 335, baseType: !1836, size: 8, offset: 320)
!1836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !88, line: 320, size: 8, elements: !1837)
!1837 = !{!1838, !1839}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1836, file: !88, line: 321, baseType: !187, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !1836, file: !88, line: 322, baseType: !187, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1829, file: !88, line: 336, baseType: !1841, size: 128, offset: 384)
!1841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !88, line: 325, size: 128, elements: !1842)
!1842 = !{!1843, !1848}
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1841, file: !88, line: 326, baseType: !1844, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DISubroutineType(types: !1846)
!1846 = !{null, !1847}
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1841, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1841, file: !88, line: 327, baseType: !799, size: 64, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !1829, file: !88, line: 337, baseType: !1351, size: 64, offset: 512)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !1829, file: !88, line: 338, baseType: !46, size: 32, offset: 576)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !1829, file: !88, line: 339, baseType: !46, size: 32, offset: 608)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !87, file: !88, line: 379, baseType: !1853, size: 192, offset: 3968)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !88, line: 312, size: 192, elements: !1854)
!1854 = !{!1855, !1856, !1860, !1861}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1853, file: !88, line: 313, baseType: !46, size: 32)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1853, file: !88, line: 314, baseType: !1857, size: 8, offset: 32)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !88, line: 298, size: 8, elements: !1858)
!1858 = !{!1859}
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1857, file: !88, line: 299, baseType: !187, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !1853, file: !88, line: 315, baseType: !46, size: 32, offset: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1853, file: !88, line: 316, baseType: !1862, size: 64, offset: 128)
!1862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1863, size: 64)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !88, line: 302, size: 64, elements: !1864)
!1864 = !{!1865, !1870, !1871, !1872}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1863, file: !88, line: 306, baseType: !1866, size: 8)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1863, file: !88, line: 303, size: 8, elements: !1867)
!1867 = !{!1868, !1869}
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1866, file: !88, line: 304, baseType: !187, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1866, file: !88, line: 305, baseType: !187, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1863, file: !88, line: 307, baseType: !187, size: 8, offset: 8)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !1863, file: !88, line: 308, baseType: !187, size: 8, offset: 16)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1863, file: !88, line: 309, baseType: !46, size: 32, offset: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !87, file: !88, line: 380, baseType: !1874, size: 64, offset: 4160)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !88, line: 212, size: 64, elements: !1875)
!1875 = !{!1876}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1874, file: !88, line: 213, baseType: !1877, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !88, line: 86, flags: DIFlagFwdDecl)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !87, file: !88, line: 381, baseType: !1880, size: 384, offset: 4224)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !88, line: 357, size: 384, elements: !1881)
!1881 = !{!1882, !1885, !1886, !1887}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1880, file: !88, line: 358, baseType: !1883, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1884, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1750)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1880, file: !88, line: 359, baseType: !146, size: 128, offset: 64)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !1880, file: !88, line: 360, baseType: !1883, size: 64, offset: 192)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !1880, file: !88, line: 361, baseType: !146, size: 128, offset: 256)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !87, file: !88, line: 382, baseType: !1889, size: 64, offset: 4608)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !88, line: 124, size: 1216, elements: !1891)
!1891 = !{!1892, !1893, !1894, !1899, !1903, !1907, !1908, !1909}
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1890, file: !88, line: 125, baseType: !1271, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !1890, file: !88, line: 126, baseType: !146, size: 128, offset: 64)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1890, file: !88, line: 127, baseType: !1895, size: 64, offset: 192)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DISubroutineType(types: !1897)
!1897 = !{!122, !142, !1898}
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !1890, file: !88, line: 128, baseType: !1900, size: 64, offset: 256)
!1900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1901, size: 64)
!1901 = !DISubroutineType(types: !1902)
!1902 = !{!46, !86, !1271}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1890, file: !88, line: 129, baseType: !1904, size: 64, offset: 320)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{null, !86}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !1890, file: !88, line: 130, baseType: !821, size: 64, offset: 384)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !1890, file: !88, line: 131, baseType: !821, size: 64, offset: 448)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !1890, file: !88, line: 132, baseType: !1910, size: 704, offset: 512)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !88, line: 110, size: 704, elements: !1911)
!1911 = !{!1912, !1913, !1917, !1918, !1919}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1910, file: !88, line: 111, baseType: !138, size: 512)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !1910, file: !88, line: 112, baseType: !1914, size: 64, offset: 512)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1915, size: 64)
!1915 = !DISubroutineType(types: !1916)
!1916 = !{!46, !86}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !1910, file: !88, line: 113, baseType: !1904, size: 64, offset: 576)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1910, file: !88, line: 114, baseType: !122, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !1910, file: !88, line: 115, baseType: !122, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !87, file: !88, line: 383, baseType: !1921, size: 64, offset: 4672)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !88, line: 140, size: 256, elements: !1923)
!1923 = !{!1924, !1925, !1929, !1933}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !1922, file: !88, line: 141, baseType: !86, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !1922, file: !88, line: 142, baseType: !1926, size: 64, offset: 64)
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DISubroutineType(types: !1928)
!1928 = !{!46, !86, !91}
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1922, file: !88, line: 143, baseType: !1930, size: 64, offset: 128)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DISubroutineType(types: !1932)
!1932 = !{null, !86, !91}
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1922, file: !88, line: 144, baseType: !1904, size: 64, offset: 192)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !87, file: !88, line: 384, baseType: !1935, size: 64, offset: 4736)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1937)
!1937 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !88, line: 364, flags: DIFlagFwdDecl)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !87, file: !88, line: 385, baseType: !85, size: 64, offset: 4800)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !87, file: !88, line: 386, baseType: !135, size: 5824, offset: 4864)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !87, file: !88, line: 387, baseType: !7, size: 32, offset: 10688)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !87, file: !88, line: 388, baseType: !7, size: 32, offset: 10720)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !87, file: !88, line: 389, baseType: !146, size: 128, offset: 10752)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !87, file: !88, line: 390, baseType: !484, size: 256, offset: 10880)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !87, file: !88, line: 391, baseType: !1904, size: 64, offset: 11136)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_fan_fps", file: !1947, line: 23, size: 768, elements: !1948)
!1947 = !DIFile(filename: "drivers/acpi/fan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a4b4bcab33848723c331a5c38ececf2")
!1948 = !{!1949, !1950, !1951, !1952, !1953, !1954, !1955}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !1946, file: !1947, line: 24, baseType: !390, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "trip_point", scope: !1946, file: !1947, line: 25, baseType: !390, size: 64, offset: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !1946, file: !1947, line: 26, baseType: !390, size: 64, offset: 128)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "noise_level", scope: !1946, file: !1947, line: 27, baseType: !390, size: 64, offset: 192)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1946, file: !1947, line: 28, baseType: !390, size: 64, offset: 256)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1946, file: !1947, line: 29, baseType: !1745, size: 160, offset: 320)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "dev_attr", scope: !1946, file: !1947, line: 30, baseType: !1956, size: 256, offset: 512)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !26, line: 106, size: 256, elements: !1957)
!1957 = !{!1958, !1959, !1964}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1956, file: !26, line: 107, baseType: !265, size: 128)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1956, file: !26, line: 108, baseType: !1960, size: 64, offset: 128)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = !DISubroutineType(types: !1962)
!1962 = !{!259, !799, !1963, !227}
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1956, file: !26, line: 110, baseType: !1965, size: 64, offset: 192)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!259, !799, !1963, !142, !274}
!1968 = !{!0, !1969, !1972, !1977, !1982, !1984, !1987, !1992, !1997, !1999}
!1969 = !DIGlobalVariableExpression(var: !1970, expr: !DIExpression())
!1970 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license207", scope: !2, file: !3, line: 17, type: !1971, isLocal: true, isDefinition: true, align: 8)
!1971 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 128, elements: !1277)
!1972 = !DIGlobalVariableExpression(var: !1973, expr: !DIExpression())
!1973 = distinct !DIGlobalVariable(scope: null, file: !3, line: 81, type: !1974, isLocal: true, isDefinition: true)
!1974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 152, elements: !1975)
!1975 = !{!1976}
!1976 = !DISubrange(count: 19)
!1977 = !DIGlobalVariableExpression(var: !1978, expr: !DIExpression())
!1978 = distinct !DIGlobalVariable(scope: null, file: !3, line: 91, type: !1979, isLocal: true, isDefinition: true)
!1979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 112, elements: !1980)
!1980 = !{!1981}
!1981 = !DISubrange(count: 14)
!1982 = !DIGlobalVariableExpression(var: !1983, expr: !DIExpression())
!1983 = distinct !DIGlobalVariable(scope: null, file: !3, line: 100, type: !1724, isLocal: true, isDefinition: true)
!1984 = !DIGlobalVariableExpression(var: !1985, expr: !DIExpression())
!1985 = distinct !DIGlobalVariable(scope: null, file: !3, line: 70, type: !1986, isLocal: true, isDefinition: true)
!1986 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 32, elements: !465)
!1987 = !DIGlobalVariableExpression(var: !1988, expr: !DIExpression())
!1988 = distinct !DIGlobalVariable(scope: null, file: !3, line: 62, type: !1989, isLocal: true, isDefinition: true)
!1989 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 48, elements: !1990)
!1990 = !{!1991}
!1991 = !DISubrange(count: 6)
!1992 = !DIGlobalVariableExpression(var: !1993, expr: !DIExpression())
!1993 = distinct !DIGlobalVariable(scope: null, file: !3, line: 25, type: !1994, isLocal: true, isDefinition: true)
!1994 = !DICompositeType(tag: DW_TAG_array_type, baseType: !144, size: 104, elements: !1995)
!1995 = !{!1996}
!1996 = !DISubrange(count: 13)
!1997 = !DIGlobalVariableExpression(var: !1998, expr: !DIExpression())
!1998 = distinct !DIGlobalVariable(scope: null, file: !3, line: 27, type: !1989, isLocal: true, isDefinition: true)
!1999 = !DIGlobalVariableExpression(var: !2000, expr: !DIExpression())
!2000 = distinct !DIGlobalVariable(scope: null, file: !3, line: 45, type: !1994, isLocal: true, isDefinition: true)
!2001 = !DICompositeType(tag: DW_TAG_array_type, baseType: !143, size: 208, elements: !2002)
!2002 = !{!2003}
!2003 = !DISubrange(count: 26)
!2004 = !{i32 7, !"Dwarf Version", i32 5}
!2005 = !{i32 2, !"Debug Info Version", i32 3}
!2006 = !{i32 1, !"wchar_size", i32 2}
!2007 = !{i32 8, !"cf-protection-branch", i32 1}
!2008 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2009 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2010 = !{i32 1, !"Code Model", i32 2}
!2011 = !{i32 1, !"override-stack-alignment", i32 8}
!2012 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2013 = distinct !DISubprogram(name: "acpi_fan_create_attributes", scope: !3, file: !3, line: 73, type: !1915, scopeLine: 74, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2014)
!2014 = !{!2015, !2016, !2035, !2036, !2037, !2041, !2044, !2045}
!2015 = !DILocalVariable(name: "device", arg: 1, scope: !2013, file: !3, line: 73, type: !86)
!2016 = !DILocalVariable(name: "fan", scope: !2013, file: !3, line: 75, type: !2017)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_fan", file: !1947, line: 46, size: 768, elements: !2019)
!2019 = !{!2020, !2021, !2028, !2029, !2030, !2033, !2034}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "acpi4", scope: !2018, file: !1947, line: 47, baseType: !122, size: 8)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "fif", scope: !2018, file: !1947, line: 48, baseType: !2022, size: 32, offset: 8)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_fan_fif", file: !1947, line: 33, size: 32, elements: !2023)
!2023 = !{!2024, !2025, !2026, !2027}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !2022, file: !1947, line: 34, baseType: !187, size: 8)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "fine_grain_ctrl", scope: !2022, file: !1947, line: 35, baseType: !187, size: 8, offset: 8)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !2022, file: !1947, line: 36, baseType: !187, size: 8, offset: 16)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "low_speed_notification", scope: !2022, file: !1947, line: 37, baseType: !187, size: 8, offset: 24)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "fps", scope: !2018, file: !1947, line: 49, baseType: !1945, size: 64, offset: 64)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "fps_count", scope: !2018, file: !1947, line: 50, baseType: !46, size: 32, offset: 128)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !2018, file: !1947, line: 51, baseType: !2031, size: 64, offset: 192)
!2031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2032, size: 64)
!2032 = !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !1947, line: 51, flags: DIFlagFwdDecl)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "fst_speed", scope: !2018, file: !1947, line: 52, baseType: !1956, size: 256, offset: 256)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "fine_grain_control", scope: !2018, file: !1947, line: 53, baseType: !1956, size: 256, offset: 512)
!2035 = !DILocalVariable(name: "i", scope: !2013, file: !3, line: 76, type: !46)
!2036 = !DILocalVariable(name: "status", scope: !2013, file: !3, line: 76, type: !46)
!2037 = !DILocalVariable(name: "fps", scope: !2038, file: !3, line: 98, type: !1945)
!2038 = distinct !DILexicalBlock(scope: !2039, file: !3, line: 97, column: 39)
!2039 = distinct !DILexicalBlock(scope: !2040, file: !3, line: 97, column: 2)
!2040 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 97, column: 2)
!2041 = !DILocalVariable(name: "j", scope: !2042, file: !3, line: 108, type: !46)
!2042 = distinct !DILexicalBlock(scope: !2043, file: !3, line: 107, column: 15)
!2043 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 107, column: 7)
!2044 = !DILabel(scope: !2013, name: "rem_fst_attr", file: !3, line: 118)
!2045 = !DILabel(scope: !2013, name: "rem_fine_grain_attr", file: !3, line: 121)
!2046 = !DILocation(line: 73, column: 52, scope: !2013)
!2047 = !DILocation(line: 75, column: 2, scope: !2013)
!2048 = !DILocation(line: 75, column: 19, scope: !2013)
!2049 = !DILocation(line: 75, column: 42, scope: !2013)
!2050 = !DILocation(line: 75, column: 25, scope: !2013)
!2051 = !DILocation(line: 76, column: 2, scope: !2013)
!2052 = !DILocation(line: 76, column: 6, scope: !2013)
!2053 = !DILocation(line: 76, column: 9, scope: !2013)
!2054 = !DILocation(line: 78, column: 2, scope: !2013)
!2055 = !DILocation(line: 78, column: 2, scope: !2056)
!2056 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 78, column: 2)
!2057 = !DILocation(line: 79, column: 2, scope: !2013)
!2058 = !DILocation(line: 79, column: 7, scope: !2013)
!2059 = !DILocation(line: 79, column: 26, scope: !2013)
!2060 = !DILocation(line: 79, column: 31, scope: !2013)
!2061 = !DILocation(line: 80, column: 2, scope: !2013)
!2062 = !DILocation(line: 80, column: 7, scope: !2013)
!2063 = !DILocation(line: 80, column: 26, scope: !2013)
!2064 = !DILocation(line: 80, column: 32, scope: !2013)
!2065 = !DILocation(line: 81, column: 2, scope: !2013)
!2066 = !DILocation(line: 81, column: 7, scope: !2013)
!2067 = !DILocation(line: 81, column: 26, scope: !2013)
!2068 = !DILocation(line: 81, column: 31, scope: !2013)
!2069 = !DILocation(line: 81, column: 36, scope: !2013)
!2070 = !DILocation(line: 82, column: 2, scope: !2013)
!2071 = !DILocation(line: 82, column: 7, scope: !2013)
!2072 = !DILocation(line: 82, column: 26, scope: !2013)
!2073 = !DILocation(line: 82, column: 31, scope: !2013)
!2074 = !DILocation(line: 82, column: 36, scope: !2013)
!2075 = !DILocation(line: 83, column: 30, scope: !2013)
!2076 = !DILocation(line: 83, column: 38, scope: !2013)
!2077 = !DILocation(line: 83, column: 42, scope: !2013)
!2078 = !DILocation(line: 83, column: 49, scope: !2013)
!2079 = !DILocation(line: 83, column: 54, scope: !2013)
!2080 = !DILocation(line: 83, column: 73, scope: !2013)
!2081 = !DILocation(line: 83, column: 11, scope: !2013)
!2082 = !DILocation(line: 83, column: 9, scope: !2013)
!2083 = !DILocation(line: 84, column: 6, scope: !2084)
!2084 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 84, column: 6)
!2085 = !DILocation(line: 84, column: 6, scope: !2013)
!2086 = !DILocation(line: 85, column: 10, scope: !2084)
!2087 = !DILocation(line: 85, column: 3, scope: !2084)
!2088 = !DILocation(line: 88, column: 2, scope: !2013)
!2089 = !DILocation(line: 88, column: 2, scope: !2090)
!2090 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 88, column: 2)
!2091 = !DILocation(line: 89, column: 2, scope: !2013)
!2092 = !DILocation(line: 89, column: 7, scope: !2013)
!2093 = !DILocation(line: 89, column: 17, scope: !2013)
!2094 = !DILocation(line: 89, column: 22, scope: !2013)
!2095 = !DILocation(line: 90, column: 2, scope: !2013)
!2096 = !DILocation(line: 90, column: 7, scope: !2013)
!2097 = !DILocation(line: 90, column: 17, scope: !2013)
!2098 = !DILocation(line: 90, column: 23, scope: !2013)
!2099 = !DILocation(line: 91, column: 2, scope: !2013)
!2100 = !DILocation(line: 91, column: 7, scope: !2013)
!2101 = !DILocation(line: 91, column: 17, scope: !2013)
!2102 = !DILocation(line: 91, column: 22, scope: !2013)
!2103 = !DILocation(line: 91, column: 27, scope: !2013)
!2104 = !DILocation(line: 92, column: 2, scope: !2013)
!2105 = !DILocation(line: 92, column: 7, scope: !2013)
!2106 = !DILocation(line: 92, column: 17, scope: !2013)
!2107 = !DILocation(line: 92, column: 22, scope: !2013)
!2108 = !DILocation(line: 92, column: 27, scope: !2013)
!2109 = !DILocation(line: 93, column: 30, scope: !2013)
!2110 = !DILocation(line: 93, column: 38, scope: !2013)
!2111 = !DILocation(line: 93, column: 42, scope: !2013)
!2112 = !DILocation(line: 93, column: 49, scope: !2013)
!2113 = !DILocation(line: 93, column: 54, scope: !2013)
!2114 = !DILocation(line: 93, column: 64, scope: !2013)
!2115 = !DILocation(line: 93, column: 11, scope: !2013)
!2116 = !DILocation(line: 93, column: 9, scope: !2013)
!2117 = !DILocation(line: 94, column: 6, scope: !2118)
!2118 = distinct !DILexicalBlock(scope: !2013, file: !3, line: 94, column: 6)
!2119 = !DILocation(line: 94, column: 6, scope: !2013)
!2120 = !DILocation(line: 95, column: 3, scope: !2118)
!2121 = !DILocation(line: 97, column: 9, scope: !2040)
!2122 = !DILocation(line: 97, column: 7, scope: !2040)
!2123 = !DILocation(line: 97, column: 14, scope: !2039)
!2124 = !DILocation(line: 97, column: 18, scope: !2039)
!2125 = !DILocation(line: 97, column: 23, scope: !2039)
!2126 = !DILocation(line: 97, column: 16, scope: !2039)
!2127 = !DILocation(line: 97, column: 2, scope: !2040)
!2128 = !DILocation(line: 98, column: 3, scope: !2038)
!2129 = !DILocation(line: 98, column: 24, scope: !2038)
!2130 = !DILocation(line: 98, column: 31, scope: !2038)
!2131 = !DILocation(line: 98, column: 36, scope: !2038)
!2132 = !DILocation(line: 98, column: 40, scope: !2038)
!2133 = !DILocation(line: 100, column: 12, scope: !2038)
!2134 = !DILocation(line: 100, column: 17, scope: !2038)
!2135 = !DILocation(line: 100, column: 53, scope: !2038)
!2136 = !DILocation(line: 100, column: 3, scope: !2038)
!2137 = !DILocation(line: 101, column: 3, scope: !2038)
!2138 = !DILocation(line: 101, column: 3, scope: !2139)
!2139 = distinct !DILexicalBlock(scope: !2038, file: !3, line: 101, column: 3)
!2140 = !DILocation(line: 102, column: 3, scope: !2038)
!2141 = !DILocation(line: 102, column: 8, scope: !2038)
!2142 = !DILocation(line: 102, column: 17, scope: !2038)
!2143 = !DILocation(line: 102, column: 22, scope: !2038)
!2144 = !DILocation(line: 103, column: 3, scope: !2038)
!2145 = !DILocation(line: 103, column: 8, scope: !2038)
!2146 = !DILocation(line: 103, column: 17, scope: !2038)
!2147 = !DILocation(line: 103, column: 23, scope: !2038)
!2148 = !DILocation(line: 104, column: 29, scope: !2038)
!2149 = !DILocation(line: 104, column: 34, scope: !2038)
!2150 = !DILocation(line: 104, column: 3, scope: !2038)
!2151 = !DILocation(line: 104, column: 8, scope: !2038)
!2152 = !DILocation(line: 104, column: 17, scope: !2038)
!2153 = !DILocation(line: 104, column: 22, scope: !2038)
!2154 = !DILocation(line: 104, column: 27, scope: !2038)
!2155 = !DILocation(line: 105, column: 3, scope: !2038)
!2156 = !DILocation(line: 105, column: 8, scope: !2038)
!2157 = !DILocation(line: 105, column: 17, scope: !2038)
!2158 = !DILocation(line: 105, column: 22, scope: !2038)
!2159 = !DILocation(line: 105, column: 27, scope: !2038)
!2160 = !DILocation(line: 106, column: 31, scope: !2038)
!2161 = !DILocation(line: 106, column: 39, scope: !2038)
!2162 = !DILocation(line: 106, column: 43, scope: !2038)
!2163 = !DILocation(line: 106, column: 50, scope: !2038)
!2164 = !DILocation(line: 106, column: 55, scope: !2038)
!2165 = !DILocation(line: 106, column: 64, scope: !2038)
!2166 = !DILocation(line: 106, column: 12, scope: !2038)
!2167 = !DILocation(line: 106, column: 10, scope: !2038)
!2168 = !DILocation(line: 107, column: 7, scope: !2043)
!2169 = !DILocation(line: 107, column: 7, scope: !2038)
!2170 = !DILocation(line: 108, column: 4, scope: !2042)
!2171 = !DILocation(line: 108, column: 8, scope: !2042)
!2172 = !DILocation(line: 110, column: 11, scope: !2173)
!2173 = distinct !DILexicalBlock(scope: !2042, file: !3, line: 110, column: 4)
!2174 = !DILocation(line: 110, column: 9, scope: !2173)
!2175 = !DILocation(line: 110, column: 16, scope: !2176)
!2176 = distinct !DILexicalBlock(scope: !2173, file: !3, line: 110, column: 4)
!2177 = !DILocation(line: 110, column: 20, scope: !2176)
!2178 = !DILocation(line: 110, column: 18, scope: !2176)
!2179 = !DILocation(line: 110, column: 4, scope: !2173)
!2180 = !DILocation(line: 111, column: 24, scope: !2176)
!2181 = !DILocation(line: 111, column: 32, scope: !2176)
!2182 = !DILocation(line: 111, column: 36, scope: !2176)
!2183 = !DILocation(line: 111, column: 43, scope: !2176)
!2184 = !DILocation(line: 111, column: 48, scope: !2176)
!2185 = !DILocation(line: 111, column: 52, scope: !2176)
!2186 = !DILocation(line: 111, column: 55, scope: !2176)
!2187 = !DILocation(line: 111, column: 64, scope: !2176)
!2188 = !DILocation(line: 111, column: 5, scope: !2176)
!2189 = !DILocation(line: 110, column: 23, scope: !2176)
!2190 = !DILocation(line: 110, column: 4, scope: !2176)
!2191 = distinct !{!2191, !2179, !2192, !2193, !2194}
!2192 = !DILocation(line: 111, column: 68, scope: !2173)
!2193 = !{!"llvm.loop.mustprogress"}
!2194 = !{!"llvm.loop.unroll.disable"}
!2195 = !DILocation(line: 113, column: 3, scope: !2043)
!2196 = !DILocation(line: 114, column: 2, scope: !2039)
!2197 = !DILocation(line: 114, column: 2, scope: !2038)
!2198 = !DILocation(line: 97, column: 34, scope: !2039)
!2199 = !DILocation(line: 97, column: 2, scope: !2039)
!2200 = distinct !{!2200, !2127, !2201, !2193, !2194}
!2201 = !DILocation(line: 114, column: 2, scope: !2040)
!2202 = !DILocation(line: 116, column: 2, scope: !2013)
!2203 = !DILocation(line: 118, column: 1, scope: !2013)
!2204 = !DILocation(line: 119, column: 21, scope: !2013)
!2205 = !DILocation(line: 119, column: 29, scope: !2013)
!2206 = !DILocation(line: 119, column: 33, scope: !2013)
!2207 = !DILocation(line: 119, column: 40, scope: !2013)
!2208 = !DILocation(line: 119, column: 45, scope: !2013)
!2209 = !DILocation(line: 119, column: 55, scope: !2013)
!2210 = !DILocation(line: 119, column: 2, scope: !2013)
!2211 = !DILocation(line: 121, column: 1, scope: !2013)
!2212 = !DILocation(line: 122, column: 21, scope: !2013)
!2213 = !DILocation(line: 122, column: 29, scope: !2013)
!2214 = !DILocation(line: 122, column: 33, scope: !2013)
!2215 = !DILocation(line: 122, column: 40, scope: !2013)
!2216 = !DILocation(line: 122, column: 45, scope: !2013)
!2217 = !DILocation(line: 122, column: 64, scope: !2013)
!2218 = !DILocation(line: 122, column: 2, scope: !2013)
!2219 = !DILocation(line: 124, column: 9, scope: !2013)
!2220 = !DILocation(line: 124, column: 2, scope: !2013)
!2221 = !DILocation(line: 125, column: 1, scope: !2013)
!2222 = distinct !DISubprogram(name: "acpi_driver_data", scope: !88, file: !88, line: 456, type: !2223, scopeLine: 457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2225)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!85, !86}
!2225 = !{!2226}
!2226 = !DILocalVariable(name: "d", arg: 1, scope: !2222, file: !88, line: 456, type: !86)
!2227 = !DILocation(line: 456, column: 58, scope: !2222)
!2228 = !DILocation(line: 458, column: 9, scope: !2222)
!2229 = !DILocation(line: 458, column: 12, scope: !2222)
!2230 = !DILocation(line: 458, column: 2, scope: !2222)
!2231 = distinct !DISubprogram(name: "show_fine_grain_control", scope: !3, file: !3, line: 65, type: !1961, scopeLine: 66, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2232)
!2232 = !{!2233, !2234, !2235, !2236, !2237, !2239}
!2233 = !DILocalVariable(name: "dev", arg: 1, scope: !2231, file: !3, line: 65, type: !799)
!2234 = !DILocalVariable(name: "attr", arg: 2, scope: !2231, file: !3, line: 65, type: !1963)
!2235 = !DILocalVariable(name: "buf", arg: 3, scope: !2231, file: !3, line: 65, type: !227)
!2236 = !DILocalVariable(name: "acpi_dev", scope: !2231, file: !3, line: 67, type: !86)
!2237 = !DILocalVariable(name: "__mptr", scope: !2238, file: !3, line: 67, type: !85)
!2238 = distinct !DILexicalBlock(scope: !2231, file: !3, line: 67, column: 33)
!2239 = !DILocalVariable(name: "fan", scope: !2231, file: !3, line: 68, type: !2017)
!2240 = !DILocation(line: 65, column: 55, scope: !2231)
!2241 = !DILocation(line: 65, column: 85, scope: !2231)
!2242 = !DILocation(line: 65, column: 97, scope: !2231)
!2243 = !DILocation(line: 67, column: 2, scope: !2231)
!2244 = !DILocation(line: 67, column: 22, scope: !2231)
!2245 = !DILocation(line: 67, column: 33, scope: !2238)
!2246 = !DILocation(line: 67, column: 33, scope: !2231)
!2247 = !DILocation(line: 68, column: 2, scope: !2231)
!2248 = !DILocation(line: 68, column: 19, scope: !2231)
!2249 = !DILocation(line: 68, column: 42, scope: !2231)
!2250 = !DILocation(line: 68, column: 25, scope: !2231)
!2251 = !DILocation(line: 70, column: 17, scope: !2231)
!2252 = !DILocation(line: 70, column: 30, scope: !2231)
!2253 = !DILocation(line: 70, column: 35, scope: !2231)
!2254 = !DILocation(line: 70, column: 39, scope: !2231)
!2255 = !DILocation(line: 70, column: 9, scope: !2231)
!2256 = !DILocation(line: 71, column: 1, scope: !2231)
!2257 = !DILocation(line: 70, column: 2, scope: !2231)
!2258 = distinct !DISubprogram(name: "sysfs_create_file", scope: !253, file: !253, line: 620, type: !2259, scopeLine: 622, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2263)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!46, !152, !2261}
!2261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2262, size: 64)
!2262 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !265)
!2263 = !{!2264, !2265}
!2264 = !DILocalVariable(name: "kobj", arg: 1, scope: !2258, file: !253, line: 620, type: !152)
!2265 = !DILocalVariable(name: "attr", arg: 2, scope: !2258, file: !253, line: 621, type: !2261)
!2266 = !DILocation(line: 620, column: 66, scope: !2258)
!2267 = !DILocation(line: 621, column: 32, scope: !2258)
!2268 = !DILocation(line: 623, column: 30, scope: !2258)
!2269 = !DILocation(line: 623, column: 36, scope: !2258)
!2270 = !DILocation(line: 623, column: 9, scope: !2258)
!2271 = !DILocation(line: 623, column: 2, scope: !2258)
!2272 = distinct !DISubprogram(name: "show_fan_speed", scope: !3, file: !3, line: 52, type: !1961, scopeLine: 53, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2273)
!2273 = !{!2274, !2275, !2276, !2277, !2278, !2280, !2286}
!2274 = !DILocalVariable(name: "dev", arg: 1, scope: !2272, file: !3, line: 52, type: !799)
!2275 = !DILocalVariable(name: "attr", arg: 2, scope: !2272, file: !3, line: 52, type: !1963)
!2276 = !DILocalVariable(name: "buf", arg: 3, scope: !2272, file: !3, line: 52, type: !227)
!2277 = !DILocalVariable(name: "acpi_dev", scope: !2272, file: !3, line: 54, type: !86)
!2278 = !DILocalVariable(name: "__mptr", scope: !2279, file: !3, line: 54, type: !85)
!2279 = distinct !DILexicalBlock(scope: !2272, file: !3, line: 54, column: 33)
!2280 = !DILocalVariable(name: "fst", scope: !2272, file: !3, line: 55, type: !2281)
!2281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_fan_fst", file: !1947, line: 40, size: 192, elements: !2282)
!2282 = !{!2283, !2284, !2285}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !2281, file: !1947, line: 41, baseType: !390, size: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !2281, file: !1947, line: 42, baseType: !390, size: 64, offset: 64)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !2281, file: !1947, line: 43, baseType: !390, size: 64, offset: 128)
!2286 = !DILocalVariable(name: "status", scope: !2272, file: !3, line: 56, type: !46)
!2287 = !DILocation(line: 52, column: 46, scope: !2272)
!2288 = !DILocation(line: 52, column: 76, scope: !2272)
!2289 = !DILocation(line: 52, column: 88, scope: !2272)
!2290 = !DILocation(line: 54, column: 2, scope: !2272)
!2291 = !DILocation(line: 54, column: 22, scope: !2272)
!2292 = !DILocation(line: 54, column: 33, scope: !2279)
!2293 = !DILocation(line: 54, column: 33, scope: !2272)
!2294 = !DILocation(line: 55, column: 2, scope: !2272)
!2295 = !DILocation(line: 55, column: 22, scope: !2272)
!2296 = !DILocation(line: 56, column: 2, scope: !2272)
!2297 = !DILocation(line: 56, column: 6, scope: !2272)
!2298 = !DILocation(line: 58, column: 28, scope: !2272)
!2299 = !DILocation(line: 58, column: 11, scope: !2272)
!2300 = !DILocation(line: 58, column: 9, scope: !2272)
!2301 = !DILocation(line: 59, column: 6, scope: !2302)
!2302 = distinct !DILexicalBlock(scope: !2272, file: !3, line: 59, column: 6)
!2303 = !DILocation(line: 59, column: 6, scope: !2272)
!2304 = !DILocation(line: 60, column: 10, scope: !2302)
!2305 = !DILocation(line: 60, column: 3, scope: !2302)
!2306 = !DILocation(line: 62, column: 17, scope: !2272)
!2307 = !DILocation(line: 62, column: 36, scope: !2272)
!2308 = !DILocation(line: 62, column: 9, scope: !2272)
!2309 = !DILocation(line: 62, column: 2, scope: !2272)
!2310 = !DILocation(line: 63, column: 1, scope: !2272)
!2311 = !DISubprogram(name: "snprintf", scope: !2312, file: !2312, line: 12, type: !2313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2312 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!2313 = !DISubroutineType(types: !2314)
!2314 = !{!46, !227, !274, !142, null}
!2315 = distinct !DISubprogram(name: "show_state", scope: !3, file: !3, line: 19, type: !1961, scopeLine: 20, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2316)
!2316 = !{!2317, !2318, !2319, !2320, !2321, !2323}
!2317 = !DILocalVariable(name: "dev", arg: 1, scope: !2315, file: !3, line: 19, type: !799)
!2318 = !DILocalVariable(name: "attr", arg: 2, scope: !2315, file: !3, line: 19, type: !1963)
!2319 = !DILocalVariable(name: "buf", arg: 3, scope: !2315, file: !3, line: 19, type: !227)
!2320 = !DILocalVariable(name: "fps", scope: !2315, file: !3, line: 21, type: !1945)
!2321 = !DILocalVariable(name: "__mptr", scope: !2322, file: !3, line: 21, type: !85)
!2322 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 21, column: 29)
!2323 = !DILocalVariable(name: "count", scope: !2315, file: !3, line: 22, type: !46)
!2324 = !DILocation(line: 19, column: 42, scope: !2315)
!2325 = !DILocation(line: 19, column: 72, scope: !2315)
!2326 = !DILocation(line: 19, column: 84, scope: !2315)
!2327 = !DILocation(line: 21, column: 2, scope: !2315)
!2328 = !DILocation(line: 21, column: 23, scope: !2315)
!2329 = !DILocation(line: 21, column: 29, scope: !2322)
!2330 = !DILocation(line: 21, column: 29, scope: !2315)
!2331 = !DILocation(line: 22, column: 2, scope: !2315)
!2332 = !DILocation(line: 22, column: 6, scope: !2315)
!2333 = !DILocation(line: 24, column: 6, scope: !2334)
!2334 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 24, column: 6)
!2335 = !DILocation(line: 24, column: 11, scope: !2334)
!2336 = !DILocation(line: 24, column: 19, scope: !2334)
!2337 = !DILocation(line: 24, column: 33, scope: !2334)
!2338 = !DILocation(line: 24, column: 36, scope: !2334)
!2339 = !DILocation(line: 24, column: 41, scope: !2334)
!2340 = !DILocation(line: 24, column: 49, scope: !2334)
!2341 = !DILocation(line: 24, column: 6, scope: !2315)
!2342 = !DILocation(line: 25, column: 21, scope: !2334)
!2343 = !DILocation(line: 25, column: 11, scope: !2334)
!2344 = !DILocation(line: 25, column: 9, scope: !2334)
!2345 = !DILocation(line: 25, column: 3, scope: !2334)
!2346 = !DILocation(line: 27, column: 21, scope: !2334)
!2347 = !DILocation(line: 27, column: 46, scope: !2334)
!2348 = !DILocation(line: 27, column: 51, scope: !2334)
!2349 = !DILocation(line: 27, column: 11, scope: !2334)
!2350 = !DILocation(line: 27, column: 9, scope: !2334)
!2351 = !DILocation(line: 29, column: 6, scope: !2352)
!2352 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 29, column: 6)
!2353 = !DILocation(line: 29, column: 11, scope: !2352)
!2354 = !DILocation(line: 29, column: 22, scope: !2352)
!2355 = !DILocation(line: 29, column: 36, scope: !2352)
!2356 = !DILocation(line: 29, column: 39, scope: !2352)
!2357 = !DILocation(line: 29, column: 44, scope: !2352)
!2358 = !DILocation(line: 29, column: 55, scope: !2352)
!2359 = !DILocation(line: 29, column: 6, scope: !2315)
!2360 = !DILocation(line: 30, column: 26, scope: !2352)
!2361 = !DILocation(line: 30, column: 31, scope: !2352)
!2362 = !DILocation(line: 30, column: 12, scope: !2352)
!2363 = !DILocation(line: 30, column: 9, scope: !2352)
!2364 = !DILocation(line: 30, column: 3, scope: !2352)
!2365 = !DILocation(line: 32, column: 26, scope: !2352)
!2366 = !DILocation(line: 32, column: 31, scope: !2352)
!2367 = !DILocation(line: 32, column: 47, scope: !2352)
!2368 = !DILocation(line: 32, column: 52, scope: !2352)
!2369 = !DILocation(line: 32, column: 12, scope: !2352)
!2370 = !DILocation(line: 32, column: 9, scope: !2352)
!2371 = !DILocation(line: 34, column: 6, scope: !2372)
!2372 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 34, column: 6)
!2373 = !DILocation(line: 34, column: 11, scope: !2372)
!2374 = !DILocation(line: 34, column: 17, scope: !2372)
!2375 = !DILocation(line: 34, column: 6, scope: !2315)
!2376 = !DILocation(line: 35, column: 26, scope: !2372)
!2377 = !DILocation(line: 35, column: 31, scope: !2372)
!2378 = !DILocation(line: 35, column: 12, scope: !2372)
!2379 = !DILocation(line: 35, column: 9, scope: !2372)
!2380 = !DILocation(line: 35, column: 3, scope: !2372)
!2381 = !DILocation(line: 37, column: 26, scope: !2372)
!2382 = !DILocation(line: 37, column: 31, scope: !2372)
!2383 = !DILocation(line: 37, column: 47, scope: !2372)
!2384 = !DILocation(line: 37, column: 52, scope: !2372)
!2385 = !DILocation(line: 37, column: 12, scope: !2372)
!2386 = !DILocation(line: 37, column: 9, scope: !2372)
!2387 = !DILocation(line: 39, column: 6, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 39, column: 6)
!2389 = !DILocation(line: 39, column: 11, scope: !2388)
!2390 = !DILocation(line: 39, column: 23, scope: !2388)
!2391 = !DILocation(line: 39, column: 6, scope: !2315)
!2392 = !DILocation(line: 40, column: 26, scope: !2388)
!2393 = !DILocation(line: 40, column: 31, scope: !2388)
!2394 = !DILocation(line: 40, column: 12, scope: !2388)
!2395 = !DILocation(line: 40, column: 9, scope: !2388)
!2396 = !DILocation(line: 40, column: 3, scope: !2388)
!2397 = !DILocation(line: 42, column: 26, scope: !2388)
!2398 = !DILocation(line: 42, column: 31, scope: !2388)
!2399 = !DILocation(line: 42, column: 47, scope: !2388)
!2400 = !DILocation(line: 42, column: 52, scope: !2388)
!2401 = !DILocation(line: 42, column: 64, scope: !2388)
!2402 = !DILocation(line: 42, column: 12, scope: !2388)
!2403 = !DILocation(line: 42, column: 9, scope: !2388)
!2404 = !DILocation(line: 44, column: 6, scope: !2405)
!2405 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 44, column: 6)
!2406 = !DILocation(line: 44, column: 11, scope: !2405)
!2407 = !DILocation(line: 44, column: 17, scope: !2405)
!2408 = !DILocation(line: 44, column: 6, scope: !2315)
!2409 = !DILocation(line: 45, column: 26, scope: !2405)
!2410 = !DILocation(line: 45, column: 31, scope: !2405)
!2411 = !DILocation(line: 45, column: 12, scope: !2405)
!2412 = !DILocation(line: 45, column: 9, scope: !2405)
!2413 = !DILocation(line: 45, column: 3, scope: !2405)
!2414 = !DILocation(line: 47, column: 26, scope: !2405)
!2415 = !DILocation(line: 47, column: 31, scope: !2405)
!2416 = !DILocation(line: 47, column: 48, scope: !2405)
!2417 = !DILocation(line: 47, column: 53, scope: !2405)
!2418 = !DILocation(line: 47, column: 12, scope: !2405)
!2419 = !DILocation(line: 47, column: 9, scope: !2405)
!2420 = !DILocation(line: 49, column: 9, scope: !2315)
!2421 = !DILocation(line: 50, column: 1, scope: !2315)
!2422 = !DILocation(line: 49, column: 2, scope: !2315)
!2423 = distinct !DISubprogram(name: "sysfs_remove_file", scope: !253, file: !253, line: 626, type: !2424, scopeLine: 628, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2426)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{null, !152, !2261}
!2426 = !{!2427, !2428}
!2427 = !DILocalVariable(name: "kobj", arg: 1, scope: !2423, file: !253, line: 626, type: !152)
!2428 = !DILocalVariable(name: "attr", arg: 2, scope: !2423, file: !253, line: 627, type: !2261)
!2429 = !DILocation(line: 626, column: 54, scope: !2423)
!2430 = !DILocation(line: 627, column: 34, scope: !2423)
!2431 = !DILocation(line: 629, column: 23, scope: !2423)
!2432 = !DILocation(line: 629, column: 29, scope: !2423)
!2433 = !DILocation(line: 629, column: 2, scope: !2423)
!2434 = !DILocation(line: 630, column: 1, scope: !2423)
!2435 = distinct !DISubprogram(name: "acpi_fan_delete_attributes", scope: !3, file: !3, line: 127, type: !1905, scopeLine: 128, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2436)
!2436 = !{!2437, !2438, !2439}
!2437 = !DILocalVariable(name: "device", arg: 1, scope: !2435, file: !3, line: 127, type: !86)
!2438 = !DILocalVariable(name: "fan", scope: !2435, file: !3, line: 129, type: !2017)
!2439 = !DILocalVariable(name: "i", scope: !2435, file: !3, line: 130, type: !46)
!2440 = !DILocation(line: 127, column: 53, scope: !2435)
!2441 = !DILocation(line: 129, column: 2, scope: !2435)
!2442 = !DILocation(line: 129, column: 19, scope: !2435)
!2443 = !DILocation(line: 129, column: 42, scope: !2435)
!2444 = !DILocation(line: 129, column: 25, scope: !2435)
!2445 = !DILocation(line: 130, column: 2, scope: !2435)
!2446 = !DILocation(line: 130, column: 6, scope: !2435)
!2447 = !DILocation(line: 132, column: 9, scope: !2448)
!2448 = distinct !DILexicalBlock(scope: !2435, file: !3, line: 132, column: 2)
!2449 = !DILocation(line: 132, column: 7, scope: !2448)
!2450 = !DILocation(line: 132, column: 14, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2448, file: !3, line: 132, column: 2)
!2452 = !DILocation(line: 132, column: 18, scope: !2451)
!2453 = !DILocation(line: 132, column: 23, scope: !2451)
!2454 = !DILocation(line: 132, column: 16, scope: !2451)
!2455 = !DILocation(line: 132, column: 2, scope: !2448)
!2456 = !DILocation(line: 133, column: 22, scope: !2451)
!2457 = !DILocation(line: 133, column: 30, scope: !2451)
!2458 = !DILocation(line: 133, column: 34, scope: !2451)
!2459 = !DILocation(line: 133, column: 41, scope: !2451)
!2460 = !DILocation(line: 133, column: 46, scope: !2451)
!2461 = !DILocation(line: 133, column: 50, scope: !2451)
!2462 = !DILocation(line: 133, column: 53, scope: !2451)
!2463 = !DILocation(line: 133, column: 62, scope: !2451)
!2464 = !DILocation(line: 133, column: 3, scope: !2451)
!2465 = !DILocation(line: 132, column: 34, scope: !2451)
!2466 = !DILocation(line: 132, column: 2, scope: !2451)
!2467 = distinct !{!2467, !2455, !2468, !2193, !2194}
!2468 = !DILocation(line: 133, column: 66, scope: !2448)
!2469 = !DILocation(line: 135, column: 21, scope: !2435)
!2470 = !DILocation(line: 135, column: 29, scope: !2435)
!2471 = !DILocation(line: 135, column: 33, scope: !2435)
!2472 = !DILocation(line: 135, column: 40, scope: !2435)
!2473 = !DILocation(line: 135, column: 45, scope: !2435)
!2474 = !DILocation(line: 135, column: 55, scope: !2435)
!2475 = !DILocation(line: 135, column: 2, scope: !2435)
!2476 = !DILocation(line: 136, column: 21, scope: !2435)
!2477 = !DILocation(line: 136, column: 29, scope: !2435)
!2478 = !DILocation(line: 136, column: 33, scope: !2435)
!2479 = !DILocation(line: 136, column: 40, scope: !2435)
!2480 = !DILocation(line: 136, column: 45, scope: !2435)
!2481 = !DILocation(line: 136, column: 64, scope: !2435)
!2482 = !DILocation(line: 136, column: 2, scope: !2435)
!2483 = !DILocation(line: 137, column: 1, scope: !2435)
!2484 = !DISubprogram(name: "sprintf", scope: !2312, file: !2312, line: 10, type: !2485, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2485 = !DISubroutineType(types: !2486)
!2486 = !{!46, !227, !142, null}
!2487 = !DISubprogram(name: "sysfs_create_file_ns", scope: !253, file: !253, line: 273, type: !2488, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!46, !152, !2261, !131}
!2490 = !DISubprogram(name: "acpi_fan_get_fst", scope: !1947, file: !1947, line: 56, type: !2491, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2491 = !DISubroutineType(types: !2492)
!2492 = !{!46, !86, !2493}
!2493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2494 = !DISubprogram(name: "scnprintf", scope: !2312, file: !2312, line: 14, type: !2313, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2495 = !DISubprogram(name: "sysfs_emit_at", scope: !253, file: !253, line: 359, type: !2496, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2496 = !DISubroutineType(types: !2497)
!2497 = !{!46, !227, !46, !142, null}
!2498 = !DISubprogram(name: "sysfs_remove_file_ns", scope: !253, file: !253, line: 283, type: !2499, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2499 = !DISubroutineType(types: !2500)
!2500 = !{null, !152, !2261, !131}
