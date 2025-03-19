; ModuleID = 'drivers/acpi/acpi_apd.c'
source_filename = "drivers/acpi/acpi_apd.c"
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
%struct.apd_private_data = type { ptr, ptr, ptr }
%struct.apd_device_desc = type { i32, ptr, ptr }
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

@apd_handler = internal global %struct.acpi_scan_handler { ptr @acpi_apd_device_ids, %struct.list_head zeroinitializer, ptr null, ptr @acpi_apd_create_device, ptr null, ptr null, ptr null, %struct.acpi_hotplug_profile zeroinitializer }, align 8, !dbg !0
@acpi_apd_device_ids = internal constant [1 x %struct.acpi_device_id] zeroinitializer, align 16, !dbg !114
@kmalloc_caches = external dso_local global [3 x [14 x ptr]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1, !dbg !135

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden void @acpi_apd_init() #0 section ".init.text" align 16 !dbg !2010 {
entry:
  %call = call i32 @acpi_scan_add_handler(ptr noundef @apd_handler) #14, !dbg !2011
  ret void, !dbg !2012
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2013 dso_local i32 @acpi_scan_add_handler(ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_apd_create_device(ptr noundef %adev, ptr noundef %id) #2 align 16 !dbg !2016 {
entry:
  %retval = alloca i32, align 4
  %adev.addr = alloca ptr, align 8
  %id.addr = alloca ptr, align 8
  %dev_desc = alloca ptr, align 8
  %pdata = alloca ptr, align 8
  %pdev = alloca ptr, align 8
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !2018, metadata !DIExpression()), !dbg !2106
  store ptr %id, ptr %id.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %id.addr, metadata !2019, metadata !DIExpression()), !dbg !2107
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev_desc) #15, !dbg !2108
  call void @llvm.dbg.declare(metadata ptr %dev_desc, metadata !2020, metadata !DIExpression()), !dbg !2109
  %0 = load ptr, ptr %id.addr, align 8, !dbg !2110
  %driver_data = getelementptr inbounds %struct.acpi_device_id, ptr %0, i32 0, i32 1, !dbg !2111
  %1 = load i64, ptr %driver_data, align 8, !dbg !2111
  %2 = inttoptr i64 %1 to ptr, !dbg !2112
  store ptr %2, ptr %dev_desc, align 8, !dbg !2109
  call void @llvm.lifetime.start.p0(i64 8, ptr %pdata) #15, !dbg !2113
  call void @llvm.dbg.declare(metadata ptr %pdata, metadata !2064, metadata !DIExpression()), !dbg !2114
  call void @llvm.lifetime.start.p0(i64 8, ptr %pdev) #15, !dbg !2115
  call void @llvm.dbg.declare(metadata ptr %pdev, metadata !2065, metadata !DIExpression()), !dbg !2116
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #15, !dbg !2117
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2104, metadata !DIExpression()), !dbg !2118
  %3 = load ptr, ptr %dev_desc, align 8, !dbg !2119
  %tobool = icmp ne ptr %3, null, !dbg !2119
  br i1 %tobool, label %if.end, label %if.then, !dbg !2121

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %adev.addr, align 8, !dbg !2122
  %call = call ptr @acpi_create_platform_device(ptr noundef %4, ptr noundef null) #14, !dbg !2124
  store ptr %call, ptr %pdev, align 8, !dbg !2125
  %5 = load ptr, ptr %pdev, align 8, !dbg !2126
  %call1 = call zeroext i1 @IS_ERR_OR_NULL(ptr noundef %5) #14, !dbg !2127
  br i1 %call1, label %cond.true, label %cond.false, !dbg !2127

cond.true:                                        ; preds = %if.then
  %6 = load ptr, ptr %pdev, align 8, !dbg !2128
  %call2 = call i64 @PTR_ERR(ptr noundef %6) #14, !dbg !2129
  br label %cond.end, !dbg !2127

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !2127

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %call2, %cond.true ], [ 1, %cond.false ], !dbg !2127
  %conv = trunc i64 %cond to i32, !dbg !2127
  store i32 %conv, ptr %retval, align 4, !dbg !2130
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2130

if.end:                                           ; preds = %entry
  %call3 = call noalias ptr @kzalloc(i64 noundef 24, i32 noundef 3264) #16, !dbg !2131
  store ptr %call3, ptr %pdata, align 8, !dbg !2132
  %7 = load ptr, ptr %pdata, align 8, !dbg !2133
  %tobool4 = icmp ne ptr %7, null, !dbg !2133
  br i1 %tobool4, label %if.end6, label %if.then5, !dbg !2135

if.then5:                                         ; preds = %if.end
  store i32 -12, ptr %retval, align 4, !dbg !2136
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2136

if.end6:                                          ; preds = %if.end
  %8 = load ptr, ptr %adev.addr, align 8, !dbg !2137
  %9 = load ptr, ptr %pdata, align 8, !dbg !2138
  %adev7 = getelementptr inbounds %struct.apd_private_data, ptr %9, i32 0, i32 1, !dbg !2139
  store ptr %8, ptr %adev7, align 8, !dbg !2140
  %10 = load ptr, ptr %dev_desc, align 8, !dbg !2141
  %11 = load ptr, ptr %pdata, align 8, !dbg !2142
  %dev_desc8 = getelementptr inbounds %struct.apd_private_data, ptr %11, i32 0, i32 2, !dbg !2143
  store ptr %10, ptr %dev_desc8, align 8, !dbg !2144
  %12 = load ptr, ptr %dev_desc, align 8, !dbg !2145
  %setup = getelementptr inbounds %struct.apd_device_desc, ptr %12, i32 0, i32 2, !dbg !2147
  %13 = load ptr, ptr %setup, align 8, !dbg !2147
  %tobool9 = icmp ne ptr %13, null, !dbg !2145
  br i1 %tobool9, label %if.then10, label %if.end16, !dbg !2148

if.then10:                                        ; preds = %if.end6
  %14 = load ptr, ptr %dev_desc, align 8, !dbg !2149
  %setup11 = getelementptr inbounds %struct.apd_device_desc, ptr %14, i32 0, i32 2, !dbg !2151
  %15 = load ptr, ptr %setup11, align 8, !dbg !2151
  %16 = load ptr, ptr %pdata, align 8, !dbg !2152
  %call12 = call i32 %15(ptr noundef %16) #14, !dbg !2149
  store i32 %call12, ptr %ret, align 4, !dbg !2153
  %17 = load i32, ptr %ret, align 4, !dbg !2154
  %tobool13 = icmp ne i32 %17, 0, !dbg !2154
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !2156

if.then14:                                        ; preds = %if.then10
  br label %err_out, !dbg !2157

if.end15:                                         ; preds = %if.then10
  br label %if.end16, !dbg !2158

if.end16:                                         ; preds = %if.end15, %if.end6
  %18 = load ptr, ptr %pdata, align 8, !dbg !2159
  %19 = load ptr, ptr %adev.addr, align 8, !dbg !2160
  %driver_data17 = getelementptr inbounds %struct.acpi_device, ptr %19, i32 0, i32 17, !dbg !2161
  store ptr %18, ptr %driver_data17, align 8, !dbg !2162
  %20 = load ptr, ptr %adev.addr, align 8, !dbg !2163
  %21 = load ptr, ptr %dev_desc, align 8, !dbg !2164
  %properties = getelementptr inbounds %struct.apd_device_desc, ptr %21, i32 0, i32 1, !dbg !2165
  %22 = load ptr, ptr %properties, align 8, !dbg !2165
  %call18 = call ptr @acpi_create_platform_device(ptr noundef %20, ptr noundef %22) #14, !dbg !2166
  store ptr %call18, ptr %pdev, align 8, !dbg !2167
  %23 = load ptr, ptr %pdev, align 8, !dbg !2168
  %call19 = call zeroext i1 @IS_ERR_OR_NULL(ptr noundef %23) #14, !dbg !2170
  br i1 %call19, label %if.end21, label %if.then20, !dbg !2171

if.then20:                                        ; preds = %if.end16
  store i32 1, ptr %retval, align 4, !dbg !2172
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2172

if.end21:                                         ; preds = %if.end16
  %24 = load ptr, ptr %pdev, align 8, !dbg !2173
  %call22 = call i64 @PTR_ERR(ptr noundef %24) #14, !dbg !2174
  %conv23 = trunc i64 %call22 to i32, !dbg !2174
  store i32 %conv23, ptr %ret, align 4, !dbg !2175
  %25 = load ptr, ptr %adev.addr, align 8, !dbg !2176
  %driver_data24 = getelementptr inbounds %struct.acpi_device, ptr %25, i32 0, i32 17, !dbg !2177
  store ptr null, ptr %driver_data24, align 8, !dbg !2178
  br label %err_out, !dbg !2176

err_out:                                          ; preds = %if.end21, %if.then14
  call void @llvm.dbg.label(metadata !2105), !dbg !2179
  %26 = load ptr, ptr %pdata, align 8, !dbg !2180
  call void @kfree(ptr noundef %26) #14, !dbg !2181
  %27 = load i32, ptr %ret, align 4, !dbg !2182
  store i32 %27, ptr %retval, align 4, !dbg !2183
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2183

cleanup:                                          ; preds = %err_out, %if.then20, %if.then5, %cond.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #15, !dbg !2184
  call void @llvm.lifetime.end.p0(i64 8, ptr %pdev) #15, !dbg !2184
  call void @llvm.lifetime.end.p0(i64 8, ptr %pdata) #15, !dbg !2184
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev_desc) #15, !dbg !2184
  %28 = load i32, ptr %retval, align 4, !dbg !2184
  ret i32 %28, !dbg !2184
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2185 dso_local ptr @acpi_create_platform_device(ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(ptr noundef %ptr) #5 align 16 !dbg !2191 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2196, metadata !DIExpression()), !dbg !2197
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2198
  %tobool = icmp ne ptr %0, null, !dbg !2198
  %lnot = xor i1 %tobool, true, !dbg !2198
  %lnot1 = xor i1 %lnot, true, !dbg !2198
  %lnot2 = xor i1 %lnot1, true, !dbg !2198
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2198
  %conv = sext i32 %lnot.ext to i64, !dbg !2198
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2198
  %tobool3 = icmp ne i64 %expval, 0, !dbg !2198
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !2199

lor.rhs:                                          ; preds = %entry
  %1 = load ptr, ptr %ptr.addr, align 8, !dbg !2200
  %2 = ptrtoint ptr %1 to i64, !dbg !2200
  %3 = inttoptr i64 %2 to ptr, !dbg !2200
  %4 = ptrtoint ptr %3 to i64, !dbg !2200
  %cmp = icmp uge i64 %4, -4095, !dbg !2200
  %lnot5 = xor i1 %cmp, true, !dbg !2200
  %lnot7 = xor i1 %lnot5, true, !dbg !2200
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !2200
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !2200
  %expval10 = call i64 @llvm.expect.i64(i64 %conv9, i64 0), !dbg !2200
  %tobool11 = icmp ne i64 %expval10, 0, !dbg !2199
  br label %lor.end, !dbg !2199

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool11, %lor.rhs ]
  ret i1 %5, !dbg !2201
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #5 align 16 !dbg !2202 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2206, metadata !DIExpression()), !dbg !2207
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2208
  %1 = ptrtoint ptr %0 to i64, !dbg !2209
  ret i64 %1, !dbg !2210
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kzalloc(i64 noundef %size, i32 noundef %flags) #6 align 16 !dbg !2211 {
entry:
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2215, metadata !DIExpression()), !dbg !2217
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2216, metadata !DIExpression()), !dbg !2218
  %0 = load i64, ptr %size.addr, align 8, !dbg !2219
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2220
  %or = or i32 %1, 256, !dbg !2221
  %call = call noalias ptr @kmalloc(i64 noundef %0, i32 noundef %or) #16, !dbg !2222
  ret ptr %call, !dbg !2223
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2224 dso_local void @kfree(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #7

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0)
define internal noalias ptr @kmalloc(i64 noundef %size, i32 noundef %flags) #8 align 16 !dbg !2227 {
entry:
  %retval = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %index = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2229, metadata !DIExpression()), !dbg !2234
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2230, metadata !DIExpression()), !dbg !2235
  %0 = load i64, ptr %size.addr, align 8, !dbg !2236
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2237
  br i1 %1, label %land.lhs.true, label %if.end7, !dbg !2238

land.lhs.true:                                    ; preds = %entry
  %2 = load i64, ptr %size.addr, align 8, !dbg !2239
  %tobool = icmp ne i64 %2, 0, !dbg !2239
  br i1 %tobool, label %if.then, label %if.end7, !dbg !2240

if.then:                                          ; preds = %land.lhs.true
  call void @llvm.lifetime.start.p0(i64 4, ptr %index) #15, !dbg !2241
  call void @llvm.dbg.declare(metadata ptr %index, metadata !2231, metadata !DIExpression()), !dbg !2242
  %3 = load i64, ptr %size.addr, align 8, !dbg !2243
  %cmp = icmp ugt i64 %3, 8192, !dbg !2245
  br i1 %cmp, label %if.then1, label %if.end, !dbg !2246

if.then1:                                         ; preds = %if.then
  %4 = load i64, ptr %size.addr, align 8, !dbg !2247
  %5 = load i32, ptr %flags.addr, align 4, !dbg !2248
  %call = call noalias align 4096 ptr @kmalloc_large(i64 noundef %4, i32 noundef %5) #16, !dbg !2249
  store ptr %call, ptr %retval, align 8, !dbg !2250
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2250

if.end:                                           ; preds = %if.then
  %6 = load i64, ptr %size.addr, align 8, !dbg !2251
  %call2 = call i32 @__kmalloc_index(i64 noundef %6, i1 noundef zeroext true) #14, !dbg !2251
  store i32 %call2, ptr %index, align 4, !dbg !2252
  %7 = load i32, ptr %flags.addr, align 4, !dbg !2253
  %8 = call ptr @llvm.returnaddress(i32 0), !dbg !2254
  %9 = ptrtoint ptr %8 to i64, !dbg !2254
  %call3 = call i32 @kmalloc_type(i32 noundef %7, i64 noundef %9) #14, !dbg !2255
  %idxprom = zext i32 %call3 to i64, !dbg !2256
  %arrayidx = getelementptr [3 x [14 x ptr]], ptr @kmalloc_caches, i64 0, i64 %idxprom, !dbg !2256
  %10 = load i32, ptr %index, align 4, !dbg !2257
  %idxprom4 = zext i32 %10 to i64, !dbg !2256
  %arrayidx5 = getelementptr [14 x ptr], ptr %arrayidx, i64 0, i64 %idxprom4, !dbg !2256
  %11 = load ptr, ptr %arrayidx5, align 8, !dbg !2256
  %12 = load i32, ptr %flags.addr, align 4, !dbg !2258
  %13 = load i64, ptr %size.addr, align 8, !dbg !2259
  %call6 = call noalias align 8 ptr @kmalloc_trace(ptr noundef %11, i32 noundef %12, i64 noundef %13) #17, !dbg !2260
  store ptr %call6, ptr %retval, align 8, !dbg !2261
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2261

cleanup:                                          ; preds = %if.end, %if.then1
  call void @llvm.lifetime.end.p0(i64 4, ptr %index) #15, !dbg !2262
  br label %return

if.end7:                                          ; preds = %land.lhs.true, %entry
  %14 = load i64, ptr %size.addr, align 8, !dbg !2263
  %15 = load i32, ptr %flags.addr, align 4, !dbg !2264
  %call8 = call noalias align 8 ptr @__kmalloc(i64 noundef %14, i32 noundef %15) #16, !dbg !2265
  store ptr %call8, ptr %retval, align 8, !dbg !2266
  br label %return, !dbg !2266

return:                                           ; preds = %if.end7, %cleanup
  %16 = load ptr, ptr %retval, align 8, !dbg !2267
  ret ptr %16, !dbg !2267
}

; Function Attrs: convergent nocallback nofree nosync nounwind willreturn memory(none)
declare i1 @llvm.is.constant.i64(i64) #9

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2268 dso_local noalias ptr @kmalloc_large(i64 noundef, i32 noundef) #10

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @__kmalloc_index(i64 noundef %size, i1 noundef zeroext %size_is_constant) #11 align 16 !dbg !2269 {
entry:
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  %size_is_constant.addr = alloca i8, align 1
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2273, metadata !DIExpression()), !dbg !2275
  %frombool = zext i1 %size_is_constant to i8
  store i8 %frombool, ptr %size_is_constant.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %size_is_constant.addr, metadata !2274, metadata !DIExpression()), !dbg !2276
  %0 = load i64, ptr %size.addr, align 8, !dbg !2277
  %tobool = icmp ne i64 %0, 0, !dbg !2277
  br i1 %tobool, label %if.end, label %if.then, !dbg !2279

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2280
  br label %return, !dbg !2280

if.end:                                           ; preds = %entry
  %1 = load i64, ptr %size.addr, align 8, !dbg !2281
  %cmp = icmp ule i64 %1, 8, !dbg !2283
  br i1 %cmp, label %if.then1, label %if.end2, !dbg !2284

if.then1:                                         ; preds = %if.end
  store i32 3, ptr %retval, align 4, !dbg !2285
  br label %return, !dbg !2285

if.end2:                                          ; preds = %if.end
  %2 = load i64, ptr %size.addr, align 8, !dbg !2286
  %cmp3 = icmp ugt i64 %2, 64, !dbg !2288
  br i1 %cmp3, label %land.lhs.true, label %if.end6, !dbg !2289

land.lhs.true:                                    ; preds = %if.end2
  %3 = load i64, ptr %size.addr, align 8, !dbg !2290
  %cmp4 = icmp ule i64 %3, 96, !dbg !2291
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2292

if.then5:                                         ; preds = %land.lhs.true
  store i32 1, ptr %retval, align 4, !dbg !2293
  br label %return, !dbg !2293

if.end6:                                          ; preds = %land.lhs.true, %if.end2
  %4 = load i64, ptr %size.addr, align 8, !dbg !2294
  %cmp7 = icmp ugt i64 %4, 128, !dbg !2296
  br i1 %cmp7, label %land.lhs.true8, label %if.end11, !dbg !2297

land.lhs.true8:                                   ; preds = %if.end6
  %5 = load i64, ptr %size.addr, align 8, !dbg !2298
  %cmp9 = icmp ule i64 %5, 192, !dbg !2299
  br i1 %cmp9, label %if.then10, label %if.end11, !dbg !2300

if.then10:                                        ; preds = %land.lhs.true8
  store i32 2, ptr %retval, align 4, !dbg !2301
  br label %return, !dbg !2301

if.end11:                                         ; preds = %land.lhs.true8, %if.end6
  %6 = load i64, ptr %size.addr, align 8, !dbg !2302
  %cmp12 = icmp ule i64 %6, 8, !dbg !2304
  br i1 %cmp12, label %if.then13, label %if.end14, !dbg !2305

if.then13:                                        ; preds = %if.end11
  store i32 3, ptr %retval, align 4, !dbg !2306
  br label %return, !dbg !2306

if.end14:                                         ; preds = %if.end11
  %7 = load i64, ptr %size.addr, align 8, !dbg !2307
  %cmp15 = icmp ule i64 %7, 16, !dbg !2309
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2310

if.then16:                                        ; preds = %if.end14
  store i32 4, ptr %retval, align 4, !dbg !2311
  br label %return, !dbg !2311

if.end17:                                         ; preds = %if.end14
  %8 = load i64, ptr %size.addr, align 8, !dbg !2312
  %cmp18 = icmp ule i64 %8, 32, !dbg !2314
  br i1 %cmp18, label %if.then19, label %if.end20, !dbg !2315

if.then19:                                        ; preds = %if.end17
  store i32 5, ptr %retval, align 4, !dbg !2316
  br label %return, !dbg !2316

if.end20:                                         ; preds = %if.end17
  %9 = load i64, ptr %size.addr, align 8, !dbg !2317
  %cmp21 = icmp ule i64 %9, 64, !dbg !2319
  br i1 %cmp21, label %if.then22, label %if.end23, !dbg !2320

if.then22:                                        ; preds = %if.end20
  store i32 6, ptr %retval, align 4, !dbg !2321
  br label %return, !dbg !2321

