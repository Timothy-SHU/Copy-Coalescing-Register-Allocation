; ModuleID = 'drivers/acpi/evged.c'
source_filename = "drivers/acpi/evged.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_acpi__206_196_ged_driver_init\22, \22a\22\09\09"
module asm "__initcall__kmod_acpi__206_196_ged_driver_init6:\09\09\09"
module asm ".long\09__initstub__kmod_acpi__206_196_ged_driver_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_device_id = type { [16 x i8], i64, i32, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.pdev_archdata = type {}
%struct.acpi_ged_device = type { ptr, %struct.list_head }
%struct.acpi_ged_event = type { %struct.list_head, ptr, i32, i32, ptr }
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
%struct.resource = type { i64, i64, ptr, i64, i64, ptr, ptr, ptr }
%struct.acpi_resource = type { i32, i32, %union.acpi_resource_data }
%union.acpi_resource_data = type { %struct.acpi_resource_vendor, [58 x i8] }
%struct.acpi_resource_vendor = type { i16, [0 x i8] }
%struct.acpi_resource_irq = type { i8, i8, i8, i8, i8, i8, %union.anon.4 }
%union.anon.4 = type { i8 }
%struct.anon.5 = type { %struct.anon.6, [0 x i8] }
%struct.anon.6 = type {}
%struct.acpi_resource_extended_irq = type <{ i8, i8, i8, i8, i8, i8, %struct.acpi_resource_source, %union.anon.10 }>
%struct.acpi_resource_source = type <{ i8, i16, ptr }>
%union.anon.10 = type { i32 }
%struct.anon.11 = type { %struct.anon.12, [0 x i32] }
%struct.anon.12 = type {}

@__UNIQUE_ID___addressable___initstub__kmod_acpi__206_196_ged_driver_init6207 = internal global ptr @__initstub__kmod_acpi__206_196_ged_driver_init6, section ".discard.addressable", align 8, !dbg !0
@ged_driver = internal global %struct.platform_driver { ptr @ged_probe, ptr @ged_remove, ptr null, ptr @ged_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr @ged_acpi_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0, i8 0 }, align 8, !dbg !1980
@.str = private unnamed_addr constant [9 x i8] c"acpi-ged\00", align 1, !dbg !1975
@ged_acpi_ids = internal constant [2 x %struct.acpi_device_id] [%struct.acpi_device_id { [16 x i8] c"ACPI0013\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 16, !dbg !2087
@.str.1 = private unnamed_addr constant [5 x i8] c"_CRS\00", align 1, !dbg !2042
@.str.2 = private unnamed_addr constant [33 x i8] c"unable to parse the _CRS record\0A\00", align 1, !dbg !2045
@.str.3 = private unnamed_addr constant [30 x i8] c"unable to parse IRQ resource\0A\00", align 1, !dbg !2050
@.str.4 = private unnamed_addr constant [8 x i8] c"_%c%02X\00", align 1, !dbg !2055
@.str.5 = private unnamed_addr constant [5 x i8] c"_EVT\00", align 1, !dbg !2057
@.str.6 = private unnamed_addr constant [27 x i8] c"cannot locate _EVT method\0A\00", align 1, !dbg !2059
@.str.7 = private unnamed_addr constant [9 x i8] c"ACPI:Ged\00", align 1, !dbg !2064
@.str.8 = private unnamed_addr constant [42 x i8] c"failed to setup event handler for irq %u\0A\00", align 1, !dbg !2066
@acpi_ged_irq_handler.__print_once = internal global i8 0, section ".data..read_mostly", align 1, !dbg !2071
@.str.9 = private unnamed_addr constant [29 x i8] c"IRQ method execution failed\0A\00", align 1, !dbg !2082
@llvm.compiler.used = appending global [1 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_acpi__206_196_ged_driver_init6207], section "llvm.metadata"

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_acpi__206_196_ged_driver_init6() #0 section ".init.text" align 16 !dbg !2099 {
entry:
  %call = call i32 @ged_driver_init() #8, !dbg !2100
  ret i32 %call, !dbg !2100
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @ged_driver_init() #0 section ".init.text" align 16 !dbg !2101 {
entry:
  %call = call i32 @__platform_driver_register(ptr noundef @ged_driver, ptr noundef null) #9, !dbg !2102
  ret i32 %call, !dbg !2102
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2103 dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ged_probe(ptr noundef %pdev) #2 align 16 !dbg !2107 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca ptr, align 8
  %geddev = alloca ptr, align 8
  %acpi_ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %__to_acpi_device_node_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp5 = alloca ptr, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !2109, metadata !DIExpression()), !dbg !2121
  call void @llvm.lifetime.start.p0(i64 8, ptr %geddev) #10, !dbg !2122
  call void @llvm.dbg.declare(metadata ptr %geddev, metadata !2110, metadata !DIExpression()), !dbg !2123
  call void @llvm.lifetime.start.p0(i64 4, ptr %acpi_ret) #10, !dbg !2124
  call void @llvm.dbg.declare(metadata ptr %acpi_ret, metadata !2116, metadata !DIExpression()), !dbg !2125
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !2126
  %dev = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, !dbg !2127
  %call = call ptr @devm_kzalloc(ptr noundef %dev, i64 noundef 24, i32 noundef 3264) #9, !dbg !2128
  store ptr %call, ptr %geddev, align 8, !dbg !2129
  %1 = load ptr, ptr %geddev, align 8, !dbg !2130
  %tobool = icmp ne ptr %1, null, !dbg !2130
  br i1 %tobool, label %if.end, label %if.then, !dbg !2132

if.then:                                          ; preds = %entry
  store i32 -12, ptr %retval, align 4, !dbg !2133
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2133

if.end:                                           ; preds = %entry
  %2 = load ptr, ptr %pdev.addr, align 8, !dbg !2134
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %2, i32 0, i32 3, !dbg !2135
  %3 = load ptr, ptr %geddev, align 8, !dbg !2136
  %dev2 = getelementptr inbounds %struct.acpi_ged_device, ptr %3, i32 0, i32 0, !dbg !2137
  store ptr %dev1, ptr %dev2, align 8, !dbg !2138
  %4 = load ptr, ptr %geddev, align 8, !dbg !2139
  %event_list = getelementptr inbounds %struct.acpi_ged_device, ptr %4, i32 0, i32 1, !dbg !2140
  call void @INIT_LIST_HEAD(ptr noundef %event_list) #9, !dbg !2141
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #10, !dbg !2142
  call void @llvm.dbg.declare(metadata ptr %__to_acpi_device_node_fwnode, metadata !2117, metadata !DIExpression()), !dbg !2142
  %5 = load ptr, ptr %pdev.addr, align 8, !dbg !2142
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, !dbg !2142
  %fwnode = getelementptr inbounds %struct.device, ptr %dev3, i32 0, i32 24, !dbg !2142
  %6 = load ptr, ptr %fwnode, align 8, !dbg !2142
  store ptr %6, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !2142
  %7 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !2142
  %call4 = call zeroext i1 @is_acpi_device_node(ptr noundef %7) #9, !dbg !2142
  br i1 %call4, label %cond.true, label %cond.false, !dbg !2142

cond.true:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !2143
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2119, metadata !DIExpression()), !dbg !2143
  %8 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !2143
  store ptr %8, ptr %__mptr, align 8, !dbg !2143
  %9 = load ptr, ptr %__mptr, align 8, !dbg !2143
  %add.ptr = getelementptr i8, ptr %9, i64 -16, !dbg !2143
  store ptr %add.ptr, ptr %tmp5, align 8, !dbg !2143
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !2142
  %10 = load ptr, ptr %tmp5, align 8, !dbg !2143
  br label %cond.end, !dbg !2142

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !2142

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %10, %cond.true ], [ null, %cond.false ], !dbg !2142
  store ptr %cond, ptr %tmp, align 8, !dbg !2142
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #10, !dbg !2144
  %11 = load ptr, ptr %tmp, align 8, !dbg !2142
  %call6 = call ptr @acpi_device_handle(ptr noundef %11) #9, !dbg !2144
  %12 = load ptr, ptr %geddev, align 8, !dbg !2145
  %call7 = call i32 @acpi_walk_resources(ptr noundef %call6, ptr noundef @.str.1, ptr noundef @acpi_ged_request_interrupt, ptr noundef %12) #9, !dbg !2146
  store i32 %call7, ptr %acpi_ret, align 4, !dbg !2147
  %13 = load i32, ptr %acpi_ret, align 4, !dbg !2148
  %tobool8 = icmp ne i32 %13, 0, !dbg !2148
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !2150

if.then9:                                         ; preds = %cond.end
  br label %do.body, !dbg !2151

do.body:                                          ; preds = %if.then9
  br label %do.cond, !dbg !2154

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2154

do.end:                                           ; preds = %do.cond
  %14 = load ptr, ptr %pdev.addr, align 8, !dbg !2151
  %dev10 = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3, !dbg !2151
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef @.str.2) #8, !dbg !2151
  store i32 -22, ptr %retval, align 4, !dbg !2156
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2156

if.end11:                                         ; preds = %cond.end
  %15 = load ptr, ptr %pdev.addr, align 8, !dbg !2157
  %16 = load ptr, ptr %geddev, align 8, !dbg !2158
  call void @platform_set_drvdata(ptr noundef %15, ptr noundef %16) #9, !dbg !2159
  store i32 0, ptr %retval, align 4, !dbg !2160
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2160

cleanup:                                          ; preds = %if.end11, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %acpi_ret) #10, !dbg !2161
  call void @llvm.lifetime.end.p0(i64 8, ptr %geddev) #10, !dbg !2161
  %17 = load i32, ptr %retval, align 4, !dbg !2161
  ret i32 %17, !dbg !2161
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @ged_remove(ptr noundef %pdev) #2 align 16 !dbg !2162 {
entry:
  %pdev.addr = alloca ptr, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !2164, metadata !DIExpression()), !dbg !2165
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !2166
  call void @ged_shutdown(ptr noundef %0) #9, !dbg !2167
  ret i32 0, !dbg !2168
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal void @ged_shutdown(ptr noundef %pdev) #2 align 16 !dbg !2169 {
entry:
  %pdev.addr = alloca ptr, align 8
  %geddev = alloca ptr, align 8
  %event = alloca ptr, align 8
  %next = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr2 = alloca ptr, align 8
  %tmp4 = alloca ptr, align 8
  %__mptr10 = alloca ptr, align 8
  %tmp13 = alloca ptr, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !2171, metadata !DIExpression()), !dbg !2183
  call void @llvm.lifetime.start.p0(i64 8, ptr %geddev) #10, !dbg !2184
  call void @llvm.dbg.declare(metadata ptr %geddev, metadata !2172, metadata !DIExpression()), !dbg !2185
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !2186
  %call = call ptr @platform_get_drvdata(ptr noundef %0) #9, !dbg !2187
  store ptr %call, ptr %geddev, align 8, !dbg !2185
  call void @llvm.lifetime.start.p0(i64 8, ptr %event) #10, !dbg !2188
  call void @llvm.dbg.declare(metadata ptr %event, metadata !2173, metadata !DIExpression()), !dbg !2189
  call void @llvm.lifetime.start.p0(i64 8, ptr %next) #10, !dbg !2188
  call void @llvm.dbg.declare(metadata ptr %next, metadata !2174, metadata !DIExpression()), !dbg !2190
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !2191
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2175, metadata !DIExpression()), !dbg !2191
  %1 = load ptr, ptr %geddev, align 8, !dbg !2191
  %event_list = getelementptr inbounds %struct.acpi_ged_device, ptr %1, i32 0, i32 1, !dbg !2191
  %next1 = getelementptr inbounds %struct.list_head, ptr %event_list, i32 0, i32 0, !dbg !2191
  %2 = load ptr, ptr %next1, align 8, !dbg !2191
  store ptr %2, ptr %__mptr, align 8, !dbg !2191
  %3 = load ptr, ptr %__mptr, align 8, !dbg !2191
  %add.ptr = getelementptr i8, ptr %3, i64 0, !dbg !2191
  store ptr %add.ptr, ptr %tmp, align 8, !dbg !2191
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !2192
  %4 = load ptr, ptr %tmp, align 8, !dbg !2191
  store ptr %4, ptr %event, align 8, !dbg !2192
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr2) #10, !dbg !2193
  call void @llvm.dbg.declare(metadata ptr %__mptr2, metadata !2178, metadata !DIExpression()), !dbg !2193
  %5 = load ptr, ptr %event, align 8, !dbg !2193
  %node = getelementptr inbounds %struct.acpi_ged_event, ptr %5, i32 0, i32 0, !dbg !2193
  %next3 = getelementptr inbounds %struct.list_head, ptr %node, i32 0, i32 0, !dbg !2193
  %6 = load ptr, ptr %next3, align 8, !dbg !2193
  store ptr %6, ptr %__mptr2, align 8, !dbg !2193
  %7 = load ptr, ptr %__mptr2, align 8, !dbg !2193
  %add.ptr5 = getelementptr i8, ptr %7, i64 0, !dbg !2193
  store ptr %add.ptr5, ptr %tmp4, align 8, !dbg !2193
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr2) #10, !dbg !2192
  %8 = load ptr, ptr %tmp4, align 8, !dbg !2193
  store ptr %8, ptr %next, align 8, !dbg !2192
  br label %for.cond, !dbg !2192

for.cond:                                         ; preds = %for.inc, %entry
  %9 = load ptr, ptr %event, align 8, !dbg !2194
  %node6 = getelementptr inbounds %struct.acpi_ged_event, ptr %9, i32 0, i32 0, !dbg !2194
  %10 = load ptr, ptr %geddev, align 8, !dbg !2194
  %event_list7 = getelementptr inbounds %struct.acpi_ged_device, ptr %10, i32 0, i32 1, !dbg !2194
  %cmp = icmp eq ptr %node6, %event_list7, !dbg !2194
  %lnot = xor i1 %cmp, true, !dbg !2194
  br i1 %lnot, label %for.body, label %for.end, !dbg !2192

for.body:                                         ; preds = %for.cond
  %11 = load ptr, ptr %event, align 8, !dbg !2195
  %irq = getelementptr inbounds %struct.acpi_ged_event, ptr %11, i32 0, i32 3, !dbg !2197
  %12 = load i32, ptr %irq, align 4, !dbg !2197
  %13 = load ptr, ptr %event, align 8, !dbg !2198
  %call8 = call ptr @free_irq(i32 noundef %12, ptr noundef %13) #9, !dbg !2199
  %14 = load ptr, ptr %event, align 8, !dbg !2200
  %node9 = getelementptr inbounds %struct.acpi_ged_event, ptr %14, i32 0, i32 0, !dbg !2201
  call void @list_del(ptr noundef %node9) #9, !dbg !2202
  br label %for.inc, !dbg !2203

for.inc:                                          ; preds = %for.body
  %15 = load ptr, ptr %next, align 8, !dbg !2194
  store ptr %15, ptr %event, align 8, !dbg !2194
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr10) #10, !dbg !2204
  call void @llvm.dbg.declare(metadata ptr %__mptr10, metadata !2180, metadata !DIExpression()), !dbg !2204
  %16 = load ptr, ptr %next, align 8, !dbg !2204
  %node11 = getelementptr inbounds %struct.acpi_ged_event, ptr %16, i32 0, i32 0, !dbg !2204
  %next12 = getelementptr inbounds %struct.list_head, ptr %node11, i32 0, i32 0, !dbg !2204
  %17 = load ptr, ptr %next12, align 8, !dbg !2204
  store ptr %17, ptr %__mptr10, align 8, !dbg !2204
  %18 = load ptr, ptr %__mptr10, align 8, !dbg !2204
  %add.ptr14 = getelementptr i8, ptr %18, i64 0, !dbg !2204
  store ptr %add.ptr14, ptr %tmp13, align 8, !dbg !2204
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr10) #10, !dbg !2194
  %19 = load ptr, ptr %tmp13, align 8, !dbg !2204
  store ptr %19, ptr %next, align 8, !dbg !2194
  br label %for.cond, !dbg !2194, !llvm.loop !2205

for.end:                                          ; preds = %for.cond
  call void @llvm.lifetime.end.p0(i64 8, ptr %next) #10, !dbg !2209
  call void @llvm.lifetime.end.p0(i64 8, ptr %event) #10, !dbg !2209
  call void @llvm.lifetime.end.p0(i64 8, ptr %geddev) #10, !dbg !2209
  ret void, !dbg !2209
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @devm_kzalloc(ptr noundef %dev, i64 noundef %size, i32 noundef %gfp) #5 align 16 !dbg !2210 {
entry:
  %dev.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2214, metadata !DIExpression()), !dbg !2217
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2215, metadata !DIExpression()), !dbg !2218
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !2216, metadata !DIExpression()), !dbg !2219
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2220
  %1 = load i64, ptr %size.addr, align 8, !dbg !2221
  %2 = load i32, ptr %gfp.addr, align 4, !dbg !2222
  %or = or i32 %2, 256, !dbg !2223
  %call = call noalias ptr @devm_kmalloc(ptr noundef %0, i64 noundef %1, i32 noundef %or) #11, !dbg !2224
  ret ptr %call, !dbg !2225
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @INIT_LIST_HEAD(ptr noundef %list) #5 align 16 !dbg !2226 {
entry:
  %list.addr = alloca ptr, align 8
  store ptr %list, ptr %list.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %list.addr, metadata !2231, metadata !DIExpression()), !dbg !2232
  br label %do.body, !dbg !2233

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !2234

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !2236

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !2234

do.body2:                                         ; preds = %do.end
  %0 = load ptr, ptr %list.addr, align 8, !dbg !2238
  %1 = load ptr, ptr %list.addr, align 8, !dbg !2238
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !2238
  store volatile ptr %0, ptr %next, align 8, !dbg !2238
  br label %do.end3, !dbg !2238

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !2234

do.end4:                                          ; preds = %do.end3
  br label %do.body5, !dbg !2240

do.body5:                                         ; preds = %do.end4
  br label %do.body6, !dbg !2241

do.body6:                                         ; preds = %do.body5
  br label %do.end7, !dbg !2243

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !2241

do.body8:                                         ; preds = %do.end7
  %2 = load ptr, ptr %list.addr, align 8, !dbg !2245
  %3 = load ptr, ptr %list.addr, align 8, !dbg !2245
  %prev = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1, !dbg !2245
  store volatile ptr %2, ptr %prev, align 8, !dbg !2245
  br label %do.end9, !dbg !2245

do.end9:                                          ; preds = %do.body8
  br label %do.end10, !dbg !2241

do.end10:                                         ; preds = %do.end9
  ret void, !dbg !2247
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2248 dso_local i32 @acpi_walk_resources(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_device_handle(ptr noundef %adev) #5 align 16 !dbg !2669 {
entry:
  %adev.addr = alloca ptr, align 8
  store ptr %adev, ptr %adev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %adev.addr, metadata !2674, metadata !DIExpression()), !dbg !2675
  %0 = load ptr, ptr %adev.addr, align 8, !dbg !2676
  %tobool = icmp ne ptr %0, null, !dbg !2676
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2676

cond.true:                                        ; preds = %entry
  %1 = load ptr, ptr %adev.addr, align 8, !dbg !2677
  %handle = getelementptr inbounds %struct.acpi_device, ptr %1, i32 0, i32 2, !dbg !2678
  %2 = load ptr, ptr %handle, align 8, !dbg !2678
  br label %cond.end, !dbg !2676

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2676

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %2, %cond.true ], [ null, %cond.false ], !dbg !2676
  ret ptr %cond, !dbg !2679
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2680 dso_local zeroext i1 @is_acpi_device_node(ptr noundef) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ged_request_interrupt(ptr noundef %ares, ptr noundef %context) #2 align 16 !dbg !2681 {
entry:
  %retval = alloca i32, align 4
  %ares.addr = alloca ptr, align 8
  %context.addr = alloca ptr, align 8
  %event = alloca ptr, align 8
  %irq = alloca i32, align 4
  %gsi = alloca i32, align 4
  %irqflags = alloca i32, align 4
  %geddev = alloca ptr, align 8
  %dev = alloca ptr, align 8
  %handle = alloca ptr, align 8
  %__to_acpi_device_node_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  %evt_handle = alloca ptr, align 8
  %r = alloca %struct.resource, align 8
  %p = alloca ptr, align 8
  %pext = alloca ptr, align 8
  %ev_name = alloca [5 x i8], align 1
  %trigger = alloca i8, align 1
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %ares, ptr %ares.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ares.addr, metadata !2683, metadata !DIExpression()), !dbg !2704
  store ptr %context, ptr %context.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %context.addr, metadata !2684, metadata !DIExpression()), !dbg !2705
  call void @llvm.lifetime.start.p0(i64 8, ptr %event) #10, !dbg !2706
  call void @llvm.dbg.declare(metadata ptr %event, metadata !2685, metadata !DIExpression()), !dbg !2707
  call void @llvm.lifetime.start.p0(i64 4, ptr %irq) #10, !dbg !2708
  call void @llvm.dbg.declare(metadata ptr %irq, metadata !2686, metadata !DIExpression()), !dbg !2709
  call void @llvm.lifetime.start.p0(i64 4, ptr %gsi) #10, !dbg !2710
  call void @llvm.dbg.declare(metadata ptr %gsi, metadata !2687, metadata !DIExpression()), !dbg !2711
  call void @llvm.lifetime.start.p0(i64 4, ptr %irqflags) #10, !dbg !2712
  call void @llvm.dbg.declare(metadata ptr %irqflags, metadata !2688, metadata !DIExpression()), !dbg !2713
  store i32 8192, ptr %irqflags, align 4, !dbg !2713
  call void @llvm.lifetime.start.p0(i64 8, ptr %geddev) #10, !dbg !2714
  call void @llvm.dbg.declare(metadata ptr %geddev, metadata !2689, metadata !DIExpression()), !dbg !2715
  %0 = load ptr, ptr %context.addr, align 8, !dbg !2716
  store ptr %0, ptr %geddev, align 8, !dbg !2715
  call void @llvm.lifetime.start.p0(i64 8, ptr %dev) #10, !dbg !2717
  call void @llvm.dbg.declare(metadata ptr %dev, metadata !2690, metadata !DIExpression()), !dbg !2718
  %1 = load ptr, ptr %geddev, align 8, !dbg !2719
  %dev1 = getelementptr inbounds %struct.acpi_ged_device, ptr %1, i32 0, i32 0, !dbg !2720
  %2 = load ptr, ptr %dev1, align 8, !dbg !2720
  store ptr %2, ptr %dev, align 8, !dbg !2718
  call void @llvm.lifetime.start.p0(i64 8, ptr %handle) #10, !dbg !2721
  call void @llvm.dbg.declare(metadata ptr %handle, metadata !2691, metadata !DIExpression()), !dbg !2722
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #10, !dbg !2723
  call void @llvm.dbg.declare(metadata ptr %__to_acpi_device_node_fwnode, metadata !2692, metadata !DIExpression()), !dbg !2723
  %3 = load ptr, ptr %dev, align 8, !dbg !2723
  %fwnode = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 24, !dbg !2723
  %4 = load ptr, ptr %fwnode, align 8, !dbg !2723
  store ptr %4, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !2723
  %5 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !2723
  %call = call zeroext i1 @is_acpi_device_node(ptr noundef %5) #9, !dbg !2723
  br i1 %call, label %cond.true, label %cond.false, !dbg !2723

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !2724
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2694, metadata !DIExpression()), !dbg !2724
  %6 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !2724
  store ptr %6, ptr %__mptr, align 8, !dbg !2724
  %7 = load ptr, ptr %__mptr, align 8, !dbg !2724
  %add.ptr = getelementptr i8, ptr %7, i64 -16, !dbg !2724
  store ptr %add.ptr, ptr %tmp2, align 8, !dbg !2724
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !2723
  %8 = load ptr, ptr %tmp2, align 8, !dbg !2724
  br label %cond.end, !dbg !2723

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2723

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %8, %cond.true ], [ null, %cond.false ], !dbg !2723
  store ptr %cond, ptr %tmp, align 8, !dbg !2723
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #10, !dbg !2725
  %9 = load ptr, ptr %tmp, align 8, !dbg !2723
  %call3 = call ptr @acpi_device_handle(ptr noundef %9) #9, !dbg !2725
  store ptr %call3, ptr %handle, align 8, !dbg !2722
  call void @llvm.lifetime.start.p0(i64 8, ptr %evt_handle) #10, !dbg !2726
  call void @llvm.dbg.declare(metadata ptr %evt_handle, metadata !2696, metadata !DIExpression()), !dbg !2727
  call void @llvm.lifetime.start.p0(i64 64, ptr %r) #10, !dbg !2728
  call void @llvm.dbg.declare(metadata ptr %r, metadata !2697, metadata !DIExpression()), !dbg !2729
  call void @llvm.lifetime.start.p0(i64 8, ptr %p) #10, !dbg !2730
  call void @llvm.dbg.declare(metadata ptr %p, metadata !2698, metadata !DIExpression()), !dbg !2731
  %10 = load ptr, ptr %ares.addr, align 8, !dbg !2732
  %data = getelementptr inbounds %struct.acpi_resource, ptr %10, i32 0, i32 2, !dbg !2733
  store ptr %data, ptr %p, align 8, !dbg !2731
  call void @llvm.lifetime.start.p0(i64 8, ptr %pext) #10, !dbg !2734
  call void @llvm.dbg.declare(metadata ptr %pext, metadata !2700, metadata !DIExpression()), !dbg !2735
  %11 = load ptr, ptr %ares.addr, align 8, !dbg !2736
  %data4 = getelementptr inbounds %struct.acpi_resource, ptr %11, i32 0, i32 2, !dbg !2737
  store ptr %data4, ptr %pext, align 8, !dbg !2735
  call void @llvm.lifetime.start.p0(i64 5, ptr %ev_name) #10, !dbg !2738
  call void @llvm.dbg.declare(metadata ptr %ev_name, metadata !2702, metadata !DIExpression()), !dbg !2739
  call void @llvm.lifetime.start.p0(i64 1, ptr %trigger) #10, !dbg !2740
  call void @llvm.dbg.declare(metadata ptr %trigger, metadata !2703, metadata !DIExpression()), !dbg !2741
  %12 = load ptr, ptr %ares.addr, align 8, !dbg !2742
  %type = getelementptr inbounds %struct.acpi_resource, ptr %12, i32 0, i32 0, !dbg !2744
  %13 = load i32, ptr %type, align 1, !dbg !2744
  %cmp = icmp eq i32 %13, 7, !dbg !2745
  br i1 %cmp, label %if.then, label %if.end, !dbg !2746

if.then:                                          ; preds = %cond.end
  store i32 0, ptr %retval, align 4, !dbg !2747
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2747

if.end:                                           ; preds = %cond.end
  %14 = load ptr, ptr %ares.addr, align 8, !dbg !2748
  %call5 = call zeroext i1 @acpi_dev_resource_interrupt(ptr noundef %14, i32 noundef 0, ptr noundef %r) #9, !dbg !2750
  br i1 %call5, label %if.end7, label %if.then6, !dbg !2751

if.then6:                                         ; preds = %if.end
  br label %do.body, !dbg !2752

do.body:                                          ; preds = %if.then6
  br label %do.cond, !dbg !2755

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2755

do.end:                                           ; preds = %do.cond
  %15 = load ptr, ptr %dev, align 8, !dbg !2752
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef @.str.3) #8, !dbg !2752
  store i32 1, ptr %retval, align 4, !dbg !2757
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2757

if.end7:                                          ; preds = %if.end
  %16 = load ptr, ptr %ares.addr, align 8, !dbg !2758
  %type8 = getelementptr inbounds %struct.acpi_resource, ptr %16, i32 0, i32 0, !dbg !2760
  %17 = load i32, ptr %type8, align 1, !dbg !2760
  %cmp9 = icmp eq i32 %17, 0, !dbg !2761
  br i1 %cmp9, label %if.then10, label %if.else, !dbg !2762

if.then10:                                        ; preds = %if.end7
  %18 = load ptr, ptr %p, align 8, !dbg !2763
  %19 = getelementptr inbounds %struct.acpi_resource_irq, ptr %18, i32 0, i32 6, !dbg !2765
  %interrupts = getelementptr inbounds %struct.anon.5, ptr %19, i32 0, i32 1, !dbg !2765
  %arrayidx = getelementptr [0 x i8], ptr %interrupts, i64 0, i64 0, !dbg !2763
  %20 = load i8, ptr %arrayidx, align 1, !dbg !2763
  %conv = zext i8 %20 to i32, !dbg !2763
  store i32 %conv, ptr %gsi, align 4, !dbg !2766
  %21 = load ptr, ptr %p, align 8, !dbg !2767
  %triggering = getelementptr inbounds %struct.acpi_resource_irq, ptr %21, i32 0, i32 1, !dbg !2768
  %22 = load i8, ptr %triggering, align 1, !dbg !2768
  store i8 %22, ptr %trigger, align 1, !dbg !2769
  br label %if.end14, !dbg !2770

if.else:                                          ; preds = %if.end7
  %23 = load ptr, ptr %pext, align 8, !dbg !2771
  %24 = getelementptr inbounds %struct.acpi_resource_extended_irq, ptr %23, i32 0, i32 7, !dbg !2773
  %interrupts11 = getelementptr inbounds %struct.anon.11, ptr %24, i32 0, i32 1, !dbg !2773
  %arrayidx12 = getelementptr [0 x i32], ptr %interrupts11, i64 0, i64 0, !dbg !2771
  %25 = load i32, ptr %arrayidx12, align 1, !dbg !2771
  store i32 %25, ptr %gsi, align 4, !dbg !2774
  %26 = load ptr, ptr %pext, align 8, !dbg !2775
  %triggering13 = getelementptr inbounds %struct.acpi_resource_extended_irq, ptr %26, i32 0, i32 1, !dbg !2776
  %27 = load i8, ptr %triggering13, align 1, !dbg !2776
  store i8 %27, ptr %trigger, align 1, !dbg !2777
  br label %if.end14

