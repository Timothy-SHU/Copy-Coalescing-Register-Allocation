; ModuleID = 'drivers/acpi/fan_core.c'
source_filename = "drivers/acpi/fan_core.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

module asm ".section\09\22.initcall6.init..kmod_fan__229_463_acpi_fan_driver_init\22, \22a\22\09\09"
module asm "__initcall__kmod_fan__229_463_acpi_fan_driver_init6:\09\09\09"
module asm ".long\09__initstub__kmod_fan__229_463_acpi_fan_driver_init6 - .\09"
module asm ".previous\09\09\09\09\09"

%struct.acpi_buffer = type { i64, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.acpi_device_id = type { [16 x i8], i64, i32, i32 }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.thermal_cooling_device_ops = type { ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.anon.7 = type { i32, i32, ptr }
%union.acpi_object = type { %struct.anon.9 }
%struct.anon.9 = type { i32, i32, i64, i32 }
%struct.anon.4 = type { i32, i64 }
%struct.acpi_fan_fst = type { i64, i64, i64 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i64 }
%struct.pdev_archdata = type {}
%struct.acpi_fan = type { i8, %struct.acpi_fan_fif, ptr, i32, ptr, %struct.device_attribute, %struct.device_attribute }
%struct.acpi_fan_fif = type { i8, i8, i8, i8 }
%struct.device_attribute = type { %struct.attribute, ptr, ptr }
%struct.attribute = type { ptr, i16 }
%struct.thermal_cooling_device = type { i32, ptr, i64, %struct.device, ptr, ptr, ptr, ptr, i8, %struct.mutex, %struct.list_head, %struct.list_head }
%struct.acpi_fan_fps = type { i64, i64, i64, i64, i64, [20 x i8], %struct.device_attribute }

@__const.acpi_fan_get_fst.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, ptr null }, align 8
@.str = private unnamed_addr constant [5 x i8] c"_FST\00", align 1, !dbg !0
@.str.1 = private unnamed_addr constant [22 x i8] c"Get fan state failed\0A\00", align 1, !dbg !7
@.str.2 = private unnamed_addr constant [19 x i8] c"Invalid _FST data\0A\00", align 1, !dbg !12
@__UNIQUE_ID___addressable___initstub__kmod_fan__229_463_acpi_fan_driver_init6230 = internal global ptr @__initstub__kmod_fan__229_463_acpi_fan_driver_init6, section ".discard.addressable", align 8, !dbg !17
@acpi_fan_driver = internal global %struct.platform_driver { ptr @acpi_fan_probe, ptr @acpi_fan_remove, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr @fan_device_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @acpi_fan_pm, ptr null, ptr null }, ptr null, i8 0, i8 0 }, align 8, !dbg !2017
@__exitcall_acpi_fan_driver_exit = internal global ptr @acpi_fan_driver_exit, section ".exitcall.exit", align 8, !dbg !1992
@__UNIQUE_ID_author231 = internal constant [28 x i8] c"fan.author=Paul Diefenbaugh\00", section ".modinfo", align 1, !dbg !1996
@__UNIQUE_ID_description232 = internal constant [32 x i8] c"fan.description=ACPI Fan Driver\00", section ".modinfo", align 1, !dbg !2001
@__UNIQUE_ID_file233 = internal constant [26 x i8] c"fan.file=drivers/acpi/fan\00", section ".modinfo", align 1, !dbg !2004
@__UNIQUE_ID_license234 = internal constant [16 x i8] c"fan.license=GPL\00", section ".modinfo", align 1, !dbg !2009
@.str.3 = private unnamed_addr constant [9 x i8] c"acpi-fan\00", align 1, !dbg !2012
@fan_device_ids = internal constant [7 x %struct.acpi_device_id] [%struct.acpi_device_id { [16 x i8] c"INT3404\00\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"INTC1044\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"INTC1048\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"INTC1063\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"INTC10A2\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id { [16 x i8] c"PNP0C0B\00\00\00\00\00\00\00\00\00", i64 0, i32 0, i32 0 }, %struct.acpi_device_id zeroinitializer], align 16, !dbg !2174
@acpi_fan_pm = internal constant %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @acpi_fan_resume, ptr @acpi_fan_suspend, ptr @acpi_fan_resume, ptr null, ptr @acpi_fan_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, align 8, !dbg !2177
@.str.4 = private unnamed_addr constant [19 x i8] c"No memory for fan\0A\00", align 1, !dbg !2079
@.str.5 = private unnamed_addr constant [35 x i8] c"Failed to set initial power state\0A\00", align 1, !dbg !2081
@.str.6 = private unnamed_addr constant [8 x i8] c"PNP0C0B\00", align 1, !dbg !2086
@.str.7 = private unnamed_addr constant [4 x i8] c"Fan\00", align 1, !dbg !2088
@fan_cooling_ops = internal constant %struct.thermal_cooling_device_ops { ptr @fan_get_max_state, ptr @fan_get_cur_state, ptr @fan_set_cur_state, ptr null, ptr null, ptr null }, align 8, !dbg !2130
@.str.8 = private unnamed_addr constant [16 x i8] c"thermal_cooling\00", align 1, !dbg !2091
@.str.9 = private unnamed_addr constant [47 x i8] c"Failed to create sysfs link 'thermal_cooling'\0A\00", align 1, !dbg !2094
@.str.10 = private unnamed_addr constant [7 x i8] c"device\00", align 1, !dbg !2099
@.str.11 = private unnamed_addr constant [38 x i8] c"Failed to create sysfs link 'device'\0A\00", align 1, !dbg !2102
@.str.12 = private unnamed_addr constant [5 x i8] c"_FIF\00", align 1, !dbg !2107
@.str.13 = private unnamed_addr constant [5 x i8] c"_FPS\00", align 1, !dbg !2109
@.str.14 = private unnamed_addr constant [5 x i8] c"_FSL\00", align 1, !dbg !2111
@__const.acpi_fan_get_fif.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, ptr null }, align 8
@.str.15 = private unnamed_addr constant [5 x i8] c"NNNN\00", align 1, !dbg !2113
@__const.acpi_fan_get_fif.format = private unnamed_addr constant %struct.acpi_buffer { i64 5, ptr @.str.15 }, align 8
@.str.16 = private unnamed_addr constant [19 x i8] c"Invalid _FIF data\0A\00", align 1, !dbg !2115
@.str.17 = private unnamed_addr constant [22 x i8] c"Invalid _FIF element\0A\00", align 1, !dbg !2117
@__const.acpi_fan_get_fps.buffer = private unnamed_addr constant %struct.acpi_buffer { i64 -1, ptr null }, align 8
@.str.18 = private unnamed_addr constant [19 x i8] c"Invalid _FPS data\0A\00", align 1, !dbg !2119
@.str.19 = private unnamed_addr constant [19 x i8] c"Not enough memory\0A\00", align 1, !dbg !2121
@.str.20 = private unnamed_addr constant [6 x i8] c"NNNNN\00", align 1, !dbg !2123
@__const.acpi_fan_get_fps.format = private unnamed_addr constant %struct.acpi_buffer { i64 6, ptr @.str.20 }, align 8
@.str.21 = private unnamed_addr constant [22 x i8] c"Invalid _FPS element\0A\00", align 1, !dbg !2128
@.str.22 = private unnamed_addr constant [32 x i8] c"Error updating fan power state\0A\00", align 1, !dbg !2179
@llvm.compiler.used = appending global [7 x ptr] [ptr @__UNIQUE_ID___addressable___initstub__kmod_fan__229_463_acpi_fan_driver_init6230, ptr @acpi_fan_driver_exit, ptr @__exitcall_acpi_fan_driver_exit, ptr @__UNIQUE_ID_author231, ptr @__UNIQUE_ID_description232, ptr @__UNIQUE_ID_file233, ptr @__UNIQUE_ID_license234], section "llvm.metadata"

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define hidden i32 @acpi_fan_get_fst(ptr noundef %device, ptr noundef %fst) #0 align 16 !dbg !2190 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca ptr, align 8
  %fst.addr = alloca ptr, align 8
  %buffer = alloca %struct.acpi_buffer, align 8
  %obj = alloca ptr, align 8
  %status = alloca i32, align 4
  %ret = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !2201, metadata !DIExpression()), !dbg !2212
  store ptr %fst, ptr %fst.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %fst.addr, metadata !2202, metadata !DIExpression()), !dbg !2213
  call void @llvm.lifetime.start.p0(i64 16, ptr %buffer) #10, !dbg !2214
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !2203, metadata !DIExpression()), !dbg !2215
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %buffer, ptr align 8 @__const.acpi_fan_get_fst.buffer, i64 16, i1 false), !dbg !2215
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj) #10, !dbg !2216
  call void @llvm.dbg.declare(metadata ptr %obj, metadata !2208, metadata !DIExpression()), !dbg !2217
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #10, !dbg !2218
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2209, metadata !DIExpression()), !dbg !2219
  call void @llvm.lifetime.start.p0(i64 4, ptr %ret) #10, !dbg !2220
  call void @llvm.dbg.declare(metadata ptr %ret, metadata !2210, metadata !DIExpression()), !dbg !2221
  store i32 0, ptr %ret, align 4, !dbg !2221
  %0 = load ptr, ptr %device.addr, align 8, !dbg !2222
  %handle = getelementptr inbounds %struct.acpi_device, ptr %0, i32 0, i32 2, !dbg !2223
  %1 = load ptr, ptr %handle, align 8, !dbg !2223
  %call = call i32 @acpi_evaluate_object(ptr noundef %1, ptr noundef @.str, ptr noundef null, ptr noundef %buffer) #11, !dbg !2224
  store i32 %call, ptr %status, align 4, !dbg !2225
  %2 = load i32, ptr %status, align 4, !dbg !2226
  %tobool = icmp ne i32 %2, 0, !dbg !2226
  br i1 %tobool, label %if.then, label %if.end, !dbg !2228

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2229

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !2232

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2232

do.end:                                           ; preds = %do.cond
  %3 = load ptr, ptr %device.addr, align 8, !dbg !2229
  %dev = getelementptr inbounds %struct.acpi_device, ptr %3, i32 0, i32 18, !dbg !2229
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef @.str.1) #12, !dbg !2229
  store i32 -19, ptr %retval, align 4, !dbg !2234
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2234

if.end:                                           ; preds = %entry
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !2235
  %4 = load ptr, ptr %pointer, align 8, !dbg !2235
  store ptr %4, ptr %obj, align 8, !dbg !2236
  %5 = load ptr, ptr %obj, align 8, !dbg !2237
  %tobool1 = icmp ne ptr %5, null, !dbg !2237
  br i1 %tobool1, label %lor.lhs.false, label %if.then6, !dbg !2239

lor.lhs.false:                                    ; preds = %if.end
  %6 = load ptr, ptr %obj, align 8, !dbg !2240
  %7 = load i32, ptr %6, align 8, !dbg !2241
  %cmp = icmp ne i32 %7, 4, !dbg !2242
  br i1 %cmp, label %if.then6, label %lor.lhs.false2, !dbg !2243

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %8 = load ptr, ptr %obj, align 8, !dbg !2244
  %count = getelementptr inbounds %struct.anon.7, ptr %8, i32 0, i32 1, !dbg !2245
  %9 = load i32, ptr %count, align 4, !dbg !2245
  %cmp3 = icmp ne i32 %9, 3, !dbg !2246
  br i1 %cmp3, label %if.then6, label %lor.lhs.false4, !dbg !2247

lor.lhs.false4:                                   ; preds = %lor.lhs.false2
  %10 = load ptr, ptr %obj, align 8, !dbg !2248
  %elements = getelementptr inbounds %struct.anon.7, ptr %10, i32 0, i32 2, !dbg !2249
  %11 = load ptr, ptr %elements, align 8, !dbg !2249
  %arrayidx = getelementptr %union.acpi_object, ptr %11, i64 1, !dbg !2248
  %12 = load i32, ptr %arrayidx, align 8, !dbg !2250
  %cmp5 = icmp ne i32 %12, 1, !dbg !2251
  br i1 %cmp5, label %if.then6, label %if.end11, !dbg !2252

if.then6:                                         ; preds = %lor.lhs.false4, %lor.lhs.false2, %lor.lhs.false, %if.end
  br label %do.body7, !dbg !2253

do.body7:                                         ; preds = %if.then6
  br label %do.cond8, !dbg !2256

do.cond8:                                         ; preds = %do.body7
  br label %do.end9, !dbg !2256

do.end9:                                          ; preds = %do.cond8
  %13 = load ptr, ptr %device.addr, align 8, !dbg !2253
  %dev10 = getelementptr inbounds %struct.acpi_device, ptr %13, i32 0, i32 18, !dbg !2253
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef @.str.2) #12, !dbg !2253
  store i32 -22, ptr %ret, align 4, !dbg !2258
  br label %err, !dbg !2259

if.end11:                                         ; preds = %lor.lhs.false4
  %14 = load ptr, ptr %obj, align 8, !dbg !2260
  %elements12 = getelementptr inbounds %struct.anon.7, ptr %14, i32 0, i32 2, !dbg !2261
  %15 = load ptr, ptr %elements12, align 8, !dbg !2261
  %arrayidx13 = getelementptr %union.acpi_object, ptr %15, i64 0, !dbg !2260
  %value = getelementptr inbounds %struct.anon.4, ptr %arrayidx13, i32 0, i32 1, !dbg !2262
  %16 = load i64, ptr %value, align 8, !dbg !2262
  %17 = load ptr, ptr %fst.addr, align 8, !dbg !2263
  %revision = getelementptr inbounds %struct.acpi_fan_fst, ptr %17, i32 0, i32 0, !dbg !2264
  store i64 %16, ptr %revision, align 8, !dbg !2265
  %18 = load ptr, ptr %obj, align 8, !dbg !2266
  %elements14 = getelementptr inbounds %struct.anon.7, ptr %18, i32 0, i32 2, !dbg !2267
  %19 = load ptr, ptr %elements14, align 8, !dbg !2267
  %arrayidx15 = getelementptr %union.acpi_object, ptr %19, i64 1, !dbg !2266
  %value16 = getelementptr inbounds %struct.anon.4, ptr %arrayidx15, i32 0, i32 1, !dbg !2268
  %20 = load i64, ptr %value16, align 8, !dbg !2268
  %21 = load ptr, ptr %fst.addr, align 8, !dbg !2269
  %control = getelementptr inbounds %struct.acpi_fan_fst, ptr %21, i32 0, i32 1, !dbg !2270
  store i64 %20, ptr %control, align 8, !dbg !2271
  %22 = load ptr, ptr %obj, align 8, !dbg !2272
  %elements17 = getelementptr inbounds %struct.anon.7, ptr %22, i32 0, i32 2, !dbg !2273
  %23 = load ptr, ptr %elements17, align 8, !dbg !2273
  %arrayidx18 = getelementptr %union.acpi_object, ptr %23, i64 2, !dbg !2272
  %value19 = getelementptr inbounds %struct.anon.4, ptr %arrayidx18, i32 0, i32 1, !dbg !2274
  %24 = load i64, ptr %value19, align 8, !dbg !2274
  %25 = load ptr, ptr %fst.addr, align 8, !dbg !2275
  %speed = getelementptr inbounds %struct.acpi_fan_fst, ptr %25, i32 0, i32 2, !dbg !2276
  store i64 %24, ptr %speed, align 8, !dbg !2277
  br label %err, !dbg !2275

err:                                              ; preds = %if.end11, %do.end9
  call void @llvm.dbg.label(metadata !2211), !dbg !2278
  %26 = load ptr, ptr %obj, align 8, !dbg !2279
  call void @kfree(ptr noundef %26) #11, !dbg !2280
  %27 = load i32, ptr %ret, align 4, !dbg !2281
  store i32 %27, ptr %retval, align 4, !dbg !2282
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2282

cleanup:                                          ; preds = %err, %do.end
  call void @llvm.lifetime.end.p0(i64 4, ptr %ret) #10, !dbg !2283
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #10, !dbg !2283
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj) #10, !dbg !2283
  call void @llvm.lifetime.end.p0(i64 16, ptr %buffer) #10, !dbg !2283
  %28 = load i32, ptr %retval, align 4, !dbg !2283
  ret i32 %28, !dbg !2283
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2284 dso_local i32 @acpi_evaluate_object(ptr noundef, ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: cold noredzone null_pointer_is_valid
declare !dbg !2295 dso_local void @_dev_err(ptr noundef, ptr noundef, ...) #5

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2299 dso_local void @kfree(ptr noundef) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define hidden i32 @__initstub__kmod_fan__229_463_acpi_fan_driver_init6() #6 section ".init.text" align 16 !dbg !2303 {
entry:
  %call = call i32 @acpi_fan_driver_init() #12, !dbg !2304
  ret i32 %call, !dbg !2304
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal i32 @acpi_fan_driver_init() #6 section ".init.text" align 16 !dbg !2305 {
entry:
  %call = call i32 @__platform_driver_register(ptr noundef @acpi_fan_driver, ptr noundef null) #11, !dbg !2306
  ret i32 %call, !dbg !2306
}

; Function Attrs: cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong
define internal void @acpi_fan_driver_exit() #6 section ".exit.text" align 16 !dbg !2307 {
entry:
  call void @platform_driver_unregister(ptr noundef @acpi_fan_driver) #11, !dbg !2308
  ret void, !dbg !2308
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2309 dso_local void @platform_driver_unregister(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2313 dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_fan_probe(ptr noundef %pdev) #0 align 16 !dbg !2316 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %cdev = alloca ptr, align 8
  %fan = alloca ptr, align 8
  %device = alloca ptr, align 8
  %__to_acpi_device_node_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp1 = alloca ptr, align 8
  %name = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !2318, metadata !DIExpression()), !dbg !2369
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #10, !dbg !2370
  call void @llvm.dbg.declare(metadata ptr %result, metadata !2319, metadata !DIExpression()), !dbg !2371
  store i32 0, ptr %result, align 4, !dbg !2371
  call void @llvm.lifetime.start.p0(i64 8, ptr %cdev) #10, !dbg !2372
  call void @llvm.dbg.declare(metadata ptr %cdev, metadata !2320, metadata !DIExpression()), !dbg !2373
  call void @llvm.lifetime.start.p0(i64 8, ptr %fan) #10, !dbg !2374
  call void @llvm.dbg.declare(metadata ptr %fan, metadata !2321, metadata !DIExpression()), !dbg !2375
  call void @llvm.lifetime.start.p0(i64 8, ptr %device) #10, !dbg !2376
  call void @llvm.dbg.declare(metadata ptr %device, metadata !2360, metadata !DIExpression()), !dbg !2377
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #10, !dbg !2378
  call void @llvm.dbg.declare(metadata ptr %__to_acpi_device_node_fwnode, metadata !2361, metadata !DIExpression()), !dbg !2378
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !2378
  %dev = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, !dbg !2378
  %fwnode = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 24, !dbg !2378
  %1 = load ptr, ptr %fwnode, align 8, !dbg !2378
  store ptr %1, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !2378
  %2 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !2378
  %call = call zeroext i1 @is_acpi_device_node(ptr noundef %2) #11, !dbg !2378
  br i1 %call, label %cond.true, label %cond.false, !dbg !2378

cond.true:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !2379
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2363, metadata !DIExpression()), !dbg !2379
  %3 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !2379
  store ptr %3, ptr %__mptr, align 8, !dbg !2379
  %4 = load ptr, ptr %__mptr, align 8, !dbg !2379
  %add.ptr = getelementptr i8, ptr %4, i64 -16, !dbg !2379
  store ptr %add.ptr, ptr %tmp1, align 8, !dbg !2379
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !2378
  %5 = load ptr, ptr %tmp1, align 8, !dbg !2379
  br label %cond.end, !dbg !2378

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2378

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %5, %cond.true ], [ null, %cond.false ], !dbg !2378
  store ptr %cond, ptr %tmp, align 8, !dbg !2378
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #10, !dbg !2380
  %6 = load ptr, ptr %tmp, align 8, !dbg !2378
  store ptr %6, ptr %device, align 8, !dbg !2377
  call void @llvm.lifetime.start.p0(i64 8, ptr %name) #10, !dbg !2381
  call void @llvm.dbg.declare(metadata ptr %name, metadata !2365, metadata !DIExpression()), !dbg !2382
  %7 = load ptr, ptr %pdev.addr, align 8, !dbg !2383
  %dev2 = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3, !dbg !2384
  %call3 = call ptr @devm_kzalloc(ptr noundef %dev2, i64 noundef 96, i32 noundef 3264) #11, !dbg !2385
  store ptr %call3, ptr %fan, align 8, !dbg !2386
  %8 = load ptr, ptr %fan, align 8, !dbg !2387
  %tobool = icmp ne ptr %8, null, !dbg !2387
  br i1 %tobool, label %if.end, label %if.then, !dbg !2389

if.then:                                          ; preds = %cond.end
  br label %do.body, !dbg !2390

do.body:                                          ; preds = %if.then
  br label %do.cond, !dbg !2393

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2393

do.end:                                           ; preds = %do.cond
  %9 = load ptr, ptr %device, align 8, !dbg !2390
  %dev4 = getelementptr inbounds %struct.acpi_device, ptr %9, i32 0, i32 18, !dbg !2390
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev4, ptr noundef @.str.4) #12, !dbg !2390
  store i32 -12, ptr %retval, align 4, !dbg !2395
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2395

if.end:                                           ; preds = %cond.end
  %10 = load ptr, ptr %fan, align 8, !dbg !2396
  %11 = load ptr, ptr %device, align 8, !dbg !2397
  %driver_data = getelementptr inbounds %struct.acpi_device, ptr %11, i32 0, i32 17, !dbg !2398
  store ptr %10, ptr %driver_data, align 8, !dbg !2399
  %12 = load ptr, ptr %pdev.addr, align 8, !dbg !2400
  %13 = load ptr, ptr %fan, align 8, !dbg !2401
  call void @platform_set_drvdata(ptr noundef %12, ptr noundef %13) #11, !dbg !2402
  %14 = load ptr, ptr %device, align 8, !dbg !2403
  %call5 = call zeroext i1 @acpi_fan_is_acpi4(ptr noundef %14) #11, !dbg !2405
  br i1 %call5, label %if.then6, label %if.else, !dbg !2406

if.then6:                                         ; preds = %if.end
  %15 = load ptr, ptr %device, align 8, !dbg !2407
  %call7 = call i32 @acpi_fan_get_fif(ptr noundef %15) #11, !dbg !2409
  store i32 %call7, ptr %result, align 4, !dbg !2410
  %16 = load i32, ptr %result, align 4, !dbg !2411
  %tobool8 = icmp ne i32 %16, 0, !dbg !2411
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !2413

if.then9:                                         ; preds = %if.then6
  %17 = load i32, ptr %result, align 4, !dbg !2414
  store i32 %17, ptr %retval, align 4, !dbg !2415
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2415

if.end10:                                         ; preds = %if.then6
  %18 = load ptr, ptr %device, align 8, !dbg !2416
  %call11 = call i32 @acpi_fan_get_fps(ptr noundef %18) #11, !dbg !2417
  store i32 %call11, ptr %result, align 4, !dbg !2418
  %19 = load i32, ptr %result, align 4, !dbg !2419
  %tobool12 = icmp ne i32 %19, 0, !dbg !2419
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !2421

if.then13:                                        ; preds = %if.end10
  %20 = load i32, ptr %result, align 4, !dbg !2422
  store i32 %20, ptr %retval, align 4, !dbg !2423
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2423

if.end14:                                         ; preds = %if.end10
  %21 = load ptr, ptr %device, align 8, !dbg !2424
  %call15 = call i32 @acpi_fan_create_attributes(ptr noundef %21) #11, !dbg !2425
  store i32 %call15, ptr %result, align 4, !dbg !2426
  %22 = load i32, ptr %result, align 4, !dbg !2427
  %tobool16 = icmp ne i32 %22, 0, !dbg !2427
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !2429

if.then17:                                        ; preds = %if.end14
  %23 = load i32, ptr %result, align 4, !dbg !2430
  store i32 %23, ptr %retval, align 4, !dbg !2431
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2431

if.end18:                                         ; preds = %if.end14
  %24 = load ptr, ptr %fan, align 8, !dbg !2432
  %acpi4 = getelementptr inbounds %struct.acpi_fan, ptr %24, i32 0, i32 0, !dbg !2433
  store i8 1, ptr %acpi4, align 8, !dbg !2434
  br label %if.end27, !dbg !2435

if.else:                                          ; preds = %if.end
  %25 = load ptr, ptr %device, align 8, !dbg !2436
  %call19 = call i32 @acpi_device_update_power(ptr noundef %25, ptr noundef null) #11, !dbg !2438
  store i32 %call19, ptr %result, align 4, !dbg !2439
  %26 = load i32, ptr %result, align 4, !dbg !2440
  %tobool20 = icmp ne i32 %26, 0, !dbg !2440
  br i1 %tobool20, label %if.then21, label %if.end26, !dbg !2442

if.then21:                                        ; preds = %if.else
  br label %do.body22, !dbg !2443

do.body22:                                        ; preds = %if.then21
  br label %do.cond23, !dbg !2446

do.cond23:                                        ; preds = %do.body22
  br label %do.end24, !dbg !2446

do.end24:                                         ; preds = %do.cond23
  %27 = load ptr, ptr %device, align 8, !dbg !2443
  %dev25 = getelementptr inbounds %struct.acpi_device, ptr %27, i32 0, i32 18, !dbg !2443
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev25, ptr noundef @.str.5) #12, !dbg !2443
  br label %err_end, !dbg !2448

if.end26:                                         ; preds = %if.else
  br label %if.end27

if.end27:                                         ; preds = %if.end26, %if.end18
  %28 = load ptr, ptr %pdev.addr, align 8, !dbg !2449
  %name28 = getelementptr inbounds %struct.platform_device, ptr %28, i32 0, i32 0, !dbg !2451
  %29 = load ptr, ptr %name28, align 8, !dbg !2451
  %call29 = call i32 @strncmp(ptr noundef %29, ptr noundef @.str.6, i64 noundef 7) #11, !dbg !2452
  %tobool30 = icmp ne i32 %call29, 0, !dbg !2452
  br i1 %tobool30, label %if.else32, label %if.then31, !dbg !2453

if.then31:                                        ; preds = %if.end27
  store ptr @.str.7, ptr %name, align 8, !dbg !2454
  br label %if.end33, !dbg !2455

if.else32:                                        ; preds = %if.end27
  %30 = load ptr, ptr %device, align 8, !dbg !2456
  %pnp = getelementptr inbounds %struct.acpi_device, ptr %30, i32 0, i32 8, !dbg !2456
  %bus_id = getelementptr inbounds %struct.acpi_device_pnp, ptr %pnp, i32 0, i32 0, !dbg !2456
  %arraydecay = getelementptr inbounds [8 x i8], ptr %bus_id, i64 0, i64 0, !dbg !2456
  store ptr %arraydecay, ptr %name, align 8, !dbg !2457
  br label %if.end33

if.end33:                                         ; preds = %if.else32, %if.then31
  %31 = load ptr, ptr %name, align 8, !dbg !2458
  %32 = load ptr, ptr %device, align 8, !dbg !2459
  %call34 = call ptr @thermal_cooling_device_register(ptr noundef %31, ptr noundef %32, ptr noundef @fan_cooling_ops) #11, !dbg !2460
  store ptr %call34, ptr %cdev, align 8, !dbg !2461
  %33 = load ptr, ptr %cdev, align 8, !dbg !2462
  %call35 = call zeroext i1 @IS_ERR(ptr noundef %33) #11, !dbg !2464
  br i1 %call35, label %if.then36, label %if.end38, !dbg !2465

if.then36:                                        ; preds = %if.end33
  %34 = load ptr, ptr %cdev, align 8, !dbg !2466
  %call37 = call i64 @PTR_ERR(ptr noundef %34) #11, !dbg !2468
  %conv = trunc i64 %call37 to i32, !dbg !2468
  store i32 %conv, ptr %result, align 4, !dbg !2469
  br label %err_end, !dbg !2470

if.end38:                                         ; preds = %if.end33
  %35 = load ptr, ptr %cdev, align 8, !dbg !2471
  %36 = load ptr, ptr %fan, align 8, !dbg !2472
  %cdev39 = getelementptr inbounds %struct.acpi_fan, ptr %36, i32 0, i32 4, !dbg !2473
  store ptr %35, ptr %cdev39, align 8, !dbg !2474
  %37 = load ptr, ptr %pdev.addr, align 8, !dbg !2475
  %dev40 = getelementptr inbounds %struct.platform_device, ptr %37, i32 0, i32 3, !dbg !2476
  %kobj = getelementptr inbounds %struct.device, ptr %dev40, i32 0, i32 0, !dbg !2477
  %38 = load ptr, ptr %cdev, align 8, !dbg !2478
  %device41 = getelementptr inbounds %struct.thermal_cooling_device, ptr %38, i32 0, i32 3, !dbg !2479
  %kobj42 = getelementptr inbounds %struct.device, ptr %device41, i32 0, i32 0, !dbg !2480
  %call43 = call i32 @sysfs_create_link(ptr noundef %kobj, ptr noundef %kobj42, ptr noundef @.str.8) #11, !dbg !2481
  store i32 %call43, ptr %result, align 4, !dbg !2482
  %39 = load i32, ptr %result, align 4, !dbg !2483
  %tobool44 = icmp ne i32 %39, 0, !dbg !2483
  br i1 %tobool44, label %if.then45, label %if.end50, !dbg !2485

if.then45:                                        ; preds = %if.end38
  br label %do.body46, !dbg !2486

do.body46:                                        ; preds = %if.then45
  br label %do.cond47, !dbg !2489

do.cond47:                                        ; preds = %do.body46
  br label %do.end48, !dbg !2489

do.end48:                                         ; preds = %do.cond47
  %40 = load ptr, ptr %pdev.addr, align 8, !dbg !2486
  %dev49 = getelementptr inbounds %struct.platform_device, ptr %40, i32 0, i32 3, !dbg !2486
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev49, ptr noundef @.str.9) #12, !dbg !2486
  br label %err_unregister, !dbg !2491

if.end50:                                         ; preds = %if.end38
  %41 = load ptr, ptr %cdev, align 8, !dbg !2492
  %device51 = getelementptr inbounds %struct.thermal_cooling_device, ptr %41, i32 0, i32 3, !dbg !2493
  %kobj52 = getelementptr inbounds %struct.device, ptr %device51, i32 0, i32 0, !dbg !2494
  %42 = load ptr, ptr %pdev.addr, align 8, !dbg !2495
  %dev53 = getelementptr inbounds %struct.platform_device, ptr %42, i32 0, i32 3, !dbg !2496
  %kobj54 = getelementptr inbounds %struct.device, ptr %dev53, i32 0, i32 0, !dbg !2497
  %call55 = call i32 @sysfs_create_link(ptr noundef %kobj52, ptr noundef %kobj54, ptr noundef @.str.10) #11, !dbg !2498
  store i32 %call55, ptr %result, align 4, !dbg !2499
  %43 = load i32, ptr %result, align 4, !dbg !2500
  %tobool56 = icmp ne i32 %43, 0, !dbg !2500
  br i1 %tobool56, label %if.then57, label %if.end62, !dbg !2502

if.then57:                                        ; preds = %if.end50
  br label %do.body58, !dbg !2503

do.body58:                                        ; preds = %if.then57
  br label %do.cond59, !dbg !2506

do.cond59:                                        ; preds = %do.body58
  br label %do.end60, !dbg !2506

do.end60:                                         ; preds = %do.cond59
  %44 = load ptr, ptr %pdev.addr, align 8, !dbg !2503
  %dev61 = getelementptr inbounds %struct.platform_device, ptr %44, i32 0, i32 3, !dbg !2503
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev61, ptr noundef @.str.11) #12, !dbg !2503
  br label %err_remove_link, !dbg !2508

if.end62:                                         ; preds = %if.end50
  store i32 0, ptr %retval, align 4, !dbg !2509
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2509

err_remove_link:                                  ; preds = %do.end60
  call void @llvm.dbg.label(metadata !2366), !dbg !2510
  %45 = load ptr, ptr %pdev.addr, align 8, !dbg !2511
  %dev63 = getelementptr inbounds %struct.platform_device, ptr %45, i32 0, i32 3, !dbg !2512
  %kobj64 = getelementptr inbounds %struct.device, ptr %dev63, i32 0, i32 0, !dbg !2513
  call void @sysfs_remove_link(ptr noundef %kobj64, ptr noundef @.str.8) #11, !dbg !2514
  br label %err_unregister, !dbg !2514

err_unregister:                                   ; preds = %err_remove_link, %do.end48
  call void @llvm.dbg.label(metadata !2367), !dbg !2515
  %46 = load ptr, ptr %cdev, align 8, !dbg !2516
  call void @thermal_cooling_device_unregister(ptr noundef %46) #11, !dbg !2517
  br label %err_end, !dbg !2517

err_end:                                          ; preds = %err_unregister, %if.then36, %do.end24
  call void @llvm.dbg.label(metadata !2368), !dbg !2518
  %47 = load ptr, ptr %fan, align 8, !dbg !2519
  %acpi465 = getelementptr inbounds %struct.acpi_fan, ptr %47, i32 0, i32 0, !dbg !2521
  %48 = load i8, ptr %acpi465, align 8, !dbg !2521, !range !2522, !noundef !352
  %tobool66 = trunc i8 %48 to i1, !dbg !2521
  br i1 %tobool66, label %if.then67, label %if.end68, !dbg !2523

if.then67:                                        ; preds = %err_end
  %49 = load ptr, ptr %device, align 8, !dbg !2524
  call void @acpi_fan_delete_attributes(ptr noundef %49) #11, !dbg !2525
  br label %if.end68, !dbg !2525

if.end68:                                         ; preds = %if.then67, %err_end
  %50 = load i32, ptr %result, align 4, !dbg !2526
  store i32 %50, ptr %retval, align 4, !dbg !2527
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2527

cleanup:                                          ; preds = %if.end68, %if.end62, %if.then17, %if.then13, %if.then9, %do.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %name) #10, !dbg !2528
  call void @llvm.lifetime.end.p0(i64 8, ptr %device) #10, !dbg !2528
  call void @llvm.lifetime.end.p0(i64 8, ptr %fan) #10, !dbg !2528
  call void @llvm.lifetime.end.p0(i64 8, ptr %cdev) #10, !dbg !2528
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #10, !dbg !2528
  %51 = load i32, ptr %retval, align 4, !dbg !2528
  ret i32 %51, !dbg !2528
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_fan_remove(ptr noundef %pdev) #0 align 16 !dbg !2529 {
entry:
  %pdev.addr = alloca ptr, align 8
  %fan = alloca ptr, align 8
  %device = alloca ptr, align 8
  %__to_acpi_device_node_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !2531, metadata !DIExpression()), !dbg !2540
  call void @llvm.lifetime.start.p0(i64 8, ptr %fan) #10, !dbg !2541
  call void @llvm.dbg.declare(metadata ptr %fan, metadata !2532, metadata !DIExpression()), !dbg !2542
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !2543
  %call = call ptr @platform_get_drvdata(ptr noundef %0) #11, !dbg !2544
  store ptr %call, ptr %fan, align 8, !dbg !2542
  %1 = load ptr, ptr %fan, align 8, !dbg !2545
  %acpi4 = getelementptr inbounds %struct.acpi_fan, ptr %1, i32 0, i32 0, !dbg !2546
  %2 = load i8, ptr %acpi4, align 8, !dbg !2546, !range !2522, !noundef !352
  %tobool = trunc i8 %2 to i1, !dbg !2546
  br i1 %tobool, label %if.then, label %if.end, !dbg !2547

if.then:                                          ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %device) #10, !dbg !2548
  call void @llvm.dbg.declare(metadata ptr %device, metadata !2533, metadata !DIExpression()), !dbg !2549
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #10, !dbg !2550
  call void @llvm.dbg.declare(metadata ptr %__to_acpi_device_node_fwnode, metadata !2536, metadata !DIExpression()), !dbg !2550
  %3 = load ptr, ptr %pdev.addr, align 8, !dbg !2550
  %dev = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3, !dbg !2550
  %fwnode = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 24, !dbg !2550
  %4 = load ptr, ptr %fwnode, align 8, !dbg !2550
  store ptr %4, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !2550
  %5 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !2550
  %call1 = call zeroext i1 @is_acpi_device_node(ptr noundef %5) #11, !dbg !2550
  br i1 %call1, label %cond.true, label %cond.false, !dbg !2550

cond.true:                                        ; preds = %if.then
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !2551
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !2538, metadata !DIExpression()), !dbg !2551
  %6 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !2551
  store ptr %6, ptr %__mptr, align 8, !dbg !2551
  %7 = load ptr, ptr %__mptr, align 8, !dbg !2551
  %add.ptr = getelementptr i8, ptr %7, i64 -16, !dbg !2551
  store ptr %add.ptr, ptr %tmp2, align 8, !dbg !2551
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !2550
  %8 = load ptr, ptr %tmp2, align 8, !dbg !2551
  br label %cond.end, !dbg !2550

cond.false:                                       ; preds = %if.then
  br label %cond.end, !dbg !2550

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %8, %cond.true ], [ null, %cond.false ], !dbg !2550
  store ptr %cond, ptr %tmp, align 8, !dbg !2550
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #10, !dbg !2552
  %9 = load ptr, ptr %tmp, align 8, !dbg !2550
  store ptr %9, ptr %device, align 8, !dbg !2549
  %10 = load ptr, ptr %device, align 8, !dbg !2553
  call void @acpi_fan_delete_attributes(ptr noundef %10) #11, !dbg !2554
  call void @llvm.lifetime.end.p0(i64 8, ptr %device) #10, !dbg !2555
  br label %if.end, !dbg !2556

if.end:                                           ; preds = %cond.end, %entry
  %11 = load ptr, ptr %pdev.addr, align 8, !dbg !2557
  %dev3 = getelementptr inbounds %struct.platform_device, ptr %11, i32 0, i32 3, !dbg !2558
  %kobj = getelementptr inbounds %struct.device, ptr %dev3, i32 0, i32 0, !dbg !2559
  call void @sysfs_remove_link(ptr noundef %kobj, ptr noundef @.str.8) #11, !dbg !2560
  %12 = load ptr, ptr %fan, align 8, !dbg !2561
  %cdev = getelementptr inbounds %struct.acpi_fan, ptr %12, i32 0, i32 4, !dbg !2562
  %13 = load ptr, ptr %cdev, align 8, !dbg !2562
  %device4 = getelementptr inbounds %struct.thermal_cooling_device, ptr %13, i32 0, i32 3, !dbg !2563
  %kobj5 = getelementptr inbounds %struct.device, ptr %device4, i32 0, i32 0, !dbg !2564
  call void @sysfs_remove_link(ptr noundef %kobj5, ptr noundef @.str.10) #11, !dbg !2565
  %14 = load ptr, ptr %fan, align 8, !dbg !2566
  %cdev6 = getelementptr inbounds %struct.acpi_fan, ptr %14, i32 0, i32 4, !dbg !2567
  %15 = load ptr, ptr %cdev6, align 8, !dbg !2567
  call void @thermal_cooling_device_unregister(ptr noundef %15) #11, !dbg !2568
  call void @llvm.lifetime.end.p0(i64 8, ptr %fan) #10, !dbg !2569
  ret i32 0, !dbg !2570
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2571 dso_local zeroext i1 @is_acpi_device_node(ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @devm_kzalloc(ptr noundef %dev, i64 noundef %size, i32 noundef %gfp) #7 align 16 !dbg !2572 {
entry:
  %dev.addr = alloca ptr, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2576, metadata !DIExpression()), !dbg !2579
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2577, metadata !DIExpression()), !dbg !2580
  store i32 %gfp, ptr %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %gfp.addr, metadata !2578, metadata !DIExpression()), !dbg !2581
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2582
  %1 = load i64, ptr %size.addr, align 8, !dbg !2583
  %2 = load i32, ptr %gfp.addr, align 4, !dbg !2584
  %or = or i32 %2, 256, !dbg !2585
  %call = call noalias ptr @devm_kmalloc(ptr noundef %0, i64 noundef %1, i32 noundef %or) #13, !dbg !2586
  ret ptr %call, !dbg !2587
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @platform_set_drvdata(ptr noundef %pdev, ptr noundef %data) #7 align 16 !dbg !2588 {
entry:
  %pdev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !2592, metadata !DIExpression()), !dbg !2594
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2593, metadata !DIExpression()), !dbg !2595
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !2596
  %dev = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, !dbg !2597
  %1 = load ptr, ptr %data.addr, align 8, !dbg !2598
  call void @dev_set_drvdata(ptr noundef %dev, ptr noundef %1) #11, !dbg !2599
  ret void, !dbg !2600
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @acpi_fan_is_acpi4(ptr noundef %device) #0 align 16 !dbg !2601 {
entry:
  %device.addr = alloca ptr, align 8
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !2605, metadata !DIExpression()), !dbg !2606
  %0 = load ptr, ptr %device.addr, align 8, !dbg !2607
  %handle = getelementptr inbounds %struct.acpi_device, ptr %0, i32 0, i32 2, !dbg !2608
  %1 = load ptr, ptr %handle, align 8, !dbg !2608
  %call = call zeroext i1 @acpi_has_method(ptr noundef %1, ptr noundef @.str.12) #11, !dbg !2609
  br i1 %call, label %land.lhs.true, label %land.end, !dbg !2610

land.lhs.true:                                    ; preds = %entry
  %2 = load ptr, ptr %device.addr, align 8, !dbg !2611
  %handle1 = getelementptr inbounds %struct.acpi_device, ptr %2, i32 0, i32 2, !dbg !2612
  %3 = load ptr, ptr %handle1, align 8, !dbg !2612
  %call2 = call zeroext i1 @acpi_has_method(ptr noundef %3, ptr noundef @.str.13) #11, !dbg !2613
  br i1 %call2, label %land.lhs.true3, label %land.end, !dbg !2614

land.lhs.true3:                                   ; preds = %land.lhs.true
  %4 = load ptr, ptr %device.addr, align 8, !dbg !2615
  %handle4 = getelementptr inbounds %struct.acpi_device, ptr %4, i32 0, i32 2, !dbg !2616
  %5 = load ptr, ptr %handle4, align 8, !dbg !2616
  %call5 = call zeroext i1 @acpi_has_method(ptr noundef %5, ptr noundef @.str.14) #11, !dbg !2617
  br i1 %call5, label %land.rhs, label %land.end, !dbg !2618

land.rhs:                                         ; preds = %land.lhs.true3
  %6 = load ptr, ptr %device.addr, align 8, !dbg !2619
  %handle6 = getelementptr inbounds %struct.acpi_device, ptr %6, i32 0, i32 2, !dbg !2620
  %7 = load ptr, ptr %handle6, align 8, !dbg !2620
  %call7 = call zeroext i1 @acpi_has_method(ptr noundef %7, ptr noundef @.str) #11, !dbg !2621
  br label %land.end

land.end:                                         ; preds = %land.rhs, %land.lhs.true3, %land.lhs.true, %entry
  %8 = phi i1 [ false, %land.lhs.true3 ], [ false, %land.lhs.true ], [ false, %entry ], [ %call7, %land.rhs ], !dbg !2622
  ret i1 %8, !dbg !2623
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_fan_get_fif(ptr noundef %device) #0 align 16 !dbg !2624 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca ptr, align 8
  %buffer = alloca %struct.acpi_buffer, align 8
  %fan = alloca ptr, align 8
  %format = alloca %struct.acpi_buffer, align 8
  %fields = alloca [4 x i64], align 16
  %fif = alloca %struct.acpi_buffer, align 8
  %obj = alloca ptr, align 8
  %status = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !2626, metadata !DIExpression()), !dbg !2636
  call void @llvm.lifetime.start.p0(i64 16, ptr %buffer) #10, !dbg !2637
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !2627, metadata !DIExpression()), !dbg !2638
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %buffer, ptr align 8 @__const.acpi_fan_get_fif.buffer, i64 16, i1 false), !dbg !2638
  call void @llvm.lifetime.start.p0(i64 8, ptr %fan) #10, !dbg !2639
  call void @llvm.dbg.declare(metadata ptr %fan, metadata !2628, metadata !DIExpression()), !dbg !2640
  %0 = load ptr, ptr %device.addr, align 8, !dbg !2641
  %call = call ptr @acpi_driver_data(ptr noundef %0) #11, !dbg !2642
  store ptr %call, ptr %fan, align 8, !dbg !2640
  call void @llvm.lifetime.start.p0(i64 16, ptr %format) #10, !dbg !2643
  call void @llvm.dbg.declare(metadata ptr %format, metadata !2629, metadata !DIExpression()), !dbg !2644
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %format, ptr align 8 @__const.acpi_fan_get_fif.format, i64 16, i1 false), !dbg !2644
  call void @llvm.lifetime.start.p0(i64 32, ptr %fields) #10, !dbg !2645
  call void @llvm.dbg.declare(metadata ptr %fields, metadata !2630, metadata !DIExpression()), !dbg !2646
  call void @llvm.lifetime.start.p0(i64 16, ptr %fif) #10, !dbg !2647
  call void @llvm.dbg.declare(metadata ptr %fif, metadata !2632, metadata !DIExpression()), !dbg !2648
  %length = getelementptr inbounds %struct.acpi_buffer, ptr %fif, i32 0, i32 0, !dbg !2649
  store i64 32, ptr %length, align 8, !dbg !2649
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %fif, i32 0, i32 1, !dbg !2649
  %arraydecay = getelementptr inbounds [4 x i64], ptr %fields, i64 0, i64 0, !dbg !2650
  store ptr %arraydecay, ptr %pointer, align 8, !dbg !2649
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj) #10, !dbg !2651
  call void @llvm.dbg.declare(metadata ptr %obj, metadata !2633, metadata !DIExpression()), !dbg !2652
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #10, !dbg !2653
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2634, metadata !DIExpression()), !dbg !2654
  %1 = load ptr, ptr %device.addr, align 8, !dbg !2655
  %handle = getelementptr inbounds %struct.acpi_device, ptr %1, i32 0, i32 2, !dbg !2656
  %2 = load ptr, ptr %handle, align 8, !dbg !2656
  %call1 = call i32 @acpi_evaluate_object(ptr noundef %2, ptr noundef @.str.12, ptr noundef null, ptr noundef %buffer) #11, !dbg !2657
  store i32 %call1, ptr %status, align 4, !dbg !2658
  %3 = load i32, ptr %status, align 4, !dbg !2659
  %tobool = icmp ne i32 %3, 0, !dbg !2659
  br i1 %tobool, label %if.then, label %if.end, !dbg !2661

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %status, align 4, !dbg !2662
  store i32 %4, ptr %retval, align 4, !dbg !2663
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2663

if.end:                                           ; preds = %entry
  %pointer2 = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !2664
  %5 = load ptr, ptr %pointer2, align 8, !dbg !2664
  store ptr %5, ptr %obj, align 8, !dbg !2665
  %6 = load ptr, ptr %obj, align 8, !dbg !2666
  %tobool3 = icmp ne ptr %6, null, !dbg !2666
  br i1 %tobool3, label %lor.lhs.false, label %if.then4, !dbg !2668

lor.lhs.false:                                    ; preds = %if.end
  %7 = load ptr, ptr %obj, align 8, !dbg !2669
  %8 = load i32, ptr %7, align 8, !dbg !2670
  %cmp = icmp ne i32 %8, 4, !dbg !2671
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !2672

if.then4:                                         ; preds = %lor.lhs.false, %if.end
  br label %do.body, !dbg !2673

do.body:                                          ; preds = %if.then4
  br label %do.cond, !dbg !2676

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2676

do.end:                                           ; preds = %do.cond
  %9 = load ptr, ptr %device.addr, align 8, !dbg !2673
  %dev = getelementptr inbounds %struct.acpi_device, ptr %9, i32 0, i32 18, !dbg !2673
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef @.str.16) #12, !dbg !2673
  store i32 -22, ptr %status, align 4, !dbg !2678
  br label %err, !dbg !2679

if.end5:                                          ; preds = %lor.lhs.false
  %10 = load ptr, ptr %obj, align 8, !dbg !2680
  %call6 = call i32 @acpi_extract_package(ptr noundef %10, ptr noundef %format, ptr noundef %fif) #11, !dbg !2681
  store i32 %call6, ptr %status, align 4, !dbg !2682
  %11 = load i32, ptr %status, align 4, !dbg !2683
  %tobool7 = icmp ne i32 %11, 0, !dbg !2683
  br i1 %tobool7, label %if.then8, label %if.end13, !dbg !2685

if.then8:                                         ; preds = %if.end5
  br label %do.body9, !dbg !2686

do.body9:                                         ; preds = %if.then8
  br label %do.cond10, !dbg !2689

do.cond10:                                        ; preds = %do.body9
  br label %do.end11, !dbg !2689

do.end11:                                         ; preds = %do.cond10
  %12 = load ptr, ptr %device.addr, align 8, !dbg !2686
  %dev12 = getelementptr inbounds %struct.acpi_device, ptr %12, i32 0, i32 18, !dbg !2686
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef @.str.17) #12, !dbg !2686
  store i32 -22, ptr %status, align 4, !dbg !2691
  br label %err, !dbg !2692

if.end13:                                         ; preds = %if.end5
  %arrayidx = getelementptr [4 x i64], ptr %fields, i64 0, i64 0, !dbg !2693
  %13 = load i64, ptr %arrayidx, align 16, !dbg !2693
  %conv = trunc i64 %13 to i8, !dbg !2693
  %14 = load ptr, ptr %fan, align 8, !dbg !2694
  %fif14 = getelementptr inbounds %struct.acpi_fan, ptr %14, i32 0, i32 1, !dbg !2695
  %revision = getelementptr inbounds %struct.acpi_fan_fif, ptr %fif14, i32 0, i32 0, !dbg !2696
  store i8 %conv, ptr %revision, align 1, !dbg !2697
  %arrayidx15 = getelementptr [4 x i64], ptr %fields, i64 0, i64 1, !dbg !2698
  %15 = load i64, ptr %arrayidx15, align 8, !dbg !2698
  %conv16 = trunc i64 %15 to i8, !dbg !2698
  %16 = load ptr, ptr %fan, align 8, !dbg !2699
  %fif17 = getelementptr inbounds %struct.acpi_fan, ptr %16, i32 0, i32 1, !dbg !2700
  %fine_grain_ctrl = getelementptr inbounds %struct.acpi_fan_fif, ptr %fif17, i32 0, i32 1, !dbg !2701
  store i8 %conv16, ptr %fine_grain_ctrl, align 1, !dbg !2702
  %arrayidx18 = getelementptr [4 x i64], ptr %fields, i64 0, i64 2, !dbg !2703
  %17 = load i64, ptr %arrayidx18, align 16, !dbg !2703
  %conv19 = trunc i64 %17 to i8, !dbg !2703
  %18 = load ptr, ptr %fan, align 8, !dbg !2704
  %fif20 = getelementptr inbounds %struct.acpi_fan, ptr %18, i32 0, i32 1, !dbg !2705
  %step_size = getelementptr inbounds %struct.acpi_fan_fif, ptr %fif20, i32 0, i32 2, !dbg !2706
  store i8 %conv19, ptr %step_size, align 1, !dbg !2707
  %arrayidx21 = getelementptr [4 x i64], ptr %fields, i64 0, i64 3, !dbg !2708
  %19 = load i64, ptr %arrayidx21, align 8, !dbg !2708
  %conv22 = trunc i64 %19 to i8, !dbg !2708
  %20 = load ptr, ptr %fan, align 8, !dbg !2709
  %fif23 = getelementptr inbounds %struct.acpi_fan, ptr %20, i32 0, i32 1, !dbg !2710
  %low_speed_notification = getelementptr inbounds %struct.acpi_fan_fif, ptr %fif23, i32 0, i32 3, !dbg !2711
  store i8 %conv22, ptr %low_speed_notification, align 1, !dbg !2712
  %21 = load ptr, ptr %fan, align 8, !dbg !2713
  %fif24 = getelementptr inbounds %struct.acpi_fan, ptr %21, i32 0, i32 1, !dbg !2715
  %step_size25 = getelementptr inbounds %struct.acpi_fan_fif, ptr %fif24, i32 0, i32 2, !dbg !2716
  %22 = load i8, ptr %step_size25, align 1, !dbg !2716
  %tobool26 = icmp ne i8 %22, 0, !dbg !2713
  br i1 %tobool26, label %if.else, label %if.then27, !dbg !2717

if.then27:                                        ; preds = %if.end13
  %23 = load ptr, ptr %fan, align 8, !dbg !2718
  %fif28 = getelementptr inbounds %struct.acpi_fan, ptr %23, i32 0, i32 1, !dbg !2719
  %step_size29 = getelementptr inbounds %struct.acpi_fan_fif, ptr %fif28, i32 0, i32 2, !dbg !2720
  store i8 1, ptr %step_size29, align 1, !dbg !2721
  br label %if.end39, !dbg !2718

if.else:                                          ; preds = %if.end13
  %24 = load ptr, ptr %fan, align 8, !dbg !2722
  %fif30 = getelementptr inbounds %struct.acpi_fan, ptr %24, i32 0, i32 1, !dbg !2724
  %step_size31 = getelementptr inbounds %struct.acpi_fan_fif, ptr %fif30, i32 0, i32 2, !dbg !2725
  %25 = load i8, ptr %step_size31, align 1, !dbg !2725
  %conv32 = zext i8 %25 to i32, !dbg !2722
  %cmp33 = icmp sgt i32 %conv32, 9, !dbg !2726
  br i1 %cmp33, label %if.then35, label %if.end38, !dbg !2727

if.then35:                                        ; preds = %if.else
  %26 = load ptr, ptr %fan, align 8, !dbg !2728
  %fif36 = getelementptr inbounds %struct.acpi_fan, ptr %26, i32 0, i32 1, !dbg !2729
  %step_size37 = getelementptr inbounds %struct.acpi_fan_fif, ptr %fif36, i32 0, i32 2, !dbg !2730
  store i8 9, ptr %step_size37, align 1, !dbg !2731
  br label %if.end38, !dbg !2728

if.end38:                                         ; preds = %if.then35, %if.else
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.then27
  br label %err, !dbg !2716

err:                                              ; preds = %if.end39, %do.end11, %do.end
  call void @llvm.dbg.label(metadata !2635), !dbg !2732
  %27 = load ptr, ptr %obj, align 8, !dbg !2733
  call void @kfree(ptr noundef %27) #11, !dbg !2734
  %28 = load i32, ptr %status, align 4, !dbg !2735
  store i32 %28, ptr %retval, align 4, !dbg !2736
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2736

cleanup:                                          ; preds = %err, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #10, !dbg !2737
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj) #10, !dbg !2737
  call void @llvm.lifetime.end.p0(i64 16, ptr %fif) #10, !dbg !2737
  call void @llvm.lifetime.end.p0(i64 32, ptr %fields) #10, !dbg !2737
  call void @llvm.lifetime.end.p0(i64 16, ptr %format) #10, !dbg !2737
  call void @llvm.lifetime.end.p0(i64 8, ptr %fan) #10, !dbg !2737
  call void @llvm.lifetime.end.p0(i64 16, ptr %buffer) #10, !dbg !2737
  %29 = load i32, ptr %retval, align 4, !dbg !2737
  ret i32 %29, !dbg !2737
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_fan_get_fps(ptr noundef %device) #0 align 16 !dbg !2738 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca ptr, align 8
  %fan = alloca ptr, align 8
  %buffer = alloca %struct.acpi_buffer, align 8
  %obj = alloca ptr, align 8
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  %format = alloca %struct.acpi_buffer, align 8
  %fps22 = alloca %struct.acpi_buffer, align 8
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !2740, metadata !DIExpression()), !dbg !2752
  call void @llvm.lifetime.start.p0(i64 8, ptr %fan) #10, !dbg !2753
  call void @llvm.dbg.declare(metadata ptr %fan, metadata !2741, metadata !DIExpression()), !dbg !2754
  %0 = load ptr, ptr %device.addr, align 8, !dbg !2755
  %call = call ptr @acpi_driver_data(ptr noundef %0) #11, !dbg !2756
  store ptr %call, ptr %fan, align 8, !dbg !2754
  call void @llvm.lifetime.start.p0(i64 16, ptr %buffer) #10, !dbg !2757
  call void @llvm.dbg.declare(metadata ptr %buffer, metadata !2742, metadata !DIExpression()), !dbg !2758
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %buffer, ptr align 8 @__const.acpi_fan_get_fps.buffer, i64 16, i1 false), !dbg !2758
  call void @llvm.lifetime.start.p0(i64 8, ptr %obj) #10, !dbg !2759
  call void @llvm.dbg.declare(metadata ptr %obj, metadata !2743, metadata !DIExpression()), !dbg !2760
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #10, !dbg !2761
  call void @llvm.dbg.declare(metadata ptr %status, metadata !2744, metadata !DIExpression()), !dbg !2762
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !2763
  call void @llvm.dbg.declare(metadata ptr %i, metadata !2745, metadata !DIExpression()), !dbg !2764
  %1 = load ptr, ptr %device.addr, align 8, !dbg !2765
  %handle = getelementptr inbounds %struct.acpi_device, ptr %1, i32 0, i32 2, !dbg !2766
  %2 = load ptr, ptr %handle, align 8, !dbg !2766
  %call1 = call i32 @acpi_evaluate_object(ptr noundef %2, ptr noundef @.str.13, ptr noundef null, ptr noundef %buffer) #11, !dbg !2767
  store i32 %call1, ptr %status, align 4, !dbg !2768
  %3 = load i32, ptr %status, align 4, !dbg !2769
  %tobool = icmp ne i32 %3, 0, !dbg !2769
  br i1 %tobool, label %if.then, label %if.end, !dbg !2771

if.then:                                          ; preds = %entry
  %4 = load i32, ptr %status, align 4, !dbg !2772
  store i32 %4, ptr %retval, align 4, !dbg !2773
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup39, !dbg !2773

if.end:                                           ; preds = %entry
  %pointer = getelementptr inbounds %struct.acpi_buffer, ptr %buffer, i32 0, i32 1, !dbg !2774
  %5 = load ptr, ptr %pointer, align 8, !dbg !2774
  store ptr %5, ptr %obj, align 8, !dbg !2775
  %6 = load ptr, ptr %obj, align 8, !dbg !2776
  %tobool2 = icmp ne ptr %6, null, !dbg !2776
  br i1 %tobool2, label %lor.lhs.false, label %if.then5, !dbg !2778

lor.lhs.false:                                    ; preds = %if.end
  %7 = load ptr, ptr %obj, align 8, !dbg !2779
  %8 = load i32, ptr %7, align 8, !dbg !2780
  %cmp = icmp ne i32 %8, 4, !dbg !2781
  br i1 %cmp, label %if.then5, label %lor.lhs.false3, !dbg !2782

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %9 = load ptr, ptr %obj, align 8, !dbg !2783
  %count = getelementptr inbounds %struct.anon.7, ptr %9, i32 0, i32 1, !dbg !2784
  %10 = load i32, ptr %count, align 4, !dbg !2784
  %cmp4 = icmp ult i32 %10, 2, !dbg !2785
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2786

if.then5:                                         ; preds = %lor.lhs.false3, %lor.lhs.false, %if.end
  br label %do.body, !dbg !2787

do.body:                                          ; preds = %if.then5
  br label %do.cond, !dbg !2790

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !2790

do.end:                                           ; preds = %do.cond
  %11 = load ptr, ptr %device.addr, align 8, !dbg !2787
  %dev = getelementptr inbounds %struct.acpi_device, ptr %11, i32 0, i32 18, !dbg !2787
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef @.str.18) #12, !dbg !2787
  store i32 -22, ptr %status, align 4, !dbg !2792
  br label %err, !dbg !2793

if.end6:                                          ; preds = %lor.lhs.false3
  %12 = load ptr, ptr %obj, align 8, !dbg !2794
  %count7 = getelementptr inbounds %struct.anon.7, ptr %12, i32 0, i32 1, !dbg !2795
  %13 = load i32, ptr %count7, align 4, !dbg !2795
  %sub = sub i32 %13, 1, !dbg !2796
  %14 = load ptr, ptr %fan, align 8, !dbg !2797
  %fps_count = getelementptr inbounds %struct.acpi_fan, ptr %14, i32 0, i32 3, !dbg !2798
  store i32 %sub, ptr %fps_count, align 8, !dbg !2799
  %15 = load ptr, ptr %device.addr, align 8, !dbg !2800
  %dev8 = getelementptr inbounds %struct.acpi_device, ptr %15, i32 0, i32 18, !dbg !2801
  %16 = load ptr, ptr %fan, align 8, !dbg !2802
  %fps_count9 = getelementptr inbounds %struct.acpi_fan, ptr %16, i32 0, i32 3, !dbg !2803
  %17 = load i32, ptr %fps_count9, align 8, !dbg !2803
  %conv = sext i32 %17 to i64, !dbg !2802
  %call10 = call ptr @devm_kcalloc(ptr noundef %dev8, i64 noundef %conv, i64 noundef 96, i32 noundef 3264) #11, !dbg !2804
  %18 = load ptr, ptr %fan, align 8, !dbg !2805
  %fps = getelementptr inbounds %struct.acpi_fan, ptr %18, i32 0, i32 2, !dbg !2806
  store ptr %call10, ptr %fps, align 8, !dbg !2807
  %19 = load ptr, ptr %fan, align 8, !dbg !2808
  %fps11 = getelementptr inbounds %struct.acpi_fan, ptr %19, i32 0, i32 2, !dbg !2810
  %20 = load ptr, ptr %fps11, align 8, !dbg !2810
  %tobool12 = icmp ne ptr %20, null, !dbg !2808
  br i1 %tobool12, label %if.end18, label %if.then13, !dbg !2811

if.then13:                                        ; preds = %if.end6
  br label %do.body14, !dbg !2812

do.body14:                                        ; preds = %if.then13
  br label %do.cond15, !dbg !2815

do.cond15:                                        ; preds = %do.body14
  br label %do.end16, !dbg !2815

do.end16:                                         ; preds = %do.cond15
  %21 = load ptr, ptr %device.addr, align 8, !dbg !2812
  %dev17 = getelementptr inbounds %struct.acpi_device, ptr %21, i32 0, i32 18, !dbg !2812
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev17, ptr noundef @.str.19) #12, !dbg !2812
  store i32 -12, ptr %status, align 4, !dbg !2817
  br label %err, !dbg !2818

if.end18:                                         ; preds = %if.end6
  store i32 0, ptr %i, align 4, !dbg !2819
  br label %for.cond, !dbg !2820

for.cond:                                         ; preds = %for.inc, %if.end18
  %22 = load i32, ptr %i, align 4, !dbg !2821
  %23 = load ptr, ptr %fan, align 8, !dbg !2822
  %fps_count19 = getelementptr inbounds %struct.acpi_fan, ptr %23, i32 0, i32 3, !dbg !2823
  %24 = load i32, ptr %fps_count19, align 8, !dbg !2823
  %cmp20 = icmp slt i32 %22, %24, !dbg !2824
  br i1 %cmp20, label %for.body, label %for.end, !dbg !2825

for.body:                                         ; preds = %for.cond
  call void @llvm.lifetime.start.p0(i64 16, ptr %format) #10, !dbg !2826
  call void @llvm.dbg.declare(metadata ptr %format, metadata !2746, metadata !DIExpression()), !dbg !2827
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %format, ptr align 8 @__const.acpi_fan_get_fps.format, i64 16, i1 false), !dbg !2827
  call void @llvm.lifetime.start.p0(i64 16, ptr %fps22) #10, !dbg !2828
  call void @llvm.dbg.declare(metadata ptr %fps22, metadata !2750, metadata !DIExpression()), !dbg !2829
  %length = getelementptr inbounds %struct.acpi_buffer, ptr %fps22, i32 0, i32 0, !dbg !2830
  store i64 40, ptr %length, align 8, !dbg !2830
  %pointer23 = getelementptr inbounds %struct.acpi_buffer, ptr %fps22, i32 0, i32 1, !dbg !2830
  %25 = load ptr, ptr %fan, align 8, !dbg !2831
  %fps24 = getelementptr inbounds %struct.acpi_fan, ptr %25, i32 0, i32 2, !dbg !2832
  %26 = load ptr, ptr %fps24, align 8, !dbg !2832
  %27 = load i32, ptr %i, align 4, !dbg !2833
  %idxprom = sext i32 %27 to i64, !dbg !2831
  %arrayidx = getelementptr %struct.acpi_fan_fps, ptr %26, i64 %idxprom, !dbg !2831
  store ptr %arrayidx, ptr %pointer23, align 8, !dbg !2830
  %28 = load ptr, ptr %obj, align 8, !dbg !2834
  %elements = getelementptr inbounds %struct.anon.7, ptr %28, i32 0, i32 2, !dbg !2835
  %29 = load ptr, ptr %elements, align 8, !dbg !2835
  %30 = load i32, ptr %i, align 4, !dbg !2836
  %add = add i32 %30, 1, !dbg !2837
  %idxprom25 = sext i32 %add to i64, !dbg !2834
  %arrayidx26 = getelementptr %union.acpi_object, ptr %29, i64 %idxprom25, !dbg !2834
  %call27 = call i32 @acpi_extract_package(ptr noundef %arrayidx26, ptr noundef %format, ptr noundef %fps22) #11, !dbg !2838
  store i32 %call27, ptr %status, align 4, !dbg !2839
  %31 = load i32, ptr %status, align 4, !dbg !2840
  %tobool28 = icmp ne i32 %31, 0, !dbg !2840
  br i1 %tobool28, label %if.then29, label %if.end34, !dbg !2842

if.then29:                                        ; preds = %for.body
  br label %do.body30, !dbg !2843

do.body30:                                        ; preds = %if.then29
  br label %do.cond31, !dbg !2846

do.cond31:                                        ; preds = %do.body30
  br label %do.end32, !dbg !2846

do.end32:                                         ; preds = %do.cond31
  %32 = load ptr, ptr %device.addr, align 8, !dbg !2843
  %dev33 = getelementptr inbounds %struct.acpi_device, ptr %32, i32 0, i32 18, !dbg !2843
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev33, ptr noundef @.str.21) #12, !dbg !2843
  store i32 4, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !2848

if.end34:                                         ; preds = %for.body
  store i32 0, ptr %cleanup.dest.slot, align 4, !dbg !2849
  br label %cleanup, !dbg !2849

cleanup:                                          ; preds = %do.end32, %if.end34
  call void @llvm.lifetime.end.p0(i64 16, ptr %fps22) #10, !dbg !2849
  call void @llvm.lifetime.end.p0(i64 16, ptr %format) #10, !dbg !2849
  %cleanup.dest = load i32, ptr %cleanup.dest.slot, align 4
  switch i32 %cleanup.dest, label %cleanup39 [
    i32 0, label %cleanup.cont
    i32 4, label %err
  ]

cleanup.cont:                                     ; preds = %cleanup
  br label %for.inc, !dbg !2850

for.inc:                                          ; preds = %cleanup.cont
  %33 = load i32, ptr %i, align 4, !dbg !2851
  %inc = add i32 %33, 1, !dbg !2851
  store i32 %inc, ptr %i, align 4, !dbg !2851
  br label %for.cond, !dbg !2852, !llvm.loop !2853

for.end:                                          ; preds = %for.cond
  %34 = load ptr, ptr %fan, align 8, !dbg !2857
  %fps36 = getelementptr inbounds %struct.acpi_fan, ptr %34, i32 0, i32 2, !dbg !2858
  %35 = load ptr, ptr %fps36, align 8, !dbg !2858
  %36 = load ptr, ptr %fan, align 8, !dbg !2859
  %fps_count37 = getelementptr inbounds %struct.acpi_fan, ptr %36, i32 0, i32 3, !dbg !2860
  %37 = load i32, ptr %fps_count37, align 8, !dbg !2860
  %conv38 = sext i32 %37 to i64, !dbg !2859
  call void @sort(ptr noundef %35, i64 noundef %conv38, i64 noundef 96, ptr noundef @acpi_fan_speed_cmp, ptr noundef null) #11, !dbg !2861
  br label %err, !dbg !2861

err:                                              ; preds = %for.end, %cleanup, %do.end16, %do.end
  call void @llvm.dbg.label(metadata !2751), !dbg !2862
  %38 = load ptr, ptr %obj, align 8, !dbg !2863
  call void @kfree(ptr noundef %38) #11, !dbg !2864
  %39 = load i32, ptr %status, align 4, !dbg !2865
  store i32 %39, ptr %retval, align 4, !dbg !2866
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup39, !dbg !2866

cleanup39:                                        ; preds = %err, %cleanup, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !2867
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #10, !dbg !2867
  call void @llvm.lifetime.end.p0(i64 8, ptr %obj) #10, !dbg !2867
  call void @llvm.lifetime.end.p0(i64 16, ptr %buffer) #10, !dbg !2867
  call void @llvm.lifetime.end.p0(i64 8, ptr %fan) #10, !dbg !2867
  %40 = load i32, ptr %retval, align 4, !dbg !2867
  ret i32 %40, !dbg !2867
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2868 dso_local i32 @acpi_fan_create_attributes(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2869 dso_local i32 @acpi_device_update_power(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2872 dso_local i32 @strncmp(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2876 dso_local ptr @thermal_cooling_device_register(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @IS_ERR(ptr noundef %ptr) #7 align 16 !dbg !2879 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2884, metadata !DIExpression()), !dbg !2885
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2886
  %1 = ptrtoint ptr %0 to i64, !dbg !2886
  %2 = inttoptr i64 %1 to ptr, !dbg !2886
  %3 = ptrtoint ptr %2 to i64, !dbg !2886
  %cmp = icmp uge i64 %3, -4095, !dbg !2886
  %lnot = xor i1 %cmp, true, !dbg !2886
  %lnot1 = xor i1 %lnot, true, !dbg !2886
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2886
  %conv = sext i32 %lnot.ext to i64, !dbg !2886
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !2886
  %tobool = icmp ne i64 %expval, 0, !dbg !2886
  ret i1 %tobool, !dbg !2887
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal i64 @PTR_ERR(ptr noundef %ptr) #7 align 16 !dbg !2888 {
entry:
  %ptr.addr = alloca ptr, align 8
  store ptr %ptr, ptr %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %ptr.addr, metadata !2892, metadata !DIExpression()), !dbg !2893
  %0 = load ptr, ptr %ptr.addr, align 8, !dbg !2894
  %1 = ptrtoint ptr %0 to i64, !dbg !2895
  ret i64 %1, !dbg !2896
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2897 dso_local i32 @sysfs_create_link(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2900 dso_local void @sysfs_remove_link(ptr noundef, ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2903 dso_local void @thermal_cooling_device_unregister(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2906 dso_local void @acpi_fan_delete_attributes(ptr noundef) #4

; Function Attrs: noredzone null_pointer_is_valid allocsize(1)
declare !dbg !2907 dso_local noalias ptr @devm_kmalloc(ptr noundef, i64 noundef, i32 noundef) #8

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal void @dev_set_drvdata(ptr noundef %dev, ptr noundef %data) #7 align 16 !dbg !2908 {
entry:
  %dev.addr = alloca ptr, align 8
  %data.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2912, metadata !DIExpression()), !dbg !2914
  store ptr %data, ptr %data.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %data.addr, metadata !2913, metadata !DIExpression()), !dbg !2915
  %0 = load ptr, ptr %data.addr, align 8, !dbg !2916
  %1 = load ptr, ptr %dev.addr, align 8, !dbg !2917
  %driver_data = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8, !dbg !2918
  store ptr %0, ptr %driver_data, align 8, !dbg !2919
  ret void, !dbg !2920
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2921 dso_local zeroext i1 @acpi_has_method(ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @acpi_driver_data(ptr noundef %d) #7 align 16 !dbg !2924 {
entry:
  %d.addr = alloca ptr, align 8
  store ptr %d, ptr %d.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %d.addr, metadata !2928, metadata !DIExpression()), !dbg !2929
  %0 = load ptr, ptr %d.addr, align 8, !dbg !2930
  %driver_data = getelementptr inbounds %struct.acpi_device, ptr %0, i32 0, i32 17, !dbg !2931
  %1 = load ptr, ptr %driver_data, align 8, !dbg !2931
  ret ptr %1, !dbg !2932
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2933 dso_local i32 @acpi_extract_package(ptr noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @devm_kcalloc(ptr noundef %dev, i64 noundef %n, i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !2936 {
entry:
  %dev.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2940, metadata !DIExpression()), !dbg !2944
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2941, metadata !DIExpression()), !dbg !2945
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2942, metadata !DIExpression()), !dbg !2946
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2943, metadata !DIExpression()), !dbg !2947
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !2948
  %1 = load i64, ptr %n.addr, align 8, !dbg !2949
  %2 = load i64, ptr %size.addr, align 8, !dbg !2950
  %3 = load i32, ptr %flags.addr, align 4, !dbg !2951
  %or = or i32 %3, 256, !dbg !2952
  %call = call ptr @devm_kmalloc_array(ptr noundef %0, i64 noundef %1, i64 noundef %2, i32 noundef %or) #11, !dbg !2953
  ret ptr %call, !dbg !2954
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !2955 dso_local void @sort(ptr noundef, i64 noundef, i64 noundef, ptr noundef, ptr noundef) #4

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_fan_speed_cmp(ptr noundef %a, ptr noundef %b) #0 align 16 !dbg !2967 {
entry:
  %a.addr = alloca ptr, align 8
  %b.addr = alloca ptr, align 8
  %fps1 = alloca ptr, align 8
  %fps2 = alloca ptr, align 8
  store ptr %a, ptr %a.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %a.addr, metadata !2969, metadata !DIExpression()), !dbg !2975
  store ptr %b, ptr %b.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %b.addr, metadata !2970, metadata !DIExpression()), !dbg !2976
  call void @llvm.lifetime.start.p0(i64 8, ptr %fps1) #10, !dbg !2977
  call void @llvm.dbg.declare(metadata ptr %fps1, metadata !2971, metadata !DIExpression()), !dbg !2978
  %0 = load ptr, ptr %a.addr, align 8, !dbg !2979
  store ptr %0, ptr %fps1, align 8, !dbg !2978
  call void @llvm.lifetime.start.p0(i64 8, ptr %fps2) #10, !dbg !2980
  call void @llvm.dbg.declare(metadata ptr %fps2, metadata !2974, metadata !DIExpression()), !dbg !2981
  %1 = load ptr, ptr %b.addr, align 8, !dbg !2982
  store ptr %1, ptr %fps2, align 8, !dbg !2981
  %2 = load ptr, ptr %fps1, align 8, !dbg !2983
  %speed = getelementptr inbounds %struct.acpi_fan_fps, ptr %2, i32 0, i32 2, !dbg !2984
  %3 = load i64, ptr %speed, align 8, !dbg !2984
  %4 = load ptr, ptr %fps2, align 8, !dbg !2985
  %speed1 = getelementptr inbounds %struct.acpi_fan_fps, ptr %4, i32 0, i32 2, !dbg !2986
  %5 = load i64, ptr %speed1, align 8, !dbg !2986
  %sub = sub i64 %3, %5, !dbg !2987
  %conv = trunc i64 %sub to i32, !dbg !2983
  call void @llvm.lifetime.end.p0(i64 8, ptr %fps2) #10, !dbg !2988
  call void @llvm.lifetime.end.p0(i64 8, ptr %fps1) #10, !dbg !2988
  ret i32 %conv, !dbg !2989
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @devm_kmalloc_array(ptr noundef %dev, i64 noundef %n, i64 noundef %size, i32 noundef %flags) #7 align 16 !dbg !2990 {
entry:
  %retval = alloca ptr, align 8
  %dev.addr = alloca ptr, align 8
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  %bytes = alloca i64, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !2992, metadata !DIExpression()), !dbg !2997
  store i64 %n, ptr %n.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %n.addr, metadata !2993, metadata !DIExpression()), !dbg !2998
  store i64 %size, ptr %size.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %size.addr, metadata !2994, metadata !DIExpression()), !dbg !2999
  store i32 %flags, ptr %flags.addr, align 4
  call void @llvm.dbg.declare(metadata ptr %flags.addr, metadata !2995, metadata !DIExpression()), !dbg !3000
  call void @llvm.lifetime.start.p0(i64 8, ptr %bytes) #10, !dbg !3001
  call void @llvm.dbg.declare(metadata ptr %bytes, metadata !2996, metadata !DIExpression()), !dbg !3002
  %0 = load i64, ptr %n.addr, align 8, !dbg !3003
  %1 = load i64, ptr %size.addr, align 8, !dbg !3003
  %2 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %0, i64 %1), !dbg !3003
  %3 = extractvalue { i64, i1 } %2, 1, !dbg !3003
  %4 = extractvalue { i64, i1 } %2, 0, !dbg !3003
  store i64 %4, ptr %bytes, align 8, !dbg !3003
  %call = call zeroext i1 @__must_check_overflow(i1 noundef zeroext %3) #11, !dbg !3003
  %lnot = xor i1 %call, true, !dbg !3003
  %lnot1 = xor i1 %lnot, true, !dbg !3003
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3003
  %conv = sext i32 %lnot.ext to i64, !dbg !3003
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3003
  %tobool = icmp ne i64 %expval, 0, !dbg !3003
  br i1 %tobool, label %if.then, label %if.end, !dbg !3005

if.then:                                          ; preds = %entry
  store ptr null, ptr %retval, align 8, !dbg !3006
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3006

if.end:                                           ; preds = %entry
  %5 = load ptr, ptr %dev.addr, align 8, !dbg !3007
  %6 = load i64, ptr %bytes, align 8, !dbg !3008
  %7 = load i32, ptr %flags.addr, align 4, !dbg !3009
  %call2 = call noalias ptr @devm_kmalloc(ptr noundef %5, i64 noundef %6, i32 noundef %7) #13, !dbg !3010
  store ptr %call2, ptr %retval, align 8, !dbg !3011
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3011

cleanup:                                          ; preds = %if.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %bytes) #10, !dbg !3012
  %8 = load ptr, ptr %retval, align 8, !dbg !3012
  ret ptr %8, !dbg !3012
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal zeroext i1 @__must_check_overflow(i1 noundef zeroext %overflow) #7 align 16 !dbg !3013 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, ptr %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata ptr %overflow.addr, metadata !3018, metadata !DIExpression()), !dbg !3019
  %0 = load i8, ptr %overflow.addr, align 1, !dbg !3020, !range !2522, !noundef !352
  %tobool = trunc i8 %0 to i1, !dbg !3020
  %lnot = xor i1 %tobool, true, !dbg !3020
  %lnot1 = xor i1 %lnot, true, !dbg !3020
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3020
  %conv = sext i32 %lnot.ext to i64, !dbg !3020
  %expval = call i64 @llvm.expect.i64(i64 %conv, i64 0), !dbg !3020
  %tobool2 = icmp ne i64 %expval, 0, !dbg !3020
  ret i1 %tobool2, !dbg !3021
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(none)
declare i64 @llvm.expect.i64(i64, i64) #9

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fan_get_max_state(ptr noundef %cdev, ptr noundef %state) #0 align 16 !dbg !3022 {
entry:
  %cdev.addr = alloca ptr, align 8
  %state.addr = alloca ptr, align 8
  %device = alloca ptr, align 8
  %fan = alloca ptr, align 8
  store ptr %cdev, ptr %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdev.addr, metadata !3024, metadata !DIExpression()), !dbg !3028
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !3025, metadata !DIExpression()), !dbg !3029
  call void @llvm.lifetime.start.p0(i64 8, ptr %device) #10, !dbg !3030
  call void @llvm.dbg.declare(metadata ptr %device, metadata !3026, metadata !DIExpression()), !dbg !3031
  %0 = load ptr, ptr %cdev.addr, align 8, !dbg !3032
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 5, !dbg !3033
  %1 = load ptr, ptr %devdata, align 8, !dbg !3033
  store ptr %1, ptr %device, align 8, !dbg !3031
  call void @llvm.lifetime.start.p0(i64 8, ptr %fan) #10, !dbg !3034
  call void @llvm.dbg.declare(metadata ptr %fan, metadata !3027, metadata !DIExpression()), !dbg !3035
  %2 = load ptr, ptr %device, align 8, !dbg !3036
  %call = call ptr @acpi_driver_data(ptr noundef %2) #11, !dbg !3037
  store ptr %call, ptr %fan, align 8, !dbg !3035
  %3 = load ptr, ptr %fan, align 8, !dbg !3038
  %acpi4 = getelementptr inbounds %struct.acpi_fan, ptr %3, i32 0, i32 0, !dbg !3040
  %4 = load i8, ptr %acpi4, align 8, !dbg !3040, !range !2522, !noundef !352
  %tobool = trunc i8 %4 to i1, !dbg !3040
  br i1 %tobool, label %if.then, label %if.else6, !dbg !3041

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %fan, align 8, !dbg !3042
  %fif = getelementptr inbounds %struct.acpi_fan, ptr %5, i32 0, i32 1, !dbg !3045
  %fine_grain_ctrl = getelementptr inbounds %struct.acpi_fan_fif, ptr %fif, i32 0, i32 1, !dbg !3046
  %6 = load i8, ptr %fine_grain_ctrl, align 1, !dbg !3046
  %tobool1 = icmp ne i8 %6, 0, !dbg !3042
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !3047

if.then2:                                         ; preds = %if.then
  %7 = load ptr, ptr %fan, align 8, !dbg !3048
  %fif3 = getelementptr inbounds %struct.acpi_fan, ptr %7, i32 0, i32 1, !dbg !3049
  %step_size = getelementptr inbounds %struct.acpi_fan_fif, ptr %fif3, i32 0, i32 2, !dbg !3050
  %8 = load i8, ptr %step_size, align 1, !dbg !3050
  %conv = zext i8 %8 to i32, !dbg !3048
  %div = sdiv i32 100, %conv, !dbg !3051
  %conv4 = sext i32 %div to i64, !dbg !3052
  %9 = load ptr, ptr %state.addr, align 8, !dbg !3053
  store i64 %conv4, ptr %9, align 8, !dbg !3054
  br label %if.end, !dbg !3055

if.else:                                          ; preds = %if.then
  %10 = load ptr, ptr %fan, align 8, !dbg !3056
  %fps_count = getelementptr inbounds %struct.acpi_fan, ptr %10, i32 0, i32 3, !dbg !3057
  %11 = load i32, ptr %fps_count, align 8, !dbg !3057
  %sub = sub i32 %11, 1, !dbg !3058
  %conv5 = sext i32 %sub to i64, !dbg !3056
  %12 = load ptr, ptr %state.addr, align 8, !dbg !3059
  store i64 %conv5, ptr %12, align 8, !dbg !3060
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then2
  br label %if.end7, !dbg !3061

if.else6:                                         ; preds = %entry
  %13 = load ptr, ptr %state.addr, align 8, !dbg !3062
  store i64 1, ptr %13, align 8, !dbg !3064
  br label %if.end7

if.end7:                                          ; preds = %if.else6, %if.end
  call void @llvm.lifetime.end.p0(i64 8, ptr %fan) #10, !dbg !3065
  call void @llvm.lifetime.end.p0(i64 8, ptr %device) #10, !dbg !3065
  ret i32 0, !dbg !3066
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fan_get_cur_state(ptr noundef %cdev, ptr noundef %state) #0 align 16 !dbg !3067 {
entry:
  %retval = alloca i32, align 4
  %cdev.addr = alloca ptr, align 8
  %state.addr = alloca ptr, align 8
  %device = alloca ptr, align 8
  %fan = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cdev, ptr %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdev.addr, metadata !3069, metadata !DIExpression()), !dbg !3073
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !3070, metadata !DIExpression()), !dbg !3074
  call void @llvm.lifetime.start.p0(i64 8, ptr %device) #10, !dbg !3075
  call void @llvm.dbg.declare(metadata ptr %device, metadata !3071, metadata !DIExpression()), !dbg !3076
  %0 = load ptr, ptr %cdev.addr, align 8, !dbg !3077
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 5, !dbg !3078
  %1 = load ptr, ptr %devdata, align 8, !dbg !3078
  store ptr %1, ptr %device, align 8, !dbg !3076
  call void @llvm.lifetime.start.p0(i64 8, ptr %fan) #10, !dbg !3079
  call void @llvm.dbg.declare(metadata ptr %fan, metadata !3072, metadata !DIExpression()), !dbg !3080
  %2 = load ptr, ptr %device, align 8, !dbg !3081
  %call = call ptr @acpi_driver_data(ptr noundef %2) #11, !dbg !3082
  store ptr %call, ptr %fan, align 8, !dbg !3080
  %3 = load ptr, ptr %fan, align 8, !dbg !3083
  %acpi4 = getelementptr inbounds %struct.acpi_fan, ptr %3, i32 0, i32 0, !dbg !3085
  %4 = load i8, ptr %acpi4, align 8, !dbg !3085, !range !2522, !noundef !352
  %tobool = trunc i8 %4 to i1, !dbg !3085
  br i1 %tobool, label %if.then, label %if.else, !dbg !3086

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %device, align 8, !dbg !3087
  %6 = load ptr, ptr %state.addr, align 8, !dbg !3088
  %call1 = call i32 @fan_get_state_acpi4(ptr noundef %5, ptr noundef %6) #11, !dbg !3089
  store i32 %call1, ptr %retval, align 4, !dbg !3090
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3090

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %device, align 8, !dbg !3091
  %8 = load ptr, ptr %state.addr, align 8, !dbg !3092
  %call2 = call i32 @fan_get_state(ptr noundef %7, ptr noundef %8) #11, !dbg !3093
  store i32 %call2, ptr %retval, align 4, !dbg !3094
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3094

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fan) #10, !dbg !3095
  call void @llvm.lifetime.end.p0(i64 8, ptr %device) #10, !dbg !3095
  %9 = load i32, ptr %retval, align 4, !dbg !3095
  ret i32 %9, !dbg !3095
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fan_set_cur_state(ptr noundef %cdev, i64 noundef %state) #0 align 16 !dbg !3096 {
entry:
  %retval = alloca i32, align 4
  %cdev.addr = alloca ptr, align 8
  %state.addr = alloca i64, align 8
  %device = alloca ptr, align 8
  %fan = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %cdev, ptr %cdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %cdev.addr, metadata !3098, metadata !DIExpression()), !dbg !3102
  store i64 %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !3099, metadata !DIExpression()), !dbg !3103
  call void @llvm.lifetime.start.p0(i64 8, ptr %device) #10, !dbg !3104
  call void @llvm.dbg.declare(metadata ptr %device, metadata !3100, metadata !DIExpression()), !dbg !3105
  %0 = load ptr, ptr %cdev.addr, align 8, !dbg !3106
  %devdata = getelementptr inbounds %struct.thermal_cooling_device, ptr %0, i32 0, i32 5, !dbg !3107
  %1 = load ptr, ptr %devdata, align 8, !dbg !3107
  store ptr %1, ptr %device, align 8, !dbg !3105
  call void @llvm.lifetime.start.p0(i64 8, ptr %fan) #10, !dbg !3108
  call void @llvm.dbg.declare(metadata ptr %fan, metadata !3101, metadata !DIExpression()), !dbg !3109
  %2 = load ptr, ptr %device, align 8, !dbg !3110
  %call = call ptr @acpi_driver_data(ptr noundef %2) #11, !dbg !3111
  store ptr %call, ptr %fan, align 8, !dbg !3109
  %3 = load ptr, ptr %fan, align 8, !dbg !3112
  %acpi4 = getelementptr inbounds %struct.acpi_fan, ptr %3, i32 0, i32 0, !dbg !3114
  %4 = load i8, ptr %acpi4, align 8, !dbg !3114, !range !2522, !noundef !352
  %tobool = trunc i8 %4 to i1, !dbg !3114
  br i1 %tobool, label %if.then, label %if.else, !dbg !3115

if.then:                                          ; preds = %entry
  %5 = load ptr, ptr %device, align 8, !dbg !3116
  %6 = load i64, ptr %state.addr, align 8, !dbg !3117
  %call1 = call i32 @fan_set_state_acpi4(ptr noundef %5, i64 noundef %6) #11, !dbg !3118
  store i32 %call1, ptr %retval, align 4, !dbg !3119
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3119

if.else:                                          ; preds = %entry
  %7 = load ptr, ptr %device, align 8, !dbg !3120
  %8 = load i64, ptr %state.addr, align 8, !dbg !3121
  %call2 = call i32 @fan_set_state(ptr noundef %7, i64 noundef %8) #11, !dbg !3122
  store i32 %call2, ptr %retval, align 4, !dbg !3123
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3123

cleanup:                                          ; preds = %if.else, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fan) #10, !dbg !3124
  call void @llvm.lifetime.end.p0(i64 8, ptr %device) #10, !dbg !3124
  %9 = load i32, ptr %retval, align 4, !dbg !3124
  ret i32 %9, !dbg !3124
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fan_get_state_acpi4(ptr noundef %device, ptr noundef %state) #0 align 16 !dbg !3125 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca ptr, align 8
  %state.addr = alloca ptr, align 8
  %fan = alloca ptr, align 8
  %fst = alloca %struct.acpi_fan_fst, align 8
  %status = alloca i32, align 4
  %i = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !3129, metadata !DIExpression()), !dbg !3136
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !3130, metadata !DIExpression()), !dbg !3137
  call void @llvm.lifetime.start.p0(i64 8, ptr %fan) #10, !dbg !3138
  call void @llvm.dbg.declare(metadata ptr %fan, metadata !3131, metadata !DIExpression()), !dbg !3139
  %0 = load ptr, ptr %device.addr, align 8, !dbg !3140
  %call = call ptr @acpi_driver_data(ptr noundef %0) #11, !dbg !3141
  store ptr %call, ptr %fan, align 8, !dbg !3139
  call void @llvm.lifetime.start.p0(i64 24, ptr %fst) #10, !dbg !3142
  call void @llvm.dbg.declare(metadata ptr %fst, metadata !3132, metadata !DIExpression()), !dbg !3143
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #10, !dbg !3144
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3133, metadata !DIExpression()), !dbg !3145
  call void @llvm.lifetime.start.p0(i64 4, ptr %i) #10, !dbg !3144
  call void @llvm.dbg.declare(metadata ptr %i, metadata !3134, metadata !DIExpression()), !dbg !3146
  %1 = load ptr, ptr %device.addr, align 8, !dbg !3147
  %call1 = call i32 @acpi_fan_get_fst(ptr noundef %1, ptr noundef %fst) #11, !dbg !3148
  store i32 %call1, ptr %status, align 4, !dbg !3149
  %2 = load i32, ptr %status, align 4, !dbg !3150
  %tobool = icmp ne i32 %2, 0, !dbg !3150
  br i1 %tobool, label %if.then, label %if.end, !dbg !3152

if.then:                                          ; preds = %entry
  %3 = load i32, ptr %status, align 4, !dbg !3153
  store i32 %3, ptr %retval, align 4, !dbg !3154
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3154

if.end:                                           ; preds = %entry
  %4 = load ptr, ptr %fan, align 8, !dbg !3155
  %fif = getelementptr inbounds %struct.acpi_fan, ptr %4, i32 0, i32 1, !dbg !3157
  %fine_grain_ctrl = getelementptr inbounds %struct.acpi_fan_fif, ptr %fif, i32 0, i32 1, !dbg !3158
  %5 = load i8, ptr %fine_grain_ctrl, align 1, !dbg !3158
  %tobool2 = icmp ne i8 %5, 0, !dbg !3155
  br i1 %tobool2, label %if.then3, label %if.end10, !dbg !3159

if.then3:                                         ; preds = %if.end
  %control = getelementptr inbounds %struct.acpi_fan_fst, ptr %fst, i32 0, i32 1, !dbg !3160
  %6 = load i64, ptr %control, align 8, !dbg !3160
  %cmp = icmp ugt i64 %6, 100, !dbg !3163
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !3164

if.then4:                                         ; preds = %if.then3
  br label %match_fps, !dbg !3165

if.end5:                                          ; preds = %if.then3
  %control6 = getelementptr inbounds %struct.acpi_fan_fst, ptr %fst, i32 0, i32 1, !dbg !3167
  %7 = load i64, ptr %control6, align 8, !dbg !3167
  %conv = trunc i64 %7 to i32, !dbg !3168
  %8 = load ptr, ptr %fan, align 8, !dbg !3169
  %fif7 = getelementptr inbounds %struct.acpi_fan, ptr %8, i32 0, i32 1, !dbg !3170
  %step_size = getelementptr inbounds %struct.acpi_fan_fif, ptr %fif7, i32 0, i32 2, !dbg !3171
  %9 = load i8, ptr %step_size, align 1, !dbg !3171
  %conv8 = zext i8 %9 to i32, !dbg !3169
  %div = sdiv i32 %conv, %conv8, !dbg !3172
  %conv9 = sext i32 %div to i64, !dbg !3168
  %10 = load ptr, ptr %state.addr, align 8, !dbg !3173
  store i64 %conv9, ptr %10, align 8, !dbg !3174
  store i32 0, ptr %retval, align 4, !dbg !3175
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3175

if.end10:                                         ; preds = %if.end
  br label %match_fps, !dbg !3158

match_fps:                                        ; preds = %if.end10, %if.then4
  call void @llvm.dbg.label(metadata !3135), !dbg !3176
  store i32 0, ptr %i, align 4, !dbg !3177
  br label %for.cond, !dbg !3179

for.cond:                                         ; preds = %for.inc, %match_fps
  %11 = load i32, ptr %i, align 4, !dbg !3180
  %12 = load ptr, ptr %fan, align 8, !dbg !3182
  %fps_count = getelementptr inbounds %struct.acpi_fan, ptr %12, i32 0, i32 3, !dbg !3183
  %13 = load i32, ptr %fps_count, align 8, !dbg !3183
  %cmp11 = icmp slt i32 %11, %13, !dbg !3184
  br i1 %cmp11, label %for.body, label %for.end, !dbg !3185

for.body:                                         ; preds = %for.cond
  %control13 = getelementptr inbounds %struct.acpi_fan_fst, ptr %fst, i32 0, i32 1, !dbg !3186
  %14 = load i64, ptr %control13, align 8, !dbg !3186
  %15 = load ptr, ptr %fan, align 8, !dbg !3189
  %fps = getelementptr inbounds %struct.acpi_fan, ptr %15, i32 0, i32 2, !dbg !3190
  %16 = load ptr, ptr %fps, align 8, !dbg !3190
  %17 = load i32, ptr %i, align 4, !dbg !3191
  %idxprom = sext i32 %17 to i64, !dbg !3189
  %arrayidx = getelementptr %struct.acpi_fan_fps, ptr %16, i64 %idxprom, !dbg !3189
  %control14 = getelementptr inbounds %struct.acpi_fan_fps, ptr %arrayidx, i32 0, i32 0, !dbg !3192
  %18 = load i64, ptr %control14, align 8, !dbg !3192
  %cmp15 = icmp eq i64 %14, %18, !dbg !3193
  br i1 %cmp15, label %if.then17, label %if.end18, !dbg !3194

if.then17:                                        ; preds = %for.body
  br label %for.end, !dbg !3195

if.end18:                                         ; preds = %for.body
  br label %for.inc, !dbg !3196

for.inc:                                          ; preds = %if.end18
  %19 = load i32, ptr %i, align 4, !dbg !3197
  %inc = add i32 %19, 1, !dbg !3197
  store i32 %inc, ptr %i, align 4, !dbg !3197
  br label %for.cond, !dbg !3198, !llvm.loop !3199

for.end:                                          ; preds = %if.then17, %for.cond
  %20 = load i32, ptr %i, align 4, !dbg !3201
  %21 = load ptr, ptr %fan, align 8, !dbg !3203
  %fps_count19 = getelementptr inbounds %struct.acpi_fan, ptr %21, i32 0, i32 3, !dbg !3204
  %22 = load i32, ptr %fps_count19, align 8, !dbg !3204
  %cmp20 = icmp eq i32 %20, %22, !dbg !3205
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !3206

if.then22:                                        ; preds = %for.end
  store i32 -22, ptr %retval, align 4, !dbg !3207
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3207

if.end23:                                         ; preds = %for.end
  %23 = load i32, ptr %i, align 4, !dbg !3209
  %conv24 = sext i32 %23 to i64, !dbg !3209
  %24 = load ptr, ptr %state.addr, align 8, !dbg !3210
  store i64 %conv24, ptr %24, align 8, !dbg !3211
  %25 = load i32, ptr %status, align 4, !dbg !3212
  store i32 %25, ptr %retval, align 4, !dbg !3213
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3213

cleanup:                                          ; preds = %if.end23, %if.then22, %if.end5, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %i) #10, !dbg !3214
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #10, !dbg !3214
  call void @llvm.lifetime.end.p0(i64 24, ptr %fst) #10, !dbg !3214
  call void @llvm.lifetime.end.p0(i64 8, ptr %fan) #10, !dbg !3214
  %26 = load i32, ptr %retval, align 4, !dbg !3214
  ret i32 %26, !dbg !3214
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fan_get_state(ptr noundef %device, ptr noundef %state) #0 align 16 !dbg !3215 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca ptr, align 8
  %state.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %acpi_state = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !3217, metadata !DIExpression()), !dbg !3221
  store ptr %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !3218, metadata !DIExpression()), !dbg !3222
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #10, !dbg !3223
  call void @llvm.dbg.declare(metadata ptr %result, metadata !3219, metadata !DIExpression()), !dbg !3224
  call void @llvm.lifetime.start.p0(i64 4, ptr %acpi_state) #10, !dbg !3225
  call void @llvm.dbg.declare(metadata ptr %acpi_state, metadata !3220, metadata !DIExpression()), !dbg !3226
  store i32 0, ptr %acpi_state, align 4, !dbg !3226
  %0 = load ptr, ptr %device.addr, align 8, !dbg !3227
  %call = call i32 @acpi_device_update_power(ptr noundef %0, ptr noundef %acpi_state) #11, !dbg !3228
  store i32 %call, ptr %result, align 4, !dbg !3229
  %1 = load i32, ptr %result, align 4, !dbg !3230
  %tobool = icmp ne i32 %1, 0, !dbg !3230
  br i1 %tobool, label %if.then, label %if.end, !dbg !3232

if.then:                                          ; preds = %entry
  %2 = load i32, ptr %result, align 4, !dbg !3233
  store i32 %2, ptr %retval, align 4, !dbg !3234
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3234

if.end:                                           ; preds = %entry
  %3 = load i32, ptr %acpi_state, align 4, !dbg !3235
  %cmp = icmp eq i32 %3, 4, !dbg !3236
  br i1 %cmp, label %cond.true, label %lor.lhs.false, !dbg !3237

lor.lhs.false:                                    ; preds = %if.end
  %4 = load i32, ptr %acpi_state, align 4, !dbg !3238
  %cmp1 = icmp eq i32 %4, 3, !dbg !3239
  br i1 %cmp1, label %cond.true, label %cond.false, !dbg !3235

cond.true:                                        ; preds = %lor.lhs.false, %if.end
  br label %cond.end, !dbg !3235

cond.false:                                       ; preds = %lor.lhs.false
  %5 = load i32, ptr %acpi_state, align 4, !dbg !3240
  %cmp2 = icmp eq i32 %5, 0, !dbg !3241
  %6 = zext i1 %cmp2 to i64, !dbg !3240
  %cond = select i1 %cmp2, i32 1, i32 -1, !dbg !3240
  br label %cond.end, !dbg !3235

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond3 = phi i32 [ 0, %cond.true ], [ %cond, %cond.false ], !dbg !3235
  %conv = sext i32 %cond3 to i64, !dbg !3235
  %7 = load ptr, ptr %state.addr, align 8, !dbg !3242
  store i64 %conv, ptr %7, align 8, !dbg !3243
  store i32 0, ptr %retval, align 4, !dbg !3244
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3244

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 4, ptr %acpi_state) #10, !dbg !3245
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #10, !dbg !3245
  %8 = load i32, ptr %retval, align 4, !dbg !3245
  ret i32 %8, !dbg !3245
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fan_set_state_acpi4(ptr noundef %device, i64 noundef %state) #0 align 16 !dbg !3246 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca ptr, align 8
  %state.addr = alloca i64, align 8
  %fan = alloca ptr, align 8
  %status = alloca i32, align 4
  %value = alloca i64, align 8
  %max_state = alloca i32, align 4
  %cleanup.dest.slot = alloca i32, align 4
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !3250, metadata !DIExpression()), !dbg !3256
  store i64 %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !3251, metadata !DIExpression()), !dbg !3257
  call void @llvm.lifetime.start.p0(i64 8, ptr %fan) #10, !dbg !3258
  call void @llvm.dbg.declare(metadata ptr %fan, metadata !3252, metadata !DIExpression()), !dbg !3259
  %0 = load ptr, ptr %device.addr, align 8, !dbg !3260
  %call = call ptr @acpi_driver_data(ptr noundef %0) #11, !dbg !3261
  store ptr %call, ptr %fan, align 8, !dbg !3259
  call void @llvm.lifetime.start.p0(i64 4, ptr %status) #10, !dbg !3262
  call void @llvm.dbg.declare(metadata ptr %status, metadata !3253, metadata !DIExpression()), !dbg !3263
  call void @llvm.lifetime.start.p0(i64 8, ptr %value) #10, !dbg !3264
  call void @llvm.dbg.declare(metadata ptr %value, metadata !3254, metadata !DIExpression()), !dbg !3265
  %1 = load i64, ptr %state.addr, align 8, !dbg !3266
  store i64 %1, ptr %value, align 8, !dbg !3265
  call void @llvm.lifetime.start.p0(i64 4, ptr %max_state) #10, !dbg !3267
  call void @llvm.dbg.declare(metadata ptr %max_state, metadata !3255, metadata !DIExpression()), !dbg !3268
  %2 = load ptr, ptr %fan, align 8, !dbg !3269
  %fif = getelementptr inbounds %struct.acpi_fan, ptr %2, i32 0, i32 1, !dbg !3271
  %fine_grain_ctrl = getelementptr inbounds %struct.acpi_fan_fif, ptr %fif, i32 0, i32 1, !dbg !3272
  %3 = load i8, ptr %fine_grain_ctrl, align 1, !dbg !3272
  %tobool = icmp ne i8 %3, 0, !dbg !3269
  br i1 %tobool, label %if.then, label %if.else, !dbg !3273

if.then:                                          ; preds = %entry
  %4 = load ptr, ptr %fan, align 8, !dbg !3274
  %fif1 = getelementptr inbounds %struct.acpi_fan, ptr %4, i32 0, i32 1, !dbg !3275
  %step_size = getelementptr inbounds %struct.acpi_fan_fif, ptr %fif1, i32 0, i32 2, !dbg !3276
  %5 = load i8, ptr %step_size, align 1, !dbg !3276
  %conv = zext i8 %5 to i32, !dbg !3274
  %div = sdiv i32 100, %conv, !dbg !3277
  store i32 %div, ptr %max_state, align 4, !dbg !3278
  br label %if.end, !dbg !3279

if.else:                                          ; preds = %entry
  %6 = load ptr, ptr %fan, align 8, !dbg !3280
  %fps_count = getelementptr inbounds %struct.acpi_fan, ptr %6, i32 0, i32 3, !dbg !3281
  %7 = load i32, ptr %fps_count, align 8, !dbg !3281
  %sub = sub i32 %7, 1, !dbg !3282
  store i32 %sub, ptr %max_state, align 4, !dbg !3283
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %8 = load i64, ptr %state.addr, align 8, !dbg !3284
  %9 = load i32, ptr %max_state, align 4, !dbg !3286
  %conv2 = sext i32 %9 to i64, !dbg !3286
  %cmp = icmp ugt i64 %8, %conv2, !dbg !3287
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !3288

if.then4:                                         ; preds = %if.end
  store i32 -22, ptr %retval, align 4, !dbg !3289
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3289

if.end5:                                          ; preds = %if.end
  %10 = load ptr, ptr %fan, align 8, !dbg !3290
  %fif6 = getelementptr inbounds %struct.acpi_fan, ptr %10, i32 0, i32 1, !dbg !3292
  %fine_grain_ctrl7 = getelementptr inbounds %struct.acpi_fan_fif, ptr %fif6, i32 0, i32 1, !dbg !3293
  %11 = load i8, ptr %fine_grain_ctrl7, align 1, !dbg !3293
  %tobool8 = icmp ne i8 %11, 0, !dbg !3290
  br i1 %tobool8, label %if.then9, label %if.else20, !dbg !3294

if.then9:                                         ; preds = %if.end5
  %12 = load ptr, ptr %fan, align 8, !dbg !3295
  %fif10 = getelementptr inbounds %struct.acpi_fan, ptr %12, i32 0, i32 1, !dbg !3297
  %step_size11 = getelementptr inbounds %struct.acpi_fan_fif, ptr %fif10, i32 0, i32 2, !dbg !3298
  %13 = load i8, ptr %step_size11, align 1, !dbg !3298
  %conv12 = zext i8 %13 to i64, !dbg !3295
  %14 = load i64, ptr %value, align 8, !dbg !3299
  %mul = mul i64 %14, %conv12, !dbg !3299
  store i64 %mul, ptr %value, align 8, !dbg !3299
  %15 = load i64, ptr %value, align 8, !dbg !3300
  %16 = load ptr, ptr %fan, align 8, !dbg !3302
  %fif13 = getelementptr inbounds %struct.acpi_fan, ptr %16, i32 0, i32 1, !dbg !3303
  %step_size14 = getelementptr inbounds %struct.acpi_fan_fif, ptr %fif13, i32 0, i32 2, !dbg !3304
  %17 = load i8, ptr %step_size14, align 1, !dbg !3304
  %conv15 = zext i8 %17 to i64, !dbg !3302
  %add = add i64 %15, %conv15, !dbg !3305
  %cmp16 = icmp ugt i64 %add, 100, !dbg !3306
  br i1 %cmp16, label %if.then18, label %if.end19, !dbg !3307

if.then18:                                        ; preds = %if.then9
  store i64 100, ptr %value, align 8, !dbg !3308
  br label %if.end19, !dbg !3309

if.end19:                                         ; preds = %if.then18, %if.then9
  br label %if.end21, !dbg !3310

if.else20:                                        ; preds = %if.end5
  %18 = load ptr, ptr %fan, align 8, !dbg !3311
  %fps = getelementptr inbounds %struct.acpi_fan, ptr %18, i32 0, i32 2, !dbg !3313
  %19 = load ptr, ptr %fps, align 8, !dbg !3313
  %20 = load i64, ptr %state.addr, align 8, !dbg !3314
  %arrayidx = getelementptr %struct.acpi_fan_fps, ptr %19, i64 %20, !dbg !3311
  %control = getelementptr inbounds %struct.acpi_fan_fps, ptr %arrayidx, i32 0, i32 0, !dbg !3315
  %21 = load i64, ptr %control, align 8, !dbg !3315
  store i64 %21, ptr %value, align 8, !dbg !3316
  br label %if.end21

if.end21:                                         ; preds = %if.else20, %if.end19
  %22 = load ptr, ptr %device.addr, align 8, !dbg !3317
  %handle = getelementptr inbounds %struct.acpi_device, ptr %22, i32 0, i32 2, !dbg !3318
  %23 = load ptr, ptr %handle, align 8, !dbg !3318
  %24 = load i64, ptr %value, align 8, !dbg !3319
  %call22 = call i32 @acpi_execute_simple_method(ptr noundef %23, ptr noundef @.str.14, i64 noundef %24) #11, !dbg !3320
  store i32 %call22, ptr %status, align 4, !dbg !3321
  %25 = load i32, ptr %status, align 4, !dbg !3322
  %tobool23 = icmp ne i32 %25, 0, !dbg !3322
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !3324

if.then24:                                        ; preds = %if.end21
  store i32 -19, ptr %retval, align 4, !dbg !3325
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3325

if.end25:                                         ; preds = %if.end21
  store i32 0, ptr %retval, align 4, !dbg !3327
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3327

cleanup:                                          ; preds = %if.end25, %if.then24, %if.then4
  call void @llvm.lifetime.end.p0(i64 4, ptr %max_state) #10, !dbg !3328
  call void @llvm.lifetime.end.p0(i64 8, ptr %value) #10, !dbg !3328
  call void @llvm.lifetime.end.p0(i64 4, ptr %status) #10, !dbg !3328
  call void @llvm.lifetime.end.p0(i64 8, ptr %fan) #10, !dbg !3328
  %26 = load i32, ptr %retval, align 4, !dbg !3328
  ret i32 %26, !dbg !3328
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @fan_set_state(ptr noundef %device, i64 noundef %state) #0 align 16 !dbg !3329 {
entry:
  %retval = alloca i32, align 4
  %device.addr = alloca ptr, align 8
  %state.addr = alloca i64, align 8
  store ptr %device, ptr %device.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %device.addr, metadata !3331, metadata !DIExpression()), !dbg !3333
  store i64 %state, ptr %state.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %state.addr, metadata !3332, metadata !DIExpression()), !dbg !3334
  %0 = load i64, ptr %state.addr, align 8, !dbg !3335
  %cmp = icmp ne i64 %0, 0, !dbg !3337
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !3338

land.lhs.true:                                    ; preds = %entry
  %1 = load i64, ptr %state.addr, align 8, !dbg !3339
  %cmp1 = icmp ne i64 %1, 1, !dbg !3340
  br i1 %cmp1, label %if.then, label %if.end, !dbg !3341

if.then:                                          ; preds = %land.lhs.true
  store i32 -22, ptr %retval, align 4, !dbg !3342
  br label %return, !dbg !3342

if.end:                                           ; preds = %land.lhs.true, %entry
  %2 = load ptr, ptr %device.addr, align 8, !dbg !3343
  %3 = load i64, ptr %state.addr, align 8, !dbg !3344
  %tobool = icmp ne i64 %3, 0, !dbg !3344
  %4 = zext i1 %tobool to i64, !dbg !3344
  %cond = select i1 %tobool, i32 0, i32 4, !dbg !3344
  %call = call i32 @acpi_device_set_power(ptr noundef %2, i32 noundef %cond) #11, !dbg !3345
  store i32 %call, ptr %retval, align 4, !dbg !3346
  br label %return, !dbg !3346

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, ptr %retval, align 4, !dbg !3347
  ret i32 %5, !dbg !3347
}

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3348 dso_local i32 @acpi_execute_simple_method(ptr noundef, ptr noundef, i64 noundef) #4

; Function Attrs: noredzone null_pointer_is_valid
declare !dbg !3351 dso_local i32 @acpi_device_set_power(ptr noundef, i32 noundef) #4

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @platform_get_drvdata(ptr noundef %pdev) #7 align 16 !dbg !3354 {
entry:
  %pdev.addr = alloca ptr, align 8
  store ptr %pdev, ptr %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %pdev.addr, metadata !3360, metadata !DIExpression()), !dbg !3361
  %0 = load ptr, ptr %pdev.addr, align 8, !dbg !3362
  %dev = getelementptr inbounds %struct.platform_device, ptr %0, i32 0, i32 3, !dbg !3363
  %call = call ptr @dev_get_drvdata(ptr noundef %dev) #11, !dbg !3364
  ret ptr %call, !dbg !3365
}

; Function Attrs: fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong
define internal ptr @dev_get_drvdata(ptr noundef %dev) #7 align 16 !dbg !3366 {
entry:
  %dev.addr = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3370, metadata !DIExpression()), !dbg !3371
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3372
  %driver_data = getelementptr inbounds %struct.device, ptr %0, i32 0, i32 8, !dbg !3373
  %1 = load ptr, ptr %driver_data, align 8, !dbg !3373
  ret ptr %1, !dbg !3374
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_fan_resume(ptr noundef %dev) #0 align 16 !dbg !3375 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %result = alloca i32, align 4
  %fan = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__to_acpi_device_node_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3377, metadata !DIExpression()), !dbg !3384
  call void @llvm.lifetime.start.p0(i64 4, ptr %result) #10, !dbg !3385
  call void @llvm.dbg.declare(metadata ptr %result, metadata !3378, metadata !DIExpression()), !dbg !3386
  call void @llvm.lifetime.start.p0(i64 8, ptr %fan) #10, !dbg !3387
  call void @llvm.dbg.declare(metadata ptr %fan, metadata !3379, metadata !DIExpression()), !dbg !3388
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3389
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #11, !dbg !3390
  store ptr %call, ptr %fan, align 8, !dbg !3388
  %1 = load ptr, ptr %fan, align 8, !dbg !3391
  %acpi4 = getelementptr inbounds %struct.acpi_fan, ptr %1, i32 0, i32 0, !dbg !3393
  %2 = load i8, ptr %acpi4, align 8, !dbg !3393, !range !2522, !noundef !352
  %tobool = trunc i8 %2 to i1, !dbg !3393
  br i1 %tobool, label %if.then, label %if.end, !dbg !3394

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3395
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3395

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #10, !dbg !3396
  call void @llvm.dbg.declare(metadata ptr %__to_acpi_device_node_fwnode, metadata !3380, metadata !DIExpression()), !dbg !3396
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !3396
  %fwnode = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 24, !dbg !3396
  %4 = load ptr, ptr %fwnode, align 8, !dbg !3396
  store ptr %4, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !3396
  %5 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !3396
  %call1 = call zeroext i1 @is_acpi_device_node(ptr noundef %5) #11, !dbg !3396
  br i1 %call1, label %cond.true, label %cond.false, !dbg !3396

cond.true:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !3397
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3382, metadata !DIExpression()), !dbg !3397
  %6 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !3397
  store ptr %6, ptr %__mptr, align 8, !dbg !3397
  %7 = load ptr, ptr %__mptr, align 8, !dbg !3397
  %add.ptr = getelementptr i8, ptr %7, i64 -16, !dbg !3397
  store ptr %add.ptr, ptr %tmp2, align 8, !dbg !3397
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !3396
  %8 = load ptr, ptr %tmp2, align 8, !dbg !3397
  br label %cond.end, !dbg !3396

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !3396

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %8, %cond.true ], [ null, %cond.false ], !dbg !3396
  store ptr %cond, ptr %tmp, align 8, !dbg !3396
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #10, !dbg !3398
  %9 = load ptr, ptr %tmp, align 8, !dbg !3396
  %call3 = call i32 @acpi_device_update_power(ptr noundef %9, ptr noundef null) #11, !dbg !3399
  store i32 %call3, ptr %result, align 4, !dbg !3400
  %10 = load i32, ptr %result, align 4, !dbg !3401
  %tobool4 = icmp ne i32 %10, 0, !dbg !3401
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !3403

if.then5:                                         ; preds = %cond.end
  br label %do.body, !dbg !3404

do.body:                                          ; preds = %if.then5
  br label %do.cond, !dbg !3406

do.cond:                                          ; preds = %do.body
  br label %do.end, !dbg !3406

do.end:                                           ; preds = %do.cond
  %11 = load ptr, ptr %dev.addr, align 8, !dbg !3404
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef @.str.22) #12, !dbg !3404
  br label %if.end6, !dbg !3408

if.end6:                                          ; preds = %do.end, %cond.end
  %12 = load i32, ptr %result, align 4, !dbg !3409
  store i32 %12, ptr %retval, align 4, !dbg !3410
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3410

cleanup:                                          ; preds = %if.end6, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fan) #10, !dbg !3411
  call void @llvm.lifetime.end.p0(i64 4, ptr %result) #10, !dbg !3411
  %13 = load i32, ptr %retval, align 4, !dbg !3411
  ret i32 %13, !dbg !3411
}

; Function Attrs: fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong
define internal i32 @acpi_fan_suspend(ptr noundef %dev) #0 align 16 !dbg !3412 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca ptr, align 8
  %fan = alloca ptr, align 8
  %cleanup.dest.slot = alloca i32, align 4
  %__to_acpi_device_node_fwnode = alloca ptr, align 8
  %tmp = alloca ptr, align 8
  %__mptr = alloca ptr, align 8
  %tmp2 = alloca ptr, align 8
  store ptr %dev, ptr %dev.addr, align 8
  call void @llvm.dbg.declare(metadata ptr %dev.addr, metadata !3414, metadata !DIExpression()), !dbg !3420
  call void @llvm.lifetime.start.p0(i64 8, ptr %fan) #10, !dbg !3421
  call void @llvm.dbg.declare(metadata ptr %fan, metadata !3415, metadata !DIExpression()), !dbg !3422
  %0 = load ptr, ptr %dev.addr, align 8, !dbg !3423
  %call = call ptr @dev_get_drvdata(ptr noundef %0) #11, !dbg !3424
  store ptr %call, ptr %fan, align 8, !dbg !3422
  %1 = load ptr, ptr %fan, align 8, !dbg !3425
  %acpi4 = getelementptr inbounds %struct.acpi_fan, ptr %1, i32 0, i32 0, !dbg !3427
  %2 = load i8, ptr %acpi4, align 8, !dbg !3427, !range !2522, !noundef !352
  %tobool = trunc i8 %2 to i1, !dbg !3427
  br i1 %tobool, label %if.then, label %if.end, !dbg !3428

if.then:                                          ; preds = %entry
  store i32 0, ptr %retval, align 4, !dbg !3429
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3429

if.end:                                           ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #10, !dbg !3430
  call void @llvm.dbg.declare(metadata ptr %__to_acpi_device_node_fwnode, metadata !3416, metadata !DIExpression()), !dbg !3430
  %3 = load ptr, ptr %dev.addr, align 8, !dbg !3430
  %fwnode = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 24, !dbg !3430
  %4 = load ptr, ptr %fwnode, align 8, !dbg !3430
  store ptr %4, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !3430
  %5 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !3430
  %call1 = call zeroext i1 @is_acpi_device_node(ptr noundef %5) #11, !dbg !3430
  br i1 %call1, label %cond.true, label %cond.false, !dbg !3430

cond.true:                                        ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 8, ptr %__mptr) #10, !dbg !3431
  call void @llvm.dbg.declare(metadata ptr %__mptr, metadata !3418, metadata !DIExpression()), !dbg !3431
  %6 = load ptr, ptr %__to_acpi_device_node_fwnode, align 8, !dbg !3431
  store ptr %6, ptr %__mptr, align 8, !dbg !3431
  %7 = load ptr, ptr %__mptr, align 8, !dbg !3431
  %add.ptr = getelementptr i8, ptr %7, i64 -16, !dbg !3431
  store ptr %add.ptr, ptr %tmp2, align 8, !dbg !3431
  call void @llvm.lifetime.end.p0(i64 8, ptr %__mptr) #10, !dbg !3430
  %8 = load ptr, ptr %tmp2, align 8, !dbg !3431
  br label %cond.end, !dbg !3430

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !3430

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi ptr [ %8, %cond.true ], [ null, %cond.false ], !dbg !3430
  store ptr %cond, ptr %tmp, align 8, !dbg !3430
  call void @llvm.lifetime.end.p0(i64 8, ptr %__to_acpi_device_node_fwnode) #10, !dbg !3432
  %9 = load ptr, ptr %tmp, align 8, !dbg !3430
  %call3 = call i32 @acpi_device_set_power(ptr noundef %9, i32 noundef 0) #11, !dbg !3433
  store i32 0, ptr %retval, align 4, !dbg !3434
  store i32 1, ptr %cleanup.dest.slot, align 4
  br label %cleanup, !dbg !3434

cleanup:                                          ; preds = %cond.end, %if.then
  call void @llvm.lifetime.end.p0(i64 8, ptr %fan) #10, !dbg !3435
  %10 = load i32, ptr %retval, align 4, !dbg !3435
  ret i32 %10, !dbg !3435
}

attributes #0 = { fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #5 = { cold noredzone null_pointer_is_valid "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #6 = { cold fn_ret_thunk_extern noredzone nounwind null_pointer_is_valid optsize sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #7 = { fn_ret_thunk_extern inlinehint noredzone nounwind null_pointer_is_valid sspstrong "min-legal-vector-width"="0" "no-jump-tables"="true" "no-trapping-math"="true" "patchable-function-entry"="0" "patchable-function-prefix"="16" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #8 = { noredzone null_pointer_is_valid allocsize(1) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+retpoline-external-thunk,+retpoline-indirect-branches,+retpoline-indirect-calls,-3dnow,-3dnowa,-aes,-avx,-avx10.1-256,-avx10.1-512,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512fp16,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-f16c,-fma,-fma4,-gfni,-kl,-mmx,-pclmul,-sha,-sha512,-sm3,-sm4,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-widekl,-x87,-xop" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #10 = { nounwind }
attributes #11 = { noredzone }
attributes #12 = { cold noredzone }
attributes #13 = { noredzone allocsize(1) }

!llvm.dbg.cu = !{!19}
!llvm.module.flags = !{!2181, !2182, !2183, !2184, !2185, !2186, !2187, !2188}
!llvm.ident = !{!2189}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(scope: null, file: !2, line: 54, type: !3, isLocal: true, isDefinition: true)
!2 = !DIFile(filename: "drivers/acpi/fan_core.c", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc071baef8a111765862af69698bf7a1")
!3 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 40, elements: !5)
!4 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_unsigned_char)
!5 = !{!6}
!6 = !DISubrange(count: 5)
!7 = !DIGlobalVariableExpression(var: !8, expr: !DIExpression())
!8 = distinct !DIGlobalVariable(scope: null, file: !2, line: 56, type: !9, isLocal: true, isDefinition: true)
!9 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 176, elements: !10)
!10 = !{!11}
!11 = !DISubrange(count: 22)
!12 = !DIGlobalVariableExpression(var: !13, expr: !DIExpression())
!13 = distinct !DIGlobalVariable(scope: null, file: !2, line: 64, type: !14, isLocal: true, isDefinition: true)
!14 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 152, elements: !15)
!15 = !{!16}
!16 = !DISubrange(count: 19)
!17 = !DIGlobalVariableExpression(var: !18, expr: !DIExpression())
!18 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable___initstub__kmod_fan__229_463_acpi_fan_driver_init6230", scope: !19, file: !2, line: 463, type: !113, isLocal: true, isDefinition: true)
!19 = distinct !DICompileUnit(language: DW_LANG_C11, file: !2, producer: "Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)", isOptimized: true, flags: "/usr/lib/llvm-18/bin/clang -MMD -MF drivers/acpi/.fan_core.o.d -nostdinc -I ./arch/x86/include -I ./arch/x86/include/generated -I ./include -I ./arch/x86/include/uapi -I ./arch/x86/include/generated/uapi -I ./include/uapi -I ./include/generated/uapi -include ./include/linux/compiler-version.h -include ./include/linux/kconfig.h -include ./include/linux/compiler_types.h -D __KERNEL__ --target=x86_64-linux-gnu -fintegrated-as -Werror=unknown-warning-option -Werror=ignored-optimization-argument -Werror=option-ignored -Werror=unused-command-line-argument -fmacro-prefix-map=./= -Werror -std=gnu11 -fshort-wchar -funsigned-char -fno-common -fno-PIE -fno-strict-aliasing -mno-sse -mno-mmx -mno-sse2 -mno-3dnow -mno-avx -fcf-protection=branch -fno-jump-tables -m64 -falign-loops=1 -mno-x87 -mstack-alignment=8 -mtune=generic -mno-red-zone -mcmodel=kernel -Wno-sign-compare -fno-asynchronous-unwind-tables -mretpoline-external-thunk -mindirect-branch-cs-prefix -mfunction-return=thunk-extern -fpatchable-function-entry=16,16 -fno-delete-null-pointer-checks -O1 -fstack-protector-strong -fomit-frame-pointer -fno-stack-clash-protection -fno-lto -flto=thin -fsplit-lto-unit -fvisibility=hidden -falign-functions=16 -fstrict-flex-arrays=3 -fno-strict-overflow -fno-stack-check -Wall -Wundef -Werror=implicit-function-declaration -Werror=implicit-int -Werror=return-type -Werror=strict-prototypes -Wno-format-security -Wno-trigraphs -Wno-frame-address -Wno-address-of-packed-member -Wframe-larger-than=2048 -Wno-gnu -Wno-unused-but-set-variable -Wno-unused-const-variable -Wvla -Wno-pointer-sign -Wcast-function-type -Wimplicit-fallthrough -Werror=date-time -Werror=incompatible-pointer-types -Wenum-conversion -Wno-unused-but-set-variable -Wno-unused-const-variable -Wno-format-overflow -Wno-format-truncation -Wno-pointer-to-enum-cast -Wno-tautological-constant-out-of-range-compare -Wno-unaligned-access -Wno-cast-function-type-strict -Wno-enum-compare-conditional -Wno-missing-field-initializers -Wno-type-limits -Wno-shift-negative-value -Wno-enum-enum-conversion -Wno-initializer-overrides -Wno-sign-compare -D KBUILD_MODFILE=\22drivers/acpi/fan\22 -D KBUILD_BASENAME=\22fan_core\22 -D KBUILD_MODNAME=\22fan\22 -D __KBUILD_MODNAME=kmod_fan -w -g -fno-discard-value-names -mllvm -disable-llvm-optzns -emit-llvm -S -c -o drivers/acpi/fan_core.ll drivers/acpi/fan_core.c", runtimeVersion: 0, emissionKind: FullDebug, enums: !20, retainedTypes: !105, globals: !1991, splitDebugInlining: false, nameTableKind: None)
!20 = !{!21, !28, !35, !41, !48, !53, !61, !69, !78, !83, !88, !94, !100}
!21 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kobj_ns_type", file: !22, line: 26, baseType: !23, size: 32, elements: !24)
!22 = !DIFile(filename: "./include/linux/kobject_ns.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "117a42fea53455e8a509424988d0a1f9")
!23 = !DIBasicType(name: "unsigned int", size: 32, encoding: DW_ATE_unsigned)
!24 = !{!25, !26, !27}
!25 = !DIEnumerator(name: "KOBJ_NS_TYPE_NONE", value: 0)
!26 = !DIEnumerator(name: "KOBJ_NS_TYPE_NET", value: 1)
!27 = !DIEnumerator(name: "KOBJ_NS_TYPES", value: 2)
!28 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "module_state", file: !29, line: 312, baseType: !23, size: 32, elements: !30)
!29 = !DIFile(filename: "./include/linux/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d980446422387666fe3214a067bd4522")
!30 = !{!31, !32, !33, !34}
!31 = !DIEnumerator(name: "MODULE_STATE_LIVE", value: 0)
!32 = !DIEnumerator(name: "MODULE_STATE_COMING", value: 1)
!33 = !DIEnumerator(name: "MODULE_STATE_GOING", value: 2)
!34 = !DIEnumerator(name: "MODULE_STATE_UNFORMED", value: 3)
!35 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !36, line: 45, baseType: !23, size: 32, elements: !37)
!36 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5fb0907849dc05b652370c3b7f1f8d3b")
!37 = !{!38, !39, !40}
!38 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0)
!39 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1)
!40 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2)
!41 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !42, line: 487, baseType: !23, size: 32, elements: !43)
!42 = !DIFile(filename: "./include/linux/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92f1f1734325d4f27435bb910582b8a2")
!43 = !{!44, !45, !46, !47}
!44 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0)
!45 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1)
!46 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2)
!47 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3)
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "hrtimer_restart", file: !49, line: 65, baseType: !23, size: 32, elements: !50)
!49 = !DIFile(filename: "./include/linux/hrtimer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "27e3673b190a857e440d42c463962eb1")
!50 = !{!51, !52}
!51 = !DIEnumerator(name: "HRTIMER_NORESTART", value: 0)
!52 = !DIEnumerator(name: "HRTIMER_RESTART", value: 1)
!53 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !54, line: 620, baseType: !23, size: 32, elements: !55)
!54 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "11556529967b0e2e0db33c07f179645e")
!55 = !{!56, !57, !58, !59, !60}
!56 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0)
!57 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1)
!58 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2)
!59 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3)
!60 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4)
!61 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !54, line: 597, baseType: !62, size: 32, elements: !63)
!62 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!63 = !{!64, !65, !66, !67, !68}
!64 = !DIEnumerator(name: "RPM_INVALID", value: -1)
!65 = !DIEnumerator(name: "RPM_ACTIVE", value: 0)
!66 = !DIEnumerator(name: "RPM_RESUMING", value: 1)
!67 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2)
!68 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_panel", file: !42, line: 547, baseType: !23, size: 32, elements: !70)
!70 = !{!71, !72, !73, !74, !75, !76, !77}
!71 = !DIEnumerator(name: "DEVICE_PANEL_TOP", value: 0)
!72 = !DIEnumerator(name: "DEVICE_PANEL_BOTTOM", value: 1)
!73 = !DIEnumerator(name: "DEVICE_PANEL_LEFT", value: 2)
!74 = !DIEnumerator(name: "DEVICE_PANEL_RIGHT", value: 3)
!75 = !DIEnumerator(name: "DEVICE_PANEL_FRONT", value: 4)
!76 = !DIEnumerator(name: "DEVICE_PANEL_BACK", value: 5)
!77 = !DIEnumerator(name: "DEVICE_PANEL_UNKNOWN", value: 6)
!78 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_vertical_position", file: !42, line: 564, baseType: !23, size: 32, elements: !79)
!79 = !{!80, !81, !82}
!80 = !DIEnumerator(name: "DEVICE_VERT_POS_UPPER", value: 0)
!81 = !DIEnumerator(name: "DEVICE_VERT_POS_CENTER", value: 1)
!82 = !DIEnumerator(name: "DEVICE_VERT_POS_LOWER", value: 2)
!83 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_physical_location_horizontal_position", file: !42, line: 577, baseType: !23, size: 32, elements: !84)
!84 = !{!85, !86, !87}
!85 = !DIEnumerator(name: "DEVICE_HORI_POS_LEFT", value: 0)
!86 = !DIEnumerator(name: "DEVICE_HORI_POS_CENTER", value: 1)
!87 = !DIEnumerator(name: "DEVICE_HORI_POS_RIGHT", value: 2)
!88 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "device_removable", file: !42, line: 503, baseType: !23, size: 32, elements: !89)
!89 = !{!90, !91, !92, !93}
!90 = !DIEnumerator(name: "DEVICE_REMOVABLE_NOT_SUPPORTED", value: 0)
!91 = !DIEnumerator(name: "DEVICE_REMOVABLE_UNKNOWN", value: 1)
!92 = !DIEnumerator(name: "DEVICE_FIXED", value: 2)
!93 = !DIEnumerator(name: "DEVICE_REMOVABLE", value: 3)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_dma_attr", file: !95, line: 30, baseType: !23, size: 32, elements: !96)
!95 = !DIFile(filename: "./include/linux/property.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "85a89304e5df2bfbc96f62df052f0ca9")
!96 = !{!97, !98, !99}
!97 = !DIEnumerator(name: "DEV_DMA_NOT_SUPPORTED", value: 0)
!98 = !DIEnumerator(name: "DEV_DMA_NON_COHERENT", value: 1)
!99 = !DIEnumerator(name: "DEV_DMA_COHERENT", value: 2)
!100 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !101, line: 10, baseType: !23, size: 32, elements: !102)
!101 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f808bea20fbf9b23fd364e1890694b49")
!102 = !{!103, !104}
!103 = !DIEnumerator(name: "false", value: 0)
!104 = !DIEnumerator(name: "true", value: 1)
!105 = !{!106, !113, !114, !1157, !1989, !62, !176, !266, !252, !1990}
!106 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_size", file: !107, line: 127, baseType: !108)
!107 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "18e0c90b25581a70a69ee26fd06baa5d")
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !109, line: 23, baseType: !110)
!109 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "12ca7bdb629352cc4c9a492f86b435a7")
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !111, line: 31, baseType: !112)
!111 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f4d0ec5bcdd84e825a78a7add39d54dd")
!112 = !DIBasicType(name: "unsigned long long", size: 64, encoding: DW_ATE_unsigned)
!113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !29, line: 402, size: 9216, align: 512, elements: !116)
!116 = !{!117, !118, !125, !129, !805, !831, !832, !833, !834, !838, !841, !842, !843, !896, !897, !898, !899, !900, !901, !902, !903, !911, !915, !935, !953, !954, !955, !956, !965, !989, !990, !993, !996, !997, !998, !999, !1000, !1001, !1002, !1007, !1008, !1115, !1123, !1124, !1125, !1127, !1131, !1132, !1136, !1137, !1138, !1139, !1141, !1142, !1143, !1150, !1151, !1152, !1156}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !115, file: !29, line: 403, baseType: !28, size: 32)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !115, file: !29, line: 406, baseType: !119, size: 128, offset: 64)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !120, line: 190, size: 128, elements: !121)
!120 = !DIFile(filename: "./include/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bdd1b24ee6585d3549e0b4a1be717a98")
!121 = !{!122, !124}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !119, file: !120, line: 191, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !119, file: !120, line: 191, baseType: !123, size: 64, offset: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !115, file: !29, line: 409, baseType: !126, size: 448, offset: 192)
!126 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 448, elements: !127)
!127 = !{!128}
!128 = !DISubrange(count: 56)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "mkobj", scope: !115, file: !29, line: 417, baseType: !130, size: 768, offset: 640)
!130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_kobject", file: !29, line: 45, size: 768, elements: !131)
!131 = !{!132, !788, !789, !790, !793}
!132 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !130, file: !29, line: 46, baseType: !133, size: 512)
!133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !134, line: 64, size: 512, elements: !135)
!134 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5978f53a25967220c31693949e9102aa")
!135 = !{!136, !139, !140, !142, !229, !658, !773, !783, !784, !785, !786, !787}
!136 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !133, file: !134, line: 65, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !4)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !133, file: !134, line: 66, baseType: !119, size: 128, offset: 64)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !133, file: !134, line: 67, baseType: !141, size: 64, offset: 192)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !133, file: !134, line: 68, baseType: !143, size: 64, offset: 256)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !134, line: 168, size: 768, elements: !145)
!145 = !{!146, !147, !188, !189}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !144, file: !134, line: 169, baseType: !119, size: 128)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !144, file: !134, line: 170, baseType: !148, size: 32, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !149, line: 29, baseType: !150)
!149 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fc7950471ffdc176b6c133b1f7370f88")
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !149, line: 17, size: 32, elements: !151)
!151 = !{!152}
!152 = !DIDerivedType(tag: DW_TAG_member, scope: !150, file: !149, line: 18, baseType: !153, size: 32)
!153 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !150, file: !149, line: 18, size: 32, elements: !154)
!154 = !{!155}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !153, file: !149, line: 19, baseType: !156, size: 32)
!156 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !157, line: 14, size: 32, elements: !158)
!157 = !DIFile(filename: "./include/linux/spinlock_types_raw.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9bbdf30cd339c0a21e6a004bafba78e0")
!158 = !{!159}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !156, file: !157, line: 15, baseType: !160, size: 32)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !161, line: 44, baseType: !162)
!161 = !DIFile(filename: "./include/asm-generic/qspinlock_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a1236eda9a125c2ce03b9a345491b46")
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "qspinlock", file: !161, line: 14, size: 32, elements: !163)
!163 = !{!164}
!164 = !DIDerivedType(tag: DW_TAG_member, scope: !162, file: !161, line: 15, baseType: !165, size: 32)
!165 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !162, file: !161, line: 15, size: 32, elements: !166)
!166 = !{!167, !172, !180}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !165, file: !161, line: 16, baseType: !168, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !120, line: 174, baseType: !169)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !120, line: 172, size: 32, elements: !170)
!170 = !{!171}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !169, file: !120, line: 173, baseType: !62, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, scope: !165, file: !161, line: 24, baseType: !173, size: 16)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !165, file: !161, line: 24, size: 16, elements: !174)
!174 = !{!175, !179}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !173, file: !161, line: 25, baseType: !176, size: 8)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !109, line: 17, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !111, line: 21, baseType: !178)
!178 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !173, file: !161, line: 26, baseType: !176, size: 8, offset: 8)
!180 = !DIDerivedType(tag: DW_TAG_member, scope: !165, file: !161, line: 28, baseType: !181, size: 32)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !165, file: !161, line: 28, size: 32, elements: !182)
!182 = !{!183, !187}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "locked_pending", scope: !181, file: !161, line: 29, baseType: !184, size: 16)
!184 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !109, line: 19, baseType: !185)
!185 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !111, line: 24, baseType: !186)
!186 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !181, file: !161, line: 30, baseType: !184, size: 16, offset: 16)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !144, file: !134, line: 171, baseType: !133, size: 512, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !144, file: !134, line: 172, baseType: !190, size: 64, offset: 704)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !192)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !134, line: 133, size: 192, elements: !193)
!193 = !{!194, !201, !206}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !192, file: !134, line: 134, baseType: !195, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !196)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DISubroutineType(types: !198)
!198 = !{!62, !199}
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !133)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !192, file: !134, line: 135, baseType: !202, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!137, !199}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !192, file: !134, line: 136, baseType: !207, size: 64, offset: 128)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DISubroutineType(types: !210)
!210 = !{!62, !199, !211}
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !134, line: 125, size: 20736, elements: !213)
!213 = !{!214, !219, !223, !224, !228}
!214 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !212, file: !134, line: 126, baseType: !215, size: 192)
!215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 192, elements: !217)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4, size: 64)
!217 = !{!218}
!218 = !DISubrange(count: 3)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !212, file: !134, line: 127, baseType: !220, size: 4096, offset: 192)
!220 = !DICompositeType(tag: DW_TAG_array_type, baseType: !216, size: 4096, elements: !221)
!221 = !{!222}
!222 = !DISubrange(count: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !212, file: !134, line: 128, baseType: !62, size: 32, offset: 4288)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !212, file: !134, line: 129, baseType: !225, size: 16384, offset: 4320)
!225 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 16384, elements: !226)
!226 = !{!227}
!227 = !DISubrange(count: 2048)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !212, file: !134, line: 130, baseType: !62, size: 32, offset: 20704)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !133, file: !134, line: 69, baseType: !230, size: 64, offset: 320)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !232)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !134, line: 116, size: 384, elements: !233)
!233 = !{!234, !238, !267, !605, !636, !640}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !232, file: !134, line: 117, baseType: !235, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{null, !141}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !232, file: !134, line: 118, baseType: !239, size: 64, offset: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !241)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !242, line: 254, size: 128, elements: !243)
!242 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "705d5b21588e6969e518d9149937698b")
!243 = !{!244, !259}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !241, file: !242, line: 255, baseType: !245, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!248, !141, !253, !216}
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !120, line: 66, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !250, line: 73, baseType: !251)
!250 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "02144a993b28778c1e6c05bf0b9f51db")
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !250, line: 15, baseType: !252)
!252 = !DIBasicType(name: "long", size: 64, encoding: DW_ATE_signed)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !242, line: 30, size: 128, elements: !255)
!255 = !{!256, !257}
!256 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !254, file: !242, line: 31, baseType: !137, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !254, file: !242, line: 32, baseType: !258, size: 16, offset: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !120, line: 24, baseType: !186)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !241, file: !242, line: 256, baseType: !260, size: 64, offset: 64)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!248, !141, !253, !137, !263}
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !120, line: 61, baseType: !264)
!264 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !250, line: 72, baseType: !265)
!265 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !250, line: 16, baseType: !266)
!266 = !DIBasicType(name: "unsigned long", size: 64, encoding: DW_ATE_unsigned)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !232, file: !134, line: 119, baseType: !268, size: 64, offset: 128)
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !271)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !242, line: 84, size: 320, elements: !272)
!272 = !{!273, !274, !278, !601, !603}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !271, file: !242, line: 85, baseType: !137, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !271, file: !242, line: 86, baseType: !275, size: 64, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{!258, !141, !253, !62}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !271, file: !242, line: 88, baseType: !279, size: 64, offset: 128)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!258, !141, !282, !62}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !242, line: 175, size: 512, elements: !284)
!284 = !{!285, !286, !287, !288, !295, !305, !306}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !283, file: !242, line: 176, baseType: !254, size: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !283, file: !242, line: 177, baseType: !263, size: 64, offset: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !283, file: !242, line: 178, baseType: !113, size: 64, offset: 192)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "f_mapping", scope: !283, file: !242, line: 179, baseType: !289, size: 64, offset: 256)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!292}
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !294, line: 32, flags: DIFlagFwdDecl)
!294 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e63959eb8f4b103767e338940522089c")
!295 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !283, file: !242, line: 180, baseType: !296, size: 64, offset: 320)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!248, !299, !141, !282, !216, !302, !263}
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !301, line: 537, flags: DIFlagFwdDecl)
!301 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3dcfb4de77a6ea02e99f2925f19d1a89")
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !120, line: 52, baseType: !303)
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !250, line: 88, baseType: !304)
!304 = !DIBasicType(name: "long long", size: 64, encoding: DW_ATE_signed)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !283, file: !242, line: 182, baseType: !296, size: 64, offset: 384)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !283, file: !242, line: 184, baseType: !307, size: 64, offset: 448)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!62, !299, !141, !282, !310}
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !294, line: 625, size: 1344, elements: !312)
!312 = !{!313, !330, !550, !556, !563, !564, !569, !572, !584, !585, !588, !592, !593, !594, !595, !596, !599}
!313 = !DIDerivedType(tag: DW_TAG_member, scope: !311, file: !294, line: 628, baseType: !314, size: 128)
!314 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !311, file: !294, line: 628, size: 128, elements: !315)
!315 = !{!316, !321}
!316 = !DIDerivedType(tag: DW_TAG_member, scope: !314, file: !294, line: 629, baseType: !317, size: 128)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !314, file: !294, line: 629, size: 128, elements: !318)
!318 = !{!319, !320}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !317, file: !294, line: 631, baseType: !266, size: 64)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !317, file: !294, line: 632, baseType: !266, size: 64, offset: 64)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rcu", scope: !314, file: !294, line: 635, baseType: !322, size: 128, align: 64)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !120, line: 232, size: 128, align: 64, elements: !323)
!323 = !{!324, !326}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !322, file: !120, line: 233, baseType: !325, size: 64)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !322, size: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !322, file: !120, line: 234, baseType: !327, size: 64, offset: 64)
!327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !328, size: 64)
!328 = !DISubroutineType(types: !329)
!329 = !{null, !325}
!330 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !311, file: !294, line: 639, baseType: !331, size: 64, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !294, line: 733, size: 10240, elements: !333)
!333 = !{!334, !546}
!334 = !DIDerivedType(tag: DW_TAG_member, scope: !332, file: !294, line: 734, baseType: !335, size: 10240)
!335 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !332, file: !294, line: 734, size: 10240, elements: !336)
!336 = !{!337, !341, !355, !359, !360, !361, !362, !363, !364, !372, !373, !374, !380, !381, !390, !391, !392, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !439, !453, !456, !511, !512, !513, !516, !520, !521, !524, !525, !526, !533, !534}
!337 = !DIDerivedType(tag: DW_TAG_member, scope: !335, file: !294, line: 739, baseType: !338, size: 512, align: 512)
!338 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !335, file: !294, line: 739, size: 512, align: 512, elements: !339)
!339 = !{!340}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !338, file: !294, line: 747, baseType: !168, size: 32)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "mm_mt", scope: !335, file: !294, line: 750, baseType: !342, size: 128, offset: 512)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "maple_tree", file: !343, line: 218, size: 128, elements: !344)
!343 = !DIFile(filename: "./include/linux/maple_tree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8ff5e70fb09215199cab85d088a0b87f")
!344 = !{!345, !353, !354}
!345 = !DIDerivedType(tag: DW_TAG_member, scope: !342, file: !343, line: 219, baseType: !346, size: 32)
!346 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !342, file: !343, line: 219, size: 32, elements: !347)
!347 = !{!348, !349}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "ma_lock", scope: !346, file: !343, line: 220, baseType: !148, size: 32)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "ma_external_lock", scope: !346, file: !343, line: 221, baseType: !350)
!350 = !DIDerivedType(tag: DW_TAG_typedef, name: "lockdep_map_p", file: !343, line: 197, baseType: !351)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !343, line: 197, elements: !352)
!352 = !{}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "ma_flags", scope: !342, file: !343, line: 223, baseType: !23, size: 32, offset: 32)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "ma_root", scope: !342, file: !343, line: 224, baseType: !113, size: 64, offset: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !335, file: !294, line: 752, baseType: !356, size: 64, offset: 640)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{!266, !299, !266, !266, !266, !266}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !335, file: !294, line: 756, baseType: !266, size: 64, offset: 704)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !335, file: !294, line: 757, baseType: !266, size: 64, offset: 768)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_base", scope: !335, file: !294, line: 760, baseType: !266, size: 64, offset: 832)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_compat_legacy_base", scope: !335, file: !294, line: 761, baseType: !266, size: 64, offset: 896)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !335, file: !294, line: 763, baseType: !266, size: 64, offset: 960)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !335, file: !294, line: 764, baseType: !365, size: 64, offset: 1024)
!365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !301, line: 299, baseType: !367)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !301, line: 299, size: 64, elements: !368)
!368 = !{!369}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !367, file: !301, line: 299, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !371, line: 18, baseType: !266)
!371 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1d84621fd6d0cf7e119d85f7de70ca7d")
!372 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !335, file: !294, line: 773, baseType: !168, size: 32, offset: 1088)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !335, file: !294, line: 785, baseType: !168, size: 32, offset: 1120)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "pcpu_cid", scope: !335, file: !294, line: 795, baseType: !375, size: 64, offset: 1152)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_cid", file: !294, line: 726, size: 128, elements: !377)
!377 = !{!378, !379}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !376, file: !294, line: 727, baseType: !108, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "cid", scope: !376, file: !294, line: 728, baseType: !62, size: 32, offset: 64)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "mm_cid_next_scan", scope: !335, file: !294, line: 801, baseType: !266, size: 64, offset: 1216)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !335, file: !294, line: 804, baseType: !382, size: 64, offset: 1280)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !383, line: 13, baseType: !384)
!383 = !DIFile(filename: "./include/linux/atomic/atomic-long.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d0bdf01c8156fd7209f37c084e20c1b0")
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !120, line: 181, baseType: !385)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !120, line: 179, size: 64, elements: !386)
!386 = !{!387}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !385, file: !120, line: 180, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !109, line: 22, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !111, line: 30, baseType: !304)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !335, file: !294, line: 806, baseType: !62, size: 32, offset: 1344)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !335, file: !294, line: 808, baseType: !148, size: 32, offset: 1376)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !335, file: !294, line: 823, baseType: !393, size: 320, offset: 1408)
!393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !394, line: 48, size: 320, elements: !395)
!394 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "fb7b4d66e583b4d6c90fdd515297baa5")
!395 = !{!396, !397, !398, !403, !405}
!396 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !393, file: !394, line: 49, baseType: !382, size: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !393, file: !394, line: 55, baseType: !382, size: 64, offset: 64)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !393, file: !394, line: 57, baseType: !399, size: 32, offset: 128)
!399 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "optimistic_spin_queue", file: !400, line: 15, size: 32, elements: !401)
!400 = !DIFile(filename: "./include/linux/osq_lock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "96068aa09fa474bd706a2c16987ff9d4")
!401 = !{!402}
!402 = !DIDerivedType(tag: DW_TAG_member, name: "tail", scope: !399, file: !400, line: 20, baseType: !168, size: 32)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !393, file: !394, line: 59, baseType: !404, size: 32, offset: 160)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !157, line: 23, baseType: !156)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !393, file: !394, line: 60, baseType: !119, size: 128, offset: 192)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !335, file: !294, line: 825, baseType: !119, size: 128, offset: 1728)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "mm_lock_seq", scope: !335, file: !294, line: 845, baseType: !62, size: 32, offset: 1856)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !335, file: !294, line: 849, baseType: !266, size: 64, offset: 1920)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !335, file: !294, line: 850, baseType: !266, size: 64, offset: 1984)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !335, file: !294, line: 852, baseType: !266, size: 64, offset: 2048)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !335, file: !294, line: 853, baseType: !266, size: 64, offset: 2112)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !335, file: !294, line: 854, baseType: !384, size: 64, offset: 2176)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !335, file: !294, line: 855, baseType: !266, size: 64, offset: 2240)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !335, file: !294, line: 856, baseType: !266, size: 64, offset: 2304)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !335, file: !294, line: 857, baseType: !266, size: 64, offset: 2368)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !335, file: !294, line: 858, baseType: !266, size: 64, offset: 2432)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "write_protect_seq", scope: !335, file: !294, line: 865, baseType: !418, size: 32, offset: 2496)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !419, line: 69, baseType: !420)
!419 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dc7caa3fdfbaa4ebe039288746e0107b")
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !419, line: 64, size: 32, elements: !421)
!421 = !{!422}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !420, file: !419, line: 65, baseType: !23, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !335, file: !294, line: 867, baseType: !148, size: 32, offset: 2528)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !335, file: !294, line: 869, baseType: !266, size: 64, offset: 2560)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !335, file: !294, line: 869, baseType: !266, size: 64, offset: 2624)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !335, file: !294, line: 869, baseType: !266, size: 64, offset: 2688)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !335, file: !294, line: 869, baseType: !266, size: 64, offset: 2752)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !335, file: !294, line: 870, baseType: !266, size: 64, offset: 2816)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !335, file: !294, line: 870, baseType: !266, size: 64, offset: 2880)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !335, file: !294, line: 870, baseType: !266, size: 64, offset: 2944)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !335, file: !294, line: 871, baseType: !266, size: 64, offset: 3008)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !335, file: !294, line: 871, baseType: !266, size: 64, offset: 3072)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !335, file: !294, line: 871, baseType: !266, size: 64, offset: 3136)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !335, file: !294, line: 871, baseType: !266, size: 64, offset: 3200)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !335, file: !294, line: 873, baseType: !436, size: 3328, offset: 3264)
!436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 3328, elements: !437)
!437 = !{!438}
!438 = !DISubrange(count: 52)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !335, file: !294, line: 875, baseType: !440, size: 1280, offset: 6592)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !441, size: 1280, elements: !451)
!441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "percpu_counter", file: !442, line: 22, size: 320, elements: !443)
!442 = !DIFile(filename: "./include/linux/percpu_counter.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f730fd279b8088eebdac3349a997a21")
!443 = !{!444, !445, !446, !447}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !441, file: !442, line: 23, baseType: !404, size: 32)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !441, file: !442, line: 24, baseType: !388, size: 64, offset: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !441, file: !442, line: 26, baseType: !119, size: 128, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !441, file: !442, line: 28, baseType: !448, size: 64, offset: 256)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !109, line: 20, baseType: !450)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !111, line: 26, baseType: !62)
!451 = !{!452}
!452 = !DISubrange(count: 4)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !335, file: !294, line: 877, baseType: !454, size: 64, offset: 7872)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !294, line: 877, flags: DIFlagFwdDecl)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !335, file: !294, line: 880, baseType: !457, size: 1088, offset: 7936)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !458, line: 72, baseType: !459)
!458 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3aa7f7ba85e1cae5e9ac9a2a2f1deda1")
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !458, line: 23, size: 1088, elements: !460)
!460 = !{!461, !462, !463, !464, !465, !468, !469, !477, !478, !505, !506, !507}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !459, file: !458, line: 28, baseType: !108, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !459, file: !458, line: 38, baseType: !384, size: 64, offset: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "next_trim_cpumask", scope: !459, file: !458, line: 40, baseType: !266, size: 64, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !459, file: !458, line: 43, baseType: !393, size: 320, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !459, file: !458, line: 44, baseType: !466, size: 64, offset: 512)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !458, line: 44, flags: DIFlagFwdDecl)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !459, file: !458, line: 48, baseType: !266, size: 64, offset: 576)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !459, file: !458, line: 59, baseType: !470, size: 256, offset: 640)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !471, line: 66, size: 256, elements: !472)
!471 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "760cdfc469a85f20c176d16ca89349ec")
!472 = !{!473, !474, !475, !476}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !470, file: !471, line: 67, baseType: !382, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !470, file: !471, line: 68, baseType: !404, size: 32, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "osq", scope: !470, file: !471, line: 70, baseType: !399, size: 32, offset: 96)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !470, file: !471, line: 72, baseType: !119, size: 128, offset: 128)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !459, file: !458, line: 60, baseType: !113, size: 64, offset: 896)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !459, file: !458, line: 61, baseType: !479, size: 64, offset: 960)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !481)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !482, line: 13, size: 1216, elements: !483)
!482 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "60d57dd5659a9806794848b1eaed4bc5")
!483 = !{!484, !485, !486, !487, !488, !489, !490, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !481, file: !482, line: 14, baseType: !113, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !481, file: !482, line: 15, baseType: !266, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !481, file: !482, line: 17, baseType: !266, size: 64, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !481, file: !482, line: 17, baseType: !266, size: 64, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "extable_base", scope: !481, file: !482, line: 18, baseType: !266, size: 64, offset: 256)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "extable_len", scope: !481, file: !482, line: 18, baseType: !266, size: 64, offset: 320)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !481, file: !482, line: 19, baseType: !491, size: 64, offset: 384)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !481, file: !482, line: 21, baseType: !252, size: 64, offset: 448)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !481, file: !482, line: 23, baseType: !252, size: 64, offset: 512)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !481, file: !482, line: 24, baseType: !252, size: 64, offset: 576)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !481, file: !482, line: 25, baseType: !252, size: 64, offset: 640)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !481, file: !482, line: 26, baseType: !252, size: 64, offset: 704)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !481, file: !482, line: 27, baseType: !252, size: 64, offset: 768)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !481, file: !482, line: 28, baseType: !252, size: 64, offset: 832)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !481, file: !482, line: 29, baseType: !252, size: 64, offset: 896)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !481, file: !482, line: 30, baseType: !252, size: 64, offset: 960)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !481, file: !482, line: 31, baseType: !252, size: 64, offset: 1024)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_sigreturn_landing_pad", scope: !481, file: !482, line: 32, baseType: !252, size: 64, offset: 1088)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vdso32_rt_sigreturn_landing_pad", scope: !481, file: !482, line: 33, baseType: !252, size: 64, offset: 1152)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !459, file: !458, line: 63, baseType: !168, size: 32, offset: 1024)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !459, file: !458, line: 69, baseType: !184, size: 16, offset: 1056)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !459, file: !458, line: 70, baseType: !508, size: 16, offset: 1072)
!508 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !109, line: 18, baseType: !509)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !111, line: 23, baseType: !510)
!510 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !335, file: !294, line: 882, baseType: !266, size: 64, offset: 9024)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !335, file: !294, line: 885, baseType: !148, size: 32, offset: 9088)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !335, file: !294, line: 886, baseType: !514, size: 64, offset: 9152)
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !294, line: 732, flags: DIFlagFwdDecl)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !335, file: !294, line: 901, baseType: !517, size: 64, offset: 9216)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !519, line: 18, flags: DIFlagFwdDecl)
!519 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a58253b1216c6e90ad8db58db462410d")
!520 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !335, file: !294, line: 904, baseType: !299, size: 64, offset: 9280)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !335, file: !294, line: 906, baseType: !522, size: 64, offset: 9344)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !294, line: 906, flags: DIFlagFwdDecl)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !335, file: !294, line: 930, baseType: !168, size: 32, offset: 9408)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !335, file: !294, line: 933, baseType: !168, size: 32, offset: 9440)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !335, file: !294, line: 935, baseType: !527, size: 64, offset: 9472)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !528, line: 103, size: 64, elements: !529)
!528 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "dabc59c912015c7e7e4e658b47a58946")
!529 = !{!530}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "xol_area", scope: !527, file: !528, line: 104, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !532, size: 64)
!532 = !DICompositeType(tag: DW_TAG_structure_type, name: "xol_area", file: !528, line: 101, flags: DIFlagFwdDecl)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "hugetlb_usage", scope: !335, file: !294, line: 940, baseType: !382, size: 64, offset: 9536)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !335, file: !294, line: 942, baseType: !535, size: 256, offset: 9600)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !536, line: 98, size: 256, elements: !537)
!536 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c9d17d07f2fbf7ebeb3675b61a38777e")
!537 = !{!538, !539, !540}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !535, file: !536, line: 99, baseType: !382, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !535, file: !536, line: 100, baseType: !119, size: 128, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !535, file: !536, line: 101, baseType: !541, size: 64, offset: 192)
!541 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !536, line: 21, baseType: !542)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DISubroutineType(types: !544)
!544 = !{null, !545}
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !535, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !332, file: !294, line: 986, baseType: !547, offset: 10240)
!547 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, elements: !548)
!548 = !{!549}
!549 = !DISubrange(count: -1)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !311, file: !294, line: 640, baseType: !551, size: 64, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !301, line: 297, baseType: !552)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !301, line: 297, size: 64, elements: !553)
!553 = !{!554}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !552, file: !301, line: 297, baseType: !555, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !371, line: 19, baseType: !266)
!556 = !DIDerivedType(tag: DW_TAG_member, scope: !311, file: !294, line: 646, baseType: !557, size: 64, offset: 256)
!557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !311, file: !294, line: 646, size: 64, elements: !558)
!558 = !{!559, !562}
!559 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !557, file: !294, line: 647, baseType: !560, size: 64)
!560 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !561)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "vm_flags_t", file: !294, line: 542, baseType: !266)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "__vm_flags", scope: !557, file: !294, line: 648, baseType: !561, size: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock_seq", scope: !311, file: !294, line: 666, baseType: !62, size: 32, offset: 320)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "vm_lock", scope: !311, file: !294, line: 667, baseType: !565, size: 64, offset: 384)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vma_lock", file: !294, line: 579, size: 320, elements: !567)
!567 = !{!568}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !566, file: !294, line: 580, baseType: !393, size: 320)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "detached", scope: !311, file: !294, line: 670, baseType: !570, size: 8, offset: 448)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !120, line: 35, baseType: !571)
!571 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !311, file: !294, line: 681, baseType: !573, size: 256, offset: 512)
!573 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !311, file: !294, line: 678, size: 256, elements: !574)
!574 = !{!575, !583}
!575 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !573, file: !294, line: 679, baseType: !576, size: 192, align: 64)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !577, line: 5, size: 192, align: 64, elements: !578)
!577 = !DIFile(filename: "./include/linux/rbtree_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8417af8a8bff2c6b1a545902a3b285de")
!578 = !{!579, !580, !582}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !576, file: !577, line: 6, baseType: !266, size: 64)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !576, file: !577, line: 7, baseType: !581, size: 64, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !576, file: !577, line: 8, baseType: !581, size: 64, offset: 128)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !573, file: !294, line: 680, baseType: !266, size: 64, offset: 192)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !311, file: !294, line: 689, baseType: !119, size: 128, offset: 768)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !311, file: !294, line: 691, baseType: !586, size: 64, offset: 896)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !294, line: 691, flags: DIFlagFwdDecl)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !311, file: !294, line: 694, baseType: !589, size: 64, offset: 960)
!589 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !590, size: 64)
!590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !591)
!591 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !294, line: 694, flags: DIFlagFwdDecl)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !311, file: !294, line: 697, baseType: !266, size: 64, offset: 1024)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !311, file: !294, line: 699, baseType: !299, size: 64, offset: 1088)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !311, file: !294, line: 700, baseType: !113, size: 64, offset: 1152)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !311, file: !294, line: 711, baseType: !382, size: 64, offset: 1216)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "vm_policy", scope: !311, file: !294, line: 717, baseType: !597, size: 64, offset: 1280)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DICompositeType(tag: DW_TAG_structure_type, name: "mempolicy", file: !294, line: 717, flags: DIFlagFwdDecl)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !311, file: !294, line: 722, baseType: !600, offset: 1344)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !294, line: 570, elements: !352)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !271, file: !242, line: 90, baseType: !602, size: 64, offset: 192)
!602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !271, file: !242, line: 91, baseType: !604, size: 64, offset: 256)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !232, file: !134, line: 120, baseType: !606, size: 64, offset: 192)
!606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !607, size: 64)
!607 = !DISubroutineType(types: !608)
!608 = !{!609, !199}
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !611)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !22, line: 39, size: 384, elements: !612)
!612 = !{!613, !614, !618, !622, !628, !632}
!613 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !611, file: !22, line: 40, baseType: !21, size: 32)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !611, file: !22, line: 41, baseType: !615, size: 64, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !616, size: 64)
!616 = !DISubroutineType(types: !617)
!617 = !{!570}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !611, file: !22, line: 42, baseType: !619, size: 64, offset: 128)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DISubroutineType(types: !621)
!621 = !{!113}
!622 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !611, file: !22, line: 43, baseType: !623, size: 64, offset: 192)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DISubroutineType(types: !625)
!625 = !{!491, !626}
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !22, line: 19, flags: DIFlagFwdDecl)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !611, file: !22, line: 44, baseType: !629, size: 64, offset: 256)
!629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !630, size: 64)
!630 = !DISubroutineType(types: !631)
!631 = !{!491}
!632 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !611, file: !22, line: 45, baseType: !633, size: 64, offset: 320)
!633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!634 = !DISubroutineType(types: !635)
!635 = !{null, !113}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !232, file: !134, line: 121, baseType: !637, size: 64, offset: 256)
!637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!638 = !DISubroutineType(types: !639)
!639 = !{!491, !199}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !232, file: !134, line: 122, baseType: !641, size: 64, offset: 320)
!641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !642, size: 64)
!642 = !DISubroutineType(types: !643)
!643 = !{null, !199, !644, !651}
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !519, line: 23, baseType: !646)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !519, line: 21, size: 32, elements: !647)
!647 = !{!648}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !646, file: !519, line: 22, baseType: !649, size: 32)
!649 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !120, line: 37, baseType: !650)
!650 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !250, line: 49, baseType: !23)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !519, line: 28, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !519, line: 26, size: 32, elements: !654)
!654 = !{!655}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !653, file: !519, line: 27, baseType: !656, size: 32)
!656 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !120, line: 38, baseType: !657)
!657 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !250, line: 50, baseType: !23)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !133, file: !134, line: 70, baseType: !659, size: 64, offset: 384)
!659 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !660, size: 64)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !661, line: 190, size: 1152, elements: !662)
!661 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "29e695ff9b7fa51b5d7efcfb734713e5")
!662 = !{!663, !664, !665, !666, !667, !668, !669, !670, !765, !766, !767, !768, !769, !772}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !660, file: !661, line: 191, baseType: !168, size: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !660, file: !661, line: 192, baseType: !168, size: 32, offset: 32)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !660, file: !661, line: 202, baseType: !659, size: 64, offset: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !660, file: !661, line: 203, baseType: !137, size: 64, offset: 128)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !660, file: !661, line: 205, baseType: !576, size: 192, align: 64, offset: 192)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !660, file: !661, line: 207, baseType: !491, size: 64, offset: 384)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !660, file: !661, line: 208, baseType: !23, size: 32, offset: 448)
!670 = !DIDerivedType(tag: DW_TAG_member, scope: !660, file: !661, line: 209, baseType: !671, size: 256, offset: 512)
!671 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !660, file: !661, line: 209, size: 256, elements: !672)
!672 = !{!673, !685, !689}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !671, file: !661, line: 210, baseType: !674, size: 256)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !661, line: 153, size: 256, elements: !675)
!675 = !{!676, !677, !681, !684}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !674, file: !661, line: 154, baseType: !266, size: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !674, file: !661, line: 156, baseType: !678, size: 64, offset: 64)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !577, line: 12, size: 64, elements: !679)
!679 = !{!680}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !678, file: !577, line: 13, baseType: !581, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !674, file: !661, line: 162, baseType: !682, size: 64, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !683, size: 64)
!683 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !661, line: 162, flags: DIFlagFwdDecl)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "rev", scope: !674, file: !661, line: 167, baseType: !266, size: 64, offset: 192)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !671, file: !661, line: 211, baseType: !686, size: 64)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !661, line: 170, size: 64, elements: !687)
!687 = !{!688}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !686, file: !661, line: 171, baseType: !659, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !671, file: !661, line: 212, baseType: !690, size: 256)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !661, line: 174, size: 256, elements: !691)
!691 = !{!692, !760, !763, !764}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !690, file: !661, line: 175, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !694, size: 64)
!694 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !695)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !661, line: 271, size: 768, elements: !696)
!696 = !{!697, !720, !724, !728, !733, !737, !741, !745, !746, !747, !748, !756}
!697 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !695, file: !661, line: 276, baseType: !698, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!699 = !DISubroutineType(types: !700)
!700 = !{!62, !701}
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !661, line: 251, size: 1216, elements: !703)
!703 = !{!704, !705, !706, !710, !711, !712, !713, !714, !715, !716, !717, !718, !719}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !702, file: !661, line: 253, baseType: !659, size: 64)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !702, file: !661, line: 254, baseType: !299, size: 64, offset: 64)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !702, file: !661, line: 255, baseType: !707, size: 64, offset: 128)
!707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !708, size: 64)
!708 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !709, line: 66, flags: DIFlagFwdDecl)
!709 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "af61f78c5e9b457f817266f20418ad82")
!710 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !702, file: !661, line: 256, baseType: !113, size: 64, offset: 192)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !702, file: !661, line: 259, baseType: !470, size: 256, offset: 256)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !702, file: !661, line: 260, baseType: !470, size: 256, offset: 512)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !702, file: !661, line: 261, baseType: !62, size: 32, offset: 768)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !702, file: !661, line: 262, baseType: !119, size: 128, offset: 832)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !702, file: !661, line: 263, baseType: !216, size: 64, offset: 960)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !702, file: !661, line: 265, baseType: !263, size: 64, offset: 1024)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !702, file: !661, line: 266, baseType: !570, size: 1, offset: 1088, flags: DIFlagBitField, extraData: i64 1088)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !702, file: !661, line: 267, baseType: !570, size: 1, offset: 1089, flags: DIFlagBitField, extraData: i64 1088)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !702, file: !661, line: 268, baseType: !589, size: 64, offset: 1152)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !695, file: !661, line: 277, baseType: !721, size: 64, offset: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{null, !701}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !695, file: !661, line: 290, baseType: !725, size: 64, offset: 128)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!62, !707, !113}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !695, file: !661, line: 292, baseType: !729, size: 64, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = !DISubroutineType(types: !731)
!731 = !{!113, !707, !732}
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !695, file: !661, line: 293, baseType: !734, size: 64, offset: 256)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DISubroutineType(types: !736)
!736 = !{!113, !707, !113, !732}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !695, file: !661, line: 294, baseType: !738, size: 64, offset: 320)
!738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!739 = !DISubroutineType(types: !740)
!740 = !{null, !707, !113}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !695, file: !661, line: 296, baseType: !742, size: 64, offset: 384)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = !DISubroutineType(types: !744)
!744 = !{!248, !701, !216, !263, !302}
!745 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !695, file: !661, line: 306, baseType: !263, size: 64, offset: 448)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !695, file: !661, line: 313, baseType: !570, size: 8, offset: 512)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !695, file: !661, line: 314, baseType: !742, size: 64, offset: 576)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !695, file: !661, line: 317, baseType: !749, size: 64, offset: 640)
!749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!750 = !DISubroutineType(types: !751)
!751 = !{!752, !701, !754}
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !753, line: 59, baseType: !23)
!753 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "013cacf9b9a56e4327d8ec393f8d421f")
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !755, size: 64)
!755 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !661, line: 31, flags: DIFlagFwdDecl)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !695, file: !661, line: 320, baseType: !757, size: 64, offset: 704)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DISubroutineType(types: !759)
!759 = !{!62, !701, !310}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !690, file: !661, line: 176, baseType: !761, size: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !661, line: 35, flags: DIFlagFwdDecl)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !690, file: !661, line: 177, baseType: !302, size: 64, offset: 128)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !690, file: !661, line: 178, baseType: !659, size: 64, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !660, file: !661, line: 215, baseType: !113, size: 64, offset: 768)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !660, file: !661, line: 221, baseType: !108, size: 64, offset: 832)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !660, file: !661, line: 223, baseType: !186, size: 16, offset: 896)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !660, file: !661, line: 224, baseType: !258, size: 16, offset: 912)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !660, file: !661, line: 225, baseType: !770, size: 64, offset: 960)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !661, line: 36, flags: DIFlagFwdDecl)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !660, file: !661, line: 227, baseType: !322, size: 128, align: 64, offset: 1024)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !133, file: !134, line: 71, baseType: !774, size: 32, offset: 448)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !775, line: 19, size: 32, elements: !776)
!775 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1554b486522fa90d95fe0370c160b0ab")
!776 = !{!777}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !774, file: !775, line: 20, baseType: !778, size: 32)
!778 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !779, line: 113, baseType: !780)
!779 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e7caf801ca057628e7b6cce80f0a5d10")
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !779, line: 111, size: 32, elements: !781)
!781 = !{!782}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !780, file: !779, line: 112, baseType: !168, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !133, file: !134, line: 73, baseType: !23, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !133, file: !134, line: 74, baseType: !23, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !133, file: !134, line: 75, baseType: !23, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !133, file: !134, line: 76, baseType: !23, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !133, file: !134, line: 77, baseType: !23, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !130, file: !29, line: 47, baseType: !114, size: 64, offset: 512)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "drivers_dir", scope: !130, file: !29, line: 48, baseType: !141, size: 64, offset: 576)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "mp", scope: !130, file: !29, line: 49, baseType: !791, size: 64, offset: 640)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_param_attrs", file: !29, line: 49, flags: DIFlagFwdDecl)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "kobj_completion", scope: !130, file: !29, line: 50, baseType: !794, size: 64, offset: 704)
!794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !796, line: 26, size: 256, elements: !797)
!796 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b05d3ab7eb02dc86ab22cabfb4a314bb")
!797 = !{!798, !799}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !795, file: !796, line: 27, baseType: !23, size: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !795, file: !796, line: 28, baseType: !800, size: 192, offset: 64)
!800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !801, line: 43, size: 192, elements: !802)
!801 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "14c02fe688b799b9b59537a234766fbe")
!802 = !{!803, !804}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !800, file: !801, line: 44, baseType: !404, size: 32)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !800, file: !801, line: 45, baseType: !119, size: 128, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "modinfo_attrs", scope: !115, file: !29, line: 418, baseType: !806, size: 64, offset: 1408)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_attribute", file: !29, line: 53, size: 448, elements: !808)
!808 = !{!809, !810, !815, !819, !823, !827}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !807, file: !29, line: 54, baseType: !254, size: 128)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !807, file: !29, line: 55, baseType: !811, size: 64, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DISubroutineType(types: !813)
!813 = !{!248, !806, !814, !216}
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !807, file: !29, line: 57, baseType: !816, size: 64, offset: 192)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !817, size: 64)
!817 = !DISubroutineType(types: !818)
!818 = !{!248, !806, !814, !137, !263}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "setup", scope: !807, file: !29, line: 59, baseType: !820, size: 64, offset: 256)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DISubroutineType(types: !822)
!822 = !{null, !114, !137}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "test", scope: !807, file: !29, line: 60, baseType: !824, size: 64, offset: 320)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DISubroutineType(types: !826)
!826 = !{!62, !114}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !807, file: !29, line: 61, baseType: !828, size: 64, offset: 384)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{null, !114}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !115, file: !29, line: 419, baseType: !137, size: 64, offset: 1472)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "srcversion", scope: !115, file: !29, line: 420, baseType: !137, size: 64, offset: 1536)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "holders_dir", scope: !115, file: !29, line: 421, baseType: !141, size: 64, offset: 1600)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "syms", scope: !115, file: !29, line: 424, baseType: !835, size: 64, offset: 1664)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !837)
!837 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_symbol", file: !29, line: 424, flags: DIFlagFwdDecl)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "crcs", scope: !115, file: !29, line: 425, baseType: !839, size: 64, offset: 1728)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !449)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "num_syms", scope: !115, file: !29, line: 426, baseType: !23, size: 32, offset: 1792)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "param_lock", scope: !115, file: !29, line: 435, baseType: !470, size: 256, offset: 1856)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "kp", scope: !115, file: !29, line: 437, baseType: !844, size: 64, offset: 2112)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !846, line: 69, size: 320, elements: !847)
!846 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "da060207bc299934a3621521ae61ed14")
!847 = !{!848, !849, !850, !867, !869, !873, !874}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !845, file: !846, line: 70, baseType: !137, size: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !845, file: !846, line: 71, baseType: !114, size: 64, offset: 64)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !845, file: !846, line: 72, baseType: !851, size: 64, offset: 128)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !853)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !846, line: 47, size: 256, elements: !854)
!854 = !{!855, !856, !862, !866}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !853, file: !846, line: 49, baseType: !23, size: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !853, file: !846, line: 51, baseType: !857, size: 64, offset: 64)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !858, size: 64)
!858 = !DISubroutineType(types: !859)
!859 = !{!62, !137, !860}
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !845)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !853, file: !846, line: 53, baseType: !863, size: 64, offset: 128)
!863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !864, size: 64)
!864 = !DISubroutineType(types: !865)
!865 = !{!62, !216, !860}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !853, file: !846, line: 55, baseType: !633, size: 64, offset: 192)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !845, file: !846, line: 73, baseType: !868, size: 16, offset: 192)
!868 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !845, file: !846, line: 74, baseType: !870, size: 8, offset: 208)
!870 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !109, line: 16, baseType: !871)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !111, line: 20, baseType: !872)
!872 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !845, file: !846, line: 75, baseType: !176, size: 8, offset: 216)
!874 = !DIDerivedType(tag: DW_TAG_member, scope: !845, file: !846, line: 76, baseType: !875, size: 64, offset: 256)
!875 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !845, file: !846, line: 76, size: 64, elements: !876)
!876 = !{!877, !878, !885}
!877 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !875, file: !846, line: 77, baseType: !113, size: 64)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !875, file: !846, line: 78, baseType: !879, size: 64)
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !881)
!881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !846, line: 86, size: 128, elements: !882)
!882 = !{!883, !884}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !881, file: !846, line: 87, baseType: !23, size: 32)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !881, file: !846, line: 88, baseType: !216, size: 64, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !875, file: !846, line: 79, baseType: !886, size: 64)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !888)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !846, line: 92, size: 256, elements: !889)
!889 = !{!890, !891, !892, !894, !895}
!890 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !888, file: !846, line: 94, baseType: !23, size: 32)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !888, file: !846, line: 95, baseType: !23, size: 32, offset: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !888, file: !846, line: 96, baseType: !893, size: 64, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !23, size: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !888, file: !846, line: 97, baseType: !851, size: 64, offset: 128)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !888, file: !846, line: 98, baseType: !113, size: 64, offset: 192)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "num_kp", scope: !115, file: !29, line: 438, baseType: !23, size: 32, offset: 2176)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "num_gpl_syms", scope: !115, file: !29, line: 441, baseType: !23, size: 32, offset: 2208)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_syms", scope: !115, file: !29, line: 442, baseType: !835, size: 64, offset: 2240)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "gpl_crcs", scope: !115, file: !29, line: 443, baseType: !839, size: 64, offset: 2304)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "using_gplonly_symbols", scope: !115, file: !29, line: 444, baseType: !570, size: 8, offset: 2368)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "async_probe_requested", scope: !115, file: !29, line: 451, baseType: !570, size: 8, offset: 2376)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "num_exentries", scope: !115, file: !29, line: 454, baseType: !23, size: 32, offset: 2400)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "extable", scope: !115, file: !29, line: 455, baseType: !904, size: 64, offset: 2432)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "exception_table_entry", file: !906, line: 23, size: 96, elements: !907)
!906 = !DIFile(filename: "./arch/x86/include/asm/extable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e5c2a83be90b9c40c8e1819ad47d0ab9")
!907 = !{!908, !909, !910}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "insn", scope: !905, file: !906, line: 24, baseType: !62, size: 32)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !905, file: !906, line: 24, baseType: !62, size: 32, offset: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !905, file: !906, line: 24, baseType: !62, size: 32, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !115, file: !29, line: 458, baseType: !912, size: 64, offset: 2496)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DISubroutineType(types: !914)
!914 = !{!62}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "mem", scope: !115, file: !29, line: 460, baseType: !916, size: 4032, align: 512, offset: 2560)
!916 = !DICompositeType(tag: DW_TAG_array_type, baseType: !917, size: 4032, elements: !933)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "module_memory", file: !29, line: 362, size: 576, elements: !918)
!918 = !{!919, !920, !921}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !917, file: !29, line: 363, baseType: !113, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !917, file: !29, line: 364, baseType: !23, size: 32, offset: 64)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "mtn", scope: !917, file: !29, line: 367, baseType: !922, size: 448, offset: 128)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_tree_node", file: !29, line: 319, size: 448, elements: !923)
!923 = !{!924, !925}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !922, file: !29, line: 320, baseType: !114, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !922, file: !29, line: 321, baseType: !926, size: 384, offset: 64)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "latch_tree_node", file: !927, line: 40, size: 384, elements: !928)
!927 = !DIFile(filename: "./include/linux/rbtree_latch.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "298ed6c1c8090c2cce57a29615901c69")
!928 = !{!929}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !926, file: !927, line: 41, baseType: !930, size: 384, align: 64)
!930 = !DICompositeType(tag: DW_TAG_array_type, baseType: !576, size: 384, align: 64, elements: !931)
!931 = !{!932}
!932 = !DISubrange(count: 2)
!933 = !{!934}
!934 = !DISubrange(count: 7)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !115, file: !29, line: 463, baseType: !936, size: 192, offset: 6592)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_arch_specific", file: !937, line: 8, size: 192, elements: !938)
!937 = !DIFile(filename: "./arch/x86/include/asm/module.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "bc56644bb7e32f0bb7cb156e8d71b2cf")
!938 = !{!939, !940, !942}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "num_orcs", scope: !936, file: !937, line: 10, baseType: !23, size: 32)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind_ip", scope: !936, file: !937, line: 11, baseType: !941, size: 64, offset: 64)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "orc_unwind", scope: !936, file: !937, line: 12, baseType: !943, size: 64, offset: 128)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "orc_entry", file: !945, line: 59, size: 48, elements: !946)
!945 = !DIFile(filename: "./arch/x86/include/asm/orc_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "217b54c75ff55a9bf8ecacfb45d2cb41")
!946 = !{!947, !948, !949, !950, !951, !952}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "sp_offset", scope: !944, file: !945, line: 60, baseType: !508, size: 16)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "bp_offset", scope: !944, file: !945, line: 61, baseType: !508, size: 16, offset: 16)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "sp_reg", scope: !944, file: !945, line: 63, baseType: !23, size: 4, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "bp_reg", scope: !944, file: !945, line: 64, baseType: !23, size: 4, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !944, file: !945, line: 65, baseType: !23, size: 3, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !944, file: !945, line: 66, baseType: !23, size: 1, offset: 43, flags: DIFlagBitField, extraData: i64 32)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "taints", scope: !115, file: !29, line: 465, baseType: !266, size: 64, offset: 6784)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "num_bugs", scope: !115, file: !29, line: 469, baseType: !23, size: 32, offset: 6848)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "bug_list", scope: !115, file: !29, line: 470, baseType: !119, size: 128, offset: 6912)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "bug_table", scope: !115, file: !29, line: 471, baseType: !957, size: 64, offset: 7040)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bug_entry", file: !959, line: 33, size: 96, elements: !960)
!959 = !DIFile(filename: "./include/asm-generic/bug.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a424e856a399f06df3c15260a88b3e3c")
!960 = !{!961, !962, !963, !964}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "bug_addr_disp", scope: !958, file: !959, line: 37, baseType: !62, size: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "file_disp", scope: !958, file: !959, line: 43, baseType: !62, size: 32, offset: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "line", scope: !958, file: !959, line: 45, baseType: !186, size: 16, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !958, file: !959, line: 47, baseType: !186, size: 16, offset: 80)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "kallsyms", scope: !115, file: !29, line: 476, baseType: !966, size: 64, offset: 7104)
!966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !967, size: 64)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mod_kallsyms", file: !29, line: 378, size: 256, elements: !968)
!968 = !{!969, !986, !987, !988}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "symtab", scope: !967, file: !29, line: 379, baseType: !970, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !971, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Sym", file: !972, line: 204, baseType: !973)
!972 = !DIFile(filename: "./include/uapi/linux/elf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "595c2eba1f9d3a54c736659cdc0e9b41")
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "elf64_sym", file: !972, line: 197, size: 192, elements: !974)
!974 = !{!975, !978, !979, !980, !982, !984}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "st_name", scope: !973, file: !972, line: 198, baseType: !976, size: 32)
!976 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Word", file: !972, line: 21, baseType: !977)
!977 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !111, line: 27, baseType: !23)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "st_info", scope: !973, file: !972, line: 199, baseType: !178, size: 8, offset: 32)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "st_other", scope: !973, file: !972, line: 200, baseType: !178, size: 8, offset: 40)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "st_shndx", scope: !973, file: !972, line: 201, baseType: !981, size: 16, offset: 48)
!981 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Half", file: !972, line: 17, baseType: !185)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "st_value", scope: !973, file: !972, line: 202, baseType: !983, size: 64, offset: 64)
!983 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Addr", file: !972, line: 16, baseType: !110)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "st_size", scope: !973, file: !972, line: 203, baseType: !985, size: 64, offset: 128)
!985 = !DIDerivedType(tag: DW_TAG_typedef, name: "Elf64_Xword", file: !972, line: 22, baseType: !110)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "num_symtab", scope: !967, file: !29, line: 380, baseType: !23, size: 32, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "strtab", scope: !967, file: !29, line: 381, baseType: !216, size: 64, offset: 128)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "typetab", scope: !967, file: !29, line: 382, baseType: !216, size: 64, offset: 192)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "core_kallsyms", scope: !115, file: !29, line: 477, baseType: !967, size: 256, offset: 7168)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "sect_attrs", scope: !115, file: !29, line: 480, baseType: !991, size: 64, offset: 7424)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_sect_attrs", file: !29, line: 480, flags: DIFlagFwdDecl)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "notes_attrs", scope: !115, file: !29, line: 483, baseType: !994, size: 64, offset: 7488)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DICompositeType(tag: DW_TAG_structure_type, name: "module_notes_attrs", file: !29, line: 483, flags: DIFlagFwdDecl)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !115, file: !29, line: 488, baseType: !216, size: 64, offset: 7552)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "percpu", scope: !115, file: !29, line: 492, baseType: !113, size: 64, offset: 7616)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "percpu_size", scope: !115, file: !29, line: 493, baseType: !23, size: 32, offset: 7680)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_start", scope: !115, file: !29, line: 495, baseType: !113, size: 64, offset: 7744)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "noinstr_text_size", scope: !115, file: !29, line: 496, baseType: !23, size: 32, offset: 7808)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "num_tracepoints", scope: !115, file: !29, line: 499, baseType: !23, size: 32, offset: 7840)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "tracepoints_ptrs", scope: !115, file: !29, line: 500, baseType: !1003, size: 64, offset: 7872)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_typedef, name: "tracepoint_ptr_t", file: !1005, line: 45, baseType: !1006)
!1005 = !DIFile(filename: "./include/linux/tracepoint-defs.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9adc8bcec4aca7b10db8cb63b9f9f561")
!1006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !62)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "num_srcu_structs", scope: !115, file: !29, line: 503, baseType: !23, size: 32, offset: 7936)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_struct_ptrs", scope: !115, file: !29, line: 504, baseType: !1009, size: 64, offset: 8000)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_struct", file: !1012, line: 96, size: 192, elements: !1013)
!1012 = !DIFile(filename: "./include/linux/srcutree.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "928668beafc54c71bb97a718dd289a5e")
!1013 = !{!1014, !1015, !1076, !1079}
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_idx", scope: !1011, file: !1012, line: 97, baseType: !23, size: 32)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "sda", scope: !1011, file: !1012, line: 98, baseType: !1016, size: 64, offset: 64)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_data", file: !1012, line: 24, size: 3072, elements: !1018)
!1018 = !{!1019, !1021, !1022, !1023, !1024, !1038, !1039, !1040, !1041, !1060, !1061, !1062, !1073, !1074, !1075}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_lock_count", scope: !1017, file: !1012, line: 26, baseType: !1020, size: 128)
!1020 = !DICompositeType(tag: DW_TAG_array_type, baseType: !382, size: 128, elements: !931)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_unlock_count", scope: !1017, file: !1012, line: 27, baseType: !1020, size: 128, offset: 128)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_nmi_safety", scope: !1017, file: !1012, line: 28, baseType: !62, size: 32, offset: 256)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1017, file: !1012, line: 31, baseType: !148, size: 32, align: 512, offset: 512)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist", scope: !1017, file: !1012, line: 32, baseType: !1025, size: 960, offset: 576)
!1025 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rcu_segcblist", file: !1026, line: 206, size: 960, elements: !1027)
!1026 = !DIFile(filename: "./include/linux/rcu_segcblist.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "5998c6d043edce8ae3d2ed583de01078")
!1027 = !{!1028, !1029, !1032, !1034, !1035, !1037}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1025, file: !1026, line: 207, baseType: !325, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "tails", scope: !1025, file: !1026, line: 208, baseType: !1030, size: 256, offset: 64)
!1030 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1031, size: 256, elements: !451)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "gp_seq", scope: !1025, file: !1026, line: 209, baseType: !1033, size: 256, offset: 320)
!1033 = !DICompositeType(tag: DW_TAG_array_type, baseType: !266, size: 256, elements: !451)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !1025, file: !1026, line: 213, baseType: !252, size: 64, offset: 576)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "seglen", scope: !1025, file: !1026, line: 215, baseType: !1036, size: 256, offset: 640)
!1036 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 256, elements: !451)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1025, file: !1026, line: 216, baseType: !176, size: 8, offset: 896)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1017, file: !1012, line: 33, baseType: !266, size: 64, offset: 1536)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1017, file: !1012, line: 34, baseType: !266, size: 64, offset: 1600)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cblist_invoking", scope: !1017, file: !1012, line: 35, baseType: !570, size: 8, offset: 1664)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "delay_work", scope: !1017, file: !1012, line: 36, baseType: !1042, size: 320, offset: 1728)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1043, line: 11, size: 320, elements: !1044)
!1043 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8bd5ff2e6f8f880a1e59db6968c9d8c0")
!1044 = !{!1045, !1052, !1053, !1058}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1042, file: !1043, line: 16, baseType: !1046, size: 128)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !120, line: 198, size: 128, elements: !1047)
!1047 = !{!1048, !1050}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1046, file: !120, line: 199, baseType: !1049, size: 64)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !1046, file: !120, line: 199, baseType: !1051, size: 64, offset: 64)
!1051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1042, file: !1043, line: 17, baseType: !266, size: 64, offset: 128)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1042, file: !1043, line: 18, baseType: !1054, size: 64, offset: 192)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DISubroutineType(types: !1056)
!1056 = !{null, !1057}
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1042, file: !1043, line: 19, baseType: !1059, size: 32, offset: 256)
!1059 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !109, line: 21, baseType: !977)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1017, file: !1012, line: 37, baseType: !535, size: 256, offset: 2048)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_head", scope: !1017, file: !1012, line: 38, baseType: !322, size: 128, align: 64, offset: 2304)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "mynode", scope: !1017, file: !1012, line: 39, baseType: !1063, size: 64, offset: 2432)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_node", file: !1012, line: 49, size: 768, elements: !1065)
!1065 = !{!1066, !1067, !1068, !1069, !1070, !1071, !1072}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1064, file: !1012, line: 50, baseType: !148, size: 32)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_have_cbs", scope: !1064, file: !1012, line: 51, baseType: !1033, size: 256, offset: 64)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_data_have_cbs", scope: !1064, file: !1012, line: 53, baseType: !1033, size: 256, offset: 320)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1064, file: !1012, line: 54, baseType: !266, size: 64, offset: 576)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_parent", scope: !1064, file: !1012, line: 55, baseType: !1063, size: 64, offset: 640)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "grplo", scope: !1064, file: !1012, line: 56, baseType: !62, size: 32, offset: 704)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "grphi", scope: !1064, file: !1012, line: 57, baseType: !62, size: 32, offset: 736)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "grpmask", scope: !1017, file: !1012, line: 40, baseType: !266, size: 64, offset: 2496)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1017, file: !1012, line: 42, baseType: !62, size: 32, offset: 2560)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "ssp", scope: !1017, file: !1012, line: 43, baseType: !1010, size: 64, offset: 2624)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "dep_map", scope: !1011, file: !1012, line: 99, baseType: !1077, offset: 128)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lockdep_map", file: !1078, line: 211, elements: !352)
!1078 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2e630544f7c76306338c81bafa613c3c")
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_sup", scope: !1011, file: !1012, line: 100, baseType: !1080, size: 64, offset: 128)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "srcu_usage", file: !1012, line: 63, size: 3008, elements: !1082)
!1082 = !{!1083, !1084, !1086, !1087, !1088, !1089, !1090, !1091, !1092, !1093, !1094, !1095, !1096, !1097, !1098, !1099, !1100, !1101, !1102, !1103, !1104, !1105, !1114}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1081, file: !1012, line: 64, baseType: !1063, size: 64)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !1081, file: !1012, line: 65, baseType: !1085, size: 192, offset: 64)
!1085 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1063, size: 192, elements: !217)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_state", scope: !1081, file: !1012, line: 67, baseType: !62, size: 32, offset: 256)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_cb_mutex", scope: !1081, file: !1012, line: 68, baseType: !470, size: 256, offset: 320)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1081, file: !1012, line: 69, baseType: !148, size: 32, offset: 576)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_mutex", scope: !1081, file: !1012, line: 70, baseType: !470, size: 256, offset: 640)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq", scope: !1081, file: !1012, line: 71, baseType: !266, size: 64, offset: 896)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed", scope: !1081, file: !1012, line: 72, baseType: !266, size: 64, offset: 960)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_seq_needed_exp", scope: !1081, file: !1012, line: 73, baseType: !266, size: 64, offset: 1024)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_gp_start", scope: !1081, file: !1012, line: 74, baseType: !266, size: 64, offset: 1088)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_last_gp_end", scope: !1081, file: !1012, line: 75, baseType: !266, size: 64, offset: 1152)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_size_jiffies", scope: !1081, file: !1012, line: 76, baseType: !266, size: 64, offset: 1216)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_lock_retries", scope: !1081, file: !1012, line: 77, baseType: !266, size: 64, offset: 1280)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_n_exp_nodelay", scope: !1081, file: !1012, line: 78, baseType: !266, size: 64, offset: 1344)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "sda_is_static", scope: !1081, file: !1012, line: 79, baseType: !570, size: 8, offset: 1408)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_seq", scope: !1081, file: !1012, line: 80, baseType: !266, size: 64, offset: 1472)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_mutex", scope: !1081, file: !1012, line: 81, baseType: !470, size: 256, offset: 1536)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_completion", scope: !1081, file: !1012, line: 82, baseType: !795, size: 256, offset: 1792)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_barrier_cpu_cnt", scope: !1081, file: !1012, line: 84, baseType: !168, size: 32, offset: 2048)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_jiffies", scope: !1081, file: !1012, line: 87, baseType: !266, size: 64, offset: 2112)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "reschedule_count", scope: !1081, file: !1012, line: 88, baseType: !266, size: 64, offset: 2176)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1081, file: !1012, line: 89, baseType: !1106, size: 704, offset: 2240)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "delayed_work", file: !536, line: 111, size: 704, elements: !1107)
!1107 = !{!1108, !1109, !1110, !1113}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1106, file: !536, line: 112, baseType: !535, size: 256)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1106, file: !536, line: 113, baseType: !1042, size: 320, offset: 256)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !1106, file: !536, line: 116, baseType: !1111, size: 64, offset: 576)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !536, line: 18, flags: DIFlagFwdDecl)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1106, file: !536, line: 117, baseType: !62, size: 32, offset: 640)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "srcu_ssp", scope: !1081, file: !1012, line: 90, baseType: !1010, size: 64, offset: 2944)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "jump_entries", scope: !115, file: !29, line: 515, baseType: !1116, size: 64, offset: 8064)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jump_entry", file: !1118, line: 117, size: 128, elements: !1119)
!1118 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "b63d8c176b9eaf42add20d22cc2d2841")
!1119 = !{!1120, !1121, !1122}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "code", scope: !1117, file: !1118, line: 118, baseType: !449, size: 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !1117, file: !1118, line: 119, baseType: !449, size: 32, offset: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1117, file: !1118, line: 120, baseType: !252, size: 64, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "num_jump_entries", scope: !115, file: !29, line: 516, baseType: !23, size: 32, offset: 8128)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_bprintk_fmt", scope: !115, file: !29, line: 519, baseType: !23, size: 32, offset: 8160)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "trace_bprintk_fmt_start", scope: !115, file: !29, line: 520, baseType: !1126, size: 64, offset: 8192)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "trace_events", scope: !115, file: !29, line: 523, baseType: !1128, size: 64, offset: 8256)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1130, size: 64)
!1130 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_event_call", file: !29, line: 523, flags: DIFlagFwdDecl)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_events", scope: !115, file: !29, line: 524, baseType: !23, size: 32, offset: 8320)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "trace_evals", scope: !115, file: !29, line: 525, baseType: !1133, size: 64, offset: 8384)
!1133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1134, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DICompositeType(tag: DW_TAG_structure_type, name: "trace_eval_map", file: !29, line: 525, flags: DIFlagFwdDecl)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "num_trace_evals", scope: !115, file: !29, line: 526, baseType: !23, size: 32, offset: 8448)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_start", scope: !115, file: !29, line: 533, baseType: !113, size: 64, offset: 8512)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "kprobes_text_size", scope: !115, file: !29, line: 534, baseType: !23, size: 32, offset: 8576)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "kprobe_blacklist", scope: !115, file: !29, line: 535, baseType: !1140, size: 64, offset: 8640)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "num_kprobe_blacklist", scope: !115, file: !29, line: 536, baseType: !23, size: 32, offset: 8704)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "num_static_call_sites", scope: !115, file: !29, line: 539, baseType: !62, size: 32, offset: 8736)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "static_call_sites", scope: !115, file: !29, line: 540, baseType: !1144, size: 64, offset: 8768)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "static_call_site", file: !1146, line: 32, size: 64, elements: !1147)
!1146 = !DIFile(filename: "./include/linux/static_call_types.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d6c482788c28845cbc4205380e7cd7fd")
!1147 = !{!1148, !1149}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1145, file: !1146, line: 33, baseType: !449, size: 32)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "key", scope: !1145, file: !1146, line: 34, baseType: !449, size: 32, offset: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "source_list", scope: !115, file: !29, line: 563, baseType: !119, size: 128, offset: 8832)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "target_list", scope: !115, file: !29, line: 565, baseType: !119, size: 128, offset: 8960)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "exit", scope: !115, file: !29, line: 568, baseType: !1153, size: 64, offset: 9088)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DISubroutineType(types: !1155)
!1155 = !{null}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "refcnt", scope: !115, file: !29, line: 570, baseType: !168, size: 32, offset: 9152)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !1159, line: 367, size: 11200, elements: !1160)
!1159 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "745f031e2ee183d2395bab1bfe3ce66b")
!1160 = !{!1161, !1162, !1163, !1165, !1736, !1737, !1738, !1747, !1765, !1844, !1872, !1896, !1917, !1923, !1932, !1964, !1978, !1982, !1983, !1984, !1985, !1986, !1987, !1988}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "pld_crc", scope: !1158, file: !1159, line: 368, baseType: !1059, size: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !1158, file: !1159, line: 369, baseType: !62, size: 32, offset: 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !1158, file: !1159, line: 370, baseType: !1164, size: 64, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !107, line: 424, baseType: !113)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1158, file: !1159, line: 371, baseType: !1166, size: 512, offset: 128)
!1166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1167, line: 41, size: 512, elements: !1168)
!1167 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e3a0c5bf9fb74332342ce1710fed8930")
!1168 = !{!1169, !1171, !1732, !1733, !1734, !1735}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1166, file: !1167, line: 42, baseType: !1170, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1166, file: !1167, line: 43, baseType: !1172, size: 64, offset: 64)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1174)
!1174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1167, line: 125, size: 1408, elements: !1175)
!1175 = !{!1176, !1180, !1184, !1190, !1662, !1663, !1667, !1671, !1675, !1679, !1683, !1684, !1688, !1692, !1696, !1707, !1708, !1709, !1710, !1720, !1724, !1728}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1174, file: !1167, line: 126, baseType: !1177, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DISubroutineType(types: !1179)
!1179 = !{!1170, !1170}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1174, file: !1167, line: 127, baseType: !1181, size: 64, offset: 64)
!1181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1182, size: 64)
!1182 = !DISubroutineType(types: !1183)
!1183 = !{null, !1170}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1174, file: !1167, line: 128, baseType: !1185, size: 64, offset: 128)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DISubroutineType(types: !1187)
!1187 = !{!570, !1188}
!1188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1189, size: 64)
!1189 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1166)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1174, file: !1167, line: 129, baseType: !1191, size: 64, offset: 192)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = !DISubroutineType(types: !1193)
!1193 = !{!491, !1188, !1194}
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1196)
!1196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !42, line: 705, size: 5824, elements: !1197)
!1197 = !{!1198, !1199, !1201, !1204, !1205, !1256, !1347, !1348, !1349, !1350, !1351, !1358, !1528, !1541, !1551, !1555, !1557, !1558, !1559, !1563, !1570, !1571, !1574, !1577, !1601, !1602, !1603, !1606, !1607, !1608, !1609, !1639, !1640, !1641, !1644, !1647, !1656, !1657, !1658, !1659, !1660, !1661}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1196, file: !42, line: 706, baseType: !133, size: 512)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1196, file: !42, line: 707, baseType: !1200, size: 64, offset: 512)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1196, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1196, file: !42, line: 709, baseType: !1202, size: 64, offset: 576)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !42, line: 37, flags: DIFlagFwdDecl)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1196, file: !42, line: 711, baseType: !137, size: 64, offset: 640)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1196, file: !42, line: 712, baseType: !1206, size: 64, offset: 704)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1208)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !42, line: 89, size: 384, elements: !1209)
!1209 = !{!1210, !1211, !1212, !1216, !1221, !1225}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1208, file: !42, line: 90, baseType: !137, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1208, file: !42, line: 91, baseType: !268, size: 64, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1208, file: !42, line: 92, baseType: !1213, size: 64, offset: 128)
!1213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1214, size: 64)
!1214 = !DISubroutineType(types: !1215)
!1215 = !{!62, !1194, !211}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1208, file: !42, line: 93, baseType: !1217, size: 64, offset: 192)
!1217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1218, size: 64)
!1218 = !DISubroutineType(types: !1219)
!1219 = !{!216, !1194, !1220, !644, !651}
!1220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1208, file: !42, line: 95, baseType: !1222, size: 64, offset: 256)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DISubroutineType(types: !1224)
!1224 = !{null, !1200}
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1208, file: !42, line: 97, baseType: !1226, size: 64, offset: 320)
!1226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1228)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !54, line: 286, size: 1472, elements: !1229)
!1229 = !{!1230, !1234, !1235, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1253, !1254, !1255}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1228, file: !54, line: 287, baseType: !1231, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DISubroutineType(types: !1233)
!1233 = !{!62, !1200}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1228, file: !54, line: 288, baseType: !1222, size: 64, offset: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1228, file: !54, line: 289, baseType: !1231, size: 64, offset: 128)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1228, file: !54, line: 290, baseType: !1231, size: 64, offset: 192)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1228, file: !54, line: 291, baseType: !1231, size: 64, offset: 256)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1228, file: !54, line: 292, baseType: !1231, size: 64, offset: 320)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1228, file: !54, line: 293, baseType: !1231, size: 64, offset: 384)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1228, file: !54, line: 294, baseType: !1231, size: 64, offset: 448)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1228, file: !54, line: 295, baseType: !1231, size: 64, offset: 512)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1228, file: !54, line: 296, baseType: !1231, size: 64, offset: 576)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1228, file: !54, line: 297, baseType: !1231, size: 64, offset: 640)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1228, file: !54, line: 298, baseType: !1231, size: 64, offset: 704)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1228, file: !54, line: 299, baseType: !1231, size: 64, offset: 768)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1228, file: !54, line: 300, baseType: !1231, size: 64, offset: 832)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1228, file: !54, line: 301, baseType: !1231, size: 64, offset: 896)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1228, file: !54, line: 302, baseType: !1231, size: 64, offset: 960)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1228, file: !54, line: 303, baseType: !1231, size: 64, offset: 1024)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1228, file: !54, line: 304, baseType: !1231, size: 64, offset: 1088)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1228, file: !54, line: 305, baseType: !1231, size: 64, offset: 1152)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1228, file: !54, line: 306, baseType: !1231, size: 64, offset: 1216)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1228, file: !54, line: 307, baseType: !1231, size: 64, offset: 1280)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1228, file: !54, line: 308, baseType: !1231, size: 64, offset: 1344)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1228, file: !54, line: 309, baseType: !1231, size: 64, offset: 1408)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1196, file: !42, line: 714, baseType: !1257, size: 64, offset: 768)
!1257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1258, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1259)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1260, line: 80, size: 1344, elements: !1261)
!1260 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "594b2185a9b512b1ffc05bce9cefc362")
!1261 = !{!1262, !1263, !1264, !1265, !1266, !1267, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340, !1341, !1342, !1346}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1259, file: !1260, line: 81, baseType: !137, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1259, file: !1260, line: 82, baseType: !137, size: 64, offset: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1259, file: !1260, line: 83, baseType: !268, size: 64, offset: 128)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1259, file: !1260, line: 84, baseType: !268, size: 64, offset: 192)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1259, file: !1260, line: 85, baseType: !268, size: 64, offset: 256)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1259, file: !1260, line: 87, baseType: !1268, size: 64, offset: 320)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DISubroutineType(types: !1270)
!1270 = !{!62, !1200, !1271}
!1271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1272, size: 64)
!1272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !36, line: 96, size: 1152, elements: !1273)
!1273 = !{!1274, !1275, !1276, !1277, !1278, !1279, !1280, !1296, !1309, !1310, !1311, !1312, !1313, !1321, !1322, !1323, !1324, !1325, !1326}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1272, file: !36, line: 97, baseType: !137, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1272, file: !36, line: 98, baseType: !1257, size: 64, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1272, file: !36, line: 100, baseType: !114, size: 64, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1272, file: !36, line: 101, baseType: !137, size: 64, offset: 192)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1272, file: !36, line: 103, baseType: !570, size: 8, offset: 256)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1272, file: !36, line: 104, baseType: !35, size: 32, offset: 288)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1272, file: !36, line: 106, baseType: !1281, size: 64, offset: 320)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1283)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1284, line: 282, size: 1600, elements: !1285)
!1284 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "10381d82cde1f1eb16eef34ff80709e3")
!1285 = !{!1286, !1290, !1291, !1295}
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1283, file: !1284, line: 283, baseType: !1287, size: 256)
!1287 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 256, elements: !1288)
!1288 = !{!1289}
!1289 = !DISubrange(count: 32)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1283, file: !1284, line: 284, baseType: !1287, size: 256, offset: 256)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1283, file: !1284, line: 285, baseType: !1292, size: 1024, offset: 512)
!1292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 1024, elements: !1293)
!1293 = !{!1294}
!1294 = !DISubrange(count: 128)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1283, file: !1284, line: 286, baseType: !491, size: 64, offset: 1536)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1272, file: !36, line: 107, baseType: !1297, size: 64, offset: 384)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1299)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1284, line: 217, size: 256, elements: !1300)
!1300 = !{!1301, !1305, !1307, !1308}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1299, file: !1284, line: 218, baseType: !1302, size: 128)
!1302 = !DICompositeType(tag: DW_TAG_array_type, baseType: !177, size: 128, elements: !1303)
!1303 = !{!1304}
!1304 = !DISubrange(count: 16)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1299, file: !1284, line: 219, baseType: !1306, size: 64, offset: 128)
!1306 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1284, line: 15, baseType: !266)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1299, file: !1284, line: 220, baseType: !977, size: 32, offset: 192)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1299, file: !1284, line: 221, baseType: !977, size: 32, offset: 224)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1272, file: !36, line: 109, baseType: !1231, size: 64, offset: 448)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1272, file: !36, line: 110, baseType: !1222, size: 64, offset: 512)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1272, file: !36, line: 111, baseType: !1231, size: 64, offset: 576)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1272, file: !36, line: 112, baseType: !1222, size: 64, offset: 640)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1272, file: !36, line: 113, baseType: !1314, size: 64, offset: 704)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DISubroutineType(types: !1316)
!1316 = !{!62, !1200, !1317}
!1317 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !54, line: 60, baseType: !1318)
!1318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !54, line: 58, size: 32, elements: !1319)
!1319 = !{!1320}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1318, file: !54, line: 59, baseType: !62, size: 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1272, file: !36, line: 114, baseType: !1231, size: 64, offset: 768)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1272, file: !36, line: 115, baseType: !268, size: 64, offset: 832)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1272, file: !36, line: 116, baseType: !268, size: 64, offset: 896)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1272, file: !36, line: 118, baseType: !1226, size: 64, offset: 960)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1272, file: !36, line: 119, baseType: !1222, size: 64, offset: 1024)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1272, file: !36, line: 121, baseType: !1327, size: 64, offset: 1088)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !36, line: 121, flags: DIFlagFwdDecl)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1259, file: !1260, line: 88, baseType: !1213, size: 64, offset: 384)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1259, file: !1260, line: 89, baseType: !1231, size: 64, offset: 448)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1259, file: !1260, line: 90, baseType: !1222, size: 64, offset: 512)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1259, file: !1260, line: 91, baseType: !1222, size: 64, offset: 576)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1259, file: !1260, line: 92, baseType: !1222, size: 64, offset: 640)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1259, file: !1260, line: 94, baseType: !1231, size: 64, offset: 704)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1259, file: !1260, line: 95, baseType: !1231, size: 64, offset: 768)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1259, file: !1260, line: 97, baseType: !1314, size: 64, offset: 832)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1259, file: !1260, line: 98, baseType: !1231, size: 64, offset: 896)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1259, file: !1260, line: 100, baseType: !1231, size: 64, offset: 960)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1259, file: !1260, line: 102, baseType: !1231, size: 64, offset: 1024)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "dma_cleanup", scope: !1259, file: !1260, line: 103, baseType: !1222, size: 64, offset: 1088)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1259, file: !1260, line: 105, baseType: !1226, size: 64, offset: 1152)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1259, file: !1260, line: 107, baseType: !1343, size: 64, offset: 1216)
!1343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1345)
!1345 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1260, line: 107, flags: DIFlagFwdDecl)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1259, file: !1260, line: 109, baseType: !570, size: 8, offset: 1280)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1196, file: !42, line: 715, baseType: !1271, size: 64, offset: 832)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1196, file: !42, line: 717, baseType: !113, size: 64, offset: 896)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1196, file: !42, line: 719, baseType: !113, size: 64, offset: 960)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1196, file: !42, line: 721, baseType: !470, size: 256, offset: 1024)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1196, file: !42, line: 725, baseType: !1352, size: 448, offset: 1280)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !42, line: 517, size: 448, elements: !1353)
!1353 = !{!1354, !1355, !1356, !1357}
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1352, file: !42, line: 518, baseType: !119, size: 128)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1352, file: !42, line: 519, baseType: !119, size: 128, offset: 128)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "defer_sync", scope: !1352, file: !42, line: 520, baseType: !119, size: 128, offset: 256)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1352, file: !42, line: 521, baseType: !41, size: 32, offset: 384)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1196, file: !42, line: 726, baseType: !1359, size: 2496, offset: 1728)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !54, line: 663, size: 2496, elements: !1360)
!1360 = !{!1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1405, !1406, !1407, !1408, !1409, !1410, !1481, !1482, !1483, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1521, !1525}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1359, file: !54, line: 664, baseType: !1317, size: 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1359, file: !54, line: 665, baseType: !23, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1359, file: !54, line: 666, baseType: !23, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1359, file: !54, line: 667, baseType: !570, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1359, file: !54, line: 668, baseType: !570, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1359, file: !54, line: 669, baseType: !570, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1359, file: !54, line: 670, baseType: !570, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1359, file: !54, line: 671, baseType: !570, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1359, file: !54, line: 672, baseType: !570, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1359, file: !54, line: 673, baseType: !570, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1359, file: !54, line: 674, baseType: !570, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1359, file: !54, line: 675, baseType: !1059, size: 32, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1359, file: !54, line: 676, baseType: !148, size: 32, offset: 96)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1359, file: !54, line: 678, baseType: !119, size: 128, offset: 128)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1359, file: !54, line: 679, baseType: !795, size: 256, offset: 256)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1359, file: !54, line: 680, baseType: !1377, size: 64, offset: 512)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1379, line: 43, size: 1536, elements: !1380)
!1379 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "92df65cbcdf4635836b864f0bb3f5fd5")
!1380 = !{!1381, !1382, !1383, !1384, !1385, !1388, !1389, !1390, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1403, !1404}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1378, file: !1379, line: 44, baseType: !137, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1378, file: !1379, line: 45, baseType: !62, size: 32, offset: 64)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1378, file: !1379, line: 46, baseType: !119, size: 128, offset: 128)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1378, file: !1379, line: 47, baseType: !148, size: 32, offset: 256)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1378, file: !1379, line: 48, baseType: !1386, size: 64, offset: 320)
!1386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1387, size: 64)
!1387 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !54, line: 629, flags: DIFlagFwdDecl)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1378, file: !1379, line: 49, baseType: !1042, size: 320, offset: 384)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1378, file: !1379, line: 50, baseType: !266, size: 64, offset: 704)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1378, file: !1379, line: 51, baseType: !1391, size: 64, offset: 768)
!1391 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !1392, line: 29, baseType: !388)
!1392 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "8366fc94667143ca776f15f2495e03ec")
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1378, file: !1379, line: 52, baseType: !1391, size: 64, offset: 832)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1378, file: !1379, line: 53, baseType: !1391, size: 64, offset: 896)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1378, file: !1379, line: 54, baseType: !1391, size: 64, offset: 960)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1378, file: !1379, line: 55, baseType: !1391, size: 64, offset: 1024)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1378, file: !1379, line: 56, baseType: !266, size: 64, offset: 1088)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1378, file: !1379, line: 57, baseType: !266, size: 64, offset: 1152)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1378, file: !1379, line: 58, baseType: !266, size: 64, offset: 1216)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1378, file: !1379, line: 59, baseType: !266, size: 64, offset: 1280)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1378, file: !1379, line: 60, baseType: !266, size: 64, offset: 1344)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1378, file: !1379, line: 61, baseType: !1200, size: 64, offset: 1408)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1378, file: !1379, line: 62, baseType: !570, size: 1, offset: 1472, flags: DIFlagBitField, extraData: i64 1472)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1378, file: !1379, line: 63, baseType: !570, size: 1, offset: 1473, flags: DIFlagBitField, extraData: i64 1472)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1359, file: !54, line: 681, baseType: !570, size: 1, offset: 576, flags: DIFlagBitField, extraData: i64 576)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1359, file: !54, line: 682, baseType: !570, size: 1, offset: 577, flags: DIFlagBitField, extraData: i64 576)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1359, file: !54, line: 683, baseType: !570, size: 1, offset: 578, flags: DIFlagBitField, extraData: i64 576)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1359, file: !54, line: 684, baseType: !23, size: 1, offset: 579, flags: DIFlagBitField, extraData: i64 576)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1359, file: !54, line: 685, baseType: !23, size: 1, offset: 580, flags: DIFlagBitField, extraData: i64 576)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1359, file: !54, line: 690, baseType: !1411, size: 512, offset: 640)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !49, line: 118, size: 512, elements: !1412)
!1412 = !{!1413, !1419, !1420, !1425, !1477, !1478, !1479, !1480}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1411, file: !49, line: 119, baseType: !1414, size: 256)
!1414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !1415, line: 9, size: 256, elements: !1416)
!1415 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c57d854ee876c9e77f4fe0b88852fe1e")
!1416 = !{!1417, !1418}
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !1414, file: !1415, line: 10, baseType: !576, size: 192, align: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1414, file: !1415, line: 11, baseType: !1391, size: 64, offset: 192)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !1411, file: !49, line: 120, baseType: !1391, size: 64, offset: 256)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1411, file: !49, line: 121, baseType: !1421, size: 64, offset: 320)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!48, !1424}
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !1411, file: !49, line: 122, baseType: !1426, size: 64, offset: 384)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !49, line: 159, size: 512, align: 512, elements: !1428)
!1428 = !{!1429, !1454, !1455, !1458, !1463, !1464, !1472, !1476}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !1427, file: !49, line: 160, baseType: !1430, size: 64)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !49, line: 215, size: 4608, align: 512, elements: !1432)
!1432 = !{!1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1431, file: !49, line: 216, baseType: !404, size: 32)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !1431, file: !49, line: 217, baseType: !23, size: 32, offset: 32)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !1431, file: !49, line: 218, baseType: !23, size: 32, offset: 64)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !1431, file: !49, line: 219, baseType: !23, size: 32, offset: 96)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !1431, file: !49, line: 220, baseType: !23, size: 1, offset: 128, flags: DIFlagBitField, extraData: i64 128)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !1431, file: !49, line: 221, baseType: !23, size: 1, offset: 129, flags: DIFlagBitField, extraData: i64 128)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !1431, file: !49, line: 222, baseType: !23, size: 1, offset: 130, flags: DIFlagBitField, extraData: i64 128)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !1431, file: !49, line: 223, baseType: !23, size: 1, offset: 131, flags: DIFlagBitField, extraData: i64 128)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1431, file: !49, line: 224, baseType: !23, size: 1, offset: 132, flags: DIFlagBitField, extraData: i64 128)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "nr_events", scope: !1431, file: !49, line: 226, baseType: !23, size: 32, offset: 160)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "nr_retries", scope: !1431, file: !49, line: 227, baseType: !186, size: 16, offset: 192)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "nr_hangs", scope: !1431, file: !49, line: 228, baseType: !186, size: 16, offset: 208)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "max_hang_time", scope: !1431, file: !49, line: 229, baseType: !23, size: 32, offset: 224)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !1431, file: !49, line: 235, baseType: !1391, size: 64, offset: 256)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !1431, file: !49, line: 236, baseType: !1424, size: 64, offset: 320)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !1431, file: !49, line: 237, baseType: !1391, size: 64, offset: 384)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !1431, file: !49, line: 238, baseType: !1424, size: 64, offset: 448)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !1431, file: !49, line: 239, baseType: !1451, size: 4096, align: 512, offset: 512)
!1451 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1427, size: 4096, align: 512, elements: !1452)
!1452 = !{!1453}
!1453 = !DISubrange(count: 8)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1427, file: !49, line: 161, baseType: !23, size: 32, offset: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !1427, file: !49, line: 162, baseType: !1456, size: 32, offset: 96)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !120, line: 32, baseType: !1457)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !250, line: 96, baseType: !62)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !1427, file: !49, line: 163, baseType: !1459, size: 32, offset: 128)
!1459 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !419, line: 274, baseType: !1460)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !419, line: 274, size: 32, elements: !1461)
!1461 = !{!1462}
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !1460, file: !419, line: 274, baseType: !418, size: 32)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !1427, file: !49, line: 164, baseType: !1424, size: 64, offset: 192)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1427, file: !49, line: 165, baseType: !1465, size: 128, offset: 256)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !1415, line: 14, size: 128, elements: !1466)
!1466 = !{!1467}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1465, file: !1415, line: 15, baseType: !1468, size: 128)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !577, line: 26, size: 128, elements: !1469)
!1469 = !{!1470, !1471}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !1468, file: !577, line: 27, baseType: !678, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !1468, file: !577, line: 28, baseType: !581, size: 64, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !1427, file: !49, line: 166, baseType: !1473, size: 64, offset: 384)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DISubroutineType(types: !1475)
!1475 = !{!1391}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1427, file: !49, line: 167, baseType: !1391, size: 64, offset: 448)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1411, file: !49, line: 123, baseType: !176, size: 8, offset: 448)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !1411, file: !49, line: 124, baseType: !176, size: 8, offset: 456)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !1411, file: !49, line: 125, baseType: !176, size: 8, offset: 464)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !1411, file: !49, line: 126, baseType: !176, size: 8, offset: 472)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1359, file: !54, line: 691, baseType: !108, size: 64, offset: 1152)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1359, file: !54, line: 692, baseType: !535, size: 256, offset: 1216)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1359, file: !54, line: 693, baseType: !1484, size: 192, offset: 1472)
!1484 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !1485, line: 41, baseType: !1486)
!1485 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "e208cb9cee90180930cad486d2bd155b")
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !1485, line: 37, size: 192, elements: !1487)
!1487 = !{!1488, !1489}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1486, file: !1485, line: 38, baseType: !148, size: 32)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !1486, file: !1485, line: 39, baseType: !119, size: 128, offset: 64)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1359, file: !54, line: 694, baseType: !1386, size: 64, offset: 1664)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1359, file: !54, line: 695, baseType: !168, size: 32, offset: 1728)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1359, file: !54, line: 696, baseType: !168, size: 32, offset: 1760)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1359, file: !54, line: 697, baseType: !23, size: 3, offset: 1792, flags: DIFlagBitField, extraData: i64 1792)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1359, file: !54, line: 698, baseType: !23, size: 1, offset: 1795, flags: DIFlagBitField, extraData: i64 1792)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1359, file: !54, line: 699, baseType: !23, size: 1, offset: 1796, flags: DIFlagBitField, extraData: i64 1792)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1359, file: !54, line: 700, baseType: !23, size: 1, offset: 1797, flags: DIFlagBitField, extraData: i64 1792)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "needs_force_resume", scope: !1359, file: !54, line: 701, baseType: !23, size: 1, offset: 1798, flags: DIFlagBitField, extraData: i64 1792)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1359, file: !54, line: 702, baseType: !23, size: 1, offset: 1799, flags: DIFlagBitField, extraData: i64 1792)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1359, file: !54, line: 703, baseType: !570, size: 1, offset: 1800, flags: DIFlagBitField, extraData: i64 1792)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1359, file: !54, line: 704, baseType: !23, size: 1, offset: 1801, flags: DIFlagBitField, extraData: i64 1792)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1359, file: !54, line: 705, baseType: !23, size: 1, offset: 1802, flags: DIFlagBitField, extraData: i64 1792)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1359, file: !54, line: 706, baseType: !23, size: 1, offset: 1803, flags: DIFlagBitField, extraData: i64 1792)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1359, file: !54, line: 707, baseType: !23, size: 1, offset: 1804, flags: DIFlagBitField, extraData: i64 1792)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1359, file: !54, line: 708, baseType: !23, size: 1, offset: 1805, flags: DIFlagBitField, extraData: i64 1792)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1359, file: !54, line: 709, baseType: !23, size: 32, offset: 1824)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1359, file: !54, line: 710, baseType: !53, size: 32, offset: 1856)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1359, file: !54, line: 711, baseType: !61, size: 32, offset: 1888)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "last_status", scope: !1359, file: !54, line: 712, baseType: !61, size: 32, offset: 1920)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1359, file: !54, line: 713, baseType: !62, size: 32, offset: 1952)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1359, file: !54, line: 714, baseType: !62, size: 32, offset: 1984)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1359, file: !54, line: 715, baseType: !108, size: 64, offset: 2048)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1359, file: !54, line: 716, baseType: !108, size: 64, offset: 2112)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1359, file: !54, line: 717, baseType: !108, size: 64, offset: 2176)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1359, file: !54, line: 718, baseType: !108, size: 64, offset: 2240)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1359, file: !54, line: 720, baseType: !1516, size: 64, offset: 2304)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !54, line: 632, size: 64, elements: !1518)
!1518 = !{!1519, !1520}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1517, file: !54, line: 633, baseType: !148, size: 32)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1517, file: !54, line: 634, baseType: !23, size: 32, offset: 32)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1359, file: !54, line: 721, baseType: !1522, size: 64, offset: 2368)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{null, !1200, !449}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1359, file: !54, line: 722, baseType: !1526, size: 64, offset: 2432)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !54, line: 722, flags: DIFlagFwdDecl)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1196, file: !42, line: 727, baseType: !1529, size: 64, offset: 4224)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !54, line: 742, size: 1792, elements: !1531)
!1531 = !{!1532, !1533, !1534, !1538, !1539, !1540}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1530, file: !54, line: 743, baseType: !1228, size: 1472)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1530, file: !54, line: 744, baseType: !1231, size: 64, offset: 1472)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1530, file: !54, line: 745, baseType: !1535, size: 64, offset: 1536)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{null, !1200, !570}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1530, file: !54, line: 746, baseType: !1231, size: 64, offset: 1600)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1530, file: !54, line: 747, baseType: !1222, size: 64, offset: 1664)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1530, file: !54, line: 748, baseType: !1222, size: 64, offset: 1728)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "msi", scope: !1196, file: !42, line: 736, baseType: !1542, size: 128, offset: 4288)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_msi_info", file: !42, line: 529, size: 128, elements: !1543)
!1543 = !{!1544, !1548}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "domain", scope: !1542, file: !42, line: 531, baseType: !1545, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !1547, line: 13, flags: DIFlagFwdDecl)
!1547 = !DIFile(filename: "./arch/x86/include/asm/x86_init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "37b03fd889663373667a69b4c2d1f7d0")
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1542, file: !42, line: 532, baseType: !1549, size: 64, offset: 64)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DICompositeType(tag: DW_TAG_structure_type, name: "msi_device_data", file: !42, line: 49, flags: DIFlagFwdDecl)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1196, file: !42, line: 738, baseType: !1552, size: 64, offset: 4416)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1554)
!1554 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !42, line: 738, flags: DIFlagFwdDecl)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1196, file: !42, line: 740, baseType: !1556, size: 64, offset: 4480)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1196, file: !42, line: 741, baseType: !108, size: 64, offset: 4544)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1196, file: !42, line: 746, baseType: !108, size: 64, offset: 4608)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1196, file: !42, line: 747, baseType: !1560, size: 64, offset: 4672)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1562)
!1562 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !42, line: 747, flags: DIFlagFwdDecl)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1196, file: !42, line: 749, baseType: !1564, size: 64, offset: 4736)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !42, line: 428, size: 128, elements: !1566)
!1566 = !{!1567, !1568, !1569}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1565, file: !42, line: 433, baseType: !23, size: 32)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "min_align_mask", scope: !1565, file: !42, line: 434, baseType: !23, size: 32, offset: 32)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1565, file: !42, line: 435, baseType: !266, size: 64, offset: 64)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1196, file: !42, line: 751, baseType: !119, size: 128, offset: 4800)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "dma_io_tlb_mem", scope: !1196, file: !42, line: 762, baseType: !1572, size: 64, offset: 4928)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_tlb_mem", file: !42, line: 762, flags: DIFlagFwdDecl)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1196, file: !42, line: 770, baseType: !1575, offset: 4992)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1576, line: 5, elements: !352)
!1576 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "f8292cdac17859a8f96a30fcf44b1867")
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1196, file: !42, line: 772, baseType: !1578, size: 64, offset: 4992)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1580, line: 48, size: 1152, elements: !1581)
!1580 = !DIFile(filename: "./include/linux/of.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "d16edcf8b1e6bdc1f5c1846077439394")
!1581 = !{!1582, !1583, !1585, !1586, !1587, !1595, !1596, !1597, !1598, !1599, !1600}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1579, file: !1580, line: 49, baseType: !137, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1579, file: !1580, line: 50, baseType: !1584, size: 32, offset: 64)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1580, line: 25, baseType: !1059)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1579, file: !1580, line: 51, baseType: !137, size: 64, offset: 128)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1579, file: !1580, line: 52, baseType: !1166, size: 512, offset: 192)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1579, file: !1580, line: 54, baseType: !1588, size: 64, offset: 704)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1580, line: 28, size: 256, elements: !1590)
!1590 = !{!1591, !1592, !1593, !1594}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1589, file: !1580, line: 29, baseType: !216, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1589, file: !1580, line: 30, baseType: !62, size: 32, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1589, file: !1580, line: 31, baseType: !113, size: 64, offset: 128)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1589, file: !1580, line: 32, baseType: !1588, size: 64, offset: 192)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1579, file: !1580, line: 55, baseType: !1588, size: 64, offset: 768)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1579, file: !1580, line: 56, baseType: !1578, size: 64, offset: 832)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1579, file: !1580, line: 57, baseType: !1578, size: 64, offset: 896)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1579, file: !1580, line: 58, baseType: !1578, size: 64, offset: 960)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1579, file: !1580, line: 62, baseType: !266, size: 64, offset: 1024)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1579, file: !1580, line: 63, baseType: !113, size: 64, offset: 1088)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1196, file: !42, line: 773, baseType: !1170, size: 64, offset: 5056)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "numa_node", scope: !1196, file: !42, line: 776, baseType: !62, size: 32, offset: 5120)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1196, file: !42, line: 778, baseType: !1604, size: 32, offset: 5152)
!1604 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !120, line: 21, baseType: !1605)
!1605 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !120, line: 18, baseType: !1059)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1196, file: !42, line: 779, baseType: !1059, size: 32, offset: 5184)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1196, file: !42, line: 781, baseType: !148, size: 32, offset: 5216)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1196, file: !42, line: 782, baseType: !119, size: 128, offset: 5248)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1196, file: !42, line: 784, baseType: !1610, size: 64, offset: 5376)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1612)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1613, line: 52, size: 768, elements: !1614)
!1613 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "3f93785d1de04b568220b0cda6b3001b")
!1614 = !{!1615, !1616, !1617, !1618, !1619, !1623, !1627, !1628, !1629, !1630, !1634, !1638}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1612, file: !1613, line: 53, baseType: !137, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1612, file: !1613, line: 55, baseType: !268, size: 64, offset: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1612, file: !1613, line: 56, baseType: !268, size: 64, offset: 128)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1612, file: !1613, line: 58, baseType: !1213, size: 64, offset: 192)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1612, file: !1613, line: 59, baseType: !1620, size: 64, offset: 256)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!216, !1194, !1220}
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1612, file: !1613, line: 61, baseType: !1624, size: 64, offset: 320)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{null, !1610}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1612, file: !1613, line: 62, baseType: !1222, size: 64, offset: 384)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1612, file: !1613, line: 64, baseType: !1231, size: 64, offset: 448)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1612, file: !1613, line: 66, baseType: !609, size: 64, offset: 512)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1612, file: !1613, line: 67, baseType: !1631, size: 64, offset: 576)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!491, !1194}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1612, file: !1613, line: 69, baseType: !1635, size: 64, offset: 640)
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DISubroutineType(types: !1637)
!1637 = !{null, !1194, !644, !651}
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1612, file: !1613, line: 71, baseType: !1226, size: 64, offset: 704)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1196, file: !42, line: 785, baseType: !268, size: 64, offset: 5440)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1196, file: !42, line: 787, baseType: !1222, size: 64, offset: 5504)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1196, file: !42, line: 788, baseType: !1642, size: 64, offset: 5568)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !42, line: 46, flags: DIFlagFwdDecl)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1196, file: !42, line: 789, baseType: !1645, size: 64, offset: 5632)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !42, line: 48, flags: DIFlagFwdDecl)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "physical_location", scope: !1196, file: !42, line: 791, baseType: !1648, size: 64, offset: 5696)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_physical_location", file: !42, line: 597, size: 128, elements: !1650)
!1650 = !{!1651, !1652, !1653, !1654, !1655}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "panel", scope: !1649, file: !42, line: 598, baseType: !69, size: 32)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "vertical_position", scope: !1649, file: !42, line: 599, baseType: !78, size: 32, offset: 32)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "horizontal_position", scope: !1649, file: !42, line: 600, baseType: !83, size: 32, offset: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "dock", scope: !1649, file: !42, line: 601, baseType: !570, size: 8, offset: 96)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "lid", scope: !1649, file: !42, line: 602, baseType: !570, size: 8, offset: 104)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1196, file: !42, line: 793, baseType: !88, size: 32, offset: 5760)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1196, file: !42, line: 795, baseType: !570, size: 1, offset: 5792, flags: DIFlagBitField, extraData: i64 5792)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1196, file: !42, line: 796, baseType: !570, size: 1, offset: 5793, flags: DIFlagBitField, extraData: i64 5792)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1196, file: !42, line: 797, baseType: !570, size: 1, offset: 5794, flags: DIFlagBitField, extraData: i64 5792)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1196, file: !42, line: 798, baseType: !570, size: 1, offset: 5795, flags: DIFlagBitField, extraData: i64 5792)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "can_match", scope: !1196, file: !42, line: 799, baseType: !570, size: 1, offset: 5796, flags: DIFlagBitField, extraData: i64 5792)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "device_dma_supported", scope: !1174, file: !1167, line: 131, baseType: !1185, size: 64, offset: 256)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_dma_attr", scope: !1174, file: !1167, line: 133, baseType: !1664, size: 64, offset: 320)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!94, !1188}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1174, file: !1167, line: 134, baseType: !1668, size: 64, offset: 384)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!570, !1188, !137}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1174, file: !1167, line: 136, baseType: !1672, size: 64, offset: 448)
!1672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1673, size: 64)
!1673 = !DISubroutineType(types: !1674)
!1674 = !{!62, !1188, !137, !23, !113, !263}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1174, file: !1167, line: 141, baseType: !1676, size: 64, offset: 512)
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = !DISubroutineType(types: !1678)
!1678 = !{!62, !1188, !137, !1126, !263}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1174, file: !1167, line: 144, baseType: !1680, size: 64, offset: 576)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!137, !1188}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1174, file: !1167, line: 145, baseType: !1680, size: 64, offset: 640)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1174, file: !1167, line: 146, baseType: !1685, size: 64, offset: 704)
!1685 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1686, size: 64)
!1686 = !DISubroutineType(types: !1687)
!1687 = !{!1170, !1188}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1174, file: !1167, line: 148, baseType: !1689, size: 64, offset: 768)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!1170, !1188, !1170}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1174, file: !1167, line: 151, baseType: !1693, size: 64, offset: 832)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!1170, !1188, !137}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1174, file: !1167, line: 153, baseType: !1697, size: 64, offset: 896)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!62, !1188, !137, !137, !23, !23, !1700}
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1167, line: 94, size: 640, elements: !1702)
!1702 = !{!1703, !1704, !1705}
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1701, file: !1167, line: 95, baseType: !1170, size: 64)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1701, file: !1167, line: 96, baseType: !23, size: 32, offset: 64)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1701, file: !1167, line: 97, baseType: !1706, size: 512, offset: 128)
!1706 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 512, elements: !1452)
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1174, file: !1167, line: 158, baseType: !1689, size: 64, offset: 960)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1174, file: !1167, line: 161, baseType: !1685, size: 64, offset: 1024)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1174, file: !1167, line: 163, baseType: !1177, size: 64, offset: 1088)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1174, file: !1167, line: 164, baseType: !1711, size: 64, offset: 1152)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DISubroutineType(types: !1713)
!1713 = !{!62, !1188, !1714}
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1167, line: 73, size: 128, elements: !1716)
!1716 = !{!1717, !1718, !1719}
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1715, file: !1167, line: 74, baseType: !23, size: 32)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1715, file: !1167, line: 75, baseType: !23, size: 32, offset: 32)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1715, file: !1167, line: 76, baseType: !1188, size: 64, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "iomap", scope: !1174, file: !1167, line: 166, baseType: !1721, size: 64, offset: 1216)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!113, !1170, !62}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "irq_get", scope: !1174, file: !1167, line: 167, baseType: !1725, size: 64, offset: 1280)
!1725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1726, size: 64)
!1726 = !DISubroutineType(types: !1727)
!1727 = !{!62, !1188, !23}
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1174, file: !1167, line: 168, baseType: !1729, size: 64, offset: 1344)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1730, size: 64)
!1730 = !DISubroutineType(types: !1731)
!1731 = !{!62, !1170}
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1166, file: !1167, line: 44, baseType: !1200, size: 64, offset: 128)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1166, file: !1167, line: 45, baseType: !119, size: 128, offset: 192)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1166, file: !1167, line: 46, baseType: !119, size: 128, offset: 320)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1166, file: !1167, line: 47, baseType: !176, size: 8, offset: 448)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !1158, file: !1159, line: 372, baseType: !119, size: 128, offset: 640)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !1158, file: !1159, line: 373, baseType: !119, size: 128, offset: 768)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1158, file: !1159, line: 374, baseType: !1739, size: 32, offset: 896)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !1159, line: 181, size: 32, elements: !1740)
!1740 = !{!1741, !1742, !1743, !1744, !1745, !1746}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !1739, file: !1159, line: 182, baseType: !1059, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1739, file: !1159, line: 183, baseType: !1059, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !1739, file: !1159, line: 184, baseType: !1059, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !1739, file: !1159, line: 185, baseType: !1059, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !1739, file: !1159, line: 186, baseType: !1059, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1739, file: !1159, line: 187, baseType: !1059, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1158, file: !1159, line: 375, baseType: !1748, size: 32, offset: 928)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !1159, line: 192, size: 32, elements: !1749)
!1749 = !{!1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !1748, file: !1159, line: 193, baseType: !1059, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !1748, file: !1159, line: 194, baseType: !1059, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !1748, file: !1159, line: 195, baseType: !1059, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !1748, file: !1159, line: 196, baseType: !1059, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !1748, file: !1159, line: 197, baseType: !1059, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !1748, file: !1159, line: 198, baseType: !1059, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !1748, file: !1159, line: 199, baseType: !1059, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !1748, file: !1159, line: 200, baseType: !1059, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !1748, file: !1159, line: 201, baseType: !1059, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !1748, file: !1159, line: 202, baseType: !1059, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !1748, file: !1159, line: 203, baseType: !1059, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !1748, file: !1159, line: 204, baseType: !1059, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !1748, file: !1159, line: 205, baseType: !1059, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "honor_deps", scope: !1748, file: !1159, line: 206, baseType: !1059, size: 1, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1748, file: !1159, line: 207, baseType: !1059, size: 18, offset: 14, flags: DIFlagBitField, extraData: i64 0)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !1158, file: !1159, line: 376, baseType: !1766, size: 960, offset: 960)
!1766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !1159, line: 238, size: 960, elements: !1767)
!1767 = !{!1768, !1771, !1772, !1780, !1782, !1783, !1784, !1789, !1794}
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !1766, file: !1159, line: 239, baseType: !1769, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !1159, line: 220, baseType: !1770)
!1770 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 64, elements: !1452)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "instance_no", scope: !1766, file: !1159, line: 240, baseType: !62, size: 32, offset: 64)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1766, file: !1159, line: 241, baseType: !1773, size: 32, offset: 96)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !1159, line: 230, size: 32, elements: !1774)
!1774 = !{!1775, !1776, !1777, !1778, !1779}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !1773, file: !1159, line: 231, baseType: !1059, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !1773, file: !1159, line: 232, baseType: !1059, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !1773, file: !1159, line: 233, baseType: !1059, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "backlight", scope: !1773, file: !1159, line: 234, baseType: !1059, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1773, file: !1159, line: 235, baseType: !1059, size: 28, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !1766, file: !1159, line: 242, baseType: !1781, size: 64, offset: 128)
!1781 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !1159, line: 221, baseType: !108)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !1766, file: !1159, line: 243, baseType: !216, size: 64, offset: 192)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1766, file: !1159, line: 244, baseType: !119, size: 128, offset: 256)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !1766, file: !1159, line: 245, baseType: !1785, size: 320, offset: 384)
!1785 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !1159, line: 222, baseType: !1786)
!1786 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 320, elements: !1787)
!1787 = !{!1788}
!1788 = !DISubrange(count: 40)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !1766, file: !1159, line: 246, baseType: !1790, size: 160, offset: 704)
!1790 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !1159, line: 223, baseType: !1791)
!1791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 160, elements: !1792)
!1792 = !{!1793}
!1793 = !DISubrange(count: 20)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !1766, file: !1159, line: 247, baseType: !1795, size: 64, offset: 896)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !107, line: 908, size: 192, elements: !1797)
!1797 = !{!1798, !1800, !1805, !1811, !1818, !1824, !1830, !1838}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1796, file: !107, line: 909, baseType: !1799, size: 32)
!1799 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !107, line: 644, baseType: !1059)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !1796, file: !107, line: 913, baseType: !1801, size: 128)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1796, file: !107, line: 910, size: 128, elements: !1802)
!1802 = !{!1803, !1804}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1801, file: !107, line: 911, baseType: !1799, size: 32)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !1801, file: !107, line: 912, baseType: !108, size: 64, offset: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !1796, file: !107, line: 919, baseType: !1806, size: 128)
!1806 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1796, file: !107, line: 915, size: 128, elements: !1807)
!1807 = !{!1808, !1809, !1810}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1806, file: !107, line: 916, baseType: !1799, size: 32)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1806, file: !107, line: 917, baseType: !1059, size: 32, offset: 32)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1806, file: !107, line: 918, baseType: !216, size: 64, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !1796, file: !107, line: 925, baseType: !1812, size: 128)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1796, file: !107, line: 921, size: 128, elements: !1813)
!1813 = !{!1814, !1815, !1816}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1812, file: !107, line: 922, baseType: !1799, size: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !1812, file: !107, line: 923, baseType: !1059, size: 32, offset: 32)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1812, file: !107, line: 924, baseType: !1817, size: 64, offset: 64)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !1796, file: !107, line: 931, baseType: !1819, size: 128)
!1819 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1796, file: !107, line: 927, size: 128, elements: !1820)
!1820 = !{!1821, !1822, !1823}
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1819, file: !107, line: 928, baseType: !1799, size: 32)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1819, file: !107, line: 929, baseType: !1059, size: 32, offset: 32)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !1819, file: !107, line: 930, baseType: !1795, size: 64, offset: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !1796, file: !107, line: 937, baseType: !1825, size: 128)
!1825 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1796, file: !107, line: 933, size: 128, elements: !1826)
!1826 = !{!1827, !1828, !1829}
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1825, file: !107, line: 934, baseType: !1799, size: 32)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !1825, file: !107, line: 935, baseType: !1799, size: 32, offset: 32)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !1825, file: !107, line: 936, baseType: !1164, size: 64, offset: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !1796, file: !107, line: 944, baseType: !1831, size: 192)
!1831 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1796, file: !107, line: 939, size: 192, elements: !1832)
!1832 = !{!1833, !1834, !1835, !1837}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1831, file: !107, line: 940, baseType: !1799, size: 32)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !1831, file: !107, line: 941, baseType: !1059, size: 32, offset: 32)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !1831, file: !107, line: 942, baseType: !1836, size: 64, offset: 64)
!1836 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !107, line: 128, baseType: !108)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !1831, file: !107, line: 943, baseType: !1059, size: 32, offset: 128)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !1796, file: !107, line: 950, baseType: !1839, size: 96)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1796, file: !107, line: 946, size: 96, elements: !1840)
!1840 = !{!1841, !1842, !1843}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1839, file: !107, line: 947, baseType: !1799, size: 32)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !1839, file: !107, line: 948, baseType: !1059, size: 32, offset: 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !1839, file: !107, line: 949, baseType: !1059, size: 32, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1158, file: !1159, line: 377, baseType: !1845, size: 1408, offset: 1920)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !1159, line: 280, size: 1408, elements: !1846)
!1846 = !{!1847, !1848, !1858, !1871}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1845, file: !1159, line: 281, baseType: !62, size: 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1845, file: !1159, line: 282, baseType: !1849, size: 32, offset: 32)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !1159, line: 259, size: 32, elements: !1850)
!1850 = !{!1851, !1852, !1853, !1854, !1855, !1856, !1857}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !1849, file: !1159, line: 260, baseType: !1059, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !1849, file: !1159, line: 261, baseType: !1059, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !1849, file: !1159, line: 262, baseType: !1059, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !1849, file: !1159, line: 263, baseType: !1059, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !1849, file: !1159, line: 264, baseType: !1059, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !1849, file: !1159, line: 265, baseType: !1059, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1849, file: !1159, line: 266, baseType: !1059, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1845, file: !1159, line: 283, baseType: !1859, size: 1280, offset: 64)
!1859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1860, size: 1280, elements: !5)
!1860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !1159, line: 269, size: 256, elements: !1861)
!1861 = !{!1862, !1868, !1869, !1870}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1860, file: !1159, line: 274, baseType: !1863, size: 8)
!1863 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1860, file: !1159, line: 270, size: 8, elements: !1864)
!1864 = !{!1865, !1866, !1867}
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1863, file: !1159, line: 271, baseType: !176, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !1863, file: !1159, line: 272, baseType: !176, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1863, file: !1159, line: 273, baseType: !176, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1860, file: !1159, line: 275, baseType: !62, size: 32, offset: 32)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1860, file: !1159, line: 276, baseType: !62, size: 32, offset: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !1860, file: !1159, line: 277, baseType: !119, size: 128, offset: 128)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "state_for_enumeration", scope: !1845, file: !1159, line: 284, baseType: !176, size: 8, offset: 1344)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1158, file: !1159, line: 378, baseType: !1873, size: 640, offset: 3328)
!1873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !1159, line: 330, size: 640, elements: !1874)
!1874 = !{!1875, !1876, !1877, !1878, !1879, !1884, !1893, !1894, !1895}
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !1873, file: !1159, line: 331, baseType: !1164, size: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !1873, file: !1159, line: 332, baseType: !108, size: 64, offset: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !1873, file: !1159, line: 333, baseType: !108, size: 64, offset: 128)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !1873, file: !1159, line: 334, baseType: !119, size: 128, offset: 192)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1873, file: !1159, line: 335, baseType: !1880, size: 8, offset: 320)
!1880 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !1159, line: 320, size: 8, elements: !1881)
!1881 = !{!1882, !1883}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1880, file: !1159, line: 321, baseType: !176, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !1880, file: !1159, line: 322, baseType: !176, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !1873, file: !1159, line: 336, baseType: !1885, size: 128, offset: 384)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !1159, line: 325, size: 128, elements: !1886)
!1886 = !{!1887, !1892}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1885, file: !1159, line: 326, baseType: !1888, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DISubroutineType(types: !1890)
!1890 = !{null, !1891}
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1885, file: !1159, line: 327, baseType: !1200, size: 64, offset: 64)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !1873, file: !1159, line: 337, baseType: !1377, size: 64, offset: 512)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !1873, file: !1159, line: 338, baseType: !62, size: 32, offset: 576)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !1873, file: !1159, line: 339, baseType: !62, size: 32, offset: 608)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !1158, file: !1159, line: 379, baseType: !1897, size: 192, offset: 3968)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !1159, line: 312, size: 192, elements: !1898)
!1898 = !{!1899, !1900, !1904, !1905}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1897, file: !1159, line: 313, baseType: !62, size: 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1897, file: !1159, line: 314, baseType: !1901, size: 8, offset: 32)
!1901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !1159, line: 298, size: 8, elements: !1902)
!1902 = !{!1903}
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1901, file: !1159, line: 299, baseType: !176, size: 8, flags: DIFlagBitField, extraData: i64 0)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !1897, file: !1159, line: 315, baseType: !62, size: 32, offset: 64)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !1897, file: !1159, line: 316, baseType: !1906, size: 64, offset: 128)
!1906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1907, size: 64)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !1159, line: 302, size: 64, elements: !1908)
!1908 = !{!1909, !1914, !1915, !1916}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1907, file: !1159, line: 306, baseType: !1910, size: 8)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1907, file: !1159, line: 303, size: 8, elements: !1911)
!1911 = !{!1912, !1913}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !1910, file: !1159, line: 304, baseType: !176, size: 1, flags: DIFlagBitField, extraData: i64 0)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1910, file: !1159, line: 305, baseType: !176, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1907, file: !1159, line: 307, baseType: !176, size: 8, offset: 8)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !1907, file: !1159, line: 308, baseType: !176, size: 8, offset: 16)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !1907, file: !1159, line: 309, baseType: !62, size: 32, offset: 32)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1158, file: !1159, line: 380, baseType: !1918, size: 64, offset: 4160)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !1159, line: 212, size: 64, elements: !1919)
!1919 = !{!1920}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1918, file: !1159, line: 213, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !1159, line: 86, flags: DIFlagFwdDecl)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1158, file: !1159, line: 381, baseType: !1924, size: 384, offset: 4224)
!1924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !1159, line: 357, size: 384, elements: !1925)
!1925 = !{!1926, !1929, !1930, !1931}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !1924, file: !1159, line: 358, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1928, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1796)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1924, file: !1159, line: 359, baseType: !119, size: 128, offset: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !1924, file: !1159, line: 360, baseType: !1927, size: 64, offset: 192)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !1924, file: !1159, line: 361, baseType: !119, size: 128, offset: 256)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !1158, file: !1159, line: 382, baseType: !1933, size: 64, offset: 4608)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !1159, line: 124, size: 1216, elements: !1935)
!1935 = !{!1936, !1937, !1938, !1943, !1947, !1951, !1952, !1953}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !1934, file: !1159, line: 125, baseType: !1297, size: 64)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !1934, file: !1159, line: 126, baseType: !119, size: 128, offset: 64)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1934, file: !1159, line: 127, baseType: !1939, size: 64, offset: 192)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DISubroutineType(types: !1941)
!1941 = !{!570, !137, !1942}
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1297, size: 64)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !1934, file: !1159, line: 128, baseType: !1944, size: 64, offset: 256)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DISubroutineType(types: !1946)
!1946 = !{!62, !1157, !1297}
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1934, file: !1159, line: 129, baseType: !1948, size: 64, offset: 320)
!1948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1949, size: 64)
!1949 = !DISubroutineType(types: !1950)
!1950 = !{null, !1157}
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !1934, file: !1159, line: 130, baseType: !1222, size: 64, offset: 384)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !1934, file: !1159, line: 131, baseType: !1222, size: 64, offset: 448)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !1934, file: !1159, line: 132, baseType: !1954, size: 704, offset: 512)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !1159, line: 110, size: 704, elements: !1955)
!1955 = !{!1956, !1957, !1961, !1962, !1963}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1954, file: !1159, line: 111, baseType: !133, size: 512)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !1954, file: !1159, line: 112, baseType: !1958, size: 64, offset: 512)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!62, !1157}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !1954, file: !1159, line: 113, baseType: !1948, size: 64, offset: 576)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !1954, file: !1159, line: 114, baseType: !570, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !1954, file: !1159, line: 115, baseType: !570, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !1158, file: !1159, line: 383, baseType: !1965, size: 64, offset: 4672)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !1159, line: 140, size: 256, elements: !1967)
!1967 = !{!1968, !1969, !1973, !1977}
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !1966, file: !1159, line: 141, baseType: !1157, size: 64)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !1966, file: !1159, line: 142, baseType: !1970, size: 64, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1971, size: 64)
!1971 = !DISubroutineType(types: !1972)
!1972 = !{!62, !1157, !1059}
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1966, file: !1159, line: 143, baseType: !1974, size: 64, offset: 128)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = !DISubroutineType(types: !1976)
!1976 = !{null, !1157, !1059}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !1966, file: !1159, line: 144, baseType: !1948, size: 64, offset: 192)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !1158, file: !1159, line: 384, baseType: !1979, size: 64, offset: 4736)
!1979 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1980, size: 64)
!1980 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1981)
!1981 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !1159, line: 364, flags: DIFlagFwdDecl)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1158, file: !1159, line: 385, baseType: !113, size: 64, offset: 4800)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1158, file: !1159, line: 386, baseType: !1196, size: 5824, offset: 4864)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !1158, file: !1159, line: 387, baseType: !23, size: 32, offset: 10688)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !1158, file: !1159, line: 388, baseType: !23, size: 32, offset: 10720)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !1158, file: !1159, line: 389, baseType: !119, size: 128, offset: 10752)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !1158, file: !1159, line: 390, baseType: !470, size: 256, offset: 10880)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1158, file: !1159, line: 391, baseType: !1948, size: 64, offset: 11136)
!1989 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !120, line: 154, baseType: !23)
!1990 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_status", file: !107, line: 421, baseType: !1059)
!1991 = !{!0, !7, !12, !17, !1992, !1996, !2001, !2004, !2009, !2012, !2017, !2079, !2081, !2086, !2088, !2091, !2094, !2099, !2102, !2107, !2109, !2111, !2113, !2115, !2117, !2119, !2121, !2123, !2128, !2130, !2174, !2177, !2179}
!1992 = !DIGlobalVariableExpression(var: !1993, expr: !DIExpression())
!1993 = distinct !DIGlobalVariable(name: "__exitcall_acpi_fan_driver_exit", scope: !19, file: !2, line: 463, type: !1994, isLocal: true, isDefinition: true)
!1994 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !1995, line: 120, baseType: !1153)
!1995 = !DIFile(filename: "./include/linux/init.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "61b716b3aa2dd8132cf1514951c72abe")
!1996 = !DIGlobalVariableExpression(var: !1997, expr: !DIExpression())
!1997 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author231", scope: !19, file: !2, line: 465, type: !1998, isLocal: true, isDefinition: true, align: 8)
!1998 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 224, elements: !1999)
!1999 = !{!2000}
!2000 = !DISubrange(count: 28)
!2001 = !DIGlobalVariableExpression(var: !2002, expr: !DIExpression())
!2002 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description232", scope: !19, file: !2, line: 466, type: !2003, isLocal: true, isDefinition: true, align: 8)
!2003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 256, elements: !1288)
!2004 = !DIGlobalVariableExpression(var: !2005, expr: !DIExpression())
!2005 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file233", scope: !19, file: !2, line: 467, type: !2006, isLocal: true, isDefinition: true, align: 8)
!2006 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 208, elements: !2007)
!2007 = !{!2008}
!2008 = !DISubrange(count: 26)
!2009 = !DIGlobalVariableExpression(var: !2010, expr: !DIExpression())
!2010 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license234", scope: !19, file: !2, line: 467, type: !2011, isLocal: true, isDefinition: true, align: 8)
!2011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 128, elements: !1303)
!2012 = !DIGlobalVariableExpression(var: !2013, expr: !DIExpression())
!2013 = distinct !DIGlobalVariable(scope: null, file: !2, line: 457, type: !2014, isLocal: true, isDefinition: true)
!2014 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 72, elements: !2015)
!2015 = !{!2016}
!2016 = !DISubrange(count: 9)
!2017 = !DIGlobalVariableExpression(var: !2018, expr: !DIExpression())
!2018 = distinct !DIGlobalVariable(name: "acpi_fan_driver", scope: !19, file: !2, line: 453, type: !2019, isLocal: true, isDefinition: true)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !2020, line: 236, size: 1664, elements: !2021)
!2020 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "1dac52bf003d860ac3c23951fd976693")
!2021 = !{!2022, !2064, !2065, !2069, !2070, !2074, !2075, !2076, !2077, !2078}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2019, file: !2020, line: 237, baseType: !2023, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{!62, !2026}
!2026 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2027, size: 64)
!2027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !2020, line: 23, size: 6464, elements: !2028)
!2028 = !{!2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2051, !2058, !2059, !2062}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2027, file: !2020, line: 24, baseType: !137, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2027, file: !2020, line: 25, baseType: !62, size: 32, offset: 64)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !2027, file: !2020, line: 26, baseType: !570, size: 8, offset: 96)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2027, file: !2020, line: 27, baseType: !1196, size: 5824, offset: 128)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !2027, file: !2020, line: 28, baseType: !108, size: 64, offset: 5952)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !2027, file: !2020, line: 29, baseType: !1565, size: 128, offset: 6016)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !2027, file: !2020, line: 30, baseType: !1059, size: 32, offset: 6144)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !2027, file: !2020, line: 31, baseType: !2037, size: 64, offset: 6208)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2039, line: 21, size: 512, elements: !2040)
!2039 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "28f44e500f5926227d9214b96bdcc01a")
!2040 = !{!2041, !2044, !2045, !2046, !2047, !2048, !2049, !2050}
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2038, file: !2039, line: 22, baseType: !2042, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !120, line: 164, baseType: !2043)
!2043 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !120, line: 159, baseType: !108)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2038, file: !2039, line: 23, baseType: !2042, size: 64, offset: 64)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2038, file: !2039, line: 24, baseType: !137, size: 64, offset: 128)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2038, file: !2039, line: 25, baseType: !266, size: 64, offset: 192)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2038, file: !2039, line: 26, baseType: !266, size: 64, offset: 256)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2038, file: !2039, line: 27, baseType: !2037, size: 64, offset: 320)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2038, file: !2039, line: 27, baseType: !2037, size: 64, offset: 384)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2038, file: !2039, line: 27, baseType: !2037, size: 64, offset: 448)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !2027, file: !2020, line: 33, baseType: !2052, size: 64, offset: 6272)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2054)
!2054 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !1284, line: 607, size: 256, elements: !2055)
!2055 = !{!2056, !2057}
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2054, file: !1284, line: 608, baseType: !1791, size: 160)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2054, file: !1284, line: 609, baseType: !1306, size: 64, offset: 192)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !2027, file: !2020, line: 38, baseType: !137, size: 64, offset: 6336)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !2027, file: !2020, line: 41, baseType: !2060, size: 64, offset: 6400)
!2060 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2061, size: 64)
!2061 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !2020, line: 19, flags: DIFlagFwdDecl)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !2027, file: !2020, line: 44, baseType: !2063, offset: 6464)
!2063 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !1576, line: 8, elements: !352)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2019, file: !2020, line: 247, baseType: !2023, size: 64, offset: 64)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "remove_new", scope: !2019, file: !2020, line: 248, baseType: !2066, size: 64, offset: 128)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DISubroutineType(types: !2068)
!2068 = !{null, !2026}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2019, file: !2020, line: 250, baseType: !2066, size: 64, offset: 192)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2019, file: !2020, line: 251, baseType: !2071, size: 64, offset: 256)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!62, !2026, !1317}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2019, file: !2020, line: 252, baseType: !2023, size: 64, offset: 320)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2019, file: !2020, line: 253, baseType: !1272, size: 1152, offset: 384)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2019, file: !2020, line: 254, baseType: !2052, size: 64, offset: 1536)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !2019, file: !2020, line: 255, baseType: !570, size: 8, offset: 1600)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "driver_managed_dma", scope: !2019, file: !2020, line: 263, baseType: !570, size: 8, offset: 1608)
!2079 = !DIGlobalVariableExpression(var: !2080, expr: !DIExpression())
!2080 = distinct !DIGlobalVariable(scope: null, file: !2, line: 324, type: !14, isLocal: true, isDefinition: true)
!2081 = !DIGlobalVariableExpression(var: !2082, expr: !DIExpression())
!2082 = distinct !DIGlobalVariable(scope: null, file: !2, line: 347, type: !2083, isLocal: true, isDefinition: true)
!2083 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 280, elements: !2084)
!2084 = !{!2085}
!2085 = !DISubrange(count: 35)
!2086 = !DIGlobalVariableExpression(var: !2087, expr: !DIExpression())
!2087 = distinct !DIGlobalVariable(scope: null, file: !2, line: 352, type: !1770, isLocal: true, isDefinition: true)
!2088 = !DIGlobalVariableExpression(var: !2089, expr: !DIExpression())
!2089 = distinct !DIGlobalVariable(scope: null, file: !2, line: 353, type: !2090, isLocal: true, isDefinition: true)
!2090 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 32, elements: !451)
!2091 = !DIGlobalVariableExpression(var: !2092, expr: !DIExpression())
!2092 = distinct !DIGlobalVariable(scope: null, file: !2, line: 369, type: !2093, isLocal: true, isDefinition: true)
!2093 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 128, elements: !1303)
!2094 = !DIGlobalVariableExpression(var: !2095, expr: !DIExpression())
!2095 = distinct !DIGlobalVariable(scope: null, file: !2, line: 371, type: !2096, isLocal: true, isDefinition: true)
!2096 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 376, elements: !2097)
!2097 = !{!2098}
!2098 = !DISubrange(count: 47)
!2099 = !DIGlobalVariableExpression(var: !2100, expr: !DIExpression())
!2100 = distinct !DIGlobalVariable(scope: null, file: !2, line: 377, type: !2101, isLocal: true, isDefinition: true)
!2101 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 56, elements: !933)
!2102 = !DIGlobalVariableExpression(var: !2103, expr: !DIExpression())
!2103 = distinct !DIGlobalVariable(scope: null, file: !2, line: 379, type: !2104, isLocal: true, isDefinition: true)
!2104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 304, elements: !2105)
!2105 = !{!2106}
!2106 = !DISubrange(count: 38)
!2107 = !DIGlobalVariableExpression(var: !2108, expr: !DIExpression())
!2108 = distinct !DIGlobalVariable(scope: null, file: !2, line: 208, type: !3, isLocal: true, isDefinition: true)
!2109 = !DIGlobalVariableExpression(var: !2110, expr: !DIExpression())
!2110 = distinct !DIGlobalVariable(scope: null, file: !2, line: 209, type: !3, isLocal: true, isDefinition: true)
!2111 = !DIGlobalVariableExpression(var: !2112, expr: !DIExpression())
!2112 = distinct !DIGlobalVariable(scope: null, file: !2, line: 210, type: !3, isLocal: true, isDefinition: true)
!2113 = !DIGlobalVariableExpression(var: !2114, expr: !DIExpression())
!2114 = distinct !DIGlobalVariable(scope: null, file: !2, line: 218, type: !3, isLocal: true, isDefinition: true)
!2115 = !DIGlobalVariableExpression(var: !2116, expr: !DIExpression())
!2116 = distinct !DIGlobalVariable(scope: null, file: !2, line: 230, type: !14, isLocal: true, isDefinition: true)
!2117 = !DIGlobalVariableExpression(var: !2118, expr: !DIExpression())
!2118 = distinct !DIGlobalVariable(scope: null, file: !2, line: 237, type: !9, isLocal: true, isDefinition: true)
!2119 = !DIGlobalVariableExpression(var: !2120, expr: !DIExpression())
!2120 = distinct !DIGlobalVariable(scope: null, file: !2, line: 279, type: !14, isLocal: true, isDefinition: true)
!2121 = !DIGlobalVariableExpression(var: !2122, expr: !DIExpression())
!2122 = distinct !DIGlobalVariable(scope: null, file: !2, line: 289, type: !14, isLocal: true, isDefinition: true)
!2123 = !DIGlobalVariableExpression(var: !2124, expr: !DIExpression())
!2124 = distinct !DIGlobalVariable(scope: null, file: !2, line: 294, type: !2125, isLocal: true, isDefinition: true)
!2125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !4, size: 48, elements: !2126)
!2126 = !{!2127}
!2127 = !DISubrange(count: 6)
!2128 = !DIGlobalVariableExpression(var: !2129, expr: !DIExpression())
!2129 = distinct !DIGlobalVariable(scope: null, file: !2, line: 300, type: !9, isLocal: true, isDefinition: true)
!2130 = !DIGlobalVariableExpression(var: !2131, expr: !DIExpression())
!2131 = distinct !DIGlobalVariable(name: "fan_cooling_ops", scope: !19, file: !2, line: 195, type: !2132, isLocal: true, isDefinition: true)
!2132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2133)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device_ops", file: !2134, line: 89, size: 384, elements: !2135)
!2134 = !DIFile(filename: "./include/linux/thermal.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "0720786b938087c9219e0058826384af")
!2135 = !{!2136, !2156, !2157, !2161, !2166, !2170}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "get_max_state", scope: !2133, file: !2134, line: 90, baseType: !2137, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!62, !2140, !1140}
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thermal_cooling_device", file: !2134, line: 98, size: 6848, elements: !2142)
!2142 = !{!2143, !2144, !2145, !2146, !2147, !2148, !2149, !2150, !2152, !2153, !2154, !2155}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2141, file: !2134, line: 99, baseType: !62, size: 32)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2141, file: !2134, line: 100, baseType: !216, size: 64, offset: 64)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "max_state", scope: !2141, file: !2134, line: 101, baseType: !266, size: 64, offset: 128)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2141, file: !2134, line: 102, baseType: !1196, size: 5824, offset: 192)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !2141, file: !2134, line: 103, baseType: !1578, size: 64, offset: 6016)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "devdata", scope: !2141, file: !2134, line: 104, baseType: !113, size: 64, offset: 6080)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "stats", scope: !2141, file: !2134, line: 105, baseType: !113, size: 64, offset: 6144)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2141, file: !2134, line: 106, baseType: !2151, size: 64, offset: 6208)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "updated", scope: !2141, file: !2134, line: 107, baseType: !570, size: 8, offset: 6272)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2141, file: !2134, line: 108, baseType: !470, size: 256, offset: 6336)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "thermal_instances", scope: !2141, file: !2134, line: 109, baseType: !119, size: 128, offset: 6592)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2141, file: !2134, line: 110, baseType: !119, size: 128, offset: 6720)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "get_cur_state", scope: !2133, file: !2134, line: 91, baseType: !2137, size: 64, offset: 64)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "set_cur_state", scope: !2133, file: !2134, line: 92, baseType: !2158, size: 64, offset: 128)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!62, !2140, !266}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "get_requested_power", scope: !2133, file: !2134, line: 93, baseType: !2162, size: 64, offset: 192)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!62, !2140, !2165}
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "state2power", scope: !2133, file: !2134, line: 94, baseType: !2167, size: 64, offset: 256)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{!62, !2140, !266, !2165}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "power2state", scope: !2133, file: !2134, line: 95, baseType: !2171, size: 64, offset: 320)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!62, !2140, !1059, !1140}
!2174 = !DIGlobalVariableExpression(var: !2175, expr: !DIExpression())
!2175 = distinct !DIGlobalVariable(name: "fan_device_ids", scope: !19, file: !2, line: 22, type: !2176, isLocal: true, isDefinition: true)
!2176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1298, size: 1792, elements: !933)
!2177 = !DIGlobalVariableExpression(var: !2178, expr: !DIExpression())
!2178 = distinct !DIGlobalVariable(name: "acpi_fan_pm", scope: !19, file: !2, line: 439, type: !1227, isLocal: true, isDefinition: true)
!2179 = !DIGlobalVariableExpression(var: !2180, expr: !DIExpression())
!2180 = distinct !DIGlobalVariable(scope: null, file: !2, line: 434, type: !1287, isLocal: true, isDefinition: true)
!2181 = !{i32 7, !"Dwarf Version", i32 5}
!2182 = !{i32 2, !"Debug Info Version", i32 3}
!2183 = !{i32 1, !"wchar_size", i32 2}
!2184 = !{i32 8, !"cf-protection-branch", i32 1}
!2185 = !{i32 4, !"function_return_thunk_extern", i32 1}
!2186 = !{i32 4, !"indirect_branch_cs_prefix", i32 1}
!2187 = !{i32 1, !"Code Model", i32 2}
!2188 = !{i32 1, !"override-stack-alignment", i32 8}
!2189 = !{!"Ubuntu clang version 18.1.8 (++20240731024944+3b5b5c1ec4a3-1~exp1~20240731145000.144)"}
!2190 = distinct !DISubprogram(name: "acpi_fan_get_fst", scope: !2, file: !2, line: 47, type: !2191, scopeLine: 48, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2200)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!62, !1157, !2193}
!2193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2194, size: 64)
!2194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_fan_fst", file: !2195, line: 40, size: 192, elements: !2196)
!2195 = !DIFile(filename: "drivers/acpi/fan.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "2a4b4bcab33848723c331a5c38ececf2")
!2196 = !{!2197, !2198, !2199}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !2194, file: !2195, line: 41, baseType: !108, size: 64)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !2194, file: !2195, line: 42, baseType: !108, size: 64, offset: 64)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !2194, file: !2195, line: 43, baseType: !108, size: 64, offset: 128)
!2200 = !{!2201, !2202, !2203, !2208, !2209, !2210, !2211}
!2201 = !DILocalVariable(name: "device", arg: 1, scope: !2190, file: !2, line: 47, type: !1157)
!2202 = !DILocalVariable(name: "fst", arg: 2, scope: !2190, file: !2, line: 47, type: !2193)
!2203 = !DILocalVariable(name: "buffer", scope: !2190, file: !2, line: 49, type: !2204)
!2204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_buffer", file: !107, line: 978, size: 128, elements: !2205)
!2205 = !{!2206, !2207}
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2204, file: !107, line: 979, baseType: !106, size: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2204, file: !107, line: 980, baseType: !113, size: 64, offset: 64)
!2208 = !DILocalVariable(name: "obj", scope: !2190, file: !2, line: 50, type: !1795)
!2209 = !DILocalVariable(name: "status", scope: !2190, file: !2, line: 51, type: !1990)
!2210 = !DILocalVariable(name: "ret", scope: !2190, file: !2, line: 52, type: !62)
!2211 = !DILabel(scope: !2190, name: "err", file: !2, line: 73)
!2212 = !DILocation(line: 47, column: 42, scope: !2190)
!2213 = !DILocation(line: 47, column: 71, scope: !2190)
!2214 = !DILocation(line: 49, column: 2, scope: !2190)
!2215 = !DILocation(line: 49, column: 21, scope: !2190)
!2216 = !DILocation(line: 50, column: 2, scope: !2190)
!2217 = !DILocation(line: 50, column: 21, scope: !2190)
!2218 = !DILocation(line: 51, column: 2, scope: !2190)
!2219 = !DILocation(line: 51, column: 14, scope: !2190)
!2220 = !DILocation(line: 52, column: 2, scope: !2190)
!2221 = !DILocation(line: 52, column: 6, scope: !2190)
!2222 = !DILocation(line: 54, column: 32, scope: !2190)
!2223 = !DILocation(line: 54, column: 40, scope: !2190)
!2224 = !DILocation(line: 54, column: 11, scope: !2190)
!2225 = !DILocation(line: 54, column: 9, scope: !2190)
!2226 = !DILocation(line: 55, column: 6, scope: !2227)
!2227 = distinct !DILexicalBlock(scope: !2190, file: !2, line: 55, column: 6)
!2228 = !DILocation(line: 55, column: 6, scope: !2190)
!2229 = !DILocation(line: 56, column: 3, scope: !2230)
!2230 = distinct !DILexicalBlock(scope: !2231, file: !2, line: 56, column: 3)
!2231 = distinct !DILexicalBlock(scope: !2227, file: !2, line: 55, column: 28)
!2232 = !DILocation(line: 56, column: 3, scope: !2233)
!2233 = distinct !DILexicalBlock(scope: !2230, file: !2, line: 56, column: 3)
!2234 = !DILocation(line: 57, column: 3, scope: !2231)
!2235 = !DILocation(line: 60, column: 15, scope: !2190)
!2236 = !DILocation(line: 60, column: 6, scope: !2190)
!2237 = !DILocation(line: 61, column: 7, scope: !2238)
!2238 = distinct !DILexicalBlock(scope: !2190, file: !2, line: 61, column: 6)
!2239 = !DILocation(line: 61, column: 11, scope: !2238)
!2240 = !DILocation(line: 61, column: 14, scope: !2238)
!2241 = !DILocation(line: 61, column: 19, scope: !2238)
!2242 = !DILocation(line: 61, column: 24, scope: !2238)
!2243 = !DILocation(line: 61, column: 45, scope: !2238)
!2244 = !DILocation(line: 62, column: 6, scope: !2238)
!2245 = !DILocation(line: 62, column: 19, scope: !2238)
!2246 = !DILocation(line: 62, column: 25, scope: !2238)
!2247 = !DILocation(line: 62, column: 30, scope: !2238)
!2248 = !DILocation(line: 63, column: 6, scope: !2238)
!2249 = !DILocation(line: 63, column: 19, scope: !2238)
!2250 = !DILocation(line: 63, column: 31, scope: !2238)
!2251 = !DILocation(line: 63, column: 36, scope: !2238)
!2252 = !DILocation(line: 61, column: 6, scope: !2190)
!2253 = !DILocation(line: 64, column: 3, scope: !2254)
!2254 = distinct !DILexicalBlock(scope: !2255, file: !2, line: 64, column: 3)
!2255 = distinct !DILexicalBlock(scope: !2238, file: !2, line: 63, column: 58)
!2256 = !DILocation(line: 64, column: 3, scope: !2257)
!2257 = distinct !DILexicalBlock(scope: !2254, file: !2, line: 64, column: 3)
!2258 = !DILocation(line: 65, column: 7, scope: !2255)
!2259 = !DILocation(line: 66, column: 3, scope: !2255)
!2260 = !DILocation(line: 69, column: 18, scope: !2190)
!2261 = !DILocation(line: 69, column: 31, scope: !2190)
!2262 = !DILocation(line: 69, column: 51, scope: !2190)
!2263 = !DILocation(line: 69, column: 2, scope: !2190)
!2264 = !DILocation(line: 69, column: 7, scope: !2190)
!2265 = !DILocation(line: 69, column: 16, scope: !2190)
!2266 = !DILocation(line: 70, column: 17, scope: !2190)
!2267 = !DILocation(line: 70, column: 30, scope: !2190)
!2268 = !DILocation(line: 70, column: 50, scope: !2190)
!2269 = !DILocation(line: 70, column: 2, scope: !2190)
!2270 = !DILocation(line: 70, column: 7, scope: !2190)
!2271 = !DILocation(line: 70, column: 15, scope: !2190)
!2272 = !DILocation(line: 71, column: 15, scope: !2190)
!2273 = !DILocation(line: 71, column: 28, scope: !2190)
!2274 = !DILocation(line: 71, column: 48, scope: !2190)
!2275 = !DILocation(line: 71, column: 2, scope: !2190)
!2276 = !DILocation(line: 71, column: 7, scope: !2190)
!2277 = !DILocation(line: 71, column: 13, scope: !2190)
!2278 = !DILocation(line: 73, column: 1, scope: !2190)
!2279 = !DILocation(line: 74, column: 8, scope: !2190)
!2280 = !DILocation(line: 74, column: 2, scope: !2190)
!2281 = !DILocation(line: 75, column: 9, scope: !2190)
!2282 = !DILocation(line: 75, column: 2, scope: !2190)
!2283 = !DILocation(line: 76, column: 1, scope: !2190)
!2284 = !DISubprogram(name: "acpi_evaluate_object", scope: !2285, file: !2285, line: 549, type: !2286, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2285 = !DIFile(filename: "./include/acpi/acpixf.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "9c753fcd2fa48ff56b800e18b59101c5")
!2286 = !DISubroutineType(types: !2287)
!2287 = !{!1990, !1164, !2288, !2289, !2294}
!2288 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_string", file: !107, line: 423, baseType: !216)
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2290, size: 64)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_object_list", file: !107, line: 956, size: 128, elements: !2291)
!2291 = !{!2292, !2293}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2290, file: !107, line: 957, baseType: !1059, size: 32)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2290, file: !107, line: 958, baseType: !1795, size: 64, offset: 64)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2204, size: 64)
!2295 = !DISubprogram(name: "_dev_err", scope: !2296, file: !2296, line: 50, type: !2297, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2296 = !DIFile(filename: "./include/linux/dev_printk.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "26be1c7162028cf267fc33fc173f55ec")
!2297 = !DISubroutineType(types: !2298)
!2298 = !{null, !1194, !137, null}
!2299 = !DISubprogram(name: "kfree", scope: !2300, file: !2300, line: 227, type: !2301, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2300 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "586b93ffaf8c857d1bde55e158a06c94")
!2301 = !DISubroutineType(types: !2302)
!2302 = !{null, !491}
!2303 = distinct !DISubprogram(name: "__initstub__kmod_fan__229_463_acpi_fan_driver_init6", scope: !2, file: !2, line: 463, type: !913, scopeLine: 463, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagDefinition | DISPFlagOptimized, unit: !19)
!2304 = !DILocation(line: 463, column: 1, scope: !2303)
!2305 = distinct !DISubprogram(name: "acpi_fan_driver_init", scope: !2, file: !2, line: 463, type: !913, scopeLine: 463, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19)
!2306 = !DILocation(line: 463, column: 1, scope: !2305)
!2307 = distinct !DISubprogram(name: "acpi_fan_driver_exit", scope: !2, file: !2, line: 463, type: !1154, scopeLine: 463, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19)
!2308 = !DILocation(line: 463, column: 1, scope: !2307)
!2309 = !DISubprogram(name: "platform_driver_unregister", scope: !2020, file: !2020, line: 276, type: !2310, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2310 = !DISubroutineType(types: !2311)
!2311 = !{null, !2312}
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2313 = !DISubprogram(name: "__platform_driver_register", scope: !2020, file: !2020, line: 274, type: !2314, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{!62, !2312, !114}
!2316 = distinct !DISubprogram(name: "acpi_fan_probe", scope: !2, file: !2, line: 314, type: !2024, scopeLine: 315, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2317)
!2317 = !{!2318, !2319, !2320, !2321, !2360, !2361, !2363, !2365, !2366, !2367, !2368}
!2318 = !DILocalVariable(name: "pdev", arg: 1, scope: !2316, file: !2, line: 314, type: !2026)
!2319 = !DILocalVariable(name: "result", scope: !2316, file: !2, line: 316, type: !62)
!2320 = !DILocalVariable(name: "cdev", scope: !2316, file: !2, line: 317, type: !2140)
!2321 = !DILocalVariable(name: "fan", scope: !2316, file: !2, line: 318, type: !2322)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_fan", file: !2195, line: 46, size: 768, elements: !2324)
!2324 = !{!2325, !2326, !2333, !2356, !2357, !2358, !2359}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "acpi4", scope: !2323, file: !2195, line: 47, baseType: !570, size: 8)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "fif", scope: !2323, file: !2195, line: 48, baseType: !2327, size: 32, offset: 8)
!2327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_fan_fif", file: !2195, line: 33, size: 32, elements: !2328)
!2328 = !{!2329, !2330, !2331, !2332}
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !2327, file: !2195, line: 34, baseType: !176, size: 8)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "fine_grain_ctrl", scope: !2327, file: !2195, line: 35, baseType: !176, size: 8, offset: 8)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !2327, file: !2195, line: 36, baseType: !176, size: 8, offset: 16)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "low_speed_notification", scope: !2327, file: !2195, line: 37, baseType: !176, size: 8, offset: 24)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "fps", scope: !2323, file: !2195, line: 49, baseType: !2334, size: 64, offset: 64)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_fan_fps", file: !2195, line: 23, size: 768, elements: !2336)
!2336 = !{!2337, !2338, !2339, !2340, !2341, !2342, !2343}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "control", scope: !2335, file: !2195, line: 24, baseType: !108, size: 64)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "trip_point", scope: !2335, file: !2195, line: 25, baseType: !108, size: 64, offset: 64)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !2335, file: !2195, line: 26, baseType: !108, size: 64, offset: 128)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "noise_level", scope: !2335, file: !2195, line: 27, baseType: !108, size: 64, offset: 192)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2335, file: !2195, line: 28, baseType: !108, size: 64, offset: 256)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2335, file: !2195, line: 29, baseType: !1791, size: 160, offset: 320)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "dev_attr", scope: !2335, file: !2195, line: 30, baseType: !2344, size: 256, offset: 512)
!2344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !42, line: 106, size: 256, elements: !2345)
!2345 = !{!2346, !2347, !2352}
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2344, file: !42, line: 107, baseType: !254, size: 128)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2344, file: !42, line: 108, baseType: !2348, size: 64, offset: 128)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!248, !1200, !2351, !216}
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2344, file: !42, line: 110, baseType: !2353, size: 64, offset: 192)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!248, !1200, !2351, !137, !263}
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "fps_count", scope: !2323, file: !2195, line: 50, baseType: !62, size: 32, offset: 128)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "cdev", scope: !2323, file: !2195, line: 51, baseType: !2140, size: 64, offset: 192)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "fst_speed", scope: !2323, file: !2195, line: 52, baseType: !2344, size: 256, offset: 256)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "fine_grain_control", scope: !2323, file: !2195, line: 53, baseType: !2344, size: 256, offset: 512)
!2360 = !DILocalVariable(name: "device", scope: !2316, file: !2, line: 319, type: !1157)
!2361 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !2362, file: !2, line: 319, type: !1170)
!2362 = distinct !DILexicalBlock(scope: !2316, file: !2, line: 319, column: 31)
!2363 = !DILocalVariable(name: "__mptr", scope: !2364, file: !2, line: 319, type: !113)
!2364 = distinct !DILexicalBlock(scope: !2362, file: !2, line: 319, column: 31)
!2365 = !DILocalVariable(name: "name", scope: !2316, file: !2, line: 320, type: !216)
!2366 = !DILabel(scope: !2316, name: "err_remove_link", file: !2, line: 385)
!2367 = !DILabel(scope: !2316, name: "err_unregister", file: !2, line: 387)
!2368 = !DILabel(scope: !2316, name: "err_end", file: !2, line: 389)
!2369 = !DILocation(line: 314, column: 51, scope: !2316)
!2370 = !DILocation(line: 316, column: 2, scope: !2316)
!2371 = !DILocation(line: 316, column: 6, scope: !2316)
!2372 = !DILocation(line: 317, column: 2, scope: !2316)
!2373 = !DILocation(line: 317, column: 33, scope: !2316)
!2374 = !DILocation(line: 318, column: 2, scope: !2316)
!2375 = !DILocation(line: 318, column: 19, scope: !2316)
!2376 = !DILocation(line: 319, column: 2, scope: !2316)
!2377 = !DILocation(line: 319, column: 22, scope: !2316)
!2378 = !DILocation(line: 319, column: 31, scope: !2362)
!2379 = !DILocation(line: 319, column: 31, scope: !2364)
!2380 = !DILocation(line: 319, column: 31, scope: !2316)
!2381 = !DILocation(line: 320, column: 2, scope: !2316)
!2382 = !DILocation(line: 320, column: 8, scope: !2316)
!2383 = !DILocation(line: 322, column: 22, scope: !2316)
!2384 = !DILocation(line: 322, column: 28, scope: !2316)
!2385 = !DILocation(line: 322, column: 8, scope: !2316)
!2386 = !DILocation(line: 322, column: 6, scope: !2316)
!2387 = !DILocation(line: 323, column: 7, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2316, file: !2, line: 323, column: 6)
!2389 = !DILocation(line: 323, column: 6, scope: !2316)
!2390 = !DILocation(line: 324, column: 3, scope: !2391)
!2391 = distinct !DILexicalBlock(scope: !2392, file: !2, line: 324, column: 3)
!2392 = distinct !DILexicalBlock(scope: !2388, file: !2, line: 323, column: 12)
!2393 = !DILocation(line: 324, column: 3, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2391, file: !2, line: 324, column: 3)
!2395 = !DILocation(line: 325, column: 3, scope: !2392)
!2396 = !DILocation(line: 327, column: 24, scope: !2316)
!2397 = !DILocation(line: 327, column: 2, scope: !2316)
!2398 = !DILocation(line: 327, column: 10, scope: !2316)
!2399 = !DILocation(line: 327, column: 22, scope: !2316)
!2400 = !DILocation(line: 328, column: 23, scope: !2316)
!2401 = !DILocation(line: 328, column: 29, scope: !2316)
!2402 = !DILocation(line: 328, column: 2, scope: !2316)
!2403 = !DILocation(line: 330, column: 24, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2316, file: !2, line: 330, column: 6)
!2405 = !DILocation(line: 330, column: 6, scope: !2404)
!2406 = !DILocation(line: 330, column: 6, scope: !2316)
!2407 = !DILocation(line: 331, column: 29, scope: !2408)
!2408 = distinct !DILexicalBlock(scope: !2404, file: !2, line: 330, column: 33)
!2409 = !DILocation(line: 331, column: 12, scope: !2408)
!2410 = !DILocation(line: 331, column: 10, scope: !2408)
!2411 = !DILocation(line: 332, column: 7, scope: !2412)
!2412 = distinct !DILexicalBlock(scope: !2408, file: !2, line: 332, column: 7)
!2413 = !DILocation(line: 332, column: 7, scope: !2408)
!2414 = !DILocation(line: 333, column: 11, scope: !2412)
!2415 = !DILocation(line: 333, column: 4, scope: !2412)
!2416 = !DILocation(line: 335, column: 29, scope: !2408)
!2417 = !DILocation(line: 335, column: 12, scope: !2408)
!2418 = !DILocation(line: 335, column: 10, scope: !2408)
!2419 = !DILocation(line: 336, column: 7, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2408, file: !2, line: 336, column: 7)
!2421 = !DILocation(line: 336, column: 7, scope: !2408)
!2422 = !DILocation(line: 337, column: 11, scope: !2420)
!2423 = !DILocation(line: 337, column: 4, scope: !2420)
!2424 = !DILocation(line: 339, column: 39, scope: !2408)
!2425 = !DILocation(line: 339, column: 12, scope: !2408)
!2426 = !DILocation(line: 339, column: 10, scope: !2408)
!2427 = !DILocation(line: 340, column: 7, scope: !2428)
!2428 = distinct !DILexicalBlock(scope: !2408, file: !2, line: 340, column: 7)
!2429 = !DILocation(line: 340, column: 7, scope: !2408)
!2430 = !DILocation(line: 341, column: 11, scope: !2428)
!2431 = !DILocation(line: 341, column: 4, scope: !2428)
!2432 = !DILocation(line: 343, column: 3, scope: !2408)
!2433 = !DILocation(line: 343, column: 8, scope: !2408)
!2434 = !DILocation(line: 343, column: 14, scope: !2408)
!2435 = !DILocation(line: 344, column: 2, scope: !2408)
!2436 = !DILocation(line: 345, column: 37, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2404, file: !2, line: 344, column: 9)
!2438 = !DILocation(line: 345, column: 12, scope: !2437)
!2439 = !DILocation(line: 345, column: 10, scope: !2437)
!2440 = !DILocation(line: 346, column: 7, scope: !2441)
!2441 = distinct !DILexicalBlock(scope: !2437, file: !2, line: 346, column: 7)
!2442 = !DILocation(line: 346, column: 7, scope: !2437)
!2443 = !DILocation(line: 347, column: 4, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2445, file: !2, line: 347, column: 4)
!2445 = distinct !DILexicalBlock(scope: !2441, file: !2, line: 346, column: 15)
!2446 = !DILocation(line: 347, column: 4, scope: !2447)
!2447 = distinct !DILexicalBlock(scope: !2444, file: !2, line: 347, column: 4)
!2448 = !DILocation(line: 348, column: 4, scope: !2445)
!2449 = !DILocation(line: 352, column: 15, scope: !2450)
!2450 = distinct !DILexicalBlock(scope: !2316, file: !2, line: 352, column: 6)
!2451 = !DILocation(line: 352, column: 21, scope: !2450)
!2452 = !DILocation(line: 352, column: 7, scope: !2450)
!2453 = !DILocation(line: 352, column: 6, scope: !2316)
!2454 = !DILocation(line: 353, column: 8, scope: !2450)
!2455 = !DILocation(line: 353, column: 3, scope: !2450)
!2456 = !DILocation(line: 355, column: 10, scope: !2450)
!2457 = !DILocation(line: 355, column: 8, scope: !2450)
!2458 = !DILocation(line: 357, column: 41, scope: !2316)
!2459 = !DILocation(line: 357, column: 47, scope: !2316)
!2460 = !DILocation(line: 357, column: 9, scope: !2316)
!2461 = !DILocation(line: 357, column: 7, scope: !2316)
!2462 = !DILocation(line: 359, column: 13, scope: !2463)
!2463 = distinct !DILexicalBlock(scope: !2316, file: !2, line: 359, column: 6)
!2464 = !DILocation(line: 359, column: 6, scope: !2463)
!2465 = !DILocation(line: 359, column: 6, scope: !2316)
!2466 = !DILocation(line: 360, column: 20, scope: !2467)
!2467 = distinct !DILexicalBlock(scope: !2463, file: !2, line: 359, column: 20)
!2468 = !DILocation(line: 360, column: 12, scope: !2467)
!2469 = !DILocation(line: 360, column: 10, scope: !2467)
!2470 = !DILocation(line: 361, column: 3, scope: !2467)
!2471 = !DILocation(line: 366, column: 14, scope: !2316)
!2472 = !DILocation(line: 366, column: 2, scope: !2316)
!2473 = !DILocation(line: 366, column: 7, scope: !2316)
!2474 = !DILocation(line: 366, column: 12, scope: !2316)
!2475 = !DILocation(line: 367, column: 30, scope: !2316)
!2476 = !DILocation(line: 367, column: 36, scope: !2316)
!2477 = !DILocation(line: 367, column: 40, scope: !2316)
!2478 = !DILocation(line: 368, column: 9, scope: !2316)
!2479 = !DILocation(line: 368, column: 15, scope: !2316)
!2480 = !DILocation(line: 368, column: 22, scope: !2316)
!2481 = !DILocation(line: 367, column: 11, scope: !2316)
!2482 = !DILocation(line: 367, column: 9, scope: !2316)
!2483 = !DILocation(line: 370, column: 6, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2316, file: !2, line: 370, column: 6)
!2485 = !DILocation(line: 370, column: 6, scope: !2316)
!2486 = !DILocation(line: 371, column: 3, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2488, file: !2, line: 371, column: 3)
!2488 = distinct !DILexicalBlock(scope: !2484, file: !2, line: 370, column: 14)
!2489 = !DILocation(line: 371, column: 3, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2487, file: !2, line: 371, column: 3)
!2491 = !DILocation(line: 372, column: 3, scope: !2488)
!2492 = !DILocation(line: 375, column: 30, scope: !2316)
!2493 = !DILocation(line: 375, column: 36, scope: !2316)
!2494 = !DILocation(line: 375, column: 43, scope: !2316)
!2495 = !DILocation(line: 376, column: 9, scope: !2316)
!2496 = !DILocation(line: 376, column: 15, scope: !2316)
!2497 = !DILocation(line: 376, column: 19, scope: !2316)
!2498 = !DILocation(line: 375, column: 11, scope: !2316)
!2499 = !DILocation(line: 375, column: 9, scope: !2316)
!2500 = !DILocation(line: 378, column: 6, scope: !2501)
!2501 = distinct !DILexicalBlock(scope: !2316, file: !2, line: 378, column: 6)
!2502 = !DILocation(line: 378, column: 6, scope: !2316)
!2503 = !DILocation(line: 379, column: 3, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !2, line: 379, column: 3)
!2505 = distinct !DILexicalBlock(scope: !2501, file: !2, line: 378, column: 14)
!2506 = !DILocation(line: 379, column: 3, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2504, file: !2, line: 379, column: 3)
!2508 = !DILocation(line: 380, column: 3, scope: !2505)
!2509 = !DILocation(line: 383, column: 2, scope: !2316)
!2510 = !DILocation(line: 385, column: 1, scope: !2316)
!2511 = !DILocation(line: 386, column: 21, scope: !2316)
!2512 = !DILocation(line: 386, column: 27, scope: !2316)
!2513 = !DILocation(line: 386, column: 31, scope: !2316)
!2514 = !DILocation(line: 386, column: 2, scope: !2316)
!2515 = !DILocation(line: 387, column: 1, scope: !2316)
!2516 = !DILocation(line: 388, column: 36, scope: !2316)
!2517 = !DILocation(line: 388, column: 2, scope: !2316)
!2518 = !DILocation(line: 389, column: 1, scope: !2316)
!2519 = !DILocation(line: 390, column: 6, scope: !2520)
!2520 = distinct !DILexicalBlock(scope: !2316, file: !2, line: 390, column: 6)
!2521 = !DILocation(line: 390, column: 11, scope: !2520)
!2522 = !{i8 0, i8 2}
!2523 = !DILocation(line: 390, column: 6, scope: !2316)
!2524 = !DILocation(line: 391, column: 30, scope: !2520)
!2525 = !DILocation(line: 391, column: 3, scope: !2520)
!2526 = !DILocation(line: 393, column: 9, scope: !2316)
!2527 = !DILocation(line: 393, column: 2, scope: !2316)
!2528 = !DILocation(line: 394, column: 1, scope: !2316)
!2529 = distinct !DISubprogram(name: "acpi_fan_remove", scope: !2, file: !2, line: 396, type: !2024, scopeLine: 397, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2530)
!2530 = !{!2531, !2532, !2533, !2536, !2538}
!2531 = !DILocalVariable(name: "pdev", arg: 1, scope: !2529, file: !2, line: 396, type: !2026)
!2532 = !DILocalVariable(name: "fan", scope: !2529, file: !2, line: 398, type: !2322)
!2533 = !DILocalVariable(name: "device", scope: !2534, file: !2, line: 401, type: !1157)
!2534 = distinct !DILexicalBlock(scope: !2535, file: !2, line: 400, column: 18)
!2535 = distinct !DILexicalBlock(scope: !2529, file: !2, line: 400, column: 6)
!2536 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !2537, file: !2, line: 401, type: !1170)
!2537 = distinct !DILexicalBlock(scope: !2534, file: !2, line: 401, column: 32)
!2538 = !DILocalVariable(name: "__mptr", scope: !2539, file: !2, line: 401, type: !113)
!2539 = distinct !DILexicalBlock(scope: !2537, file: !2, line: 401, column: 32)
!2540 = !DILocation(line: 396, column: 52, scope: !2529)
!2541 = !DILocation(line: 398, column: 2, scope: !2529)
!2542 = !DILocation(line: 398, column: 19, scope: !2529)
!2543 = !DILocation(line: 398, column: 46, scope: !2529)
!2544 = !DILocation(line: 398, column: 25, scope: !2529)
!2545 = !DILocation(line: 400, column: 6, scope: !2535)
!2546 = !DILocation(line: 400, column: 11, scope: !2535)
!2547 = !DILocation(line: 400, column: 6, scope: !2529)
!2548 = !DILocation(line: 401, column: 3, scope: !2534)
!2549 = !DILocation(line: 401, column: 23, scope: !2534)
!2550 = !DILocation(line: 401, column: 32, scope: !2537)
!2551 = !DILocation(line: 401, column: 32, scope: !2539)
!2552 = !DILocation(line: 401, column: 32, scope: !2534)
!2553 = !DILocation(line: 403, column: 30, scope: !2534)
!2554 = !DILocation(line: 403, column: 3, scope: !2534)
!2555 = !DILocation(line: 404, column: 2, scope: !2535)
!2556 = !DILocation(line: 404, column: 2, scope: !2534)
!2557 = !DILocation(line: 405, column: 21, scope: !2529)
!2558 = !DILocation(line: 405, column: 27, scope: !2529)
!2559 = !DILocation(line: 405, column: 31, scope: !2529)
!2560 = !DILocation(line: 405, column: 2, scope: !2529)
!2561 = !DILocation(line: 406, column: 21, scope: !2529)
!2562 = !DILocation(line: 406, column: 26, scope: !2529)
!2563 = !DILocation(line: 406, column: 32, scope: !2529)
!2564 = !DILocation(line: 406, column: 39, scope: !2529)
!2565 = !DILocation(line: 406, column: 2, scope: !2529)
!2566 = !DILocation(line: 407, column: 36, scope: !2529)
!2567 = !DILocation(line: 407, column: 41, scope: !2529)
!2568 = !DILocation(line: 407, column: 2, scope: !2529)
!2569 = !DILocation(line: 410, column: 1, scope: !2529)
!2570 = !DILocation(line: 409, column: 2, scope: !2529)
!2571 = !DISubprogram(name: "is_acpi_device_node", scope: !1159, file: !1159, line: 410, type: !1186, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2572 = distinct !DISubprogram(name: "devm_kzalloc", scope: !42, file: !42, line: 312, type: !2573, scopeLine: 313, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2575)
!2573 = !DISubroutineType(types: !2574)
!2574 = !{!113, !1200, !263, !1989}
!2575 = !{!2576, !2577, !2578}
!2576 = !DILocalVariable(name: "dev", arg: 1, scope: !2572, file: !42, line: 312, type: !1200)
!2577 = !DILocalVariable(name: "size", arg: 2, scope: !2572, file: !42, line: 312, type: !263)
!2578 = !DILocalVariable(name: "gfp", arg: 3, scope: !2572, file: !42, line: 312, type: !1989)
!2579 = !DILocation(line: 312, column: 49, scope: !2572)
!2580 = !DILocation(line: 312, column: 61, scope: !2572)
!2581 = !DILocation(line: 312, column: 73, scope: !2572)
!2582 = !DILocation(line: 314, column: 22, scope: !2572)
!2583 = !DILocation(line: 314, column: 27, scope: !2572)
!2584 = !DILocation(line: 314, column: 33, scope: !2572)
!2585 = !DILocation(line: 314, column: 37, scope: !2572)
!2586 = !DILocation(line: 314, column: 9, scope: !2572)
!2587 = !DILocation(line: 314, column: 2, scope: !2572)
!2588 = distinct !DISubprogram(name: "platform_set_drvdata", scope: !2020, file: !2020, line: 291, type: !2589, scopeLine: 293, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2591)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{null, !2026, !113}
!2591 = !{!2592, !2593}
!2592 = !DILocalVariable(name: "pdev", arg: 1, scope: !2588, file: !2020, line: 291, type: !2026)
!2593 = !DILocalVariable(name: "data", arg: 2, scope: !2588, file: !2020, line: 292, type: !113)
!2594 = !DILocation(line: 291, column: 65, scope: !2588)
!2595 = !DILocation(line: 292, column: 12, scope: !2588)
!2596 = !DILocation(line: 294, column: 19, scope: !2588)
!2597 = !DILocation(line: 294, column: 25, scope: !2588)
!2598 = !DILocation(line: 294, column: 30, scope: !2588)
!2599 = !DILocation(line: 294, column: 2, scope: !2588)
!2600 = !DILocation(line: 295, column: 1, scope: !2588)
!2601 = distinct !DISubprogram(name: "acpi_fan_is_acpi4", scope: !2, file: !2, line: 206, type: !2602, scopeLine: 207, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2604)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!570, !1157}
!2604 = !{!2605}
!2605 = !DILocalVariable(name: "device", arg: 1, scope: !2601, file: !2, line: 206, type: !1157)
!2606 = !DILocation(line: 206, column: 51, scope: !2601)
!2607 = !DILocation(line: 208, column: 25, scope: !2601)
!2608 = !DILocation(line: 208, column: 33, scope: !2601)
!2609 = !DILocation(line: 208, column: 9, scope: !2601)
!2610 = !DILocation(line: 208, column: 49, scope: !2601)
!2611 = !DILocation(line: 209, column: 25, scope: !2601)
!2612 = !DILocation(line: 209, column: 33, scope: !2601)
!2613 = !DILocation(line: 209, column: 9, scope: !2601)
!2614 = !DILocation(line: 209, column: 49, scope: !2601)
!2615 = !DILocation(line: 210, column: 25, scope: !2601)
!2616 = !DILocation(line: 210, column: 33, scope: !2601)
!2617 = !DILocation(line: 210, column: 9, scope: !2601)
!2618 = !DILocation(line: 210, column: 49, scope: !2601)
!2619 = !DILocation(line: 211, column: 25, scope: !2601)
!2620 = !DILocation(line: 211, column: 33, scope: !2601)
!2621 = !DILocation(line: 211, column: 9, scope: !2601)
!2622 = !DILocation(line: 0, scope: !2601)
!2623 = !DILocation(line: 208, column: 2, scope: !2601)
!2624 = distinct !DISubprogram(name: "acpi_fan_get_fif", scope: !2, file: !2, line: 214, type: !1959, scopeLine: 215, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2625)
!2625 = !{!2626, !2627, !2628, !2629, !2630, !2632, !2633, !2634, !2635}
!2626 = !DILocalVariable(name: "device", arg: 1, scope: !2624, file: !2, line: 214, type: !1157)
!2627 = !DILocalVariable(name: "buffer", scope: !2624, file: !2, line: 216, type: !2204)
!2628 = !DILocalVariable(name: "fan", scope: !2624, file: !2, line: 217, type: !2322)
!2629 = !DILocalVariable(name: "format", scope: !2624, file: !2, line: 218, type: !2204)
!2630 = !DILocalVariable(name: "fields", scope: !2624, file: !2, line: 219, type: !2631)
!2631 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 256, elements: !451)
!2632 = !DILocalVariable(name: "fif", scope: !2624, file: !2, line: 220, type: !2204)
!2633 = !DILocalVariable(name: "obj", scope: !2624, file: !2, line: 221, type: !1795)
!2634 = !DILocalVariable(name: "status", scope: !2624, file: !2, line: 222, type: !1990)
!2635 = !DILabel(scope: !2624, name: "err", file: !2, line: 253)
!2636 = !DILocation(line: 214, column: 49, scope: !2624)
!2637 = !DILocation(line: 216, column: 2, scope: !2624)
!2638 = !DILocation(line: 216, column: 21, scope: !2624)
!2639 = !DILocation(line: 217, column: 2, scope: !2624)
!2640 = !DILocation(line: 217, column: 19, scope: !2624)
!2641 = !DILocation(line: 217, column: 42, scope: !2624)
!2642 = !DILocation(line: 217, column: 25, scope: !2624)
!2643 = !DILocation(line: 218, column: 2, scope: !2624)
!2644 = !DILocation(line: 218, column: 21, scope: !2624)
!2645 = !DILocation(line: 219, column: 2, scope: !2624)
!2646 = !DILocation(line: 219, column: 6, scope: !2624)
!2647 = !DILocation(line: 220, column: 2, scope: !2624)
!2648 = !DILocation(line: 220, column: 21, scope: !2624)
!2649 = !DILocation(line: 220, column: 27, scope: !2624)
!2650 = !DILocation(line: 220, column: 45, scope: !2624)
!2651 = !DILocation(line: 221, column: 2, scope: !2624)
!2652 = !DILocation(line: 221, column: 21, scope: !2624)
!2653 = !DILocation(line: 222, column: 2, scope: !2624)
!2654 = !DILocation(line: 222, column: 14, scope: !2624)
!2655 = !DILocation(line: 224, column: 32, scope: !2624)
!2656 = !DILocation(line: 224, column: 40, scope: !2624)
!2657 = !DILocation(line: 224, column: 11, scope: !2624)
!2658 = !DILocation(line: 224, column: 9, scope: !2624)
!2659 = !DILocation(line: 225, column: 6, scope: !2660)
!2660 = distinct !DILexicalBlock(scope: !2624, file: !2, line: 225, column: 6)
!2661 = !DILocation(line: 225, column: 6, scope: !2624)
!2662 = !DILocation(line: 226, column: 10, scope: !2660)
!2663 = !DILocation(line: 226, column: 3, scope: !2660)
!2664 = !DILocation(line: 228, column: 15, scope: !2624)
!2665 = !DILocation(line: 228, column: 6, scope: !2624)
!2666 = !DILocation(line: 229, column: 7, scope: !2667)
!2667 = distinct !DILexicalBlock(scope: !2624, file: !2, line: 229, column: 6)
!2668 = !DILocation(line: 229, column: 11, scope: !2667)
!2669 = !DILocation(line: 229, column: 14, scope: !2667)
!2670 = !DILocation(line: 229, column: 19, scope: !2667)
!2671 = !DILocation(line: 229, column: 24, scope: !2667)
!2672 = !DILocation(line: 229, column: 6, scope: !2624)
!2673 = !DILocation(line: 230, column: 3, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2675, file: !2, line: 230, column: 3)
!2675 = distinct !DILexicalBlock(scope: !2667, file: !2, line: 229, column: 46)
!2676 = !DILocation(line: 230, column: 3, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2674, file: !2, line: 230, column: 3)
!2678 = !DILocation(line: 231, column: 10, scope: !2675)
!2679 = !DILocation(line: 232, column: 3, scope: !2675)
!2680 = !DILocation(line: 235, column: 32, scope: !2624)
!2681 = !DILocation(line: 235, column: 11, scope: !2624)
!2682 = !DILocation(line: 235, column: 9, scope: !2624)
!2683 = !DILocation(line: 236, column: 6, scope: !2684)
!2684 = distinct !DILexicalBlock(scope: !2624, file: !2, line: 236, column: 6)
!2685 = !DILocation(line: 236, column: 6, scope: !2624)
!2686 = !DILocation(line: 237, column: 3, scope: !2687)
!2687 = distinct !DILexicalBlock(scope: !2688, file: !2, line: 237, column: 3)
!2688 = distinct !DILexicalBlock(scope: !2684, file: !2, line: 236, column: 28)
!2689 = !DILocation(line: 237, column: 3, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2687, file: !2, line: 237, column: 3)
!2691 = !DILocation(line: 238, column: 10, scope: !2688)
!2692 = !DILocation(line: 239, column: 3, scope: !2688)
!2693 = !DILocation(line: 242, column: 22, scope: !2624)
!2694 = !DILocation(line: 242, column: 2, scope: !2624)
!2695 = !DILocation(line: 242, column: 7, scope: !2624)
!2696 = !DILocation(line: 242, column: 11, scope: !2624)
!2697 = !DILocation(line: 242, column: 20, scope: !2624)
!2698 = !DILocation(line: 243, column: 29, scope: !2624)
!2699 = !DILocation(line: 243, column: 2, scope: !2624)
!2700 = !DILocation(line: 243, column: 7, scope: !2624)
!2701 = !DILocation(line: 243, column: 11, scope: !2624)
!2702 = !DILocation(line: 243, column: 27, scope: !2624)
!2703 = !DILocation(line: 244, column: 23, scope: !2624)
!2704 = !DILocation(line: 244, column: 2, scope: !2624)
!2705 = !DILocation(line: 244, column: 7, scope: !2624)
!2706 = !DILocation(line: 244, column: 11, scope: !2624)
!2707 = !DILocation(line: 244, column: 21, scope: !2624)
!2708 = !DILocation(line: 245, column: 36, scope: !2624)
!2709 = !DILocation(line: 245, column: 2, scope: !2624)
!2710 = !DILocation(line: 245, column: 7, scope: !2624)
!2711 = !DILocation(line: 245, column: 11, scope: !2624)
!2712 = !DILocation(line: 245, column: 34, scope: !2624)
!2713 = !DILocation(line: 248, column: 7, scope: !2714)
!2714 = distinct !DILexicalBlock(scope: !2624, file: !2, line: 248, column: 6)
!2715 = !DILocation(line: 248, column: 12, scope: !2714)
!2716 = !DILocation(line: 248, column: 16, scope: !2714)
!2717 = !DILocation(line: 248, column: 6, scope: !2624)
!2718 = !DILocation(line: 249, column: 3, scope: !2714)
!2719 = !DILocation(line: 249, column: 8, scope: !2714)
!2720 = !DILocation(line: 249, column: 12, scope: !2714)
!2721 = !DILocation(line: 249, column: 22, scope: !2714)
!2722 = !DILocation(line: 251, column: 11, scope: !2723)
!2723 = distinct !DILexicalBlock(scope: !2714, file: !2, line: 251, column: 11)
!2724 = !DILocation(line: 251, column: 16, scope: !2723)
!2725 = !DILocation(line: 251, column: 20, scope: !2723)
!2726 = !DILocation(line: 251, column: 30, scope: !2723)
!2727 = !DILocation(line: 251, column: 11, scope: !2714)
!2728 = !DILocation(line: 252, column: 3, scope: !2723)
!2729 = !DILocation(line: 252, column: 8, scope: !2723)
!2730 = !DILocation(line: 252, column: 12, scope: !2723)
!2731 = !DILocation(line: 252, column: 22, scope: !2723)
!2732 = !DILocation(line: 253, column: 1, scope: !2624)
!2733 = !DILocation(line: 254, column: 8, scope: !2624)
!2734 = !DILocation(line: 254, column: 2, scope: !2624)
!2735 = !DILocation(line: 255, column: 9, scope: !2624)
!2736 = !DILocation(line: 255, column: 2, scope: !2624)
!2737 = !DILocation(line: 256, column: 1, scope: !2624)
!2738 = distinct !DISubprogram(name: "acpi_fan_get_fps", scope: !2, file: !2, line: 265, type: !1959, scopeLine: 266, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2739)
!2739 = !{!2740, !2741, !2742, !2743, !2744, !2745, !2746, !2750, !2751}
!2740 = !DILocalVariable(name: "device", arg: 1, scope: !2738, file: !2, line: 265, type: !1157)
!2741 = !DILocalVariable(name: "fan", scope: !2738, file: !2, line: 267, type: !2322)
!2742 = !DILocalVariable(name: "buffer", scope: !2738, file: !2, line: 268, type: !2204)
!2743 = !DILocalVariable(name: "obj", scope: !2738, file: !2, line: 269, type: !1795)
!2744 = !DILocalVariable(name: "status", scope: !2738, file: !2, line: 270, type: !1990)
!2745 = !DILocalVariable(name: "i", scope: !2738, file: !2, line: 271, type: !62)
!2746 = !DILocalVariable(name: "format", scope: !2747, file: !2, line: 294, type: !2204)
!2747 = distinct !DILexicalBlock(scope: !2748, file: !2, line: 293, column: 39)
!2748 = distinct !DILexicalBlock(scope: !2749, file: !2, line: 293, column: 2)
!2749 = distinct !DILexicalBlock(scope: !2738, file: !2, line: 293, column: 2)
!2750 = !DILocalVariable(name: "fps", scope: !2747, file: !2, line: 295, type: !2204)
!2751 = !DILabel(scope: !2738, name: "err", file: !2, line: 309)
!2752 = !DILocation(line: 265, column: 49, scope: !2738)
!2753 = !DILocation(line: 267, column: 2, scope: !2738)
!2754 = !DILocation(line: 267, column: 19, scope: !2738)
!2755 = !DILocation(line: 267, column: 42, scope: !2738)
!2756 = !DILocation(line: 267, column: 25, scope: !2738)
!2757 = !DILocation(line: 268, column: 2, scope: !2738)
!2758 = !DILocation(line: 268, column: 21, scope: !2738)
!2759 = !DILocation(line: 269, column: 2, scope: !2738)
!2760 = !DILocation(line: 269, column: 21, scope: !2738)
!2761 = !DILocation(line: 270, column: 2, scope: !2738)
!2762 = !DILocation(line: 270, column: 14, scope: !2738)
!2763 = !DILocation(line: 271, column: 2, scope: !2738)
!2764 = !DILocation(line: 271, column: 6, scope: !2738)
!2765 = !DILocation(line: 273, column: 32, scope: !2738)
!2766 = !DILocation(line: 273, column: 40, scope: !2738)
!2767 = !DILocation(line: 273, column: 11, scope: !2738)
!2768 = !DILocation(line: 273, column: 9, scope: !2738)
!2769 = !DILocation(line: 274, column: 6, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2738, file: !2, line: 274, column: 6)
!2771 = !DILocation(line: 274, column: 6, scope: !2738)
!2772 = !DILocation(line: 275, column: 10, scope: !2770)
!2773 = !DILocation(line: 275, column: 3, scope: !2770)
!2774 = !DILocation(line: 277, column: 15, scope: !2738)
!2775 = !DILocation(line: 277, column: 6, scope: !2738)
!2776 = !DILocation(line: 278, column: 7, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2738, file: !2, line: 278, column: 6)
!2778 = !DILocation(line: 278, column: 11, scope: !2777)
!2779 = !DILocation(line: 278, column: 14, scope: !2777)
!2780 = !DILocation(line: 278, column: 19, scope: !2777)
!2781 = !DILocation(line: 278, column: 24, scope: !2777)
!2782 = !DILocation(line: 278, column: 45, scope: !2777)
!2783 = !DILocation(line: 278, column: 48, scope: !2777)
!2784 = !DILocation(line: 278, column: 61, scope: !2777)
!2785 = !DILocation(line: 278, column: 67, scope: !2777)
!2786 = !DILocation(line: 278, column: 6, scope: !2738)
!2787 = !DILocation(line: 279, column: 3, scope: !2788)
!2788 = distinct !DILexicalBlock(scope: !2789, file: !2, line: 279, column: 3)
!2789 = distinct !DILexicalBlock(scope: !2777, file: !2, line: 278, column: 72)
!2790 = !DILocation(line: 279, column: 3, scope: !2791)
!2791 = distinct !DILexicalBlock(scope: !2788, file: !2, line: 279, column: 3)
!2792 = !DILocation(line: 280, column: 10, scope: !2789)
!2793 = !DILocation(line: 281, column: 3, scope: !2789)
!2794 = !DILocation(line: 284, column: 19, scope: !2738)
!2795 = !DILocation(line: 284, column: 32, scope: !2738)
!2796 = !DILocation(line: 284, column: 38, scope: !2738)
!2797 = !DILocation(line: 284, column: 2, scope: !2738)
!2798 = !DILocation(line: 284, column: 7, scope: !2738)
!2799 = !DILocation(line: 284, column: 17, scope: !2738)
!2800 = !DILocation(line: 285, column: 27, scope: !2738)
!2801 = !DILocation(line: 285, column: 35, scope: !2738)
!2802 = !DILocation(line: 286, column: 5, scope: !2738)
!2803 = !DILocation(line: 286, column: 10, scope: !2738)
!2804 = !DILocation(line: 285, column: 13, scope: !2738)
!2805 = !DILocation(line: 285, column: 2, scope: !2738)
!2806 = !DILocation(line: 285, column: 7, scope: !2738)
!2807 = !DILocation(line: 285, column: 11, scope: !2738)
!2808 = !DILocation(line: 288, column: 7, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2738, file: !2, line: 288, column: 6)
!2810 = !DILocation(line: 288, column: 12, scope: !2809)
!2811 = !DILocation(line: 288, column: 6, scope: !2738)
!2812 = !DILocation(line: 289, column: 3, scope: !2813)
!2813 = distinct !DILexicalBlock(scope: !2814, file: !2, line: 289, column: 3)
!2814 = distinct !DILexicalBlock(scope: !2809, file: !2, line: 288, column: 17)
!2815 = !DILocation(line: 289, column: 3, scope: !2816)
!2816 = distinct !DILexicalBlock(scope: !2813, file: !2, line: 289, column: 3)
!2817 = !DILocation(line: 290, column: 10, scope: !2814)
!2818 = !DILocation(line: 291, column: 3, scope: !2814)
!2819 = !DILocation(line: 293, column: 9, scope: !2749)
!2820 = !DILocation(line: 293, column: 7, scope: !2749)
!2821 = !DILocation(line: 293, column: 14, scope: !2748)
!2822 = !DILocation(line: 293, column: 18, scope: !2748)
!2823 = !DILocation(line: 293, column: 23, scope: !2748)
!2824 = !DILocation(line: 293, column: 16, scope: !2748)
!2825 = !DILocation(line: 293, column: 2, scope: !2749)
!2826 = !DILocation(line: 294, column: 3, scope: !2747)
!2827 = !DILocation(line: 294, column: 22, scope: !2747)
!2828 = !DILocation(line: 295, column: 3, scope: !2747)
!2829 = !DILocation(line: 295, column: 22, scope: !2747)
!2830 = !DILocation(line: 295, column: 28, scope: !2747)
!2831 = !DILocation(line: 296, column: 8, scope: !2747)
!2832 = !DILocation(line: 296, column: 13, scope: !2747)
!2833 = !DILocation(line: 296, column: 17, scope: !2747)
!2834 = !DILocation(line: 297, column: 34, scope: !2747)
!2835 = !DILocation(line: 297, column: 47, scope: !2747)
!2836 = !DILocation(line: 297, column: 56, scope: !2747)
!2837 = !DILocation(line: 297, column: 58, scope: !2747)
!2838 = !DILocation(line: 297, column: 12, scope: !2747)
!2839 = !DILocation(line: 297, column: 10, scope: !2747)
!2840 = !DILocation(line: 299, column: 7, scope: !2841)
!2841 = distinct !DILexicalBlock(scope: !2747, file: !2, line: 299, column: 7)
!2842 = !DILocation(line: 299, column: 7, scope: !2747)
!2843 = !DILocation(line: 300, column: 4, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2845, file: !2, line: 300, column: 4)
!2845 = distinct !DILexicalBlock(scope: !2841, file: !2, line: 299, column: 29)
!2846 = !DILocation(line: 300, column: 4, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2844, file: !2, line: 300, column: 4)
!2848 = !DILocation(line: 301, column: 4, scope: !2845)
!2849 = !DILocation(line: 303, column: 2, scope: !2748)
!2850 = !DILocation(line: 303, column: 2, scope: !2747)
!2851 = !DILocation(line: 293, column: 35, scope: !2748)
!2852 = !DILocation(line: 293, column: 2, scope: !2748)
!2853 = distinct !{!2853, !2825, !2854, !2855, !2856}
!2854 = !DILocation(line: 303, column: 2, scope: !2749)
!2855 = !{!"llvm.loop.mustprogress"}
!2856 = !{!"llvm.loop.unroll.disable"}
!2857 = !DILocation(line: 306, column: 7, scope: !2738)
!2858 = !DILocation(line: 306, column: 12, scope: !2738)
!2859 = !DILocation(line: 306, column: 17, scope: !2738)
!2860 = !DILocation(line: 306, column: 22, scope: !2738)
!2861 = !DILocation(line: 306, column: 2, scope: !2738)
!2862 = !DILocation(line: 309, column: 1, scope: !2738)
!2863 = !DILocation(line: 310, column: 8, scope: !2738)
!2864 = !DILocation(line: 310, column: 2, scope: !2738)
!2865 = !DILocation(line: 311, column: 9, scope: !2738)
!2866 = !DILocation(line: 311, column: 2, scope: !2738)
!2867 = !DILocation(line: 312, column: 1, scope: !2738)
!2868 = !DISubprogram(name: "acpi_fan_create_attributes", scope: !2195, file: !2195, line: 57, type: !1959, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2869 = !DISubprogram(name: "acpi_device_update_power", scope: !1159, file: !1159, line: 544, type: !2870, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2870 = !DISubroutineType(types: !2871)
!2871 = !{!62, !1157, !941}
!2872 = !DISubprogram(name: "strncmp", scope: !2873, file: !2873, line: 91, type: !2874, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2873 = !DIFile(filename: "./include/linux/string.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "53fe1954470e9fad05974adb8162ec95")
!2874 = !DISubroutineType(types: !2875)
!2875 = !{!62, !137, !137, !264}
!2876 = !DISubprogram(name: "thermal_cooling_device_register", scope: !2134, file: !2134, line: 342, type: !2877, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2877 = !DISubroutineType(types: !2878)
!2878 = !{!2140, !137, !113, !2151}
!2879 = distinct !DISubprogram(name: "IS_ERR", scope: !2880, file: !2880, line: 59, type: !2881, scopeLine: 60, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2883)
!2880 = !DIFile(filename: "./include/linux/err.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "70fc4e04981f1e48ab6b2e0b6a891a45")
!2881 = !DISubroutineType(types: !2882)
!2882 = !{!570, !491}
!2883 = !{!2884}
!2884 = !DILocalVariable(name: "ptr", arg: 1, scope: !2879, file: !2880, line: 59, type: !491)
!2885 = !DILocation(line: 59, column: 60, scope: !2879)
!2886 = !DILocation(line: 61, column: 9, scope: !2879)
!2887 = !DILocation(line: 61, column: 2, scope: !2879)
!2888 = distinct !DISubprogram(name: "PTR_ERR", scope: !2880, file: !2880, line: 49, type: !2889, scopeLine: 50, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2891)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{!252, !491}
!2891 = !{!2892}
!2892 = !DILocalVariable(name: "ptr", arg: 1, scope: !2888, file: !2880, line: 49, type: !491)
!2893 = !DILocation(line: 49, column: 61, scope: !2888)
!2894 = !DILocation(line: 51, column: 16, scope: !2888)
!2895 = !DILocation(line: 51, column: 9, scope: !2888)
!2896 = !DILocation(line: 51, column: 2, scope: !2888)
!2897 = !DISubprogram(name: "sysfs_create_link", scope: !242, file: !242, line: 293, type: !2898, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2898 = !DISubroutineType(types: !2899)
!2899 = !{!62, !141, !141, !137}
!2900 = !DISubprogram(name: "sysfs_remove_link", scope: !242, file: !242, line: 298, type: !2901, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{null, !141, !137}
!2903 = !DISubprogram(name: "thermal_cooling_device_unregister", scope: !2134, file: !2134, line: 353, type: !2904, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{null, !2140}
!2906 = !DISubprogram(name: "acpi_fan_delete_attributes", scope: !2195, file: !2195, line: 58, type: !1949, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2907 = !DISubprogram(name: "devm_kmalloc", scope: !42, file: !42, line: 305, type: !2573, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2908 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !42, file: !42, line: 921, type: !2909, scopeLine: 922, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2911)
!2909 = !DISubroutineType(types: !2910)
!2910 = !{null, !1200, !113}
!2911 = !{!2912, !2913}
!2912 = !DILocalVariable(name: "dev", arg: 1, scope: !2908, file: !42, line: 921, type: !1200)
!2913 = !DILocalVariable(name: "data", arg: 2, scope: !2908, file: !42, line: 921, type: !113)
!2914 = !DILocation(line: 921, column: 51, scope: !2908)
!2915 = !DILocation(line: 921, column: 62, scope: !2908)
!2916 = !DILocation(line: 923, column: 21, scope: !2908)
!2917 = !DILocation(line: 923, column: 2, scope: !2908)
!2918 = !DILocation(line: 923, column: 7, scope: !2908)
!2919 = !DILocation(line: 923, column: 19, scope: !2908)
!2920 = !DILocation(line: 924, column: 1, scope: !2908)
!2921 = !DISubprogram(name: "acpi_has_method", scope: !1159, file: !1159, line: 42, type: !2922, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2922 = !DISubroutineType(types: !2923)
!2923 = !{!570, !1164, !216}
!2924 = distinct !DISubprogram(name: "acpi_driver_data", scope: !1159, file: !1159, line: 456, type: !2925, scopeLine: 457, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2927)
!2925 = !DISubroutineType(types: !2926)
!2926 = !{!113, !1157}
!2927 = !{!2928}
!2928 = !DILocalVariable(name: "d", arg: 1, scope: !2924, file: !1159, line: 456, type: !1157)
!2929 = !DILocation(line: 456, column: 58, scope: !2924)
!2930 = !DILocation(line: 458, column: 9, scope: !2924)
!2931 = !DILocation(line: 458, column: 12, scope: !2924)
!2932 = !DILocation(line: 458, column: 2, scope: !2924)
!2933 = !DISubprogram(name: "acpi_extract_package", scope: !1159, file: !1159, line: 24, type: !2934, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2934 = !DISubroutineType(types: !2935)
!2935 = !{!1990, !1795, !2294, !2294}
!2936 = distinct !DISubprogram(name: "devm_kcalloc", scope: !42, file: !42, line: 326, type: !2937, scopeLine: 328, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2939)
!2937 = !DISubroutineType(types: !2938)
!2938 = !{!113, !1200, !263, !263, !1989}
!2939 = !{!2940, !2941, !2942, !2943}
!2940 = !DILocalVariable(name: "dev", arg: 1, scope: !2936, file: !42, line: 326, type: !1200)
!2941 = !DILocalVariable(name: "n", arg: 2, scope: !2936, file: !42, line: 327, type: !263)
!2942 = !DILocalVariable(name: "size", arg: 3, scope: !2936, file: !42, line: 327, type: !263)
!2943 = !DILocalVariable(name: "flags", arg: 4, scope: !2936, file: !42, line: 327, type: !1989)
!2944 = !DILocation(line: 326, column: 49, scope: !2936)
!2945 = !DILocation(line: 327, column: 13, scope: !2936)
!2946 = !DILocation(line: 327, column: 23, scope: !2936)
!2947 = !DILocation(line: 327, column: 35, scope: !2936)
!2948 = !DILocation(line: 329, column: 28, scope: !2936)
!2949 = !DILocation(line: 329, column: 33, scope: !2936)
!2950 = !DILocation(line: 329, column: 36, scope: !2936)
!2951 = !DILocation(line: 329, column: 42, scope: !2936)
!2952 = !DILocation(line: 329, column: 48, scope: !2936)
!2953 = !DILocation(line: 329, column: 9, scope: !2936)
!2954 = !DILocation(line: 329, column: 2, scope: !2936)
!2955 = !DISubprogram(name: "sort", scope: !2956, file: !2956, line: 12, type: !2957, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!2956 = !DIFile(filename: "./include/linux/sort.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "a3534dcfbb4117f954507eae129cf588")
!2957 = !DISubroutineType(types: !2958)
!2958 = !{null, !113, !263, !263, !2959, !2963}
!2959 = !DIDerivedType(tag: DW_TAG_typedef, name: "cmp_func_t", file: !120, line: 245, baseType: !2960)
!2960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2961, size: 64)
!2961 = !DISubroutineType(types: !2962)
!2962 = !{!62, !491, !491}
!2963 = !DIDerivedType(tag: DW_TAG_typedef, name: "swap_func_t", file: !120, line: 242, baseType: !2964)
!2964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2965, size: 64)
!2965 = !DISubroutineType(types: !2966)
!2966 = !{null, !113, !113, !62}
!2967 = distinct !DISubprogram(name: "acpi_fan_speed_cmp", scope: !2, file: !2, line: 258, type: !2961, scopeLine: 259, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2968)
!2968 = !{!2969, !2970, !2971, !2974}
!2969 = !DILocalVariable(name: "a", arg: 1, scope: !2967, file: !2, line: 258, type: !491)
!2970 = !DILocalVariable(name: "b", arg: 2, scope: !2967, file: !2, line: 258, type: !491)
!2971 = !DILocalVariable(name: "fps1", scope: !2967, file: !2, line: 260, type: !2972)
!2972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2973, size: 64)
!2973 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2335)
!2974 = !DILocalVariable(name: "fps2", scope: !2967, file: !2, line: 261, type: !2972)
!2975 = !DILocation(line: 258, column: 43, scope: !2967)
!2976 = !DILocation(line: 258, column: 58, scope: !2967)
!2977 = !DILocation(line: 260, column: 2, scope: !2967)
!2978 = !DILocation(line: 260, column: 29, scope: !2967)
!2979 = !DILocation(line: 260, column: 36, scope: !2967)
!2980 = !DILocation(line: 261, column: 2, scope: !2967)
!2981 = !DILocation(line: 261, column: 29, scope: !2967)
!2982 = !DILocation(line: 261, column: 36, scope: !2967)
!2983 = !DILocation(line: 262, column: 9, scope: !2967)
!2984 = !DILocation(line: 262, column: 15, scope: !2967)
!2985 = !DILocation(line: 262, column: 23, scope: !2967)
!2986 = !DILocation(line: 262, column: 29, scope: !2967)
!2987 = !DILocation(line: 262, column: 21, scope: !2967)
!2988 = !DILocation(line: 263, column: 1, scope: !2967)
!2989 = !DILocation(line: 262, column: 2, scope: !2967)
!2990 = distinct !DISubprogram(name: "devm_kmalloc_array", scope: !42, file: !42, line: 316, type: !2937, scopeLine: 318, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !2991)
!2991 = !{!2992, !2993, !2994, !2995, !2996}
!2992 = !DILocalVariable(name: "dev", arg: 1, scope: !2990, file: !42, line: 316, type: !1200)
!2993 = !DILocalVariable(name: "n", arg: 2, scope: !2990, file: !42, line: 317, type: !263)
!2994 = !DILocalVariable(name: "size", arg: 3, scope: !2990, file: !42, line: 317, type: !263)
!2995 = !DILocalVariable(name: "flags", arg: 4, scope: !2990, file: !42, line: 317, type: !1989)
!2996 = !DILocalVariable(name: "bytes", scope: !2990, file: !42, line: 319, type: !263)
!2997 = !DILocation(line: 316, column: 55, scope: !2990)
!2998 = !DILocation(line: 317, column: 19, scope: !2990)
!2999 = !DILocation(line: 317, column: 29, scope: !2990)
!3000 = !DILocation(line: 317, column: 41, scope: !2990)
!3001 = !DILocation(line: 319, column: 2, scope: !2990)
!3002 = !DILocation(line: 319, column: 9, scope: !2990)
!3003 = !DILocation(line: 321, column: 6, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !2990, file: !42, line: 321, column: 6)
!3005 = !DILocation(line: 321, column: 6, scope: !2990)
!3006 = !DILocation(line: 322, column: 3, scope: !3004)
!3007 = !DILocation(line: 324, column: 22, scope: !2990)
!3008 = !DILocation(line: 324, column: 27, scope: !2990)
!3009 = !DILocation(line: 324, column: 34, scope: !2990)
!3010 = !DILocation(line: 324, column: 9, scope: !2990)
!3011 = !DILocation(line: 324, column: 2, scope: !2990)
!3012 = !DILocation(line: 325, column: 1, scope: !2990)
!3013 = distinct !DISubprogram(name: "__must_check_overflow", scope: !3014, file: !3014, line: 51, type: !3015, scopeLine: 52, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !3017)
!3014 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/tshu/Documents/CopyCoalescing/bench/LinuxKernel/linux-6.6.83", checksumkind: CSK_MD5, checksum: "c2a5c5fc437f159572ee7dcbd15b4114")
!3015 = !DISubroutineType(types: !3016)
!3016 = !{!570, !570}
!3017 = !{!3018}
!3018 = !DILocalVariable(name: "overflow", arg: 1, scope: !3013, file: !3014, line: 51, type: !570)
!3019 = !DILocation(line: 51, column: 60, scope: !3013)
!3020 = !DILocation(line: 53, column: 9, scope: !3013)
!3021 = !DILocation(line: 53, column: 2, scope: !3013)
!3022 = distinct !DISubprogram(name: "fan_get_max_state", scope: !2, file: !2, line: 29, type: !2138, scopeLine: 31, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !3023)
!3023 = !{!3024, !3025, !3026, !3027}
!3024 = !DILocalVariable(name: "cdev", arg: 1, scope: !3022, file: !2, line: 29, type: !2140)
!3025 = !DILocalVariable(name: "state", arg: 2, scope: !3022, file: !2, line: 30, type: !1140)
!3026 = !DILocalVariable(name: "device", scope: !3022, file: !2, line: 32, type: !1157)
!3027 = !DILocalVariable(name: "fan", scope: !3022, file: !2, line: 33, type: !2322)
!3028 = !DILocation(line: 29, column: 61, scope: !3022)
!3029 = !DILocation(line: 30, column: 10, scope: !3022)
!3030 = !DILocation(line: 32, column: 2, scope: !3022)
!3031 = !DILocation(line: 32, column: 22, scope: !3022)
!3032 = !DILocation(line: 32, column: 31, scope: !3022)
!3033 = !DILocation(line: 32, column: 37, scope: !3022)
!3034 = !DILocation(line: 33, column: 2, scope: !3022)
!3035 = !DILocation(line: 33, column: 19, scope: !3022)
!3036 = !DILocation(line: 33, column: 42, scope: !3022)
!3037 = !DILocation(line: 33, column: 25, scope: !3022)
!3038 = !DILocation(line: 35, column: 6, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3022, file: !2, line: 35, column: 6)
!3040 = !DILocation(line: 35, column: 11, scope: !3039)
!3041 = !DILocation(line: 35, column: 6, scope: !3022)
!3042 = !DILocation(line: 36, column: 7, scope: !3043)
!3043 = distinct !DILexicalBlock(scope: !3044, file: !2, line: 36, column: 7)
!3044 = distinct !DILexicalBlock(scope: !3039, file: !2, line: 35, column: 18)
!3045 = !DILocation(line: 36, column: 12, scope: !3043)
!3046 = !DILocation(line: 36, column: 16, scope: !3043)
!3047 = !DILocation(line: 36, column: 7, scope: !3044)
!3048 = !DILocation(line: 37, column: 19, scope: !3043)
!3049 = !DILocation(line: 37, column: 24, scope: !3043)
!3050 = !DILocation(line: 37, column: 28, scope: !3043)
!3051 = !DILocation(line: 37, column: 17, scope: !3043)
!3052 = !DILocation(line: 37, column: 13, scope: !3043)
!3053 = !DILocation(line: 37, column: 5, scope: !3043)
!3054 = !DILocation(line: 37, column: 11, scope: !3043)
!3055 = !DILocation(line: 37, column: 4, scope: !3043)
!3056 = !DILocation(line: 39, column: 13, scope: !3043)
!3057 = !DILocation(line: 39, column: 18, scope: !3043)
!3058 = !DILocation(line: 39, column: 28, scope: !3043)
!3059 = !DILocation(line: 39, column: 5, scope: !3043)
!3060 = !DILocation(line: 39, column: 11, scope: !3043)
!3061 = !DILocation(line: 40, column: 2, scope: !3044)
!3062 = !DILocation(line: 41, column: 4, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3039, file: !2, line: 40, column: 9)
!3064 = !DILocation(line: 41, column: 10, scope: !3063)
!3065 = !DILocation(line: 45, column: 1, scope: !3022)
!3066 = !DILocation(line: 44, column: 2, scope: !3022)
!3067 = distinct !DISubprogram(name: "fan_get_cur_state", scope: !2, file: !2, line: 129, type: !2138, scopeLine: 131, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !3068)
!3068 = !{!3069, !3070, !3071, !3072}
!3069 = !DILocalVariable(name: "cdev", arg: 1, scope: !3067, file: !2, line: 129, type: !2140)
!3070 = !DILocalVariable(name: "state", arg: 2, scope: !3067, file: !2, line: 130, type: !1140)
!3071 = !DILocalVariable(name: "device", scope: !3067, file: !2, line: 132, type: !1157)
!3072 = !DILocalVariable(name: "fan", scope: !3067, file: !2, line: 133, type: !2322)
!3073 = !DILocation(line: 129, column: 61, scope: !3067)
!3074 = !DILocation(line: 130, column: 10, scope: !3067)
!3075 = !DILocation(line: 132, column: 2, scope: !3067)
!3076 = !DILocation(line: 132, column: 22, scope: !3067)
!3077 = !DILocation(line: 132, column: 31, scope: !3067)
!3078 = !DILocation(line: 132, column: 37, scope: !3067)
!3079 = !DILocation(line: 133, column: 2, scope: !3067)
!3080 = !DILocation(line: 133, column: 19, scope: !3067)
!3081 = !DILocation(line: 133, column: 42, scope: !3067)
!3082 = !DILocation(line: 133, column: 25, scope: !3067)
!3083 = !DILocation(line: 135, column: 6, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3067, file: !2, line: 135, column: 6)
!3085 = !DILocation(line: 135, column: 11, scope: !3084)
!3086 = !DILocation(line: 135, column: 6, scope: !3067)
!3087 = !DILocation(line: 136, column: 30, scope: !3084)
!3088 = !DILocation(line: 136, column: 38, scope: !3084)
!3089 = !DILocation(line: 136, column: 10, scope: !3084)
!3090 = !DILocation(line: 136, column: 3, scope: !3084)
!3091 = !DILocation(line: 138, column: 24, scope: !3084)
!3092 = !DILocation(line: 138, column: 32, scope: !3084)
!3093 = !DILocation(line: 138, column: 10, scope: !3084)
!3094 = !DILocation(line: 138, column: 3, scope: !3084)
!3095 = !DILocation(line: 139, column: 1, scope: !3067)
!3096 = distinct !DISubprogram(name: "fan_set_cur_state", scope: !2, file: !2, line: 184, type: !2159, scopeLine: 185, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !3097)
!3097 = !{!3098, !3099, !3100, !3101}
!3098 = !DILocalVariable(name: "cdev", arg: 1, scope: !3096, file: !2, line: 184, type: !2140)
!3099 = !DILocalVariable(name: "state", arg: 2, scope: !3096, file: !2, line: 184, type: !266)
!3100 = !DILocalVariable(name: "device", scope: !3096, file: !2, line: 186, type: !1157)
!3101 = !DILocalVariable(name: "fan", scope: !3096, file: !2, line: 187, type: !2322)
!3102 = !DILocation(line: 184, column: 50, scope: !3096)
!3103 = !DILocation(line: 184, column: 70, scope: !3096)
!3104 = !DILocation(line: 186, column: 2, scope: !3096)
!3105 = !DILocation(line: 186, column: 22, scope: !3096)
!3106 = !DILocation(line: 186, column: 31, scope: !3096)
!3107 = !DILocation(line: 186, column: 37, scope: !3096)
!3108 = !DILocation(line: 187, column: 2, scope: !3096)
!3109 = !DILocation(line: 187, column: 19, scope: !3096)
!3110 = !DILocation(line: 187, column: 42, scope: !3096)
!3111 = !DILocation(line: 187, column: 25, scope: !3096)
!3112 = !DILocation(line: 189, column: 6, scope: !3113)
!3113 = distinct !DILexicalBlock(scope: !3096, file: !2, line: 189, column: 6)
!3114 = !DILocation(line: 189, column: 11, scope: !3113)
!3115 = !DILocation(line: 189, column: 6, scope: !3096)
!3116 = !DILocation(line: 190, column: 30, scope: !3113)
!3117 = !DILocation(line: 190, column: 38, scope: !3113)
!3118 = !DILocation(line: 190, column: 10, scope: !3113)
!3119 = !DILocation(line: 190, column: 3, scope: !3113)
!3120 = !DILocation(line: 192, column: 24, scope: !3113)
!3121 = !DILocation(line: 192, column: 32, scope: !3113)
!3122 = !DILocation(line: 192, column: 10, scope: !3113)
!3123 = !DILocation(line: 192, column: 3, scope: !3113)
!3124 = !DILocation(line: 193, column: 1, scope: !3096)
!3125 = distinct !DISubprogram(name: "fan_get_state_acpi4", scope: !2, file: !2, line: 78, type: !3126, scopeLine: 79, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !3128)
!3126 = !DISubroutineType(types: !3127)
!3127 = !{!62, !1157, !1140}
!3128 = !{!3129, !3130, !3131, !3132, !3133, !3134, !3135}
!3129 = !DILocalVariable(name: "device", arg: 1, scope: !3125, file: !2, line: 78, type: !1157)
!3130 = !DILocalVariable(name: "state", arg: 2, scope: !3125, file: !2, line: 78, type: !1140)
!3131 = !DILocalVariable(name: "fan", scope: !3125, file: !2, line: 80, type: !2322)
!3132 = !DILocalVariable(name: "fst", scope: !3125, file: !2, line: 81, type: !2194)
!3133 = !DILocalVariable(name: "status", scope: !3125, file: !2, line: 82, type: !62)
!3134 = !DILocalVariable(name: "i", scope: !3125, file: !2, line: 82, type: !62)
!3135 = !DILabel(scope: !3125, name: "match_fps", file: !2, line: 99)
!3136 = !DILocation(line: 78, column: 52, scope: !3125)
!3137 = !DILocation(line: 78, column: 75, scope: !3125)
!3138 = !DILocation(line: 80, column: 2, scope: !3125)
!3139 = !DILocation(line: 80, column: 19, scope: !3125)
!3140 = !DILocation(line: 80, column: 42, scope: !3125)
!3141 = !DILocation(line: 80, column: 25, scope: !3125)
!3142 = !DILocation(line: 81, column: 2, scope: !3125)
!3143 = !DILocation(line: 81, column: 22, scope: !3125)
!3144 = !DILocation(line: 82, column: 2, scope: !3125)
!3145 = !DILocation(line: 82, column: 6, scope: !3125)
!3146 = !DILocation(line: 82, column: 14, scope: !3125)
!3147 = !DILocation(line: 84, column: 28, scope: !3125)
!3148 = !DILocation(line: 84, column: 11, scope: !3125)
!3149 = !DILocation(line: 84, column: 9, scope: !3125)
!3150 = !DILocation(line: 85, column: 6, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3125, file: !2, line: 85, column: 6)
!3152 = !DILocation(line: 85, column: 6, scope: !3125)
!3153 = !DILocation(line: 86, column: 10, scope: !3151)
!3154 = !DILocation(line: 86, column: 3, scope: !3151)
!3155 = !DILocation(line: 88, column: 6, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3125, file: !2, line: 88, column: 6)
!3157 = !DILocation(line: 88, column: 11, scope: !3156)
!3158 = !DILocation(line: 88, column: 15, scope: !3156)
!3159 = !DILocation(line: 88, column: 6, scope: !3125)
!3160 = !DILocation(line: 90, column: 11, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3162, file: !2, line: 90, column: 7)
!3162 = distinct !DILexicalBlock(scope: !3156, file: !2, line: 88, column: 32)
!3163 = !DILocation(line: 90, column: 19, scope: !3161)
!3164 = !DILocation(line: 90, column: 7, scope: !3162)
!3165 = !DILocation(line: 92, column: 4, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3161, file: !2, line: 90, column: 26)
!3167 = !DILocation(line: 95, column: 22, scope: !3162)
!3168 = !DILocation(line: 95, column: 12, scope: !3162)
!3169 = !DILocation(line: 95, column: 32, scope: !3162)
!3170 = !DILocation(line: 95, column: 37, scope: !3162)
!3171 = !DILocation(line: 95, column: 41, scope: !3162)
!3172 = !DILocation(line: 95, column: 30, scope: !3162)
!3173 = !DILocation(line: 95, column: 4, scope: !3162)
!3174 = !DILocation(line: 95, column: 10, scope: !3162)
!3175 = !DILocation(line: 96, column: 3, scope: !3162)
!3176 = !DILocation(line: 99, column: 1, scope: !3125)
!3177 = !DILocation(line: 100, column: 9, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3125, file: !2, line: 100, column: 2)
!3179 = !DILocation(line: 100, column: 7, scope: !3178)
!3180 = !DILocation(line: 100, column: 14, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3178, file: !2, line: 100, column: 2)
!3182 = !DILocation(line: 100, column: 18, scope: !3181)
!3183 = !DILocation(line: 100, column: 23, scope: !3181)
!3184 = !DILocation(line: 100, column: 16, scope: !3181)
!3185 = !DILocation(line: 100, column: 2, scope: !3178)
!3186 = !DILocation(line: 101, column: 11, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3188, file: !2, line: 101, column: 7)
!3188 = distinct !DILexicalBlock(scope: !3181, file: !2, line: 100, column: 39)
!3189 = !DILocation(line: 101, column: 22, scope: !3187)
!3190 = !DILocation(line: 101, column: 27, scope: !3187)
!3191 = !DILocation(line: 101, column: 31, scope: !3187)
!3192 = !DILocation(line: 101, column: 34, scope: !3187)
!3193 = !DILocation(line: 101, column: 19, scope: !3187)
!3194 = !DILocation(line: 101, column: 7, scope: !3188)
!3195 = !DILocation(line: 102, column: 4, scope: !3187)
!3196 = !DILocation(line: 103, column: 2, scope: !3188)
!3197 = !DILocation(line: 100, column: 35, scope: !3181)
!3198 = !DILocation(line: 100, column: 2, scope: !3181)
!3199 = distinct !{!3199, !3185, !3200, !2855, !2856}
!3200 = !DILocation(line: 103, column: 2, scope: !3178)
!3201 = !DILocation(line: 104, column: 6, scope: !3202)
!3202 = distinct !DILexicalBlock(scope: !3125, file: !2, line: 104, column: 6)
!3203 = !DILocation(line: 104, column: 11, scope: !3202)
!3204 = !DILocation(line: 104, column: 16, scope: !3202)
!3205 = !DILocation(line: 104, column: 8, scope: !3202)
!3206 = !DILocation(line: 104, column: 6, scope: !3125)
!3207 = !DILocation(line: 106, column: 3, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3202, file: !2, line: 104, column: 27)
!3209 = !DILocation(line: 109, column: 11, scope: !3125)
!3210 = !DILocation(line: 109, column: 3, scope: !3125)
!3211 = !DILocation(line: 109, column: 9, scope: !3125)
!3212 = !DILocation(line: 111, column: 9, scope: !3125)
!3213 = !DILocation(line: 111, column: 2, scope: !3125)
!3214 = !DILocation(line: 112, column: 1, scope: !3125)
!3215 = distinct !DISubprogram(name: "fan_get_state", scope: !2, file: !2, line: 114, type: !3126, scopeLine: 115, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !3216)
!3216 = !{!3217, !3218, !3219, !3220}
!3217 = !DILocalVariable(name: "device", arg: 1, scope: !3215, file: !2, line: 114, type: !1157)
!3218 = !DILocalVariable(name: "state", arg: 2, scope: !3215, file: !2, line: 114, type: !1140)
!3219 = !DILocalVariable(name: "result", scope: !3215, file: !2, line: 116, type: !62)
!3220 = !DILocalVariable(name: "acpi_state", scope: !3215, file: !2, line: 117, type: !62)
!3221 = !DILocation(line: 114, column: 46, scope: !3215)
!3222 = !DILocation(line: 114, column: 69, scope: !3215)
!3223 = !DILocation(line: 116, column: 2, scope: !3215)
!3224 = !DILocation(line: 116, column: 6, scope: !3215)
!3225 = !DILocation(line: 117, column: 2, scope: !3215)
!3226 = !DILocation(line: 117, column: 6, scope: !3215)
!3227 = !DILocation(line: 119, column: 36, scope: !3215)
!3228 = !DILocation(line: 119, column: 11, scope: !3215)
!3229 = !DILocation(line: 119, column: 9, scope: !3215)
!3230 = !DILocation(line: 120, column: 6, scope: !3231)
!3231 = distinct !DILexicalBlock(scope: !3215, file: !2, line: 120, column: 6)
!3232 = !DILocation(line: 120, column: 6, scope: !3215)
!3233 = !DILocation(line: 121, column: 10, scope: !3231)
!3234 = !DILocation(line: 121, column: 3, scope: !3231)
!3235 = !DILocation(line: 123, column: 11, scope: !3215)
!3236 = !DILocation(line: 123, column: 22, scope: !3215)
!3237 = !DILocation(line: 124, column: 4, scope: !3215)
!3238 = !DILocation(line: 124, column: 7, scope: !3215)
!3239 = !DILocation(line: 124, column: 18, scope: !3215)
!3240 = !DILocation(line: 125, column: 8, scope: !3215)
!3241 = !DILocation(line: 125, column: 19, scope: !3215)
!3242 = !DILocation(line: 123, column: 3, scope: !3215)
!3243 = !DILocation(line: 123, column: 9, scope: !3215)
!3244 = !DILocation(line: 126, column: 2, scope: !3215)
!3245 = !DILocation(line: 127, column: 1, scope: !3215)
!3246 = distinct !DISubprogram(name: "fan_set_state_acpi4", scope: !2, file: !2, line: 150, type: !3247, scopeLine: 151, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !3249)
!3247 = !DISubroutineType(types: !3248)
!3248 = !{!62, !1157, !266}
!3249 = !{!3250, !3251, !3252, !3253, !3254, !3255}
!3250 = !DILocalVariable(name: "device", arg: 1, scope: !3246, file: !2, line: 150, type: !1157)
!3251 = !DILocalVariable(name: "state", arg: 2, scope: !3246, file: !2, line: 150, type: !266)
!3252 = !DILocalVariable(name: "fan", scope: !3246, file: !2, line: 152, type: !2322)
!3253 = !DILocalVariable(name: "status", scope: !3246, file: !2, line: 153, type: !1990)
!3254 = !DILocalVariable(name: "value", scope: !3246, file: !2, line: 154, type: !108)
!3255 = !DILocalVariable(name: "max_state", scope: !3246, file: !2, line: 155, type: !62)
!3256 = !DILocation(line: 150, column: 52, scope: !3246)
!3257 = !DILocation(line: 150, column: 74, scope: !3246)
!3258 = !DILocation(line: 152, column: 2, scope: !3246)
!3259 = !DILocation(line: 152, column: 19, scope: !3246)
!3260 = !DILocation(line: 152, column: 42, scope: !3246)
!3261 = !DILocation(line: 152, column: 25, scope: !3246)
!3262 = !DILocation(line: 153, column: 2, scope: !3246)
!3263 = !DILocation(line: 153, column: 14, scope: !3246)
!3264 = !DILocation(line: 154, column: 2, scope: !3246)
!3265 = !DILocation(line: 154, column: 6, scope: !3246)
!3266 = !DILocation(line: 154, column: 14, scope: !3246)
!3267 = !DILocation(line: 155, column: 2, scope: !3246)
!3268 = !DILocation(line: 155, column: 6, scope: !3246)
!3269 = !DILocation(line: 157, column: 6, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3246, file: !2, line: 157, column: 6)
!3271 = !DILocation(line: 157, column: 11, scope: !3270)
!3272 = !DILocation(line: 157, column: 15, scope: !3270)
!3273 = !DILocation(line: 157, column: 6, scope: !3246)
!3274 = !DILocation(line: 158, column: 21, scope: !3270)
!3275 = !DILocation(line: 158, column: 26, scope: !3270)
!3276 = !DILocation(line: 158, column: 30, scope: !3270)
!3277 = !DILocation(line: 158, column: 19, scope: !3270)
!3278 = !DILocation(line: 158, column: 13, scope: !3270)
!3279 = !DILocation(line: 158, column: 3, scope: !3270)
!3280 = !DILocation(line: 160, column: 15, scope: !3270)
!3281 = !DILocation(line: 160, column: 20, scope: !3270)
!3282 = !DILocation(line: 160, column: 30, scope: !3270)
!3283 = !DILocation(line: 160, column: 13, scope: !3270)
!3284 = !DILocation(line: 162, column: 6, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3246, file: !2, line: 162, column: 6)
!3286 = !DILocation(line: 162, column: 14, scope: !3285)
!3287 = !DILocation(line: 162, column: 12, scope: !3285)
!3288 = !DILocation(line: 162, column: 6, scope: !3246)
!3289 = !DILocation(line: 163, column: 3, scope: !3285)
!3290 = !DILocation(line: 165, column: 6, scope: !3291)
!3291 = distinct !DILexicalBlock(scope: !3246, file: !2, line: 165, column: 6)
!3292 = !DILocation(line: 165, column: 11, scope: !3291)
!3293 = !DILocation(line: 165, column: 15, scope: !3291)
!3294 = !DILocation(line: 165, column: 6, scope: !3246)
!3295 = !DILocation(line: 166, column: 12, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3291, file: !2, line: 165, column: 32)
!3297 = !DILocation(line: 166, column: 17, scope: !3296)
!3298 = !DILocation(line: 166, column: 21, scope: !3296)
!3299 = !DILocation(line: 166, column: 9, scope: !3296)
!3300 = !DILocation(line: 168, column: 7, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3296, file: !2, line: 168, column: 7)
!3302 = !DILocation(line: 168, column: 15, scope: !3301)
!3303 = !DILocation(line: 168, column: 20, scope: !3301)
!3304 = !DILocation(line: 168, column: 24, scope: !3301)
!3305 = !DILocation(line: 168, column: 13, scope: !3301)
!3306 = !DILocation(line: 168, column: 34, scope: !3301)
!3307 = !DILocation(line: 168, column: 7, scope: !3296)
!3308 = !DILocation(line: 169, column: 10, scope: !3301)
!3309 = !DILocation(line: 169, column: 4, scope: !3301)
!3310 = !DILocation(line: 170, column: 2, scope: !3296)
!3311 = !DILocation(line: 171, column: 11, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3291, file: !2, line: 170, column: 9)
!3313 = !DILocation(line: 171, column: 16, scope: !3312)
!3314 = !DILocation(line: 171, column: 20, scope: !3312)
!3315 = !DILocation(line: 171, column: 27, scope: !3312)
!3316 = !DILocation(line: 171, column: 9, scope: !3312)
!3317 = !DILocation(line: 174, column: 38, scope: !3246)
!3318 = !DILocation(line: 174, column: 46, scope: !3246)
!3319 = !DILocation(line: 174, column: 62, scope: !3246)
!3320 = !DILocation(line: 174, column: 11, scope: !3246)
!3321 = !DILocation(line: 174, column: 9, scope: !3246)
!3322 = !DILocation(line: 175, column: 6, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3246, file: !2, line: 175, column: 6)
!3324 = !DILocation(line: 175, column: 6, scope: !3246)
!3325 = !DILocation(line: 177, column: 3, scope: !3326)
!3326 = distinct !DILexicalBlock(scope: !3323, file: !2, line: 175, column: 28)
!3327 = !DILocation(line: 180, column: 2, scope: !3246)
!3328 = !DILocation(line: 181, column: 1, scope: !3246)
!3329 = distinct !DISubprogram(name: "fan_set_state", scope: !2, file: !2, line: 141, type: !3247, scopeLine: 142, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !3330)
!3330 = !{!3331, !3332}
!3331 = !DILocalVariable(name: "device", arg: 1, scope: !3329, file: !2, line: 141, type: !1157)
!3332 = !DILocalVariable(name: "state", arg: 2, scope: !3329, file: !2, line: 141, type: !266)
!3333 = !DILocation(line: 141, column: 46, scope: !3329)
!3334 = !DILocation(line: 141, column: 68, scope: !3329)
!3335 = !DILocation(line: 143, column: 6, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3329, file: !2, line: 143, column: 6)
!3337 = !DILocation(line: 143, column: 12, scope: !3336)
!3338 = !DILocation(line: 143, column: 17, scope: !3336)
!3339 = !DILocation(line: 143, column: 20, scope: !3336)
!3340 = !DILocation(line: 143, column: 26, scope: !3336)
!3341 = !DILocation(line: 143, column: 6, scope: !3329)
!3342 = !DILocation(line: 144, column: 3, scope: !3336)
!3343 = !DILocation(line: 146, column: 31, scope: !3329)
!3344 = !DILocation(line: 147, column: 10, scope: !3329)
!3345 = !DILocation(line: 146, column: 9, scope: !3329)
!3346 = !DILocation(line: 146, column: 2, scope: !3329)
!3347 = !DILocation(line: 148, column: 1, scope: !3329)
!3348 = !DISubprogram(name: "acpi_execute_simple_method", scope: !1159, file: !1159, line: 43, type: !3349, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3349 = !DISubroutineType(types: !3350)
!3350 = !{!1990, !1164, !216, !108}
!3351 = !DISubprogram(name: "acpi_device_set_power", scope: !1159, file: !1159, line: 538, type: !3352, flags: DIFlagPrototyped, spFlags: DISPFlagOptimized)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!62, !1157, !62}
!3354 = distinct !DISubprogram(name: "platform_get_drvdata", scope: !2020, file: !2020, line: 286, type: !3355, scopeLine: 287, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !3359)
!3355 = !DISubroutineType(types: !3356)
!3356 = !{!113, !3357}
!3357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3358, size: 64)
!3358 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2027)
!3359 = !{!3360}
!3360 = !DILocalVariable(name: "pdev", arg: 1, scope: !3354, file: !2020, line: 286, type: !3357)
!3361 = !DILocation(line: 286, column: 72, scope: !3354)
!3362 = !DILocation(line: 288, column: 26, scope: !3354)
!3363 = !DILocation(line: 288, column: 32, scope: !3354)
!3364 = !DILocation(line: 288, column: 9, scope: !3354)
!3365 = !DILocation(line: 288, column: 2, scope: !3354)
!3366 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !42, file: !42, line: 916, type: !3367, scopeLine: 917, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !3369)
!3367 = !DISubroutineType(types: !3368)
!3368 = !{!113, !1194}
!3369 = !{!3370}
!3370 = !DILocalVariable(name: "dev", arg: 1, scope: !3366, file: !42, line: 916, type: !1194)
!3371 = !DILocation(line: 916, column: 58, scope: !3366)
!3372 = !DILocation(line: 918, column: 9, scope: !3366)
!3373 = !DILocation(line: 918, column: 14, scope: !3366)
!3374 = !DILocation(line: 918, column: 2, scope: !3366)
!3375 = distinct !DISubprogram(name: "acpi_fan_resume", scope: !2, file: !2, line: 424, type: !1232, scopeLine: 425, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !3376)
!3376 = !{!3377, !3378, !3379, !3380, !3382}
!3377 = !DILocalVariable(name: "dev", arg: 1, scope: !3375, file: !2, line: 424, type: !1200)
!3378 = !DILocalVariable(name: "result", scope: !3375, file: !2, line: 426, type: !62)
!3379 = !DILocalVariable(name: "fan", scope: !3375, file: !2, line: 427, type: !2322)
!3380 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !3381, file: !2, line: 432, type: !1170)
!3381 = distinct !DILexicalBlock(scope: !3375, file: !2, line: 432, column: 36)
!3382 = !DILocalVariable(name: "__mptr", scope: !3383, file: !2, line: 432, type: !113)
!3383 = distinct !DILexicalBlock(scope: !3381, file: !2, line: 432, column: 36)
!3384 = !DILocation(line: 424, column: 43, scope: !3375)
!3385 = !DILocation(line: 426, column: 2, scope: !3375)
!3386 = !DILocation(line: 426, column: 6, scope: !3375)
!3387 = !DILocation(line: 427, column: 2, scope: !3375)
!3388 = !DILocation(line: 427, column: 19, scope: !3375)
!3389 = !DILocation(line: 427, column: 41, scope: !3375)
!3390 = !DILocation(line: 427, column: 25, scope: !3375)
!3391 = !DILocation(line: 429, column: 6, scope: !3392)
!3392 = distinct !DILexicalBlock(scope: !3375, file: !2, line: 429, column: 6)
!3393 = !DILocation(line: 429, column: 11, scope: !3392)
!3394 = !DILocation(line: 429, column: 6, scope: !3375)
!3395 = !DILocation(line: 430, column: 3, scope: !3392)
!3396 = !DILocation(line: 432, column: 36, scope: !3381)
!3397 = !DILocation(line: 432, column: 36, scope: !3383)
!3398 = !DILocation(line: 432, column: 36, scope: !3375)
!3399 = !DILocation(line: 432, column: 11, scope: !3375)
!3400 = !DILocation(line: 432, column: 9, scope: !3375)
!3401 = !DILocation(line: 433, column: 6, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3375, file: !2, line: 433, column: 6)
!3403 = !DILocation(line: 433, column: 6, scope: !3375)
!3404 = !DILocation(line: 434, column: 3, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3402, file: !2, line: 434, column: 3)
!3406 = !DILocation(line: 434, column: 3, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3405, file: !2, line: 434, column: 3)
!3408 = !DILocation(line: 434, column: 3, scope: !3402)
!3409 = !DILocation(line: 436, column: 9, scope: !3375)
!3410 = !DILocation(line: 436, column: 2, scope: !3375)
!3411 = !DILocation(line: 437, column: 1, scope: !3375)
!3412 = distinct !DISubprogram(name: "acpi_fan_suspend", scope: !2, file: !2, line: 413, type: !1232, scopeLine: 414, flags: DIFlagPrototyped | DIFlagAllCallsDescribed, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !19, retainedNodes: !3413)
!3413 = !{!3414, !3415, !3416, !3418}
!3414 = !DILocalVariable(name: "dev", arg: 1, scope: !3412, file: !2, line: 413, type: !1200)
!3415 = !DILocalVariable(name: "fan", scope: !3412, file: !2, line: 415, type: !2322)
!3416 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !3417, file: !2, line: 419, type: !1170)
!3417 = distinct !DILexicalBlock(scope: !3412, file: !2, line: 419, column: 24)
!3418 = !DILocalVariable(name: "__mptr", scope: !3419, file: !2, line: 419, type: !113)
!3419 = distinct !DILexicalBlock(scope: !3417, file: !2, line: 419, column: 24)
!3420 = !DILocation(line: 413, column: 44, scope: !3412)
!3421 = !DILocation(line: 415, column: 2, scope: !3412)
!3422 = !DILocation(line: 415, column: 19, scope: !3412)
!3423 = !DILocation(line: 415, column: 41, scope: !3412)
!3424 = !DILocation(line: 415, column: 25, scope: !3412)
!3425 = !DILocation(line: 416, column: 6, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3412, file: !2, line: 416, column: 6)
!3427 = !DILocation(line: 416, column: 11, scope: !3426)
!3428 = !DILocation(line: 416, column: 6, scope: !3412)
!3429 = !DILocation(line: 417, column: 3, scope: !3426)
!3430 = !DILocation(line: 419, column: 24, scope: !3417)
!3431 = !DILocation(line: 419, column: 24, scope: !3419)
!3432 = !DILocation(line: 419, column: 24, scope: !3412)
!3433 = !DILocation(line: 419, column: 2, scope: !3412)
!3434 = !DILocation(line: 421, column: 2, scope: !3412)
!3435 = !DILocation(line: 422, column: 1, scope: !3412)