if.end23:                                         ; preds = %if.end20
  %10 = load i64, ptr %size.addr, align 8, !dbg !2322
  %cmp24 = icmp ule i64 %10, 128, !dbg !2324
  br i1 %cmp24, label %if.then25, label %if.end26, !dbg !2325

if.then25:                                        ; preds = %if.end23
  store i32 7, ptr %retval, align 4, !dbg !2326
  br label %return, !dbg !2326

if.end26:                                         ; preds = %if.end23
  %11 = load i64, ptr %size.addr, align 8, !dbg !2327
  %cmp27 = icmp ule i64 %11, 256, !dbg !2329
  br i1 %cmp27, label %if.then28, label %if.end29, !dbg !2330

if.then28:                                        ; preds = %if.end26
  store i32 8, ptr %retval, align 4, !dbg !2331
  br label %return, !dbg !2331

if.end29:                                         ; preds = %if.end26
  %12 = load i64, ptr %size.addr, align 8, !dbg !2332
  %cmp30 = icmp ule i64 %12, 512, !dbg !2334
  br i1 %cmp30, label %if.then31, label %if.end32, !dbg !2335

if.then31:                                        ; preds = %if.end29
  store i32 9, ptr %retval, align 4, !dbg !2336
  br label %return, !dbg !2336

if.end32:                                         ; preds = %if.end29
  %13 = load i64, ptr %size.addr, align 8, !dbg !2337
  %cmp33 = icmp ule i64 %13, 1024, !dbg !2339
  br i1 %cmp33, label %if.then34, label %if.end35, !dbg !2340

if.then34:                                        ; preds = %if.end32
  store i32 10, ptr %retval, align 4, !dbg !2341
  br label %return, !dbg !2341

if.end35:                                         ; preds = %if.end32
  %14 = load i64, ptr %size.addr, align 8, !dbg !2342
  %cmp36 = icmp ule i64 %14, 2048, !dbg !2344
  br i1 %cmp36, label %if.then37, label %if.end38, !dbg !2345

if.then37:                                        ; preds = %if.end35
  store i32 11, ptr %retval, align 4, !dbg !2346
  br label %return, !dbg !2346

if.end38:                                         ; preds = %if.end35
  %15 = load i64, ptr %size.addr, align 8, !dbg !2347
  %cmp39 = icmp ule i64 %15, 4096, !dbg !2349
  br i1 %cmp39, label %if.then40, label %if.end41, !dbg !2350

if.then40:                                        ; preds = %if.end38
  store i32 12, ptr %retval, align 4, !dbg !2351
  br label %return, !dbg !2351

if.end41:                                         ; preds = %if.end38
  %16 = load i64, ptr %size.addr, align 8, !dbg !2352
  %cmp42 = icmp ule i64 %16, 8192, !dbg !2354
  br i1 %cmp42, label %if.then43, label %if.end44, !dbg !2355

if.then43:                                        ; preds = %if.end41
  store i32 13, ptr %retval, align 4, !dbg !2356
  br label %return, !dbg !2356

if.end44:                                         ; preds = %if.end41
  %17 = load i64, ptr %size.addr, align 8, !dbg !2357
  %cmp45 = icmp ule i64 %17, 16384, !dbg !2359
  br i1 %cmp45, label %if.then46, label %if.end47, !dbg !2360

if.then46:                                        ; preds = %if.end44
  store i32 14, ptr %retval, align 4, !dbg !2361
  br label %return, !dbg !2361

if.end47:                                         ; preds = %if.end44
  %18 = load i64, ptr %size.addr, align 8, !dbg !2362
  %cmp48 = icmp ule i64 %18, 32768, !dbg !2364
  br i1 %cmp48, label %if.then49, label %if.end50, !dbg !2365

if.then49:                                        ; preds = %if.end47
  store i32 15, ptr %retval, align 4, !dbg !2366
  br label %return, !dbg !2366

if.end50:                                         ; preds = %if.end47
  %19 = load i64, ptr %size.addr, align 8, !dbg !2367
  %cmp51 = icmp ule i64 %19, 65536, !dbg !2369
  br i1 %cmp51, label %if.then52, label %if.end53, !dbg !2370

if.then52:                                        ; preds = %if.end50
  store i32 16, ptr %retval, align 4, !dbg !2371
  br label %return, !dbg !2371

if.end53:                                         ; preds = %if.end50
  %20 = load i64, ptr %size.addr, align 8, !dbg !2372
  %cmp54 = icmp ule i64 %20, 131072, !dbg !2374
  br i1 %cmp54, label %if.then55, label %if.end56, !dbg !2375

if.then55:                                        ; preds = %if.end53
  store i32 17, ptr %retval, align 4, !dbg !2376
  br label %return, !dbg !2376

if.end56:                                         ; preds = %if.end53
  %21 = load i64, ptr %size.addr, align 8, !dbg !2377
  %cmp57 = icmp ule i64 %21, 262144, !dbg !2379
  br i1 %cmp57, label %if.then58, label %if.end59, !dbg !2380

if.then58:                                        ; preds = %if.end56
  store i32 18, ptr %retval, align 4, !dbg !2381
  br label %return, !dbg !2381

if.end59:                                         ; preds = %if.end56
  %22 = load i64, ptr %size.addr, align 8, !dbg !2382
  %cmp60 = icmp ule i64 %22, 524288, !dbg !2384
  br i1 %cmp60, label %if.then61, label %if.end62, !dbg !2385

if.then61:                                        ; preds = %if.end59
  store i32 19, ptr %retval, align 4, !dbg !2386
  br label %return, !dbg !2386

if.end62:                                         ; preds = %if.end59
  %23 = load i64, ptr %size.addr, align 8, !dbg !2387
  %cmp63 = icmp ule i64 %23, 1048576, !dbg !2389
  br i1 %cmp63, label %if.then64, label %if.end65, !dbg !2390

if.then64:                                        ; preds = %if.end62
  store i32 20, ptr %retval, align 4, !dbg !2391
  br label %return, !dbg !2391

if.end65:                                         ; preds = %if.end62
  %24 = load i64, ptr %size.addr, align 8, !dbg !2392
  %cmp66 = icmp ule i64 %24, 2097152, !dbg !2394
  br i1 %cmp66, label %if.then67, label %if.end68, !dbg !2395

if.then67:                                        ; preds = %if.end65
  store i32 21, ptr %retval, align 4, !dbg !2396
  br label %return, !dbg !2396

if.end68:                                         ; preds = %if.end65
  %25 = load i8, ptr %size_is_constant.addr, align 1, !dbg !2397, !range !2399, !noundef !425
  %tobool69 = trunc i8 %25 to i1, !dbg !2397
  br i1 %tobool69, label %if.then70, label %if.else, !dbg !2400

if.then70:                                        ; preds = %if.end68
  br label %do.body, !dbg !2401

do.body:                                          ; preds = %if.then70
  call void @__compiletime_assert_125() #18, !dbg !2402, !srcloc !2405
  unreachable, !dbg !2402

do.end:                                           ; No predecessors!
  br label %if.end77, !dbg !2406

if.else:                                          ; preds = %if.end68
  br label %do.body71, !dbg !2407

do.body71:                                        ; preds = %if.else
  br label %do.body72, !dbg !2408

do.body72:                                        ; preds = %do.body71
  br label %do.end73, !dbg !2410

do.end73:                                         ; preds = %do.body72
  br label %do.body74, !dbg !2408

do.body74:                                        ; preds = %do.end73
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - .\09# bug_entry::bug_addr\0A\09.long ${0:c} - .\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection\0A", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(ptr @.str, i32 480, i32 0, i64 12) #15, !dbg !2412, !srcloc !2414
  br label %do.end75, !dbg !2412

do.end75:                                         ; preds = %do.body74
  unreachable, !dbg !2408

do.end76:                                         ; No predecessors!
  br label %if.end77

if.end77:                                         ; preds = %do.end76, %do.end
  store i32 -1, ptr %retval, align 4, !dbg !2415
  br label %return, !dbg !2415

return:                                           ; preds = %if.end77, %if.then67, %if.then64, %if.then61, %if.then58, %if.then55, %if.then52, %if.then49, %if.then46, %if.then43, %if.then40, %if.then37, %if.then34, %if.then31, %if.then28, %if.then25, %if.then22, %if.then19, %if.then16, %if.then13, %if.then10, %if.then5, %if.then1, %if.then
  %26 = load i32, ptr %retval, align 4, !dbg !2416
  ret i32 %26, !dbg !2416
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(2)
declare !dbg !2417 dso_local noalias ptr @kmalloc_trace(ptr noundef, i32 noundef, i64 noundef) #12

; Function Attrs: alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @kmalloc_type(i32 noundef %flags, i64 noundef %caller) #11 align 16 !dbg !2423 {
entry:
  %retval = alloca i32, align 4
  %flags.addr = alloca i32, align 4
  %caller.addr = alloca i64, align 8
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2427, metadata !DIExpression()), !dbg !2429
  store i64 %caller, ptr %caller.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %caller.addr, metadata !2428, metadata !DIExpression()), !dbg !2430
  %0 = load i32, ptr %flags.addr, align 4, !dbg !2431
  %and = and i32 %0, 17, !dbg !2431
  %cmp = icmp eq i32 %and, 0, !dbg !2431
  %lnot = xor i1 %cmp, true, !dbg !2431
  %lnot1 = xor i1 %lnot, true, !dbg !2431
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2431
  %conv = sext i32 %lnot.ext to i64, !dbg !2431
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 1), !dbg !2431
  %tobool = icmp ne i64 %expval, 0, !dbg !2431
  br i1 %tobool, label %if.then, label %if.end, !dbg !2433

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !2434
  br label %return, !dbg !2434

if.end:                                           ; preds = %entry
  %1 = load i32, ptr %flags.addr, align 4, !dbg !2435
  %and2 = and i32 %1, 1, !dbg !2437
  %tobool3 = icmp ne i32 %and2, 0, !dbg !2437
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !2438

if.then4:                                         ; preds = %if.end
  store i32 2, ptr %retval, align 4, !dbg !2439
  br label %return, !dbg !2439

if.end5:                                          ; preds = %if.end
  store i32 1, ptr %retval, align 4, !dbg !2440
  br label %return, !dbg !2440

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %2 = load i32, ptr %retval, align 4, !dbg !2442
  ret i32 %2, !dbg !2442
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare ptr @llvm.returnaddress(i32 immarg) #7

; Function Attrs: noredzone null_pointer_is_valid allocsize(0)
declare !dbg !2443 dso_local noalias ptr @__kmalloc(i64 noundef, i32 noundef) #10