if.end14:                                         ; preds = %if.else, %if.then10
  %start = getelementptr inbounds %struct.resource, ptr %r, i32 0, i32 0, !dbg !2778
  %28 = load i64, ptr %start, align 8, !dbg !2778
  %conv15 = trunc i64 %28 to i32, !dbg !2779
  store i32 %conv15, ptr %irq, align 4, !dbg !2780
  %29 = load i32, ptr %gsi, align 4, !dbg !2781
  switch i32 %29, label %sw.caserange [
  ], !dbg !2782

sw.bb:                                            ; preds = %sw.caserange
  %arraydecay = getelementptr inbounds [5 x i8], ptr %ev_name, i64 0, i64 0, !dbg !2783
  %30 = load i8, ptr %trigger, align 1, !dbg !2785
  %conv16 = zext i8 %30 to i32, !dbg !2785
  %cmp17 = icmp eq i32 %conv16, 1, !dbg !2786
  %31 = zext i1 %cmp17 to i64, !dbg !2785
  %cond19 = select i1 %cmp17, i32 69, i32 76, !dbg !2785
  %32 = load i32, ptr %gsi, align 4, !dbg !2787
  %call20 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef %arraydecay, ptr noundef @.str.4, i32 noundef %cond19, i32 noundef %32) #9, !dbg !2788
  %33 = load ptr, ptr %handle, align 8, !dbg !2789
  %arraydecay21 = getelementptr inbounds [5 x i8], ptr %ev_name, i64 0, i64 0, !dbg !2789
  %call22 = call i32 @acpi_get_handle(ptr noundef %33, ptr noundef %arraydecay21, ptr noundef %evt_handle) #9, !dbg !2789
  %tobool = icmp ne i32 %call22, 0, !dbg !2789
  br i1 %tobool, label %if.end24, label %if.then23, !dbg !2791

if.then23:                                        ; preds = %sw.bb
  br label %sw.epilog, !dbg !2792

sw.caserange:                                     ; preds = %if.end14
  %34 = sub i32 %29, 0, !dbg !2788
  %inbounds = icmp ule i32 %34, 255, !dbg !2788
  br i1 %inbounds, label %sw.bb, label %sw.default, !dbg !2788

if.end24:                                         ; preds = %sw.bb
  br label %sw.default, !dbg !2789

sw.default:                                       ; preds = %if.end24, %sw.caserange
  %35 = load ptr, ptr %handle, align 8, !dbg !2793
  %call25 = call i32 @acpi_get_handle(ptr noundef %35, ptr noundef @.str.5, ptr noundef %evt_handle) #9, !dbg !2793
  %tobool26 = icmp ne i32 %call25, 0, !dbg !2793
  br i1 %tobool26, label %if.end28, label %if.then27, !dbg !2795

if.then27:                                        ; preds = %sw.default
  br label %sw.epilog, !dbg !2796

if.end28:                                         ; preds = %sw.default
  br label %do.body29, !dbg !2797

do.body29:                                        ; preds = %if.end28
  br label %do.cond30, !dbg !2799

do.cond30:                                        ; preds = %do.body29
  br label %do.end31, !dbg !2799

do.end31:                                         ; preds = %do.cond30
  %36 = load ptr, ptr %dev, align 8, !dbg !2797
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef @.str.6) #8, !dbg !2797
  store i32 1, ptr %retval, align 4, !dbg !2801
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2801

sw.epilog:                                        ; preds = %if.then27, %if.then23
  %37 = load ptr, ptr %dev, align 8, !dbg !2802
  %call32 = call ptr @devm_kzalloc(ptr noundef %37, i64 noundef 40, i32 noundef 3264) #9, !dbg !2803
  store ptr %call32, ptr %event, align 8, !dbg !2804
  %38 = load ptr, ptr %event, align 8, !dbg !2805
  %tobool33 = icmp ne ptr %38, null, !dbg !2805
  br i1 %tobool33, label %if.end35, label %if.then34, !dbg !2807

if.then34:                                        ; preds = %sw.epilog
  store i32 1, ptr %retval, align 4, !dbg !2808
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2808

if.end35:                                         ; preds = %sw.epilog
  %39 = load i32, ptr %gsi, align 4, !dbg !2809
  %40 = load ptr, ptr %event, align 8, !dbg !2810
  %gsi36 = getelementptr inbounds %struct.acpi_ged_event, ptr %40, i32 0, i32 2, !dbg !2811
  store i32 %39, ptr %gsi36, align 8, !dbg !2812
  %41 = load ptr, ptr %dev, align 8, !dbg !2813
  %42 = load ptr, ptr %event, align 8, !dbg !2814
  %dev37 = getelementptr inbounds %struct.acpi_ged_event, ptr %42, i32 0, i32 1, !dbg !2815
  store ptr %41, ptr %dev37, align 8, !dbg !2816
  %43 = load i32, ptr %irq, align 4, !dbg !2817
  %44 = load ptr, ptr %event, align 8, !dbg !2818
  %irq38 = getelementptr inbounds %struct.acpi_ged_event, ptr %44, i32 0, i32 3, !dbg !2819
  store i32 %43, ptr %irq38, align 4, !dbg !2820
  %45 = load ptr, ptr %evt_handle, align 8, !dbg !2821
  %46 = load ptr, ptr %event, align 8, !dbg !2822
  %handle39 = getelementptr inbounds %struct.acpi_ged_event, ptr %46, i32 0, i32 4, !dbg !2823
  store ptr %45, ptr %handle39, align 8, !dbg !2824
  %flags = getelementptr inbounds %struct.resource, ptr %r, i32 0, i32 3, !dbg !2825
  %47 = load i64, ptr %flags, align 8, !dbg !2825
  %and = and i64 %47, 16, !dbg !2827
  %tobool40 = icmp ne i64 %and, 0, !dbg !2827
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !2828

if.then41:                                        ; preds = %if.end35
  %48 = load i32, ptr %irqflags, align 4, !dbg !2829
  %or = or i32 %48, 128, !dbg !2829
  store i32 %or, ptr %irqflags, align 4, !dbg !2829
  br label %if.end42, !dbg !2830

if.end42:                                         ; preds = %if.then41, %if.end35
  %49 = load i32, ptr %irq, align 4, !dbg !2831
  %50 = load i32, ptr %irqflags, align 4, !dbg !2833
  %conv43 = zext i32 %50 to i64, !dbg !2833
  %51 = load ptr, ptr %event, align 8, !dbg !2834
  %call44 = call i32 @request_threaded_irq(i32 noundef %49, ptr noundef null, ptr noundef @acpi_ged_irq_handler, i64 noundef %conv43, ptr noundef @.str.7, ptr noundef %51) #9, !dbg !2835
  %tobool45 = icmp ne i32 %call44, 0, !dbg !2835
  br i1 %tobool45, label %if.then46, label %if.end50, !dbg !2836

if.then46:                                        ; preds = %if.end42
  br label %do.body47, !dbg !2837

do.body47:                                        ; preds = %if.then46
  br label %do.cond48, !dbg !2840

do.cond48:                                        ; preds = %do.body47
  br label %do.end49, !dbg !2840

do.end49:                                         ; preds = %do.cond48
  %52 = load ptr, ptr %dev, align 8, !dbg !2837
  %53 = load i32, ptr %irq, align 4, !dbg !2837
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef @.str.8, i32 noundef %53) #8, !dbg !2837
  store i32 1, ptr %retval, align 4, !dbg !2842
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2842

if.end50:                                         ; preds = %if.end42
  %54 = load ptr, ptr %event, align 8, !dbg !2843
  %node = getelementptr inbounds %struct.acpi_ged_event, ptr %54, i32 0, i32 0, !dbg !2844
  %55 = load ptr, ptr %geddev, align 8, !dbg !2845
  %event_list = getelementptr inbounds %struct.acpi_ged_device, ptr %55, i32 0, i32 1, !dbg !2846
  call void @list_add_tail(ptr noundef %node, ptr noundef %event_list) #9, !dbg !2847
  store i32 0, ptr %retval, align 4, !dbg !2848
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2848

cleanup:                                          ; preds = %if.end50, %do.end49, %if.then34, %do.end31, %do.end, %if.then
  call void @llvm.lifetime.end.p0(i64 1, ptr %trigger) #10, !dbg !2849
  call void @llvm.lifetime.end.p0(i64 5, ptr %ev_name) #10, !dbg !2849
  call void @llvm.lifetime.end.p0(i64 8, ptr %pext) #10, !dbg !2849
  call void @llvm.lifetime.end.p0(i64 8, ptr %p) #10, !dbg !2849
  call void @llvm.lifetime.end.p0(i64 64, ptr %r) #10, !dbg !2849
  call void @llvm.lifetime.end.p0(i64 8, ptr %evt_handle) #10, !dbg !2849
  call void @llvm.lifetime.end.p0(i64 8, ptr %handle) #10, !dbg !2849
  call void @llvm.lifetime.end.p0(i64 8, ptr %dev) #10, !dbg !2849
  call void @llvm.lifetime.end.p0(i64 8, ptr %geddev) #10, !dbg !2849
  call void @llvm.lifetime.end.p0(i64 4, ptr %irqflags) #10, !dbg !2849
  call void @llvm.lifetime.end.p0(i64 4, ptr %gsi) #10, !dbg !2849
  call void @llvm.lifetime.end.p0(i64 4, ptr %irq) #10, !dbg !2849
  call void @llvm.lifetime.end.p0(i64 8, ptr %event) #10, !dbg !2849
  %56 = load i32, ptr %retval, align 4, !dbg !2849
  ret i32 %56, !dbg !2849
}

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2850 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #6

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @platform_set_drvdata(ptr noundef %pdev, ptr noundef %data) #5 align 16 !dbg !2854 {
entry:
  %pdev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !2858, metadata !DIExpression()), !dbg !2860
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2859, metadata !DIExpression()), !dbg !2861
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !2862
  %dev = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, !dbg !2863
  %1 = load ptr, ptr %data.addr, align 8, !dbg !2864
  call void @dev_set_drvdata(ptr noundef %dev, ptr noundef %1) #9, !dbg !2865
  ret void, !dbg !2866
}

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare !dbg !2867 dso_local noalias ptr @devm_kmalloc(ptr noundef, i64 noundef, i32 noundef) #7

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2868 dso_local zeroext i1 @acpi_dev_resource_interrupt(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2871 dso_local i32 @sprintf(ptr noundef, ptr noundef, ...) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2875 dso_local i32 @acpi_get_handle(ptr noundef, ptr noundef, ptr noundef) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2879 dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i64 noundef, ptr noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_ged_irq_handler(i32 noundef %irq, ptr noundef %data) #2 align 16 !dbg !2073 {
entry:
  %irq.addr = alloca i32, align 4
  %data.addr = alloca ptr, align 8
  %event = alloca ptr, align 8
  %acpi_ret = alloca i32, align 4
  store i32 %irq, ptr %irq.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %irq.addr, metadata !2078, metadata !DIExpression()), !dbg !2884
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2079, metadata !DIExpression()), !dbg !2885
  call void @llvm.lifetime.start.p0(i64 8, ptr %event) #10, !dbg !2886
  call void @llvm.dbg.declare(metadata ptr %event, metadata !2080, metadata !DIExpression()), !dbg !2887
  %0 = load ptr, ptr %data.addr, align 8, !dbg !2888
  store ptr %0, ptr %event, align 8, !dbg !2887
  call void @llvm.lifetime.start.p0(i64 4, ptr %acpi_ret) #10, !dbg !2889
  call void @llvm.dbg.declare(metadata ptr %acpi_ret, metadata !2081, metadata !DIExpression()), !dbg !2890
  %1 = load ptr, ptr %event, align 8, !dbg !2891
  %handle = getelementptr inbounds %struct.acpi_ged_event, ptr %1, i32 0, i32 4, !dbg !2892
  %2 = load ptr, ptr %handle, align 8, !dbg !2892
  %3 = load ptr, ptr %event, align 8, !dbg !2893
  %gsi = getelementptr inbounds %struct.acpi_ged_event, ptr %3, i32 0, i32 2, !dbg !2894
  %4 = load i32, ptr %gsi, align 8, !dbg !2894
  %conv = zext i32 %4 to i64, !dbg !2893
  %call = call i32 @acpi_execute_simple_method(ptr noundef %2, ptr noundef null, i64 noundef %conv) #9, !dbg !2895
  store i32 %call, ptr %acpi_ret, align 4, !dbg !2896
  %5 = load i32, ptr %acpi_ret, align 4, !dbg !2897
  %tobool = icmp ne i32 %5, 0, !dbg !2897
  br i1 %tobool, label %if.then, label %if.end6, !dbg !2899

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2900

do.body:                                          ; preds = %if.then
  %6 = load i8, ptr @acpi_ged_irq_handler.__print_once, align 1, !dbg !2901, !range !2904, !noundef !338
  %tobool1 = trunc i8 %6 to i1, !dbg !2901
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !2905

if.then2:                                         ; preds = %do.body
  store i8 1, ptr @acpi_ged_irq_handler.__print_once, align 1, !dbg !2906
  br label %do.body3, !dbg !2908

do.body3:                                         ; preds = %if.then2
  br label %do.cond, !dbg !2910

do.cond:                                          ; preds = %do.body3
  br label %do.end, !dbg !2910

do.end:                                           ; preds = %do.cond
  %7 = load ptr, ptr %event, align 8, !dbg !2908
  %dev = getelementptr inbounds %struct.acpi_ged_event, ptr %7, i32 0, i32 1, !dbg !2908
  %8 = load ptr, ptr %dev, align 8, !dbg !2908
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef @.str.9) #8, !dbg !2908
  br label %if.end, !dbg !2906

if.end:                                           ; preds = %do.end, %do.body
  br label %do.cond4, !dbg !2905

do.cond4:                                         ; preds = %if.end
  br label %do.end5, !dbg !2905

do.end5:                                          ; preds = %do.cond4
  br label %if.end6, !dbg !2905

if.end6:                                          ; preds = %do.end5, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr %acpi_ret) #10, !dbg !2912
  call void @llvm.lifetime.end.p0(i64 8, ptr %event) #10, !dbg !2912
  ret i32 1, !dbg !2913
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_add_tail(ptr noundef %new, ptr noundef %head) #5 align 16 !dbg !2914 {
entry:
  %new.addr = alloca ptr, align 8
  %head.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2918, metadata !DIExpression()), !dbg !2920
  store ptr %head, ptr %head.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %head.addr, metadata !2919, metadata !DIExpression()), !dbg !2921
  %0 = load ptr, ptr %new.addr, align 8, !dbg !2922
  %1 = load ptr, ptr %head.addr, align 8, !dbg !2923
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !2924
  %2 = load ptr, ptr %prev, align 8, !dbg !2924
  %3 = load ptr, ptr %head.addr, align 8, !dbg !2925
  call void @__list_add(ptr noundef %0, ptr noundef %2, ptr noundef %3) #9, !dbg !2926
  ret void, !dbg !2927
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2928 dso_local i32 @acpi_execute_simple_method(ptr noundef, ptr noundef, i64 noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_add(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !2931 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2935, metadata !DIExpression()), !dbg !2938
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !2936, metadata !DIExpression()), !dbg !2939
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !2937, metadata !DIExpression()), !dbg !2940
  %0 = load ptr, ptr %new.addr, align 8, !dbg !2941
  %1 = load ptr, ptr %prev.addr, align 8, !dbg !2943
  %2 = load ptr, ptr %next.addr, align 8, !dbg !2944
  %call = call zeroext i1 @__list_add_valid(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9, !dbg !2945
  br i1 %call, label %if.end, label %if.then, !dbg !2946

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !2947

if.end:                                           ; preds = %entry
  %3 = load ptr, ptr %new.addr, align 8, !dbg !2948
  %4 = load ptr, ptr %next.addr, align 8, !dbg !2949
  %prev1 = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1, !dbg !2950
  store ptr %3, ptr %prev1, align 8, !dbg !2951
  %5 = load ptr, ptr %next.addr, align 8, !dbg !2952
  %6 = load ptr, ptr %new.addr, align 8, !dbg !2953
  %next2 = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 0, !dbg !2954
  store ptr %5, ptr %next2, align 8, !dbg !2955
  %7 = load ptr, ptr %prev.addr, align 8, !dbg !2956
  %8 = load ptr, ptr %new.addr, align 8, !dbg !2957
  %prev3 = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1, !dbg !2958
  store ptr %7, ptr %prev3, align 8, !dbg !2959
  br label %do.body, !dbg !2960

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !2961

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !2963

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !2961

do.body5:                                         ; preds = %do.end
  %9 = load ptr, ptr %new.addr, align 8, !dbg !2965
  %10 = load ptr, ptr %prev.addr, align 8, !dbg !2965
  %next6 = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 0, !dbg !2965
  store volatile ptr %9, ptr %next6, align 8, !dbg !2965
  br label %do.end7, !dbg !2965

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !2961

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !2967
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_add_valid(ptr noundef %new, ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !2968 {
entry:
  %new.addr = alloca ptr, align 8
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %new, ptr %new.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %new.addr, metadata !2972, metadata !DIExpression()), !dbg !2975
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !2973, metadata !DIExpression()), !dbg !2976
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !2974, metadata !DIExpression()), !dbg !2977
  ret i1 true, !dbg !2978
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dev_set_drvdata(ptr noundef %dev, ptr noundef %data) #5 align 16 !dbg !2979 {
entry:
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2983, metadata !DIExpression()), !dbg !2985
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2984, metadata !DIExpression()), !dbg !2986
  %0 = load ptr, ptr %data.addr, align 8, !dbg !2987
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2988
  %driver_data = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8, !dbg !2989
  store ptr %0, ptr %driver_data, align 8, !dbg !2990
  ret void, !dbg !2991
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @platform_get_drvdata(ptr noundef %pdev) #5 align 16 !dbg !2992 {
entry:
  %pdev.addr = alloca ptr, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !2998, metadata !DIExpression()), !dbg !2999
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !3000
  %dev = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, !dbg !3001
  %call = call ptr @dev_get_drvdata(ptr noundef %dev) #9, !dbg !3002
  ret ptr %call, !dbg !3003
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3004 dso_local ptr @free_irq(i32 noundef, ptr noundef) #1

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @list_del(ptr noundef %entry1) #5 align 16 !dbg !3007 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3009, metadata !DIExpression()), !dbg !3010
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !3011
  call void @__list_del_entry(ptr noundef %0) #9, !dbg !3012
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !3013
  %next = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 0, !dbg !3014
  store ptr getelementptr (i8, ptr inttoptr (i64 256 to ptr), i64 -2401263026318606336), ptr %next, align 8, !dbg !3015
  %2 = load ptr, ptr %entry.addr, align 8, !dbg !3016
  %prev = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1, !dbg !3017
  store ptr getelementptr (i8, ptr inttoptr (i64 290 to ptr), i64 -2401263026318606336), ptr %prev, align 8, !dbg !3018
  ret void, !dbg !3019
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_get_drvdata(ptr noundef %dev) #5 align 16 !dbg !3020 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3024, metadata !DIExpression()), !dbg !3025
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3026
  %driver_data = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8, !dbg !3027
  %1 = load ptr, ptr %driver_data, align 8, !dbg !3027
  ret ptr %1, !dbg !3028
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del_entry(ptr noundef %entry1) #5 align 16 !dbg !3029 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3031, metadata !DIExpression()), !dbg !3032
  %0 = load ptr, ptr %entry.addr, align 8, !dbg !3033
  %call = call zeroext i1 @__list_del_entry_valid(ptr noundef %0) #9, !dbg !3035
  br i1 %call, label %if.end, label %if.then, !dbg !3036

if.then:                                          ; preds = %entry
  br label %return, !dbg !3037

if.end:                                           ; preds = %entry
  %1 = load ptr, ptr %entry.addr, align 8, !dbg !3038
  %prev = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3039
  %2 = load ptr, ptr %prev, align 8, !dbg !3039
  %3 = load ptr, ptr %entry.addr, align 8, !dbg !3040
  %next = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !3041
  %4 = load ptr, ptr %next, align 8, !dbg !3041
  call void @__list_del(ptr noundef %2, ptr noundef %4) #9, !dbg !3042
  br label %return, !dbg !3043

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !3043
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__list_del_entry_valid(ptr noundef %entry1) #5 align 16 !dbg !3044 {
entry:
  %entry.addr = alloca ptr, align 8
  store ptr %entry1, ptr %entry.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %entry.addr, metadata !3048, metadata !DIExpression()), !dbg !3049
  ret i1 true, !dbg !3050
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @__list_del(ptr noundef %prev, ptr noundef %next) #5 align 16 !dbg !3051 {
entry:
  %prev.addr = alloca ptr, align 8
  %next.addr = alloca ptr, align 8
  store ptr %prev, ptr %prev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %prev.addr, metadata !3053, metadata !DIExpression()), !dbg !3055
  store ptr %next, ptr %next.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %next.addr, metadata !3054, metadata !DIExpression()), !dbg !3056
  %0 = load ptr, ptr %prev.addr, align 8, !dbg !3057
  %1 = load ptr, ptr %next.addr, align 8, !dbg !3058
  %prev1 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1, !dbg !3059
  store ptr %0, ptr %prev1, align 8, !dbg !3060
  br label %do.body, !dbg !3061

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !3062

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !3064

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !3062

do.body3:                                         ; preds = %do.end
  %2 = load ptr, ptr %next.addr, align 8, !dbg !3066
  %3 = load ptr, ptr %prev.addr, align 8, !dbg !3066
  %next4 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 0, !dbg !3066
  store volatile ptr %2, ptr %next4, align 8, !dbg !3066
  br label %do.end5, !dbg !3066

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !3062

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !3068
}