; Function Attrs: noredzone noreturn null_pointer_is_valid
declare !dbg !2444 dso_local void @__compiletime_assert_125() #13

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #8 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong allocsize(0) "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { convergent nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { noredzone null_pointer_is_valid allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #11 = { alwaysinline fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #12 = { noredzone null_pointer_is_valid allocsize(2) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #13 = { noredzone noreturn null_pointer_is_valid "dontcall-error"="unexpected size in kmalloc_index()" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #14 = { noredzone }
attributes #15 = { nounwind }
attributes #16 = { noredzone allocsize(0) }
attributes #17 = { noredzone allocsize(2) }
attributes #18 = { noredzone noreturn }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008}
!llvm.ident = !{!2009}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "apd_handler", scope: !2, file: !3, line: 253, type: !141, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/.acpi_apd.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/acpi/acpi\22 -D KBUILD_BASENAME=\22acpi_apd\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/acpi_apd.ll drivers/acpi/acpi_apd.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !107, globals: !113, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/acpi_apd.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "771c211e49bb402c2829fa615173cc5c")
!4 = !{!5, !12, !19, !25, !32, !37, !45, !53, !62, !67, !72, !78, !84, !92, !97}
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
!107 = !{!108, !109, !111, !112}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !110, line: 154, baseType: !7)
!110 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!111 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!112 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!113 = !{!0, !114, !135}
!114 = !DIGlobalVariableExpression(var: !115, expr: !DIExpression())
!115 = distinct !DIGlobalVariable(name: "acpi_apd_device_ids", scope: !2, file: !3, line: 226, type: !116, isLocal: true, isDefinition: true)
!116 = !DICompositeType(tag: DW_TAG_array_type, baseType: !117, size: 256, elements: !133)
!117 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !119, line: 217, size: 256, elements: !120)
!119 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!120 = !{!121, !128, !130, !132}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !118, file: !119, line: 218, baseType: !122, size: 128)
!122 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 128, elements: !126)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !124, line: 21, baseType: !125)
!124 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!125 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!126 = !{!127}
!127 = !DISubrange(count: 16)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !118, file: !119, line: 219, baseType: !129, size: 64, offset: 128)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !119, line: 15, baseType: !111)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !118, file: !119, line: 220, baseType: !131, size: 32, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !124, line: 27, baseType: !7)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !118, file: !119, line: 221, baseType: !131, size: 32, offset: 224)
!133 = !{!134}
!134 = !DISubrange(count: 1)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(scope: null, file: !98, line: 480, type: !137, isLocal: true, isDefinition: true)
!137 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 168, elements: !139)
!138 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!139 = !{!140}
!140 = !DISubrange(count: 21)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !142, line: 124, size: 1216, elements: !143)
!142 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "745f031e2ee183d2395bab1bfe3ce66b")
!143 = !{!144, !146, !152, !161, !1987, !1988, !1989, !1990}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !141, file: !142, line: 125, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !141, file: !142, line: 126, baseType: !147, size: 128, offset: 64)
!147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !110, line: 190, size: 128, elements: !148)
!148 = !{!149, !151}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !147, file: !110, line: 191, baseType: !150, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !147, file: !110, line: 191, baseType: !150, size: 64, offset: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !141, file: !142, line: 127, baseType: !153, size: 64, offset: 192)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{!156, !158, !160}
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !110, line: 35, baseType: !157)
!157 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !141, file: !142, line: 128, baseType: !162, size: 64, offset: 256)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = !DISubroutineType(types: !164)
!164 = !{!46, !165, !145}
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !142, line: 367, size: 11200, elements: !167)
!167 = !{!168, !171, !172, !175, !1759, !1760, !1761, !1770, !1788, !1867, !1897, !1921, !1942, !1948, !1957, !1959, !1976, !1980, !1981, !1982, !1983, !1984, !1985, !1986}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "pld_crc", scope: !166, file: !142, line: 368, baseType: !169, size: 32)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !170, line: 21, baseType: !131)
!170 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!171 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !166, file: !142, line: 369, baseType: !46, size: 32, offset: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !166, file: !142, line: 370, baseType: !173, size: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !174, line: 424, baseType: !108)
!174 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!175 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !166, file: !142, line: 371, baseType: !176, size: 512, offset: 128)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !177, line: 41, size: 512, elements: !178)
!177 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!178 = !{!179, !181, !1755, !1756, !1757, !1758}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !176, file: !177, line: 42, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !176, file: !177, line: 43, baseType: !182, size: 64, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !177, line: 125, size: 1408, elements: !185)
!185 = !{!186, !190, !194, !200, !1685, !1686, !1690, !1694, !1698, !1702, !1706, !1707, !1711, !1715, !1719, !1730, !1731, !1732, !1733, !1743, !1747, !1751}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !184, file: !177, line: 126, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!180, !180}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !184, file: !177, line: 127, baseType: !191, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !180}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !184, file: !177, line: 128, baseType: !195, size: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!156, !198}
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !184, file: !177, line: 129, baseType: !201, size: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!204, !198, !206}
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !209)
!209 = !{!210, !860, !862, !865, !866, !917, !1370, !1371, !1372, !1373, !1374, !1381, !1551, !1564, !1574, !1578, !1580, !1581, !1582, !1586, !1593, !1594, !1597, !1600, !1624, !1625, !1626, !1629, !1630, !1631, !1632, !1662, !1663, !1664, !1667, !1670, !1679, !1680, !1681, !1682, !1683, !1684}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !208, file: !26, line: 706, baseType: !211, size: 512)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !212, line: 64, size: 512, elements: !213)
!212 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!213 = !{!214, !215, !216, !218, !303, !730, !845, !855, !856, !857, !858, !859}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !211, file: !212, line: 65, baseType: !158, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !211, file: !212, line: 66, baseType: !147, size: 128, offset: 64)
!216 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !211, file: !212, line: 67, baseType: !217, size: 64, offset: 192)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !211, file: !212, line: 68, baseType: !219, size: 64, offset: 256)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !212, line: 168, size: 768, elements: !221)
!221 = !{!222, !223, !262, !263}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !220, file: !212, line: 169, baseType: !147, size: 128)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !220, file: !212, line: 170, baseType: !224, size: 32, offset: 128)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !225, line: 29, baseType: !226)
!225 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !225, line: 17, size: 32, elements: !227)
!227 = !{!228}
!228 = !DIDerivedType(tag: DW_TAG_member, scope: !226, file: !225, line: 18, baseType: !229, size: 32)
!229 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !226, file: !225, line: 18, size: 32, elements: !230)
!230 = !{!231}
!231 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !229, file: !225, line: 19, baseType: !232, size: 32)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !233, line: 14, size: 32, elements: !234)
!233 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!234 = !{!235}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !232, file: !233, line: 15, baseType: !236, size: 32)
!236 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !237, line: 44, baseType: !238)
!237 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !237, line: 14, size: 32, elements: !239)
!239 = !{!240}
!240 = !DIDerivedType(tag: DW_TAG_member, scope: !238, file: !237, line: 15, baseType: !241, size: 32)
!241 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !238, file: !237, line: 15, size: 32, elements: !242)
!242 = !{!243, !248, !254}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !241, file: !237, line: 16, baseType: !244, size: 32)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !110, line: 174, baseType: !245)
!245 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !110, line: 172, size: 32, elements: !246)
!246 = !{!247}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !245, file: !110, line: 173, baseType: !46, size: 32)
!248 = !DIDerivedType(tag: DW_TAG_member, scope: !241, file: !237, line: 24, baseType: !249, size: 16)
!249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !241, file: !237, line: 24, size: 16, elements: !250)
!250 = !{!251, !253}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !249, file: !237, line: 25, baseType: !252, size: 8)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !170, line: 17, baseType: !123)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !249, file: !237, line: 26, baseType: !252, size: 8, offset: 8)
!254 = !DIDerivedType(tag: DW_TAG_member, scope: !241, file: !237, line: 28, baseType: !255, size: 32)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !241, file: !237, line: 28, size: 32, elements: !256)
!256 = !{!257, !261}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !255, file: !237, line: 29, baseType: !258, size: 16)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !170, line: 19, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !124, line: 24, baseType: !260)
!260 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !255, file: !237, line: 30, baseType: !258, size: 16, offset: 16)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !220, file: !212, line: 171, baseType: !211, size: 512, offset: 192)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !220, file: !212, line: 172, baseType: !264, size: 64, offset: 704)
!264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !265, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !266)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !212, line: 133, size: 192, elements: !267)
!267 = !{!268, !275, !280}
!268 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !266, file: !212, line: 134, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!46, !273}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !211)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !266, file: !212, line: 135, baseType: !276, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !277)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!158, !273}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !266, file: !212, line: 136, baseType: !281, size: 64, offset: 128)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!46, !273, !285}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !212, line: 125, size: 20736, elements: !287)
!287 = !{!288, !293, !297, !298, !302}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !286, file: !212, line: 126, baseType: !289, size: 192)
!289 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 192, elements: !291)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!291 = !{!292}
!292 = !DISubrange(count: 3)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !286, file: !212, line: 127, baseType: !294, size: 4096, offset: 192)
!294 = !DICompositeType(tag: DW_TAG_array_type, baseType: !290, size: 4096, elements: !295)
!295 = !{!296}
!296 = !DISubrange(count: 64)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !286, file: !212, line: 128, baseType: !46, size: 32, offset: 4288)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !286, file: !212, line: 129, baseType: !299, size: 16384, offset: 4320)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 16384, elements: !300)
!300 = !{!301}
!301 = !DISubrange(count: 2048)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !286, file: !212, line: 130, baseType: !46, size: 32, offset: 20704)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !211, file: !212, line: 69, baseType: !304, size: 64, offset: 320)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !212, line: 116, size: 384, elements: !307)
!307 = !{!308, !312, !339, !676, !707, !711}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !306, file: !212, line: 117, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{null, !217}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !306, file: !212, line: 118, baseType: !313, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !316, line: 254, size: 128, elements: !317)
!316 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!317 = !{!318, !332}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !315, file: !316, line: 255, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{!322, !217, !326, !290}
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !110, line: 66, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !324, line: 73, baseType: !325)
!324 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!325 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !324, line: 15, baseType: !112)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !316, line: 30, size: 128, elements: !328)
!328 = !{!329, !330}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !327, file: !316, line: 31, baseType: !158, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !327, file: !316, line: 32, baseType: !331, size: 16, offset: 64)
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !110, line: 24, baseType: !260)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !315, file: !316, line: 256, baseType: !333, size: 64, offset: 64)
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DISubroutineType(types: !335)
!335 = !{!322, !217, !326, !158, !336}
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !110, line: 61, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !324, line: 72, baseType: !338)
!338 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !324, line: 16, baseType: !111)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !306, file: !212, line: 119, baseType: !340, size: 64, offset: 128)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !316, line: 84, size: 320, elements: !344)
!344 = !{!345, !346, !350, !672, !674}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !343, file: !316, line: 85, baseType: !158, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !343, file: !316, line: 86, baseType: !347, size: 64, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!348 = !DISubroutineType(types: !349)
!349 = !{!331, !217, !326, !46}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !343, file: !316, line: 88, baseType: !351, size: 64, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DISubroutineType(types: !353)
!353 = !{!331, !217, !354, !46}
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !355, size: 64)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !316, line: 175, size: 512, elements: !356)
!356 = !{!357, !358, !359, !360, !367, !377, !378}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !355, file: !316, line: 176, baseType: !327, size: 128)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !355, file: !316, line: 177, baseType: !336, size: 64, offset: 128)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !355, file: !316, line: 178, baseType: !108, size: 64, offset: 192)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !355, file: !316, line: 179, baseType: !361, size: 64, offset: 256)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!364}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!365 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !366, line: 351, flags: DIFlagFwdDecl)
!366 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!367 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !355, file: !316, line: 180, baseType: !368, size: 64, offset: 320)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DISubroutineType(types: !370)
!370 = !{!322, !371, !217, !354, !290, !374, !336}
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !373, line: 537, flags: DIFlagFwdDecl)
!373 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !110, line: 52, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !324, line: 88, baseType: !376)
!376 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !355, file: !316, line: 182, baseType: !368, size: 64, offset: 384)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !355, file: !316, line: 184, baseType: !379, size: 64, offset: 448)
!379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!380 = !DISubroutineType(types: !381)
!381 = !{!46, !371, !217, !354, !382}
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !384, line: 625, size: 1344, elements: !385)
!384 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!385 = !{!386, !403, !623, !629, !636, !637, !642, !643, !655, !656, !659, !663, !664, !665, !666, !667, !670}
!386 = !DIDerivedType(tag: DW_TAG_member, scope: !383, file: !384, line: 628, baseType: !387, size: 128)
!387 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !383, file: !384, line: 628, size: 128, elements: !388)
!388 = !{!389, !394}
!389 = !DIDerivedType(tag: DW_TAG_member, scope: !387, file: !384, line: 629, baseType: !390, size: 128)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !387, file: !384, line: 629, size: 128, elements: !391)
!391 = !{!392, !393}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !390, file: !384, line: 631, baseType: !111, size: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !390, file: !384, line: 632, baseType: !111, size: 64, offset: 64)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !387, file: !384, line: 635, baseType: !395, size: 128, align: 64)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !110, line: 232, size: 128, align: 64, elements: !396)
!396 = !{!397, !399}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !395, file: !110, line: 233, baseType: !398, size: 64)
!398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !395, file: !110, line: 234, baseType: !400, size: 64, offset: 64)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = !DISubroutineType(types: !402)
!402 = !{null, !398}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !383, file: !384, line: 639, baseType: !404, size: 64, offset: 128)
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !384, line: 733, size: 10240, elements: !406)
!406 = !{!407, !619}
!407 = !DIDerivedType(tag: DW_TAG_member, scope: !405, file: !384, line: 734, baseType: !408, size: 10240)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !405, file: !384, line: 734, size: 10240, elements: !409)
!409 = !{!410, !414, !428, !432, !433, !434, !435, !436, !437, !445, !446, !447, !456, !457, !466, !467, !468, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !499, !500, !501, !502, !503, !504, !505, !506, !507, !508, !509, !510, !511, !515, !529, !532, !585, !586, !587, !590, !593, !594, !597, !598, !599, !606, !607}
!410 = !DIDerivedType(tag: DW_TAG_member, scope: !408, file: !384, line: 739, baseType: !411, size: 512, align: 512)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !408, file: !384, line: 739, size: 512, align: 512, elements: !412)
!412 = !{!413}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !411, file: !384, line: 747, baseType: !244, size: 32)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !408, file: !384, line: 750, baseType: !415, size: 128, offset: 512)
!415 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !416, line: 218, size: 128, elements: !417)
!416 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!417 = !{!418, !426, !427}
!418 = !DIDerivedType(tag: DW_TAG_member, scope: !415, file: !416, line: 219, baseType: !419, size: 32)
!419 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !415, file: !416, line: 219, size: 32, elements: !420)
!420 = !{!421, !422}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !419, file: !416, line: 220, baseType: !224, size: 32)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !419, file: !416, line: 221, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !416, line: 197, baseType: !424)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !416, line: 197, elements: !425)
!425 = !{}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !415, file: !416, line: 223, baseType: !7, size: 32, offset: 32)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !415, file: !416, line: 224, baseType: !108, size: 64, offset: 64)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !408, file: !384, line: 752, baseType: !429, size: 64, offset: 640)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!111, !371, !111, !111, !111, !111}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !408, file: !384, line: 756, baseType: !111, size: 64, offset: 704)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !408, file: !384, line: 757, baseType: !111, size: 64, offset: 768)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !408, file: !384, line: 760, baseType: !111, size: 64, offset: 832)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !408, file: !384, line: 761, baseType: !111, size: 64, offset: 896)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !408, file: !384, line: 763, baseType: !111, size: 64, offset: 960)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !408, file: !384, line: 764, baseType: !438, size: 64, offset: 1024)
!438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !373, line: 299, baseType: !440)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !373, line: 299, size: 64, elements: !441)
!441 = !{!442}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !440, file: !373, line: 299, baseType: !443, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !444, line: 18, baseType: !111)
!444 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!445 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !408, file: !384, line: 773, baseType: !244, size: 32, offset: 1088)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !408, file: !384, line: 785, baseType: !244, size: 32, offset: 1120)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !408, file: !384, line: 795, baseType: !448, size: 64, offset: 1152)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !384, line: 726, size: 128, elements: !450)
!450 = !{!451, !455}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !449, file: !384, line: 727, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !170, line: 23, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !124, line: 31, baseType: !454)
!454 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !449, file: !384, line: 728, baseType: !46, size: 32, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !408, file: !384, line: 801, baseType: !111, size: 64, offset: 1216)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !408, file: !384, line: 804, baseType: !458, size: 64, offset: 1280)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !459, line: 13, baseType: !460)
!459 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!460 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !110, line: 181, baseType: !461)
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !110, line: 179, size: 64, elements: !462)
!462 = !{!463}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !461, file: !110, line: 180, baseType: !464, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !170, line: 22, baseType: !465)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !124, line: 30, baseType: !376)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !408, file: !384, line: 806, baseType: !46, size: 32, offset: 1344)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !408, file: !384, line: 808, baseType: !224, size: 32, offset: 1376)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !408, file: !384, line: 823, baseType: !469, size: 320, offset: 1408)
!469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !470, line: 48, size: 320, elements: !471)
!470 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!471 = !{!472, !473, !474, !479, !481}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !469, file: !470, line: 49, baseType: !458, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !469, file: !470, line: 55, baseType: !458, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !469, file: !470, line: 57, baseType: !475, size: 32, offset: 128)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !476, line: 15, size: 32, elements: !477)
!476 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!477 = !{!478}
!478 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !475, file: !476, line: 20, baseType: !244, size: 32)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !469, file: !470, line: 59, baseType: !480, size: 32, offset: 160)
!480 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !233, line: 23, baseType: !232)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !469, file: !470, line: 60, baseType: !147, size: 128, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !408, file: !384, line: 825, baseType: !147, size: 128, offset: 1728)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !408, file: !384, line: 845, baseType: !46, size: 32, offset: 1856)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !408, file: !384, line: 849, baseType: !111, size: 64, offset: 1920)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !408, file: !384, line: 850, baseType: !111, size: 64, offset: 1984)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !408, file: !384, line: 852, baseType: !111, size: 64, offset: 2048)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !408, file: !384, line: 853, baseType: !111, size: 64, offset: 2112)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !408, file: !384, line: 854, baseType: !460, size: 64, offset: 2176)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !408, file: !384, line: 855, baseType: !111, size: 64, offset: 2240)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !408, file: !384, line: 856, baseType: !111, size: 64, offset: 2304)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !408, file: !384, line: 857, baseType: !111, size: 64, offset: 2368)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !408, file: !384, line: 858, baseType: !111, size: 64, offset: 2432)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !408, file: !384, line: 865, baseType: !494, size: 32, offset: 2496)
!494 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !495, line: 69, baseType: !496)
!495 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !495, line: 64, size: 32, elements: !497)
!497 = !{!498}
!498 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !496, file: !495, line: 65, baseType: !7, size: 32)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !408, file: !384, line: 867, baseType: !224, size: 32, offset: 2528)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !408, file: !384, line: 869, baseType: !111, size: 64, offset: 2560)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !408, file: !384, line: 869, baseType: !111, size: 64, offset: 2624)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !408, file: !384, line: 869, baseType: !111, size: 64, offset: 2688)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !408, file: !384, line: 869, baseType: !111, size: 64, offset: 2752)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !408, file: !384, line: 870, baseType: !111, size: 64, offset: 2816)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !408, file: !384, line: 870, baseType: !111, size: 64, offset: 2880)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !408, file: !384, line: 870, baseType: !111, size: 64, offset: 2944)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !408, file: !384, line: 871, baseType: !111, size: 64, offset: 3008)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !408, file: !384, line: 871, baseType: !111, size: 64, offset: 3072)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !408, file: !384, line: 871, baseType: !111, size: 64, offset: 3136)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !408, file: !384, line: 871, baseType: !111, size: 64, offset: 3200)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !408, file: !384, line: 873, baseType: !512, size: 3328, offset: 3264)
!512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 3328, elements: !513)
!513 = !{!514}
!514 = !DISubrange(count: 52)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !408, file: !384, line: 875, baseType: !516, size: 1280, offset: 6592)
!516 = !DICompositeType(tag: DW_TAG_array_type, baseType: !517, size: 1280, elements: !527)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !518, line: 22, size: 320, elements: !519)
!518 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!519 = !{!520, !521, !522, !523}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !517, file: !518, line: 23, baseType: !480, size: 32)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !517, file: !518, line: 24, baseType: !464, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !517, file: !518, line: 26, baseType: !147, size: 128, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !517, file: !518, line: 28, baseType: !524, size: 64, offset: 256)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !170, line: 20, baseType: !526)
!526 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !124, line: 26, baseType: !46)
!527 = !{!528}
!528 = !DISubrange(count: 4)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !408, file: !384, line: 877, baseType: !530, size: 64, offset: 7872)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !384, line: 877, flags: DIFlagFwdDecl)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !408, file: !384, line: 880, baseType: !533, size: 1088, offset: 7936)
!533 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !534, line: 72, baseType: !535)
!534 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !534, line: 23, size: 1088, elements: !536)
!536 = !{!537, !538, !539, !540, !541, !544, !545, !553, !554, !579, !580, !581}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !535, file: !534, line: 28, baseType: !452, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !535, file: !534, line: 38, baseType: !460, size: 64, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !535, file: !534, line: 40, baseType: !111, size: 64, offset: 128)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !535, file: !534, line: 43, baseType: !469, size: 320, offset: 192)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !535, file: !534, line: 44, baseType: !542, size: 64, offset: 512)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !534, line: 44, flags: DIFlagFwdDecl)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !535, file: !534, line: 48, baseType: !111, size: 64, offset: 576)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !535, file: !534, line: 59, baseType: !546, size: 256, offset: 640)
!546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !547, line: 66, size: 256, elements: !548)
!547 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!548 = !{!549, !550, !551, !552}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !546, file: !547, line: 67, baseType: !458, size: 64)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !546, file: !547, line: 68, baseType: !480, size: 32, offset: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !546, file: !547, line: 70, baseType: !475, size: 32, offset: 96)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !546, file: !547, line: 72, baseType: !147, size: 128, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !535, file: !534, line: 60, baseType: !108, size: 64, offset: 896)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !535, file: !534, line: 61, baseType: !555, size: 64, offset: 960)
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !557)
!557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !558, line: 13, size: 1216, elements: !559)
!558 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!559 = !{!560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !557, file: !558, line: 14, baseType: !108, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !557, file: !558, line: 15, baseType: !111, size: 64, offset: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !557, file: !558, line: 17, baseType: !111, size: 64, offset: 128)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !557, file: !558, line: 17, baseType: !111, size: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !557, file: !558, line: 18, baseType: !111, size: 64, offset: 256)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !557, file: !558, line: 18, baseType: !111, size: 64, offset: 320)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !557, file: !558, line: 19, baseType: !204, size: 64, offset: 384)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !557, file: !558, line: 21, baseType: !112, size: 64, offset: 448)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !557, file: !558, line: 23, baseType: !112, size: 64, offset: 512)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !557, file: !558, line: 24, baseType: !112, size: 64, offset: 576)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !557, file: !558, line: 25, baseType: !112, size: 64, offset: 640)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !557, file: !558, line: 26, baseType: !112, size: 64, offset: 704)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !557, file: !558, line: 27, baseType: !112, size: 64, offset: 768)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !557, file: !558, line: 28, baseType: !112, size: 64, offset: 832)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !557, file: !558, line: 29, baseType: !112, size: 64, offset: 896)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !557, file: !558, line: 30, baseType: !112, size: 64, offset: 960)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !557, file: !558, line: 31, baseType: !112, size: 64, offset: 1024)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !557, file: !558, line: 32, baseType: !112, size: 64, offset: 1088)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !557, file: !558, line: 33, baseType: !112, size: 64, offset: 1152)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !535, file: !534, line: 63, baseType: !244, size: 32, offset: 1024)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !535, file: !534, line: 69, baseType: !258, size: 16, offset: 1056)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !535, file: !534, line: 70, baseType: !582, size: 16, offset: 1072)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !170, line: 18, baseType: !583)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !124, line: 23, baseType: !584)
!584 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !408, file: !384, line: 882, baseType: !111, size: 64, offset: 9024)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !408, file: !384, line: 885, baseType: !224, size: 32, offset: 9088)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !408, file: !384, line: 886, baseType: !588, size: 64, offset: 9152)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !384, line: 732, flags: DIFlagFwdDecl)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !408, file: !384, line: 901, baseType: !591, size: 64, offset: 9216)
!591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!592 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !384, line: 901, flags: DIFlagFwdDecl)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !408, file: !384, line: 904, baseType: !371, size: 64, offset: 9280)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !408, file: !384, line: 906, baseType: !595, size: 64, offset: 9344)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !384, line: 906, flags: DIFlagFwdDecl)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !408, file: !384, line: 930, baseType: !244, size: 32, offset: 9408)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !408, file: !384, line: 933, baseType: !244, size: 32, offset: 9440)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !408, file: !384, line: 935, baseType: !600, size: 64, offset: 9472)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !601, line: 103, size: 64, elements: !602)
!601 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!602 = !{!603}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !600, file: !601, line: 104, baseType: !604, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !601, line: 101, flags: DIFlagFwdDecl)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !408, file: !384, line: 940, baseType: !458, size: 64, offset: 9536)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !408, file: !384, line: 942, baseType: !608, size: 256, offset: 9600)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !609, line: 98, size: 256, elements: !610)
!609 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!610 = !{!611, !612, !613}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !608, file: !609, line: 99, baseType: !458, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !608, file: !609, line: 100, baseType: !147, size: 128, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !608, file: !609, line: 101, baseType: !614, size: 64, offset: 192)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !609, line: 21, baseType: !615)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{null, !618}
!618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !405, file: !384, line: 986, baseType: !620, offset: 10240)
!620 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, elements: !621)
!621 = !{!622}
!622 = !DISubrange(count: -1)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !383, file: !384, line: 640, baseType: !624, size: 64, offset: 192)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !373, line: 297, baseType: !625)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !373, line: 297, size: 64, elements: !626)
!626 = !{!627}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !625, file: !373, line: 297, baseType: !628, size: 64)
!628 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !444, line: 19, baseType: !111)
!629 = !DIDerivedType(tag: DW_TAG_member, scope: !383, file: !384, line: 646, baseType: !630, size: 64, offset: 256)
!630 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !383, file: !384, line: 646, size: 64, elements: !631)
!631 = !{!632, !635}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !630, file: !384, line: 647, baseType: !633, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !634)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !384, line: 542, baseType: !111)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !630, file: !384, line: 648, baseType: !634, size: 64)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !383, file: !384, line: 666, baseType: !46, size: 32, offset: 320)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !383, file: !384, line: 667, baseType: !638, size: 64, offset: 384)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !384, line: 579, size: 320, elements: !640)
!640 = !{!641}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !639, file: !384, line: 580, baseType: !469, size: 320)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !383, file: !384, line: 670, baseType: !156, size: 8, offset: 448)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !383, file: !384, line: 681, baseType: !644, size: 256, offset: 512)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !383, file: !384, line: 678, size: 256, elements: !645)
!645 = !{!646, !654}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !644, file: !384, line: 679, baseType: !647, size: 192, align: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !648, line: 5, size: 192, align: 64, elements: !649)
!648 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!649 = !{!650, !651, !653}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !647, file: !648, line: 6, baseType: !111, size: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !647, file: !648, line: 7, baseType: !652, size: 64, offset: 64)
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !647, file: !648, line: 8, baseType: !652, size: 64, offset: 128)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !644, file: !384, line: 680, baseType: !111, size: 64, offset: 192)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !383, file: !384, line: 689, baseType: !147, size: 128, offset: 768)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !383, file: !384, line: 691, baseType: !657, size: 64, offset: 896)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !384, line: 691, flags: DIFlagFwdDecl)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !383, file: !384, line: 694, baseType: !660, size: 64, offset: 960)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !662)
!662 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !384, line: 694, flags: DIFlagFwdDecl)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !383, file: !384, line: 697, baseType: !111, size: 64, offset: 1024)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !383, file: !384, line: 699, baseType: !371, size: 64, offset: 1088)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !383, file: !384, line: 700, baseType: !108, size: 64, offset: 1152)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !383, file: !384, line: 711, baseType: !458, size: 64, offset: 1216)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !383, file: !384, line: 717, baseType: !668, size: 64, offset: 1280)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !384, line: 717, flags: DIFlagFwdDecl)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !383, file: !384, line: 722, baseType: !671, offset: 1344)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !384, line: 570, elements: !425)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !343, file: !316, line: 90, baseType: !673, size: 64, offset: 192)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !343, file: !316, line: 91, baseType: !675, size: 64, offset: 256)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !306, file: !212, line: 120, baseType: !677, size: 64, offset: 192)
!677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!678 = !DISubroutineType(types: !679)
!679 = !{!680, !273}
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !682)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !6, line: 39, size: 384, elements: !683)
!683 = !{!684, !685, !689, !693, !699, !703}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !682, file: !6, line: 40, baseType: !5, size: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !682, file: !6, line: 41, baseType: !686, size: 64, offset: 64)
!686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !687, size: 64)
!687 = !DISubroutineType(types: !688)
!688 = !{!156}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !682, file: !6, line: 42, baseType: !690, size: 64, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DISubroutineType(types: !692)
!692 = !{!108}
!693 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !682, file: !6, line: 43, baseType: !694, size: 64, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = !DISubroutineType(types: !696)
!696 = !{!204, !697}
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !6, line: 19, flags: DIFlagFwdDecl)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !682, file: !6, line: 44, baseType: !700, size: 64, offset: 256)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = !DISubroutineType(types: !702)
!702 = !{!204}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !682, file: !6, line: 45, baseType: !704, size: 64, offset: 320)
!704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !705, size: 64)
!705 = !DISubroutineType(types: !706)
!706 = !{null, !108}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !306, file: !212, line: 121, baseType: !708, size: 64, offset: 256)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DISubroutineType(types: !710)
!710 = !{!204, !273}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !306, file: !212, line: 122, baseType: !712, size: 64, offset: 320)
!712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!713 = !DISubroutineType(types: !714)
!714 = !{null, !273, !715, !723}
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !717, line: 23, baseType: !718)
!717 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !717, line: 21, size: 32, elements: !719)
!719 = !{!720}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !718, file: !717, line: 22, baseType: !721, size: 32)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !110, line: 37, baseType: !722)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !324, line: 49, baseType: !7)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !717, line: 28, baseType: !725)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !717, line: 26, size: 32, elements: !726)
!726 = !{!727}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !725, file: !717, line: 27, baseType: !728, size: 32)
!728 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !110, line: 38, baseType: !729)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !324, line: 50, baseType: !7)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !211, file: !212, line: 70, baseType: !731, size: 64, offset: 384)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !733, line: 190, size: 1152, elements: !734)
!733 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!734 = !{!735, !736, !737, !738, !739, !740, !741, !742, !837, !838, !839, !840, !841, !844}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !732, file: !733, line: 191, baseType: !244, size: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !732, file: !733, line: 192, baseType: !244, size: 32, offset: 32)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !732, file: !733, line: 202, baseType: !731, size: 64, offset: 64)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !732, file: !733, line: 203, baseType: !158, size: 64, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !732, file: !733, line: 205, baseType: !647, size: 192, align: 64, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !732, file: !733, line: 207, baseType: !204, size: 64, offset: 384)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !732, file: !733, line: 208, baseType: !7, size: 32, offset: 448)
!742 = !DIDerivedType(tag: DW_TAG_member, scope: !732, file: !733, line: 209, baseType: !743, size: 256, offset: 512)
!743 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !732, file: !733, line: 209, size: 256, elements: !744)
!744 = !{!745, !757, !761}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !743, file: !733, line: 210, baseType: !746, size: 256)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !733, line: 153, size: 256, elements: !747)
!747 = !{!748, !749, !753, !756}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !746, file: !733, line: 154, baseType: !111, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !746, file: !733, line: 156, baseType: !750, size: 64, offset: 64)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !648, line: 12, size: 64, elements: !751)
!751 = !{!752}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !750, file: !648, line: 13, baseType: !652, size: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !746, file: !733, line: 162, baseType: !754, size: 64, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !733, line: 162, flags: DIFlagFwdDecl)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !746, file: !733, line: 167, baseType: !111, size: 64, offset: 192)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !743, file: !733, line: 211, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !733, line: 170, size: 64, elements: !759)
!759 = !{!760}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !758, file: !733, line: 171, baseType: !731, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !743, file: !733, line: 212, baseType: !762, size: 256)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !733, line: 174, size: 256, elements: !763)
!763 = !{!764, !832, !835, !836}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !762, file: !733, line: 175, baseType: !765, size: 64)
!765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!766 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !767)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !733, line: 271, size: 768, elements: !768)
!768 = !{!769, !792, !796, !800, !805, !809, !813, !817, !818, !819, !820, !828}
!769 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !767, file: !733, line: 276, baseType: !770, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!46, !773}
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !733, line: 251, size: 1216, elements: !775)
!775 = !{!776, !777, !778, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !774, file: !733, line: 253, baseType: !731, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !774, file: !733, line: 254, baseType: !371, size: 64, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !774, file: !733, line: 255, baseType: !779, size: 64, offset: 128)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !781, line: 66, flags: DIFlagFwdDecl)
!781 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!782 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !774, file: !733, line: 256, baseType: !108, size: 64, offset: 192)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !774, file: !733, line: 259, baseType: !546, size: 256, offset: 256)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !774, file: !733, line: 260, baseType: !546, size: 256, offset: 512)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !774, file: !733, line: 261, baseType: !46, size: 32, offset: 768)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !774, file: !733, line: 262, baseType: !147, size: 128, offset: 832)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !774, file: !733, line: 263, baseType: !290, size: 64, offset: 960)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !774, file: !733, line: 265, baseType: !336, size: 64, offset: 1024)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !774, file: !733, line: 266, baseType: !156, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !774, file: !733, line: 267, baseType: !156, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !774, file: !733, line: 268, baseType: !660, size: 64, offset: 1152)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !767, file: !733, line: 277, baseType: !793, size: 64, offset: 64)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DISubroutineType(types: !795)
!795 = !{null, !773}
!796 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !767, file: !733, line: 290, baseType: !797, size: 64, offset: 128)
!797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !798, size: 64)
!798 = !DISubroutineType(types: !799)
!799 = !{!46, !779, !108}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !767, file: !733, line: 292, baseType: !801, size: 64, offset: 192)
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !802, size: 64)
!802 = !DISubroutineType(types: !803)
!803 = !{!108, !779, !804}
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !767, file: !733, line: 293, baseType: !806, size: 64, offset: 256)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{!108, !779, !108, !804}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !767, file: !733, line: 294, baseType: !810, size: 64, offset: 320)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DISubroutineType(types: !812)
!812 = !{null, !779, !108}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !767, file: !733, line: 296, baseType: !814, size: 64, offset: 384)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DISubroutineType(types: !816)
!816 = !{!322, !773, !290, !336, !374}
!817 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !767, file: !733, line: 306, baseType: !336, size: 64, offset: 448)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !767, file: !733, line: 313, baseType: !156, size: 8, offset: 512)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !767, file: !733, line: 314, baseType: !814, size: 64, offset: 576)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !767, file: !733, line: 317, baseType: !821, size: 64, offset: 640)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{!824, !773, !826}
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !825, line: 59, baseType: !7)
!825 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !733, line: 31, flags: DIFlagFwdDecl)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !767, file: !733, line: 320, baseType: !829, size: 64, offset: 704)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DISubroutineType(types: !831)
!831 = !{!46, !773, !382}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !762, file: !733, line: 176, baseType: !833, size: 64, offset: 64)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !733, line: 35, flags: DIFlagFwdDecl)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !762, file: !733, line: 177, baseType: !374, size: 64, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !762, file: !733, line: 178, baseType: !731, size: 64, offset: 192)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !732, file: !733, line: 215, baseType: !108, size: 64, offset: 768)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !732, file: !733, line: 221, baseType: !452, size: 64, offset: 832)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !732, file: !733, line: 223, baseType: !260, size: 16, offset: 896)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !732, file: !733, line: 224, baseType: !331, size: 16, offset: 912)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !732, file: !733, line: 225, baseType: !842, size: 64, offset: 960)
!842 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !843, size: 64)
!843 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !733, line: 36, flags: DIFlagFwdDecl)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !732, file: !733, line: 227, baseType: !395, size: 128, align: 64, offset: 1024)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !211, file: !212, line: 71, baseType: !846, size: 32, offset: 448)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !847, line: 19, size: 32, elements: !848)
!847 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!848 = !{!849}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !846, file: !847, line: 20, baseType: !850, size: 32)
!850 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !851, line: 113, baseType: !852)
!851 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !851, line: 111, size: 32, elements: !853)
!853 = !{!854}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !852, file: !851, line: 112, baseType: !244, size: 32)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !211, file: !212, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !211, file: !212, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !211, file: !212, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !211, file: !212, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !211, file: !212, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !208, file: !26, line: 707, baseType: !861, size: 64, offset: 512)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !208, file: !26, line: 709, baseType: !863, size: 64, offset: 576)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !208, file: !26, line: 711, baseType: !158, size: 64, offset: 640)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !208, file: !26, line: 712, baseType: !867, size: 64, offset: 704)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !869)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !870)
!870 = !{!871, !872, !873, !877, !882, !886}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !869, file: !26, line: 90, baseType: !158, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !869, file: !26, line: 91, baseType: !340, size: 64, offset: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !869, file: !26, line: 92, baseType: !874, size: 64, offset: 128)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DISubroutineType(types: !876)
!876 = !{!46, !206, !285}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !869, file: !26, line: 93, baseType: !878, size: 64, offset: 192)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DISubroutineType(types: !880)
!880 = !{!290, !206, !881, !715, !723}
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !869, file: !26, line: 95, baseType: !883, size: 64, offset: 256)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DISubroutineType(types: !885)
!885 = !{null, !861}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !869, file: !26, line: 97, baseType: !887, size: 64, offset: 320)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !889)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !890)
!890 = !{!891, !895, !896, !897, !898, !899, !900, !901, !902, !903, !904, !905, !906, !907, !908, !909, !910, !911, !912, !913, !914, !915, !916}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !889, file: !38, line: 287, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DISubroutineType(types: !894)
!894 = !{!46, !861}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !889, file: !38, line: 288, baseType: !883, size: 64, offset: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !889, file: !38, line: 289, baseType: !892, size: 64, offset: 128)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !889, file: !38, line: 290, baseType: !892, size: 64, offset: 192)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !889, file: !38, line: 291, baseType: !892, size: 64, offset: 256)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !889, file: !38, line: 292, baseType: !892, size: 64, offset: 320)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !889, file: !38, line: 293, baseType: !892, size: 64, offset: 384)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !889, file: !38, line: 294, baseType: !892, size: 64, offset: 448)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !889, file: !38, line: 295, baseType: !892, size: 64, offset: 512)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !889, file: !38, line: 296, baseType: !892, size: 64, offset: 576)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !889, file: !38, line: 297, baseType: !892, size: 64, offset: 640)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !889, file: !38, line: 298, baseType: !892, size: 64, offset: 704)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !889, file: !38, line: 299, baseType: !892, size: 64, offset: 768)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !889, file: !38, line: 300, baseType: !892, size: 64, offset: 832)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !889, file: !38, line: 301, baseType: !892, size: 64, offset: 896)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !889, file: !38, line: 302, baseType: !892, size: 64, offset: 960)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !889, file: !38, line: 303, baseType: !892, size: 64, offset: 1024)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !889, file: !38, line: 304, baseType: !892, size: 64, offset: 1088)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !889, file: !38, line: 305, baseType: !892, size: 64, offset: 1152)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !889, file: !38, line: 306, baseType: !892, size: 64, offset: 1216)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !889, file: !38, line: 307, baseType: !892, size: 64, offset: 1280)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !889, file: !38, line: 308, baseType: !892, size: 64, offset: 1344)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !889, file: !38, line: 309, baseType: !892, size: 64, offset: 1408)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !208, file: !26, line: 714, baseType: !918, size: 64, offset: 768)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !920)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !921, line: 80, size: 1344, elements: !922)
!921 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!922 = !{!923, !924, !925, !926, !927, !928, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1369}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !920, file: !921, line: 81, baseType: !158, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !920, file: !921, line: 82, baseType: !158, size: 64, offset: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !920, file: !921, line: 83, baseType: !340, size: 64, offset: 128)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !920, file: !921, line: 84, baseType: !340, size: 64, offset: 192)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !920, file: !921, line: 85, baseType: !340, size: 64, offset: 256)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !920, file: !921, line: 87, baseType: !929, size: 64, offset: 320)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !930, size: 64)
!930 = !DISubroutineType(types: !931)
!931 = !{!46, !861, !932}
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !934)
!934 = !{!935, !936, !937, !1313, !1314, !1315, !1316, !1331, !1332, !1333, !1334, !1335, !1336, !1344, !1345, !1346, !1347, !1348, !1349}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !933, file: !20, line: 97, baseType: !158, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !933, file: !20, line: 98, baseType: !918, size: 64, offset: 64)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !933, file: !20, line: 100, baseType: !938, size: 64, offset: 128)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !13, line: 402, size: 9216, align: 512, elements: !940)
!940 = !{!941, !942, !943, !947, !968, !994, !995, !996, !997, !1001, !1004, !1005, !1006, !1059, !1060, !1061, !1062, !1063, !1064, !1065, !1066, !1069, !1073, !1093, !1111, !1112, !1113, !1114, !1123, !1146, !1147, !1150, !1153, !1154, !1155, !1156, !1157, !1158, !1159, !1164, !1165, !1271, !1279, !1280, !1281, !1283, !1287, !1288, !1292, !1293, !1294, !1295, !1297, !1298, !1299, !1306, !1307, !1308, !1312}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !939, file: !13, line: 403, baseType: !12, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !939, file: !13, line: 406, baseType: !147, size: 128, offset: 64)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !939, file: !13, line: 409, baseType: !944, size: 448, offset: 192)
!944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 448, elements: !945)
!945 = !{!946}
!946 = !DISubrange(count: 56)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !939, file: !13, line: 417, baseType: !948, size: 768, offset: 640)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !13, line: 45, size: 768, elements: !949)
!949 = !{!950, !951, !952, !953, !956}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !948, file: !13, line: 46, baseType: !211, size: 512)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !948, file: !13, line: 47, baseType: !938, size: 64, offset: 512)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !948, file: !13, line: 48, baseType: !217, size: 64, offset: 576)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !948, file: !13, line: 49, baseType: !954, size: 64, offset: 640)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !13, line: 49, flags: DIFlagFwdDecl)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !948, file: !13, line: 50, baseType: !957, size: 64, offset: 704)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !959, line: 26, size: 256, elements: !960)
!959 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!960 = !{!961, !962}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !958, file: !959, line: 27, baseType: !7, size: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !958, file: !959, line: 28, baseType: !963, size: 192, offset: 64)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !964, line: 43, size: 192, elements: !965)
!964 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!965 = !{!966, !967}
!966 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !963, file: !964, line: 44, baseType: !480, size: 32)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !963, file: !964, line: 45, baseType: !147, size: 128, offset: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !939, file: !13, line: 418, baseType: !969, size: 64, offset: 1408)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !13, line: 53, size: 448, elements: !971)
!971 = !{!972, !973, !978, !982, !986, !990}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !970, file: !13, line: 54, baseType: !327, size: 128)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !970, file: !13, line: 55, baseType: !974, size: 64, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DISubroutineType(types: !976)
!976 = !{!322, !969, !977, !290}
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !970, file: !13, line: 57, baseType: !979, size: 64, offset: 192)
!979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !980, size: 64)
!980 = !DISubroutineType(types: !981)
!981 = !{!322, !969, !977, !158, !336}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !970, file: !13, line: 59, baseType: !983, size: 64, offset: 256)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DISubroutineType(types: !985)
!985 = !{null, !938, !158}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !970, file: !13, line: 60, baseType: !987, size: 64, offset: 320)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DISubroutineType(types: !989)
!989 = !{!46, !938}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !970, file: !13, line: 61, baseType: !991, size: 64, offset: 384)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DISubroutineType(types: !993)
!993 = !{null, !938}
!994 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !939, file: !13, line: 419, baseType: !158, size: 64, offset: 1472)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !939, file: !13, line: 420, baseType: !158, size: 64, offset: 1536)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !939, file: !13, line: 421, baseType: !217, size: 64, offset: 1600)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !939, file: !13, line: 424, baseType: !998, size: 64, offset: 1664)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1000)
!1000 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !13, line: 424, flags: DIFlagFwdDecl)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !939, file: !13, line: 425, baseType: !1002, size: 64, offset: 1728)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !525)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !939, file: !13, line: 426, baseType: !7, size: 32, offset: 1792)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !939, file: !13, line: 435, baseType: !546, size: 256, offset: 1856)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !939, file: !13, line: 437, baseType: !1007, size: 64, offset: 2112)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !1009, line: 69, size: 320, elements: !1010)
!1009 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!1010 = !{!1011, !1012, !1013, !1030, !1032, !1036, !1037}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1008, file: !1009, line: 70, baseType: !158, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1008, file: !1009, line: 71, baseType: !938, size: 64, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1008, file: !1009, line: 72, baseType: !1014, size: 64, offset: 128)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1016)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !1009, line: 47, size: 256, elements: !1017)
!1017 = !{!1018, !1019, !1025, !1029}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1016, file: !1009, line: 49, baseType: !7, size: 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !1016, file: !1009, line: 51, baseType: !1020, size: 64, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DISubroutineType(types: !1022)
!1022 = !{!46, !158, !1023}
!1023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1024, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1008)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1016, file: !1009, line: 53, baseType: !1026, size: 64, offset: 128)
!1026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1027 = !DISubroutineType(types: !1028)
!1028 = !{!46, !290, !1023}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1016, file: !1009, line: 55, baseType: !704, size: 64, offset: 192)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !1008, file: !1009, line: 73, baseType: !1031, size: 16, offset: 192)
!1031 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1008, file: !1009, line: 74, baseType: !1033, size: 8, offset: 208)
!1033 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !170, line: 16, baseType: !1034)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !124, line: 20, baseType: !1035)
!1035 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1008, file: !1009, line: 75, baseType: !252, size: 8, offset: 216)
!1037 = !DIDerivedType(tag: DW_TAG_member, scope: !1008, file: !1009, line: 76, baseType: !1038, size: 64, offset: 256)
!1038 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1008, file: !1009, line: 76, size: 64, elements: !1039)
!1039 = !{!1040, !1041, !1048}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !1038, file: !1009, line: 77, baseType: !108, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !1038, file: !1009, line: 78, baseType: !1042, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1043, size: 64)
!1043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1044)
!1044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !1009, line: 86, size: 128, elements: !1045)
!1045 = !{!1046, !1047}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !1044, file: !1009, line: 87, baseType: !7, size: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1044, file: !1009, line: 88, baseType: !290, size: 64, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !1038, file: !1009, line: 79, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1051)
!1051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !1009, line: 92, size: 256, elements: !1052)
!1052 = !{!1053, !1054, !1055, !1057, !1058}
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !1051, file: !1009, line: 94, baseType: !7, size: 32)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !1051, file: !1009, line: 95, baseType: !7, size: 32, offset: 32)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !1051, file: !1009, line: 96, baseType: !1056, size: 64, offset: 64)
!1056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1051, file: !1009, line: 97, baseType: !1014, size: 64, offset: 128)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !1051, file: !1009, line: 98, baseType: !108, size: 64, offset: 192)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !939, file: !13, line: 438, baseType: !7, size: 32, offset: 2176)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !939, file: !13, line: 441, baseType: !7, size: 32, offset: 2208)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !939, file: !13, line: 442, baseType: !998, size: 64, offset: 2240)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !939, file: !13, line: 443, baseType: !1002, size: 64, offset: 2304)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !939, file: !13, line: 444, baseType: !156, size: 8, offset: 2368)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !939, file: !13, line: 451, baseType: !156, size: 8, offset: 2376)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !939, file: !13, line: 454, baseType: !7, size: 32, offset: 2400)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !939, file: !13, line: 455, baseType: !1067, size: 64, offset: 2432)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !13, line: 43, flags: DIFlagFwdDecl)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !939, file: !13, line: 458, baseType: !1070, size: 64, offset: 2496)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DISubroutineType(types: !1072)
!1072 = !{!46}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !939, file: !13, line: 460, baseType: !1074, size: 4032, align: 512, offset: 2560)
!1074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1075, size: 4032, elements: !1091)
!1075 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !13, line: 362, size: 576, elements: !1076)
!1076 = !{!1077, !1078, !1079}
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1075, file: !13, line: 363, baseType: !108, size: 64)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1075, file: !13, line: 364, baseType: !7, size: 32, offset: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !1075, file: !13, line: 367, baseType: !1080, size: 448, offset: 128)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !13, line: 319, size: 448, elements: !1081)
!1081 = !{!1082, !1083}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !1080, file: !13, line: 320, baseType: !938, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1080, file: !13, line: 321, baseType: !1084, size: 384, offset: 64)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !1085, line: 40, size: 384, elements: !1086)
!1085 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!1086 = !{!1087}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1084, file: !1085, line: 41, baseType: !1088, size: 384, align: 64)
!1088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !647, size: 384, align: 64, elements: !1089)
!1089 = !{!1090}
!1090 = !DISubrange(count: 2)
!1091 = !{!1092}
!1092 = !DISubrange(count: 7)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !939, file: !13, line: 463, baseType: !1094, size: 192, offset: 6592)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !1095, line: 8, size: 192, elements: !1096)
!1095 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!1096 = !{!1097, !1098, !1100}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !1094, file: !1095, line: 10, baseType: !7, size: 32)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !1094, file: !1095, line: 11, baseType: !1099, size: 64, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !1094, file: !1095, line: 12, baseType: !1101, size: 64, offset: 128)
!1101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1102, size: 64)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !1103, line: 59, size: 48, elements: !1104)
!1103 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!1104 = !{!1105, !1106, !1107, !1108, !1109, !1110}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !1102, file: !1103, line: 60, baseType: !582, size: 16)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !1102, file: !1103, line: 61, baseType: !582, size: 16, offset: 16)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !1102, file: !1103, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !1102, file: !1103, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1102, file: !1103, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1102, file: !1103, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !939, file: !13, line: 465, baseType: !111, size: 64, offset: 6784)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !939, file: !13, line: 469, baseType: !7, size: 32, offset: 6848)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !939, file: !13, line: 470, baseType: !147, size: 128, offset: 6912)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !939, file: !13, line: 471, baseType: !1115, size: 64, offset: 7040)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !1117, line: 33, size: 96, elements: !1118)
!1117 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!1118 = !{!1119, !1120, !1121, !1122}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !1116, file: !1117, line: 37, baseType: !46, size: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !1116, file: !1117, line: 43, baseType: !46, size: 32, offset: 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !1116, file: !1117, line: 45, baseType: !260, size: 16, offset: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1116, file: !1117, line: 47, baseType: !260, size: 16, offset: 80)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !939, file: !13, line: 476, baseType: !1124, size: 64, offset: 7104)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !13, line: 378, size: 256, elements: !1126)
!1126 = !{!1127, !1143, !1144, !1145}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !1125, file: !13, line: 379, baseType: !1128, size: 64)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !1130, line: 204, baseType: !1131)
!1130 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !1130, line: 197, size: 192, elements: !1132)
!1132 = !{!1133, !1135, !1136, !1137, !1139, !1141}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !1131, file: !1130, line: 198, baseType: !1134, size: 32)
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !1130, line: 21, baseType: !131)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !1131, file: !1130, line: 199, baseType: !125, size: 8, offset: 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !1131, file: !1130, line: 200, baseType: !125, size: 8, offset: 40)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !1131, file: !1130, line: 201, baseType: !1138, size: 16, offset: 48)
!1138 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !1130, line: 17, baseType: !259)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !1131, file: !1130, line: 202, baseType: !1140, size: 64, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !1130, line: 16, baseType: !453)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !1131, file: !1130, line: 203, baseType: !1142, size: 64, offset: 128)
!1142 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !1130, line: 22, baseType: !453)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !1125, file: !13, line: 380, baseType: !7, size: 32, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !1125, file: !13, line: 381, baseType: !290, size: 64, offset: 128)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !1125, file: !13, line: 382, baseType: !290, size: 64, offset: 192)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !939, file: !13, line: 477, baseType: !1125, size: 256, offset: 7168)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !939, file: !13, line: 480, baseType: !1148, size: 64, offset: 7424)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1149, size: 64)
!1149 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !13, line: 480, flags: DIFlagFwdDecl)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !939, file: !13, line: 483, baseType: !1151, size: 64, offset: 7488)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !13, line: 483, flags: DIFlagFwdDecl)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !939, file: !13, line: 488, baseType: !290, size: 64, offset: 7552)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !939, file: !13, line: 492, baseType: !108, size: 64, offset: 7616)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !939, file: !13, line: 493, baseType: !7, size: 32, offset: 7680)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !939, file: !13, line: 495, baseType: !108, size: 64, offset: 7744)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !939, file: !13, line: 496, baseType: !7, size: 32, offset: 7808)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !939, file: !13, line: 499, baseType: !7, size: 32, offset: 7840)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !939, file: !13, line: 500, baseType: !1160, size: 64, offset: 7872)
!1160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1162, line: 45, baseType: !1163)
!1162 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1163 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !939, file: !13, line: 503, baseType: !7, size: 32, offset: 7936)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !939, file: !13, line: 504, baseType: !1166, size: 64, offset: 8000)
!1166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1167, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1169, line: 96, size: 192, elements: !1170)
!1169 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1170 = !{!1171, !1172, !1232, !1235}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1168, file: !1169, line: 97, baseType: !7, size: 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1168, file: !1169, line: 98, baseType: !1173, size: 64, offset: 64)
!1173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1174, size: 64)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1169, line: 24, size: 3072, elements: !1175)
!1175 = !{!1176, !1178, !1179, !1180, !1181, !1195, !1196, !1197, !1198, !1216, !1217, !1218, !1229, !1230, !1231}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1174, file: !1169, line: 26, baseType: !1177, size: 128)
!1177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !458, size: 128, elements: !1089)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1174, file: !1169, line: 27, baseType: !1177, size: 128, offset: 128)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1174, file: !1169, line: 28, baseType: !46, size: 32, offset: 256)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1174, file: !1169, line: 31, baseType: !224, size: 32, align: 512, offset: 512)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1174, file: !1169, line: 32, baseType: !1182, size: 960, offset: 576)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1183, line: 206, size: 960, elements: !1184)
!1183 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1184 = !{!1185, !1186, !1189, !1191, !1192, !1194}
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1182, file: !1183, line: 207, baseType: !398, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1182, file: !1183, line: 208, baseType: !1187, size: 256, offset: 64)
!1187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1188, size: 256, elements: !527)
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1182, file: !1183, line: 209, baseType: !1190, size: 256, offset: 320)
!1190 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 256, elements: !527)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1182, file: !1183, line: 213, baseType: !112, size: 64, offset: 576)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1182, file: !1183, line: 215, baseType: !1193, size: 256, offset: 640)
!1193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 256, elements: !527)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1182, file: !1183, line: 216, baseType: !252, size: 8, offset: 896)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1174, file: !1169, line: 33, baseType: !111, size: 64, offset: 1536)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1174, file: !1169, line: 34, baseType: !111, size: 64, offset: 1600)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1174, file: !1169, line: 35, baseType: !156, size: 8, offset: 1664)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1174, file: !1169, line: 36, baseType: !1199, size: 320, offset: 1728)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1200, line: 11, size: 320, elements: !1201)
!1200 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1201 = !{!1202, !1209, !1210, !1215}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1199, file: !1200, line: 16, baseType: !1203, size: 128)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !110, line: 198, size: 128, elements: !1204)
!1204 = !{!1205, !1207}
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1203, file: !110, line: 199, baseType: !1206, size: 64)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1203, file: !110, line: 199, baseType: !1208, size: 64, offset: 64)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1199, file: !1200, line: 17, baseType: !111, size: 64, offset: 128)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1199, file: !1200, line: 18, baseType: !1211, size: 64, offset: 192)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = !DISubroutineType(types: !1213)
!1213 = !{null, !1214}
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1199, file: !1200, line: 19, baseType: !169, size: 32, offset: 256)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1174, file: !1169, line: 37, baseType: !608, size: 256, offset: 2048)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1174, file: !1169, line: 38, baseType: !395, size: 128, align: 64, offset: 2304)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1174, file: !1169, line: 39, baseType: !1219, size: 64, offset: 2432)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1169, line: 49, size: 768, elements: !1221)
!1221 = !{!1222, !1223, !1224, !1225, !1226, !1227, !1228}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1220, file: !1169, line: 50, baseType: !224, size: 32)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1220, file: !1169, line: 51, baseType: !1190, size: 256, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1220, file: !1169, line: 53, baseType: !1190, size: 256, offset: 320)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1220, file: !1169, line: 54, baseType: !111, size: 64, offset: 576)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1220, file: !1169, line: 55, baseType: !1219, size: 64, offset: 640)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1220, file: !1169, line: 56, baseType: !46, size: 32, offset: 704)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1220, file: !1169, line: 57, baseType: !46, size: 32, offset: 736)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1174, file: !1169, line: 40, baseType: !111, size: 64, offset: 2496)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1174, file: !1169, line: 42, baseType: !46, size: 32, offset: 2560)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1174, file: !1169, line: 43, baseType: !1167, size: 64, offset: 2624)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1168, file: !1169, line: 99, baseType: !1233, offset: 128)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1234, line: 211, elements: !425)
!1234 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1168, file: !1169, line: 100, baseType: !1236, size: 64, offset: 128)
!1236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1237, size: 64)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1169, line: 63, size: 3008, elements: !1238)
!1238 = !{!1239, !1240, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1259, !1260, !1261, !1270}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1237, file: !1169, line: 64, baseType: !1219, size: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1237, file: !1169, line: 65, baseType: !1241, size: 192, offset: 64)
!1241 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1219, size: 192, elements: !291)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1237, file: !1169, line: 67, baseType: !46, size: 32, offset: 256)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1237, file: !1169, line: 68, baseType: !546, size: 256, offset: 320)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1237, file: !1169, line: 69, baseType: !224, size: 32, offset: 576)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1237, file: !1169, line: 70, baseType: !546, size: 256, offset: 640)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1237, file: !1169, line: 71, baseType: !111, size: 64, offset: 896)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1237, file: !1169, line: 72, baseType: !111, size: 64, offset: 960)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1237, file: !1169, line: 73, baseType: !111, size: 64, offset: 1024)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1237, file: !1169, line: 74, baseType: !111, size: 64, offset: 1088)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1237, file: !1169, line: 75, baseType: !111, size: 64, offset: 1152)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1237, file: !1169, line: 76, baseType: !111, size: 64, offset: 1216)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1237, file: !1169, line: 77, baseType: !111, size: 64, offset: 1280)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1237, file: !1169, line: 78, baseType: !111, size: 64, offset: 1344)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1237, file: !1169, line: 79, baseType: !156, size: 8, offset: 1408)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1237, file: !1169, line: 80, baseType: !111, size: 64, offset: 1472)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1237, file: !1169, line: 81, baseType: !546, size: 256, offset: 1536)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1237, file: !1169, line: 82, baseType: !958, size: 256, offset: 1792)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1237, file: !1169, line: 84, baseType: !244, size: 32, offset: 2048)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1237, file: !1169, line: 87, baseType: !111, size: 64, offset: 2112)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1237, file: !1169, line: 88, baseType: !111, size: 64, offset: 2176)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1237, file: !1169, line: 89, baseType: !1262, size: 704, offset: 2240)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !609, line: 111, size: 704, elements: !1263)
!1263 = !{!1264, !1265, !1266, !1269}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1262, file: !609, line: 112, baseType: !608, size: 256)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1262, file: !609, line: 113, baseType: !1199, size: 320, offset: 256)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1262, file: !609, line: 116, baseType: !1267, size: 64, offset: 576)
!1267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1268, size: 64)
!1268 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !609, line: 18, flags: DIFlagFwdDecl)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1262, file: !609, line: 117, baseType: !46, size: 32, offset: 640)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1237, file: !1169, line: 90, baseType: !1167, size: 64, offset: 2944)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !939, file: !13, line: 515, baseType: !1272, size: 64, offset: 8064)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1274, line: 117, size: 128, elements: !1275)
!1274 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1275 = !{!1276, !1277, !1278}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1273, file: !1274, line: 118, baseType: !525, size: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1273, file: !1274, line: 119, baseType: !525, size: 32, offset: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1273, file: !1274, line: 120, baseType: !112, size: 64, offset: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !939, file: !13, line: 516, baseType: !7, size: 32, offset: 8128)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !939, file: !13, line: 519, baseType: !7, size: 32, offset: 8160)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !939, file: !13, line: 520, baseType: !1282, size: 64, offset: 8192)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !939, file: !13, line: 523, baseType: !1284, size: 64, offset: 8256)
!1284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1285, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1286, size: 64)
!1286 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !13, line: 523, flags: DIFlagFwdDecl)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !939, file: !13, line: 524, baseType: !7, size: 32, offset: 8320)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !939, file: !13, line: 525, baseType: !1289, size: 64, offset: 8384)
!1289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1290, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1291, size: 64)
!1291 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !13, line: 525, flags: DIFlagFwdDecl)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !939, file: !13, line: 526, baseType: !7, size: 32, offset: 8448)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !939, file: !13, line: 533, baseType: !108, size: 64, offset: 8512)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !939, file: !13, line: 534, baseType: !7, size: 32, offset: 8576)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !939, file: !13, line: 535, baseType: !1296, size: 64, offset: 8640)
!1296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !939, file: !13, line: 536, baseType: !7, size: 32, offset: 8704)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !939, file: !13, line: 539, baseType: !46, size: 32, offset: 8736)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !939, file: !13, line: 540, baseType: !1300, size: 64, offset: 8768)
!1300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1301, size: 64)
!1301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1302, line: 32, size: 64, elements: !1303)
!1302 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1303 = !{!1304, !1305}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1301, file: !1302, line: 33, baseType: !525, size: 32)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1301, file: !1302, line: 34, baseType: !525, size: 32, offset: 32)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !939, file: !13, line: 563, baseType: !147, size: 128, offset: 8832)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !939, file: !13, line: 565, baseType: !147, size: 128, offset: 8960)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !939, file: !13, line: 568, baseType: !1309, size: 64, offset: 9088)
!1309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1310, size: 64)
!1310 = !DISubroutineType(types: !1311)
!1311 = !{null}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !939, file: !13, line: 570, baseType: !244, size: 32, offset: 9152)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !933, file: !20, line: 101, baseType: !158, size: 64, offset: 192)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !933, file: !20, line: 103, baseType: !156, size: 8, offset: 256)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !933, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !933, file: !20, line: 106, baseType: !1317, size: 64, offset: 320)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1319)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !119, line: 282, size: 1600, elements: !1320)
!1320 = !{!1321, !1325, !1326, !1330}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1319, file: !119, line: 283, baseType: !1322, size: 256)
!1322 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 256, elements: !1323)
!1323 = !{!1324}
!1324 = !DISubrange(count: 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1319, file: !119, line: 284, baseType: !1322, size: 256, offset: 256)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1319, file: !119, line: 285, baseType: !1327, size: 1024, offset: 512)
!1327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 1024, elements: !1328)
!1328 = !{!1329}
!1329 = !DISubrange(count: 128)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1319, file: !119, line: 286, baseType: !204, size: 64, offset: 1536)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !933, file: !20, line: 107, baseType: !145, size: 64, offset: 384)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !933, file: !20, line: 109, baseType: !892, size: 64, offset: 448)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !933, file: !20, line: 110, baseType: !883, size: 64, offset: 512)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !933, file: !20, line: 111, baseType: !892, size: 64, offset: 576)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !933, file: !20, line: 112, baseType: !883, size: 64, offset: 640)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !933, file: !20, line: 113, baseType: !1337, size: 64, offset: 704)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DISubroutineType(types: !1339)
!1339 = !{!46, !861, !1340}
!1340 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1341)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1342)
!1342 = !{!1343}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1341, file: !38, line: 59, baseType: !46, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !933, file: !20, line: 114, baseType: !892, size: 64, offset: 768)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !933, file: !20, line: 115, baseType: !340, size: 64, offset: 832)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !933, file: !20, line: 116, baseType: !340, size: 64, offset: 896)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !933, file: !20, line: 118, baseType: !887, size: 64, offset: 960)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !933, file: !20, line: 119, baseType: !883, size: 64, offset: 1024)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !933, file: !20, line: 121, baseType: !1350, size: 64, offset: 1088)
!1350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1351, size: 64)
!1351 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !920, file: !921, line: 88, baseType: !874, size: 64, offset: 384)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !920, file: !921, line: 89, baseType: !892, size: 64, offset: 448)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !920, file: !921, line: 90, baseType: !883, size: 64, offset: 512)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !920, file: !921, line: 91, baseType: !883, size: 64, offset: 576)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !920, file: !921, line: 92, baseType: !883, size: 64, offset: 640)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !920, file: !921, line: 94, baseType: !892, size: 64, offset: 704)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !920, file: !921, line: 95, baseType: !892, size: 64, offset: 768)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !920, file: !921, line: 97, baseType: !1337, size: 64, offset: 832)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !920, file: !921, line: 98, baseType: !892, size: 64, offset: 896)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !920, file: !921, line: 100, baseType: !892, size: 64, offset: 960)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !920, file: !921, line: 102, baseType: !892, size: 64, offset: 1024)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !920, file: !921, line: 103, baseType: !883, size: 64, offset: 1088)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !920, file: !921, line: 105, baseType: !887, size: 64, offset: 1152)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !920, file: !921, line: 107, baseType: !1366, size: 64, offset: 1216)
!1366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1367, size: 64)
!1367 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1368)
!1368 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !921, line: 107, flags: DIFlagFwdDecl)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !920, file: !921, line: 109, baseType: !156, size: 8, offset: 1280)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !208, file: !26, line: 715, baseType: !932, size: 64, offset: 832)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !208, file: !26, line: 717, baseType: !108, size: 64, offset: 896)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !208, file: !26, line: 719, baseType: !108, size: 64, offset: 960)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !208, file: !26, line: 721, baseType: !546, size: 256, offset: 1024)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !208, file: !26, line: 725, baseType: !1375, size: 448, offset: 1280)
!1375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1376)
!1376 = !{!1377, !1378, !1379, !1380}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1375, file: !26, line: 518, baseType: !147, size: 128)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1375, file: !26, line: 519, baseType: !147, size: 128, offset: 128)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1375, file: !26, line: 520, baseType: !147, size: 128, offset: 256)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1375, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !208, file: !26, line: 726, baseType: !1382, size: 2496, offset: 1728)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1383)
!1383 = !{!1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1428, !1429, !1430, !1431, !1432, !1433, !1504, !1505, !1506, !1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1544, !1548}
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1382, file: !38, line: 664, baseType: !1340, size: 32)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1382, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1382, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1382, file: !38, line: 667, baseType: !156, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1382, file: !38, line: 668, baseType: !156, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1382, file: !38, line: 669, baseType: !156, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1382, file: !38, line: 670, baseType: !156, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1382, file: !38, line: 671, baseType: !156, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1382, file: !38, line: 672, baseType: !156, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1382, file: !38, line: 673, baseType: !156, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1382, file: !38, line: 674, baseType: !156, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1382, file: !38, line: 675, baseType: !169, size: 32, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1382, file: !38, line: 676, baseType: !224, size: 32, offset: 96)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1382, file: !38, line: 678, baseType: !147, size: 128, offset: 128)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1382, file: !38, line: 679, baseType: !958, size: 256, offset: 256)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1382, file: !38, line: 680, baseType: !1400, size: 64, offset: 512)
!1400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1401, size: 64)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1402, line: 43, size: 1536, elements: !1403)
!1402 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1403 = !{!1404, !1405, !1406, !1407, !1408, !1411, !1412, !1413, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1401, file: !1402, line: 44, baseType: !158, size: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1401, file: !1402, line: 45, baseType: !46, size: 32, offset: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1401, file: !1402, line: 46, baseType: !147, size: 128, offset: 128)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1401, file: !1402, line: 47, baseType: !224, size: 32, offset: 256)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1401, file: !1402, line: 48, baseType: !1409, size: 64, offset: 320)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1401, file: !1402, line: 49, baseType: !1199, size: 320, offset: 384)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1401, file: !1402, line: 50, baseType: !111, size: 64, offset: 704)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1401, file: !1402, line: 51, baseType: !1414, size: 64, offset: 768)
!1414 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1415, line: 29, baseType: !464)
!1415 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1401, file: !1402, line: 52, baseType: !1414, size: 64, offset: 832)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1401, file: !1402, line: 53, baseType: !1414, size: 64, offset: 896)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1401, file: !1402, line: 54, baseType: !1414, size: 64, offset: 960)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1401, file: !1402, line: 55, baseType: !1414, size: 64, offset: 1024)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1401, file: !1402, line: 56, baseType: !111, size: 64, offset: 1088)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1401, file: !1402, line: 57, baseType: !111, size: 64, offset: 1152)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1401, file: !1402, line: 58, baseType: !111, size: 64, offset: 1216)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1401, file: !1402, line: 59, baseType: !111, size: 64, offset: 1280)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1401, file: !1402, line: 60, baseType: !111, size: 64, offset: 1344)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1401, file: !1402, line: 61, baseType: !861, size: 64, offset: 1408)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1401, file: !1402, line: 62, baseType: !156, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1401, file: !1402, line: 63, baseType: !156, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1382, file: !38, line: 681, baseType: !156, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1382, file: !38, line: 682, baseType: !156, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1382, file: !38, line: 683, baseType: !156, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1382, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1382, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1382, file: !38, line: 690, baseType: !1434, size: 512, offset: 640)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1435)
!1435 = !{!1436, !1442, !1443, !1448, !1500, !1501, !1502, !1503}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1434, file: !33, line: 119, baseType: !1437, size: 256)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1438, line: 9, size: 256, elements: !1439)
!1438 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1439 = !{!1440, !1441}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1437, file: !1438, line: 10, baseType: !647, size: 192, align: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1437, file: !1438, line: 11, baseType: !1414, size: 64, offset: 192)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1434, file: !33, line: 120, baseType: !1414, size: 64, offset: 256)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1434, file: !33, line: 121, baseType: !1444, size: 64, offset: 320)
!1444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1445, size: 64)
!1445 = !DISubroutineType(types: !1446)
!1446 = !{!32, !1447}
!1447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1434, file: !33, line: 122, baseType: !1449, size: 64, offset: 384)
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1451)
!1451 = !{!1452, !1477, !1478, !1481, !1486, !1487, !1495, !1499}
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1450, file: !33, line: 160, baseType: !1453, size: 64)
!1453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1454, size: 64)
!1454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1455)
!1455 = !{!1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1454, file: !33, line: 216, baseType: !480, size: 32)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1454, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1454, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1454, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1454, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1454, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1454, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1454, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1454, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1454, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1454, file: !33, line: 227, baseType: !260, size: 16, offset: 192)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1454, file: !33, line: 228, baseType: !260, size: 16, offset: 208)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1454, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1454, file: !33, line: 235, baseType: !1414, size: 64, offset: 256)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1454, file: !33, line: 236, baseType: !1447, size: 64, offset: 320)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1454, file: !33, line: 237, baseType: !1414, size: 64, offset: 384)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1454, file: !33, line: 238, baseType: !1447, size: 64, offset: 448)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1454, file: !33, line: 239, baseType: !1474, size: 4096, align: 512, offset: 512)
!1474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1450, size: 4096, align: 512, elements: !1475)
!1475 = !{!1476}
!1476 = !DISubrange(count: 8)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1450, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1450, file: !33, line: 162, baseType: !1479, size: 32, offset: 96)
!1479 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !110, line: 32, baseType: !1480)
!1480 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !324, line: 96, baseType: !46)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1450, file: !33, line: 163, baseType: !1482, size: 32, offset: 128)
!1482 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !495, line: 274, baseType: !1483)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !495, line: 274, size: 32, elements: !1484)
!1484 = !{!1485}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1483, file: !495, line: 274, baseType: !494, size: 32)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1450, file: !33, line: 164, baseType: !1447, size: 64, offset: 192)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1450, file: !33, line: 165, baseType: !1488, size: 128, offset: 256)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1438, line: 14, size: 128, elements: !1489)
!1489 = !{!1490}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1488, file: !1438, line: 15, baseType: !1491, size: 128)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !648, line: 26, size: 128, elements: !1492)
!1492 = !{!1493, !1494}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1491, file: !648, line: 27, baseType: !750, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1491, file: !648, line: 28, baseType: !652, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1450, file: !33, line: 166, baseType: !1496, size: 64, offset: 384)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{!1414}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1450, file: !33, line: 167, baseType: !1414, size: 64, offset: 448)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1434, file: !33, line: 123, baseType: !252, size: 8, offset: 448)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1434, file: !33, line: 124, baseType: !252, size: 8, offset: 456)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1434, file: !33, line: 125, baseType: !252, size: 8, offset: 464)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1434, file: !33, line: 126, baseType: !252, size: 8, offset: 472)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1382, file: !38, line: 691, baseType: !452, size: 64, offset: 1152)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1382, file: !38, line: 692, baseType: !608, size: 256, offset: 1216)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1382, file: !38, line: 693, baseType: !1507, size: 192, offset: 1472)
!1507 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1508, line: 41, baseType: !1509)
!1508 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1508, line: 37, size: 192, elements: !1510)
!1510 = !{!1511, !1512}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1509, file: !1508, line: 38, baseType: !224, size: 32)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1509, file: !1508, line: 39, baseType: !147, size: 128, offset: 64)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1382, file: !38, line: 694, baseType: !1409, size: 64, offset: 1664)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1382, file: !38, line: 695, baseType: !244, size: 32, offset: 1728)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1382, file: !38, line: 696, baseType: !244, size: 32, offset: 1760)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1382, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1382, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1382, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1382, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1382, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1382, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1382, file: !38, line: 703, baseType: !156, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1382, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1382, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1382, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1382, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1382, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1382, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1382, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1382, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1382, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1382, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1382, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1382, file: !38, line: 715, baseType: !452, size: 64, offset: 2048)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1382, file: !38, line: 716, baseType: !452, size: 64, offset: 2112)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1382, file: !38, line: 717, baseType: !452, size: 64, offset: 2176)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1382, file: !38, line: 718, baseType: !452, size: 64, offset: 2240)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1382, file: !38, line: 720, baseType: !1539, size: 64, offset: 2304)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1541)
!1541 = !{!1542, !1543}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1540, file: !38, line: 633, baseType: !224, size: 32)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1540, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1382, file: !38, line: 721, baseType: !1545, size: 64, offset: 2368)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{null, !861, !525}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1382, file: !38, line: 722, baseType: !1549, size: 64, offset: 2432)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !38, line: 722, flags: DIFlagFwdDecl)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !208, file: !26, line: 727, baseType: !1552, size: 64, offset: 4224)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1554)
!1554 = !{!1555, !1556, !1557, !1561, !1562, !1563}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1553, file: !38, line: 743, baseType: !889, size: 1472)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1553, file: !38, line: 744, baseType: !892, size: 64, offset: 1472)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1553, file: !38, line: 745, baseType: !1558, size: 64, offset: 1536)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{null, !861, !156}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1553, file: !38, line: 746, baseType: !892, size: 64, offset: 1600)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1553, file: !38, line: 747, baseType: !883, size: 64, offset: 1664)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1553, file: !38, line: 748, baseType: !883, size: 64, offset: 1728)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !208, file: !26, line: 736, baseType: !1565, size: 128, offset: 4288)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1566)
!1566 = !{!1567, !1571}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1565, file: !26, line: 531, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1570, line: 13, flags: DIFlagFwdDecl)
!1570 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1565, file: !26, line: 532, baseType: !1572, size: 64, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !208, file: !26, line: 738, baseType: !1575, size: 64, offset: 4416)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1577)
!1577 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !208, file: !26, line: 740, baseType: !1579, size: 64, offset: 4480)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !208, file: !26, line: 741, baseType: !452, size: 64, offset: 4544)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !208, file: !26, line: 746, baseType: !452, size: 64, offset: 4608)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !208, file: !26, line: 747, baseType: !1583, size: 64, offset: 4672)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1585)
!1585 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !208, file: !26, line: 749, baseType: !1587, size: 64, offset: 4736)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1589)
!1589 = !{!1590, !1591, !1592}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1588, file: !26, line: 433, baseType: !7, size: 32)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1588, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1588, file: !26, line: 435, baseType: !111, size: 64, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !208, file: !26, line: 751, baseType: !147, size: 128, offset: 4800)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !208, file: !26, line: 762, baseType: !1595, size: 64, offset: 4928)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !208, file: !26, line: 770, baseType: !1598, offset: 4992)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1599, line: 5, elements: !425)
!1599 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !208, file: !26, line: 772, baseType: !1601, size: 64, offset: 4992)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1603, line: 48, size: 1152, elements: !1604)
!1603 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!1604 = !{!1605, !1606, !1608, !1609, !1610, !1618, !1619, !1620, !1621, !1622, !1623}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1602, file: !1603, line: 49, baseType: !158, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1602, file: !1603, line: 50, baseType: !1607, size: 32, offset: 64)
!1607 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1603, line: 25, baseType: !169)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1602, file: !1603, line: 51, baseType: !158, size: 64, offset: 128)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1602, file: !1603, line: 52, baseType: !176, size: 512, offset: 192)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1602, file: !1603, line: 54, baseType: !1611, size: 64, offset: 704)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1603, line: 28, size: 256, elements: !1613)
!1613 = !{!1614, !1615, !1616, !1617}
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1612, file: !1603, line: 29, baseType: !290, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1612, file: !1603, line: 30, baseType: !46, size: 32, offset: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1612, file: !1603, line: 31, baseType: !108, size: 64, offset: 128)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1612, file: !1603, line: 32, baseType: !1611, size: 64, offset: 192)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1602, file: !1603, line: 55, baseType: !1611, size: 64, offset: 768)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1602, file: !1603, line: 56, baseType: !1601, size: 64, offset: 832)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1602, file: !1603, line: 57, baseType: !1601, size: 64, offset: 896)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1602, file: !1603, line: 58, baseType: !1601, size: 64, offset: 960)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1602, file: !1603, line: 62, baseType: !111, size: 64, offset: 1024)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1602, file: !1603, line: 63, baseType: !108, size: 64, offset: 1088)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !208, file: !26, line: 773, baseType: !180, size: 64, offset: 5056)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !208, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !208, file: !26, line: 778, baseType: !1627, size: 32, offset: 5152)
!1627 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !110, line: 21, baseType: !1628)
!1628 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !110, line: 18, baseType: !169)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !208, file: !26, line: 779, baseType: !169, size: 32, offset: 5184)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !208, file: !26, line: 781, baseType: !224, size: 32, offset: 5216)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !208, file: !26, line: 782, baseType: !147, size: 128, offset: 5248)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !208, file: !26, line: 784, baseType: !1633, size: 64, offset: 5376)
!1633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1634, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1635)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1636, line: 52, size: 768, elements: !1637)
!1636 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1637 = !{!1638, !1639, !1640, !1641, !1642, !1646, !1650, !1651, !1652, !1653, !1657, !1661}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1635, file: !1636, line: 53, baseType: !158, size: 64)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1635, file: !1636, line: 55, baseType: !340, size: 64, offset: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1635, file: !1636, line: 56, baseType: !340, size: 64, offset: 128)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1635, file: !1636, line: 58, baseType: !874, size: 64, offset: 192)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1635, file: !1636, line: 59, baseType: !1643, size: 64, offset: 256)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!290, !206, !881}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1635, file: !1636, line: 61, baseType: !1647, size: 64, offset: 320)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{null, !1633}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1635, file: !1636, line: 62, baseType: !883, size: 64, offset: 384)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1635, file: !1636, line: 64, baseType: !892, size: 64, offset: 448)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1635, file: !1636, line: 66, baseType: !680, size: 64, offset: 512)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1635, file: !1636, line: 67, baseType: !1654, size: 64, offset: 576)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!204, !206}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1635, file: !1636, line: 69, baseType: !1658, size: 64, offset: 640)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{null, !206, !715, !723}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1635, file: !1636, line: 71, baseType: !887, size: 64, offset: 704)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !208, file: !26, line: 785, baseType: !340, size: 64, offset: 5440)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !208, file: !26, line: 787, baseType: !883, size: 64, offset: 5504)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !208, file: !26, line: 788, baseType: !1665, size: 64, offset: 5568)
!1665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1666, size: 64)
!1666 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !208, file: !26, line: 789, baseType: !1668, size: 64, offset: 5632)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !208, file: !26, line: 791, baseType: !1671, size: 64, offset: 5696)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1673)
!1673 = !{!1674, !1675, !1676, !1677, !1678}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1672, file: !26, line: 598, baseType: !53, size: 32)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1672, file: !26, line: 599, baseType: !62, size: 32, offset: 32)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1672, file: !26, line: 600, baseType: !67, size: 32, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1672, file: !26, line: 601, baseType: !156, size: 8, offset: 96)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1672, file: !26, line: 602, baseType: !156, size: 8, offset: 104)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !208, file: !26, line: 793, baseType: !72, size: 32, offset: 5760)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !208, file: !26, line: 795, baseType: !156, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !208, file: !26, line: 796, baseType: !156, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !208, file: !26, line: 797, baseType: !156, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !208, file: !26, line: 798, baseType: !156, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !208, file: !26, line: 799, baseType: !156, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !184, file: !177, line: 131, baseType: !195, size: 64, offset: 256)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !184, file: !177, line: 133, baseType: !1687, size: 64, offset: 320)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!78, !198}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !184, file: !177, line: 134, baseType: !1691, size: 64, offset: 384)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!156, !198, !158}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !184, file: !177, line: 136, baseType: !1695, size: 64, offset: 448)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!46, !198, !158, !7, !108, !336}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !184, file: !177, line: 141, baseType: !1699, size: 64, offset: 512)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!46, !198, !158, !1282, !336}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !184, file: !177, line: 144, baseType: !1703, size: 64, offset: 576)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!158, !198}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !184, file: !177, line: 145, baseType: !1703, size: 64, offset: 640)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !184, file: !177, line: 146, baseType: !1708, size: 64, offset: 704)
!1708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1709, size: 64)
!1709 = !DISubroutineType(types: !1710)
!1710 = !{!180, !198}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !184, file: !177, line: 148, baseType: !1712, size: 64, offset: 768)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DISubroutineType(types: !1714)
!1714 = !{!180, !198, !180}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !184, file: !177, line: 151, baseType: !1716, size: 64, offset: 832)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!180, !198, !158}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !184, file: !177, line: 153, baseType: !1720, size: 64, offset: 896)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!46, !198, !158, !158, !7, !7, !1723}
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !177, line: 94, size: 640, elements: !1725)
!1725 = !{!1726, !1727, !1728}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1724, file: !177, line: 95, baseType: !180, size: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1724, file: !177, line: 96, baseType: !7, size: 32, offset: 64)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1724, file: !177, line: 97, baseType: !1729, size: 512, offset: 128)
!1729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 512, elements: !1475)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !184, file: !177, line: 158, baseType: !1712, size: 64, offset: 960)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !184, file: !177, line: 161, baseType: !1708, size: 64, offset: 1024)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !184, file: !177, line: 163, baseType: !187, size: 64, offset: 1088)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !184, file: !177, line: 164, baseType: !1734, size: 64, offset: 1152)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!46, !198, !1737}
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !177, line: 73, size: 128, elements: !1739)
!1739 = !{!1740, !1741, !1742}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1738, file: !177, line: 74, baseType: !7, size: 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1738, file: !177, line: 75, baseType: !7, size: 32, offset: 32)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1738, file: !177, line: 76, baseType: !198, size: 64, offset: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !184, file: !177, line: 166, baseType: !1744, size: 64, offset: 1216)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!108, !180, !46}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !184, file: !177, line: 167, baseType: !1748, size: 64, offset: 1280)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!46, !198, !7}
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !184, file: !177, line: 168, baseType: !1752, size: 64, offset: 1344)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!46, !180}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !176, file: !177, line: 44, baseType: !861, size: 64, offset: 128)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !176, file: !177, line: 45, baseType: !147, size: 128, offset: 192)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !176, file: !177, line: 46, baseType: !147, size: 128, offset: 320)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !176, file: !177, line: 47, baseType: !252, size: 8, offset: 448)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !166, file: !142, line: 372, baseType: !147, size: 128, offset: 640)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !166, file: !142, line: 373, baseType: !147, size: 128, offset: 768)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !166, file: !142, line: 374, baseType: !1762, size: 32, offset: 896)
!1762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !142, line: 181, size: 32, elements: !1763)
!1763 = !{!1764, !1765, !1766, !1767, !1768, !1769}
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !1762, file: !142, line: 182, baseType: !169, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1762, file: !142, line: 183, baseType: !169, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !1762, file: !142, line: 184, baseType: !169, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !1762, file: !142, line: 185, baseType: !169, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !1762, file: !142, line: 186, baseType: !169, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1762, file: !142, line: 187, baseType: !169, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !166, file: !142, line: 375, baseType: !1771, size: 32, offset: 928)
!1771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !142, line: 192, size: 32, elements: !1772)
!1772 = !{!1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787}
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !1771, file: !142, line: 193, baseType: !169, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1771, file: !142, line: 194, baseType: !169, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !1771, file: !142, line: 195, baseType: !169, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !1771, file: !142, line: 196, baseType: !169, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !1771, file: !142, line: 197, baseType: !169, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !1771, file: !142, line: 198, baseType: !169, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1771, file: !142, line: 199, baseType: !169, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !1771, file: !142, line: 200, baseType: !169, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !1771, file: !142, line: 201, baseType: !169, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !1771, file: !142, line: 202, baseType: !169, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !1771, file: !142, line: 203, baseType: !169, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !1771, file: !142, line: 204, baseType: !169, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !1771, file: !142, line: 205, baseType: !169, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "honor_deps", scope: !1771, file: !142, line: 206, baseType: !169, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1771, file: !142, line: 207, baseType: !169, size: 18, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !166, file: !142, line: 376, baseType: !1789, size: 960, offset: 960)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !142, line: 238, size: 960, elements: !1790)
!1790 = !{!1791, !1794, !1795, !1803, !1805, !1806, !1807, !1812, !1817}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !1789, file: !142, line: 239, baseType: !1792, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !142, line: 220, baseType: !1793)
!1793 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 64, elements: !1475)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "instance_no", scope: !1789, file: !142, line: 240, baseType: !46, size: 32, offset: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1789, file: !142, line: 241, baseType: !1796, size: 32, offset: 96)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !142, line: 230, size: 32, elements: !1797)
!1797 = !{!1798, !1799, !1800, !1801, !1802}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !1796, file: !142, line: 231, baseType: !169, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !1796, file: !142, line: 232, baseType: !169, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !1796, file: !142, line: 233, baseType: !169, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "backlight", scope: !1796, file: !142, line: 234, baseType: !169, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1796, file: !142, line: 235, baseType: !169, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !1789, file: !142, line: 242, baseType: !1804, size: 64, offset: 128)
!1804 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !142, line: 221, baseType: !452)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !1789, file: !142, line: 243, baseType: !290, size: 64, offset: 192)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1789, file: !142, line: 244, baseType: !147, size: 128, offset: 256)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !1789, file: !142, line: 245, baseType: !1808, size: 320, offset: 384)
!1808 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !142, line: 222, baseType: !1809)
!1809 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 320, elements: !1810)
!1810 = !{!1811}
!1811 = !DISubrange(count: 40)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !1789, file: !142, line: 246, baseType: !1813, size: 160, offset: 704)
!1813 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !142, line: 223, baseType: !1814)
!1814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 160, elements: !1815)
!1815 = !{!1816}
!1816 = !DISubrange(count: 20)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !1789, file: !142, line: 247, baseType: !1818, size: 64, offset: 896)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !174, line: 908, size: 192, elements: !1820)
!1820 = !{!1821, !1823, !1828, !1834, !1841, !1847, !1853, !1861}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1819, file: !174, line: 909, baseType: !1822, size: 32)
!1822 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !174, line: 644, baseType: !169)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1819, file: !174, line: 913, baseType: !1824, size: 128)
!1824 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1819, file: !174, line: 910, size: 128, elements: !1825)
!1825 = !{!1826, !1827}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1824, file: !174, line: 911, baseType: !1822, size: 32)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1824, file: !174, line: 912, baseType: !452, size: 64, offset: 64)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1819, file: !174, line: 919, baseType: !1829, size: 128)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1819, file: !174, line: 915, size: 128, elements: !1830)
!1830 = !{!1831, !1832, !1833}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1829, file: !174, line: 916, baseType: !1822, size: 32)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1829, file: !174, line: 917, baseType: !169, size: 32, offset: 32)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1829, file: !174, line: 918, baseType: !290, size: 64, offset: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1819, file: !174, line: 925, baseType: !1835, size: 128)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1819, file: !174, line: 921, size: 128, elements: !1836)
!1836 = !{!1837, !1838, !1839}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1835, file: !174, line: 922, baseType: !1822, size: 32)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1835, file: !174, line: 923, baseType: !169, size: 32, offset: 32)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1835, file: !174, line: 924, baseType: !1840, size: 64, offset: 64)
!1840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !1819, file: !174, line: 931, baseType: !1842, size: 128)
!1842 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1819, file: !174, line: 927, size: 128, elements: !1843)
!1843 = !{!1844, !1845, !1846}
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1842, file: !174, line: 928, baseType: !1822, size: 32)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1842, file: !174, line: 929, baseType: !169, size: 32, offset: 32)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1842, file: !174, line: 930, baseType: !1818, size: 64, offset: 64)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !1819, file: !174, line: 937, baseType: !1848, size: 128)
!1848 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1819, file: !174, line: 933, size: 128, elements: !1849)
!1849 = !{!1850, !1851, !1852}
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1848, file: !174, line: 934, baseType: !1822, size: 32)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !1848, file: !174, line: 935, baseType: !1822, size: 32, offset: 32)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !1848, file: !174, line: 936, baseType: !173, size: 64, offset: 64)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !1819, file: !174, line: 944, baseType: !1854, size: 192)
!1854 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1819, file: !174, line: 939, size: 192, elements: !1855)
!1855 = !{!1856, !1857, !1858, !1860}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1854, file: !174, line: 940, baseType: !1822, size: 32)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !1854, file: !174, line: 941, baseType: !169, size: 32, offset: 32)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !1854, file: !174, line: 942, baseType: !1859, size: 64, offset: 64)
!1859 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !174, line: 128, baseType: !452)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !1854, file: !174, line: 943, baseType: !169, size: 32, offset: 128)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !1819, file: !174, line: 950, baseType: !1862, size: 96)
!1862 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1819, file: !174, line: 946, size: 96, elements: !1863)
!1863 = !{!1864, !1865, !1866}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1862, file: !174, line: 947, baseType: !1822, size: 32)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !1862, file: !174, line: 948, baseType: !169, size: 32, offset: 32)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !1862, file: !174, line: 949, baseType: !169, size: 32, offset: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !166, file: !142, line: 377, baseType: !1868, size: 1408, offset: 1920)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !142, line: 280, size: 1408, elements: !1869)
!1869 = !{!1870, !1871, !1881, !1896}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1868, file: !142, line: 281, baseType: !46, size: 32)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1868, file: !142, line: 282, baseType: !1872, size: 32, offset: 32)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !142, line: 259, size: 32, elements: !1873)
!1873 = !{!1874, !1875, !1876, !1877, !1878, !1879, !1880}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !1872, file: !142, line: 260, baseType: !169, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !1872, file: !142, line: 261, baseType: !169, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !1872, file: !142, line: 262, baseType: !169, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !1872, file: !142, line: 263, baseType: !169, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !1872, file: !142, line: 264, baseType: !169, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !1872, file: !142, line: 265, baseType: !169, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1872, file: !142, line: 266, baseType: !169, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1868, file: !142, line: 283, baseType: !1882, size: 1280, offset: 64)
!1882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1883, size: 1280, elements: !1894)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !142, line: 269, size: 256, elements: !1884)
!1884 = !{!1885, !1891, !1892, !1893}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1883, file: !142, line: 274, baseType: !1886, size: 8)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1883, file: !142, line: 270, size: 8, elements: !1887)
!1887 = !{!1888, !1889, !1890}
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1886, file: !142, line: 271, baseType: !252, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !1886, file: !142, line: 272, baseType: !252, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1886, file: !142, line: 273, baseType: !252, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1883, file: !142, line: 275, baseType: !46, size: 32, offset: 32)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1883, file: !142, line: 276, baseType: !46, size: 32, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !1883, file: !142, line: 277, baseType: !147, size: 128, offset: 128)
!1894 = !{!1895}
!1895 = !DISubrange(count: 5)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "state_for_enumeration", scope: !1868, file: !142, line: 284, baseType: !252, size: 8, offset: 1344)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !166, file: !142, line: 378, baseType: !1898, size: 640, offset: 3328)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !142, line: 330, size: 640, elements: !1899)
!1899 = !{!1900, !1901, !1902, !1903, !1904, !1909, !1918, !1919, !1920}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !1898, file: !142, line: 331, baseType: !173, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !1898, file: !142, line: 332, baseType: !452, size: 64, offset: 64)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !1898, file: !142, line: 333, baseType: !452, size: 64, offset: 128)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !1898, file: !142, line: 334, baseType: !147, size: 128, offset: 192)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1898, file: !142, line: 335, baseType: !1905, size: 8, offset: 320)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !142, line: 320, size: 8, elements: !1906)
!1906 = !{!1907, !1908}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1905, file: !142, line: 321, baseType: !252, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !1905, file: !142, line: 322, baseType: !252, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1898, file: !142, line: 336, baseType: !1910, size: 128, offset: 384)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !142, line: 325, size: 128, elements: !1911)
!1911 = !{!1912, !1917}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1910, file: !142, line: 326, baseType: !1913, size: 64)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{null, !1916}
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1910, file: !142, line: 327, baseType: !861, size: 64, offset: 64)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !1898, file: !142, line: 337, baseType: !1400, size: 64, offset: 512)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !1898, file: !142, line: 338, baseType: !46, size: 32, offset: 576)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !1898, file: !142, line: 339, baseType: !46, size: 32, offset: 608)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !166, file: !142, line: 379, baseType: !1922, size: 192, offset: 3968)
!1922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !142, line: 312, size: 192, elements: !1923)
!1923 = !{!1924, !1925, !1929, !1930}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1922, file: !142, line: 313, baseType: !46, size: 32)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1922, file: !142, line: 314, baseType: !1926, size: 8, offset: 32)
!1926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !142, line: 298, size: 8, elements: !1927)
!1927 = !{!1928}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1926, file: !142, line: 299, baseType: !252, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !1922, file: !142, line: 315, baseType: !46, size: 32, offset: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1922, file: !142, line: 316, baseType: !1931, size: 64, offset: 128)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1932, size: 64)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !142, line: 302, size: 64, elements: !1933)
!1933 = !{!1934, !1939, !1940, !1941}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1932, file: !142, line: 306, baseType: !1935, size: 8)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1932, file: !142, line: 303, size: 8, elements: !1936)
!1936 = !{!1937, !1938}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1935, file: !142, line: 304, baseType: !252, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1935, file: !142, line: 305, baseType: !252, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1932, file: !142, line: 307, baseType: !252, size: 8, offset: 8)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !1932, file: !142, line: 308, baseType: !252, size: 8, offset: 16)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1932, file: !142, line: 309, baseType: !46, size: 32, offset: 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !166, file: !142, line: 380, baseType: !1943, size: 64, offset: 4160)
!1943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !142, line: 212, size: 64, elements: !1944)
!1944 = !{!1945}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1943, file: !142, line: 213, baseType: !1946, size: 64)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !142, line: 86, flags: DIFlagFwdDecl)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !166, file: !142, line: 381, baseType: !1949, size: 384, offset: 4224)
!1949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !142, line: 357, size: 384, elements: !1950)
!1950 = !{!1951, !1954, !1955, !1956}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1949, file: !142, line: 358, baseType: !1952, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1819)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1949, file: !142, line: 359, baseType: !147, size: 128, offset: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !1949, file: !142, line: 360, baseType: !1952, size: 64, offset: 192)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !1949, file: !142, line: 361, baseType: !147, size: 128, offset: 256)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !166, file: !142, line: 382, baseType: !1958, size: 64, offset: 4608)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !166, file: !142, line: 383, baseType: !1960, size: 64, offset: 4672)
!1960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1961, size: 64)
!1961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !142, line: 140, size: 256, elements: !1962)
!1962 = !{!1963, !1964, !1968, !1972}
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !1961, file: !142, line: 141, baseType: !165, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !1961, file: !142, line: 142, baseType: !1965, size: 64, offset: 64)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DISubroutineType(types: !1967)
!1967 = !{!46, !165, !169}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1961, file: !142, line: 143, baseType: !1969, size: 64, offset: 128)
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1970, size: 64)
!1970 = !DISubroutineType(types: !1971)
!1971 = !{null, !165, !169}
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1961, file: !142, line: 144, baseType: !1973, size: 64, offset: 192)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{null, !165}
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !166, file: !142, line: 384, baseType: !1977, size: 64, offset: 4736)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1979)
!1979 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !142, line: 364, flags: DIFlagFwdDecl)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !166, file: !142, line: 385, baseType: !108, size: 64, offset: 4800)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !166, file: !142, line: 386, baseType: !208, size: 5824, offset: 4864)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !166, file: !142, line: 387, baseType: !7, size: 32, offset: 10688)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !166, file: !142, line: 388, baseType: !7, size: 32, offset: 10720)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !166, file: !142, line: 389, baseType: !147, size: 128, offset: 10752)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !166, file: !142, line: 390, baseType: !546, size: 256, offset: 10880)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !166, file: !142, line: 391, baseType: !1973, size: 64, offset: 11136)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !141, file: !142, line: 129, baseType: !1973, size: 64, offset: 320)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !141, file: !142, line: 130, baseType: !883, size: 64, offset: 384)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !141, file: !142, line: 131, baseType: !883, size: 64, offset: 448)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !141, file: !142, line: 132, baseType: !1991, size: 704, offset: 512)
!1991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !142, line: 110, size: 704, elements: !1992)
!1992 = !{!1993, !1994, !1998, !1999, !2000}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1991, file: !142, line: 111, baseType: !211, size: 512)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !1991, file: !142, line: 112, baseType: !1995, size: 64, offset: 512)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!46, !165}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !1991, file: !142, line: 113, baseType: !1973, size: 64, offset: 576)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1991, file: !142, line: 114, baseType: !156, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !1991, file: !142, line: 115, baseType: !156, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!2001 = !{i32 7, !"Dwarf Version", i32 5}
!2002 = !{i32 2, !"Debug Info Version", i32 3}
!2003 = !{i32 1, !"wchar_size", i32 2}
!2004 = !{i32 8, !"cf-protection-branch", i32 1}
!2005 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2006 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2007 = !{i32 1, !"Code Model", i32 2}
!2008 = !{i32 1, !"override-stack-alignment", i32 8}
!2009 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2010 = distinct !DISubprogram(name: "acpi_apd_init", scope: !3, file: !3, line: 258, type: !1310, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2011 = !DILocation(line: 260, column: 2, scope: !2010)
!2012 = !DILocation(line: 261, column: 1, scope: !2010)
!2013 = !DISubprogram(name: "acpi_scan_add_handler", scope: !142, file: !142, line: 563, type: !2014, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2014 = !DISubroutineType(types: !2015)
!2015 = !{!46, !1958}
!2016 = distinct !DISubprogram(name: "acpi_apd_create_device", scope: !3, file: !3, line: 187, type: !163, scopeLine: 189, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2017)
!2017 = !{!2018, !2019, !2020, !2064, !2065, !2104, !2105}
!2018 = !DILocalVariable(name: "adev", arg: 1, scope: !2016, file: !3, line: 187, type: !165)
!2019 = !DILocalVariable(name: "id", arg: 2, scope: !2016, file: !3, line: 188, type: !145)
!2020 = !DILocalVariable(name: "dev_desc", scope: !2016, file: !3, line: 190, type: !2021)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2023)
!2023 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apd_device_desc", file: !3, line: 31, size: 192, elements: !2024)
!2024 = !{!2025, !2026, !2051}
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_clk_rate", scope: !2023, file: !3, line: 32, baseType: !7, size: 32)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2023, file: !3, line: 33, baseType: !2027, size: 64, offset: 64)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property_entry", file: !79, line: 338, size: 256, elements: !2029)
!2029 = !{!2030, !2031, !2032, !2033, !2034}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2028, file: !79, line: 339, baseType: !158, size: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2028, file: !79, line: 340, baseType: !336, size: 64, offset: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "is_inline", scope: !2028, file: !79, line: 341, baseType: !156, size: 8, offset: 128)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2028, file: !79, line: 342, baseType: !84, size: 32, offset: 160)
!2034 = !DIDerivedType(tag: DW_TAG_member, scope: !2028, file: !79, line: 343, baseType: !2035, size: 64, offset: 192)
!2035 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2028, file: !79, line: 343, size: 64, elements: !2036)
!2036 = !{!2037, !2038}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2035, file: !79, line: 344, baseType: !204, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2035, file: !79, line: 351, baseType: !2039, size: 64)
!2039 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2035, file: !79, line: 345, size: 64, elements: !2040)
!2040 = !{!2041, !2043, !2045, !2047, !2049}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "u8_data", scope: !2039, file: !79, line: 346, baseType: !2042, size: 64)
!2042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 64, elements: !1475)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "u16_data", scope: !2039, file: !79, line: 347, baseType: !2044, size: 64)
!2044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 64, elements: !527)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "u32_data", scope: !2039, file: !79, line: 348, baseType: !2046, size: 64)
!2046 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 64, elements: !1089)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "u64_data", scope: !2039, file: !79, line: 349, baseType: !2048, size: 64)
!2048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 64, elements: !133)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2039, file: !79, line: 350, baseType: !2050, size: 64)
!2050 = !DICompositeType(tag: DW_TAG_array_type, baseType: !158, size: 64, elements: !133)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !2023, file: !3, line: 34, baseType: !2052, size: 64, offset: 128)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!46, !2055}
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "apd_private_data", file: !3, line: 37, size: 192, elements: !2057)
!2057 = !{!2058, !2062, !2063}
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !2056, file: !3, line: 38, baseType: !2059, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !2061, line: 14, flags: DIFlagFwdDecl)
!2061 = !DIFile(filename: "./include/linux/clkdev.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18bb8f868f63ffe49098f727b3eca8b2")
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "adev", scope: !2056, file: !3, line: 39, baseType: !165, size: 64, offset: 64)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "dev_desc", scope: !2056, file: !3, line: 40, baseType: !2021, size: 64, offset: 128)
!2064 = !DILocalVariable(name: "pdata", scope: !2016, file: !3, line: 191, type: !2055)
!2065 = !DILocalVariable(name: "pdev", scope: !2016, file: !3, line: 192, type: !2066)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !2068, line: 23, size: 6464, elements: !2069)
!2068 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1dac52bf003d860ac3c23951fd976693")
!2069 = !{!2070, !2071, !2072, !2073, !2074, !2075, !2076, !2077, !2091, !2098, !2099, !2102}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2067, file: !2068, line: 24, baseType: !158, size: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2067, file: !2068, line: 25, baseType: !46, size: 32, offset: 64)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !2067, file: !2068, line: 26, baseType: !156, size: 8, offset: 96)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2067, file: !2068, line: 27, baseType: !208, size: 5824, offset: 128)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !2067, file: !2068, line: 28, baseType: !452, size: 64, offset: 5952)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2067, file: !2068, line: 29, baseType: !1588, size: 128, offset: 6016)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !2067, file: !2068, line: 30, baseType: !169, size: 32, offset: 6144)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !2067, file: !2068, line: 31, baseType: !2078, size: 64, offset: 6208)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !366, line: 21, size: 512, elements: !2080)
!2080 = !{!2081, !2084, !2085, !2086, !2087, !2088, !2089, !2090}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2079, file: !366, line: 22, baseType: !2082, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !110, line: 164, baseType: !2083)
!2083 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !110, line: 159, baseType: !452)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2079, file: !366, line: 23, baseType: !2082, size: 64, offset: 64)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2079, file: !366, line: 24, baseType: !158, size: 64, offset: 128)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2079, file: !366, line: 25, baseType: !111, size: 64, offset: 192)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2079, file: !366, line: 26, baseType: !111, size: 64, offset: 256)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2079, file: !366, line: 27, baseType: !2078, size: 64, offset: 320)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2079, file: !366, line: 27, baseType: !2078, size: 64, offset: 384)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2079, file: !366, line: 27, baseType: !2078, size: 64, offset: 448)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !2067, file: !2068, line: 33, baseType: !2092, size: 64, offset: 6272)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2094)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !119, line: 607, size: 256, elements: !2095)
!2095 = !{!2096, !2097}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2094, file: !119, line: 608, baseType: !1814, size: 160)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2094, file: !119, line: 609, baseType: !129, size: 64, offset: 192)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !2067, file: !2068, line: 38, baseType: !158, size: 64, offset: 6336)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !2067, file: !2068, line: 41, baseType: !2100, size: 64, offset: 6400)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !2068, line: 19, flags: DIFlagFwdDecl)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2067, file: !2068, line: 44, baseType: !2103, offset: 6464)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !1599, line: 8, elements: !425)
!2104 = !DILocalVariable(name: "ret", scope: !2016, file: !3, line: 193, type: !46)
!2105 = !DILabel(scope: !2016, name: "err_out", file: !3, line: 221)
!2106 = !DILocation(line: 187, column: 55, scope: !2016)
!2107 = !DILocation(line: 188, column: 37, scope: !2016)
!2108 = !DILocation(line: 190, column: 2, scope: !2016)
!2109 = !DILocation(line: 190, column: 32, scope: !2016)
!2110 = !DILocation(line: 190, column: 51, scope: !2016)
!2111 = !DILocation(line: 190, column: 55, scope: !2016)
!2112 = !DILocation(line: 190, column: 43, scope: !2016)
!2113 = !DILocation(line: 191, column: 2, scope: !2016)
!2114 = !DILocation(line: 191, column: 27, scope: !2016)
!2115 = !DILocation(line: 192, column: 2, scope: !2016)
!2116 = !DILocation(line: 192, column: 26, scope: !2016)
!2117 = !DILocation(line: 193, column: 2, scope: !2016)
!2118 = !DILocation(line: 193, column: 6, scope: !2016)
!2119 = !DILocation(line: 195, column: 7, scope: !2120)
!2120 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 195, column: 6)
!2121 = !DILocation(line: 195, column: 6, scope: !2016)
!2122 = !DILocation(line: 196, column: 38, scope: !2123)
!2123 = distinct !DILexicalBlock(scope: !2120, file: !3, line: 195, column: 17)
!2124 = !DILocation(line: 196, column: 10, scope: !2123)
!2125 = !DILocation(line: 196, column: 8, scope: !2123)
!2126 = !DILocation(line: 197, column: 25, scope: !2123)
!2127 = !DILocation(line: 197, column: 10, scope: !2123)
!2128 = !DILocation(line: 197, column: 41, scope: !2123)
!2129 = !DILocation(line: 197, column: 33, scope: !2123)
!2130 = !DILocation(line: 197, column: 3, scope: !2123)
!2131 = !DILocation(line: 200, column: 10, scope: !2016)
!2132 = !DILocation(line: 200, column: 8, scope: !2016)
!2133 = !DILocation(line: 201, column: 7, scope: !2134)
!2134 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 201, column: 6)
!2135 = !DILocation(line: 201, column: 6, scope: !2016)
!2136 = !DILocation(line: 202, column: 3, scope: !2134)
!2137 = !DILocation(line: 204, column: 16, scope: !2016)
!2138 = !DILocation(line: 204, column: 2, scope: !2016)
!2139 = !DILocation(line: 204, column: 9, scope: !2016)
!2140 = !DILocation(line: 204, column: 14, scope: !2016)
!2141 = !DILocation(line: 205, column: 20, scope: !2016)
!2142 = !DILocation(line: 205, column: 2, scope: !2016)
!2143 = !DILocation(line: 205, column: 9, scope: !2016)
!2144 = !DILocation(line: 205, column: 18, scope: !2016)
!2145 = !DILocation(line: 207, column: 6, scope: !2146)
!2146 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 207, column: 6)
!2147 = !DILocation(line: 207, column: 16, scope: !2146)
!2148 = !DILocation(line: 207, column: 6, scope: !2016)
!2149 = !DILocation(line: 208, column: 9, scope: !2150)
!2150 = distinct !DILexicalBlock(scope: !2146, file: !3, line: 207, column: 23)
!2151 = !DILocation(line: 208, column: 19, scope: !2150)
!2152 = !DILocation(line: 208, column: 25, scope: !2150)
!2153 = !DILocation(line: 208, column: 7, scope: !2150)
!2154 = !DILocation(line: 209, column: 7, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2150, file: !3, line: 209, column: 7)
!2156 = !DILocation(line: 209, column: 7, scope: !2150)
!2157 = !DILocation(line: 210, column: 4, scope: !2155)
!2158 = !DILocation(line: 211, column: 2, scope: !2150)
!2159 = !DILocation(line: 213, column: 22, scope: !2016)
!2160 = !DILocation(line: 213, column: 2, scope: !2016)
!2161 = !DILocation(line: 213, column: 8, scope: !2016)
!2162 = !DILocation(line: 213, column: 20, scope: !2016)
!2163 = !DILocation(line: 214, column: 37, scope: !2016)
!2164 = !DILocation(line: 214, column: 43, scope: !2016)
!2165 = !DILocation(line: 214, column: 53, scope: !2016)
!2166 = !DILocation(line: 214, column: 9, scope: !2016)
!2167 = !DILocation(line: 214, column: 7, scope: !2016)
!2168 = !DILocation(line: 215, column: 22, scope: !2169)
!2169 = distinct !DILexicalBlock(scope: !2016, file: !3, line: 215, column: 6)
!2170 = !DILocation(line: 215, column: 7, scope: !2169)
!2171 = !DILocation(line: 215, column: 6, scope: !2016)
!2172 = !DILocation(line: 216, column: 3, scope: !2169)
!2173 = !DILocation(line: 218, column: 16, scope: !2016)
!2174 = !DILocation(line: 218, column: 8, scope: !2016)
!2175 = !DILocation(line: 218, column: 6, scope: !2016)
!2176 = !DILocation(line: 219, column: 2, scope: !2016)
!2177 = !DILocation(line: 219, column: 8, scope: !2016)
!2178 = !DILocation(line: 219, column: 20, scope: !2016)
!2179 = !DILocation(line: 221, column: 2, scope: !2016)
!2180 = !DILocation(line: 222, column: 8, scope: !2016)
!2181 = !DILocation(line: 222, column: 2, scope: !2016)
!2182 = !DILocation(line: 223, column: 9, scope: !2016)
!2183 = !DILocation(line: 223, column: 2, scope: !2016)
!2184 = !DILocation(line: 224, column: 1, scope: !2016)
!2185 = !DISubprogram(name: "acpi_create_platform_device", scope: !2186, file: !2186, line: 720, type: !2187, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2186 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "087557429ebf4c5c9ef14f260264aa7b")
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!2066, !165, !2189}
!2189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2190, size: 64)
!2190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2028)
!2191 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !2192, file: !2192, line: 70, type: !2193, scopeLine: 71, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2195)
!2192 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!156, !204}
!2195 = !{!2196}
!2196 = !DILocalVariable(name: "ptr", arg: 1, scope: !2191, file: !2192, line: 70, type: !204)
!2197 = !DILocation(line: 70, column: 68, scope: !2191)
!2198 = !DILocation(line: 72, column: 9, scope: !2191)
!2199 = !DILocation(line: 72, column: 24, scope: !2191)
!2200 = !DILocation(line: 72, column: 27, scope: !2191)
!2201 = !DILocation(line: 72, column: 2, scope: !2191)
!2202 = distinct !DISubprogram(name: "PTR_ERR", scope: !2192, file: !2192, line: 49, type: !2203, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2205)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!112, !204}
!2205 = !{!2206}
!2206 = !DILocalVariable(name: "ptr", arg: 1, scope: !2202, file: !2192, line: 49, type: !204)
!2207 = !DILocation(line: 49, column: 61, scope: !2202)
!2208 = !DILocation(line: 51, column: 16, scope: !2202)
!2209 = !DILocation(line: 51, column: 9, scope: !2202)
!2210 = !DILocation(line: 51, column: 2, scope: !2202)
!2211 = distinct !DISubprogram(name: "kzalloc", scope: !98, file: !98, line: 719, type: !2212, scopeLine: 720, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2214)
!2212 = !DISubroutineType(types: !2213)
!2213 = !{!108, !336, !109}
!2214 = !{!2215, !2216}
!2215 = !DILocalVariable(name: "size", arg: 1, scope: !2211, file: !98, line: 719, type: !336)
!2216 = !DILocalVariable(name: "flags", arg: 2, scope: !2211, file: !98, line: 719, type: !109)
!2217 = !DILocation(line: 719, column: 52, scope: !2211)
!2218 = !DILocation(line: 719, column: 64, scope: !2211)
!2219 = !DILocation(line: 721, column: 17, scope: !2211)
!2220 = !DILocation(line: 721, column: 23, scope: !2211)
!2221 = !DILocation(line: 721, column: 29, scope: !2211)
!2222 = !DILocation(line: 721, column: 9, scope: !2211)
!2223 = !DILocation(line: 721, column: 2, scope: !2211)
!2224 = !DISubprogram(name: "kfree", scope: !98, file: !98, line: 227, type: !2225, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{null, !204}
!2227 = distinct !DISubprogram(name: "kmalloc", scope: !98, file: !98, line: 591, type: !2212, scopeLine: 592, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2228)
!2228 = !{!2229, !2230, !2231}
!2229 = !DILocalVariable(name: "size", arg: 1, scope: !2227, file: !98, line: 591, type: !336)
!2230 = !DILocalVariable(name: "flags", arg: 2, scope: !2227, file: !98, line: 591, type: !109)
!2231 = !DILocalVariable(name: "index", scope: !2232, file: !98, line: 594, type: !7)
!2232 = distinct !DILexicalBlock(scope: !2233, file: !98, line: 593, column: 42)
!2233 = distinct !DILexicalBlock(scope: !2227, file: !98, line: 593, column: 6)
!2234 = !DILocation(line: 591, column: 61, scope: !2227)
!2235 = !DILocation(line: 591, column: 73, scope: !2227)
!2236 = !DILocation(line: 593, column: 27, scope: !2233)
!2237 = !DILocation(line: 593, column: 6, scope: !2233)
!2238 = !DILocation(line: 593, column: 33, scope: !2233)
!2239 = !DILocation(line: 593, column: 36, scope: !2233)
!2240 = !DILocation(line: 593, column: 6, scope: !2227)
!2241 = !DILocation(line: 594, column: 3, scope: !2232)
!2242 = !DILocation(line: 594, column: 16, scope: !2232)
!2243 = !DILocation(line: 596, column: 7, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2232, file: !98, line: 596, column: 7)
!2245 = !DILocation(line: 596, column: 12, scope: !2244)
!2246 = !DILocation(line: 596, column: 7, scope: !2232)
!2247 = !DILocation(line: 597, column: 25, scope: !2244)
!2248 = !DILocation(line: 597, column: 31, scope: !2244)
!2249 = !DILocation(line: 597, column: 11, scope: !2244)
!2250 = !DILocation(line: 597, column: 4, scope: !2244)
!2251 = !DILocation(line: 599, column: 11, scope: !2232)
!2252 = !DILocation(line: 599, column: 9, scope: !2232)
!2253 = !DILocation(line: 601, column: 33, scope: !2232)
!2254 = !DILocation(line: 601, column: 40, scope: !2232)
!2255 = !DILocation(line: 601, column: 20, scope: !2232)
!2256 = !DILocation(line: 601, column: 5, scope: !2232)
!2257 = !DILocation(line: 601, column: 51, scope: !2232)
!2258 = !DILocation(line: 602, column: 5, scope: !2232)
!2259 = !DILocation(line: 602, column: 12, scope: !2232)
!2260 = !DILocation(line: 600, column: 10, scope: !2232)
!2261 = !DILocation(line: 600, column: 3, scope: !2232)
!2262 = !DILocation(line: 603, column: 2, scope: !2233)
!2263 = !DILocation(line: 604, column: 19, scope: !2227)
!2264 = !DILocation(line: 604, column: 25, scope: !2227)
!2265 = !DILocation(line: 604, column: 9, scope: !2227)
!2266 = !DILocation(line: 604, column: 2, scope: !2227)
!2267 = !DILocation(line: 605, column: 1, scope: !2227)
!2268 = !DISubprogram(name: "kmalloc_large", scope: !98, file: !98, line: 531, type: !2212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2269 = distinct !DISubprogram(name: "__kmalloc_index", scope: !98, file: !98, line: 444, type: !2270, scopeLine: 446, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2272)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{!7, !336, !156}
!2272 = !{!2273, !2274}
!2273 = !DILocalVariable(name: "size", arg: 1, scope: !2269, file: !98, line: 444, type: !336)
!2274 = !DILocalVariable(name: "size_is_constant", arg: 2, scope: !2269, file: !98, line: 445, type: !156)
!2275 = !DILocation(line: 444, column: 60, scope: !2269)
!2276 = !DILocation(line: 445, column: 16, scope: !2269)
!2277 = !DILocation(line: 447, column: 7, scope: !2278)
!2278 = distinct !DILexicalBlock(scope: !2269, file: !98, line: 447, column: 6)
!2279 = !DILocation(line: 447, column: 6, scope: !2269)
!2280 = !DILocation(line: 448, column: 3, scope: !2278)
!2281 = !DILocation(line: 450, column: 6, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2269, file: !98, line: 450, column: 6)
!2283 = !DILocation(line: 450, column: 11, scope: !2282)
!2284 = !DILocation(line: 450, column: 6, scope: !2269)
!2285 = !DILocation(line: 451, column: 3, scope: !2282)
!2286 = !DILocation(line: 453, column: 32, scope: !2287)
!2287 = distinct !DILexicalBlock(scope: !2269, file: !98, line: 453, column: 6)
!2288 = !DILocation(line: 453, column: 37, scope: !2287)
!2289 = !DILocation(line: 453, column: 42, scope: !2287)
!2290 = !DILocation(line: 453, column: 45, scope: !2287)
!2291 = !DILocation(line: 453, column: 50, scope: !2287)
!2292 = !DILocation(line: 453, column: 6, scope: !2269)
!2293 = !DILocation(line: 454, column: 3, scope: !2287)
!2294 = !DILocation(line: 455, column: 32, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2269, file: !98, line: 455, column: 6)
!2296 = !DILocation(line: 455, column: 37, scope: !2295)
!2297 = !DILocation(line: 455, column: 43, scope: !2295)
!2298 = !DILocation(line: 455, column: 46, scope: !2295)
!2299 = !DILocation(line: 455, column: 51, scope: !2295)
!2300 = !DILocation(line: 455, column: 6, scope: !2269)
!2301 = !DILocation(line: 456, column: 3, scope: !2295)
!2302 = !DILocation(line: 457, column: 6, scope: !2303)
!2303 = distinct !DILexicalBlock(scope: !2269, file: !98, line: 457, column: 6)
!2304 = !DILocation(line: 457, column: 11, scope: !2303)
!2305 = !DILocation(line: 457, column: 6, scope: !2269)
!2306 = !DILocation(line: 457, column: 26, scope: !2303)
!2307 = !DILocation(line: 458, column: 6, scope: !2308)
!2308 = distinct !DILexicalBlock(scope: !2269, file: !98, line: 458, column: 6)
!2309 = !DILocation(line: 458, column: 11, scope: !2308)
!2310 = !DILocation(line: 458, column: 6, scope: !2269)
!2311 = !DILocation(line: 458, column: 26, scope: !2308)
!2312 = !DILocation(line: 459, column: 6, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2269, file: !98, line: 459, column: 6)
!2314 = !DILocation(line: 459, column: 11, scope: !2313)
!2315 = !DILocation(line: 459, column: 6, scope: !2269)
!2316 = !DILocation(line: 459, column: 26, scope: !2313)
!2317 = !DILocation(line: 460, column: 6, scope: !2318)
!2318 = distinct !DILexicalBlock(scope: !2269, file: !98, line: 460, column: 6)
!2319 = !DILocation(line: 460, column: 11, scope: !2318)
!2320 = !DILocation(line: 460, column: 6, scope: !2269)
!2321 = !DILocation(line: 460, column: 26, scope: !2318)
!2322 = !DILocation(line: 461, column: 6, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2269, file: !98, line: 461, column: 6)
!2324 = !DILocation(line: 461, column: 11, scope: !2323)
!2325 = !DILocation(line: 461, column: 6, scope: !2269)
!2326 = !DILocation(line: 461, column: 26, scope: !2323)
!2327 = !DILocation(line: 462, column: 6, scope: !2328)
!2328 = distinct !DILexicalBlock(scope: !2269, file: !98, line: 462, column: 6)
!2329 = !DILocation(line: 462, column: 11, scope: !2328)
!2330 = !DILocation(line: 462, column: 6, scope: !2269)
!2331 = !DILocation(line: 462, column: 26, scope: !2328)
!2332 = !DILocation(line: 463, column: 6, scope: !2333)
!2333 = distinct !DILexicalBlock(scope: !2269, file: !98, line: 463, column: 6)
!2334 = !DILocation(line: 463, column: 11, scope: !2333)
!2335 = !DILocation(line: 463, column: 6, scope: !2269)
!2336 = !DILocation(line: 463, column: 26, scope: !2333)
!2337 = !DILocation(line: 464, column: 6, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2269, file: !98, line: 464, column: 6)
!2339 = !DILocation(line: 464, column: 11, scope: !2338)
!2340 = !DILocation(line: 464, column: 6, scope: !2269)
!2341 = !DILocation(line: 464, column: 26, scope: !2338)
!2342 = !DILocation(line: 465, column: 6, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2269, file: !98, line: 465, column: 6)
!2344 = !DILocation(line: 465, column: 11, scope: !2343)
!2345 = !DILocation(line: 465, column: 6, scope: !2269)
!2346 = !DILocation(line: 465, column: 26, scope: !2343)
!2347 = !DILocation(line: 466, column: 6, scope: !2348)
!2348 = distinct !DILexicalBlock(scope: !2269, file: !98, line: 466, column: 6)
!2349 = !DILocation(line: 466, column: 11, scope: !2348)
!2350 = !DILocation(line: 466, column: 6, scope: !2269)
!2351 = !DILocation(line: 466, column: 26, scope: !2348)
!2352 = !DILocation(line: 467, column: 6, scope: !2353)
!2353 = distinct !DILexicalBlock(scope: !2269, file: !98, line: 467, column: 6)
!2354 = !DILocation(line: 467, column: 11, scope: !2353)
!2355 = !DILocation(line: 467, column: 6, scope: !2269)
!2356 = !DILocation(line: 467, column: 26, scope: !2353)
!2357 = !DILocation(line: 468, column: 6, scope: !2358)
!2358 = distinct !DILexicalBlock(scope: !2269, file: !98, line: 468, column: 6)
!2359 = !DILocation(line: 468, column: 11, scope: !2358)
!2360 = !DILocation(line: 468, column: 6, scope: !2269)
!2361 = !DILocation(line: 468, column: 26, scope: !2358)
!2362 = !DILocation(line: 469, column: 6, scope: !2363)
!2363 = distinct !DILexicalBlock(scope: !2269, file: !98, line: 469, column: 6)
!2364 = !DILocation(line: 469, column: 11, scope: !2363)
!2365 = !DILocation(line: 469, column: 6, scope: !2269)
!2366 = !DILocation(line: 469, column: 26, scope: !2363)
!2367 = !DILocation(line: 470, column: 6, scope: !2368)
!2368 = distinct !DILexicalBlock(scope: !2269, file: !98, line: 470, column: 6)
!2369 = !DILocation(line: 470, column: 11, scope: !2368)
!2370 = !DILocation(line: 470, column: 6, scope: !2269)
!2371 = !DILocation(line: 470, column: 26, scope: !2368)
!2372 = !DILocation(line: 471, column: 6, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2269, file: !98, line: 471, column: 6)
!2374 = !DILocation(line: 471, column: 11, scope: !2373)
!2375 = !DILocation(line: 471, column: 6, scope: !2269)
!2376 = !DILocation(line: 471, column: 26, scope: !2373)
!2377 = !DILocation(line: 472, column: 6, scope: !2378)
!2378 = distinct !DILexicalBlock(scope: !2269, file: !98, line: 472, column: 6)
!2379 = !DILocation(line: 472, column: 11, scope: !2378)
!2380 = !DILocation(line: 472, column: 6, scope: !2269)
!2381 = !DILocation(line: 472, column: 26, scope: !2378)
!2382 = !DILocation(line: 473, column: 6, scope: !2383)
!2383 = distinct !DILexicalBlock(scope: !2269, file: !98, line: 473, column: 6)
!2384 = !DILocation(line: 473, column: 11, scope: !2383)
!2385 = !DILocation(line: 473, column: 6, scope: !2269)
!2386 = !DILocation(line: 473, column: 26, scope: !2383)
!2387 = !DILocation(line: 474, column: 6, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2269, file: !98, line: 474, column: 6)
!2389 = !DILocation(line: 474, column: 11, scope: !2388)
!2390 = !DILocation(line: 474, column: 6, scope: !2269)
!2391 = !DILocation(line: 474, column: 27, scope: !2388)
!2392 = !DILocation(line: 475, column: 6, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2269, file: !98, line: 475, column: 6)
!2394 = !DILocation(line: 475, column: 11, scope: !2393)
!2395 = !DILocation(line: 475, column: 6, scope: !2269)
!2396 = !DILocation(line: 475, column: 32, scope: !2393)
!2397 = !DILocation(line: 477, column: 50, scope: !2398)
!2398 = distinct !DILexicalBlock(scope: !2269, file: !98, line: 477, column: 6)
!2399 = !{i8 0, i8 2}
!2400 = !DILocation(line: 477, column: 6, scope: !2269)
!2401 = !DILocation(line: 478, column: 3, scope: !2398)
!2402 = !DILocation(line: 478, column: 3, scope: !2403)
!2403 = distinct !DILexicalBlock(scope: !2404, file: !98, line: 478, column: 3)
!2404 = distinct !DILexicalBlock(scope: !2398, file: !98, line: 478, column: 3)
!2405 = !{i32 -2143463277}
!2406 = !DILocation(line: 478, column: 3, scope: !2404)
!2407 = !DILocation(line: 480, column: 3, scope: !2398)
!2408 = !DILocation(line: 480, column: 3, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2398, file: !98, line: 480, column: 3)
!2410 = !DILocation(line: 480, column: 3, scope: !2411)
!2411 = distinct !DILexicalBlock(scope: !2409, file: !98, line: 480, column: 3)
!2412 = !DILocation(line: 480, column: 3, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2409, file: !98, line: 480, column: 3)
!2414 = !{i64 2151504222, i64 2151504251, i64 2151504297, i64 2151504355, i64 2151504409, i64 2151504463, i64 2151504518, i64 2151504549}
!2415 = !DILocation(line: 483, column: 2, scope: !2269)
!2416 = !DILocation(line: 484, column: 1, scope: !2269)
!2417 = !DISubprogram(name: "kmalloc_trace", scope: !98, file: !98, line: 525, type: !2418, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!108, !2420, !109, !336}
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !2422, line: 11, flags: DIFlagFwdDecl)
!2422 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "cfd17a8f972a389fe48e5a8cb8370b12")
!2423 = distinct !DISubprogram(name: "kmalloc_type", scope: !98, file: !98, line: 401, type: !2424, scopeLine: 402, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2426)
!2424 = !DISubroutineType(types: !2425)
!2425 = !{!97, !109, !111}
!2426 = !{!2427, !2428}
!2427 = !DILocalVariable(name: "flags", arg: 1, scope: !2423, file: !98, line: 401, type: !109)
!2428 = !DILocalVariable(name: "caller", arg: 2, scope: !2423, file: !98, line: 401, type: !111)
!2429 = !DILocation(line: 401, column: 67, scope: !2423)
!2430 = !DILocation(line: 401, column: 88, scope: !2423)
!2431 = !DILocation(line: 407, column: 6, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2423, file: !98, line: 407, column: 6)
!2433 = !DILocation(line: 407, column: 6, scope: !2423)
!2434 = !DILocation(line: 413, column: 3, scope: !2432)
!2435 = !DILocation(line: 423, column: 38, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2423, file: !98, line: 423, column: 6)
!2437 = !DILocation(line: 423, column: 44, scope: !2436)
!2438 = !DILocation(line: 423, column: 6, scope: !2423)
!2439 = !DILocation(line: 424, column: 3, scope: !2436)
!2440 = !DILocation(line: 426, column: 3, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2423, file: !98, line: 425, column: 6)
!2442 = !DILocation(line: 429, column: 1, scope: !2423)
!2443 = !DISubprogram(name: "__kmalloc", scope: !98, file: !98, line: 488, type: !2212, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2444 = !DISubprogram(name: "__compiletime_assert_125", scope: !98, file: !98, line: 478, type: !1310, flags: DIFlagPrototyped | DIFlagNoReturn, spFlags: DISPFlagOptimized)