attributes #0 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #2 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { noredzone null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { cold noredzone }
attributes #9 = { noredzone }
attributes #10 = { nounwind }
attributes #11 = { noredzone allocsize(1) }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097}
!llvm.ident = !{!2098}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_acpi__206_196_ged_driver_init6207", scope: !2, file: !3, line: 196, type: !96, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C11, file: !3, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/.evged.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/acpi/acpi\22 -D KBUILD_BASENAME=\22evged\22 -D KBUILD_MODNAME=\22acpi\22 -D __KBUILD_MODNAME=kmod_acpi -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/evged.ll drivers/acpi/evged.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !95, globals: !1974, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/acpi/evged.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8f3b07757a9e5d63cd43c46f7efea126")
!4 = !{!5, !13, !19, !25, !32, !37, !45, !53, !59, !68, !73, !78, !84, !90}
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
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !85, line: 11, baseType: !7, size: 32, elements: !86)
!85 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c6f79c8839b3f722a70a16edaeaa0164")
!86 = !{!87, !88, !89}
!87 = !DIEnumerator(name: "IRQ_NONE", value: 0)
!88 = !DIEnumerator(name: "IRQ_HANDLED", value: 1)
!89 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2)
!90 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !91, line: 10, baseType: !7, size: 32, elements: !92)
!91 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!92 = !{!93, !94}
!93 = !DIEnumerator(name: "false", value: 0)
!94 = !DIEnumerator(name: "true", value: 1)
!95 = !{!96, !97, !1146, !1147, !1963, !1965, !160, !1966}
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !6, line: 402, size: 9216, align: 512, elements: !99)
!99 = !{!100, !101, !108, !113, !794, !820, !821, !822, !823, !827, !830, !831, !832, !885, !886, !887, !888, !889, !890, !891, !892, !900, !904, !924, !942, !943, !944, !945, !954, !978, !979, !982, !985, !986, !987, !988, !989, !990, !991, !996, !997, !1104, !1112, !1113, !1114, !1116, !1120, !1121, !1125, !1126, !1127, !1128, !1130, !1131, !1132, !1139, !1140, !1141, !1145}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !98, file: !6, line: 403, baseType: !5, size: 32)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !98, file: !6, line: 406, baseType: !102, size: 128, offset: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !103, line: 190, size: 128, elements: !104)
!103 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!104 = !{!105, !107}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !102, file: !103, line: 191, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !102, file: !103, line: 191, baseType: !106, size: 64, offset: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !98, file: !6, line: 409, baseType: !109, size: 448, offset: 192)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 448, elements: !111)
!110 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!111 = !{!112}
!112 = !DISubrange(count: 56)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !98, file: !6, line: 417, baseType: !114, size: 768, offset: 640)
!114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !6, line: 45, size: 768, elements: !115)
!115 = !{!116, !777, !778, !779, !782}
!116 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !114, file: !6, line: 46, baseType: !117, size: 512)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !118, line: 64, size: 512, elements: !119)
!118 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!119 = !{!120, !123, !124, !126, !215, !648, !762, !772, !773, !774, !775, !776}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !117, file: !118, line: 65, baseType: !121, size: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !117, file: !118, line: 66, baseType: !102, size: 128, offset: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !117, file: !118, line: 67, baseType: !125, size: 64, offset: 192)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !117, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !117, file: !118, line: 68, baseType: !127, size: 64, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !128, size: 64)
!128 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !118, line: 168, size: 768, elements: !129)
!129 = !{!130, !131, !174, !175}
!130 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !128, file: !118, line: 169, baseType: !102, size: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !128, file: !118, line: 170, baseType: !132, size: 32, offset: 128)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !133, line: 29, baseType: !134)
!133 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !133, line: 17, size: 32, elements: !135)
!135 = !{!136}
!136 = !DIDerivedType(tag: DW_TAG_member, scope: !134, file: !133, line: 18, baseType: !137, size: 32)
!137 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !134, file: !133, line: 18, size: 32, elements: !138)
!138 = !{!139}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !137, file: !133, line: 19, baseType: !140, size: 32)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !141, line: 14, size: 32, elements: !142)
!141 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!142 = !{!143}
!143 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !140, file: !141, line: 15, baseType: !144, size: 32)
!144 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !145, line: 44, baseType: !146)
!145 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !145, line: 14, size: 32, elements: !147)
!147 = !{!148}
!148 = !DIDerivedType(tag: DW_TAG_member, scope: !146, file: !145, line: 15, baseType: !149, size: 32)
!149 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !146, file: !145, line: 15, size: 32, elements: !150)
!150 = !{!151, !156, !166}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !149, file: !145, line: 16, baseType: !152, size: 32)
!152 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !103, line: 174, baseType: !153)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !103, line: 172, size: 32, elements: !154)
!154 = !{!155}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !153, file: !103, line: 173, baseType: !46, size: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, scope: !149, file: !145, line: 24, baseType: !157, size: 16)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !149, file: !145, line: 24, size: 16, elements: !158)
!158 = !{!159, !165}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !157, file: !145, line: 25, baseType: !160, size: 8)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !161, line: 17, baseType: !162)
!161 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !163, line: 21, baseType: !164)
!163 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!164 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !157, file: !145, line: 26, baseType: !160, size: 8, offset: 8)
!166 = !DIDerivedType(tag: DW_TAG_member, scope: !149, file: !145, line: 28, baseType: !167, size: 32)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !149, file: !145, line: 28, size: 32, elements: !168)
!168 = !{!169, !173}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !167, file: !145, line: 29, baseType: !170, size: 16)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !161, line: 19, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !163, line: 24, baseType: !172)
!172 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !167, file: !145, line: 30, baseType: !170, size: 16, offset: 16)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !128, file: !118, line: 171, baseType: !117, size: 512, offset: 192)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !128, file: !118, line: 172, baseType: !176, size: 64, offset: 704)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !178)
!178 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !118, line: 133, size: 192, elements: !179)
!179 = !{!180, !187, !192}
!180 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !178, file: !118, line: 134, baseType: !181, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !182)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!46, !185}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !178, file: !118, line: 135, baseType: !188, size: 64, offset: 64)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!121, !185}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !178, file: !118, line: 136, baseType: !193, size: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !194)
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = !DISubroutineType(types: !196)
!196 = !{!46, !185, !197}
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !118, line: 125, size: 20736, elements: !199)
!199 = !{!200, !205, !209, !210, !214}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !198, file: !118, line: 126, baseType: !201, size: 192)
!201 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 192, elements: !203)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!203 = !{!204}
!204 = !DISubrange(count: 3)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !198, file: !118, line: 127, baseType: !206, size: 4096, offset: 192)
!206 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 4096, elements: !207)
!207 = !{!208}
!208 = !DISubrange(count: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !198, file: !118, line: 128, baseType: !46, size: 32, offset: 4288)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !198, file: !118, line: 129, baseType: !211, size: 16384, offset: 4320)
!211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 16384, elements: !212)
!212 = !{!213}
!213 = !DISubrange(count: 2048)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !198, file: !118, line: 130, baseType: !46, size: 32, offset: 20704)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !117, file: !118, line: 69, baseType: !216, size: 64, offset: 320)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !118, line: 116, size: 384, elements: !219)
!219 = !{!220, !224, !253, !595, !626, !630}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !218, file: !118, line: 117, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{null, !125}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !218, file: !118, line: 118, baseType: !225, size: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !227)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !228, line: 254, size: 128, elements: !229)
!228 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!229 = !{!230, !245}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !227, file: !228, line: 255, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!234, !125, !239, !202}
!234 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !103, line: 66, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !236, line: 73, baseType: !237)
!236 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!237 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !236, line: 15, baseType: !238)
!238 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !228, line: 30, size: 128, elements: !241)
!241 = !{!242, !243}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !240, file: !228, line: 31, baseType: !121, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !240, file: !228, line: 32, baseType: !244, size: 16, offset: 64)
!244 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !103, line: 24, baseType: !172)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !227, file: !228, line: 256, baseType: !246, size: 64, offset: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!234, !125, !239, !121, !249}
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !103, line: 61, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !236, line: 72, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !236, line: 16, baseType: !252)
!252 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !218, file: !118, line: 119, baseType: !254, size: 64, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !228, line: 84, size: 320, elements: !258)
!258 = !{!259, !260, !264, !591, !593}
!259 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !257, file: !228, line: 85, baseType: !121, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !257, file: !228, line: 86, baseType: !261, size: 64, offset: 64)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!244, !125, !239, !46}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !257, file: !228, line: 88, baseType: !265, size: 64, offset: 128)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!244, !125, !268, !46}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !228, line: 175, size: 512, elements: !270)
!270 = !{!271, !272, !273, !274, !281, !291, !292}
!271 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !269, file: !228, line: 176, baseType: !240, size: 128)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !269, file: !228, line: 177, baseType: !249, size: 64, offset: 128)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !269, file: !228, line: 178, baseType: !96, size: 64, offset: 192)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !269, file: !228, line: 179, baseType: !275, size: 64, offset: 256)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!278}
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!279 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !280, line: 32, flags: DIFlagFwdDecl)
!280 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!281 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !269, file: !228, line: 180, baseType: !282, size: 64, offset: 320)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!234, !285, !125, !268, !202, !288, !249}
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !287, line: 537, flags: DIFlagFwdDecl)
!287 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !103, line: 52, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !236, line: 88, baseType: !290)
!290 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !269, file: !228, line: 182, baseType: !282, size: 64, offset: 384)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !269, file: !228, line: 184, baseType: !293, size: 64, offset: 448)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DISubroutineType(types: !295)
!295 = !{!46, !285, !125, !268, !296}
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !280, line: 625, size: 1344, elements: !298)
!298 = !{!299, !316, !539, !545, !552, !553, !558, !561, !573, !574, !577, !581, !582, !583, !584, !585, !589}
!299 = !DIDerivedType(tag: DW_TAG_member, scope: !297, file: !280, line: 628, baseType: !300, size: 128)
!300 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !297, file: !280, line: 628, size: 128, elements: !301)
!301 = !{!302, !307}
!302 = !DIDerivedType(tag: DW_TAG_member, scope: !300, file: !280, line: 629, baseType: !303, size: 128)
!303 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !300, file: !280, line: 629, size: 128, elements: !304)
!304 = !{!305, !306}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !303, file: !280, line: 631, baseType: !252, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !303, file: !280, line: 632, baseType: !252, size: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !300, file: !280, line: 635, baseType: !308, size: 128, align: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !103, line: 232, size: 128, align: 64, elements: !309)
!309 = !{!310, !312}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !308, file: !103, line: 233, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !308, file: !103, line: 234, baseType: !313, size: 64, offset: 64)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{null, !311}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !297, file: !280, line: 639, baseType: !317, size: 64, offset: 128)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !280, line: 733, size: 10240, elements: !319)
!319 = !{!320, !535}
!320 = !DIDerivedType(tag: DW_TAG_member, scope: !318, file: !280, line: 734, baseType: !321, size: 10240)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !318, file: !280, line: 734, size: 10240, elements: !322)
!322 = !{!323, !327, !341, !345, !346, !347, !348, !349, !350, !358, !359, !360, !369, !370, !379, !380, !381, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424, !428, !442, !445, !500, !501, !502, !505, !509, !510, !513, !514, !515, !522, !523}
!323 = !DIDerivedType(tag: DW_TAG_member, scope: !321, file: !280, line: 739, baseType: !324, size: 512, align: 512)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !321, file: !280, line: 739, size: 512, align: 512, elements: !325)
!325 = !{!326}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !324, file: !280, line: 747, baseType: !152, size: 32)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !321, file: !280, line: 750, baseType: !328, size: 128, offset: 512)
!328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !329, line: 218, size: 128, elements: !330)
!329 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!330 = !{!331, !339, !340}
!331 = !DIDerivedType(tag: DW_TAG_member, scope: !328, file: !329, line: 219, baseType: !332, size: 32)
!332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !328, file: !329, line: 219, size: 32, elements: !333)
!333 = !{!334, !335}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !332, file: !329, line: 220, baseType: !132, size: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !332, file: !329, line: 221, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !329, line: 197, baseType: !337)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !329, line: 197, elements: !338)
!338 = !{}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !328, file: !329, line: 223, baseType: !7, size: 32, offset: 32)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !328, file: !329, line: 224, baseType: !96, size: 64, offset: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !321, file: !280, line: 752, baseType: !342, size: 64, offset: 640)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = !DISubroutineType(types: !344)
!344 = !{!252, !285, !252, !252, !252, !252}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !321, file: !280, line: 756, baseType: !252, size: 64, offset: 704)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !321, file: !280, line: 757, baseType: !252, size: 64, offset: 768)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !321, file: !280, line: 760, baseType: !252, size: 64, offset: 832)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !321, file: !280, line: 761, baseType: !252, size: 64, offset: 896)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !321, file: !280, line: 763, baseType: !252, size: 64, offset: 960)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !321, file: !280, line: 764, baseType: !351, size: 64, offset: 1024)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !287, line: 299, baseType: !353)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !287, line: 299, size: 64, elements: !354)
!354 = !{!355}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !353, file: !287, line: 299, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !357, line: 18, baseType: !252)
!357 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!358 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !321, file: !280, line: 773, baseType: !152, size: 32, offset: 1088)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !321, file: !280, line: 785, baseType: !152, size: 32, offset: 1120)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !321, file: !280, line: 795, baseType: !361, size: 64, offset: 1152)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !280, line: 726, size: 128, elements: !363)
!363 = !{!364, !368}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !362, file: !280, line: 727, baseType: !365, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !161, line: 23, baseType: !366)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !163, line: 31, baseType: !367)
!367 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !362, file: !280, line: 728, baseType: !46, size: 32, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !321, file: !280, line: 801, baseType: !252, size: 64, offset: 1216)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !321, file: !280, line: 804, baseType: !371, size: 64, offset: 1280)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !372, line: 13, baseType: !373)
!372 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!373 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !103, line: 181, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !103, line: 179, size: 64, elements: !375)
!375 = !{!376}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !374, file: !103, line: 180, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !161, line: 22, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !163, line: 30, baseType: !290)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !321, file: !280, line: 806, baseType: !46, size: 32, offset: 1344)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !321, file: !280, line: 808, baseType: !132, size: 32, offset: 1376)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !321, file: !280, line: 823, baseType: !382, size: 320, offset: 1408)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !383, line: 48, size: 320, elements: !384)
!383 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!384 = !{!385, !386, !387, !392, !394}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !382, file: !383, line: 49, baseType: !371, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !382, file: !383, line: 55, baseType: !371, size: 64, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !382, file: !383, line: 57, baseType: !388, size: 32, offset: 128)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !389, line: 15, size: 32, elements: !390)
!389 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!390 = !{!391}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !388, file: !389, line: 20, baseType: !152, size: 32)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !382, file: !383, line: 59, baseType: !393, size: 32, offset: 160)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !141, line: 23, baseType: !140)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !382, file: !383, line: 60, baseType: !102, size: 128, offset: 192)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !321, file: !280, line: 825, baseType: !102, size: 128, offset: 1728)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !321, file: !280, line: 845, baseType: !46, size: 32, offset: 1856)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !321, file: !280, line: 849, baseType: !252, size: 64, offset: 1920)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !321, file: !280, line: 850, baseType: !252, size: 64, offset: 1984)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !321, file: !280, line: 852, baseType: !252, size: 64, offset: 2048)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !321, file: !280, line: 853, baseType: !252, size: 64, offset: 2112)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !321, file: !280, line: 854, baseType: !373, size: 64, offset: 2176)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !321, file: !280, line: 855, baseType: !252, size: 64, offset: 2240)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !321, file: !280, line: 856, baseType: !252, size: 64, offset: 2304)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !321, file: !280, line: 857, baseType: !252, size: 64, offset: 2368)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !321, file: !280, line: 858, baseType: !252, size: 64, offset: 2432)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !321, file: !280, line: 865, baseType: !407, size: 32, offset: 2496)
!407 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !408, line: 69, baseType: !409)
!408 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !408, line: 64, size: 32, elements: !410)
!410 = !{!411}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !409, file: !408, line: 65, baseType: !7, size: 32)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !321, file: !280, line: 867, baseType: !132, size: 32, offset: 2528)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !321, file: !280, line: 869, baseType: !252, size: 64, offset: 2560)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !321, file: !280, line: 869, baseType: !252, size: 64, offset: 2624)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !321, file: !280, line: 869, baseType: !252, size: 64, offset: 2688)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !321, file: !280, line: 869, baseType: !252, size: 64, offset: 2752)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !321, file: !280, line: 870, baseType: !252, size: 64, offset: 2816)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !321, file: !280, line: 870, baseType: !252, size: 64, offset: 2880)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !321, file: !280, line: 870, baseType: !252, size: 64, offset: 2944)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !321, file: !280, line: 871, baseType: !252, size: 64, offset: 3008)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !321, file: !280, line: 871, baseType: !252, size: 64, offset: 3072)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !321, file: !280, line: 871, baseType: !252, size: 64, offset: 3136)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !321, file: !280, line: 871, baseType: !252, size: 64, offset: 3200)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !321, file: !280, line: 873, baseType: !425, size: 3328, offset: 3264)
!425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 3328, elements: !426)
!426 = !{!427}
!427 = !DISubrange(count: 52)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !321, file: !280, line: 875, baseType: !429, size: 1280, offset: 6592)
!429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !430, size: 1280, elements: !440)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !431, line: 22, size: 320, elements: !432)
!431 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!432 = !{!433, !434, !435, !436}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !430, file: !431, line: 23, baseType: !393, size: 32)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !430, file: !431, line: 24, baseType: !377, size: 64, offset: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !430, file: !431, line: 26, baseType: !102, size: 128, offset: 128)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !430, file: !431, line: 28, baseType: !437, size: 64, offset: 256)
!437 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !438, size: 64)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !161, line: 20, baseType: !439)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !163, line: 26, baseType: !46)
!440 = !{!441}
!441 = !DISubrange(count: 4)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !321, file: !280, line: 877, baseType: !443, size: 64, offset: 7872)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !280, line: 877, flags: DIFlagFwdDecl)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !321, file: !280, line: 880, baseType: !446, size: 1088, offset: 7936)
!446 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !447, line: 72, baseType: !448)
!447 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !447, line: 23, size: 1088, elements: !449)
!449 = !{!450, !451, !452, !453, !454, !457, !458, !466, !467, !494, !495, !496}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !448, file: !447, line: 28, baseType: !365, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !448, file: !447, line: 38, baseType: !373, size: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !448, file: !447, line: 40, baseType: !252, size: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !448, file: !447, line: 43, baseType: !382, size: 320, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !448, file: !447, line: 44, baseType: !455, size: 64, offset: 512)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !447, line: 44, flags: DIFlagFwdDecl)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !448, file: !447, line: 48, baseType: !252, size: 64, offset: 576)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !448, file: !447, line: 59, baseType: !459, size: 256, offset: 640)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !460, line: 66, size: 256, elements: !461)
!460 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!461 = !{!462, !463, !464, !465}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !459, file: !460, line: 67, baseType: !371, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !459, file: !460, line: 68, baseType: !393, size: 32, offset: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !459, file: !460, line: 70, baseType: !388, size: 32, offset: 96)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !459, file: !460, line: 72, baseType: !102, size: 128, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !448, file: !447, line: 60, baseType: !96, size: 64, offset: 896)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !448, file: !447, line: 61, baseType: !468, size: 64, offset: 960)
!468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !470)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !471, line: 13, size: 1216, elements: !472)
!471 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!472 = !{!473, !474, !475, !476, !477, !478, !479, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !470, file: !471, line: 14, baseType: !96, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !470, file: !471, line: 15, baseType: !252, size: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !470, file: !471, line: 17, baseType: !252, size: 64, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !470, file: !471, line: 17, baseType: !252, size: 64, offset: 192)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !470, file: !471, line: 18, baseType: !252, size: 64, offset: 256)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !470, file: !471, line: 18, baseType: !252, size: 64, offset: 320)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !470, file: !471, line: 19, baseType: !480, size: 64, offset: 384)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !470, file: !471, line: 21, baseType: !238, size: 64, offset: 448)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !470, file: !471, line: 23, baseType: !238, size: 64, offset: 512)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !470, file: !471, line: 24, baseType: !238, size: 64, offset: 576)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !470, file: !471, line: 25, baseType: !238, size: 64, offset: 640)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !470, file: !471, line: 26, baseType: !238, size: 64, offset: 704)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !470, file: !471, line: 27, baseType: !238, size: 64, offset: 768)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !470, file: !471, line: 28, baseType: !238, size: 64, offset: 832)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !470, file: !471, line: 29, baseType: !238, size: 64, offset: 896)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !470, file: !471, line: 30, baseType: !238, size: 64, offset: 960)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !470, file: !471, line: 31, baseType: !238, size: 64, offset: 1024)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !470, file: !471, line: 32, baseType: !238, size: 64, offset: 1088)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !470, file: !471, line: 33, baseType: !238, size: 64, offset: 1152)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !448, file: !447, line: 63, baseType: !152, size: 32, offset: 1024)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !448, file: !447, line: 69, baseType: !170, size: 16, offset: 1056)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !448, file: !447, line: 70, baseType: !497, size: 16, offset: 1072)
!497 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !161, line: 18, baseType: !498)
!498 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !163, line: 23, baseType: !499)
!499 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !321, file: !280, line: 882, baseType: !252, size: 64, offset: 9024)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !321, file: !280, line: 885, baseType: !132, size: 32, offset: 9088)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !321, file: !280, line: 886, baseType: !503, size: 64, offset: 9152)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !280, line: 732, flags: DIFlagFwdDecl)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !321, file: !280, line: 901, baseType: !506, size: 64, offset: 9216)
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !508, line: 18, flags: DIFlagFwdDecl)
!508 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!509 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !321, file: !280, line: 904, baseType: !285, size: 64, offset: 9280)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !321, file: !280, line: 906, baseType: !511, size: 64, offset: 9344)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !280, line: 906, flags: DIFlagFwdDecl)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !321, file: !280, line: 930, baseType: !152, size: 32, offset: 9408)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !321, file: !280, line: 933, baseType: !152, size: 32, offset: 9440)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !321, file: !280, line: 935, baseType: !516, size: 64, offset: 9472)
!516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !517, line: 103, size: 64, elements: !518)
!517 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!518 = !{!519}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !516, file: !517, line: 104, baseType: !520, size: 64)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !517, line: 101, flags: DIFlagFwdDecl)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !321, file: !280, line: 940, baseType: !371, size: 64, offset: 9536)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !321, file: !280, line: 942, baseType: !524, size: 256, offset: 9600)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !525, line: 98, size: 256, elements: !526)
!525 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!526 = !{!527, !528, !529}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !524, file: !525, line: 99, baseType: !371, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !524, file: !525, line: 100, baseType: !102, size: 128, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !524, file: !525, line: 101, baseType: !530, size: 64, offset: 192)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !525, line: 21, baseType: !531)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DISubroutineType(types: !533)
!533 = !{null, !534}
!534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !318, file: !280, line: 986, baseType: !536, offset: 10240)
!536 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, elements: !537)
!537 = !{!538}
!538 = !DISubrange(count: -1)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !297, file: !280, line: 640, baseType: !540, size: 64, offset: 192)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !287, line: 297, baseType: !541)
!541 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !287, line: 297, size: 64, elements: !542)
!542 = !{!543}
!543 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !541, file: !287, line: 297, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !357, line: 19, baseType: !252)
!545 = !DIDerivedType(tag: DW_TAG_member, scope: !297, file: !280, line: 646, baseType: !546, size: 64, offset: 256)
!546 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !297, file: !280, line: 646, size: 64, elements: !547)
!547 = !{!548, !551}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !546, file: !280, line: 647, baseType: !549, size: 64)
!549 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !550)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !280, line: 542, baseType: !252)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !546, file: !280, line: 648, baseType: !550, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !297, file: !280, line: 666, baseType: !46, size: 32, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !297, file: !280, line: 667, baseType: !554, size: 64, offset: 384)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !280, line: 579, size: 320, elements: !556)
!556 = !{!557}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !555, file: !280, line: 580, baseType: !382, size: 320)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !297, file: !280, line: 670, baseType: !559, size: 8, offset: 448)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !103, line: 35, baseType: !560)
!560 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !297, file: !280, line: 681, baseType: !562, size: 256, offset: 512)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !297, file: !280, line: 678, size: 256, elements: !563)
!563 = !{!564, !572}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !562, file: !280, line: 679, baseType: !565, size: 192, align: 64)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !566, line: 5, size: 192, align: 64, elements: !567)
!566 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!567 = !{!568, !569, !571}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !565, file: !566, line: 6, baseType: !252, size: 64)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !565, file: !566, line: 7, baseType: !570, size: 64, offset: 64)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !565, file: !566, line: 8, baseType: !570, size: 64, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !562, file: !280, line: 680, baseType: !252, size: 64, offset: 192)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !297, file: !280, line: 689, baseType: !102, size: 128, offset: 768)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !297, file: !280, line: 691, baseType: !575, size: 64, offset: 896)
!575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!576 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !280, line: 691, flags: DIFlagFwdDecl)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !297, file: !280, line: 694, baseType: !578, size: 64, offset: 960)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !580)
!580 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !280, line: 694, flags: DIFlagFwdDecl)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !297, file: !280, line: 697, baseType: !252, size: 64, offset: 1024)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !297, file: !280, line: 699, baseType: !285, size: 64, offset: 1088)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !297, file: !280, line: 700, baseType: !96, size: 64, offset: 1152)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !297, file: !280, line: 711, baseType: !371, size: 64, offset: 1216)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !297, file: !280, line: 717, baseType: !586, size: 64, offset: 1280)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !588, line: 54, flags: DIFlagFwdDecl)
!588 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!589 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !297, file: !280, line: 722, baseType: !590, offset: 1344)
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !280, line: 570, elements: !338)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !257, file: !228, line: 90, baseType: !592, size: 64, offset: 192)
!592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !257, file: !228, line: 91, baseType: !594, size: 64, offset: 256)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !218, file: !118, line: 120, baseType: !596, size: 64, offset: 192)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DISubroutineType(types: !598)
!598 = !{!599, !185}
!599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !601)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !14, line: 39, size: 384, elements: !602)
!602 = !{!603, !604, !608, !612, !618, !622}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !601, file: !14, line: 40, baseType: !13, size: 32)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !601, file: !14, line: 41, baseType: !605, size: 64, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DISubroutineType(types: !607)
!607 = !{!559}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !601, file: !14, line: 42, baseType: !609, size: 64, offset: 128)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DISubroutineType(types: !611)
!611 = !{!96}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !601, file: !14, line: 43, baseType: !613, size: 64, offset: 192)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DISubroutineType(types: !615)
!615 = !{!480, !616}
!616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !617, size: 64)
!617 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !14, line: 19, flags: DIFlagFwdDecl)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !601, file: !14, line: 44, baseType: !619, size: 64, offset: 256)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!480}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !601, file: !14, line: 45, baseType: !623, size: 64, offset: 320)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{null, !96}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !218, file: !118, line: 121, baseType: !627, size: 64, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!480, !185}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !218, file: !118, line: 122, baseType: !631, size: 64, offset: 320)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = !DISubroutineType(types: !633)
!633 = !{null, !185, !634, !641}
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !508, line: 23, baseType: !636)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !508, line: 21, size: 32, elements: !637)
!637 = !{!638}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !636, file: !508, line: 22, baseType: !639, size: 32)
!639 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !103, line: 37, baseType: !640)
!640 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !236, line: 49, baseType: !7)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !508, line: 28, baseType: !643)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !508, line: 26, size: 32, elements: !644)
!644 = !{!645}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !643, file: !508, line: 27, baseType: !646, size: 32)
!646 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !103, line: 38, baseType: !647)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !236, line: 50, baseType: !7)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !117, file: !118, line: 70, baseType: !649, size: 64, offset: 384)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !651, line: 190, size: 1152, elements: !652)
!651 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!652 = !{!653, !654, !655, !656, !657, !658, !659, !660, !754, !755, !756, !757, !758, !761}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !650, file: !651, line: 191, baseType: !152, size: 32)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !650, file: !651, line: 192, baseType: !152, size: 32, offset: 32)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !650, file: !651, line: 202, baseType: !649, size: 64, offset: 64)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !650, file: !651, line: 203, baseType: !121, size: 64, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !650, file: !651, line: 205, baseType: !565, size: 192, align: 64, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !650, file: !651, line: 207, baseType: !480, size: 64, offset: 384)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !650, file: !651, line: 208, baseType: !7, size: 32, offset: 448)
!660 = !DIDerivedType(tag: DW_TAG_member, scope: !650, file: !651, line: 209, baseType: !661, size: 256, offset: 512)
!661 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !650, file: !651, line: 209, size: 256, elements: !662)
!662 = !{!663, !675, !679}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !661, file: !651, line: 210, baseType: !664, size: 256)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !651, line: 153, size: 256, elements: !665)
!665 = !{!666, !667, !671, !674}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !664, file: !651, line: 154, baseType: !252, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !664, file: !651, line: 156, baseType: !668, size: 64, offset: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !566, line: 12, size: 64, elements: !669)
!669 = !{!670}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !668, file: !566, line: 13, baseType: !570, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !664, file: !651, line: 162, baseType: !672, size: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !651, line: 162, flags: DIFlagFwdDecl)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !664, file: !651, line: 167, baseType: !252, size: 64, offset: 192)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !661, file: !651, line: 211, baseType: !676, size: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !651, line: 170, size: 64, elements: !677)
!677 = !{!678}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !676, file: !651, line: 171, baseType: !649, size: 64)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !661, file: !651, line: 212, baseType: !680, size: 256)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !651, line: 174, size: 256, elements: !681)
!681 = !{!682, !749, !752, !753}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !680, file: !651, line: 175, baseType: !683, size: 64)
!683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !684, size: 64)
!684 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !685)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !651, line: 271, size: 768, elements: !686)
!686 = !{!687, !709, !713, !717, !722, !726, !730, !734, !735, !736, !737, !745}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !685, file: !651, line: 276, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = !DISubroutineType(types: !690)
!690 = !{!46, !691}
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !651, line: 251, size: 1216, elements: !693)
!693 = !{!694, !695, !696, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708}
!694 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !692, file: !651, line: 253, baseType: !649, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !692, file: !651, line: 254, baseType: !285, size: 64, offset: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !692, file: !651, line: 255, baseType: !697, size: 64, offset: 128)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!698 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !588, line: 66, flags: DIFlagFwdDecl)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !692, file: !651, line: 256, baseType: !96, size: 64, offset: 192)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !692, file: !651, line: 259, baseType: !459, size: 256, offset: 256)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !692, file: !651, line: 260, baseType: !459, size: 256, offset: 512)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !692, file: !651, line: 261, baseType: !46, size: 32, offset: 768)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !692, file: !651, line: 262, baseType: !102, size: 128, offset: 832)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !692, file: !651, line: 263, baseType: !202, size: 64, offset: 960)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !692, file: !651, line: 265, baseType: !249, size: 64, offset: 1024)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !692, file: !651, line: 266, baseType: !559, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !692, file: !651, line: 267, baseType: !559, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !692, file: !651, line: 268, baseType: !578, size: 64, offset: 1152)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !685, file: !651, line: 277, baseType: !710, size: 64, offset: 64)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DISubroutineType(types: !712)
!712 = !{null, !691}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !685, file: !651, line: 290, baseType: !714, size: 64, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!46, !697, !96}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !685, file: !651, line: 292, baseType: !718, size: 64, offset: 192)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!96, !697, !721}
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !685, file: !651, line: 293, baseType: !723, size: 64, offset: 256)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = !DISubroutineType(types: !725)
!725 = !{!96, !697, !96, !721}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !685, file: !651, line: 294, baseType: !727, size: 64, offset: 320)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{null, !697, !96}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !685, file: !651, line: 296, baseType: !731, size: 64, offset: 384)
!731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !732, size: 64)
!732 = !DISubroutineType(types: !733)
!733 = !{!234, !691, !202, !249, !288}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !685, file: !651, line: 306, baseType: !249, size: 64, offset: 448)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !685, file: !651, line: 313, baseType: !559, size: 8, offset: 512)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !685, file: !651, line: 314, baseType: !731, size: 64, offset: 576)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !685, file: !651, line: 317, baseType: !738, size: 64, offset: 640)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{!741, !691, !743}
!741 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !742, line: 59, baseType: !7)
!742 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !651, line: 31, flags: DIFlagFwdDecl)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !685, file: !651, line: 320, baseType: !746, size: 64, offset: 704)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !747, size: 64)
!747 = !DISubroutineType(types: !748)
!748 = !{!46, !691, !296}
!749 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !680, file: !651, line: 176, baseType: !750, size: 64, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !651, line: 35, flags: DIFlagFwdDecl)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !680, file: !651, line: 177, baseType: !288, size: 64, offset: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !680, file: !651, line: 178, baseType: !649, size: 64, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !650, file: !651, line: 215, baseType: !96, size: 64, offset: 768)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !650, file: !651, line: 221, baseType: !365, size: 64, offset: 832)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !650, file: !651, line: 223, baseType: !172, size: 16, offset: 896)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !650, file: !651, line: 224, baseType: !244, size: 16, offset: 912)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !650, file: !651, line: 225, baseType: !759, size: 64, offset: 960)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !760, size: 64)
!760 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !651, line: 36, flags: DIFlagFwdDecl)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !650, file: !651, line: 227, baseType: !308, size: 128, align: 64, offset: 1024)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !117, file: !118, line: 71, baseType: !763, size: 32, offset: 448)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !764, line: 19, size: 32, elements: !765)
!764 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!765 = !{!766}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !763, file: !764, line: 20, baseType: !767, size: 32)
!767 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !768, line: 113, baseType: !769)
!768 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !768, line: 111, size: 32, elements: !770)
!770 = !{!771}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !769, file: !768, line: 112, baseType: !152, size: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !117, file: !118, line: 73, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !117, file: !118, line: 74, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !117, file: !118, line: 75, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !117, file: !118, line: 76, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !117, file: !118, line: 77, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !114, file: !6, line: 47, baseType: !97, size: 64, offset: 512)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !114, file: !6, line: 48, baseType: !125, size: 64, offset: 576)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !114, file: !6, line: 49, baseType: !780, size: 64, offset: 640)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !6, line: 49, flags: DIFlagFwdDecl)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !114, file: !6, line: 50, baseType: !783, size: 64, offset: 704)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !785, line: 26, size: 256, elements: !786)
!785 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!786 = !{!787, !788}
!787 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !784, file: !785, line: 27, baseType: !7, size: 32)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !784, file: !785, line: 28, baseType: !789, size: 192, offset: 64)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !790, line: 43, size: 192, elements: !791)
!790 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!791 = !{!792, !793}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !789, file: !790, line: 44, baseType: !393, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !789, file: !790, line: 45, baseType: !102, size: 128, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !98, file: !6, line: 418, baseType: !795, size: 64, offset: 1408)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !6, line: 53, size: 448, elements: !797)
!797 = !{!798, !799, !804, !808, !812, !816}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !796, file: !6, line: 54, baseType: !240, size: 128)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !796, file: !6, line: 55, baseType: !800, size: 64, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!801 = !DISubroutineType(types: !802)
!802 = !{!234, !795, !803, !202}
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !114, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !796, file: !6, line: 57, baseType: !805, size: 64, offset: 192)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DISubroutineType(types: !807)
!807 = !{!234, !795, !803, !121, !249}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !796, file: !6, line: 59, baseType: !809, size: 64, offset: 256)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !810, size: 64)
!810 = !DISubroutineType(types: !811)
!811 = !{null, !97, !121}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !796, file: !6, line: 60, baseType: !813, size: 64, offset: 320)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !814, size: 64)
!814 = !DISubroutineType(types: !815)
!815 = !{!46, !97}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !796, file: !6, line: 61, baseType: !817, size: 64, offset: 384)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DISubroutineType(types: !819)
!819 = !{null, !97}
!820 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !98, file: !6, line: 419, baseType: !121, size: 64, offset: 1472)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !98, file: !6, line: 420, baseType: !121, size: 64, offset: 1536)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !98, file: !6, line: 421, baseType: !125, size: 64, offset: 1600)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !98, file: !6, line: 424, baseType: !824, size: 64, offset: 1664)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !826)
!826 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !6, line: 424, flags: DIFlagFwdDecl)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !98, file: !6, line: 425, baseType: !828, size: 64, offset: 1728)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !438)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !98, file: !6, line: 426, baseType: !7, size: 32, offset: 1792)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !98, file: !6, line: 435, baseType: !459, size: 256, offset: 1856)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !98, file: !6, line: 437, baseType: !833, size: 64, offset: 2112)
!833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !834, size: 64)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !835, line: 69, size: 320, elements: !836)
!835 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!836 = !{!837, !838, !839, !856, !858, !862, !863}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !834, file: !835, line: 70, baseType: !121, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !834, file: !835, line: 71, baseType: !97, size: 64, offset: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !834, file: !835, line: 72, baseType: !840, size: 64, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !842)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !835, line: 47, size: 256, elements: !843)
!843 = !{!844, !845, !851, !855}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !842, file: !835, line: 49, baseType: !7, size: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !842, file: !835, line: 51, baseType: !846, size: 64, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DISubroutineType(types: !848)
!848 = !{!46, !121, !849}
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !834)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !842, file: !835, line: 53, baseType: !852, size: 64, offset: 128)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DISubroutineType(types: !854)
!854 = !{!46, !202, !849}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !842, file: !835, line: 55, baseType: !623, size: 64, offset: 192)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !834, file: !835, line: 73, baseType: !857, size: 16, offset: 192)
!857 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !834, file: !835, line: 74, baseType: !859, size: 8, offset: 208)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !161, line: 16, baseType: !860)
!860 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !163, line: 20, baseType: !861)
!861 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !834, file: !835, line: 75, baseType: !160, size: 8, offset: 216)
!863 = !DIDerivedType(tag: DW_TAG_member, scope: !834, file: !835, line: 76, baseType: !864, size: 64, offset: 256)
!864 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !834, file: !835, line: 76, size: 64, elements: !865)
!865 = !{!866, !867, !874}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !864, file: !835, line: 77, baseType: !96, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !864, file: !835, line: 78, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !870)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !835, line: 86, size: 128, elements: !871)
!871 = !{!872, !873}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !870, file: !835, line: 87, baseType: !7, size: 32)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !870, file: !835, line: 88, baseType: !202, size: 64, offset: 64)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !864, file: !835, line: 79, baseType: !875, size: 64)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !877)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !835, line: 92, size: 256, elements: !878)
!878 = !{!879, !880, !881, !883, !884}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !877, file: !835, line: 94, baseType: !7, size: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !877, file: !835, line: 95, baseType: !7, size: 32, offset: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !877, file: !835, line: 96, baseType: !882, size: 64, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !877, file: !835, line: 97, baseType: !840, size: 64, offset: 128)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !877, file: !835, line: 98, baseType: !96, size: 64, offset: 192)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !98, file: !6, line: 438, baseType: !7, size: 32, offset: 2176)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !98, file: !6, line: 441, baseType: !7, size: 32, offset: 2208)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !98, file: !6, line: 442, baseType: !824, size: 64, offset: 2240)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !98, file: !6, line: 443, baseType: !828, size: 64, offset: 2304)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !98, file: !6, line: 444, baseType: !559, size: 8, offset: 2368)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !98, file: !6, line: 451, baseType: !559, size: 8, offset: 2376)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !98, file: !6, line: 454, baseType: !7, size: 32, offset: 2400)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !98, file: !6, line: 455, baseType: !893, size: 64, offset: 2432)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !894, size: 64)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !895, line: 23, size: 96, elements: !896)
!895 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!896 = !{!897, !898, !899}
!897 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !894, file: !895, line: 24, baseType: !46, size: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !894, file: !895, line: 24, baseType: !46, size: 32, offset: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !894, file: !895, line: 24, baseType: !46, size: 32, offset: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !98, file: !6, line: 458, baseType: !901, size: 64, offset: 2496)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DISubroutineType(types: !903)
!903 = !{!46}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !98, file: !6, line: 460, baseType: !905, size: 4032, align: 512, offset: 2560)
!905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !906, size: 4032, elements: !922)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !6, line: 362, size: 576, elements: !907)
!907 = !{!908, !909, !910}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !906, file: !6, line: 363, baseType: !96, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !906, file: !6, line: 364, baseType: !7, size: 32, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !906, file: !6, line: 367, baseType: !911, size: 448, offset: 128)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !6, line: 319, size: 448, elements: !912)
!912 = !{!913, !914}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !911, file: !6, line: 320, baseType: !97, size: 64)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !911, file: !6, line: 321, baseType: !915, size: 384, offset: 64)
!915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !916, line: 40, size: 384, elements: !917)
!916 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!917 = !{!918}
!918 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !915, file: !916, line: 41, baseType: !919, size: 384, align: 64)
!919 = !DICompositeType(tag: DW_TAG_array_type, baseType: !565, size: 384, align: 64, elements: !920)
!920 = !{!921}
!921 = !DISubrange(count: 2)
!922 = !{!923}
!923 = !DISubrange(count: 7)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !98, file: !6, line: 463, baseType: !925, size: 192, offset: 6592)
!925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !926, line: 8, size: 192, elements: !927)
!926 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!927 = !{!928, !929, !931}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !925, file: !926, line: 10, baseType: !7, size: 32)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !925, file: !926, line: 11, baseType: !930, size: 64, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !46, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !925, file: !926, line: 12, baseType: !932, size: 64, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !934, line: 59, size: 48, elements: !935)
!934 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!935 = !{!936, !937, !938, !939, !940, !941}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !933, file: !934, line: 60, baseType: !497, size: 16)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !933, file: !934, line: 61, baseType: !497, size: 16, offset: 16)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !933, file: !934, line: 63, baseType: !7, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !933, file: !934, line: 64, baseType: !7, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !933, file: !934, line: 65, baseType: !7, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !933, file: !934, line: 66, baseType: !7, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !98, file: !6, line: 465, baseType: !252, size: 64, offset: 6784)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !98, file: !6, line: 469, baseType: !7, size: 32, offset: 6848)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !98, file: !6, line: 470, baseType: !102, size: 128, offset: 6912)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !98, file: !6, line: 471, baseType: !946, size: 64, offset: 7040)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !948, line: 33, size: 96, elements: !949)
!948 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!949 = !{!950, !951, !952, !953}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !947, file: !948, line: 37, baseType: !46, size: 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !947, file: !948, line: 43, baseType: !46, size: 32, offset: 32)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !947, file: !948, line: 45, baseType: !172, size: 16, offset: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !947, file: !948, line: 47, baseType: !172, size: 16, offset: 80)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !98, file: !6, line: 476, baseType: !955, size: 64, offset: 7104)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !6, line: 378, size: 256, elements: !957)
!957 = !{!958, !975, !976, !977}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !956, file: !6, line: 379, baseType: !959, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !960, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !961, line: 204, baseType: !962)
!961 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !961, line: 197, size: 192, elements: !963)
!963 = !{!964, !967, !968, !969, !971, !973}
!964 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !962, file: !961, line: 198, baseType: !965, size: 32)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !961, line: 21, baseType: !966)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !163, line: 27, baseType: !7)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !962, file: !961, line: 199, baseType: !164, size: 8, offset: 32)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !962, file: !961, line: 200, baseType: !164, size: 8, offset: 40)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !962, file: !961, line: 201, baseType: !970, size: 16, offset: 48)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !961, line: 17, baseType: !171)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !962, file: !961, line: 202, baseType: !972, size: 64, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !961, line: 16, baseType: !366)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !962, file: !961, line: 203, baseType: !974, size: 64, offset: 128)
!974 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !961, line: 22, baseType: !366)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !956, file: !6, line: 380, baseType: !7, size: 32, offset: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !956, file: !6, line: 381, baseType: !202, size: 64, offset: 128)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !956, file: !6, line: 382, baseType: !202, size: 64, offset: 192)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !98, file: !6, line: 477, baseType: !956, size: 256, offset: 7168)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !98, file: !6, line: 480, baseType: !980, size: 64, offset: 7424)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !6, line: 480, flags: DIFlagFwdDecl)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !98, file: !6, line: 483, baseType: !983, size: 64, offset: 7488)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !6, line: 483, flags: DIFlagFwdDecl)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !98, file: !6, line: 488, baseType: !202, size: 64, offset: 7552)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !98, file: !6, line: 492, baseType: !96, size: 64, offset: 7616)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !98, file: !6, line: 493, baseType: !7, size: 32, offset: 7680)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !98, file: !6, line: 495, baseType: !96, size: 64, offset: 7744)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !98, file: !6, line: 496, baseType: !7, size: 32, offset: 7808)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !98, file: !6, line: 499, baseType: !7, size: 32, offset: 7840)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !98, file: !6, line: 500, baseType: !992, size: 64, offset: 7872)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !994, line: 45, baseType: !995)
!994 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !46)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !98, file: !6, line: 503, baseType: !7, size: 32, offset: 7936)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !98, file: !6, line: 504, baseType: !998, size: 64, offset: 8000)
!998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !999, size: 64)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1001, line: 96, size: 192, elements: !1002)
!1001 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1002 = !{!1003, !1004, !1065, !1068}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1000, file: !1001, line: 97, baseType: !7, size: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1000, file: !1001, line: 98, baseType: !1005, size: 64, offset: 64)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1001, line: 24, size: 3072, elements: !1007)
!1007 = !{!1008, !1010, !1011, !1012, !1013, !1027, !1028, !1029, !1030, !1049, !1050, !1051, !1062, !1063, !1064}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1006, file: !1001, line: 26, baseType: !1009, size: 128)
!1009 = !DICompositeType(tag: DW_TAG_array_type, baseType: !371, size: 128, elements: !920)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1006, file: !1001, line: 27, baseType: !1009, size: 128, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1006, file: !1001, line: 28, baseType: !46, size: 32, offset: 256)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1006, file: !1001, line: 31, baseType: !132, size: 32, align: 512, offset: 512)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1006, file: !1001, line: 32, baseType: !1014, size: 960, offset: 576)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1015, line: 206, size: 960, elements: !1016)
!1015 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1016 = !{!1017, !1018, !1021, !1023, !1024, !1026}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1014, file: !1015, line: 207, baseType: !311, size: 64)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1014, file: !1015, line: 208, baseType: !1019, size: 256, offset: 64)
!1019 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1020, size: 256, elements: !440)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1014, file: !1015, line: 209, baseType: !1022, size: 256, offset: 320)
!1022 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 256, elements: !440)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1014, file: !1015, line: 213, baseType: !238, size: 64, offset: 576)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1014, file: !1015, line: 215, baseType: !1025, size: 256, offset: 640)
!1025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !238, size: 256, elements: !440)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1014, file: !1015, line: 216, baseType: !160, size: 8, offset: 896)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1006, file: !1001, line: 33, baseType: !252, size: 64, offset: 1536)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1006, file: !1001, line: 34, baseType: !252, size: 64, offset: 1600)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1006, file: !1001, line: 35, baseType: !559, size: 8, offset: 1664)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1006, file: !1001, line: 36, baseType: !1031, size: 320, offset: 1728)
!1031 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1032, line: 11, size: 320, elements: !1033)
!1032 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1033 = !{!1034, !1041, !1042, !1047}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1031, file: !1032, line: 16, baseType: !1035, size: 128)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !103, line: 198, size: 128, elements: !1036)
!1036 = !{!1037, !1039}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1035, file: !103, line: 199, baseType: !1038, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1035, file: !103, line: 199, baseType: !1040, size: 64, offset: 64)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1031, file: !1032, line: 17, baseType: !252, size: 64, offset: 128)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1031, file: !1032, line: 18, baseType: !1043, size: 64, offset: 192)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DISubroutineType(types: !1045)
!1045 = !{null, !1046}
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1031, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1031, file: !1032, line: 19, baseType: !1048, size: 32, offset: 256)
!1048 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !161, line: 21, baseType: !966)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1006, file: !1001, line: 37, baseType: !524, size: 256, offset: 2048)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1006, file: !1001, line: 38, baseType: !308, size: 128, align: 64, offset: 2304)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1006, file: !1001, line: 39, baseType: !1052, size: 64, offset: 2432)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1001, line: 49, size: 768, elements: !1054)
!1054 = !{!1055, !1056, !1057, !1058, !1059, !1060, !1061}
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1053, file: !1001, line: 50, baseType: !132, size: 32)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1053, file: !1001, line: 51, baseType: !1022, size: 256, offset: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1053, file: !1001, line: 53, baseType: !1022, size: 256, offset: 320)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1053, file: !1001, line: 54, baseType: !252, size: 64, offset: 576)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1053, file: !1001, line: 55, baseType: !1052, size: 64, offset: 640)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1053, file: !1001, line: 56, baseType: !46, size: 32, offset: 704)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1053, file: !1001, line: 57, baseType: !46, size: 32, offset: 736)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1006, file: !1001, line: 40, baseType: !252, size: 64, offset: 2496)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1006, file: !1001, line: 42, baseType: !46, size: 32, offset: 2560)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1006, file: !1001, line: 43, baseType: !999, size: 64, offset: 2624)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1000, file: !1001, line: 99, baseType: !1066, offset: 128)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1067, line: 211, elements: !338)
!1067 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1000, file: !1001, line: 100, baseType: !1069, size: 64, offset: 128)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1001, line: 63, size: 3008, elements: !1071)
!1071 = !{!1072, !1073, !1075, !1076, !1077, !1078, !1079, !1080, !1081, !1082, !1083, !1084, !1085, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1103}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1070, file: !1001, line: 64, baseType: !1052, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1070, file: !1001, line: 65, baseType: !1074, size: 192, offset: 64)
!1074 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1052, size: 192, elements: !203)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1070, file: !1001, line: 67, baseType: !46, size: 32, offset: 256)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1070, file: !1001, line: 68, baseType: !459, size: 256, offset: 320)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1070, file: !1001, line: 69, baseType: !132, size: 32, offset: 576)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1070, file: !1001, line: 70, baseType: !459, size: 256, offset: 640)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1070, file: !1001, line: 71, baseType: !252, size: 64, offset: 896)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1070, file: !1001, line: 72, baseType: !252, size: 64, offset: 960)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1070, file: !1001, line: 73, baseType: !252, size: 64, offset: 1024)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1070, file: !1001, line: 74, baseType: !252, size: 64, offset: 1088)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1070, file: !1001, line: 75, baseType: !252, size: 64, offset: 1152)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1070, file: !1001, line: 76, baseType: !252, size: 64, offset: 1216)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1070, file: !1001, line: 77, baseType: !252, size: 64, offset: 1280)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1070, file: !1001, line: 78, baseType: !252, size: 64, offset: 1344)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1070, file: !1001, line: 79, baseType: !559, size: 8, offset: 1408)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1070, file: !1001, line: 80, baseType: !252, size: 64, offset: 1472)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1070, file: !1001, line: 81, baseType: !459, size: 256, offset: 1536)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1070, file: !1001, line: 82, baseType: !784, size: 256, offset: 1792)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1070, file: !1001, line: 84, baseType: !152, size: 32, offset: 2048)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1070, file: !1001, line: 87, baseType: !252, size: 64, offset: 2112)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1070, file: !1001, line: 88, baseType: !252, size: 64, offset: 2176)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1070, file: !1001, line: 89, baseType: !1095, size: 704, offset: 2240)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !525, line: 111, size: 704, elements: !1096)
!1096 = !{!1097, !1098, !1099, !1102}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1095, file: !525, line: 112, baseType: !524, size: 256)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1095, file: !525, line: 113, baseType: !1031, size: 320, offset: 256)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1095, file: !525, line: 116, baseType: !1100, size: 64, offset: 576)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !525, line: 18, flags: DIFlagFwdDecl)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1095, file: !525, line: 117, baseType: !46, size: 32, offset: 640)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1070, file: !1001, line: 90, baseType: !999, size: 64, offset: 2944)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !98, file: !6, line: 515, baseType: !1105, size: 64, offset: 8064)
!1105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1106, size: 64)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1107, line: 117, size: 128, elements: !1108)
!1107 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1108 = !{!1109, !1110, !1111}
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1106, file: !1107, line: 118, baseType: !438, size: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1106, file: !1107, line: 119, baseType: !438, size: 32, offset: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1106, file: !1107, line: 120, baseType: !238, size: 64, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !98, file: !6, line: 516, baseType: !7, size: 32, offset: 8128)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !98, file: !6, line: 519, baseType: !7, size: 32, offset: 8160)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !98, file: !6, line: 520, baseType: !1115, size: 64, offset: 8192)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !98, file: !6, line: 523, baseType: !1117, size: 64, offset: 8256)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !6, line: 523, flags: DIFlagFwdDecl)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !98, file: !6, line: 524, baseType: !7, size: 32, offset: 8320)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !98, file: !6, line: 525, baseType: !1122, size: 64, offset: 8384)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !6, line: 525, flags: DIFlagFwdDecl)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !98, file: !6, line: 526, baseType: !7, size: 32, offset: 8448)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !98, file: !6, line: 533, baseType: !96, size: 64, offset: 8512)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !98, file: !6, line: 534, baseType: !7, size: 32, offset: 8576)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !98, file: !6, line: 535, baseType: !1129, size: 64, offset: 8640)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !98, file: !6, line: 536, baseType: !7, size: 32, offset: 8704)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !98, file: !6, line: 539, baseType: !46, size: 32, offset: 8736)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !98, file: !6, line: 540, baseType: !1133, size: 64, offset: 8768)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1135, line: 32, size: 64, elements: !1136)
!1135 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1136 = !{!1137, !1138}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1134, file: !1135, line: 33, baseType: !438, size: 32)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1134, file: !1135, line: 34, baseType: !438, size: 32, offset: 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !98, file: !6, line: 563, baseType: !102, size: 128, offset: 8832)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !98, file: !6, line: 565, baseType: !102, size: 128, offset: 8960)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !98, file: !6, line: 568, baseType: !1142, size: 64, offset: 9088)
!1142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1143, size: 64)
!1143 = !DISubroutineType(types: !1144)
!1144 = !{null}
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !98, file: !6, line: 570, baseType: !152, size: 32, offset: 9152)
!1146 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !103, line: 154, baseType: !7)
!1147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1148, size: 64)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !1149, line: 367, size: 11200, elements: !1150)
!1149 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "745f031e2ee183d2395bab1bfe3ce66b")
!1150 = !{!1151, !1152, !1153, !1156, !1707, !1708, !1709, !1718, !1736, !1815, !1845, !1869, !1890, !1897, !1906, !1938, !1952, !1956, !1957, !1958, !1959, !1960, !1961, !1962}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "pld_crc", scope: !1148, file: !1149, line: 368, baseType: !1048, size: 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !1148, file: !1149, line: 369, baseType: !46, size: 32, offset: 32)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !1148, file: !1149, line: 370, baseType: !1154, size: 64, offset: 64)
!1154 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !1155, line: 424, baseType: !96)
!1155 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1148, file: !1149, line: 371, baseType: !1157, size: 512, offset: 128)
!1157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1158, line: 41, size: 512, elements: !1159)
!1158 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!1159 = !{!1160, !1162, !1703, !1704, !1705, !1706}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1157, file: !1158, line: 42, baseType: !1161, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1157, file: !1158, line: 43, baseType: !1163, size: 64, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1165)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1158, line: 125, size: 1408, elements: !1166)
!1166 = !{!1167, !1171, !1175, !1181, !1633, !1634, !1638, !1642, !1646, !1650, !1654, !1655, !1659, !1663, !1667, !1678, !1679, !1680, !1681, !1691, !1695, !1699}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1165, file: !1158, line: 126, baseType: !1168, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DISubroutineType(types: !1170)
!1170 = !{!1161, !1161}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1165, file: !1158, line: 127, baseType: !1172, size: 64, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DISubroutineType(types: !1174)
!1174 = !{null, !1161}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1165, file: !1158, line: 128, baseType: !1176, size: 64, offset: 128)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DISubroutineType(types: !1178)
!1178 = !{!559, !1179}
!1179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1180, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1157)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1165, file: !1158, line: 129, baseType: !1182, size: 64, offset: 192)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DISubroutineType(types: !1184)
!1184 = !{!480, !1179, !1185}
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1187)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !26, line: 705, size: 5824, elements: !1188)
!1188 = !{!1189, !1190, !1192, !1195, !1196, !1247, !1338, !1339, !1340, !1341, !1342, !1349, !1519, !1532, !1542, !1546, !1548, !1549, !1550, !1554, !1561, !1562, !1565, !1568, !1572, !1573, !1574, !1577, !1578, !1579, !1580, !1610, !1611, !1612, !1615, !1618, !1627, !1628, !1629, !1630, !1631, !1632}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1187, file: !26, line: 706, baseType: !117, size: 512)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1187, file: !26, line: 707, baseType: !1191, size: 64, offset: 512)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1187, file: !26, line: 709, baseType: !1193, size: 64, offset: 576)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !26, line: 37, flags: DIFlagFwdDecl)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1187, file: !26, line: 711, baseType: !121, size: 64, offset: 640)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1187, file: !26, line: 712, baseType: !1197, size: 64, offset: 704)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1199)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !26, line: 89, size: 384, elements: !1200)
!1200 = !{!1201, !1202, !1203, !1207, !1212, !1216}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1199, file: !26, line: 90, baseType: !121, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1199, file: !26, line: 91, baseType: !254, size: 64, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1199, file: !26, line: 92, baseType: !1204, size: 64, offset: 128)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DISubroutineType(types: !1206)
!1206 = !{!46, !1185, !197}
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1199, file: !26, line: 93, baseType: !1208, size: 64, offset: 192)
!1208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1209, size: 64)
!1209 = !DISubroutineType(types: !1210)
!1210 = !{!202, !1185, !1211, !634, !641}
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1199, file: !26, line: 95, baseType: !1213, size: 64, offset: 256)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{null, !1191}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1199, file: !26, line: 97, baseType: !1217, size: 64, offset: 320)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1219)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !38, line: 286, size: 1472, elements: !1220)
!1220 = !{!1221, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1219, file: !38, line: 287, baseType: !1222, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{!46, !1191}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1219, file: !38, line: 288, baseType: !1213, size: 64, offset: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1219, file: !38, line: 289, baseType: !1222, size: 64, offset: 128)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1219, file: !38, line: 290, baseType: !1222, size: 64, offset: 192)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1219, file: !38, line: 291, baseType: !1222, size: 64, offset: 256)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1219, file: !38, line: 292, baseType: !1222, size: 64, offset: 320)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1219, file: !38, line: 293, baseType: !1222, size: 64, offset: 384)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1219, file: !38, line: 294, baseType: !1222, size: 64, offset: 448)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1219, file: !38, line: 295, baseType: !1222, size: 64, offset: 512)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1219, file: !38, line: 296, baseType: !1222, size: 64, offset: 576)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1219, file: !38, line: 297, baseType: !1222, size: 64, offset: 640)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1219, file: !38, line: 298, baseType: !1222, size: 64, offset: 704)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1219, file: !38, line: 299, baseType: !1222, size: 64, offset: 768)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1219, file: !38, line: 300, baseType: !1222, size: 64, offset: 832)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1219, file: !38, line: 301, baseType: !1222, size: 64, offset: 896)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1219, file: !38, line: 302, baseType: !1222, size: 64, offset: 960)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1219, file: !38, line: 303, baseType: !1222, size: 64, offset: 1024)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1219, file: !38, line: 304, baseType: !1222, size: 64, offset: 1088)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1219, file: !38, line: 305, baseType: !1222, size: 64, offset: 1152)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1219, file: !38, line: 306, baseType: !1222, size: 64, offset: 1216)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1219, file: !38, line: 307, baseType: !1222, size: 64, offset: 1280)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1219, file: !38, line: 308, baseType: !1222, size: 64, offset: 1344)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1219, file: !38, line: 309, baseType: !1222, size: 64, offset: 1408)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1187, file: !26, line: 714, baseType: !1248, size: 64, offset: 768)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1250)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1251, line: 80, size: 1344, elements: !1252)
!1251 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!1252 = !{!1253, !1254, !1255, !1256, !1257, !1258, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1337}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1250, file: !1251, line: 81, baseType: !121, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1250, file: !1251, line: 82, baseType: !121, size: 64, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1250, file: !1251, line: 83, baseType: !254, size: 64, offset: 128)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1250, file: !1251, line: 84, baseType: !254, size: 64, offset: 192)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1250, file: !1251, line: 85, baseType: !254, size: 64, offset: 256)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1250, file: !1251, line: 87, baseType: !1259, size: 64, offset: 320)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DISubroutineType(types: !1261)
!1261 = !{!46, !1191, !1262}
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !20, line: 96, size: 1152, elements: !1264)
!1264 = !{!1265, !1266, !1267, !1268, !1269, !1270, !1271, !1287, !1300, !1301, !1302, !1303, !1304, !1312, !1313, !1314, !1315, !1316, !1317}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1263, file: !20, line: 97, baseType: !121, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1263, file: !20, line: 98, baseType: !1248, size: 64, offset: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1263, file: !20, line: 100, baseType: !97, size: 64, offset: 128)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1263, file: !20, line: 101, baseType: !121, size: 64, offset: 192)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1263, file: !20, line: 103, baseType: !559, size: 8, offset: 256)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1263, file: !20, line: 104, baseType: !19, size: 32, offset: 288)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1263, file: !20, line: 106, baseType: !1272, size: 64, offset: 320)
!1272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1274)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1275, line: 282, size: 1600, elements: !1276)
!1275 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1276 = !{!1277, !1281, !1282, !1286}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1274, file: !1275, line: 283, baseType: !1278, size: 256)
!1278 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 256, elements: !1279)
!1279 = !{!1280}
!1280 = !DISubrange(count: 32)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1274, file: !1275, line: 284, baseType: !1278, size: 256, offset: 256)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1274, file: !1275, line: 285, baseType: !1283, size: 1024, offset: 512)
!1283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 1024, elements: !1284)
!1284 = !{!1285}
!1285 = !DISubrange(count: 128)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1274, file: !1275, line: 286, baseType: !480, size: 64, offset: 1536)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1263, file: !20, line: 107, baseType: !1288, size: 64, offset: 384)
!1288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1289, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1290)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1275, line: 217, size: 256, elements: !1291)
!1291 = !{!1292, !1296, !1298, !1299}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1290, file: !1275, line: 218, baseType: !1293, size: 128)
!1293 = !DICompositeType(tag: DW_TAG_array_type, baseType: !162, size: 128, elements: !1294)
!1294 = !{!1295}
!1295 = !DISubrange(count: 16)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1290, file: !1275, line: 219, baseType: !1297, size: 64, offset: 128)
!1297 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1275, line: 15, baseType: !252)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1290, file: !1275, line: 220, baseType: !966, size: 32, offset: 192)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1290, file: !1275, line: 221, baseType: !966, size: 32, offset: 224)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1263, file: !20, line: 109, baseType: !1222, size: 64, offset: 448)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1263, file: !20, line: 110, baseType: !1213, size: 64, offset: 512)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1263, file: !20, line: 111, baseType: !1222, size: 64, offset: 576)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1263, file: !20, line: 112, baseType: !1213, size: 64, offset: 640)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1263, file: !20, line: 113, baseType: !1305, size: 64, offset: 704)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DISubroutineType(types: !1307)
!1307 = !{!46, !1191, !1308}
!1308 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !38, line: 60, baseType: !1309)
!1309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !38, line: 58, size: 32, elements: !1310)
!1310 = !{!1311}
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1309, file: !38, line: 59, baseType: !46, size: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1263, file: !20, line: 114, baseType: !1222, size: 64, offset: 768)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1263, file: !20, line: 115, baseType: !254, size: 64, offset: 832)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1263, file: !20, line: 116, baseType: !254, size: 64, offset: 896)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1263, file: !20, line: 118, baseType: !1217, size: 64, offset: 960)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1263, file: !20, line: 119, baseType: !1213, size: 64, offset: 1024)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1263, file: !20, line: 121, baseType: !1318, size: 64, offset: 1088)
!1318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1319, size: 64)
!1319 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !20, line: 121, flags: DIFlagFwdDecl)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1250, file: !1251, line: 88, baseType: !1204, size: 64, offset: 384)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1250, file: !1251, line: 89, baseType: !1222, size: 64, offset: 448)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1250, file: !1251, line: 90, baseType: !1213, size: 64, offset: 512)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1250, file: !1251, line: 91, baseType: !1213, size: 64, offset: 576)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1250, file: !1251, line: 92, baseType: !1213, size: 64, offset: 640)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1250, file: !1251, line: 94, baseType: !1222, size: 64, offset: 704)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1250, file: !1251, line: 95, baseType: !1222, size: 64, offset: 768)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1250, file: !1251, line: 97, baseType: !1305, size: 64, offset: 832)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1250, file: !1251, line: 98, baseType: !1222, size: 64, offset: 896)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1250, file: !1251, line: 100, baseType: !1222, size: 64, offset: 960)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1250, file: !1251, line: 102, baseType: !1222, size: 64, offset: 1024)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !1250, file: !1251, line: 103, baseType: !1213, size: 64, offset: 1088)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1250, file: !1251, line: 105, baseType: !1217, size: 64, offset: 1152)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1250, file: !1251, line: 107, baseType: !1334, size: 64, offset: 1216)
!1334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1335, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1336)
!1336 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1251, line: 107, flags: DIFlagFwdDecl)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1250, file: !1251, line: 109, baseType: !559, size: 8, offset: 1280)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1187, file: !26, line: 715, baseType: !1262, size: 64, offset: 832)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1187, file: !26, line: 717, baseType: !96, size: 64, offset: 896)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1187, file: !26, line: 719, baseType: !96, size: 64, offset: 960)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1187, file: !26, line: 721, baseType: !459, size: 256, offset: 1024)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1187, file: !26, line: 725, baseType: !1343, size: 448, offset: 1280)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !26, line: 517, size: 448, elements: !1344)
!1344 = !{!1345, !1346, !1347, !1348}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1343, file: !26, line: 518, baseType: !102, size: 128)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1343, file: !26, line: 519, baseType: !102, size: 128, offset: 128)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1343, file: !26, line: 520, baseType: !102, size: 128, offset: 256)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1343, file: !26, line: 521, baseType: !25, size: 32, offset: 384)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1187, file: !26, line: 726, baseType: !1350, size: 2496, offset: 1728)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !38, line: 663, size: 2496, elements: !1351)
!1351 = !{!1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1396, !1397, !1398, !1399, !1400, !1401, !1472, !1473, !1474, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1512, !1516}
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1350, file: !38, line: 664, baseType: !1308, size: 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1350, file: !38, line: 665, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1350, file: !38, line: 666, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1350, file: !38, line: 667, baseType: !559, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1350, file: !38, line: 668, baseType: !559, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1350, file: !38, line: 669, baseType: !559, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1350, file: !38, line: 670, baseType: !559, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1350, file: !38, line: 671, baseType: !559, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1350, file: !38, line: 672, baseType: !559, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1350, file: !38, line: 673, baseType: !559, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1350, file: !38, line: 674, baseType: !559, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1350, file: !38, line: 675, baseType: !1048, size: 32, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1350, file: !38, line: 676, baseType: !132, size: 32, offset: 96)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1350, file: !38, line: 678, baseType: !102, size: 128, offset: 128)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1350, file: !38, line: 679, baseType: !784, size: 256, offset: 256)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1350, file: !38, line: 680, baseType: !1368, size: 64, offset: 512)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1370, line: 43, size: 1536, elements: !1371)
!1370 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1371 = !{!1372, !1373, !1374, !1375, !1376, !1379, !1380, !1381, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395}
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1369, file: !1370, line: 44, baseType: !121, size: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1369, file: !1370, line: 45, baseType: !46, size: 32, offset: 64)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1369, file: !1370, line: 46, baseType: !102, size: 128, offset: 128)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1369, file: !1370, line: 47, baseType: !132, size: 32, offset: 256)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1369, file: !1370, line: 48, baseType: !1377, size: 64, offset: 320)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !38, line: 629, flags: DIFlagFwdDecl)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1369, file: !1370, line: 49, baseType: !1031, size: 320, offset: 384)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1369, file: !1370, line: 50, baseType: !252, size: 64, offset: 704)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1369, file: !1370, line: 51, baseType: !1382, size: 64, offset: 768)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1383, line: 29, baseType: !377)
!1383 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1369, file: !1370, line: 52, baseType: !1382, size: 64, offset: 832)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1369, file: !1370, line: 53, baseType: !1382, size: 64, offset: 896)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1369, file: !1370, line: 54, baseType: !1382, size: 64, offset: 960)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1369, file: !1370, line: 55, baseType: !1382, size: 64, offset: 1024)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1369, file: !1370, line: 56, baseType: !252, size: 64, offset: 1088)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1369, file: !1370, line: 57, baseType: !252, size: 64, offset: 1152)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1369, file: !1370, line: 58, baseType: !252, size: 64, offset: 1216)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1369, file: !1370, line: 59, baseType: !252, size: 64, offset: 1280)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1369, file: !1370, line: 60, baseType: !252, size: 64, offset: 1344)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1369, file: !1370, line: 61, baseType: !1191, size: 64, offset: 1408)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1369, file: !1370, line: 62, baseType: !559, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1369, file: !1370, line: 63, baseType: !559, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1350, file: !38, line: 681, baseType: !559, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1350, file: !38, line: 682, baseType: !559, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1350, file: !38, line: 683, baseType: !559, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1350, file: !38, line: 684, baseType: !7, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1350, file: !38, line: 685, baseType: !7, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1350, file: !38, line: 690, baseType: !1402, size: 512, offset: 640)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !33, line: 118, size: 512, elements: !1403)
!1403 = !{!1404, !1410, !1411, !1416, !1468, !1469, !1470, !1471}
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1402, file: !33, line: 119, baseType: !1405, size: 256)
!1405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1406, line: 9, size: 256, elements: !1407)
!1406 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1407 = !{!1408, !1409}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1405, file: !1406, line: 10, baseType: !565, size: 192, align: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1405, file: !1406, line: 11, baseType: !1382, size: 64, offset: 192)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1402, file: !33, line: 120, baseType: !1382, size: 64, offset: 256)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1402, file: !33, line: 121, baseType: !1412, size: 64, offset: 320)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DISubroutineType(types: !1414)
!1414 = !{!32, !1415}
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1402, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1402, file: !33, line: 122, baseType: !1417, size: 64, offset: 384)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !33, line: 159, size: 512, align: 512, elements: !1419)
!1419 = !{!1420, !1445, !1446, !1449, !1454, !1455, !1463, !1467}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1418, file: !33, line: 160, baseType: !1421, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !33, line: 215, size: 4608, align: 512, elements: !1423)
!1423 = !{!1424, !1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1422, file: !33, line: 216, baseType: !393, size: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1422, file: !33, line: 217, baseType: !7, size: 32, offset: 32)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1422, file: !33, line: 218, baseType: !7, size: 32, offset: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1422, file: !33, line: 219, baseType: !7, size: 32, offset: 96)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1422, file: !33, line: 220, baseType: !7, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1422, file: !33, line: 221, baseType: !7, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1422, file: !33, line: 222, baseType: !7, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1422, file: !33, line: 223, baseType: !7, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1422, file: !33, line: 224, baseType: !7, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1422, file: !33, line: 226, baseType: !7, size: 32, offset: 160)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1422, file: !33, line: 227, baseType: !172, size: 16, offset: 192)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1422, file: !33, line: 228, baseType: !172, size: 16, offset: 208)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1422, file: !33, line: 229, baseType: !7, size: 32, offset: 224)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1422, file: !33, line: 235, baseType: !1382, size: 64, offset: 256)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1422, file: !33, line: 236, baseType: !1415, size: 64, offset: 320)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1422, file: !33, line: 237, baseType: !1382, size: 64, offset: 384)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1422, file: !33, line: 238, baseType: !1415, size: 64, offset: 448)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1422, file: !33, line: 239, baseType: !1442, size: 4096, align: 512, offset: 512)
!1442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1418, size: 4096, align: 512, elements: !1443)
!1443 = !{!1444}
!1444 = !DISubrange(count: 8)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1418, file: !33, line: 161, baseType: !7, size: 32, offset: 64)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1418, file: !33, line: 162, baseType: !1447, size: 32, offset: 96)
!1447 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !103, line: 32, baseType: !1448)
!1448 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !236, line: 96, baseType: !46)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1418, file: !33, line: 163, baseType: !1450, size: 32, offset: 128)
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !408, line: 274, baseType: !1451)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !408, line: 274, size: 32, elements: !1452)
!1452 = !{!1453}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1451, file: !408, line: 274, baseType: !407, size: 32)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1418, file: !33, line: 164, baseType: !1415, size: 64, offset: 192)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1418, file: !33, line: 165, baseType: !1456, size: 128, offset: 256)
!1456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1406, line: 14, size: 128, elements: !1457)
!1457 = !{!1458}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1456, file: !1406, line: 15, baseType: !1459, size: 128)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !566, line: 26, size: 128, elements: !1460)
!1460 = !{!1461, !1462}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1459, file: !566, line: 27, baseType: !668, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1459, file: !566, line: 28, baseType: !570, size: 64, offset: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1418, file: !33, line: 166, baseType: !1464, size: 64, offset: 384)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = !DISubroutineType(types: !1466)
!1466 = !{!1382}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1418, file: !33, line: 167, baseType: !1382, size: 64, offset: 448)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1402, file: !33, line: 123, baseType: !160, size: 8, offset: 448)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1402, file: !33, line: 124, baseType: !160, size: 8, offset: 456)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1402, file: !33, line: 125, baseType: !160, size: 8, offset: 464)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1402, file: !33, line: 126, baseType: !160, size: 8, offset: 472)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1350, file: !38, line: 691, baseType: !365, size: 64, offset: 1152)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1350, file: !38, line: 692, baseType: !524, size: 256, offset: 1216)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1350, file: !38, line: 693, baseType: !1475, size: 192, offset: 1472)
!1475 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1476, line: 41, baseType: !1477)
!1476 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1476, line: 37, size: 192, elements: !1478)
!1478 = !{!1479, !1480}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1477, file: !1476, line: 38, baseType: !132, size: 32)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1477, file: !1476, line: 39, baseType: !102, size: 128, offset: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1350, file: !38, line: 694, baseType: !1377, size: 64, offset: 1664)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1350, file: !38, line: 695, baseType: !152, size: 32, offset: 1728)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1350, file: !38, line: 696, baseType: !152, size: 32, offset: 1760)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1350, file: !38, line: 697, baseType: !7, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1350, file: !38, line: 698, baseType: !7, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1350, file: !38, line: 699, baseType: !7, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1350, file: !38, line: 700, baseType: !7, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1350, file: !38, line: 701, baseType: !7, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1350, file: !38, line: 702, baseType: !7, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1350, file: !38, line: 703, baseType: !559, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1350, file: !38, line: 704, baseType: !7, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1350, file: !38, line: 705, baseType: !7, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1350, file: !38, line: 706, baseType: !7, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1350, file: !38, line: 707, baseType: !7, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1350, file: !38, line: 708, baseType: !7, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1350, file: !38, line: 709, baseType: !7, size: 32, offset: 1824)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1350, file: !38, line: 710, baseType: !37, size: 32, offset: 1856)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1350, file: !38, line: 711, baseType: !45, size: 32, offset: 1888)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1350, file: !38, line: 712, baseType: !45, size: 32, offset: 1920)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1350, file: !38, line: 713, baseType: !46, size: 32, offset: 1952)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1350, file: !38, line: 714, baseType: !46, size: 32, offset: 1984)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1350, file: !38, line: 715, baseType: !365, size: 64, offset: 2048)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1350, file: !38, line: 716, baseType: !365, size: 64, offset: 2112)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1350, file: !38, line: 717, baseType: !365, size: 64, offset: 2176)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1350, file: !38, line: 718, baseType: !365, size: 64, offset: 2240)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1350, file: !38, line: 720, baseType: !1507, size: 64, offset: 2304)
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !38, line: 632, size: 64, elements: !1509)
!1509 = !{!1510, !1511}
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1508, file: !38, line: 633, baseType: !132, size: 32)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1508, file: !38, line: 634, baseType: !7, size: 32, offset: 32)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1350, file: !38, line: 721, baseType: !1513, size: 64, offset: 2368)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1514, size: 64)
!1514 = !DISubroutineType(types: !1515)
!1515 = !{null, !1191, !438}
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1350, file: !38, line: 722, baseType: !1517, size: 64, offset: 2432)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !38, line: 722, flags: DIFlagFwdDecl)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1187, file: !26, line: 727, baseType: !1520, size: 64, offset: 4224)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !38, line: 742, size: 1792, elements: !1522)
!1522 = !{!1523, !1524, !1525, !1529, !1530, !1531}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1521, file: !38, line: 743, baseType: !1219, size: 1472)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1521, file: !38, line: 744, baseType: !1222, size: 64, offset: 1472)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1521, file: !38, line: 745, baseType: !1526, size: 64, offset: 1536)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{null, !1191, !559}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1521, file: !38, line: 746, baseType: !1222, size: 64, offset: 1600)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1521, file: !38, line: 747, baseType: !1213, size: 64, offset: 1664)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1521, file: !38, line: 748, baseType: !1213, size: 64, offset: 1728)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !1187, file: !26, line: 736, baseType: !1533, size: 128, offset: 4288)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !26, line: 529, size: 128, elements: !1534)
!1534 = !{!1535, !1539}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1533, file: !26, line: 531, baseType: !1536, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1538, line: 13, flags: DIFlagFwdDecl)
!1538 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1533, file: !26, line: 532, baseType: !1540, size: 64, offset: 64)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !26, line: 49, flags: DIFlagFwdDecl)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1187, file: !26, line: 738, baseType: !1543, size: 64, offset: 4416)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1545)
!1545 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !26, line: 738, flags: DIFlagFwdDecl)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1187, file: !26, line: 740, baseType: !1547, size: 64, offset: 4480)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !365, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1187, file: !26, line: 741, baseType: !365, size: 64, offset: 4544)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1187, file: !26, line: 746, baseType: !365, size: 64, offset: 4608)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1187, file: !26, line: 747, baseType: !1551, size: 64, offset: 4672)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1553)
!1553 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !26, line: 747, flags: DIFlagFwdDecl)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1187, file: !26, line: 749, baseType: !1555, size: 64, offset: 4736)
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !26, line: 428, size: 128, elements: !1557)
!1557 = !{!1558, !1559, !1560}
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1556, file: !26, line: 433, baseType: !7, size: 32)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1556, file: !26, line: 434, baseType: !7, size: 32, offset: 32)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1556, file: !26, line: 435, baseType: !252, size: 64, offset: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1187, file: !26, line: 751, baseType: !102, size: 128, offset: 4800)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !1187, file: !26, line: 762, baseType: !1563, size: 64, offset: 4928)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !26, line: 762, flags: DIFlagFwdDecl)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1187, file: !26, line: 770, baseType: !1566, offset: 4992)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1567, line: 5, elements: !338)
!1567 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1187, file: !26, line: 772, baseType: !1569, size: 64, offset: 4992)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1571, line: 18, flags: DIFlagFwdDecl)
!1571 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a498205240037a1a13c01dddb6adc6f")
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1187, file: !26, line: 773, baseType: !1161, size: 64, offset: 5056)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !1187, file: !26, line: 776, baseType: !46, size: 32, offset: 5120)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1187, file: !26, line: 778, baseType: !1575, size: 32, offset: 5152)
!1575 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !103, line: 21, baseType: !1576)
!1576 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !103, line: 18, baseType: !1048)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1187, file: !26, line: 779, baseType: !1048, size: 32, offset: 5184)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1187, file: !26, line: 781, baseType: !132, size: 32, offset: 5216)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1187, file: !26, line: 782, baseType: !102, size: 128, offset: 5248)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1187, file: !26, line: 784, baseType: !1581, size: 64, offset: 5376)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1583)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1584, line: 52, size: 768, elements: !1585)
!1584 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1585 = !{!1586, !1587, !1588, !1589, !1590, !1594, !1598, !1599, !1600, !1601, !1605, !1609}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1583, file: !1584, line: 53, baseType: !121, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1583, file: !1584, line: 55, baseType: !254, size: 64, offset: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1583, file: !1584, line: 56, baseType: !254, size: 64, offset: 128)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1583, file: !1584, line: 58, baseType: !1204, size: 64, offset: 192)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1583, file: !1584, line: 59, baseType: !1591, size: 64, offset: 256)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!202, !1185, !1211}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1583, file: !1584, line: 61, baseType: !1595, size: 64, offset: 320)
!1595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1596, size: 64)
!1596 = !DISubroutineType(types: !1597)
!1597 = !{null, !1581}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1583, file: !1584, line: 62, baseType: !1213, size: 64, offset: 384)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1583, file: !1584, line: 64, baseType: !1222, size: 64, offset: 448)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1583, file: !1584, line: 66, baseType: !599, size: 64, offset: 512)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1583, file: !1584, line: 67, baseType: !1602, size: 64, offset: 576)
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1603, size: 64)
!1603 = !DISubroutineType(types: !1604)
!1604 = !{!480, !1185}
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1583, file: !1584, line: 69, baseType: !1606, size: 64, offset: 640)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{null, !1185, !634, !641}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1583, file: !1584, line: 71, baseType: !1217, size: 64, offset: 704)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1187, file: !26, line: 785, baseType: !254, size: 64, offset: 5440)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1187, file: !26, line: 787, baseType: !1213, size: 64, offset: 5504)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1187, file: !26, line: 788, baseType: !1613, size: 64, offset: 5568)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !26, line: 46, flags: DIFlagFwdDecl)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1187, file: !26, line: 789, baseType: !1616, size: 64, offset: 5632)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !26, line: 48, flags: DIFlagFwdDecl)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !1187, file: !26, line: 791, baseType: !1619, size: 64, offset: 5696)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !26, line: 597, size: 128, elements: !1621)
!1621 = !{!1622, !1623, !1624, !1625, !1626}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1620, file: !26, line: 598, baseType: !59, size: 32)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1620, file: !26, line: 599, baseType: !68, size: 32, offset: 32)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1620, file: !26, line: 600, baseType: !73, size: 32, offset: 64)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1620, file: !26, line: 601, baseType: !559, size: 8, offset: 96)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1620, file: !26, line: 602, baseType: !559, size: 8, offset: 104)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1187, file: !26, line: 793, baseType: !78, size: 32, offset: 5760)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1187, file: !26, line: 795, baseType: !559, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1187, file: !26, line: 796, baseType: !559, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1187, file: !26, line: 797, baseType: !559, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1187, file: !26, line: 798, baseType: !559, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !1187, file: !26, line: 799, baseType: !559, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !1165, file: !1158, line: 131, baseType: !1176, size: 64, offset: 256)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !1165, file: !1158, line: 133, baseType: !1635, size: 64, offset: 320)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{!53, !1179}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1165, file: !1158, line: 134, baseType: !1639, size: 64, offset: 384)
!1639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1640, size: 64)
!1640 = !DISubroutineType(types: !1641)
!1641 = !{!559, !1179, !121}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1165, file: !1158, line: 136, baseType: !1643, size: 64, offset: 448)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{!46, !1179, !121, !7, !96, !249}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1165, file: !1158, line: 141, baseType: !1647, size: 64, offset: 512)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!46, !1179, !121, !1115, !249}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1165, file: !1158, line: 144, baseType: !1651, size: 64, offset: 576)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!121, !1179}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1165, file: !1158, line: 145, baseType: !1651, size: 64, offset: 640)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1165, file: !1158, line: 146, baseType: !1656, size: 64, offset: 704)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!1161, !1179}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1165, file: !1158, line: 148, baseType: !1660, size: 64, offset: 768)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!1161, !1179, !1161}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1165, file: !1158, line: 151, baseType: !1664, size: 64, offset: 832)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!1161, !1179, !121}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1165, file: !1158, line: 153, baseType: !1668, size: 64, offset: 896)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!46, !1179, !121, !121, !7, !7, !1671}
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1158, line: 94, size: 640, elements: !1673)
!1673 = !{!1674, !1675, !1676}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1672, file: !1158, line: 95, baseType: !1161, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1672, file: !1158, line: 96, baseType: !7, size: 32, offset: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1672, file: !1158, line: 97, baseType: !1677, size: 512, offset: 128)
!1677 = !DICompositeType(tag: DW_TAG_array_type, baseType: !365, size: 512, elements: !1443)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1165, file: !1158, line: 158, baseType: !1660, size: 64, offset: 960)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1165, file: !1158, line: 161, baseType: !1656, size: 64, offset: 1024)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1165, file: !1158, line: 163, baseType: !1168, size: 64, offset: 1088)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1165, file: !1158, line: 164, baseType: !1682, size: 64, offset: 1152)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!46, !1179, !1685}
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1158, line: 73, size: 128, elements: !1687)
!1687 = !{!1688, !1689, !1690}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1686, file: !1158, line: 74, baseType: !7, size: 32)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1686, file: !1158, line: 75, baseType: !7, size: 32, offset: 32)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1686, file: !1158, line: 76, baseType: !1179, size: 64, offset: 64)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !1165, file: !1158, line: 166, baseType: !1692, size: 64, offset: 1216)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!96, !1161, !46}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !1165, file: !1158, line: 167, baseType: !1696, size: 64, offset: 1280)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!46, !1179, !7}
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1165, file: !1158, line: 168, baseType: !1700, size: 64, offset: 1344)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DISubroutineType(types: !1702)
!1702 = !{!46, !1161}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1157, file: !1158, line: 44, baseType: !1191, size: 64, offset: 128)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1157, file: !1158, line: 45, baseType: !102, size: 128, offset: 192)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1157, file: !1158, line: 46, baseType: !102, size: 128, offset: 320)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1157, file: !1158, line: 47, baseType: !160, size: 8, offset: 448)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !1148, file: !1149, line: 372, baseType: !102, size: 128, offset: 640)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !1148, file: !1149, line: 373, baseType: !102, size: 128, offset: 768)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1148, file: !1149, line: 374, baseType: !1710, size: 32, offset: 896)
!1710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !1149, line: 181, size: 32, elements: !1711)
!1711 = !{!1712, !1713, !1714, !1715, !1716, !1717}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !1710, file: !1149, line: 182, baseType: !1048, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1710, file: !1149, line: 183, baseType: !1048, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !1710, file: !1149, line: 184, baseType: !1048, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !1710, file: !1149, line: 185, baseType: !1048, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !1710, file: !1149, line: 186, baseType: !1048, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1710, file: !1149, line: 187, baseType: !1048, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1148, file: !1149, line: 375, baseType: !1719, size: 32, offset: 928)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !1149, line: 192, size: 32, elements: !1720)
!1720 = !{!1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735}
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !1719, file: !1149, line: 193, baseType: !1048, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1719, file: !1149, line: 194, baseType: !1048, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !1719, file: !1149, line: 195, baseType: !1048, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !1719, file: !1149, line: 196, baseType: !1048, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !1719, file: !1149, line: 197, baseType: !1048, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !1719, file: !1149, line: 198, baseType: !1048, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1719, file: !1149, line: 199, baseType: !1048, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !1719, file: !1149, line: 200, baseType: !1048, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !1719, file: !1149, line: 201, baseType: !1048, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !1719, file: !1149, line: 202, baseType: !1048, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !1719, file: !1149, line: 203, baseType: !1048, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !1719, file: !1149, line: 204, baseType: !1048, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !1719, file: !1149, line: 205, baseType: !1048, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "honor_deps", scope: !1719, file: !1149, line: 206, baseType: !1048, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1719, file: !1149, line: 207, baseType: !1048, size: 18, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !1148, file: !1149, line: 376, baseType: !1737, size: 960, offset: 960)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !1149, line: 238, size: 960, elements: !1738)
!1738 = !{!1739, !1742, !1743, !1751, !1753, !1754, !1755, !1760, !1765}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !1737, file: !1149, line: 239, baseType: !1740, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !1149, line: 220, baseType: !1741)
!1741 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 64, elements: !1443)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "instance_no", scope: !1737, file: !1149, line: 240, baseType: !46, size: 32, offset: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1737, file: !1149, line: 241, baseType: !1744, size: 32, offset: 96)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !1149, line: 230, size: 32, elements: !1745)
!1745 = !{!1746, !1747, !1748, !1749, !1750}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !1744, file: !1149, line: 231, baseType: !1048, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !1744, file: !1149, line: 232, baseType: !1048, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !1744, file: !1149, line: 233, baseType: !1048, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "backlight", scope: !1744, file: !1149, line: 234, baseType: !1048, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1744, file: !1149, line: 235, baseType: !1048, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !1737, file: !1149, line: 242, baseType: !1752, size: 64, offset: 128)
!1752 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !1149, line: 221, baseType: !365)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !1737, file: !1149, line: 243, baseType: !202, size: 64, offset: 192)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1737, file: !1149, line: 244, baseType: !102, size: 128, offset: 256)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !1737, file: !1149, line: 245, baseType: !1756, size: 320, offset: 384)
!1756 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !1149, line: 222, baseType: !1757)
!1757 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 320, elements: !1758)
!1758 = !{!1759}
!1759 = !DISubrange(count: 40)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !1737, file: !1149, line: 246, baseType: !1761, size: 160, offset: 704)
!1761 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !1149, line: 223, baseType: !1762)
!1762 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 160, elements: !1763)
!1763 = !{!1764}
!1764 = !DISubrange(count: 20)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !1737, file: !1149, line: 247, baseType: !1766, size: 64, offset: 896)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !1155, line: 908, size: 192, elements: !1768)
!1768 = !{!1769, !1771, !1776, !1782, !1789, !1795, !1801, !1809}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1767, file: !1155, line: 909, baseType: !1770, size: 32)
!1770 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !1155, line: 644, baseType: !1048)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1767, file: !1155, line: 913, baseType: !1772, size: 128)
!1772 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1767, file: !1155, line: 910, size: 128, elements: !1773)
!1773 = !{!1774, !1775}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1772, file: !1155, line: 911, baseType: !1770, size: 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1772, file: !1155, line: 912, baseType: !365, size: 64, offset: 64)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1767, file: !1155, line: 919, baseType: !1777, size: 128)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1767, file: !1155, line: 915, size: 128, elements: !1778)
!1778 = !{!1779, !1780, !1781}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1777, file: !1155, line: 916, baseType: !1770, size: 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1777, file: !1155, line: 917, baseType: !1048, size: 32, offset: 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1777, file: !1155, line: 918, baseType: !202, size: 64, offset: 64)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1767, file: !1155, line: 925, baseType: !1783, size: 128)
!1783 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1767, file: !1155, line: 921, size: 128, elements: !1784)
!1784 = !{!1785, !1786, !1787}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1783, file: !1155, line: 922, baseType: !1770, size: 32)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1783, file: !1155, line: 923, baseType: !1048, size: 32, offset: 32)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1783, file: !1155, line: 924, baseType: !1788, size: 64, offset: 64)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !1767, file: !1155, line: 931, baseType: !1790, size: 128)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1767, file: !1155, line: 927, size: 128, elements: !1791)
!1791 = !{!1792, !1793, !1794}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1790, file: !1155, line: 928, baseType: !1770, size: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1790, file: !1155, line: 929, baseType: !1048, size: 32, offset: 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1790, file: !1155, line: 930, baseType: !1766, size: 64, offset: 64)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !1767, file: !1155, line: 937, baseType: !1796, size: 128)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1767, file: !1155, line: 933, size: 128, elements: !1797)
!1797 = !{!1798, !1799, !1800}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1796, file: !1155, line: 934, baseType: !1770, size: 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !1796, file: !1155, line: 935, baseType: !1770, size: 32, offset: 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !1796, file: !1155, line: 936, baseType: !1154, size: 64, offset: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !1767, file: !1155, line: 944, baseType: !1802, size: 192)
!1802 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1767, file: !1155, line: 939, size: 192, elements: !1803)
!1803 = !{!1804, !1805, !1806, !1808}
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1802, file: !1155, line: 940, baseType: !1770, size: 32)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !1802, file: !1155, line: 941, baseType: !1048, size: 32, offset: 32)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !1802, file: !1155, line: 942, baseType: !1807, size: 64, offset: 64)
!1807 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !1155, line: 128, baseType: !365)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !1802, file: !1155, line: 943, baseType: !1048, size: 32, offset: 128)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !1767, file: !1155, line: 950, baseType: !1810, size: 96)
!1810 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1767, file: !1155, line: 946, size: 96, elements: !1811)
!1811 = !{!1812, !1813, !1814}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1810, file: !1155, line: 947, baseType: !1770, size: 32)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !1810, file: !1155, line: 948, baseType: !1048, size: 32, offset: 32)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !1810, file: !1155, line: 949, baseType: !1048, size: 32, offset: 64)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1148, file: !1149, line: 377, baseType: !1816, size: 1408, offset: 1920)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !1149, line: 280, size: 1408, elements: !1817)
!1817 = !{!1818, !1819, !1829, !1844}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1816, file: !1149, line: 281, baseType: !46, size: 32)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1816, file: !1149, line: 282, baseType: !1820, size: 32, offset: 32)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !1149, line: 259, size: 32, elements: !1821)
!1821 = !{!1822, !1823, !1824, !1825, !1826, !1827, !1828}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !1820, file: !1149, line: 260, baseType: !1048, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !1820, file: !1149, line: 261, baseType: !1048, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !1820, file: !1149, line: 262, baseType: !1048, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !1820, file: !1149, line: 263, baseType: !1048, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !1820, file: !1149, line: 264, baseType: !1048, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !1820, file: !1149, line: 265, baseType: !1048, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1820, file: !1149, line: 266, baseType: !1048, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1816, file: !1149, line: 283, baseType: !1830, size: 1280, offset: 64)
!1830 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1831, size: 1280, elements: !1842)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !1149, line: 269, size: 256, elements: !1832)
!1832 = !{!1833, !1839, !1840, !1841}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1831, file: !1149, line: 274, baseType: !1834, size: 8)
!1834 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1831, file: !1149, line: 270, size: 8, elements: !1835)
!1835 = !{!1836, !1837, !1838}
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1834, file: !1149, line: 271, baseType: !160, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !1834, file: !1149, line: 272, baseType: !160, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1834, file: !1149, line: 273, baseType: !160, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1831, file: !1149, line: 275, baseType: !46, size: 32, offset: 32)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1831, file: !1149, line: 276, baseType: !46, size: 32, offset: 64)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !1831, file: !1149, line: 277, baseType: !102, size: 128, offset: 128)
!1842 = !{!1843}
!1843 = !DISubrange(count: 5)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "state_for_enumeration", scope: !1816, file: !1149, line: 284, baseType: !160, size: 8, offset: 1344)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1148, file: !1149, line: 378, baseType: !1846, size: 640, offset: 3328)
!1846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !1149, line: 330, size: 640, elements: !1847)
!1847 = !{!1848, !1849, !1850, !1851, !1852, !1857, !1866, !1867, !1868}
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !1846, file: !1149, line: 331, baseType: !1154, size: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !1846, file: !1149, line: 332, baseType: !365, size: 64, offset: 64)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !1846, file: !1149, line: 333, baseType: !365, size: 64, offset: 128)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !1846, file: !1149, line: 334, baseType: !102, size: 128, offset: 192)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1846, file: !1149, line: 335, baseType: !1853, size: 8, offset: 320)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !1149, line: 320, size: 8, elements: !1854)
!1854 = !{!1855, !1856}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1853, file: !1149, line: 321, baseType: !160, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !1853, file: !1149, line: 322, baseType: !160, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1846, file: !1149, line: 336, baseType: !1858, size: 128, offset: 384)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !1149, line: 325, size: 128, elements: !1859)
!1859 = !{!1860, !1865}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1858, file: !1149, line: 326, baseType: !1861, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{null, !1864}
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1858, file: !1149, line: 327, baseType: !1191, size: 64, offset: 64)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !1846, file: !1149, line: 337, baseType: !1368, size: 64, offset: 512)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !1846, file: !1149, line: 338, baseType: !46, size: 32, offset: 576)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !1846, file: !1149, line: 339, baseType: !46, size: 32, offset: 608)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !1148, file: !1149, line: 379, baseType: !1870, size: 192, offset: 3968)
!1870 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !1149, line: 312, size: 192, elements: !1871)
!1871 = !{!1872, !1873, !1877, !1878}
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1870, file: !1149, line: 313, baseType: !46, size: 32)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1870, file: !1149, line: 314, baseType: !1874, size: 8, offset: 32)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !1149, line: 298, size: 8, elements: !1875)
!1875 = !{!1876}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1874, file: !1149, line: 299, baseType: !160, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !1870, file: !1149, line: 315, baseType: !46, size: 32, offset: 64)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1870, file: !1149, line: 316, baseType: !1879, size: 64, offset: 128)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !1149, line: 302, size: 64, elements: !1881)
!1881 = !{!1882, !1887, !1888, !1889}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1880, file: !1149, line: 306, baseType: !1883, size: 8)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1880, file: !1149, line: 303, size: 8, elements: !1884)
!1884 = !{!1885, !1886}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1883, file: !1149, line: 304, baseType: !160, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1883, file: !1149, line: 305, baseType: !160, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1880, file: !1149, line: 307, baseType: !160, size: 8, offset: 8)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !1880, file: !1149, line: 308, baseType: !160, size: 8, offset: 16)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1880, file: !1149, line: 309, baseType: !46, size: 32, offset: 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1148, file: !1149, line: 380, baseType: !1891, size: 64, offset: 4160)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !1149, line: 212, size: 64, elements: !1892)
!1892 = !{!1893}
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1891, file: !1149, line: 213, baseType: !1894, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !1896, line: 131, flags: DIFlagFwdDecl)
!1896 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5dc001277d9a5c352a3990367ecd7f01")
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1148, file: !1149, line: 381, baseType: !1898, size: 384, offset: 4224)
!1898 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !1149, line: 357, size: 384, elements: !1899)
!1899 = !{!1900, !1903, !1904, !1905}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1898, file: !1149, line: 358, baseType: !1901, size: 64)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1767)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1898, file: !1149, line: 359, baseType: !102, size: 128, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !1898, file: !1149, line: 360, baseType: !1901, size: 64, offset: 192)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !1898, file: !1149, line: 361, baseType: !102, size: 128, offset: 256)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1148, file: !1149, line: 382, baseType: !1907, size: 64, offset: 4608)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !1149, line: 124, size: 1216, elements: !1909)
!1909 = !{!1910, !1911, !1912, !1917, !1921, !1925, !1926, !1927}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1908, file: !1149, line: 125, baseType: !1288, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !1908, file: !1149, line: 126, baseType: !102, size: 128, offset: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1908, file: !1149, line: 127, baseType: !1913, size: 64, offset: 192)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{!559, !121, !1916}
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !1908, file: !1149, line: 128, baseType: !1918, size: 64, offset: 256)
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = !DISubroutineType(types: !1920)
!1920 = !{!46, !1147, !1288}
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1908, file: !1149, line: 129, baseType: !1922, size: 64, offset: 320)
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1923 = !DISubroutineType(types: !1924)
!1924 = !{null, !1147}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !1908, file: !1149, line: 130, baseType: !1213, size: 64, offset: 384)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !1908, file: !1149, line: 131, baseType: !1213, size: 64, offset: 448)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !1908, file: !1149, line: 132, baseType: !1928, size: 704, offset: 512)
!1928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !1149, line: 110, size: 704, elements: !1929)
!1929 = !{!1930, !1931, !1935, !1936, !1937}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1928, file: !1149, line: 111, baseType: !117, size: 512)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !1928, file: !1149, line: 112, baseType: !1932, size: 64, offset: 512)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DISubroutineType(types: !1934)
!1934 = !{!46, !1147}
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !1928, file: !1149, line: 113, baseType: !1922, size: 64, offset: 576)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1928, file: !1149, line: 114, baseType: !559, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !1928, file: !1149, line: 115, baseType: !559, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !1148, file: !1149, line: 383, baseType: !1939, size: 64, offset: 4672)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !1149, line: 140, size: 256, elements: !1941)
!1941 = !{!1942, !1943, !1947, !1951}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !1940, file: !1149, line: 141, baseType: !1147, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !1940, file: !1149, line: 142, baseType: !1944, size: 64, offset: 64)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!46, !1147, !1048}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1940, file: !1149, line: 143, baseType: !1948, size: 64, offset: 128)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{null, !1147, !1048}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1940, file: !1149, line: 144, baseType: !1922, size: 64, offset: 192)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !1148, file: !1149, line: 384, baseType: !1953, size: 64, offset: 4736)
!1953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1954, size: 64)
!1954 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1955)
!1955 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !1149, line: 364, flags: DIFlagFwdDecl)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1148, file: !1149, line: 385, baseType: !96, size: 64, offset: 4800)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1148, file: !1149, line: 386, baseType: !1187, size: 5824, offset: 4864)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !1148, file: !1149, line: 387, baseType: !7, size: 32, offset: 10688)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !1148, file: !1149, line: 388, baseType: !7, size: 32, offset: 10720)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !1148, file: !1149, line: 389, baseType: !102, size: 128, offset: 10752)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !1148, file: !1149, line: 390, baseType: !459, size: 256, offset: 10880)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1148, file: !1149, line: 391, baseType: !1922, size: 64, offset: 11136)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !106)
!1965 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !1155, line: 421, baseType: !1048)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_ged_event", file: !3, line: 48, size: 320, elements: !1968)
!1968 = !{!1969, !1970, !1971, !1972, !1973}
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1967, file: !3, line: 49, baseType: !102, size: 128)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1967, file: !3, line: 50, baseType: !1191, size: 64, offset: 128)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "gsi", scope: !1967, file: !3, line: 51, baseType: !7, size: 32, offset: 192)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !1967, file: !3, line: 52, baseType: !7, size: 32, offset: 224)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !1967, file: !3, line: 53, baseType: !1154, size: 64, offset: 256)
!1974 = !{!0, !1975, !1980, !2042, !2045, !2050, !2055, !2057, !2059, !2064, !2066, !2071, !2082, !2087}
!1975 = !DIGlobalVariableExpression(var: !1976, expr: !DIExpression())
!1976 = distinct !DIGlobalVariable(scope: null, file: !3, line: 192, type: !1977, isLocal: true, isDefinition: true)
!1977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 72, elements: !1978)
!1978 = !{!1979}
!1979 = !DISubrange(count: 9)
!1980 = !DIGlobalVariableExpression(var: !1981, expr: !DIExpression())
!1981 = distinct !DIGlobalVariable(name: "ged_driver", scope: !2, file: !3, line: 187, type: !1982, isLocal: true, isDefinition: true)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !1983, line: 236, size: 1664, elements: !1984)
!1983 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1dac52bf003d860ac3c23951fd976693")
!1984 = !{!1985, !2027, !2028, !2032, !2033, !2037, !2038, !2039, !2040, !2041}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1982, file: !1983, line: 237, baseType: !1986, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DISubroutineType(types: !1988)
!1988 = !{!46, !1989}
!1989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1990, size: 64)
!1990 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !1983, line: 23, size: 6464, elements: !1991)
!1991 = !{!1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2014, !2021, !2022, !2025}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1990, file: !1983, line: 24, baseType: !121, size: 64)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1990, file: !1983, line: 25, baseType: !46, size: 32, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !1990, file: !1983, line: 26, baseType: !559, size: 8, offset: 96)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1990, file: !1983, line: 27, baseType: !1187, size: 5824, offset: 128)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !1990, file: !1983, line: 28, baseType: !365, size: 64, offset: 5952)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1990, file: !1983, line: 29, baseType: !1556, size: 128, offset: 6016)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !1990, file: !1983, line: 30, baseType: !1048, size: 32, offset: 6144)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !1990, file: !1983, line: 31, baseType: !2000, size: 64, offset: 6208)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2002, line: 21, size: 512, elements: !2003)
!2002 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!2003 = !{!2004, !2007, !2008, !2009, !2010, !2011, !2012, !2013}
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2001, file: !2002, line: 22, baseType: !2005, size: 64)
!2005 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !103, line: 164, baseType: !2006)
!2006 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !103, line: 159, baseType: !365)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2001, file: !2002, line: 23, baseType: !2005, size: 64, offset: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2001, file: !2002, line: 24, baseType: !121, size: 64, offset: 128)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2001, file: !2002, line: 25, baseType: !252, size: 64, offset: 192)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2001, file: !2002, line: 26, baseType: !252, size: 64, offset: 256)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2001, file: !2002, line: 27, baseType: !2000, size: 64, offset: 320)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2001, file: !2002, line: 27, baseType: !2000, size: 64, offset: 384)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2001, file: !2002, line: 27, baseType: !2000, size: 64, offset: 448)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !1990, file: !1983, line: 33, baseType: !2015, size: 64, offset: 6272)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2017)
!2017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !1275, line: 607, size: 256, elements: !2018)
!2018 = !{!2019, !2020}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2017, file: !1275, line: 608, baseType: !1762, size: 160)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2017, file: !1275, line: 609, baseType: !1297, size: 64, offset: 192)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !1990, file: !1983, line: 38, baseType: !121, size: 64, offset: 6336)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !1990, file: !1983, line: 41, baseType: !2023, size: 64, offset: 6400)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !1983, line: 19, flags: DIFlagFwdDecl)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1990, file: !1983, line: 44, baseType: !2026, offset: 6464)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !1567, line: 8, elements: !338)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1982, file: !1983, line: 247, baseType: !1986, size: 64, offset: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "remove_new", scope: !1982, file: !1983, line: 248, baseType: !2029, size: 64, offset: 128)
!2029 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2030, size: 64)
!2030 = !DISubroutineType(types: !2031)
!2031 = !{null, !1989}
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1982, file: !1983, line: 250, baseType: !2029, size: 64, offset: 192)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1982, file: !1983, line: 251, baseType: !2034, size: 64, offset: 256)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!46, !1989, !1308}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1982, file: !1983, line: 252, baseType: !1986, size: 64, offset: 320)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1982, file: !1983, line: 253, baseType: !1263, size: 1152, offset: 384)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !1982, file: !1983, line: 254, baseType: !2015, size: 64, offset: 1536)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !1982, file: !1983, line: 255, baseType: !559, size: 8, offset: 1600)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !1982, file: !1983, line: 263, baseType: !559, size: 8, offset: 1608)
!2042 = !DIGlobalVariableExpression(var: !2043, expr: !DIExpression())
!2043 = distinct !DIGlobalVariable(scope: null, file: !3, line: 152, type: !2044, isLocal: true, isDefinition: true)
!2044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 40, elements: !1842)
!2045 = !DIGlobalVariableExpression(var: !2046, expr: !DIExpression())
!2046 = distinct !DIGlobalVariable(scope: null, file: !3, line: 155, type: !2047, isLocal: true, isDefinition: true)
!2047 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 264, elements: !2048)
!2048 = !{!2049}
!2049 = !DISubrange(count: 33)
!2050 = !DIGlobalVariableExpression(var: !2051, expr: !DIExpression())
!2051 = distinct !DIGlobalVariable(scope: null, file: !3, line: 89, type: !2052, isLocal: true, isDefinition: true)
!2052 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 240, elements: !2053)
!2053 = !{!2054}
!2054 = !DISubrange(count: 30)
!2055 = !DIGlobalVariableExpression(var: !2056, expr: !DIExpression())
!2056 = distinct !DIGlobalVariable(scope: null, file: !3, line: 104, type: !1741, isLocal: true, isDefinition: true)
!2057 = !DIGlobalVariableExpression(var: !2058, expr: !DIExpression())
!2058 = distinct !DIGlobalVariable(scope: null, file: !3, line: 111, type: !2044, isLocal: true, isDefinition: true)
!2059 = !DIGlobalVariableExpression(var: !2060, expr: !DIExpression())
!2060 = distinct !DIGlobalVariable(scope: null, file: !3, line: 114, type: !2061, isLocal: true, isDefinition: true)
!2061 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 216, elements: !2062)
!2062 = !{!2063}
!2063 = !DISubrange(count: 27)
!2064 = !DIGlobalVariableExpression(var: !2065, expr: !DIExpression())
!2065 = distinct !DIGlobalVariable(scope: null, file: !3, line: 131, type: !1977, isLocal: true, isDefinition: true)
!2066 = !DIGlobalVariableExpression(var: !2067, expr: !DIExpression())
!2067 = distinct !DIGlobalVariable(scope: null, file: !3, line: 132, type: !2068, isLocal: true, isDefinition: true)
!2068 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 336, elements: !2069)
!2069 = !{!2070}
!2070 = !DISubrange(count: 42)
!2071 = !DIGlobalVariableExpression(var: !2072, expr: !DIExpression())
!2072 = distinct !DIGlobalVariable(name: "__print_once", scope: !2073, file: !3, line: 63, type: !559, isLocal: true, isDefinition: true)
!2073 = distinct !DISubprogram(name: "acpi_ged_irq_handler", scope: !3, file: !3, line: 56, type: !2074, scopeLine: 57, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2077)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!2076, !46, !96}
!2076 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !85, line: 17, baseType: !84)
!2077 = !{!2078, !2079, !2080, !2081}
!2078 = !DILocalVariable(name: "irq", arg: 1, scope: !2073, file: !3, line: 56, type: !46)
!2079 = !DILocalVariable(name: "data", arg: 2, scope: !2073, file: !3, line: 56, type: !96)
!2080 = !DILocalVariable(name: "event", scope: !2073, file: !3, line: 58, type: !1966)
!2081 = !DILocalVariable(name: "acpi_ret", scope: !2073, file: !3, line: 59, type: !1965)
!2082 = !DIGlobalVariableExpression(var: !2083, expr: !DIExpression())
!2083 = distinct !DIGlobalVariable(scope: null, file: !3, line: 63, type: !2084, isLocal: true, isDefinition: true)
!2084 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 232, elements: !2085)
!2085 = !{!2086}
!2086 = !DISubrange(count: 29)
!2087 = !DIGlobalVariableExpression(var: !2088, expr: !DIExpression())
!2088 = distinct !DIGlobalVariable(name: "ged_acpi_ids", scope: !2, file: !3, line: 182, type: !2089, isLocal: true, isDefinition: true)
!2089 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1289, size: 512, elements: !920)
!2090 = !{i32 7, !"Dwarf Version", i32 5}
!2091 = !{i32 2, !"Debug Info Version", i32 3}
!2092 = !{i32 1, !"wchar_size", i32 2}
!2093 = !{i32 8, !"cf-protection-branch", i32 1}
!2094 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2095 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2096 = !{i32 1, !"Code Model", i32 2}
!2097 = !{i32 1, !"override-stack-alignment", i32 8}
!2098 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2099 = distinct !DISubprogram(name: "__initstub__kmod_acpi__206_196_ged_driver_init6", scope: !3, file: !3, line: 196, type: !902, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2100 = !DILocation(line: 196, column: 1, scope: !2099)
!2101 = distinct !DISubprogram(name: "ged_driver_init", scope: !3, file: !3, line: 196, type: !902, scopeLine: 196, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2)
!2102 = !DILocation(line: 196, column: 1, scope: !2101)
!2103 = !DISubprogram(name: "__platform_driver_register", scope: !1983, file: !1983, line: 274, type: !2104, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2104 = !DISubroutineType(types: !2105)
!2105 = !{!46, !2106, !97}
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!2107 = distinct !DISubprogram(name: "ged_probe", scope: !3, file: !3, line: 141, type: !1987, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2108)
!2108 = !{!2109, !2110, !2116, !2117, !2119}
!2109 = !DILocalVariable(name: "pdev", arg: 1, scope: !2107, file: !3, line: 141, type: !1989)
!2110 = !DILocalVariable(name: "geddev", scope: !2107, file: !3, line: 143, type: !2111)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_ged_device", file: !3, line: 43, size: 192, elements: !2113)
!2113 = !{!2114, !2115}
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2112, file: !3, line: 44, baseType: !1191, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "event_list", scope: !2112, file: !3, line: 45, baseType: !102, size: 128, offset: 64)
!2116 = !DILocalVariable(name: "acpi_ret", scope: !2107, file: !3, line: 144, type: !1965)
!2117 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !2118, file: !3, line: 152, type: !1161)
!2118 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 152, column: 33)
!2119 = !DILocalVariable(name: "__mptr", scope: !2120, file: !3, line: 152, type: !96)
!2120 = distinct !DILexicalBlock(scope: !2118, file: !3, line: 152, column: 33)
!2121 = !DILocation(line: 141, column: 46, scope: !2107)
!2122 = !DILocation(line: 143, column: 2, scope: !2107)
!2123 = !DILocation(line: 143, column: 26, scope: !2107)
!2124 = !DILocation(line: 144, column: 2, scope: !2107)
!2125 = !DILocation(line: 144, column: 14, scope: !2107)
!2126 = !DILocation(line: 146, column: 25, scope: !2107)
!2127 = !DILocation(line: 146, column: 31, scope: !2107)
!2128 = !DILocation(line: 146, column: 11, scope: !2107)
!2129 = !DILocation(line: 146, column: 9, scope: !2107)
!2130 = !DILocation(line: 147, column: 7, scope: !2131)
!2131 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 147, column: 6)
!2132 = !DILocation(line: 147, column: 6, scope: !2107)
!2133 = !DILocation(line: 148, column: 3, scope: !2131)
!2134 = !DILocation(line: 150, column: 17, scope: !2107)
!2135 = !DILocation(line: 150, column: 23, scope: !2107)
!2136 = !DILocation(line: 150, column: 2, scope: !2107)
!2137 = !DILocation(line: 150, column: 10, scope: !2107)
!2138 = !DILocation(line: 150, column: 14, scope: !2107)
!2139 = !DILocation(line: 151, column: 18, scope: !2107)
!2140 = !DILocation(line: 151, column: 26, scope: !2107)
!2141 = !DILocation(line: 151, column: 2, scope: !2107)
!2142 = !DILocation(line: 152, column: 33, scope: !2118)
!2143 = !DILocation(line: 152, column: 33, scope: !2120)
!2144 = !DILocation(line: 152, column: 33, scope: !2107)
!2145 = !DILocation(line: 153, column: 40, scope: !2107)
!2146 = !DILocation(line: 152, column: 13, scope: !2107)
!2147 = !DILocation(line: 152, column: 11, scope: !2107)
!2148 = !DILocation(line: 154, column: 6, scope: !2149)
!2149 = distinct !DILexicalBlock(scope: !2107, file: !3, line: 154, column: 6)
!2150 = !DILocation(line: 154, column: 6, scope: !2107)
!2151 = !DILocation(line: 155, column: 3, scope: !2152)
!2152 = distinct !DILexicalBlock(scope: !2153, file: !3, line: 155, column: 3)
!2153 = distinct !DILexicalBlock(scope: !2149, file: !3, line: 154, column: 30)
!2154 = !DILocation(line: 155, column: 3, scope: !2155)
!2155 = distinct !DILexicalBlock(scope: !2152, file: !3, line: 155, column: 3)
!2156 = !DILocation(line: 156, column: 3, scope: !2153)
!2157 = !DILocation(line: 158, column: 23, scope: !2107)
!2158 = !DILocation(line: 158, column: 29, scope: !2107)
!2159 = !DILocation(line: 158, column: 2, scope: !2107)
!2160 = !DILocation(line: 160, column: 2, scope: !2107)
!2161 = !DILocation(line: 161, column: 1, scope: !2107)
!2162 = distinct !DISubprogram(name: "ged_remove", scope: !3, file: !3, line: 176, type: !1987, scopeLine: 177, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2163)
!2163 = !{!2164}
!2164 = !DILocalVariable(name: "pdev", arg: 1, scope: !2162, file: !3, line: 176, type: !1989)
!2165 = !DILocation(line: 176, column: 47, scope: !2162)
!2166 = !DILocation(line: 178, column: 15, scope: !2162)
!2167 = !DILocation(line: 178, column: 2, scope: !2162)
!2168 = !DILocation(line: 179, column: 2, scope: !2162)
!2169 = distinct !DISubprogram(name: "ged_shutdown", scope: !3, file: !3, line: 163, type: !2030, scopeLine: 164, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2170)
!2170 = !{!2171, !2172, !2173, !2174, !2175, !2178, !2180}
!2171 = !DILocalVariable(name: "pdev", arg: 1, scope: !2169, file: !3, line: 163, type: !1989)
!2172 = !DILocalVariable(name: "geddev", scope: !2169, file: !3, line: 165, type: !2111)
!2173 = !DILocalVariable(name: "event", scope: !2169, file: !3, line: 166, type: !1966)
!2174 = !DILocalVariable(name: "next", scope: !2169, file: !3, line: 166, type: !1966)
!2175 = !DILocalVariable(name: "__mptr", scope: !2176, file: !3, line: 168, type: !96)
!2176 = distinct !DILexicalBlock(scope: !2177, file: !3, line: 168, column: 2)
!2177 = distinct !DILexicalBlock(scope: !2169, file: !3, line: 168, column: 2)
!2178 = !DILocalVariable(name: "__mptr", scope: !2179, file: !3, line: 168, type: !96)
!2179 = distinct !DILexicalBlock(scope: !2177, file: !3, line: 168, column: 2)
!2180 = !DILocalVariable(name: "__mptr", scope: !2181, file: !3, line: 168, type: !96)
!2181 = distinct !DILexicalBlock(scope: !2182, file: !3, line: 168, column: 2)
!2182 = distinct !DILexicalBlock(scope: !2177, file: !3, line: 168, column: 2)
!2183 = !DILocation(line: 163, column: 50, scope: !2169)
!2184 = !DILocation(line: 165, column: 2, scope: !2169)
!2185 = !DILocation(line: 165, column: 26, scope: !2169)
!2186 = !DILocation(line: 165, column: 56, scope: !2169)
!2187 = !DILocation(line: 165, column: 35, scope: !2169)
!2188 = !DILocation(line: 166, column: 2, scope: !2169)
!2189 = !DILocation(line: 166, column: 25, scope: !2169)
!2190 = !DILocation(line: 166, column: 33, scope: !2169)
!2191 = !DILocation(line: 168, column: 2, scope: !2176)
!2192 = !DILocation(line: 168, column: 2, scope: !2177)
!2193 = !DILocation(line: 168, column: 2, scope: !2179)
!2194 = !DILocation(line: 168, column: 2, scope: !2182)
!2195 = !DILocation(line: 169, column: 12, scope: !2196)
!2196 = distinct !DILexicalBlock(scope: !2182, file: !3, line: 168, column: 67)
!2197 = !DILocation(line: 169, column: 19, scope: !2196)
!2198 = !DILocation(line: 169, column: 24, scope: !2196)
!2199 = !DILocation(line: 169, column: 3, scope: !2196)
!2200 = !DILocation(line: 170, column: 13, scope: !2196)
!2201 = !DILocation(line: 170, column: 20, scope: !2196)
!2202 = !DILocation(line: 170, column: 3, scope: !2196)
!2203 = !DILocation(line: 173, column: 2, scope: !2196)
!2204 = !DILocation(line: 168, column: 2, scope: !2181)
!2205 = distinct !{!2205, !2192, !2206, !2207, !2208}
!2206 = !DILocation(line: 173, column: 2, scope: !2177)
!2207 = !{!"llvm.loop.mustprogress"}
!2208 = !{!"llvm.loop.unroll.disable"}
!2209 = !DILocation(line: 174, column: 1, scope: !2169)
!2210 = distinct !DISubprogram(name: "devm_kzalloc", scope: !26, file: !26, line: 312, type: !2211, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2213)
!2211 = !DISubroutineType(types: !2212)
!2212 = !{!96, !1191, !249, !1146}
!2213 = !{!2214, !2215, !2216}
!2214 = !DILocalVariable(name: "dev", arg: 1, scope: !2210, file: !26, line: 312, type: !1191)
!2215 = !DILocalVariable(name: "size", arg: 2, scope: !2210, file: !26, line: 312, type: !249)
!2216 = !DILocalVariable(name: "gfp", arg: 3, scope: !2210, file: !26, line: 312, type: !1146)
!2217 = !DILocation(line: 312, column: 49, scope: !2210)
!2218 = !DILocation(line: 312, column: 61, scope: !2210)
!2219 = !DILocation(line: 312, column: 73, scope: !2210)
!2220 = !DILocation(line: 314, column: 22, scope: !2210)
!2221 = !DILocation(line: 314, column: 27, scope: !2210)
!2222 = !DILocation(line: 314, column: 33, scope: !2210)
!2223 = !DILocation(line: 314, column: 37, scope: !2210)
!2224 = !DILocation(line: 314, column: 9, scope: !2210)
!2225 = !DILocation(line: 314, column: 2, scope: !2210)
!2226 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !2227, file: !2227, line: 35, type: !2228, scopeLine: 36, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2230)
!2227 = !DIFile(filename: "./include/linux/list.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "429ea4362cb9909e19fe101683408805")
!2228 = !DISubroutineType(types: !2229)
!2229 = !{null, !106}
!2230 = !{!2231}
!2231 = !DILocalVariable(name: "list", arg: 1, scope: !2226, file: !2227, line: 35, type: !106)
!2232 = !DILocation(line: 35, column: 53, scope: !2226)
!2233 = !DILocation(line: 37, column: 2, scope: !2226)
!2234 = !DILocation(line: 37, column: 2, scope: !2235)
!2235 = distinct !DILexicalBlock(scope: !2226, file: !2227, line: 37, column: 2)
!2236 = !DILocation(line: 37, column: 2, scope: !2237)
!2237 = distinct !DILexicalBlock(scope: !2235, file: !2227, line: 37, column: 2)
!2238 = !DILocation(line: 37, column: 2, scope: !2239)
!2239 = distinct !DILexicalBlock(scope: !2235, file: !2227, line: 37, column: 2)
!2240 = !DILocation(line: 38, column: 2, scope: !2226)
!2241 = !DILocation(line: 38, column: 2, scope: !2242)
!2242 = distinct !DILexicalBlock(scope: !2226, file: !2227, line: 38, column: 2)
!2243 = !DILocation(line: 38, column: 2, scope: !2244)
!2244 = distinct !DILexicalBlock(scope: !2242, file: !2227, line: 38, column: 2)
!2245 = !DILocation(line: 38, column: 2, scope: !2246)
!2246 = distinct !DILexicalBlock(scope: !2242, file: !2227, line: 38, column: 2)
!2247 = !DILocation(line: 39, column: 1, scope: !2226)
!2248 = !DISubprogram(name: "acpi_walk_resources", scope: !2249, file: !2249, line: 819, type: !2250, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2249 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!2250 = !DISubroutineType(types: !2251)
!2251 = !{!1965, !1154, !202, !2252, !96}
!2252 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_walk_resource_callback", file: !2249, line: 791, baseType: !2253)
!2253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2254, size: 64)
!2254 = !DISubroutineType(types: !2255)
!2255 = !{!1965, !2256, !96}
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource", file: !2258, line: 678, size: 544, elements: !2259)
!2258 = !DIFile(filename: "./include/acpi/acrestyp.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8e234732d1e15cdbb059f7f7ffd573c0")
!2259 = !{!2260, !2261, !2262}
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2257, file: !2258, line: 679, baseType: !1048, size: 32)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2257, file: !2258, line: 680, baseType: !1048, size: 32, offset: 32)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2257, file: !2258, line: 681, baseType: !2263, size: 480, offset: 64)
!2263 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_data", file: !2258, line: 639, size: 480, elements: !2264)
!2264 = !{!2265, !2285, !2302, !2308, !2316, !2321, !2327, !2332, !2340, !2344, !2352, !2360, !2366, !2406, !2424, !2442, !2454, !2475, !2483, !2503, !2519, !2539, !2561, !2576, !2589, !2601, !2614, !2628, !2639, !2651, !2660}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !2263, file: !2258, line: 640, baseType: !2266, size: 56)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_irq", file: !2258, line: 138, size: 56, elements: !2267)
!2267 = !{!2268, !2269, !2270, !2271, !2272, !2273, !2274}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !2266, file: !2258, line: 139, baseType: !160, size: 8)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !2266, file: !2258, line: 140, baseType: !160, size: 8, offset: 8)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !2266, file: !2258, line: 141, baseType: !160, size: 8, offset: 16)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !2266, file: !2258, line: 142, baseType: !160, size: 8, offset: 24)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !2266, file: !2258, line: 143, baseType: !160, size: 8, offset: 32)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !2266, file: !2258, line: 144, baseType: !160, size: 8, offset: 40)
!2274 = !DIDerivedType(tag: DW_TAG_member, scope: !2266, file: !2258, line: 145, baseType: !2275, size: 8, offset: 48)
!2275 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2266, file: !2258, line: 145, size: 8, elements: !2276)
!2276 = !{!2277, !2278}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !2275, file: !2258, line: 146, baseType: !160, size: 8)
!2278 = !DIDerivedType(tag: DW_TAG_member, scope: !2275, file: !2258, line: 147, baseType: !2279)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2275, file: !2258, line: 147, elements: !2280)
!2280 = !{!2281, !2283}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_interrupts", scope: !2279, file: !2258, line: 147, baseType: !2282)
!2282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2279, file: !2258, line: 147, elements: !338)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !2279, file: !2258, line: 147, baseType: !2284)
!2284 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, elements: !537)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "dma", scope: !2263, file: !2258, line: 641, baseType: !2286, size: 40)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_dma", file: !2258, line: 151, size: 40, elements: !2287)
!2287 = !{!2288, !2289, !2290, !2291, !2292}
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2286, file: !2258, line: 152, baseType: !160, size: 8)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "bus_master", scope: !2286, file: !2258, line: 153, baseType: !160, size: 8, offset: 8)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "transfer", scope: !2286, file: !2258, line: 154, baseType: !160, size: 8, offset: 16)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "channel_count", scope: !2286, file: !2258, line: 155, baseType: !160, size: 8, offset: 24)
!2292 = !DIDerivedType(tag: DW_TAG_member, scope: !2286, file: !2258, line: 156, baseType: !2293, size: 8, offset: 32)
!2293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2286, file: !2258, line: 156, size: 8, elements: !2294)
!2294 = !{!2295, !2296}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "channel", scope: !2293, file: !2258, line: 157, baseType: !160, size: 8)
!2296 = !DIDerivedType(tag: DW_TAG_member, scope: !2293, file: !2258, line: 158, baseType: !2297)
!2297 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2293, file: !2258, line: 158, elements: !2298)
!2298 = !{!2299, !2301}
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_channels", scope: !2297, file: !2258, line: 158, baseType: !2300)
!2300 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2297, file: !2258, line: 158, elements: !338)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !2297, file: !2258, line: 158, baseType: !2284)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "start_dpf", scope: !2263, file: !2258, line: 642, baseType: !2303, size: 24)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_start_dependent", file: !2258, line: 162, size: 24, elements: !2304)
!2304 = !{!2305, !2306, !2307}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "descriptor_length", scope: !2303, file: !2258, line: 163, baseType: !160, size: 8)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "compatibility_priority", scope: !2303, file: !2258, line: 164, baseType: !160, size: 8, offset: 8)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "performance_robustness", scope: !2303, file: !2258, line: 165, baseType: !160, size: 8, offset: 16)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !2263, file: !2258, line: 643, baseType: !2309, size: 56)
!2309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_io", file: !2258, line: 173, size: 56, elements: !2310)
!2310 = !{!2311, !2312, !2313, !2314, !2315}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "io_decode", scope: !2309, file: !2258, line: 174, baseType: !160, size: 8)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !2309, file: !2258, line: 175, baseType: !160, size: 8, offset: 8)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2309, file: !2258, line: 176, baseType: !160, size: 8, offset: 16)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !2309, file: !2258, line: 177, baseType: !170, size: 16, offset: 24)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !2309, file: !2258, line: 178, baseType: !170, size: 16, offset: 40)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_io", scope: !2263, file: !2258, line: 644, baseType: !2317, size: 24)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_io", file: !2258, line: 181, size: 24, elements: !2318)
!2318 = !{!2319, !2320}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2317, file: !2258, line: 182, baseType: !170, size: 16)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2317, file: !2258, line: 183, baseType: !160, size: 8, offset: 16)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_dma", scope: !2263, file: !2258, line: 645, baseType: !2322, size: 40)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_dma", file: !2258, line: 186, size: 40, elements: !2323)
!2323 = !{!2324, !2325, !2326}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "request_lines", scope: !2322, file: !2258, line: 187, baseType: !170, size: 16)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "channels", scope: !2322, file: !2258, line: 188, baseType: !170, size: 16, offset: 16)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "width", scope: !2322, file: !2258, line: 189, baseType: !160, size: 8, offset: 32)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !2263, file: !2258, line: 646, baseType: !2328, size: 16)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor", file: !2258, line: 201, size: 16, elements: !2329)
!2329 = !{!2330, !2331}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !2328, file: !2258, line: 202, baseType: !170, size: 16)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !2328, file: !2258, line: 203, baseType: !2284, offset: 16)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_typed", scope: !2263, file: !2258, line: 647, baseType: !2333, size: 152)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_vendor_typed", file: !2258, line: 208, size: 152, elements: !2334)
!2334 = !{!2335, !2336, !2337, !2339}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "byte_length", scope: !2333, file: !2258, line: 209, baseType: !170, size: 16)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "uuid_subtype", scope: !2333, file: !2258, line: 210, baseType: !160, size: 8, offset: 16)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "uuid", scope: !2333, file: !2258, line: 211, baseType: !2338, size: 128, offset: 24)
!2338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !160, size: 128, elements: !1294)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "byte_data", scope: !2333, file: !2258, line: 212, baseType: !2284, offset: 152)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "end_tag", scope: !2263, file: !2258, line: 648, baseType: !2341, size: 8)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_end_tag", file: !2258, line: 215, size: 8, elements: !2342)
!2342 = !{!2343}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "checksum", scope: !2341, file: !2258, line: 216, baseType: !160, size: 8)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "memory24", scope: !2263, file: !2258, line: 649, baseType: !2345, size: 72)
!2345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory24", file: !2258, line: 219, size: 72, elements: !2346)
!2346 = !{!2347, !2348, !2349, !2350, !2351}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !2345, file: !2258, line: 220, baseType: !160, size: 8)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !2345, file: !2258, line: 221, baseType: !170, size: 16, offset: 8)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !2345, file: !2258, line: 222, baseType: !170, size: 16, offset: 24)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !2345, file: !2258, line: 223, baseType: !170, size: 16, offset: 40)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2345, file: !2258, line: 224, baseType: !170, size: 16, offset: 56)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "memory32", scope: !2263, file: !2258, line: 650, baseType: !2353, size: 136)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_memory32", file: !2258, line: 227, size: 136, elements: !2354)
!2354 = !{!2355, !2356, !2357, !2358, !2359}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !2353, file: !2258, line: 228, baseType: !160, size: 8)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !2353, file: !2258, line: 229, baseType: !1048, size: 32, offset: 8)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !2353, file: !2258, line: 230, baseType: !1048, size: 32, offset: 40)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "alignment", scope: !2353, file: !2258, line: 231, baseType: !1048, size: 32, offset: 72)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2353, file: !2258, line: 232, baseType: !1048, size: 32, offset: 104)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_memory32", scope: !2263, file: !2258, line: 651, baseType: !2361, size: 72)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_fixed_memory32", file: !2258, line: 235, size: 72, elements: !2362)
!2362 = !{!2363, !2364, !2365}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !2361, file: !2258, line: 236, baseType: !160, size: 8)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2361, file: !2258, line: 237, baseType: !1048, size: 32, offset: 8)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2361, file: !2258, line: 238, baseType: !1048, size: 32, offset: 40)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "address16", scope: !2263, file: !2258, line: 652, baseType: !2367, size: 240)
!2367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address16", file: !2258, line: 312, size: 240, elements: !2368)
!2368 = !{!2369, !2370, !2371, !2372, !2373, !2374, !2392, !2400}
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !2367, file: !2258, line: 313, baseType: !160, size: 8)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2367, file: !2258, line: 313, baseType: !160, size: 8, offset: 8)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !2367, file: !2258, line: 313, baseType: !160, size: 8, offset: 16)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !2367, file: !2258, line: 313, baseType: !160, size: 8, offset: 24)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !2367, file: !2258, line: 313, baseType: !160, size: 8, offset: 32)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2367, file: !2258, line: 313, baseType: !2375, size: 32, offset: 40)
!2375 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_resource_attribute", file: !2258, line: 255, size: 32, elements: !2376)
!2376 = !{!2377, !2384, !2391}
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !2375, file: !2258, line: 256, baseType: !2378, size: 32)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_memory_attribute", file: !2258, line: 241, size: 32, elements: !2379)
!2379 = !{!2380, !2381, !2382, !2383}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect", scope: !2378, file: !2258, line: 242, baseType: !160, size: 8)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "caching", scope: !2378, file: !2258, line: 243, baseType: !160, size: 8, offset: 8)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !2378, file: !2258, line: 244, baseType: !160, size: 8, offset: 16)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !2378, file: !2258, line: 245, baseType: !160, size: 8, offset: 24)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !2375, file: !2258, line: 257, baseType: !2385, size: 32)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_io_attribute", file: !2258, line: 248, size: 32, elements: !2386)
!2386 = !{!2387, !2388, !2389, !2390}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "range_type", scope: !2385, file: !2258, line: 249, baseType: !160, size: 8)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "translation", scope: !2385, file: !2258, line: 250, baseType: !160, size: 8, offset: 8)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "translation_type", scope: !2385, file: !2258, line: 251, baseType: !160, size: 8, offset: 16)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !2385, file: !2258, line: 252, baseType: !160, size: 8, offset: 24)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !2375, file: !2258, line: 261, baseType: !160, size: 8)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2367, file: !2258, line: 313, baseType: !2393, size: 80, offset: 72)
!2393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address16_attribute", file: !2258, line: 285, size: 80, elements: !2394)
!2394 = !{!2395, !2396, !2397, !2398, !2399}
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !2393, file: !2258, line: 286, baseType: !170, size: 16)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !2393, file: !2258, line: 287, baseType: !170, size: 16, offset: 16)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !2393, file: !2258, line: 288, baseType: !170, size: 16, offset: 32)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !2393, file: !2258, line: 289, baseType: !170, size: 16, offset: 48)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2393, file: !2258, line: 290, baseType: !170, size: 16, offset: 64)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2367, file: !2258, line: 314, baseType: !2401, size: 88, offset: 152)
!2401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_source", file: !2258, line: 269, size: 88, elements: !2402)
!2402 = !{!2403, !2404, !2405}
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2401, file: !2258, line: 270, baseType: !160, size: 8)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !2401, file: !2258, line: 271, baseType: !170, size: 16, offset: 8)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !2401, file: !2258, line: 272, baseType: !202, size: 64, offset: 24)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "address32", scope: !2263, file: !2258, line: 653, baseType: !2407, size: 320)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address32", file: !2258, line: 317, size: 320, elements: !2408)
!2408 = !{!2409, !2410, !2411, !2412, !2413, !2414, !2415, !2423}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !2407, file: !2258, line: 318, baseType: !160, size: 8)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2407, file: !2258, line: 318, baseType: !160, size: 8, offset: 8)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !2407, file: !2258, line: 318, baseType: !160, size: 8, offset: 16)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !2407, file: !2258, line: 318, baseType: !160, size: 8, offset: 24)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !2407, file: !2258, line: 318, baseType: !160, size: 8, offset: 32)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2407, file: !2258, line: 318, baseType: !2375, size: 32, offset: 40)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2407, file: !2258, line: 318, baseType: !2416, size: 160, offset: 72)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address32_attribute", file: !2258, line: 293, size: 160, elements: !2417)
!2417 = !{!2418, !2419, !2420, !2421, !2422}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !2416, file: !2258, line: 294, baseType: !1048, size: 32)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !2416, file: !2258, line: 295, baseType: !1048, size: 32, offset: 32)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !2416, file: !2258, line: 296, baseType: !1048, size: 32, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !2416, file: !2258, line: 297, baseType: !1048, size: 32, offset: 96)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2416, file: !2258, line: 298, baseType: !1048, size: 32, offset: 128)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2407, file: !2258, line: 319, baseType: !2401, size: 88, offset: 232)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "address64", scope: !2263, file: !2258, line: 654, baseType: !2425, size: 480)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address64", file: !2258, line: 322, size: 480, elements: !2426)
!2426 = !{!2427, !2428, !2429, !2430, !2431, !2432, !2433, !2441}
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !2425, file: !2258, line: 323, baseType: !160, size: 8)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2425, file: !2258, line: 323, baseType: !160, size: 8, offset: 8)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !2425, file: !2258, line: 323, baseType: !160, size: 8, offset: 16)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !2425, file: !2258, line: 323, baseType: !160, size: 8, offset: 24)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !2425, file: !2258, line: 323, baseType: !160, size: 8, offset: 32)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2425, file: !2258, line: 323, baseType: !2375, size: 32, offset: 40)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2425, file: !2258, line: 323, baseType: !2434, size: 320, offset: 72)
!2434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_address64_attribute", file: !2258, line: 301, size: 320, elements: !2435)
!2435 = !{!2436, !2437, !2438, !2439, !2440}
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "granularity", scope: !2434, file: !2258, line: 302, baseType: !365, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "minimum", scope: !2434, file: !2258, line: 303, baseType: !365, size: 64, offset: 64)
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "maximum", scope: !2434, file: !2258, line: 304, baseType: !365, size: 64, offset: 128)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "translation_offset", scope: !2434, file: !2258, line: 305, baseType: !365, size: 64, offset: 192)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "address_length", scope: !2434, file: !2258, line: 306, baseType: !365, size: 64, offset: 256)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2425, file: !2258, line: 324, baseType: !2401, size: 88, offset: 392)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "ext_address64", scope: !2263, file: !2258, line: 655, baseType: !2443, size: 464)
!2443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_address64", file: !2258, line: 327, size: 464, elements: !2444)
!2444 = !{!2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453}
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !2443, file: !2258, line: 328, baseType: !160, size: 8)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2443, file: !2258, line: 328, baseType: !160, size: 8, offset: 8)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !2443, file: !2258, line: 328, baseType: !160, size: 8, offset: 16)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !2443, file: !2258, line: 328, baseType: !160, size: 8, offset: 24)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !2443, file: !2258, line: 328, baseType: !160, size: 8, offset: 32)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2443, file: !2258, line: 328, baseType: !2375, size: 32, offset: 40)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "revision_ID", scope: !2443, file: !2258, line: 328, baseType: !160, size: 8, offset: 72)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2443, file: !2258, line: 329, baseType: !2434, size: 320, offset: 80)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "type_specific", scope: !2443, file: !2258, line: 330, baseType: !365, size: 64, offset: 400)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "extended_irq", scope: !2263, file: !2258, line: 656, baseType: !2455, size: 168)
!2455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_extended_irq", file: !2258, line: 333, size: 168, elements: !2456)
!2456 = !{!2457, !2458, !2459, !2460, !2461, !2462, !2463, !2464}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2455, file: !2258, line: 334, baseType: !160, size: 8)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !2455, file: !2258, line: 335, baseType: !160, size: 8, offset: 8)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !2455, file: !2258, line: 336, baseType: !160, size: 8, offset: 16)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !2455, file: !2258, line: 337, baseType: !160, size: 8, offset: 24)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !2455, file: !2258, line: 338, baseType: !160, size: 8, offset: 32)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt_count", scope: !2455, file: !2258, line: 339, baseType: !160, size: 8, offset: 40)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2455, file: !2258, line: 340, baseType: !2401, size: 88, offset: 48)
!2464 = !DIDerivedType(tag: DW_TAG_member, scope: !2455, file: !2258, line: 341, baseType: !2465, size: 32, offset: 136)
!2465 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2455, file: !2258, line: 341, size: 32, elements: !2466)
!2466 = !{!2467, !2468}
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "interrupt", scope: !2465, file: !2258, line: 342, baseType: !1048, size: 32)
!2468 = !DIDerivedType(tag: DW_TAG_member, scope: !2465, file: !2258, line: 343, baseType: !2469)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2465, file: !2258, line: 343, elements: !2470)
!2470 = !{!2471, !2473}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "__Empty_interrupts", scope: !2469, file: !2258, line: 343, baseType: !2472)
!2472 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2469, file: !2258, line: 343, elements: !338)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "interrupts", scope: !2469, file: !2258, line: 343, baseType: !2474)
!2474 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1048, elements: !537)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "generic_reg", scope: !2263, file: !2258, line: 657, baseType: !2476, size: 96)
!2476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_generic_register", file: !2258, line: 347, size: 96, elements: !2477)
!2477 = !{!2478, !2479, !2480, !2481, !2482}
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "space_id", scope: !2476, file: !2258, line: 348, baseType: !160, size: 8)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "bit_width", scope: !2476, file: !2258, line: 349, baseType: !160, size: 8, offset: 8)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "bit_offset", scope: !2476, file: !2258, line: 350, baseType: !160, size: 8, offset: 16)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "access_size", scope: !2476, file: !2258, line: 351, baseType: !160, size: 8, offset: 24)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2476, file: !2258, line: 352, baseType: !365, size: 64, offset: 32)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "gpio", scope: !2263, file: !2258, line: 658, baseType: !2484, size: 352)
!2484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_gpio", file: !2258, line: 355, size: 352, elements: !2485)
!2485 = !{!2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2502}
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2484, file: !2258, line: 356, baseType: !160, size: 8)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "connection_type", scope: !2484, file: !2258, line: 357, baseType: !160, size: 8, offset: 8)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2484, file: !2258, line: 358, baseType: !160, size: 8, offset: 16)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !2484, file: !2258, line: 359, baseType: !160, size: 8, offset: 24)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !2484, file: !2258, line: 360, baseType: !160, size: 8, offset: 32)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "wake_capable", scope: !2484, file: !2258, line: 361, baseType: !160, size: 8, offset: 40)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "io_restriction", scope: !2484, file: !2258, line: 362, baseType: !160, size: 8, offset: 48)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "triggering", scope: !2484, file: !2258, line: 363, baseType: !160, size: 8, offset: 56)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "polarity", scope: !2484, file: !2258, line: 364, baseType: !160, size: 8, offset: 64)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "drive_strength", scope: !2484, file: !2258, line: 365, baseType: !170, size: 16, offset: 72)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "debounce_timeout", scope: !2484, file: !2258, line: 366, baseType: !170, size: 16, offset: 88)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !2484, file: !2258, line: 367, baseType: !170, size: 16, offset: 104)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2484, file: !2258, line: 368, baseType: !170, size: 16, offset: 120)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2484, file: !2258, line: 369, baseType: !2401, size: 88, offset: 136)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !2484, file: !2258, line: 370, baseType: !2501, size: 64, offset: 224)
!2501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2484, file: !2258, line: 371, baseType: !1788, size: 64, offset: 288)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_serial_bus", scope: !2263, file: !2258, line: 659, baseType: !2504, size: 288)
!2504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_i2c_serialbus", file: !2258, line: 422, size: 288, elements: !2505)
!2505 = !{!2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518}
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2504, file: !2258, line: 423, baseType: !160, size: 8)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2504, file: !2258, line: 423, baseType: !160, size: 8, offset: 8)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2504, file: !2258, line: 423, baseType: !160, size: 8, offset: 16)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !2504, file: !2258, line: 423, baseType: !160, size: 8, offset: 24)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !2504, file: !2258, line: 423, baseType: !160, size: 8, offset: 32)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !2504, file: !2258, line: 423, baseType: !160, size: 8, offset: 40)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !2504, file: !2258, line: 423, baseType: !170, size: 16, offset: 48)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2504, file: !2258, line: 423, baseType: !170, size: 16, offset: 64)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2504, file: !2258, line: 423, baseType: !2401, size: 88, offset: 80)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2504, file: !2258, line: 423, baseType: !1788, size: 64, offset: 168)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "access_mode", scope: !2504, file: !2258, line: 423, baseType: !160, size: 8, offset: 232)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "slave_address", scope: !2504, file: !2258, line: 424, baseType: !170, size: 16, offset: 240)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !2504, file: !2258, line: 425, baseType: !1048, size: 32, offset: 256)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "spi_serial_bus", scope: !2263, file: !2258, line: 660, baseType: !2520, size: 320)
!2520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_spi_serialbus", file: !2258, line: 433, size: 320, elements: !2521)
!2521 = !{!2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538}
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2520, file: !2258, line: 434, baseType: !160, size: 8)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2520, file: !2258, line: 434, baseType: !160, size: 8, offset: 8)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2520, file: !2258, line: 434, baseType: !160, size: 8, offset: 16)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !2520, file: !2258, line: 434, baseType: !160, size: 8, offset: 24)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !2520, file: !2258, line: 434, baseType: !160, size: 8, offset: 32)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !2520, file: !2258, line: 434, baseType: !160, size: 8, offset: 40)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !2520, file: !2258, line: 434, baseType: !170, size: 16, offset: 48)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2520, file: !2258, line: 434, baseType: !170, size: 16, offset: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2520, file: !2258, line: 434, baseType: !2401, size: 88, offset: 80)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2520, file: !2258, line: 434, baseType: !1788, size: 64, offset: 168)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "wire_mode", scope: !2520, file: !2258, line: 434, baseType: !160, size: 8, offset: 232)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "device_polarity", scope: !2520, file: !2258, line: 435, baseType: !160, size: 8, offset: 240)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "data_bit_length", scope: !2520, file: !2258, line: 436, baseType: !160, size: 8, offset: 248)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "clock_phase", scope: !2520, file: !2258, line: 437, baseType: !160, size: 8, offset: 256)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "clock_polarity", scope: !2520, file: !2258, line: 438, baseType: !160, size: 8, offset: 264)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "device_selection", scope: !2520, file: !2258, line: 439, baseType: !170, size: 16, offset: 272)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "connection_speed", scope: !2520, file: !2258, line: 440, baseType: !1048, size: 32, offset: 288)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "uart_serial_bus", scope: !2263, file: !2258, line: 661, baseType: !2540, size: 344)
!2540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_uart_serialbus", file: !2258, line: 463, size: 344, elements: !2541)
!2541 = !{!2542, !2543, !2544, !2545, !2546, !2547, !2548, !2549, !2550, !2551, !2552, !2553, !2554, !2555, !2556, !2557, !2558, !2559, !2560}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2540, file: !2258, line: 464, baseType: !160, size: 8)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2540, file: !2258, line: 464, baseType: !160, size: 8, offset: 8)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2540, file: !2258, line: 464, baseType: !160, size: 8, offset: 16)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !2540, file: !2258, line: 464, baseType: !160, size: 8, offset: 24)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !2540, file: !2258, line: 464, baseType: !160, size: 8, offset: 32)
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !2540, file: !2258, line: 464, baseType: !160, size: 8, offset: 40)
!2548 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !2540, file: !2258, line: 464, baseType: !170, size: 16, offset: 48)
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2540, file: !2258, line: 464, baseType: !170, size: 16, offset: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2540, file: !2258, line: 464, baseType: !2401, size: 88, offset: 80)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2540, file: !2258, line: 464, baseType: !1788, size: 64, offset: 168)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "endian", scope: !2540, file: !2258, line: 464, baseType: !160, size: 8, offset: 232)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "data_bits", scope: !2540, file: !2258, line: 465, baseType: !160, size: 8, offset: 240)
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "stop_bits", scope: !2540, file: !2258, line: 466, baseType: !160, size: 8, offset: 248)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "flow_control", scope: !2540, file: !2258, line: 467, baseType: !160, size: 8, offset: 256)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "parity", scope: !2540, file: !2258, line: 468, baseType: !160, size: 8, offset: 264)
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "lines_enabled", scope: !2540, file: !2258, line: 469, baseType: !160, size: 8, offset: 272)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "rx_fifo_size", scope: !2540, file: !2258, line: 470, baseType: !170, size: 16, offset: 280)
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "tx_fifo_size", scope: !2540, file: !2258, line: 471, baseType: !170, size: 16, offset: 296)
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "default_baud_rate", scope: !2540, file: !2258, line: 472, baseType: !1048, size: 32, offset: 312)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "csi2_serial_bus", scope: !2263, file: !2258, line: 662, baseType: !2562, size: 248)
!2562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_csi2_serialbus", file: !2258, line: 518, size: 248, elements: !2563)
!2563 = !{!2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575}
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2562, file: !2258, line: 519, baseType: !160, size: 8)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2562, file: !2258, line: 519, baseType: !160, size: 8, offset: 8)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2562, file: !2258, line: 519, baseType: !160, size: 8, offset: 16)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !2562, file: !2258, line: 519, baseType: !160, size: 8, offset: 24)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !2562, file: !2258, line: 519, baseType: !160, size: 8, offset: 32)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !2562, file: !2258, line: 519, baseType: !160, size: 8, offset: 40)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !2562, file: !2258, line: 519, baseType: !170, size: 16, offset: 48)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2562, file: !2258, line: 519, baseType: !170, size: 16, offset: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2562, file: !2258, line: 519, baseType: !2401, size: 88, offset: 80)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2562, file: !2258, line: 519, baseType: !1788, size: 64, offset: 168)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "local_port_instance", scope: !2562, file: !2258, line: 519, baseType: !160, size: 8, offset: 232)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "phy_type", scope: !2562, file: !2258, line: 520, baseType: !160, size: 8, offset: 240)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "common_serial_bus", scope: !2263, file: !2258, line: 663, baseType: !2577, size: 232)
!2577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_common_serialbus", file: !2258, line: 407, size: 232, elements: !2578)
!2578 = !{!2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588}
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2577, file: !2258, line: 408, baseType: !160, size: 8)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2577, file: !2258, line: 408, baseType: !160, size: 8, offset: 8)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2577, file: !2258, line: 408, baseType: !160, size: 8, offset: 16)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "slave_mode", scope: !2577, file: !2258, line: 408, baseType: !160, size: 8, offset: 24)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "connection_sharing", scope: !2577, file: !2258, line: 408, baseType: !160, size: 8, offset: 32)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "type_revision_id", scope: !2577, file: !2258, line: 408, baseType: !160, size: 8, offset: 40)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "type_data_length", scope: !2577, file: !2258, line: 408, baseType: !170, size: 16, offset: 48)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2577, file: !2258, line: 408, baseType: !170, size: 16, offset: 64)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2577, file: !2258, line: 408, baseType: !2401, size: 88, offset: 80)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2577, file: !2258, line: 408, baseType: !1788, size: 64, offset: 168)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "pin_function", scope: !2263, file: !2258, line: 664, baseType: !2590, size: 288)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_function", file: !2258, line: 523, size: 288, elements: !2591)
!2591 = !{!2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2590, file: !2258, line: 524, baseType: !160, size: 8)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !2590, file: !2258, line: 525, baseType: !160, size: 8, offset: 8)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !2590, file: !2258, line: 526, baseType: !160, size: 8, offset: 16)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !2590, file: !2258, line: 527, baseType: !170, size: 16, offset: 24)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !2590, file: !2258, line: 528, baseType: !170, size: 16, offset: 40)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2590, file: !2258, line: 529, baseType: !170, size: 16, offset: 56)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2590, file: !2258, line: 530, baseType: !2401, size: 88, offset: 72)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !2590, file: !2258, line: 531, baseType: !2501, size: 64, offset: 160)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2590, file: !2258, line: 532, baseType: !1788, size: 64, offset: 224)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config", scope: !2263, file: !2258, line: 665, baseType: !2602, size: 312)
!2602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_config", file: !2258, line: 535, size: 312, elements: !2603)
!2603 = !{!2604, !2605, !2606, !2607, !2608, !2609, !2610, !2611, !2612, !2613}
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2602, file: !2258, line: 536, baseType: !160, size: 8)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2602, file: !2258, line: 537, baseType: !160, size: 8, offset: 8)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !2602, file: !2258, line: 538, baseType: !160, size: 8, offset: 16)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !2602, file: !2258, line: 539, baseType: !160, size: 8, offset: 24)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !2602, file: !2258, line: 540, baseType: !1048, size: 32, offset: 32)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !2602, file: !2258, line: 541, baseType: !170, size: 16, offset: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2602, file: !2258, line: 542, baseType: !170, size: 16, offset: 80)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2602, file: !2258, line: 543, baseType: !2401, size: 88, offset: 96)
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !2602, file: !2258, line: 544, baseType: !2501, size: 64, offset: 184)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2602, file: !2258, line: 545, baseType: !1788, size: 64, offset: 248)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group", scope: !2263, file: !2258, line: 666, baseType: !2615, size: 256)
!2615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group", file: !2258, line: 574, size: 256, elements: !2616)
!2616 = !{!2617, !2618, !2619, !2620, !2621, !2622, !2627}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2615, file: !2258, line: 575, baseType: !160, size: 8)
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2615, file: !2258, line: 576, baseType: !160, size: 8, offset: 8)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table_length", scope: !2615, file: !2258, line: 577, baseType: !170, size: 16, offset: 16)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2615, file: !2258, line: 578, baseType: !170, size: 16, offset: 32)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "pin_table", scope: !2615, file: !2258, line: 579, baseType: !2501, size: 64, offset: 48)
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "resource_label", scope: !2615, file: !2258, line: 580, baseType: !2623, size: 80, offset: 112)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_label", file: !2258, line: 264, size: 80, elements: !2624)
!2624 = !{!2625, !2626}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "string_length", scope: !2623, file: !2258, line: 265, baseType: !170, size: 16)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "string_ptr", scope: !2623, file: !2258, line: 266, baseType: !202, size: 64, offset: 16)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2615, file: !2258, line: 581, baseType: !1788, size: 64, offset: 192)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_function", scope: !2263, file: !2258, line: 667, baseType: !2629, size: 288)
!2629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_function", file: !2258, line: 584, size: 288, elements: !2630)
!2630 = !{!2631, !2632, !2633, !2634, !2635, !2636, !2637, !2638}
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2629, file: !2258, line: 585, baseType: !160, size: 8)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2629, file: !2258, line: 586, baseType: !160, size: 8, offset: 8)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !2629, file: !2258, line: 587, baseType: !160, size: 8, offset: 16)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "function_number", scope: !2629, file: !2258, line: 588, baseType: !170, size: 16, offset: 24)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2629, file: !2258, line: 589, baseType: !170, size: 16, offset: 40)
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2629, file: !2258, line: 590, baseType: !2401, size: 88, offset: 56)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !2629, file: !2258, line: 591, baseType: !2623, size: 80, offset: 144)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2629, file: !2258, line: 592, baseType: !1788, size: 64, offset: 224)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "pin_group_config", scope: !2263, file: !2258, line: 668, baseType: !2640, size: 312)
!2640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_pin_group_config", file: !2258, line: 595, size: 312, elements: !2641)
!2641 = !{!2642, !2643, !2644, !2645, !2646, !2647, !2648, !2649, !2650}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2640, file: !2258, line: 596, baseType: !160, size: 8)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2640, file: !2258, line: 597, baseType: !160, size: 8, offset: 8)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "shareable", scope: !2640, file: !2258, line: 598, baseType: !160, size: 8, offset: 16)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_type", scope: !2640, file: !2258, line: 599, baseType: !160, size: 8, offset: 24)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "pin_config_value", scope: !2640, file: !2258, line: 600, baseType: !1048, size: 32, offset: 32)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_length", scope: !2640, file: !2258, line: 601, baseType: !170, size: 16, offset: 64)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2640, file: !2258, line: 602, baseType: !2401, size: 88, offset: 80)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source_label", scope: !2640, file: !2258, line: 603, baseType: !2623, size: 80, offset: 168)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_data", scope: !2640, file: !2258, line: 604, baseType: !1788, size: 64, offset: 248)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "clock_input", scope: !2263, file: !2258, line: 669, baseType: !2652, size: 160)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_clock_input", file: !2258, line: 548, size: 160, elements: !2653)
!2653 = !{!2654, !2655, !2656, !2657, !2658, !2659}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "revision_id", scope: !2652, file: !2258, line: 549, baseType: !160, size: 8)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2652, file: !2258, line: 550, baseType: !160, size: 8, offset: 8)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "scale", scope: !2652, file: !2258, line: 551, baseType: !160, size: 8, offset: 16)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_divisor", scope: !2652, file: !2258, line: 552, baseType: !170, size: 16, offset: 24)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "frequency_numerator", scope: !2652, file: !2258, line: 553, baseType: !1048, size: 32, offset: 40)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "resource_source", scope: !2652, file: !2258, line: 554, baseType: !2401, size: 88, offset: 72)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "address", scope: !2263, file: !2258, line: 673, baseType: !2661, size: 72)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_resource_address", file: !2258, line: 309, size: 72, elements: !2662)
!2662 = !{!2663, !2664, !2665, !2666, !2667, !2668}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "resource_type", scope: !2661, file: !2258, line: 310, baseType: !160, size: 8)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "producer_consumer", scope: !2661, file: !2258, line: 310, baseType: !160, size: 8, offset: 8)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "decode", scope: !2661, file: !2258, line: 310, baseType: !160, size: 8, offset: 16)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "min_address_fixed", scope: !2661, file: !2258, line: 310, baseType: !160, size: 8, offset: 24)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "max_address_fixed", scope: !2661, file: !2258, line: 310, baseType: !160, size: 8, offset: 32)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !2661, file: !2258, line: 310, baseType: !2375, size: 32, offset: 40)
!2669 = distinct !DISubprogram(name: "acpi_device_handle", scope: !2670, file: !2670, line: 40, type: !2671, scopeLine: 41, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2673)
!2670 = !DIFile(filename: "./include/linux/acpi.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "087557429ebf4c5c9ef14f260264aa7b")
!2671 = !DISubroutineType(types: !2672)
!2672 = !{!1154, !1147}
!2673 = !{!2674}
!2674 = !DILocalVariable(name: "adev", arg: 1, scope: !2669, file: !2670, line: 40, type: !1147)
!2675 = !DILocation(line: 40, column: 66, scope: !2669)
!2676 = !DILocation(line: 42, column: 9, scope: !2669)
!2677 = !DILocation(line: 42, column: 16, scope: !2669)
!2678 = !DILocation(line: 42, column: 22, scope: !2669)
!2679 = !DILocation(line: 42, column: 2, scope: !2669)
!2680 = !DISubprogram(name: "is_acpi_device_node", scope: !1149, file: !1149, line: 410, type: !1177, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2681 = distinct !DISubprogram(name: "acpi_ged_request_interrupt", scope: !3, file: !3, line: 68, type: !2254, scopeLine: 70, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2682)
!2682 = !{!2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2691, !2692, !2694, !2696, !2697, !2698, !2700, !2702, !2703}
!2683 = !DILocalVariable(name: "ares", arg: 1, scope: !2681, file: !3, line: 68, type: !2256)
!2684 = !DILocalVariable(name: "context", arg: 2, scope: !2681, file: !3, line: 69, type: !96)
!2685 = !DILocalVariable(name: "event", scope: !2681, file: !3, line: 71, type: !1966)
!2686 = !DILocalVariable(name: "irq", scope: !2681, file: !3, line: 72, type: !7)
!2687 = !DILocalVariable(name: "gsi", scope: !2681, file: !3, line: 73, type: !7)
!2688 = !DILocalVariable(name: "irqflags", scope: !2681, file: !3, line: 74, type: !7)
!2689 = !DILocalVariable(name: "geddev", scope: !2681, file: !3, line: 75, type: !2111)
!2690 = !DILocalVariable(name: "dev", scope: !2681, file: !3, line: 76, type: !1191)
!2691 = !DILocalVariable(name: "handle", scope: !2681, file: !3, line: 77, type: !1154)
!2692 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !2693, file: !3, line: 77, type: !1161)
!2693 = distinct !DILexicalBlock(scope: !2681, file: !3, line: 77, column: 23)
!2694 = !DILocalVariable(name: "__mptr", scope: !2695, file: !3, line: 77, type: !96)
!2695 = distinct !DILexicalBlock(scope: !2693, file: !3, line: 77, column: 23)
!2696 = !DILocalVariable(name: "evt_handle", scope: !2681, file: !3, line: 78, type: !1154)
!2697 = !DILocalVariable(name: "r", scope: !2681, file: !3, line: 79, type: !2001)
!2698 = !DILocalVariable(name: "p", scope: !2681, file: !3, line: 80, type: !2699)
!2699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2700 = !DILocalVariable(name: "pext", scope: !2681, file: !3, line: 81, type: !2701)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2702 = !DILocalVariable(name: "ev_name", scope: !2681, file: !3, line: 82, type: !2044)
!2703 = !DILocalVariable(name: "trigger", scope: !2681, file: !3, line: 83, type: !160)
!2704 = !DILocation(line: 68, column: 69, scope: !2681)
!2705 = !DILocation(line: 69, column: 18, scope: !2681)
!2706 = !DILocation(line: 71, column: 2, scope: !2681)
!2707 = !DILocation(line: 71, column: 25, scope: !2681)
!2708 = !DILocation(line: 72, column: 2, scope: !2681)
!2709 = !DILocation(line: 72, column: 15, scope: !2681)
!2710 = !DILocation(line: 73, column: 2, scope: !2681)
!2711 = !DILocation(line: 73, column: 15, scope: !2681)
!2712 = !DILocation(line: 74, column: 2, scope: !2681)
!2713 = !DILocation(line: 74, column: 15, scope: !2681)
!2714 = !DILocation(line: 75, column: 2, scope: !2681)
!2715 = !DILocation(line: 75, column: 26, scope: !2681)
!2716 = !DILocation(line: 75, column: 35, scope: !2681)
!2717 = !DILocation(line: 76, column: 2, scope: !2681)
!2718 = !DILocation(line: 76, column: 17, scope: !2681)
!2719 = !DILocation(line: 76, column: 23, scope: !2681)
!2720 = !DILocation(line: 76, column: 31, scope: !2681)
!2721 = !DILocation(line: 77, column: 2, scope: !2681)
!2722 = !DILocation(line: 77, column: 14, scope: !2681)
!2723 = !DILocation(line: 77, column: 23, scope: !2693)
!2724 = !DILocation(line: 77, column: 23, scope: !2695)
!2725 = !DILocation(line: 77, column: 23, scope: !2681)
!2726 = !DILocation(line: 78, column: 2, scope: !2681)
!2727 = !DILocation(line: 78, column: 14, scope: !2681)
!2728 = !DILocation(line: 79, column: 2, scope: !2681)
!2729 = !DILocation(line: 79, column: 18, scope: !2681)
!2730 = !DILocation(line: 80, column: 2, scope: !2681)
!2731 = !DILocation(line: 80, column: 28, scope: !2681)
!2732 = !DILocation(line: 80, column: 33, scope: !2681)
!2733 = !DILocation(line: 80, column: 39, scope: !2681)
!2734 = !DILocation(line: 81, column: 2, scope: !2681)
!2735 = !DILocation(line: 81, column: 37, scope: !2681)
!2736 = !DILocation(line: 81, column: 45, scope: !2681)
!2737 = !DILocation(line: 81, column: 51, scope: !2681)
!2738 = !DILocation(line: 82, column: 2, scope: !2681)
!2739 = !DILocation(line: 82, column: 7, scope: !2681)
!2740 = !DILocation(line: 83, column: 2, scope: !2681)
!2741 = !DILocation(line: 83, column: 5, scope: !2681)
!2742 = !DILocation(line: 85, column: 6, scope: !2743)
!2743 = distinct !DILexicalBlock(scope: !2681, file: !3, line: 85, column: 6)
!2744 = !DILocation(line: 85, column: 12, scope: !2743)
!2745 = !DILocation(line: 85, column: 17, scope: !2743)
!2746 = !DILocation(line: 85, column: 6, scope: !2681)
!2747 = !DILocation(line: 86, column: 3, scope: !2743)
!2748 = !DILocation(line: 88, column: 35, scope: !2749)
!2749 = distinct !DILexicalBlock(scope: !2681, file: !3, line: 88, column: 6)
!2750 = !DILocation(line: 88, column: 7, scope: !2749)
!2751 = !DILocation(line: 88, column: 6, scope: !2681)
!2752 = !DILocation(line: 89, column: 3, scope: !2753)
!2753 = distinct !DILexicalBlock(scope: !2754, file: !3, line: 89, column: 3)
!2754 = distinct !DILexicalBlock(scope: !2749, file: !3, line: 88, column: 49)
!2755 = !DILocation(line: 89, column: 3, scope: !2756)
!2756 = distinct !DILexicalBlock(scope: !2753, file: !3, line: 89, column: 3)
!2757 = !DILocation(line: 90, column: 3, scope: !2754)
!2758 = !DILocation(line: 92, column: 6, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !2681, file: !3, line: 92, column: 6)
!2760 = !DILocation(line: 92, column: 12, scope: !2759)
!2761 = !DILocation(line: 92, column: 17, scope: !2759)
!2762 = !DILocation(line: 92, column: 6, scope: !2681)
!2763 = !DILocation(line: 93, column: 9, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2759, file: !3, line: 92, column: 44)
!2765 = !DILocation(line: 93, column: 12, scope: !2764)
!2766 = !DILocation(line: 93, column: 7, scope: !2764)
!2767 = !DILocation(line: 94, column: 13, scope: !2764)
!2768 = !DILocation(line: 94, column: 16, scope: !2764)
!2769 = !DILocation(line: 94, column: 11, scope: !2764)
!2770 = !DILocation(line: 95, column: 2, scope: !2764)
!2771 = !DILocation(line: 96, column: 9, scope: !2772)
!2772 = distinct !DILexicalBlock(scope: !2759, file: !3, line: 95, column: 9)
!2773 = !DILocation(line: 96, column: 15, scope: !2772)
!2774 = !DILocation(line: 96, column: 7, scope: !2772)
!2775 = !DILocation(line: 97, column: 13, scope: !2772)
!2776 = !DILocation(line: 97, column: 19, scope: !2772)
!2777 = !DILocation(line: 97, column: 11, scope: !2772)
!2778 = !DILocation(line: 100, column: 10, scope: !2681)
!2779 = !DILocation(line: 100, column: 8, scope: !2681)
!2780 = !DILocation(line: 100, column: 6, scope: !2681)
!2781 = !DILocation(line: 102, column: 10, scope: !2681)
!2782 = !DILocation(line: 102, column: 2, scope: !2681)
!2783 = !DILocation(line: 104, column: 11, scope: !2784)
!2784 = distinct !DILexicalBlock(scope: !2681, file: !3, line: 102, column: 15)
!2785 = !DILocation(line: 105, column: 4, scope: !2784)
!2786 = !DILocation(line: 105, column: 12, scope: !2784)
!2787 = !DILocation(line: 105, column: 48, scope: !2784)
!2788 = !DILocation(line: 104, column: 3, scope: !2784)
!2789 = !DILocation(line: 107, column: 7, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2784, file: !3, line: 107, column: 7)
!2791 = !DILocation(line: 107, column: 7, scope: !2784)
!2792 = !DILocation(line: 108, column: 4, scope: !2790)
!2793 = !DILocation(line: 111, column: 7, scope: !2794)
!2794 = distinct !DILexicalBlock(scope: !2784, file: !3, line: 111, column: 7)
!2795 = !DILocation(line: 111, column: 7, scope: !2784)
!2796 = !DILocation(line: 112, column: 4, scope: !2794)
!2797 = !DILocation(line: 114, column: 3, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2784, file: !3, line: 114, column: 3)
!2799 = !DILocation(line: 114, column: 3, scope: !2800)
!2800 = distinct !DILexicalBlock(scope: !2798, file: !3, line: 114, column: 3)
!2801 = !DILocation(line: 115, column: 3, scope: !2784)
!2802 = !DILocation(line: 118, column: 23, scope: !2681)
!2803 = !DILocation(line: 118, column: 10, scope: !2681)
!2804 = !DILocation(line: 118, column: 8, scope: !2681)
!2805 = !DILocation(line: 119, column: 7, scope: !2806)
!2806 = distinct !DILexicalBlock(scope: !2681, file: !3, line: 119, column: 6)
!2807 = !DILocation(line: 119, column: 6, scope: !2681)
!2808 = !DILocation(line: 120, column: 3, scope: !2806)
!2809 = !DILocation(line: 122, column: 15, scope: !2681)
!2810 = !DILocation(line: 122, column: 2, scope: !2681)
!2811 = !DILocation(line: 122, column: 9, scope: !2681)
!2812 = !DILocation(line: 122, column: 13, scope: !2681)
!2813 = !DILocation(line: 123, column: 15, scope: !2681)
!2814 = !DILocation(line: 123, column: 2, scope: !2681)
!2815 = !DILocation(line: 123, column: 9, scope: !2681)
!2816 = !DILocation(line: 123, column: 13, scope: !2681)
!2817 = !DILocation(line: 124, column: 15, scope: !2681)
!2818 = !DILocation(line: 124, column: 2, scope: !2681)
!2819 = !DILocation(line: 124, column: 9, scope: !2681)
!2820 = !DILocation(line: 124, column: 13, scope: !2681)
!2821 = !DILocation(line: 125, column: 18, scope: !2681)
!2822 = !DILocation(line: 125, column: 2, scope: !2681)
!2823 = !DILocation(line: 125, column: 9, scope: !2681)
!2824 = !DILocation(line: 125, column: 16, scope: !2681)
!2825 = !DILocation(line: 127, column: 8, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2681, file: !3, line: 127, column: 6)
!2827 = !DILocation(line: 127, column: 14, scope: !2826)
!2828 = !DILocation(line: 127, column: 6, scope: !2681)
!2829 = !DILocation(line: 128, column: 12, scope: !2826)
!2830 = !DILocation(line: 128, column: 3, scope: !2826)
!2831 = !DILocation(line: 130, column: 27, scope: !2832)
!2832 = distinct !DILexicalBlock(scope: !2681, file: !3, line: 130, column: 6)
!2833 = !DILocation(line: 131, column: 6, scope: !2832)
!2834 = !DILocation(line: 131, column: 28, scope: !2832)
!2835 = !DILocation(line: 130, column: 6, scope: !2832)
!2836 = !DILocation(line: 130, column: 6, scope: !2681)
!2837 = !DILocation(line: 132, column: 3, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2839, file: !3, line: 132, column: 3)
!2839 = distinct !DILexicalBlock(scope: !2832, file: !3, line: 131, column: 36)
!2840 = !DILocation(line: 132, column: 3, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2838, file: !3, line: 132, column: 3)
!2842 = !DILocation(line: 133, column: 3, scope: !2839)
!2843 = !DILocation(line: 137, column: 17, scope: !2681)
!2844 = !DILocation(line: 137, column: 24, scope: !2681)
!2845 = !DILocation(line: 137, column: 31, scope: !2681)
!2846 = !DILocation(line: 137, column: 39, scope: !2681)
!2847 = !DILocation(line: 137, column: 2, scope: !2681)
!2848 = !DILocation(line: 138, column: 2, scope: !2681)
!2849 = !DILocation(line: 139, column: 1, scope: !2681)
!2850 = !DISubprogram(name: "_dev_err", scope: !2851, file: !2851, line: 50, type: !2852, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2851 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!2852 = !DISubroutineType(types: !2853)
!2853 = !{null, !1185, !121, null}
!2854 = distinct !DISubprogram(name: "platform_set_drvdata", scope: !1983, file: !1983, line: 291, type: !2855, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2857)
!2855 = !DISubroutineType(types: !2856)
!2856 = !{null, !1989, !96}
!2857 = !{!2858, !2859}
!2858 = !DILocalVariable(name: "pdev", arg: 1, scope: !2854, file: !1983, line: 291, type: !1989)
!2859 = !DILocalVariable(name: "data", arg: 2, scope: !2854, file: !1983, line: 292, type: !96)
!2860 = !DILocation(line: 291, column: 65, scope: !2854)
!2861 = !DILocation(line: 292, column: 12, scope: !2854)
!2862 = !DILocation(line: 294, column: 19, scope: !2854)
!2863 = !DILocation(line: 294, column: 25, scope: !2854)
!2864 = !DILocation(line: 294, column: 30, scope: !2854)
!2865 = !DILocation(line: 294, column: 2, scope: !2854)
!2866 = !DILocation(line: 295, column: 1, scope: !2854)
!2867 = !DISubprogram(name: "devm_kmalloc", scope: !26, file: !26, line: 305, type: !2211, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2868 = !DISubprogram(name: "acpi_dev_resource_interrupt", scope: !2670, file: !2670, line: 492, type: !2869, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2869 = !DISubroutineType(types: !2870)
!2870 = !{!559, !2256, !46, !2000}
!2871 = !DISubprogram(name: "sprintf", scope: !2872, file: !2872, line: 10, type: !2873, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2872 = !DIFile(filename: "./include/linux/sprintf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b582970aa1a6bc207f53b8aafd5477c3")
!2873 = !DISubroutineType(types: !2874)
!2874 = !{!46, !202, !121, null}
!2875 = !DISubprogram(name: "acpi_get_handle", scope: !2249, file: !2249, line: 527, type: !2876, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2876 = !DISubroutineType(types: !2877)
!2877 = !{!1965, !1154, !121, !2878}
!2878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!2879 = !DISubprogram(name: "request_threaded_irq", scope: !1896, file: !1896, line: 147, type: !2880, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2880 = !DISubroutineType(types: !2881)
!2881 = !{!46, !7, !2882, !2882, !252, !121, !96}
!2882 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !1896, line: 100, baseType: !2883)
!2883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2884 = !DILocation(line: 56, column: 45, scope: !2073)
!2885 = !DILocation(line: 56, column: 56, scope: !2073)
!2886 = !DILocation(line: 58, column: 2, scope: !2073)
!2887 = !DILocation(line: 58, column: 25, scope: !2073)
!2888 = !DILocation(line: 58, column: 33, scope: !2073)
!2889 = !DILocation(line: 59, column: 2, scope: !2073)
!2890 = !DILocation(line: 59, column: 14, scope: !2073)
!2891 = !DILocation(line: 61, column: 40, scope: !2073)
!2892 = !DILocation(line: 61, column: 47, scope: !2073)
!2893 = !DILocation(line: 61, column: 61, scope: !2073)
!2894 = !DILocation(line: 61, column: 68, scope: !2073)
!2895 = !DILocation(line: 61, column: 13, scope: !2073)
!2896 = !DILocation(line: 61, column: 11, scope: !2073)
!2897 = !DILocation(line: 62, column: 6, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2073, file: !3, line: 62, column: 6)
!2899 = !DILocation(line: 62, column: 6, scope: !2073)
!2900 = !DILocation(line: 63, column: 3, scope: !2898)
!2901 = !DILocation(line: 63, column: 3, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2903, file: !3, line: 63, column: 3)
!2903 = distinct !DILexicalBlock(scope: !2898, file: !3, line: 63, column: 3)
!2904 = !{i8 0, i8 2}
!2905 = !DILocation(line: 63, column: 3, scope: !2903)
!2906 = !DILocation(line: 63, column: 3, scope: !2907)
!2907 = distinct !DILexicalBlock(scope: !2902, file: !3, line: 63, column: 3)
!2908 = !DILocation(line: 63, column: 3, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 63, column: 3)
!2910 = !DILocation(line: 63, column: 3, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2909, file: !3, line: 63, column: 3)
!2912 = !DILocation(line: 66, column: 1, scope: !2073)
!2913 = !DILocation(line: 65, column: 2, scope: !2073)
!2914 = distinct !DISubprogram(name: "list_add_tail", scope: !2227, file: !2227, line: 181, type: !2915, scopeLine: 182, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2917)
!2915 = !DISubroutineType(types: !2916)
!2916 = !{null, !106, !106}
!2917 = !{!2918, !2919}
!2918 = !DILocalVariable(name: "new", arg: 1, scope: !2914, file: !2227, line: 181, type: !106)
!2919 = !DILocalVariable(name: "head", arg: 2, scope: !2914, file: !2227, line: 181, type: !106)
!2920 = !DILocation(line: 181, column: 52, scope: !2914)
!2921 = !DILocation(line: 181, column: 75, scope: !2914)
!2922 = !DILocation(line: 183, column: 13, scope: !2914)
!2923 = !DILocation(line: 183, column: 18, scope: !2914)
!2924 = !DILocation(line: 183, column: 24, scope: !2914)
!2925 = !DILocation(line: 183, column: 30, scope: !2914)
!2926 = !DILocation(line: 183, column: 2, scope: !2914)
!2927 = !DILocation(line: 184, column: 1, scope: !2914)
!2928 = !DISubprogram(name: "acpi_execute_simple_method", scope: !1149, file: !1149, line: 43, type: !2929, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!1965, !1154, !202, !365}
!2931 = distinct !DISubprogram(name: "__list_add", scope: !2227, file: !2227, line: 146, type: !2932, scopeLine: 149, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2934)
!2932 = !DISubroutineType(types: !2933)
!2933 = !{null, !106, !106, !106}
!2934 = !{!2935, !2936, !2937}
!2935 = !DILocalVariable(name: "new", arg: 1, scope: !2931, file: !2227, line: 146, type: !106)
!2936 = !DILocalVariable(name: "prev", arg: 2, scope: !2931, file: !2227, line: 147, type: !106)
!2937 = !DILocalVariable(name: "next", arg: 3, scope: !2931, file: !2227, line: 148, type: !106)
!2938 = !DILocation(line: 146, column: 49, scope: !2931)
!2939 = !DILocation(line: 147, column: 28, scope: !2931)
!2940 = !DILocation(line: 148, column: 28, scope: !2931)
!2941 = !DILocation(line: 150, column: 24, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2931, file: !2227, line: 150, column: 6)
!2943 = !DILocation(line: 150, column: 29, scope: !2942)
!2944 = !DILocation(line: 150, column: 35, scope: !2942)
!2945 = !DILocation(line: 150, column: 7, scope: !2942)
!2946 = !DILocation(line: 150, column: 6, scope: !2931)
!2947 = !DILocation(line: 151, column: 3, scope: !2942)
!2948 = !DILocation(line: 153, column: 15, scope: !2931)
!2949 = !DILocation(line: 153, column: 2, scope: !2931)
!2950 = !DILocation(line: 153, column: 8, scope: !2931)
!2951 = !DILocation(line: 153, column: 13, scope: !2931)
!2952 = !DILocation(line: 154, column: 14, scope: !2931)
!2953 = !DILocation(line: 154, column: 2, scope: !2931)
!2954 = !DILocation(line: 154, column: 7, scope: !2931)
!2955 = !DILocation(line: 154, column: 12, scope: !2931)
!2956 = !DILocation(line: 155, column: 14, scope: !2931)
!2957 = !DILocation(line: 155, column: 2, scope: !2931)
!2958 = !DILocation(line: 155, column: 7, scope: !2931)
!2959 = !DILocation(line: 155, column: 12, scope: !2931)
!2960 = !DILocation(line: 156, column: 2, scope: !2931)
!2961 = !DILocation(line: 156, column: 2, scope: !2962)
!2962 = distinct !DILexicalBlock(scope: !2931, file: !2227, line: 156, column: 2)
!2963 = !DILocation(line: 156, column: 2, scope: !2964)
!2964 = distinct !DILexicalBlock(scope: !2962, file: !2227, line: 156, column: 2)
!2965 = !DILocation(line: 156, column: 2, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2962, file: !2227, line: 156, column: 2)
!2967 = !DILocation(line: 157, column: 1, scope: !2931)
!2968 = distinct !DISubprogram(name: "__list_add_valid", scope: !2227, file: !2227, line: 128, type: !2969, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2971)
!2969 = !DISubroutineType(types: !2970)
!2970 = !{!559, !106, !106, !106}
!2971 = !{!2972, !2973, !2974}
!2972 = !DILocalVariable(name: "new", arg: 1, scope: !2968, file: !2227, line: 128, type: !106)
!2973 = !DILocalVariable(name: "prev", arg: 2, scope: !2968, file: !2227, line: 129, type: !106)
!2974 = !DILocalVariable(name: "next", arg: 3, scope: !2968, file: !2227, line: 130, type: !106)
!2975 = !DILocation(line: 128, column: 55, scope: !2968)
!2976 = !DILocation(line: 129, column: 23, scope: !2968)
!2977 = !DILocation(line: 130, column: 23, scope: !2968)
!2978 = !DILocation(line: 132, column: 2, scope: !2968)
!2979 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !26, file: !26, line: 921, type: !2980, scopeLine: 922, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2982)
!2980 = !DISubroutineType(types: !2981)
!2981 = !{null, !1191, !96}
!2982 = !{!2983, !2984}
!2983 = !DILocalVariable(name: "dev", arg: 1, scope: !2979, file: !26, line: 921, type: !1191)
!2984 = !DILocalVariable(name: "data", arg: 2, scope: !2979, file: !26, line: 921, type: !96)
!2985 = !DILocation(line: 921, column: 51, scope: !2979)
!2986 = !DILocation(line: 921, column: 62, scope: !2979)
!2987 = !DILocation(line: 923, column: 21, scope: !2979)
!2988 = !DILocation(line: 923, column: 2, scope: !2979)
!2989 = !DILocation(line: 923, column: 7, scope: !2979)
!2990 = !DILocation(line: 923, column: 19, scope: !2979)
!2991 = !DILocation(line: 924, column: 1, scope: !2979)
!2992 = distinct !DISubprogram(name: "platform_get_drvdata", scope: !1983, file: !1983, line: 286, type: !2993, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !2997)
!2993 = !DISubroutineType(types: !2994)
!2994 = !{!96, !2995}
!2995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2996, size: 64)
!2996 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1990)
!2997 = !{!2998}
!2998 = !DILocalVariable(name: "pdev", arg: 1, scope: !2992, file: !1983, line: 286, type: !2995)
!2999 = !DILocation(line: 286, column: 72, scope: !2992)
!3000 = !DILocation(line: 288, column: 26, scope: !2992)
!3001 = !DILocation(line: 288, column: 32, scope: !2992)
!3002 = !DILocation(line: 288, column: 9, scope: !2992)
!3003 = !DILocation(line: 288, column: 2, scope: !2992)
!3004 = !DISubprogram(name: "free_irq", scope: !1896, file: !1896, line: 196, type: !3005, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3005 = !DISubroutineType(types: !3006)
!3006 = !{!480, !7, !96}
!3007 = distinct !DISubprogram(name: "list_del", scope: !2227, file: !2227, line: 227, type: !2228, scopeLine: 228, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3008)
!3008 = !{!3009}
!3009 = !DILocalVariable(name: "entry", arg: 1, scope: !3007, file: !2227, line: 227, type: !106)
!3010 = !DILocation(line: 227, column: 47, scope: !3007)
!3011 = !DILocation(line: 229, column: 19, scope: !3007)
!3012 = !DILocation(line: 229, column: 2, scope: !3007)
!3013 = !DILocation(line: 230, column: 2, scope: !3007)
!3014 = !DILocation(line: 230, column: 9, scope: !3007)
!3015 = !DILocation(line: 230, column: 14, scope: !3007)
!3016 = !DILocation(line: 231, column: 2, scope: !3007)
!3017 = !DILocation(line: 231, column: 9, scope: !3007)
!3018 = !DILocation(line: 231, column: 14, scope: !3007)
!3019 = !DILocation(line: 232, column: 1, scope: !3007)
!3020 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !26, file: !26, line: 916, type: !3021, scopeLine: 917, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3023)
!3021 = !DISubroutineType(types: !3022)
!3022 = !{!96, !1185}
!3023 = !{!3024}
!3024 = !DILocalVariable(name: "dev", arg: 1, scope: !3020, file: !26, line: 916, type: !1185)
!3025 = !DILocation(line: 916, column: 58, scope: !3020)
!3026 = !DILocation(line: 918, column: 9, scope: !3020)
!3027 = !DILocation(line: 918, column: 14, scope: !3020)
!3028 = !DILocation(line: 918, column: 2, scope: !3020)
!3029 = distinct !DISubprogram(name: "__list_del_entry", scope: !2227, file: !2227, line: 213, type: !2228, scopeLine: 214, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3030)
!3030 = !{!3031}
!3031 = !DILocalVariable(name: "entry", arg: 1, scope: !3029, file: !2227, line: 213, type: !106)
!3032 = !DILocation(line: 213, column: 55, scope: !3029)
!3033 = !DILocation(line: 215, column: 30, scope: !3034)
!3034 = distinct !DILexicalBlock(scope: !3029, file: !2227, line: 215, column: 6)
!3035 = !DILocation(line: 215, column: 7, scope: !3034)
!3036 = !DILocation(line: 215, column: 6, scope: !3029)
!3037 = !DILocation(line: 216, column: 3, scope: !3034)
!3038 = !DILocation(line: 218, column: 13, scope: !3029)
!3039 = !DILocation(line: 218, column: 20, scope: !3029)
!3040 = !DILocation(line: 218, column: 26, scope: !3029)
!3041 = !DILocation(line: 218, column: 33, scope: !3029)
!3042 = !DILocation(line: 218, column: 2, scope: !3029)
!3043 = !DILocation(line: 219, column: 1, scope: !3029)
!3044 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !2227, file: !2227, line: 134, type: !3045, scopeLine: 135, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3047)
!3045 = !DISubroutineType(types: !3046)
!3046 = !{!559, !106}
!3047 = !{!3048}
!3048 = !DILocalVariable(name: "entry", arg: 1, scope: !3044, file: !2227, line: 134, type: !106)
!3049 = !DILocation(line: 134, column: 61, scope: !3044)
!3050 = !DILocation(line: 136, column: 2, scope: !3044)
!3051 = distinct !DISubprogram(name: "__list_del", scope: !2227, file: !2227, line: 193, type: !2915, scopeLine: 194, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !2, retainedNodes: !3052)
!3052 = !{!3053, !3054}
!3053 = !DILocalVariable(name: "prev", arg: 1, scope: !3051, file: !2227, line: 193, type: !106)
!3054 = !DILocalVariable(name: "next", arg: 2, scope: !3051, file: !2227, line: 193, type: !106)
!3055 = !DILocation(line: 193, column: 50, scope: !3051)
!3056 = !DILocation(line: 193, column: 75, scope: !3051)
!3057 = !DILocation(line: 195, column: 15, scope: !3051)
!3058 = !DILocation(line: 195, column: 2, scope: !3051)
!3059 = !DILocation(line: 195, column: 8, scope: !3051)
!3060 = !DILocation(line: 195, column: 13, scope: !3051)
!3061 = !DILocation(line: 196, column: 2, scope: !3051)
!3062 = !DILocation(line: 196, column: 2, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3051, file: !2227, line: 196, column: 2)
!3064 = !DILocation(line: 196, column: 2, scope: !3065)
!3065 = distinct !DILexicalBlock(scope: !3063, file: !2227, line: 196, column: 2)
!3066 = !DILocation(line: 196, column: 2, scope: !3067)
!3067 = distinct !DILexicalBlock(scope: !3063, file: !2227, line: 196, column: 2)
!3068 = !DILocation(line: 197, column: 1, scope: !3051)
